; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $0f9", ROMX[$4000], BANK[$f9]

	ld   de, $1111                                   ; $4000: $11 $11 $11
	ld   h, $ff                                      ; $4003: $26 $ff
	rst  $38                                         ; $4005: $ff
	rst  $38                                         ; $4006: $ff
	rst  $38                                         ; $4007: $ff
	db   $f4                                         ; $4008: $f4
	ld   de, $1111                                   ; $4009: $11 $11 $11
	rst  $38                                         ; $400c: $ff
	rst  $38                                         ; $400d: $ff
	rst  $38                                         ; $400e: $ff
	rst  $38                                         ; $400f: $ff
	or   c                                           ; $4010: $b1
	ld   de, $1211                                   ; $4011: $11 $11 $12
	ld   e, a                                        ; $4014: $5f
	rst  $38                                         ; $4015: $ff
	rst  $38                                         ; $4016: $ff
	rst  $38                                         ; $4017: $ff
	rst  JumpTable                                         ; $4018: $df
	ld   b, c                                        ; $4019: $41
	ld   de, $1f11                                   ; $401a: $11 $11 $1f
	rst  $38                                         ; $401d: $ff
	rst  $38                                         ; $401e: $ff
	rst  $38                                         ; $401f: $ff
	rst  $20                                         ; $4020: $e7
	ld   de, $1111                                   ; $4021: $11 $11 $11
	dec  h                                           ; $4024: $25
	rst  $38                                         ; $4025: $ff
	rst  $38                                         ; $4026: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4027: $cf
	rst  $30                                         ; $4028: $f7
	ldh  a, [c]                                      ; $4029: $f2
	ld   de, $1111                                   ; $402a: $11 $11 $11
	rst  $38                                         ; $402d: $ff
	rst  $38                                         ; $402e: $ff
	rst  $38                                         ; $402f: $ff
	or   $11                                         ; $4030: $f6 $11
	ld   de, $1111                                   ; $4032: $11 $11 $11
	cp   a                                           ; $4035: $bf
	rst  $38                                         ; $4036: $ff
	ld   sp, hl                                      ; $4037: $f9
	db   $fc                                         ; $4038: $fc
	ld   a, c                                        ; $4039: $79
	inc  de                                          ; $403a: $13
	ld   de, $7f11                                   ; $403b: $11 $11 $7f
	rst  $38                                         ; $403e: $ff
	rst  $38                                         ; $403f: $ff
	or   $11                                         ; $4040: $f6 $11
	ld   de, $1111                                   ; $4042: $11 $11 $11
	rra                                              ; $4045: $1f
	rst  $38                                         ; $4046: $ff
	cp   $ff                                         ; $4047: $fe $ff
	jr   jr_0f9_405d                                 ; $4049: $18 $12

	ld   de, $1f11                                   ; $404b: $11 $11 $1f
	rst  $38                                         ; $404e: $ff
	rst  $38                                         ; $404f: $ff
	ld   hl, sp+$11                                  ; $4050: $f8 $11
	ld   de, $1111                                   ; $4052: $11 $11 $11
	rra                                              ; $4055: $1f
	rst  $38                                         ; $4056: $ff
	rst  $38                                         ; $4057: $ff
	rst  $38                                         ; $4058: $ff
	add  hl, de                                      ; $4059: $19
	ld   de, $1111                                   ; $405a: $11 $11 $11

jr_0f9_405d:
	cpl                                              ; $405d: $2f
	rst  $38                                         ; $405e: $ff
	rst  $38                                         ; $405f: $ff
	ei                                               ; $4060: $fb
	ld   de, $1111                                   ; $4061: $11 $11 $11
	ld   de, $ff5f                                   ; $4064: $11 $5f $ff
	rst  $38                                         ; $4067: $ff
	rst  $38                                         ; $4068: $ff
	add  hl, de                                      ; $4069: $19
	ld   de, $1111                                   ; $406a: $11 $11 $11
	adc  a                                           ; $406d: $8f
	rst  $38                                         ; $406e: $ff
	rst  $38                                         ; $406f: $ff
	or   $11                                         ; $4070: $f6 $11
	ld   de, $1111                                   ; $4072: $11 $11 $11
	rst  $38                                         ; $4075: $ff
	rst  $38                                         ; $4076: $ff
	cp   $f4                                         ; $4077: $fe $f4
	add  c                                           ; $4079: $81
	ld   [de], a                                     ; $407a: $12
	ld   de, $ff21                                   ; $407b: $11 $21 $ff
	rst  $38                                         ; $407e: $ff
	rst  $38                                         ; $407f: $ff
	pop  af                                          ; $4080: $f1
	ld   de, $1111                                   ; $4081: $11 $11 $11
	ld   d, l                                        ; $4084: $55
	rst  $38                                         ; $4085: $ff
	rst  $38                                         ; $4086: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4087: $cf
	pop  af                                          ; $4088: $f1
	pop  bc                                          ; $4089: $c1
	ld   de, $1b11                                   ; $408a: $11 $11 $1b
	rst  $38                                         ; $408d: $ff
	rst  $38                                         ; $408e: $ff
	rst  $38                                         ; $408f: $ff
	ld   de, $1111                                   ; $4090: $11 $11 $11
	jr   jr_0f9_40e4                                 ; $4093: $18 $4f

	rst  $38                                         ; $4095: $ff
	db   $fd                                         ; $4096: $fd
	rst  $38                                         ; $4097: $ff
	dec  de                                          ; $4098: $1b
	ld   de, $1111                                   ; $4099: $11 $11 $11
	xor  a                                           ; $409c: $af
	rst  $38                                         ; $409d: $ff
	rst  $38                                         ; $409e: $ff
	pop  af                                          ; $409f: $f1
	ld   de, $1111                                   ; $40a0: $11 $11 $11
	ld   e, e                                        ; $40a3: $5b
	rst  $38                                         ; $40a4: $ff
	rst  $38                                         ; $40a5: $ff
	rst  $38                                         ; $40a6: $ff
	call nc, $1161                                   ; $40a7: $d4 $61 $11
	ld   de, $ff1f                                   ; $40aa: $11 $1f $ff
	rst  $38                                         ; $40ad: $ff
	rst  $38                                         ; $40ae: $ff
	ld   de, $1111                                   ; $40af: $11 $11 $11
	ld   de, $ffff                                   ; $40b2: $11 $ff $ff
	rst  $38                                         ; $40b5: $ff
	ld   hl, sp-$2f                                  ; $40b6: $f8 $d1
	ld   de, $1611                                   ; $40b8: $11 $11 $16
	rst  $38                                         ; $40bb: $ff
	rst  $38                                         ; $40bc: $ff
	rst  $38                                         ; $40bd: $ff
	ld   h, c                                        ; $40be: $61
	ld   de, $1111                                   ; $40bf: $11 $11 $11
	rst  $38                                         ; $40c2: $ff
	rst  $38                                         ; $40c3: $ff
	rst  $38                                         ; $40c4: $ff
	cp   $f1                                         ; $40c5: $fe $f1
	ld   de, $1111                                   ; $40c7: $11 $11 $11
	rst  $38                                         ; $40ca: $ff
	rst  $38                                         ; $40cb: $ff
	rst  $38                                         ; $40cc: $ff
	sub  c                                           ; $40cd: $91
	ld   de, $1111                                   ; $40ce: $11 $11 $11
	rst  $38                                         ; $40d1: $ff
	rst  $38                                         ; $40d2: $ff
	rst  $38                                         ; $40d3: $ff
	rst  $38                                         ; $40d4: $ff
	pop  af                                          ; $40d5: $f1
	ld   de, $1111                                   ; $40d6: $11 $11 $11
	rst  $38                                         ; $40d9: $ff
	rst  $38                                         ; $40da: $ff
	rst  $38                                         ; $40db: $ff
	ld   de, $1111                                   ; $40dc: $11 $11 $11
	ld   d, $fd                                      ; $40df: $16 $fd
	rst  $38                                         ; $40e1: $ff
	rst  $38                                         ; $40e2: $ff
	rst  $38                                         ; $40e3: $ff

jr_0f9_40e4:
	pop  de                                          ; $40e4: $d1
	ld   de, $1f11                                   ; $40e5: $11 $11 $1f
	rst  $38                                         ; $40e8: $ff
	rst  $38                                         ; $40e9: $ff
	ld   sp, hl                                      ; $40ea: $f9
	ld   de, $1111                                   ; $40eb: $11 $11 $11
	ld   e, a                                        ; $40ee: $5f
	xor  a                                           ; $40ef: $af
	rst  $38                                         ; $40f0: $ff
	cp   $ff                                         ; $40f1: $fe $ff
	ld   de, $1111                                   ; $40f3: $11 $11 $11
	rst  $38                                         ; $40f6: $ff
	rst  $38                                         ; $40f7: $ff
	ld   a, [$1141]                                  ; $40f8: $fa $41 $11
	ld   a, [de]                                     ; $40fb: $1a
	rra                                              ; $40fc: $1f
	ld   a, [$fff6]                                  ; $40fd: $fa $f6 $ff
	cp   a                                           ; $4100: $bf
	ld   h, c                                        ; $4101: $61
	ld   de, $4f11                                   ; $4102: $11 $11 $4f
	rst  $38                                         ; $4105: $ff
	pop  af                                          ; $4106: $f1
	ld   d, c                                        ; $4107: $51
	ld   de, $3a1f                                   ; $4108: $11 $1f $3a
	or   $fd                                         ; $410b: $f6 $fd
	cp   a                                           ; $410d: $bf
	rst  $28                                         ; $410e: $ef
	pop  af                                          ; $410f: $f1
	ld   de, $2f14                                   ; $4110: $11 $14 $2f
	rst  $38                                         ; $4113: $ff
	push af                                          ; $4114: $f5
	ld   de, $1b11                                   ; $4115: $11 $11 $1b
	call z, $fcfa                                    ; $4118: $cc $fa $fc
	rst  $38                                         ; $411b: $ff
	rst  $38                                         ; $411c: $ff
	pop  af                                          ; $411d: $f1
	ld   de, $7f11                                   ; $411e: $11 $11 $7f
	rst  $38                                         ; $4121: $ff
	rst  $30                                         ; $4122: $f7
	ld   de, $1e11                                   ; $4123: $11 $11 $1e
	adc  a                                           ; $4126: $8f
	ld   sp, hl                                      ; $4127: $f9
	pop  af                                          ; $4128: $f1
	rst  $38                                         ; $4129: $ff
	rst  $38                                         ; $412a: $ff
	or   c                                           ; $412b: $b1
	ld   de, $df11                                   ; $412c: $11 $11 $df
	rst  $38                                         ; $412f: $ff
	pop  af                                          ; $4130: $f1
	ld   de, $af11                                   ; $4131: $11 $11 $af
	rst  $38                                         ; $4134: $ff
	ld   l, h                                        ; $4135: $6c
	ld   d, $ff                                      ; $4136: $16 $ff
	rst  $38                                         ; $4138: $ff
	ld   d, c                                        ; $4139: $51
	ld   de, rAUD1HIGH                                   ; $413a: $11 $14 $ff
	rst  $38                                         ; $413d: $ff
	ld   de, $1b11                                   ; $413e: $11 $11 $1b
	rst  $38                                         ; $4141: $ff
	ld   hl, sp-$2f                                  ; $4142: $f8 $d1
	rra                                              ; $4144: $1f
	rst  $38                                         ; $4145: $ff
	db   $fc                                         ; $4146: $fc
	ld   de, $3f11                                   ; $4147: $11 $11 $3f
	rst  $38                                         ; $414a: $ff
	pop  af                                          ; $414b: $f1
	ld   de, rAUD1LEN                                   ; $414c: $11 $11 $ff
	rst  $38                                         ; $414f: $ff
	xor  c                                           ; $4150: $a9
	inc  d                                           ; $4151: $14
	rst  $38                                         ; $4152: $ff
	rst  $38                                         ; $4153: $ff
	pop  af                                          ; $4154: $f1
	ld   de, $ff1b                                   ; $4155: $11 $1b $ff
	rst  $38                                         ; $4158: $ff
	ld   de, $2f11                                   ; $4159: $11 $11 $2f
	rst  $38                                         ; $415c: $ff
	ei                                               ; $415d: $fb
	ld   de, $ffff                                   ; $415e: $11 $ff $ff
	rst  $38                                         ; $4161: $ff
	ld   de, rAUD1LEN                                   ; $4162: $11 $11 $ff
	rst  $38                                         ; $4165: $ff
	ld   d, c                                        ; $4166: $51
	ld   de, $ff1f                                   ; $4167: $11 $1f $ff
	db   $fd                                         ; $416a: $fd
	add  c                                           ; $416b: $81
	rra                                              ; $416c: $1f
	rst  $38                                         ; $416d: $ff
	rst  $38                                         ; $416e: $ff
	ld   de, $9f11                                   ; $416f: $11 $11 $9f
	rst  $38                                         ; $4172: $ff
	pop  af                                          ; $4173: $f1
	ld   de, $ff1d                                   ; $4174: $11 $1d $ff
	rst  $38                                         ; $4177: $ff
	pop  hl                                          ; $4178: $e1
	add  hl, de                                      ; $4179: $19
	ld   a, a                                        ; $417a: $7f
	rst  $38                                         ; $417b: $ff
	pop  de                                          ; $417c: $d1
	ld   de, $ff1f                                   ; $417d: $11 $1f $ff
	pop  af                                          ; $4180: $f1
	ld   de, $ff1b                                   ; $4181: $11 $1b $ff
	rst  $38                                         ; $4184: $ff
	pop  af                                          ; $4185: $f1
	inc  de                                          ; $4186: $13
	cpl                                              ; $4187: $2f
	rst  $38                                         ; $4188: $ff
	pop  af                                          ; $4189: $f1
	ld   de, $ff1f                                   ; $418a: $11 $1f $ff
	pop  af                                          ; $418d: $f1
	ld   de, $ff19                                   ; $418e: $11 $19 $ff
	rst  $38                                         ; $4191: $ff
	pop  af                                          ; $4192: $f1
	ld   [de], a                                     ; $4193: $12
	rra                                              ; $4194: $1f
	rst  $38                                         ; $4195: $ff
	pop  af                                          ; $4196: $f1
	ld   de, $ff1f                                   ; $4197: $11 $1f $ff
	pop  af                                          ; $419a: $f1
	ld   de, $ff17                                   ; $419b: $11 $17 $ff
	rst  $38                                         ; $419e: $ff
	pop  de                                          ; $419f: $d1
	ld   de, $ff9f                                   ; $41a0: $11 $9f $ff
	ld   [hl], c                                     ; $41a3: $71
	ld   de, $ff1f                                   ; $41a4: $11 $1f $ff
	pop  af                                          ; $41a7: $f1
	ld   de, rAUD1LOW                                   ; $41a8: $11 $13 $ff
	rst  $38                                         ; $41ab: $ff
	ld   de, rAUD1LEN                                   ; $41ac: $11 $11 $ff
	rst  $38                                         ; $41af: $ff
	ld   de, rAUD1LEN                                   ; $41b0: $11 $11 $ff
	rst  $38                                         ; $41b3: $ff
	ld   de, $1f11                                   ; $41b4: $11 $11 $1f
	rst  $38                                         ; $41b7: $ff
	push af                                          ; $41b8: $f5
	ld   de, $ff1b                                   ; $41b9: $11 $1b $ff
	ld   sp, hl                                      ; $41bc: $f9
	ld   de, $ff19                                   ; $41bd: $11 $19 $ff
	di                                               ; $41c0: $f3
	ld   de, $9f11                                   ; $41c1: $11 $11 $9f
	rst  $38                                         ; $41c4: $ff
	pop  af                                          ; $41c5: $f1
	ld   de, $ff4f                                   ; $41c6: $11 $4f $ff
	pop  hl                                          ; $41c9: $e1
	ld   de, $ff6f                                   ; $41ca: $11 $6f $ff
	ld   b, c                                        ; $41cd: $41
	ld   de, $ff16                                   ; $41ce: $11 $16 $ff
	rst  $38                                         ; $41d1: $ff
	ld   hl, $ef16                                   ; $41d2: $21 $16 $ef
	db   $fc                                         ; $41d5: $fc
	ld   de, $ff17                                   ; $41d6: $11 $17 $ff
	ldh  a, [c]                                      ; $41d9: $f2
	ld   de, $af11                                   ; $41da: $11 $11 $af
	rst  $38                                         ; $41dd: $ff
	jp   $ac11                                       ; $41de: $c3 $11 $ac


	rst  $38                                         ; $41e1: $ff
	sub  d                                           ; $41e2: $92
	ld   de, $ffef                                   ; $41e3: $11 $ef $ff

Call_0f9_41e6:
	ld   de, $1f11                                   ; $41e6: $11 $11 $1f
	rst  $38                                         ; $41e9: $ff
	or   $61                                         ; $41ea: $f6 $61
	dec  e                                           ; $41ec: $1d
	rst  JumpTable                                         ; $41ed: $df
	ld   hl, sp+$11                                  ; $41ee: $f8 $11
	rra                                              ; $41f0: $1f
	rst  $38                                         ; $41f1: $ff
	pop  af                                          ; $41f2: $f1
	ld   de, rAUD1LEN                                   ; $41f3: $11 $11 $ff
	rst  $38                                         ; $41f6: $ff
	dec  de                                          ; $41f7: $1b
	ld   de, $feaf                                   ; $41f8: $11 $af $fe
	add  c                                           ; $41fb: $81
	inc  de                                          ; $41fc: $13
	rst  $38                                         ; $41fd: $ff
	db   $f4                                         ; $41fe: $f4
	ld   de, $7f11                                   ; $41ff: $11 $11 $7f
	rst  $38                                         ; $4202: $ff
	or   $41                                         ; $4203: $f6 $41
	ld   a, c                                        ; $4205: $79
	rst  $38                                         ; $4206: $ff
	sub  e                                           ; $4207: $93
	ld   de, $ffef                                   ; $4208: $11 $ef $ff
	ld   de, $1f11                                   ; $420b: $11 $11 $1f
	rst  $38                                         ; $420e: $ff
	di                                               ; $420f: $f3
	pop  bc                                          ; $4210: $c1
	ld   e, $af                                      ; $4211: $1e $af
	push hl                                          ; $4213: $e5
	ld   de, $ff3f                                   ; $4214: $11 $3f $ff
	ld   h, c                                        ; $4217: $61
	ld   de, $ff1a                                   ; $4218: $11 $1a $ff
	rst  $38                                         ; $421b: $ff
	ld   h, e                                        ; $421c: $63
	dec  de                                          ; $421d: $1b
	sbc  a                                           ; $421e: $9f
	ld   hl, sp+$41                                  ; $421f: $f8 $41
	rra                                              ; $4221: $1f
	rst  $38                                         ; $4222: $ff
	pop  af                                          ; $4223: $f1
	ld   de, rAUD1LEN                                   ; $4224: $11 $11 $ff
	rst  $38                                         ; $4227: $ff
	ld   c, l                                        ; $4228: $4d
	dec  d                                           ; $4229: $15
	ld   l, a                                        ; $422a: $6f
	ei                                               ; $422b: $fb
	sub  c                                           ; $422c: $91
	add  hl, de                                      ; $422d: $19
	rst  $38                                         ; $422e: $ff
	pop  af                                          ; $422f: $f1
	ld   de, rAUD1LEN                                   ; $4230: $11 $11 $ff
	rst  $38                                         ; $4233: $ff
	ccf                                              ; $4234: $3f
	ld   de, $fda6                                   ; $4235: $11 $a6 $fd
	and  e                                           ; $4238: $a3
	ld   d, $ff                                      ; $4239: $16 $ff
	pop  af                                          ; $423b: $f1
	ld   de, rAUD1LEN                                   ; $423c: $11 $11 $ff
	rst  $38                                         ; $423f: $ff
	adc  a                                           ; $4240: $8f
	ld   de, $ffc1                                   ; $4241: $11 $c1 $ff
	sub  [hl]                                        ; $4244: $96
	inc  de                                          ; $4245: $13
	rst  $38                                         ; $4246: $ff
	di                                               ; $4247: $f3
	ld   de, rAUD1LEN                                   ; $4248: $11 $11 $ff
	rst  $38                                         ; $424b: $ff
	xor  a                                           ; $424c: $af
	ld   de, $ffd1                                   ; $424d: $11 $d1 $ff
	adc  b                                           ; $4250: $88
	inc  de                                          ; $4251: $13
	rst  $38                                         ; $4252: $ff
	rst  $30                                         ; $4253: $f7
	ld   de, $df11                                   ; $4254: $11 $11 $df
	rst  $38                                         ; $4257: $ff
	rst  JumpTable                                         ; $4258: $df
	ld   sp, $ffd1                                   ; $4259: $31 $d1 $ff
	ld   a, c                                        ; $425c: $79
	ld   de, $faff                                   ; $425d: $11 $ff $fa
	ld   de, $9f11                                   ; $4260: $11 $11 $9f
	rst  $38                                         ; $4263: $ff
	db   $fd                                         ; $4264: $fd
	ld   [hl], c                                     ; $4265: $71
	and  c                                           ; $4266: $a1
	rst  $38                                         ; $4267: $ff
	adc  d                                           ; $4268: $8a
	ld   de, $ffff                                   ; $4269: $11 $ff $ff
	ld   de, $4f11                                   ; $426c: $11 $11 $4f
	rst  $38                                         ; $426f: $ff
	db   $fd                                         ; $4270: $fd
	pop  bc                                          ; $4271: $c1
	sub  c                                           ; $4272: $91
	rst  $28                                         ; $4273: $ef
	adc  e                                           ; $4274: $8b
	ld   de, $ffff                                   ; $4275: $11 $ff $ff
	ld   de, $1f11                                   ; $4278: $11 $11 $1f
	rst  $38                                         ; $427b: $ff
	db   $fc                                         ; $427c: $fc
	pop  af                                          ; $427d: $f1
	ld   h, c                                        ; $427e: $61
	xor  a                                           ; $427f: $af
	sbc  h                                           ; $4280: $9c
	ld   hl, $ffff                                   ; $4281: $21 $ff $ff
	ld   de, $1f11                                   ; $4284: $11 $11 $1f
	rst  $38                                         ; $4287: $ff
	ei                                               ; $4288: $fb
	pop  af                                          ; $4289: $f1
	ld   d, e                                        ; $428a: $53
	ld   a, a                                        ; $428b: $7f
	ld   a, d                                        ; $428c: $7a
	ld   hl, $ffff                                   ; $428d: $21 $ff $ff
	ld   de, $1f11                                   ; $4290: $11 $11 $1f
	rst  $38                                         ; $4293: $ff
	ei                                               ; $4294: $fb
	pop  af                                          ; $4295: $f1
	dec  [hl]                                        ; $4296: $35
	ld   l, a                                        ; $4297: $6f
	sbc  d                                           ; $4298: $9a
	ld   hl, $ffff                                   ; $4299: $21 $ff $ff
	ld   de, $1f11                                   ; $429c: $11 $11 $1f
	rst  $38                                         ; $429f: $ff
	ei                                               ; $42a0: $fb
	pop  af                                          ; $42a1: $f1
	ld   d, h                                        ; $42a2: $54
	ld   l, a                                        ; $42a3: $6f
	adc  c                                           ; $42a4: $89
	ld   sp, $ffff                                   ; $42a5: $31 $ff $ff
	ld   de, $1f11                                   ; $42a8: $11 $11 $1f
	rst  $38                                         ; $42ab: $ff
	ei                                               ; $42ac: $fb
	pop  af                                          ; $42ad: $f1
	ld   d, h                                        ; $42ae: $54
	ld   a, a                                        ; $42af: $7f
	sbc  d                                           ; $42b0: $9a
	ld   hl, $ffff                                   ; $42b1: $21 $ff $ff
	ld   de, $1f11                                   ; $42b4: $11 $11 $1f
	rst  $38                                         ; $42b7: $ff
	ei                                               ; $42b8: $fb
	pop  af                                          ; $42b9: $f1
	dec  [hl]                                        ; $42ba: $35
	ld   l, a                                        ; $42bb: $6f
	sbc  d                                           ; $42bc: $9a
	ld   sp, $ffff                                   ; $42bd: $31 $ff $ff
	ld   de, $1f11                                   ; $42c0: $11 $11 $1f
	rst  $38                                         ; $42c3: $ff
	ld   sp, hl                                      ; $42c4: $f9
	pop  af                                          ; $42c5: $f1
	rla                                              ; $42c6: $17
	cpl                                              ; $42c7: $2f
	jp   z, $9f31                                    ; $42c8: $ca $31 $9f

	rst  $38                                         ; $42cb: $ff
	ld   de, $1e11                                   ; $42cc: $11 $11 $1e
	rst  $38                                         ; $42cf: $ff
	cp   $f1                                         ; $42d0: $fe $f1
	add  hl, de                                      ; $42d2: $19
	rra                                              ; $42d3: $1f
	db   $fc                                         ; $42d4: $fc
	ld   d, c                                        ; $42d5: $51
	rra                                              ; $42d6: $1f
	rst  $38                                         ; $42d7: $ff
	pop  hl                                          ; $42d8: $e1
	ld   de, rAUD1LEN                                   ; $42d9: $11 $11 $ff
	rst  $38                                         ; $42dc: $ff
	ld   [$1f13], a                                  ; $42dd: $ea $13 $1f
	rst  $38                                         ; $42e0: $ff
	and  c                                           ; $42e1: $a1
	rra                                              ; $42e2: $1f
	rst  $38                                         ; $42e3: $ff
	pop  af                                          ; $42e4: $f1
	ld   de, rAUD1LEN                                   ; $42e5: $11 $11 $ff
	rst  $38                                         ; $42e8: $ff
	rst  JumpTable                                         ; $42e9: $df
	ld   de, $ff44                                   ; $42ea: $11 $44 $ff
	jp   nc, rAUD1LEN                                   ; $42ed: $d2 $11 $ff

	cp   $11                                         ; $42f0: $fe $11
	ld   de, $ff1f                                   ; $42f2: $11 $1f $ff
	db   $fc                                         ; $42f5: $fc
	sub  c                                           ; $42f6: $91
	ld   de, $f9ff                                   ; $42f7: $11 $ff $f9
	ld   hl, $ff9f                                   ; $42fa: $21 $9f $ff
	ld   de, $1f11                                   ; $42fd: $11 $11 $1f
	rst  $38                                         ; $4300: $ff
	cp   $f1                                         ; $4301: $fe $f1
	inc  d                                           ; $4303: $14
	cpl                                              ; $4304: $2f
	db   $fc                                         ; $4305: $fc
	ld   d, c                                        ; $4306: $51
	rra                                              ; $4307: $1f
	rst  $38                                         ; $4308: $ff
	pop  af                                          ; $4309: $f1
	ld   de, rAUD1LEN                                   ; $430a: $11 $11 $ff
	rst  $38                                         ; $430d: $ff
	or   a                                           ; $430e: $b7
	ld   de, $ff6c                                   ; $430f: $11 $6c $ff
	sub  c                                           ; $4312: $91
	ld   de, $ffff                                   ; $4313: $11 $ff $ff
	ld   de, $1f11                                   ; $4316: $11 $11 $1f
	rst  $38                                         ; $4319: $ff
	ld   sp, hl                                      ; $431a: $f9
	ld   de, $ff17                                   ; $431b: $11 $17 $ff
	ld   a, [$1f11]                                  ; $431e: $fa $11 $1f
	rst  $38                                         ; $4321: $ff
	pop  af                                          ; $4322: $f1
	ld   de, $df11                                   ; $4323: $11 $11 $df
	rst  $38                                         ; $4326: $ff
	pop  af                                          ; $4327: $f1
	ld   de, $ff1f                                   ; $4328: $11 $1f $ff
	pop  hl                                          ; $432b: $e1
	ld   de, $ffef                                   ; $432c: $11 $ef $ff
	ld   b, c                                        ; $432f: $41
	ld   de, rAUD1HIGH                                   ; $4330: $11 $14 $ff
	rst  $38                                         ; $4333: $ff
	ld   sp, rAUD1LEN                                   ; $4334: $31 $11 $ff
	rst  $38                                         ; $4337: $ff
	ld   b, c                                        ; $4338: $41
	ld   de, $ffff                                   ; $4339: $11 $ff $ff
	ld   de, $1c11                                   ; $433c: $11 $11 $1c
	rst  $38                                         ; $433f: $ff
	rst  $38                                         ; $4340: $ff
	ld   de, rAUD1LEN                                   ; $4341: $11 $11 $ff
	rst  $38                                         ; $4344: $ff
	ld   de, rAUD1LEN                                   ; $4345: $11 $11 $ff
	rst  $38                                         ; $4348: $ff
	ld   de, $1d11                                   ; $4349: $11 $11 $1d
	rst  $38                                         ; $434c: $ff
	rst  $38                                         ; $434d: $ff
	pop  af                                          ; $434e: $f1
	ld   de, $ff3f                                   ; $434f: $11 $3f $ff
	ld   h, c                                        ; $4352: $61
	ld   d, $ff                                      ; $4353: $16 $ff
	rst  $38                                         ; $4355: $ff
	ld   [hl], c                                     ; $4356: $71
	ld   de, rAUD1LEN                                   ; $4357: $11 $11 $ff
	rst  $38                                         ; $435a: $ff
	rst  $38                                         ; $435b: $ff
	ld   [de], a                                     ; $435c: $12
	ld   de, $d4fa                                   ; $435d: $11 $fa $d4
	ld   de, $ff7f                                   ; $4360: $11 $7f $ff
	ld   a, [$1111]                                  ; $4363: $fa $11 $11
	ld   de, $fffc                                   ; $4366: $11 $fc $ff
	rst  $38                                         ; $4369: $ff
	add  c                                           ; $436a: $81
	ld   de, $1f69                                   ; $436b: $11 $69 $1f
	call $ffff                                       ; $436e: $cd $ff $ff
	adc  a                                           ; $4371: $8f
	ld   de, $1111                                   ; $4372: $11 $11 $11

Jump_0f9_4375:
	ld   e, $bf                                      ; $4375: $1e $bf
	rst  $38                                         ; $4377: $ff
	pop  af                                          ; $4378: $f1
	ld   hl, $ba1e                                   ; $4379: $21 $1e $ba
	rst  $38                                         ; $437c: $ff
	rst  $38                                         ; $437d: $ff
	rst  $38                                         ; $437e: $ff
	ret  z                                           ; $437f: $c8

	add  c                                           ; $4380: $81
	ld   de, $1111                                   ; $4381: $11 $11 $11
	rst  $38                                         ; $4384: $ff

Call_0f9_4385:
	rst  $38                                         ; $4385: $ff
	ei                                               ; $4386: $fb
	ld   de, rAUD1LEN                                   ; $4387: $11 $11 $ff
	rst  $38                                         ; $438a: $ff
	rst  ToBoot                                         ; $438b: $c7
	sbc  a                                           ; $438c: $9f
	rst  $38                                         ; $438d: $ff
	or   $11                                         ; $438e: $f6 $11
	ld   de, $1511                                   ; $4390: $11 $11 $15
	rst  $38                                         ; $4393: $ff
	rst  $38                                         ; $4394: $ff
	ldh  a, [c]                                      ; $4395: $f2
	ld   de, $ff1b                                   ; $4396: $11 $1b $ff
	rst  $38                                         ; $4399: $ff
	and  h                                           ; $439a: $a4
	ld   a, [hl]                                     ; $439b: $7e
	rst  $38                                         ; $439c: $ff
	ld   hl, sp+$11                                  ; $439d: $f8 $11
	ld   de, $1111                                   ; $439f: $11 $11 $11
	dec  d                                           ; $43a2: $15
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43a3: $cf
	rst  $38                                         ; $43a4: $ff
	or   l                                           ; $43a5: $b5
	ld   [hl-], a                                    ; $43a6: $32
	sbc  a                                           ; $43a7: $9f
	rst  $38                                         ; $43a8: $ff
	ei                                               ; $43a9: $fb
	adc  e                                           ; $43aa: $8b
	rst  $38                                         ; $43ab: $ff
	rst  $38                                         ; $43ac: $ff
	sub  c                                           ; $43ad: $91
	ld   de, $1111                                   ; $43ae: $11 $11 $11
	ld   de, $bf13                                   ; $43b1: $11 $13 $bf
	rst  $38                                         ; $43b4: $ff
	and  h                                           ; $43b5: $a4
	scf                                              ; $43b6: $37
	rst  JumpTable                                         ; $43b7: $df
	rst  $38                                         ; $43b8: $ff
	or   [hl]                                        ; $43b9: $b6
	add  hl, hl                                      ; $43ba: $29
	rst  $38                                         ; $43bb: $ff
	rst  $38                                         ; $43bc: $ff
	sub  c                                           ; $43bd: $91
	ld   de, $3133                                   ; $43be: $11 $33 $31
	ld   de, $5f11                                   ; $43c1: $11 $11 $5f
	rst  $38                                         ; $43c4: $ff
	or   $11                                         ; $43c5: $f6 $11
	ld   c, a                                        ; $43c7: $4f
	rst  $38                                         ; $43c8: $ff
	ld   sp, hl                                      ; $43c9: $f9
	ld   de, $ff4f                                   ; $43ca: $11 $4f $ff
	ld   a, [$1111]                                  ; $43cd: $fa $11 $11
	xor  a                                           ; $43d0: $af
	or   $11                                         ; $43d1: $f6 $11
	ld   de, $ff1f                                   ; $43d3: $11 $1f $ff
	rst  $30                                         ; $43d6: $f7
	ld   de, $ffaf                                   ; $43d7: $11 $af $ff
	ld   hl, sp+$11                                  ; $43da: $f8 $11
	ld   a, [de]                                     ; $43dc: $1a
	rst  $38                                         ; $43dd: $ff
	rst  $38                                         ; $43de: $ff
	ld   d, c                                        ; $43df: $51
	ld   de, $eb6b                                   ; $43e0: $11 $6b $eb
	ld   hl, $1111                                   ; $43e3: $21 $11 $11
	ld   c, d                                        ; $43e6: $4a
	cp   l                                           ; $43e7: $bd
	sub  a                                           ; $43e8: $97
	sbc  [hl]                                        ; $43e9: $9e
	rst  $38                                         ; $43ea: $ff
	rst  $38                                         ; $43eb: $ff
	add  d                                           ; $43ec: $82
	inc  de                                          ; $43ed: $13
	ld   a, l                                        ; $43ee: $7d
	rst  $38                                         ; $43ef: $ff
	rst  $38                                         ; $43f0: $ff
	and  d                                           ; $43f1: $a2
	ld   de, $ab37                                   ; $43f2: $11 $37 $ab
	ld   [hl], c                                     ; $43f5: $71
	ld   de, $1111                                   ; $43f6: $11 $11 $11
	ld   d, a                                        ; $43f9: $57
	cp   b                                           ; $43fa: $b8
	cp   [hl]                                        ; $43fb: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43fc: $cf
	rst  $38                                         ; $43fd: $ff
	ld   sp, hl                                      ; $43fe: $f9
	ld   h, [hl]                                     ; $43ff: $66
	ld   l, h                                        ; $4400: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4401: $cf
	rst  $38                                         ; $4402: $ff
	ld   [$4696], a                                  ; $4403: $ea $96 $46
	ld   h, l                                        ; $4406: $65
	ld   a, c                                        ; $4407: $79
	ld   [hl], h                                     ; $4408: $74
	ld   de, $7812                                   ; $4409: $11 $12 $78
	sub  [hl]                                        ; $440c: $96
	ld   de, $8d14                                   ; $440d: $11 $14 $8d
	rst  $38                                         ; $4410: $ff
	cp   $96                                         ; $4411: $fe $96
	ld   l, b                                        ; $4413: $68
	xor  d                                           ; $4414: $aa
	cp   d                                           ; $4415: $ba
	xor  e                                           ; $4416: $ab
	cp   d                                           ; $4417: $ba
	sbc  d                                           ; $4418: $9a
	xor  e                                           ; $4419: $ab
	db   $dd                                         ; $441a: $dd
	jp   z, $1162                                    ; $441b: $ca $62 $11

	inc  sp                                          ; $441e: $33
	ld   d, a                                        ; $441f: $57
	ld   h, e                                        ; $4420: $63
	ld   bc, $9a13                                   ; $4421: $01 $13 $9a
	adc  d                                           ; $4424: $8a
	sbc  d                                           ; $4425: $9a
	cp   d                                           ; $4426: $ba
	db   $db                                         ; $4427: $db
	adc  e                                           ; $4428: $8b
	sbc  c                                           ; $4429: $99
	db   $ec                                         ; $442a: $ec
	call z, Call_0f9_67a8                            ; $442b: $cc $a8 $67
	sbc  d                                           ; $442e: $9a
	db   $dd                                         ; $442f: $dd
	sbc  d                                           ; $4430: $9a
	add  l                                           ; $4431: $85
	ld   d, e                                        ; $4432: $53
	ld   de, $6911                                   ; $4433: $11 $11 $69

Call_0f9_4436:
	ld   [hl], e                                     ; $4436: $73
	ld   hl, $8a17                                   ; $4437: $21 $17 $8a
	jp   z, $9ac9                                    ; $443a: $ca $c9 $9a

	sbc  e                                           ; $443d: $9b
	db   $ed                                         ; $443e: $ed
	cp   e                                           ; $443f: $bb
	adc  d                                           ; $4440: $8a
	jp   z, $9ba9                                    ; $4441: $ca $a9 $9b

	sbc  d                                           ; $4444: $9a
	ret                                              ; $4445: $c9


	sbc  d                                           ; $4446: $9a
	ld   d, l                                        ; $4447: $55
	ld   h, h                                        ; $4448: $64
	ld   h, [hl]                                     ; $4449: $66
	ld   b, h                                        ; $444a: $44
	ld   [hl-], a                                    ; $444b: $32
	ld   b, h                                        ; $444c: $44
	ld   d, l                                        ; $444d: $55
	inc  sp                                          ; $444e: $33
	inc  hl                                          ; $444f: $23
	ld   a, d                                        ; $4450: $7a
	sbc  $fc                                         ; $4451: $de $fc
	sbc  d                                           ; $4453: $9a
	sbc  c                                           ; $4454: $99
	cp   l                                           ; $4455: $bd
	call $99ca                                       ; $4456: $cd $ca $99
	xor  c                                           ; $4459: $a9
	xor  e                                           ; $445a: $ab
	sbc  c                                           ; $445b: $99
	add  l                                           ; $445c: $85
	ld   d, l                                        ; $445d: $55
	ld   h, a                                        ; $445e: $67
	ld   a, c                                        ; $445f: $79
	sub  a                                           ; $4460: $97
	ld   [hl], d                                     ; $4461: $72
	inc  de                                          ; $4462: $13
	inc  d                                           ; $4463: $14
	ld   h, l                                        ; $4464: $65
	sub  a                                           ; $4465: $97
	ld   h, a                                        ; $4466: $67
	ld   a, c                                        ; $4467: $79
	sbc  c                                           ; $4468: $99
	xor  c                                           ; $4469: $a9
	xor  l                                           ; $446a: $ad
	xor  h                                           ; $446b: $ac
	ld   [$9ba9], a                                  ; $446c: $ea $a9 $9b
	cp   d                                           ; $446f: $ba
	and  [hl]                                        ; $4470: $a6
	halt                                             ; $4471: $76
	ld   l, c                                        ; $4472: $69
	ld   [hl], a                                     ; $4473: $77
	add  [hl]                                        ; $4474: $86

Jump_0f9_4475:
	halt                                             ; $4475: $76
	ld   l, c                                        ; $4476: $69
	ld   [hl], a                                     ; $4477: $77
	ld   [hl], h                                     ; $4478: $74
	ld   b, a                                        ; $4479: $47
	ld   l, b                                        ; $447a: $68
	xor  b                                           ; $447b: $a8
	sbc  d                                           ; $447c: $9a
	adc  b                                           ; $447d: $88
	sbc  d                                           ; $447e: $9a
	sbc  c                                           ; $447f: $99
	sbc  b                                           ; $4480: $98
	sbc  d                                           ; $4481: $9a
	cp   d                                           ; $4482: $ba
	sub  a                                           ; $4483: $97
	add  [hl]                                        ; $4484: $86
	ld   d, a                                        ; $4485: $57
	ld   [hl], a                                     ; $4486: $77
	sbc  c                                           ; $4487: $99
	ld   h, [hl]                                     ; $4488: $66
	ld   [hl], a                                     ; $4489: $77
	adc  b                                           ; $448a: $88
	add  l                                           ; $448b: $85
	ld   d, a                                        ; $448c: $57
	ld   [hl], l                                     ; $448d: $75
	xor  d                                           ; $448e: $aa
	sbc  h                                           ; $448f: $9c
	sub  a                                           ; $4490: $97
	ld   [hl], a                                     ; $4491: $77
	adc  b                                           ; $4492: $88
	cp   e                                           ; $4493: $bb
	cp   h                                           ; $4494: $bc
	sub  [hl]                                        ; $4495: $96

Jump_0f9_4496:
	ld   h, a                                        ; $4496: $67
	adc  c                                           ; $4497: $89
	jp   z, $3377                                    ; $4498: $ca $77 $33

	ld   h, a                                        ; $449b: $67
	ld   l, c                                        ; $449c: $69
	add  [hl]                                        ; $449d: $86
	ld   [hl], e                                     ; $449e: $73
	ld   d, [hl]                                     ; $449f: $56
	ld   e, c                                        ; $44a0: $59
	ld   [hl], l                                     ; $44a1: $75
	sub  a                                           ; $44a2: $97
	adc  e                                           ; $44a3: $8b
	cp   e                                           ; $44a4: $bb
	cp   d                                           ; $44a5: $ba

Jump_0f9_44a6:
	ret  z                                           ; $44a6: $c8

	sbc  d                                           ; $44a7: $9a
	ld   a, e                                        ; $44a8: $7b
	jp   z, $89cb                                    ; $44a9: $ca $cb $89

	add  a                                           ; $44ac: $87
	xor  c                                           ; $44ad: $a9
	adc  b                                           ; $44ae: $88
	ld   a, b                                        ; $44af: $78
	ld   h, [hl]                                     ; $44b0: $66
	ld   h, h                                        ; $44b1: $64
	ld   h, [hl]                                     ; $44b2: $66
	ld   d, a                                        ; $44b3: $57
	ld   h, h                                        ; $44b4: $64
	ld   d, l                                        ; $44b5: $55
	ld   d, [hl]                                     ; $44b6: $56
	ld   d, l                                        ; $44b7: $55
	ld   a, b                                        ; $44b8: $78
	sbc  c                                           ; $44b9: $99
	adc  b                                           ; $44ba: $88
	sbc  e                                           ; $44bb: $9b
	xor  d                                           ; $44bc: $aa
	db   $db                                         ; $44bd: $db
	xor  e                                           ; $44be: $ab
	adc  c                                           ; $44bf: $89
	jp   z, $99cb                                    ; $44c0: $ca $cb $99

	add  a                                           ; $44c3: $87
	sbc  c                                           ; $44c4: $99
	sbc  d                                           ; $44c5: $9a
	ld   a, c                                        ; $44c6: $79
	halt                                             ; $44c7: $76
	add  a                                           ; $44c8: $87
	ld   h, [hl]                                     ; $44c9: $66
	ld   b, l                                        ; $44ca: $45
	ld   h, h                                        ; $44cb: $64
	ld   d, l                                        ; $44cc: $55
	ld   b, l                                        ; $44cd: $45
	ld   h, a                                        ; $44ce: $67
	sbc  c                                           ; $44cf: $99
	add  a                                           ; $44d0: $87
	ld   h, [hl]                                     ; $44d1: $66
	ld   a, c                                        ; $44d2: $79
	xor  e                                           ; $44d3: $ab
	cp   e                                           ; $44d4: $bb
	cp   c                                           ; $44d5: $b9
	sbc  d                                           ; $44d6: $9a
	sbc  b                                           ; $44d7: $98
	cp   c                                           ; $44d8: $b9
	sbc  e                                           ; $44d9: $9b
	xor  d                                           ; $44da: $aa
	sbc  b                                           ; $44db: $98
	adc  b                                           ; $44dc: $88
	adc  c                                           ; $44dd: $89
	add  a                                           ; $44de: $87
	halt                                             ; $44df: $76
	ld   a, c                                        ; $44e0: $79
	adc  c                                           ; $44e1: $89
	add  a                                           ; $44e2: $87
	ld   [hl], a                                     ; $44e3: $77
	ld   h, [hl]                                     ; $44e4: $66
	ld   h, a                                        ; $44e5: $67
	ld   h, [hl]                                     ; $44e6: $66
	ld   h, l                                        ; $44e7: $65
	ld   l, b                                        ; $44e8: $68
	sbc  c                                           ; $44e9: $99
	add  [hl]                                        ; $44ea: $86
	ld   h, l                                        ; $44eb: $65
	ld   l, c                                        ; $44ec: $69
	sbc  d                                           ; $44ed: $9a
	sbc  b                                           ; $44ee: $98
	ld   [hl], a                                     ; $44ef: $77
	ld   [hl], a                                     ; $44f0: $77
	sbc  c                                           ; $44f1: $99
	sbc  d                                           ; $44f2: $9a
	sub  a                                           ; $44f3: $97
	adc  c                                           ; $44f4: $89
	sbc  d                                           ; $44f5: $9a
	xor  d                                           ; $44f6: $aa
	adc  b                                           ; $44f7: $88
	sbc  b                                           ; $44f8: $98
	sbc  d                                           ; $44f9: $9a
	adc  b                                           ; $44fa: $88
	sub  a                                           ; $44fb: $97
	ld   a, b                                        ; $44fc: $78
	ld   a, b                                        ; $44fd: $78
	xor  b                                           ; $44fe: $a8
	add  a                                           ; $44ff: $87
	ld   h, a                                        ; $4500: $67
	ld   [hl], a                                     ; $4501: $77
	halt                                             ; $4502: $76
	ld   h, [hl]                                     ; $4503: $66
	ld   d, [hl]                                     ; $4504: $56
	ld   h, [hl]                                     ; $4505: $66
	adc  b                                           ; $4506: $88
	adc  b                                           ; $4507: $88
	ld   h, [hl]                                     ; $4508: $66
	ld   [hl], a                                     ; $4509: $77
	sbc  e                                           ; $450a: $9b
	xor  d                                           ; $450b: $aa
	sub  a                                           ; $450c: $97
	ld   [hl], a                                     ; $450d: $77
	adc  c                                           ; $450e: $89
	xor  d                                           ; $450f: $aa
	sbc  c                                           ; $4510: $99
	adc  c                                           ; $4511: $89
	adc  c                                           ; $4512: $89
	xor  c                                           ; $4513: $a9
	sbc  c                                           ; $4514: $99
	adc  b                                           ; $4515: $88
	sbc  b                                           ; $4516: $98
	adc  c                                           ; $4517: $89
	ld   a, b                                        ; $4518: $78
	sbc  b                                           ; $4519: $98
	adc  b                                           ; $451a: $88
	ld   [hl], a                                     ; $451b: $77
	ld   [hl], a                                     ; $451c: $77
	ld   [hl], a                                     ; $451d: $77
	ld   a, b                                        ; $451e: $78
	ld   [hl], a                                     ; $451f: $77
	halt                                             ; $4520: $76
	ld   [hl], a                                     ; $4521: $77
	ld   a, b                                        ; $4522: $78
	add  a                                           ; $4523: $87
	ld   [hl], a                                     ; $4524: $77
	ld   [hl], a                                     ; $4525: $77
	adc  c                                           ; $4526: $89
	sbc  b                                           ; $4527: $98
	sub  a                                           ; $4528: $97
	ld   [hl], a                                     ; $4529: $77
	adc  b                                           ; $452a: $88
	sbc  c                                           ; $452b: $99
	sbc  c                                           ; $452c: $99
	sbc  b                                           ; $452d: $98
	adc  b                                           ; $452e: $88
	adc  c                                           ; $452f: $89
	sbc  c                                           ; $4530: $99
	sbc  c                                           ; $4531: $99
	adc  b                                           ; $4532: $88
	adc  b                                           ; $4533: $88
	adc  c                                           ; $4534: $89
	sbc  b                                           ; $4535: $98
	adc  b                                           ; $4536: $88
	adc  b                                           ; $4537: $88
	adc  b                                           ; $4538: $88
	adc  b                                           ; $4539: $88
	adc  b                                           ; $453a: $88
	ld   [hl], a                                     ; $453b: $77
	ld   [hl], a                                     ; $453c: $77
	ld   [hl], a                                     ; $453d: $77
	adc  b                                           ; $453e: $88
	adc  b                                           ; $453f: $88
	ld   [hl], a                                     ; $4540: $77

Call_0f9_4541:
	adc  b                                           ; $4541: $88
	adc  b                                           ; $4542: $88
	add  a                                           ; $4543: $87
	adc  b                                           ; $4544: $88
	adc  b                                           ; $4545: $88
	adc  b                                           ; $4546: $88
	adc  b                                           ; $4547: $88
	adc  b                                           ; $4548: $88
	adc  b                                           ; $4549: $88
	adc  b                                           ; $454a: $88
	adc  b                                           ; $454b: $88
	adc  c                                           ; $454c: $89
	sbc  c                                           ; $454d: $99
	sbc  b                                           ; $454e: $98
	adc  b                                           ; $454f: $88
	adc  c                                           ; $4550: $89
	sbc  b                                           ; $4551: $98
	adc  b                                           ; $4552: $88
	adc  b                                           ; $4553: $88
	adc  b                                           ; $4554: $88
	adc  b                                           ; $4555: $88
	adc  b                                           ; $4556: $88
	adc  b                                           ; $4557: $88
	adc  b                                           ; $4558: $88
	adc  b                                           ; $4559: $88
	adc  b                                           ; $455a: $88
	adc  b                                           ; $455b: $88
	adc  b                                           ; $455c: $88
	adc  b                                           ; $455d: $88
	adc  b                                           ; $455e: $88
	adc  b                                           ; $455f: $88
	adc  b                                           ; $4560: $88
	adc  b                                           ; $4561: $88
	adc  b                                           ; $4562: $88
	adc  b                                           ; $4563: $88
	adc  b                                           ; $4564: $88
	adc  b                                           ; $4565: $88
	adc  b                                           ; $4566: $88
	adc  b                                           ; $4567: $88
	adc  b                                           ; $4568: $88
	adc  b                                           ; $4569: $88
	ld   de, $1111                                   ; $456a: $11 $11 $11
	ld   de, $1111                                   ; $456d: $11 $11 $11
	ld   de, $1111                                   ; $4570: $11 $11 $11
	ld   de, $1111                                   ; $4573: $11 $11 $11
	ld   de, $1111                                   ; $4576: $11 $11 $11
	ld   de, $1111                                   ; $4579: $11 $11 $11
	ld   de, $1111                                   ; $457c: $11 $11 $11
	ld   de, $1111                                   ; $457f: $11 $11 $11
	ld   de, $1111                                   ; $4582: $11 $11 $11
	ld   de, $1111                                   ; $4585: $11 $11 $11
	ld   de, $1111                                   ; $4588: $11 $11 $11
	ld   de, $1111                                   ; $458b: $11 $11 $11
	ld   de, $1111                                   ; $458e: $11 $11 $11
	ld   de, $1111                                   ; $4591: $11 $11 $11
	ld   de, $1111                                   ; $4594: $11 $11 $11
	ld   de, $1111                                   ; $4597: $11 $11 $11
	ld   de, $1111                                   ; $459a: $11 $11 $11
	ld   de, $4800                                   ; $459d: $11 $00 $48
	ld   de, $1111                                   ; $45a0: $11 $11 $11
	ld   de, $1111                                   ; $45a3: $11 $11 $11
	ld   de, $1111                                   ; $45a6: $11 $11 $11
	ld   de, $5413                                   ; $45a9: $11 $13 $54
	ld   d, h                                        ; $45ac: $54
	ld   d, h                                        ; $45ad: $54
	ld   b, c                                        ; $45ae: $41
	rra                                              ; $45af: $1f
	rst  $38                                         ; $45b0: $ff
	pop  af                                          ; $45b1: $f1
	ld   de, $1411                                   ; $45b2: $11 $11 $14
	pop  hl                                          ; $45b5: $e1
	ld   de, $de1c                                   ; $45b6: $11 $1c $de
	call c, $d1de                                    ; $45b9: $dc $de $d1
	ld   de, $1111                                   ; $45bc: $11 $11 $11
	ld   de, $1111                                   ; $45bf: $11 $11 $11
	ld   de, $1111                                   ; $45c2: $11 $11 $11
	ld   de, $1111                                   ; $45c5: $11 $11 $11
	ld   de, $5411                                   ; $45c8: $11 $11 $54
	ld   b, h                                        ; $45cb: $44
	call nc, Call_0f9_5411                           ; $45cc: $d4 $11 $54
	ld   d, h                                        ; $45cf: $54
	ld   h, a                                        ; $45d0: $67
	ld   [hl], d                                     ; $45d1: $72
	ld   de, $1111                                   ; $45d2: $11 $11 $11
	ld   de, $1112                                   ; $45d5: $11 $12 $11
	ld   [de], a                                     ; $45d8: $12
	ld   de, $1111                                   ; $45d9: $11 $11 $11
	ld   h, [hl]                                     ; $45dc: $66
	halt                                             ; $45dd: $76
	call nz, $8811                                   ; $45de: $c4 $11 $88
	add  a                                           ; $45e1: $87
	ld   [hl], a                                     ; $45e2: $77
	ld   h, [hl]                                     ; $45e3: $66
	ld   d, l                                        ; $45e4: $55
	ld   d, h                                        ; $45e5: $54
	ld   b, h                                        ; $45e6: $44
	ld   b, l                                        ; $45e7: $45
	ld   h, a                                        ; $45e8: $67
	adc  d                                           ; $45e9: $8a
	cp   h                                           ; $45ea: $bc
	db   $dd                                         ; $45eb: $dd
	xor  $dd                                         ; $45ec: $ee $dd
	res  5, c                                        ; $45ee: $cb $a9
	adc  b                                           ; $45f0: $88
	ld   [hl], a                                     ; $45f1: $77
	ld   a, b                                        ; $45f2: $78
	sbc  b                                           ; $45f3: $98
	sbc  d                                           ; $45f4: $9a
	xor  d                                           ; $45f5: $aa
	sbc  c                                           ; $45f6: $99
	adc  b                                           ; $45f7: $88
	add  a                                           ; $45f8: $87
	ld   h, l                                        ; $45f9: $65
	ld   b, e                                        ; $45fa: $43
	ld   hl, $1111                                   ; $45fb: $21 $11 $11
	ld   [de], a                                     ; $45fe: $12
	ld   b, a                                        ; $45ff: $47
	sbc  l                                           ; $4600: $9d
	rst  $38                                         ; $4601: $ff
	rst  $38                                         ; $4602: $ff
	rst  $38                                         ; $4603: $ff
	cp   $ca                                         ; $4604: $fe $ca
	add  a                                           ; $4606: $87
	halt                                             ; $4607: $76
	ld   h, a                                        ; $4608: $67
	ld   a, b                                        ; $4609: $78
	sbc  c                                           ; $460a: $99
	sbc  d                                           ; $460b: $9a
	sbc  d                                           ; $460c: $9a
	xor  d                                           ; $460d: $aa
	cp   d                                           ; $460e: $ba
	xor  d                                           ; $460f: $aa
	sbc  b                                           ; $4610: $98
	ld   h, l                                        ; $4611: $65
	ld   b, d                                        ; $4612: $42
	ld   de, $1111                                   ; $4613: $11 $11 $11
	ld   de, $7a24                                   ; $4616: $11 $24 $7a
	rst  JumpTable                                         ; $4619: $df
	rst  $38                                         ; $461a: $ff
	rst  $38                                         ; $461b: $ff
	rst  $38                                         ; $461c: $ff
	db   $ec                                         ; $461d: $ec
	xor  b                                           ; $461e: $a8
	ld   h, l                                        ; $461f: $65
	ld   d, h                                        ; $4620: $54
	ld   d, l                                        ; $4621: $55
	ld   h, a                                        ; $4622: $67
	adc  c                                           ; $4623: $89
	xor  h                                           ; $4624: $ac
	call $badd                                       ; $4625: $cd $dd $ba
	xor  b                                           ; $4628: $a8
	ld   h, h                                        ; $4629: $64
	ld   hl, $1111                                   ; $462a: $21 $11 $11
	ld   de, $3611                                   ; $462d: $11 $11 $36
	xor  [hl]                                        ; $4630: $ae
	rst  $38                                         ; $4631: $ff
	rst  $38                                         ; $4632: $ff
	rst  $38                                         ; $4633: $ff
	rst  $38                                         ; $4634: $ff
	db   $db                                         ; $4635: $db
	sub  [hl]                                        ; $4636: $96
	ld   d, h                                        ; $4637: $54
	ld   b, e                                        ; $4638: $43
	ld   b, l                                        ; $4639: $45
	ld   l, b                                        ; $463a: $68
	sbc  e                                           ; $463b: $9b
	cp   h                                           ; $463c: $bc
	call $cadd                                       ; $463d: $cd $dd $ca
	ld   [hl], l                                     ; $4640: $75
	ld   hl, $1111                                   ; $4641: $21 $11 $11
	ld   de, $3711                                   ; $4644: $11 $11 $37
	cp   a                                           ; $4647: $bf
	rst  $38                                         ; $4648: $ff
	rst  $38                                         ; $4649: $ff
	rst  $38                                         ; $464a: $ff
	rst  $38                                         ; $464b: $ff
	jp   c, Jump_0f9_4375                            ; $464c: $da $75 $43

	inc  sp                                          ; $464f: $33
	ld   b, [hl]                                     ; $4650: $46
	ld   a, b                                        ; $4651: $78
	sbc  d                                           ; $4652: $9a
	cp   h                                           ; $4653: $bc
	call $86bb                                       ; $4654: $cd $bb $86
	ld   b, c                                        ; $4657: $41
	ld   de, $1111                                   ; $4658: $11 $11 $11
	ld   de, $bf26                                   ; $465b: $11 $26 $bf
	rst  $38                                         ; $465e: $ff
	rst  $38                                         ; $465f: $ff
	rst  $38                                         ; $4660: $ff
	rst  $38                                         ; $4661: $ff
	db   $ec                                         ; $4662: $ec
	sub  a                                           ; $4663: $97
	ld   d, h                                        ; $4664: $54
	inc  sp                                          ; $4665: $33
	ld   b, l                                        ; $4666: $45
	ld   l, b                                        ; $4667: $68
	sbc  d                                           ; $4668: $9a
	xor  e                                           ; $4669: $ab
	xor  d                                           ; $466a: $aa
	sub  a                                           ; $466b: $97
	ld   h, e                                        ; $466c: $63
	ld   de, $1111                                   ; $466d: $11 $11 $11
	ld   de, $8c13                                   ; $4670: $11 $13 $8c
	rst  $38                                         ; $4673: $ff
	rst  $38                                         ; $4674: $ff
	rst  $38                                         ; $4675: $ff
	rst  $38                                         ; $4676: $ff
	cp   $c9                                         ; $4677: $fe $c9
	ld   [hl], l                                     ; $4679: $75
	ld   b, h                                        ; $467a: $44
	ld   b, h                                        ; $467b: $44
	ld   h, a                                        ; $467c: $67
	adc  d                                           ; $467d: $8a
	xor  d                                           ; $467e: $aa
	sbc  c                                           ; $467f: $99
	halt                                             ; $4680: $76
	ld   b, d                                        ; $4681: $42
	ld   de, $1111                                   ; $4682: $11 $11 $11
	ld   de, $6913                                   ; $4685: $11 $13 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4688: $cf
	rst  $38                                         ; $4689: $ff
	rst  $38                                         ; $468a: $ff
	rst  $38                                         ; $468b: $ff
	rst  $38                                         ; $468c: $ff
	db   $db                                         ; $468d: $db
	sbc  b                                           ; $468e: $98
	ld   h, [hl]                                     ; $468f: $66
	ld   h, [hl]                                     ; $4690: $66
	ld   a, b                                        ; $4691: $78
	sbc  d                                           ; $4692: $9a
	xor  c                                           ; $4693: $a9
	add  [hl]                                        ; $4694: $86
	ld   b, e                                        ; $4695: $43
	ld   de, $1111                                   ; $4696: $11 $11 $11
	ld   de, $6a12                                   ; $4699: $11 $12 $6a
	rst  $28                                         ; $469c: $ef
	rst  $38                                         ; $469d: $ff
	rst  $38                                         ; $469e: $ff
	rst  $38                                         ; $469f: $ff
	rst  $38                                         ; $46a0: $ff
	db   $db                                         ; $46a1: $db
	sbc  b                                           ; $46a2: $98
	halt                                             ; $46a3: $76
	ld   h, [hl]                                     ; $46a4: $66
	ld   a, b                                        ; $46a5: $78
	xor  d                                           ; $46a6: $aa
	add  a                                           ; $46a7: $87
	ld   h, h                                        ; $46a8: $64
	ld   hl, $1111                                   ; $46a9: $21 $11 $11
	ld   de, $3611                                   ; $46ac: $11 $11 $36
	xor  l                                           ; $46af: $ad
	rst  $38                                         ; $46b0: $ff
	rst  $38                                         ; $46b1: $ff
	rst  $38                                         ; $46b2: $ff
	rst  $38                                         ; $46b3: $ff
	rst  $38                                         ; $46b4: $ff
	db   $fd                                         ; $46b5: $fd
	jp   z, Jump_0f9_7898                            ; $46b6: $ca $98 $78

	sbc  c                                           ; $46b9: $99
	add  a                                           ; $46ba: $87
	ld   d, h                                        ; $46bb: $54
	ld   de, $1111                                   ; $46bc: $11 $11 $11
	ld   de, $2611                                   ; $46bf: $11 $11 $26
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $46c2: $cf
	rst  $38                                         ; $46c3: $ff
	rst  $38                                         ; $46c4: $ff
	rst  $38                                         ; $46c5: $ff
	rst  $38                                         ; $46c6: $ff
	rst  $38                                         ; $46c7: $ff
	rst  $38                                         ; $46c8: $ff
	db   $ed                                         ; $46c9: $ed
	xor  e                                           ; $46ca: $ab
	sbc  c                                           ; $46cb: $99
	xor  b                                           ; $46cc: $a8
	halt                                             ; $46cd: $76
	ld   b, d                                        ; $46ce: $42
	ld   de, $1111                                   ; $46cf: $11 $11 $11
	ld   de, $5a11                                   ; $46d2: $11 $11 $5a
	rst  $28                                         ; $46d5: $ef
	rst  $38                                         ; $46d6: $ff
	rst  $38                                         ; $46d7: $ff
	rst  $38                                         ; $46d8: $ff
	rst  $38                                         ; $46d9: $ff
	call c, $9aab                                    ; $46da: $dc $ab $9a
	cp   d                                           ; $46dd: $ba
	call $a8cb                                       ; $46de: $cd $cb $a8
	ld   d, d                                        ; $46e1: $52
	ld   de, $1111                                   ; $46e2: $11 $11 $11
	ld   de, $df15                                   ; $46e5: $11 $15 $df
	rst  $38                                         ; $46e8: $ff
	rst  $38                                         ; $46e9: $ff
	rst  $38                                         ; $46ea: $ff

jr_0f9_46eb:
	rst  $38                                         ; $46eb: $ff
	db   $fd                                         ; $46ec: $fd
	cp   b                                           ; $46ed: $b8
	halt                                             ; $46ee: $76
	ld   d, [hl]                                     ; $46ef: $56
	ld   l, d                                        ; $46f0: $6a
	xor  e                                           ; $46f1: $ab
	cp   c                                           ; $46f2: $b9
	add  l                                           ; $46f3: $85
	ld   de, $1111                                   ; $46f4: $11 $11 $11
	ld   de, $cf14                                   ; $46f7: $11 $14 $cf
	rst  $38                                         ; $46fa: $ff
	rst  $38                                         ; $46fb: $ff
	rst  $38                                         ; $46fc: $ff
	rst  $38                                         ; $46fd: $ff
	db   $eb                                         ; $46fe: $eb
	add  [hl]                                        ; $46ff: $86
	ld   b, e                                        ; $4700: $43
	dec  [hl]                                        ; $4701: $35
	ld   a, d                                        ; $4702: $7a
	cp   h                                           ; $4703: $bc
	jp   z, $1185                                    ; $4704: $ca $85 $11

	ld   de, $1111                                   ; $4707: $11 $11 $11
	jr   z, jr_0f9_46eb                              ; $470a: $28 $df

	rst  $38                                         ; $470c: $ff
	rst  $38                                         ; $470d: $ff
	rst  $38                                         ; $470e: $ff
	rst  $38                                         ; $470f: $ff
	db   $fd                                         ; $4710: $fd
	and  a                                           ; $4711: $a7
	ld   d, e                                        ; $4712: $53
	inc  sp                                          ; $4713: $33
	ld   d, a                                        ; $4714: $57
	adc  e                                           ; $4715: $8b
	xor  b                                           ; $4716: $a8
	ld   [hl], h                                     ; $4717: $74
	ld   de, $1111                                   ; $4718: $11 $11 $11
	ld   de, $ff3c                                   ; $471b: $11 $3c $ff
	rst  $38                                         ; $471e: $ff
	rst  $38                                         ; $471f: $ff
	rst  $38                                         ; $4720: $ff
	rst  $38                                         ; $4721: $ff
	call Call_0f9_75a7                               ; $4722: $cd $a7 $75
	ld   h, [hl]                                     ; $4725: $66
	ld   a, d                                        ; $4726: $7a
	xor  e                                           ; $4727: $ab
	and  [hl]                                        ; $4728: $a6
	ld   b, c                                        ; $4729: $41
	ld   de, $1111                                   ; $472a: $11 $11 $11
	ld   de, $ffcf                                   ; $472d: $11 $cf $ff
	rst  $38                                         ; $4730: $ff
	rst  $38                                         ; $4731: $ff
	rst  $38                                         ; $4732: $ff
	jp   c, Jump_0f9_4475                            ; $4733: $da $75 $44

	ld   d, a                                        ; $4736: $57
	adc  d                                           ; $4737: $8a
	set  0, a                                        ; $4738: $cb $c7
	ld   d, c                                        ; $473a: $51
	ld   de, $1111                                   ; $473b: $11 $11 $11
	ld   de, $ff7d                                   ; $473e: $11 $7d $ff
	rst  $38                                         ; $4741: $ff
	rst  $38                                         ; $4742: $ff
	rst  $38                                         ; $4743: $ff
	rst  $38                                         ; $4744: $ff
	or   a                                           ; $4745: $b7
	ld   sp, $5713                                   ; $4746: $31 $13 $57
	cp   e                                           ; $4749: $bb
	jp   c, $1163                                    ; $474a: $da $63 $11

	ld   de, $1111                                   ; $474d: $11 $11 $11
	ld   a, [hl]                                     ; $4750: $7e
	rst  $38                                         ; $4751: $ff
	rst  $38                                         ; $4752: $ff
	rst  $38                                         ; $4753: $ff
	rst  $38                                         ; $4754: $ff
	rst  $38                                         ; $4755: $ff
	db   $eb                                         ; $4756: $eb
	halt                                             ; $4757: $76
	ld   b, h                                        ; $4758: $44
	ld   d, l                                        ; $4759: $55
	ld   [hl], a                                     ; $475a: $77
	add  a                                           ; $475b: $87
	inc  sp                                          ; $475c: $33
	ld   de, $1111                                   ; $475d: $11 $11 $11
	ld   de, $ff7e                                   ; $4760: $11 $7e $ff
	rst  $38                                         ; $4763: $ff
	rst  $38                                         ; $4764: $ff
	rst  $38                                         ; $4765: $ff
	rst  $38                                         ; $4766: $ff
	cp   c                                           ; $4767: $b9
	add  a                                           ; $4768: $87
	ld   l, b                                        ; $4769: $68
	sbc  d                                           ; $476a: $9a
	ret                                              ; $476b: $c9


	add  l                                           ; $476c: $85
	ld   de, $1111                                   ; $476d: $11 $11 $11
	ld   de, $df12                                   ; $4770: $11 $12 $df
	rst  $38                                         ; $4773: $ff
	rst  $38                                         ; $4774: $ff
	rst  $38                                         ; $4775: $ff
	rst  $38                                         ; $4776: $ff
	db   $fd                                         ; $4777: $fd
	and  a                                           ; $4778: $a7
	ld   h, l                                        ; $4779: $65
	ld   l, b                                        ; $477a: $68
	ld   a, e                                        ; $477b: $7b
	sub  a                                           ; $477c: $97
	add  d                                           ; $477d: $82
	ld   de, $1111                                   ; $477e: $11 $11 $11
	ld   de, $ff18                                   ; $4781: $11 $18 $ff
	rst  $38                                         ; $4784: $ff
	rst  $38                                         ; $4785: $ff
	rst  $38                                         ; $4786: $ff
	rst  $38                                         ; $4787: $ff
	jp   hl                                          ; $4788: $e9


	ld   a, b                                        ; $4789: $78
	ld   l, c                                        ; $478a: $69
	sbc  d                                           ; $478b: $9a
	sbc  c                                           ; $478c: $99
	ld   [hl], h                                     ; $478d: $74
	ld   de, $1111                                   ; $478e: $11 $11 $11
	ld   de, $bf12                                   ; $4791: $11 $12 $bf
	rst  $38                                         ; $4794: $ff
	rst  $38                                         ; $4795: $ff
	rst  $38                                         ; $4796: $ff
	rst  $38                                         ; $4797: $ff
	rst  $38                                         ; $4798: $ff
	xor  b                                           ; $4799: $a8
	ld   d, l                                        ; $479a: $55
	ld   d, [hl]                                     ; $479b: $56
	ld   a, b                                        ; $479c: $78
	sub  [hl]                                        ; $479d: $96
	ld   h, c                                        ; $479e: $61
	ld   de, $1111                                   ; $479f: $11 $11 $11
	ld   de, $ff6f                                   ; $47a2: $11 $6f $ff
	rst  $38                                         ; $47a5: $ff
	rst  $38                                         ; $47a6: $ff
	rst  $38                                         ; $47a7: $ff
	cp   $ec                                         ; $47a8: $fe $ec
	res  3, d                                        ; $47aa: $cb $9a
	and  a                                           ; $47ac: $a7
	ld   h, l                                        ; $47ad: $65
	ld   hl, $1111                                   ; $47ae: $21 $11 $11
	ld   de, $2b11                                   ; $47b1: $11 $11 $2b
	rst  $38                                         ; $47b4: $ff
	rst  $38                                         ; $47b5: $ff
	rst  $38                                         ; $47b6: $ff
	rst  $38                                         ; $47b7: $ff
	db   $fd                                         ; $47b8: $fd
	cp   c                                           ; $47b9: $b9
	ld   h, a                                        ; $47ba: $67
	ld   a, c                                        ; $47bb: $79
	xor  c                                           ; $47bc: $a9
	sub  a                                           ; $47bd: $97
	ld   de, $1111                                   ; $47be: $11 $11 $11
	ld   de, $6c11                                   ; $47c1: $11 $11 $6c
	rst  $38                                         ; $47c4: $ff
	rst  $38                                         ; $47c5: $ff
	rst  $38                                         ; $47c6: $ff
	rst  $38                                         ; $47c7: $ff
	rst  $38                                         ; $47c8: $ff
	add  sp, $73                                     ; $47c9: $e8 $73
	ld   b, l                                        ; $47cb: $45
	ld   l, b                                        ; $47cc: $68
	ld   a, c                                        ; $47cd: $79
	ld   b, c                                        ; $47ce: $41
	ld   de, $1111                                   ; $47cf: $11 $11 $11
	dec  d                                           ; $47d2: $15
	xor  a                                           ; $47d3: $af
	rst  $38                                         ; $47d4: $ff
	rst  $38                                         ; $47d5: $ff
	rst  $38                                         ; $47d6: $ff
	rst  $38                                         ; $47d7: $ff
	rst  $38                                         ; $47d8: $ff
	rst  $38                                         ; $47d9: $ff
	ld   a, [$3196]                                  ; $47da: $fa $96 $31
	ld   de, $1111                                   ; $47dd: $11 $11 $11
	ld   de, $1711                                   ; $47e0: $11 $11 $17
	rst  JumpTable                                         ; $47e3: $df
	rst  $38                                         ; $47e4: $ff
	rst  $38                                         ; $47e5: $ff
	rst  $38                                         ; $47e6: $ff
	db   $fd                                         ; $47e7: $fd
	xor  [hl]                                        ; $47e8: $ae
	adc  $fd                                         ; $47e9: $ce $fd
	add  sp, $51                                     ; $47eb: $e8 $51
	ld   de, $1111                                   ; $47ed: $11 $11 $11
	ld   de, $6c11                                   ; $47f0: $11 $11 $6c
	rst  $38                                         ; $47f3: $ff
	rst  $38                                         ; $47f4: $ff
	rst  $38                                         ; $47f5: $ff
	rst  $38                                         ; $47f6: $ff
	ld   a, [$9ab7]                                  ; $47f7: $fa $b7 $9a
	cp   [hl]                                        ; $47fa: $be
	sub  a                                           ; $47fb: $97
	ld   b, c                                        ; $47fc: $41
	ld   de, $1111                                   ; $47fd: $11 $11 $11
	ld   de, $ff7e                                   ; $4800: $11 $7e $ff
	rst  $38                                         ; $4803: $ff
	rst  $38                                         ; $4804: $ff
	rst  $38                                         ; $4805: $ff
	rst  $38                                         ; $4806: $ff
	cp   $be                                         ; $4807: $fe $be
	sbc  d                                           ; $4809: $9a
	ld   [hl], d                                     ; $480a: $72
	ld   sp, $1111                                   ; $480b: $31 $11 $11
	ld   de, $7c11                                   ; $480e: $11 $11 $7c
	rst  $38                                         ; $4811: $ff
	rst  $38                                         ; $4812: $ff
	rst  $38                                         ; $4813: $ff
	rst  $38                                         ; $4814: $ff
	ei                                               ; $4815: $fb
	cp   d                                           ; $4816: $ba
	xor  h                                           ; $4817: $ac
	cp   l                                           ; $4818: $bd
	sub  a                                           ; $4819: $97
	ld   b, c                                        ; $481a: $41
	ld   de, $1111                                   ; $481b: $11 $11 $11
	ld   de, $ff9f                                   ; $481e: $11 $9f $ff
	rst  $38                                         ; $4821: $ff
	rst  $38                                         ; $4822: $ff
	rst  $38                                         ; $4823: $ff
	jp   c, $cdf7                                    ; $4824: $da $f7 $cd

	adc  e                                           ; $4827: $8b
	inc  hl                                          ; $4828: $23
	ld   de, $1111                                   ; $4829: $11 $11 $11
	ld   de, $cf1a                                   ; $482c: $11 $1a $cf
	rst  $38                                         ; $482f: $ff
	rst  $38                                         ; $4830: $ff
	rst  $38                                         ; $4831: $ff
	rst  $38                                         ; $4832: $ff
	xor  $98                                         ; $4833: $ee $98
	or   a                                           ; $4835: $b7
	and  e                                           ; $4836: $a3
	ld   b, c                                        ; $4837: $41
	ld   de, $1111                                   ; $4838: $11 $11 $11
	ld   de, $ffff                                   ; $483b: $11 $ff $ff
	rst  $38                                         ; $483e: $ff
	rst  $38                                         ; $483f: $ff
	rst  $38                                         ; $4840: $ff
	rst  $28                                         ; $4841: $ef
	ei                                               ; $4842: $fb
	ei                                               ; $4843: $fb
	ld   d, l                                        ; $4844: $55
	ld   de, $1111                                   ; $4845: $11 $11 $11
	ld   de, $3f11                                   ; $4848: $11 $11 $3f
	rst  $38                                         ; $484b: $ff
	rst  $38                                         ; $484c: $ff
	rst  $38                                         ; $484d: $ff
	rst  $38                                         ; $484e: $ff
	ei                                               ; $484f: $fb
	ei                                               ; $4850: $fb
	adc  $aa                                         ; $4851: $ce $aa
	ld   hl, $1111                                   ; $4853: $21 $11 $11
	ld   de, $af11                                   ; $4856: $11 $11 $af
	rst  $38                                         ; $4859: $ff
	rst  $38                                         ; $485a: $ff
	rst  $38                                         ; $485b: $ff
	rst  $38                                         ; $485c: $ff
	rst  $38                                         ; $485d: $ff
	ei                                               ; $485e: $fb
	sbc  e                                           ; $485f: $9b
	ld   a, c                                        ; $4860: $79
	ld   b, c                                        ; $4861: $41
	ld   de, $1111                                   ; $4862: $11 $11 $11
	ld   de, $ff9f                                   ; $4865: $11 $9f $ff
	rst  $38                                         ; $4868: $ff
	rst  $38                                         ; $4869: $ff
	rst  $38                                         ; $486a: $ff
	rst  $38                                         ; $486b: $ff
	db   $fd                                         ; $486c: $fd
	jp   z, $1166                                    ; $486d: $ca $66 $11

	ld   de, $1111                                   ; $4870: $11 $11 $11
	ld   de, $ffaf                                   ; $4873: $11 $af $ff
	rst  $38                                         ; $4876: $ff
	rst  $38                                         ; $4877: $ff
	rst  $38                                         ; $4878: $ff
	cp   $e8                                         ; $4879: $fe $e8
	sbc  d                                           ; $487b: $9a
	ld   [hl], a                                     ; $487c: $77
	ld   de, $1111                                   ; $487d: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $4880: $11 $13 $ff
	rst  $38                                         ; $4883: $ff
	rst  $38                                         ; $4884: $ff
	rst  $38                                         ; $4885: $ff
	rst  $38                                         ; $4886: $ff
	rst  $38                                         ; $4887: $ff
	rst  $10                                         ; $4888: $d7
	add  [hl]                                        ; $4889: $86
	ld   d, e                                        ; $488a: $53
	ld   de, $1111                                   ; $488b: $11 $11 $11
	ld   de, $ff1d                                   ; $488e: $11 $1d $ff
	rst  $38                                         ; $4891: $ff
	rst  $38                                         ; $4892: $ff
	rst  $38                                         ; $4893: $ff
	rst  $38                                         ; $4894: $ff
	rst  $38                                         ; $4895: $ff
	sbc  b                                           ; $4896: $98
	sub  e                                           ; $4897: $93
	ld   h, c                                        ; $4898: $61
	ld   de, $1111                                   ; $4899: $11 $11 $11
	ld   de, $ff4f                                   ; $489c: $11 $4f $ff
	rst  $38                                         ; $489f: $ff
	rst  $38                                         ; $48a0: $ff
	rst  $38                                         ; $48a1: $ff
	cp   $ff                                         ; $48a2: $fe $ff
	ld   a, e                                        ; $48a4: $7b
	ld   [hl], h                                     ; $48a5: $74
	ld   b, c                                        ; $48a6: $41
	ld   de, $1111                                   ; $48a7: $11 $11 $11
	ld   de, $ffff                                   ; $48aa: $11 $ff $ff
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	rst  $38                                         ; $48af: $ff
	xor  $e7                                         ; $48b0: $ee $e7
	sbc  b                                           ; $48b2: $98
	ld   [hl], l                                     ; $48b3: $75
	ld   de, $1111                                   ; $48b4: $11 $11 $11
	ld   de, $ff1f                                   ; $48b7: $11 $1f $ff
	rst  $38                                         ; $48ba: $ff
	rst  $38                                         ; $48bb: $ff
	rst  $38                                         ; $48bc: $ff
	cp   $fc                                         ; $48bd: $fe $fc
	ld   b, [hl]                                     ; $48bf: $46
	ld   l, b                                        ; $48c0: $68
	sub  e                                           ; $48c1: $93
	ld   de, $1111                                   ; $48c2: $11 $11 $11
	ld   de, $ffcf                                   ; $48c5: $11 $cf $ff
	rst  $38                                         ; $48c8: $ff
	rst  $38                                         ; $48c9: $ff
	rst  $38                                         ; $48ca: $ff
	rst  $38                                         ; $48cb: $ff
	push af                                          ; $48cc: $f5
	dec  b                                           ; $48cd: $05
	jr   c, jr_0f9_4931                              ; $48ce: $38 $61

	ld   de, $1111                                   ; $48d0: $11 $11 $11
	dec  l                                           ; $48d3: $2d
	rst  $38                                         ; $48d4: $ff
	rst  $38                                         ; $48d5: $ff
	ei                                               ; $48d6: $fb
	rst  $38                                         ; $48d7: $ff
	rst  $38                                         ; $48d8: $ff
	rst  $38                                         ; $48d9: $ff
	and  c                                           ; $48da: $a1
	inc  d                                           ; $48db: $14
	ld   d, l                                        ; $48dc: $55
	ld   de, $1111                                   ; $48dd: $11 $11 $11
	ld   de, $ffef                                   ; $48e0: $11 $ef $ff
	rst  $38                                         ; $48e3: $ff
	cp   $ff                                         ; $48e4: $fe $ff
	rst  $38                                         ; $48e6: $ff
	ei                                               ; $48e7: $fb
	ld   d, l                                        ; $48e8: $55
	ld   h, a                                        ; $48e9: $67
	ld   de, $1111                                   ; $48ea: $11 $11 $11
	ld   de, $ff5f                                   ; $48ed: $11 $5f $ff
	rst  $38                                         ; $48f0: $ff
	rst  $38                                         ; $48f1: $ff
	rst  $38                                         ; $48f2: $ff
	rst  $38                                         ; $48f3: $ff
	add  a                                           ; $48f4: $87
	ld   d, e                                        ; $48f5: $53
	adc  d                                           ; $48f6: $8a
	sub  c                                           ; $48f7: $91
	ld   de, $1111                                   ; $48f8: $11 $11 $11
	ld   c, d                                        ; $48fb: $4a
	rst  $38                                         ; $48fc: $ff
	rst  $38                                         ; $48fd: $ff
	rst  $28                                         ; $48fe: $ef
	rst  $38                                         ; $48ff: $ff
	rst  $38                                         ; $4900: $ff
	ldh  [c], a                                      ; $4901: $e2
	ld   [de], a                                     ; $4902: $12
	ld   a, a                                        ; $4903: $7f
	rst  $38                                         ; $4904: $ff
	ld   de, $1111                                   ; $4905: $11 $11 $11
	rra                                              ; $4908: $1f
	rst  $38                                         ; $4909: $ff
	rst  $38                                         ; $490a: $ff
	reti                                             ; $490b: $d9


	rst  $38                                         ; $490c: $ff
	rst  $38                                         ; $490d: $ff
	ld   hl, sp+$11                                  ; $490e: $f8 $11
	add  hl, de                                      ; $4910: $19
	rst  $38                                         ; $4911: $ff
	pop  af                                          ; $4912: $f1
	ld   de, $1f11                                   ; $4913: $11 $11 $1f
	rst  $38                                         ; $4916: $ff
	rst  $38                                         ; $4917: $ff
	and  e                                           ; $4918: $a3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4919: $cf
	rst  $38                                         ; $491a: $ff
	db   $fd                                         ; $491b: $fd
	ld   de, rAUD1HIGH                                   ; $491c: $11 $14 $ff
	or   $11                                         ; $491f: $f6 $11
	ld   de, rAUD1ENV                                   ; $4921: $11 $12 $ff
	rst  $38                                         ; $4924: $ff
	ld   d, l                                        ; $4925: $55
	sbc  a                                           ; $4926: $9f
	rst  $38                                         ; $4927: $ff
	rst  $38                                         ; $4928: $ff
	ld   de, rAUD1LEN                                   ; $4929: $11 $11 $ff
	ei                                               ; $492c: $fb
	ld   de, $1111                                   ; $492d: $11 $11 $11
	rst  $38                                         ; $4930: $ff

jr_0f9_4931:
	rst  $38                                         ; $4931: $ff
	ld   [hl], a                                     ; $4932: $77
	sbc  a                                           ; $4933: $9f
	rst  $38                                         ; $4934: $ff
	rst  $38                                         ; $4935: $ff
	ld   de, $ff15                                   ; $4936: $11 $15 $ff
	ld   sp, hl                                      ; $4939: $f9
	ld   de, $1111                                   ; $493a: $11 $11 $11
	rst  $38                                         ; $493d: $ff
	ei                                               ; $493e: $fb
	sbc  h                                           ; $493f: $9c
	rst  $38                                         ; $4940: $ff
	rst  $38                                         ; $4941: $ff
	ei                                               ; $4942: $fb
	ld   de, $ff1c                                   ; $4943: $11 $1c $ff
	ldh  a, [c]                                      ; $4946: $f2
	ld   de, $1111                                   ; $4947: $11 $11 $11
	xor  h                                           ; $494a: $ac
	ld   l, b                                        ; $494b: $68
	sbc  a                                           ; $494c: $9f
	rst  $38                                         ; $494d: $ff
	rst  $38                                         ; $494e: $ff
	ld   hl, sp+$11                                  ; $494f: $f8 $11
	adc  a                                           ; $4951: $8f
	rst  $38                                         ; $4952: $ff
	or   c                                           ; $4953: $b1
	ld   de, $1111                                   ; $4954: $11 $11 $11
	inc  d                                           ; $4957: $14
	rla                                              ; $4958: $17
	rst  $38                                         ; $4959: $ff
	rst  $38                                         ; $495a: $ff
	rst  $38                                         ; $495b: $ff
	ld   sp, hl                                      ; $495c: $f9
	ld   d, [hl]                                     ; $495d: $56
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $495e: $cf
	rst  $38                                         ; $495f: $ff
	ld   h, c                                        ; $4960: $61
	ld   de, $1111                                   ; $4961: $11 $11 $11
	ld   [de], a                                     ; $4964: $12
	inc  a                                           ; $4965: $3c
	rst  $38                                         ; $4966: $ff
	rst  $38                                         ; $4967: $ff
	rst  $38                                         ; $4968: $ff
	db   $fc                                         ; $4969: $fc
	reti                                             ; $496a: $d9


	cp   a                                           ; $496b: $bf
	rst  $38                                         ; $496c: $ff
	sub  c                                           ; $496d: $91
	ld   de, $1111                                   ; $496e: $11 $11 $11
	inc  d                                           ; $4971: $14
	ld   a, h                                        ; $4972: $7c
	rst  $38                                         ; $4973: $ff
	rst  $38                                         ; $4974: $ff
	rst  $38                                         ; $4975: $ff
	rst  $38                                         ; $4976: $ff
	push bc                                          ; $4977: $c5
	ld   a, a                                        ; $4978: $7f
	rst  $38                                         ; $4979: $ff
	pop  de                                          ; $497a: $d1
	ld   de, $1111                                   ; $497b: $11 $11 $11
	ld   a, [de]                                     ; $497e: $1a
	ld   e, b                                        ; $497f: $58
	rst  $38                                         ; $4980: $ff
	rst  $38                                         ; $4981: $ff
	rst  $38                                         ; $4982: $ff
	ld   sp, hl                                      ; $4983: $f9
	ld   [hl], l                                     ; $4984: $75
	ld   a, a                                        ; $4985: $7f
	rst  $38                                         ; $4986: $ff
	pop  de                                          ; $4987: $d1
	ld   de, $1111                                   ; $4988: $11 $11 $11
	ld   a, [de]                                     ; $498b: $1a
	ld   a, c                                        ; $498c: $79
	rst  $28                                         ; $498d: $ef
	rst  $38                                         ; $498e: $ff
	rst  $38                                         ; $498f: $ff
	ei                                               ; $4990: $fb
	sub  h                                           ; $4991: $94
	xor  a                                           ; $4992: $af
	rst  $38                                         ; $4993: $ff
	pop  bc                                          ; $4994: $c1
	ld   de, $1111                                   ; $4995: $11 $11 $11
	rla                                              ; $4998: $17
	adc  a                                           ; $4999: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $499a: $cf
	rst  $38                                         ; $499b: $ff
	rst  $38                                         ; $499c: $ff
	rst  $38                                         ; $499d: $ff
	ld   [hl], e                                     ; $499e: $73
	cp   a                                           ; $499f: $bf
	rst  $38                                         ; $49a0: $ff
	ld   [hl], c                                     ; $49a1: $71
	ld   de, $1111                                   ; $49a2: $11 $11 $11
	dec  d                                           ; $49a5: $15
	ld   a, [hl]                                     ; $49a6: $7e
	rst  $38                                         ; $49a7: $ff
	rst  $38                                         ; $49a8: $ff
	rst  $38                                         ; $49a9: $ff
	ei                                               ; $49aa: $fb
	sub  a                                           ; $49ab: $97
	rst  $38                                         ; $49ac: $ff
	rst  $38                                         ; $49ad: $ff
	ld   b, c                                        ; $49ae: $41
	ld   de, $1111                                   ; $49af: $11 $11 $11
	ld   [de], a                                     ; $49b2: $12
	adc  a                                           ; $49b3: $8f
	rst  $38                                         ; $49b4: $ff
	rst  $38                                         ; $49b5: $ff
	rst  $38                                         ; $49b6: $ff
	rst  $38                                         ; $49b7: $ff
	ld   a, [$fedf]                                  ; $49b8: $fa $df $fe
	ld   sp, $1111                                   ; $49bb: $31 $11 $11
	ld   de, $5f56                                   ; $49be: $11 $56 $5f
	rst  $38                                         ; $49c1: $ff
	rst  $38                                         ; $49c2: $ff
	rst  $38                                         ; $49c3: $ff
	res  3, l                                        ; $49c4: $cb $9d
	rst  $38                                         ; $49c6: $ff
	ld   sp, hl                                      ; $49c7: $f9
	ld   de, $1111                                   ; $49c8: $11 $11 $11
	ld   de, $fd65                                   ; $49cb: $11 $65 $fd
	rst  $38                                         ; $49ce: $ff
	rst  $38                                         ; $49cf: $ff
	rst  $38                                         ; $49d0: $ff
	ld   a, [$ff2f]                                  ; $49d1: $fa $2f $ff
	db   $f4                                         ; $49d4: $f4
	ld   de, $1111                                   ; $49d5: $11 $11 $11
	ld   de, $ed67                                   ; $49d8: $11 $67 $ed
	rst  $38                                         ; $49db: $ff
	rst  $38                                         ; $49dc: $ff
	rst  $38                                         ; $49dd: $ff
	ld   sp, hl                                      ; $49de: $f9
	ld   e, a                                        ; $49df: $5f
	rst  $38                                         ; $49e0: $ff
	pop  af                                          ; $49e1: $f1
	ld   de, $1111                                   ; $49e2: $11 $11 $11
	ld   [de], a                                     ; $49e5: $12
	ld   e, d                                        ; $49e6: $5a
	rst  $38                                         ; $49e7: $ff
	rst  $38                                         ; $49e8: $ff
	rst  $38                                         ; $49e9: $ff
	rst  $38                                         ; $49ea: $ff
	or   $8f                                         ; $49eb: $f6 $8f
	rst  $38                                         ; $49ed: $ff
	pop  af                                          ; $49ee: $f1
	ld   de, $1111                                   ; $49ef: $11 $11 $11
	dec  d                                           ; $49f2: $15
	ld   a, [hl]                                     ; $49f3: $7e
	cp   $ff                                         ; $49f4: $fe $ff
	rst  $38                                         ; $49f6: $ff
	rst  $38                                         ; $49f7: $ff
	push bc                                          ; $49f8: $c5
	rst  $28                                         ; $49f9: $ef
	rst  $38                                         ; $49fa: $ff
	sub  c                                           ; $49fb: $91
	ld   de, $1111                                   ; $49fc: $11 $11 $11
	inc  de                                          ; $49ff: $13
	ld   l, $ff                                      ; $4a00: $2e $ff
	rst  $38                                         ; $4a02: $ff
	rst  $38                                         ; $4a03: $ff
	rst  $38                                         ; $4a04: $ff
	ld   hl, sp-$21                                  ; $4a05: $f8 $df
	rst  $38                                         ; $4a07: $ff
	ld   d, c                                        ; $4a08: $51
	ld   de, $1111                                   ; $4a09: $11 $11 $11
	ld   d, c                                        ; $4a0c: $51
	ld   l, [hl]                                     ; $4a0d: $6e
	rst  $38                                         ; $4a0e: $ff
	rst  $38                                         ; $4a0f: $ff
	rst  $38                                         ; $4a10: $ff
	rst  $38                                         ; $4a11: $ff
	sbc  a                                           ; $4a12: $9f
	rst  $38                                         ; $4a13: $ff
	or   $11                                         ; $4a14: $f6 $11
	ld   de, $1111                                   ; $4a16: $11 $11 $11
	ld   [hl], h                                     ; $4a19: $74
	rst  JumpTable                                         ; $4a1a: $df
	rst  $38                                         ; $4a1b: $ff
	rst  $38                                         ; $4a1c: $ff
	rst  $38                                         ; $4a1d: $ff
	rst  $38                                         ; $4a1e: $ff
	ld   l, a                                        ; $4a1f: $6f
	rst  $38                                         ; $4a20: $ff
	di                                               ; $4a21: $f3
	ld   de, $1111                                   ; $4a22: $11 $11 $11
	rra                                              ; $4a25: $1f
	inc  de                                          ; $4a26: $13
	add  sp, -$01                                    ; $4a27: $e8 $ff
	rst  $38                                         ; $4a29: $ff
	ld   hl, sp-$09                                  ; $4a2a: $f8 $f7
	rst  $38                                         ; $4a2c: $ff
	cp   $21                                         ; $4a2d: $fe $21
	ld   de, $1111                                   ; $4a2f: $11 $11 $11
	sbc  h                                           ; $4a32: $9c
	ld   a, a                                        ; $4a33: $7f
	adc  a                                           ; $4a34: $8f
	rst  $38                                         ; $4a35: $ff
	rst  $38                                         ; $4a36: $ff
	rst  $38                                         ; $4a37: $ff
	add  c                                           ; $4a38: $81
	rst  $38                                         ; $4a39: $ff
	rst  $38                                         ; $4a3a: $ff
	ld   de, $1111                                   ; $4a3b: $11 $11 $11
	ld   de, $fff1                                   ; $4a3e: $11 $f1 $ff
	ld   l, a                                        ; $4a41: $6f
	rst  $38                                         ; $4a42: $ff
	rst  $38                                         ; $4a43: $ff
	xor  a                                           ; $4a44: $af
	ld   l, a                                        ; $4a45: $6f
	ei                                               ; $4a46: $fb
	push af                                          ; $4a47: $f5
	ld   de, $1111                                   ; $4a48: $11 $11 $11
	dec  e                                           ; $4a4b: $1d
	ld   b, l                                        ; $4a4c: $45
	ei                                               ; $4a4d: $fb
	rst  $38                                         ; $4a4e: $ff
	rst  $38                                         ; $4a4f: $ff
	db   $fc                                         ; $4a50: $fc
	ld   sp, hl                                      ; $4a51: $f9
	rra                                              ; $4a52: $1f
	rst  $38                                         ; $4a53: $ff
	pop  af                                          ; $4a54: $f1
	ld   de, $1111                                   ; $4a55: $11 $11 $11
	dec  d                                           ; $4a58: $15
	rra                                              ; $4a59: $1f
	rst  $38                                         ; $4a5a: $ff
	rst  $38                                         ; $4a5b: $ff
	rst  $38                                         ; $4a5c: $ff
	rst  $38                                         ; $4a5d: $ff
	ld   sp, hl                                      ; $4a5e: $f9
	rst  $38                                         ; $4a5f: $ff
	cp   a                                           ; $4a60: $bf
	ld   sp, $1111                                   ; $4a61: $31 $11 $11
	ld   de, $6ef1                                   ; $4a64: $11 $f1 $6e
	ld   a, a                                        ; $4a67: $7f
	rst  $38                                         ; $4a68: $ff
	rst  $38                                         ; $4a69: $ff
	cp   a                                           ; $4a6a: $bf
	ld   a, a                                        ; $4a6b: $7f
	rst  $38                                         ; $4a6c: $ff
	push af                                          ; $4a6d: $f5
	ld   de, $1111                                   ; $4a6e: $11 $11 $11
	ld   a, [de]                                     ; $4a71: $1a
	and  c                                           ; $4a72: $a1
	or   $ef                                         ; $4a73: $f6 $ef
	rst  $38                                         ; $4a75: $ff
	db   $fc                                         ; $4a76: $fc
	ld   sp, hl                                      ; $4a77: $f9
	ld   e, a                                        ; $4a78: $5f
	rst  $38                                         ; $4a79: $ff
	pop  af                                          ; $4a7a: $f1
	ld   de, $1111                                   ; $4a7b: $11 $11 $11
	add  hl, de                                      ; $4a7e: $19
	ld   e, $fb                                      ; $4a7f: $1e $fb
	rst  $38                                         ; $4a81: $ff
	rst  $38                                         ; $4a82: $ff
	rst  $38                                         ; $4a83: $ff
	di                                               ; $4a84: $f3
	sbc  a                                           ; $4a85: $9f
	rst  $38                                         ; $4a86: $ff
	pop  hl                                          ; $4a87: $e1
	ld   de, $1111                                   ; $4a88: $11 $11 $11
	ld   [de], a                                     ; $4a8b: $12
	rra                                              ; $4a8c: $1f
	rst  $38                                         ; $4a8d: $ff
	rst  $38                                         ; $4a8e: $ff
	rst  $38                                         ; $4a8f: $ff
	rst  $38                                         ; $4a90: $ff
	or   $ff                                         ; $4a91: $f6 $ff
	rst  JumpTable                                         ; $4a93: $df
	ld   sp, $1111                                   ; $4a94: $31 $11 $11
	ld   de, $3fe1                                   ; $4a97: $11 $e1 $3f
	sbc  a                                           ; $4a9a: $9f
	rst  $38                                         ; $4a9b: $ff
	rst  $38                                         ; $4a9c: $ff
	xor  a                                           ; $4a9d: $af
	xor  d                                           ; $4a9e: $aa
	cp   $fe                                         ; $4a9f: $fe $fe
	ld   de, $1111                                   ; $4aa1: $11 $11 $11
	ld   [de], a                                     ; $4aa4: $12
	or   c                                           ; $4aa5: $b1
	xor  d                                           ; $4aa6: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4aa7: $cf
	rst  $38                                         ; $4aa8: $ff
	rst  $38                                         ; $4aa9: $ff
	rst  $38                                         ; $4aaa: $ff
	cpl                                              ; $4aab: $2f
	rst  $38                                         ; $4aac: $ff
	or   $11                                         ; $4aad: $f6 $11
	ld   de, $1111                                   ; $4aaf: $11 $11 $11
	ld   [hl], c                                     ; $4ab2: $71
	jp   c, $ffef                                    ; $4ab3: $da $ef $ff

	rst  $38                                         ; $4ab6: $ff
	db   $fc                                         ; $4ab7: $fc
	rra                                              ; $4ab8: $1f
	rst  JumpTable                                         ; $4ab9: $df
	rst  $30                                         ; $4aba: $f7
	ld   de, $1111                                   ; $4abb: $11 $11 $11
	add  hl, de                                      ; $4abe: $19
	ld   h, d                                        ; $4abf: $62
	or   e                                           ; $4ac0: $b3
	rst  $38                                         ; $4ac1: $ff
	rst  $38                                         ; $4ac2: $ff
	db   $fd                                         ; $4ac3: $fd
	or   $8f                                         ; $4ac4: $f6 $8f
	rst  $28                                         ; $4ac6: $ef
	pop  af                                          ; $4ac7: $f1
	ld   de, $1111                                   ; $4ac8: $11 $11 $11
	ld   de, $ff15                                   ; $4acb: $11 $15 $ff
	rst  $38                                         ; $4ace: $ff
	rst  JumpTable                                         ; $4acf: $df
	rst  $38                                         ; $4ad0: $ff
	ld   sp, hl                                      ; $4ad1: $f9
	ld   c, a                                        ; $4ad2: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ad3: $cf
	or   $11                                         ; $4ad4: $f6 $11
	ld   de, $1111                                   ; $4ad6: $11 $11 $11
	ld   hl, $ffaf                                   ; $4ad9: $21 $af $ff
	rst  JumpTable                                         ; $4adc: $df
	cp   $f9                                         ; $4add: $fe $f9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4adf: $cf
	cp   a                                           ; $4ae0: $bf
	di                                               ; $4ae1: $f3
	ld   de, $1111                                   ; $4ae2: $11 $11 $11
	ld   de, $af11                                   ; $4ae5: $11 $11 $af
	rst  $38                                         ; $4ae8: $ff
	rst  $38                                         ; $4ae9: $ff
	rst  $38                                         ; $4aea: $ff
	rst  $38                                         ; $4aeb: $ff
	ld   a, a                                        ; $4aec: $7f
	sbc  a                                           ; $4aed: $9f
	ei                                               ; $4aee: $fb
	ld   de, $1111                                   ; $4aef: $11 $11 $11
	ld   [de], a                                     ; $4af2: $12
	ld   h, c                                        ; $4af3: $61
	dec  sp                                          ; $4af4: $3b
	xor  a                                           ; $4af5: $af
	rst  $38                                         ; $4af6: $ff
	rst  $38                                         ; $4af7: $ff
	db   $fd                                         ; $4af8: $fd
	cpl                                              ; $4af9: $2f
	xor  a                                           ; $4afa: $af
	ld   a, [$1111]                                  ; $4afb: $fa $11 $11
	ld   de, $1c11                                   ; $4afe: $11 $11 $1c
	ld   a, [de]                                     ; $4b01: $1a
	sbc  a                                           ; $4b02: $9f
	rst  $38                                         ; $4b03: $ff
	rst  $38                                         ; $4b04: $ff
	rst  $38                                         ; $4b05: $ff
	ld   c, a                                        ; $4b06: $4f
	cp   a                                           ; $4b07: $bf
	rst  $38                                         ; $4b08: $ff
	and  c                                           ; $4b09: $a1
	ld   de, $1111                                   ; $4b0a: $11 $11 $11
	inc  e                                           ; $4b0d: $1c
	dec  e                                           ; $4b0e: $1d
	ld   hl, sp-$03                                  ; $4b0f: $f8 $fd
	rst  $38                                         ; $4b11: $ff
	rst  $38                                         ; $4b12: $ff
	db   $eb                                         ; $4b13: $eb
	db   $ed                                         ; $4b14: $ed
	rst  $38                                         ; $4b15: $ff
	pop  af                                          ; $4b16: $f1
	ld   de, $1111                                   ; $4b17: $11 $11 $11
	ld   de, $fc51                                   ; $4b1a: $11 $51 $fc
	rst  $38                                         ; $4b1d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b1e: $cf
	rst  $38                                         ; $4b1f: $ff
	ei                                               ; $4b20: $fb
	rst  $38                                         ; $4b21: $ff
	adc  $f7                                         ; $4b22: $ce $f7
	ld   de, $1111                                   ; $4b24: $11 $11 $11
	ld   de, $4f71                                   ; $4b27: $11 $71 $4f
	cp   a                                           ; $4b2a: $bf
	rst  $38                                         ; $4b2b: $ff
	rst  $38                                         ; $4b2c: $ff
	rst  $38                                         ; $4b2d: $ff
	xor  a                                           ; $4b2e: $af
	ld   a, a                                        ; $4b2f: $7f
	rst  $38                                         ; $4b30: $ff
	sub  c                                           ; $4b31: $91
	ld   de, $1111                                   ; $4b32: $11 $11 $11
	rra                                              ; $4b35: $1f
	ld   a, [de]                                     ; $4b36: $1a
	ld   a, d                                        ; $4b37: $7a
	db   $fd                                         ; $4b38: $fd
	rst  $38                                         ; $4b39: $ff
	rst  $38                                         ; $4b3a: $ff
	ei                                               ; $4b3b: $fb
	xor  b                                           ; $4b3c: $a8
	xor  a                                           ; $4b3d: $af
	or   $41                                         ; $4b3e: $f6 $41
	ld   de, $1111                                   ; $4b40: $11 $11 $11
	rst  ToBoot                                         ; $4b43: $c7
	or   l                                           ; $4b44: $b5
	rst  $28                                         ; $4b45: $ef
	rst  $38                                         ; $4b46: $ff
	rst  $38                                         ; $4b47: $ff
	db   $fd                                         ; $4b48: $fd
	sbc  c                                           ; $4b49: $99
	sbc  e                                           ; $4b4a: $9b
	rst  $38                                         ; $4b4b: $ff
	pop  bc                                          ; $4b4c: $c1
	ld   de, $1111                                   ; $4b4d: $11 $11 $11
	add  hl, de                                      ; $4b50: $19
	inc  e                                           ; $4b51: $1c
	db   $ec                                         ; $4b52: $ec
	rst  $38                                         ; $4b53: $ff
	rst  $38                                         ; $4b54: $ff
	rst  $38                                         ; $4b55: $ff
	ei                                               ; $4b56: $fb
	xor  b                                           ; $4b57: $a8
	ld   a, a                                        ; $4b58: $7f
	ld   hl, sp+$61                                  ; $4b59: $f8 $61
	ld   de, $1111                                   ; $4b5b: $11 $11 $11
	add  l                                           ; $4b5e: $85
	ld   c, a                                        ; $4b5f: $4f
	rst  $28                                         ; $4b60: $ef
	rst  $38                                         ; $4b61: $ff
	rst  $38                                         ; $4b62: $ff
	rst  $38                                         ; $4b63: $ff
	db   $ec                                         ; $4b64: $ec
	and  a                                           ; $4b65: $a7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b66: $cf
	and  a                                           ; $4b67: $a7
	ld   de, $1111                                   ; $4b68: $11 $11 $11
	ld   de, $bf81                                   ; $4b6b: $11 $81 $bf
	rst  $38                                         ; $4b6e: $ff
	rst  $38                                         ; $4b6f: $ff
	rst  $38                                         ; $4b70: $ff
	rst  $38                                         ; $4b71: $ff
	reti                                             ; $4b72: $d9


	ld   [hl], l                                     ; $4b73: $75
	db   $db                                         ; $4b74: $db
	sub  l                                           ; $4b75: $95
	ld   de, $1111                                   ; $4b76: $11 $11 $11
	ld   a, [de]                                     ; $4b79: $1a
	ld   e, e                                        ; $4b7a: $5b
	db   $fd                                         ; $4b7b: $fd
	ei                                               ; $4b7c: $fb
	rst  $38                                         ; $4b7d: $ff
	rst  $38                                         ; $4b7e: $ff
	rst  $38                                         ; $4b7f: $ff
	db   $d3                                         ; $4b80: $d3
	dec  d                                           ; $4b81: $15
	adc  d                                           ; $4b82: $8a
	push af                                          ; $4b83: $f5
	ld   de, $1111                                   ; $4b84: $11 $11 $11
	add  hl, de                                      ; $4b87: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b88: $cf
	rst  $38                                         ; $4b89: $ff
	ld   a, [$ffcf]                                  ; $4b8a: $fa $cf $ff
	rst  $38                                         ; $4b8d: $ff
	rst  $30                                         ; $4b8e: $f7
	ld   [de], a                                     ; $4b8f: $12
	ld   c, b                                        ; $4b90: $48
	rst  ToBoot                                         ; $4b91: $c7
	ld   de, $1111                                   ; $4b92: $11 $11 $11
	dec  d                                           ; $4b95: $15
	ld   a, a                                        ; $4b96: $7f
	rst  $38                                         ; $4b97: $ff
	ld   sp, hl                                      ; $4b98: $f9
	cp   a                                           ; $4b99: $bf
	rst  $38                                         ; $4b9a: $ff
	rst  $38                                         ; $4b9b: $ff
	rst  $38                                         ; $4b9c: $ff
	ld   [hl+], a                                    ; $4b9d: $22
	ld   [de], a                                     ; $4b9e: $12
	sub  h                                           ; $4b9f: $94
	ld   b, l                                        ; $4ba0: $45
	ld   de, $1111                                   ; $4ba1: $11 $11 $11
	rra                                              ; $4ba4: $1f
	rst  $38                                         ; $4ba5: $ff
	rst  $38                                         ; $4ba6: $ff
	sbc  a                                           ; $4ba7: $9f
	rst  $38                                         ; $4ba8: $ff
	rst  $38                                         ; $4ba9: $ff
	rst  $38                                         ; $4baa: $ff
	sub  l                                           ; $4bab: $95
	ld   hl, $1821                                   ; $4bac: $21 $21 $18
	ld   sp, $1111                                   ; $4baf: $31 $11 $11
	inc  de                                          ; $4bb2: $13
	rst  $38                                         ; $4bb3: $ff
	rst  $38                                         ; $4bb4: $ff
	rst  $38                                         ; $4bb5: $ff
	ld   a, [$ffff]                                  ; $4bb6: $fa $ff $ff
	rst  $38                                         ; $4bb9: $ff
	or   d                                           ; $4bba: $b2
	ld   de, $4111                                   ; $4bbb: $11 $11 $41
	ld   de, $1111                                   ; $4bbe: $11 $11 $11
	ld   c, a                                        ; $4bc1: $4f
	rst  $38                                         ; $4bc2: $ff
	rst  $38                                         ; $4bc3: $ff
	rst  $38                                         ; $4bc4: $ff
	rst  $28                                         ; $4bc5: $ef
	xor  a                                           ; $4bc6: $af
	rst  $38                                         ; $4bc7: $ff
	db   $fd                                         ; $4bc8: $fd
	sub  [hl]                                        ; $4bc9: $96
	ld   de, $1111                                   ; $4bca: $11 $11 $11
	ld   de, $1111                                   ; $4bcd: $11 $11 $11
	rst  $28                                         ; $4bd0: $ef
	rst  $38                                         ; $4bd1: $ff
	rst  $38                                         ; $4bd2: $ff
	rst  $38                                         ; $4bd3: $ff
	ld   sp, hl                                      ; $4bd4: $f9
	db   $fd                                         ; $4bd5: $fd
	rst  $28                                         ; $4bd6: $ef
	db   $ec                                         ; $4bd7: $ec
	and  h                                           ; $4bd8: $a4
	ld   de, $1111                                   ; $4bd9: $11 $11 $11
	ld   de, $1911                                   ; $4bdc: $11 $11 $19
	rst  JumpTable                                         ; $4bdf: $df
	rst  $38                                         ; $4be0: $ff
	rst  $38                                         ; $4be1: $ff
	rst  $38                                         ; $4be2: $ff
	cp   $c7                                         ; $4be3: $fe $c7
	adc  e                                           ; $4be5: $8b
	cp   [hl]                                        ; $4be6: $be
	or   a                                           ; $4be7: $b7
	ld   d, c                                        ; $4be8: $51
	ld   de, $1111                                   ; $4be9: $11 $11 $11
	inc  de                                          ; $4bec: $13
	xor  a                                           ; $4bed: $af
	rst  $38                                         ; $4bee: $ff
	rst  $38                                         ; $4bef: $ff
	rst  $38                                         ; $4bf0: $ff
	rst  $38                                         ; $4bf1: $ff
	rst  $38                                         ; $4bf2: $ff
	ei                                               ; $4bf3: $fb
	sub  a                                           ; $4bf4: $97
	adc  b                                           ; $4bf5: $88
	ld   h, l                                        ; $4bf6: $65
	ld   h, h                                        ; $4bf7: $64
	ld   de, $1111                                   ; $4bf8: $11 $11 $11
	ld   de, $ff8f                                   ; $4bfb: $11 $8f $ff
	rst  $38                                         ; $4bfe: $ff
	rst  $38                                         ; $4bff: $ff
	rst  $38                                         ; $4c00: $ff
	rst  $38                                         ; $4c01: $ff
	rst  $38                                         ; $4c02: $ff
	db   $ed                                         ; $4c03: $ed
	xor  b                                           ; $4c04: $a8
	ld   hl, $1131                                   ; $4c05: $21 $31 $11
	ld   de, $1111                                   ; $4c08: $11 $11 $11
	jr   @+$01                                       ; $4c0b: $18 $ff

	rst  $38                                         ; $4c0d: $ff
	rst  $38                                         ; $4c0e: $ff
	rst  $38                                         ; $4c0f: $ff
	ei                                               ; $4c10: $fb
	ret  c                                           ; $4c11: $d8

	xor  d                                           ; $4c12: $aa
	cp   l                                           ; $4c13: $bd
	add  [hl]                                        ; $4c14: $86
	ld   hl, $1111                                   ; $4c15: $21 $11 $11
	ld   de, $4e11                                   ; $4c18: $11 $11 $4e
	rst  $28                                         ; $4c1b: $ef
	rst  $38                                         ; $4c1c: $ff
	rst  $38                                         ; $4c1d: $ff
	rst  $38                                         ; $4c1e: $ff
	rst  $38                                         ; $4c1f: $ff
	db   $fd                                         ; $4c20: $fd
	ld   h, [hl]                                     ; $4c21: $66
	ld   b, [hl]                                     ; $4c22: $46
	ld   d, d                                        ; $4c23: $52
	ld   [hl], h                                     ; $4c24: $74
	ld   de, $1111                                   ; $4c25: $11 $11 $11
	ld   de, $ff19                                   ; $4c28: $11 $19 $ff
	rst  $38                                         ; $4c2b: $ff
	rst  $38                                         ; $4c2c: $ff
	rst  $38                                         ; $4c2d: $ff
	rst  $38                                         ; $4c2e: $ff
	rst  $38                                         ; $4c2f: $ff
	reti                                             ; $4c30: $d9


	ld   [hl], d                                     ; $4c31: $72
	ld   b, d                                        ; $4c32: $42
	ld   h, $45                                      ; $4c33: $26 $45
	ld   hl, $1111                                   ; $4c35: $21 $11 $11
	ld   de, $ffbf                                   ; $4c38: $11 $bf $ff
	rst  $38                                         ; $4c3b: $ff
	rst  $38                                         ; $4c3c: $ff
	rst  $38                                         ; $4c3d: $ff
	rst  $38                                         ; $4c3e: $ff
	db   $fc                                         ; $4c3f: $fc
	ret                                              ; $4c40: $c9


	ld   h, a                                        ; $4c41: $67
	inc  de                                          ; $4c42: $13
	ld   b, d                                        ; $4c43: $42
	ld   d, d                                        ; $4c44: $52
	ld   de, $1111                                   ; $4c45: $11 $11 $11
	rla                                              ; $4c48: $17
	rst  $38                                         ; $4c49: $ff
	rst  $38                                         ; $4c4a: $ff
	rst  $38                                         ; $4c4b: $ff
	rst  $38                                         ; $4c4c: $ff
	db   $eb                                         ; $4c4d: $eb
	cp   a                                           ; $4c4e: $bf
	xor  l                                           ; $4c4f: $ad
	ret  c                                           ; $4c50: $d8

	or   h                                           ; $4c51: $b4
	dec  [hl]                                        ; $4c52: $35
	inc  h                                           ; $4c53: $24
	ld   hl, $1111                                   ; $4c54: $21 $11 $11
	ld   de, $ff3b                                   ; $4c57: $11 $3b $ff
	rst  $38                                         ; $4c5a: $ff
	rst  $38                                         ; $4c5b: $ff
	rst  $38                                         ; $4c5c: $ff
	reti                                             ; $4c5d: $d9


	ld   [$9b9d], a                                  ; $4c5e: $ea $9d $9b
	add  h                                           ; $4c61: $84
	sub  l                                           ; $4c62: $95
	ld   b, h                                        ; $4c63: $44
	ld   de, $1111                                   ; $4c64: $11 $11 $11
	ld   de, $ff7d                                   ; $4c67: $11 $7d $ff
	rst  $38                                         ; $4c6a: $ff
	rst  $38                                         ; $4c6b: $ff
	rst  $38                                         ; $4c6c: $ff
	adc  $d8                                         ; $4c6d: $ce $d8
	res  5, e                                        ; $4c6f: $cb $ab
	ld   l, c                                        ; $4c71: $69
	sub  [hl]                                        ; $4c72: $96
	ld   h, e                                        ; $4c73: $63
	ld   de, $1111                                   ; $4c74: $11 $11 $11
	inc  d                                           ; $4c77: $14
	cp   a                                           ; $4c78: $bf
	rst  $38                                         ; $4c79: $ff
	rst  $38                                         ; $4c7a: $ff
	rst  $38                                         ; $4c7b: $ff
	cp   $cf                                         ; $4c7c: $fe $cf
	set  3, c                                        ; $4c7e: $cb $d9
	cp   b                                           ; $4c80: $b8
	ld   l, c                                        ; $4c81: $69
	ld   h, [hl]                                     ; $4c82: $66
	ld   b, c                                        ; $4c83: $41
	ld   de, $1111                                   ; $4c84: $11 $11 $11
	rla                                              ; $4c87: $17
	rst  $38                                         ; $4c88: $ff
	rst  $38                                         ; $4c89: $ff
	rst  $38                                         ; $4c8a: $ff
	rst  $38                                         ; $4c8b: $ff
	ld   sp, hl                                      ; $4c8c: $f9
	adc  $be                                         ; $4c8d: $ce $be
	db   $eb                                         ; $4c8f: $eb
	rst  ToBoot                                         ; $4c90: $c7
	ld   [hl], a                                     ; $4c91: $77
	ld   b, h                                        ; $4c92: $44
	ld   hl, $1111                                   ; $4c93: $21 $11 $11
	ld   de, $ff1b                                   ; $4c96: $11 $1b $ff
	rst  $38                                         ; $4c99: $ff
	rst  $38                                         ; $4c9a: $ff
	rst  $38                                         ; $4c9b: $ff
	and  a                                           ; $4c9c: $a7
	call z, $edaf                                    ; $4c9d: $cc $af $ed
	or   [hl]                                        ; $4ca0: $b6
	ld   h, h                                        ; $4ca1: $64
	ld   de, $1111                                   ; $4ca2: $11 $11 $11
	ld   de, $5c11                                   ; $4ca5: $11 $11 $5c
	rst  $38                                         ; $4ca8: $ff
	rst  $38                                         ; $4ca9: $ff
	rst  $38                                         ; $4caa: $ff
	rst  $38                                         ; $4cab: $ff
	cp   b                                           ; $4cac: $b8
	rst  ToBoot                                         ; $4cad: $c7
	sbc  [hl]                                        ; $4cae: $9e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4caf: $cf
	jp   c, $31c5                                    ; $4cb0: $da $c5 $31

Jump_0f9_4cb3:
	ld   de, $1111                                   ; $4cb3: $11 $11 $11
	ld   de, $ffcf                                   ; $4cb6: $11 $cf $ff
	rst  $38                                         ; $4cb9: $ff
	rst  $38                                         ; $4cba: $ff
	rst  $38                                         ; $4cbb: $ff
	xor  d                                           ; $4cbc: $aa
	sub  h                                           ; $4cbd: $94
	xor  c                                           ; $4cbe: $a9
	sbc  l                                           ; $4cbf: $9d
	sbc  e                                           ; $4cc0: $9b
	sub  [hl]                                        ; $4cc1: $96
	ld   sp, $1111                                   ; $4cc2: $31 $11 $11
	ld   de, $ff1c                                   ; $4cc5: $11 $1c $ff
	rst  $38                                         ; $4cc8: $ff
	rst  $38                                         ; $4cc9: $ff
	rst  $38                                         ; $4cca: $ff
	db   $fd                                         ; $4ccb: $fd
	db   $ed                                         ; $4ccc: $ed
	ld   a, d                                        ; $4ccd: $7a
	cp   b                                           ; $4cce: $b8
	ret  z                                           ; $4ccf: $c8

	xor  d                                           ; $4cd0: $aa
	ld   b, h                                        ; $4cd1: $44
	ld   de, $1111                                   ; $4cd2: $11 $11 $11
	ld   de, $ff5f                                   ; $4cd5: $11 $5f $ff
	rst  $38                                         ; $4cd8: $ff
	rst  $38                                         ; $4cd9: $ff
	rst  $38                                         ; $4cda: $ff
	or   [hl]                                        ; $4cdb: $b6
	sub  [hl]                                        ; $4cdc: $96
	ld   e, h                                        ; $4cdd: $5c
	cp   l                                           ; $4cde: $bd
	ei                                               ; $4cdf: $fb
	rst  ToBoot                                         ; $4ce0: $c7
	ld   sp, $1111                                   ; $4ce1: $31 $11 $11
	ld   de, $df14                                   ; $4ce4: $11 $14 $df
	rst  $38                                         ; $4ce7: $ff
	rst  $38                                         ; $4ce8: $ff
	rst  $38                                         ; $4ce9: $ff
	cp   $aa                                         ; $4cea: $fe $aa
	ld   h, c                                        ; $4cec: $61
	adc  b                                           ; $4ced: $88
	sbc  [hl]                                        ; $4cee: $9e
	cp   a                                           ; $4cef: $bf
	and  [hl]                                        ; $4cf0: $a6
	ld   sp, $1111                                   ; $4cf1: $31 $11 $11
	ld   de, $ff1d                                   ; $4cf4: $11 $1d $ff
	rst  $38                                         ; $4cf7: $ff
	rst  $38                                         ; $4cf8: $ff
	rst  $38                                         ; $4cf9: $ff
	ei                                               ; $4cfa: $fb
	xor  c                                           ; $4cfb: $a9
	ld   b, a                                        ; $4cfc: $47
	sub  a                                           ; $4cfd: $97
	jp   z, $65bc                                    ; $4cfe: $ca $bc $65

	ld   de, $1111                                   ; $4d01: $11 $11 $11
	ld   de, $ff6f                                   ; $4d04: $11 $6f $ff
	rst  $38                                         ; $4d07: $ff
	rst  $38                                         ; $4d08: $ff
	rst  $38                                         ; $4d09: $ff
	xor  b                                           ; $4d0a: $a8
	sub  d                                           ; $4d0b: $92
	add  hl, sp                                      ; $4d0c: $39
	sbc  h                                           ; $4d0d: $9c
	cp   $f9                                         ; $4d0e: $fe $f9
	ld   h, c                                        ; $4d10: $61
	ld   de, $1111                                   ; $4d11: $11 $11 $11
	dec  d                                           ; $4d14: $15
	rst  $38                                         ; $4d15: $ff
	rst  $38                                         ; $4d16: $ff
	rst  $38                                         ; $4d17: $ff
	rst  $38                                         ; $4d18: $ff
	db   $fd                                         ; $4d19: $fd
	res  0, e                                        ; $4d1a: $cb $83
	add  a                                           ; $4d1c: $87
	ld   a, e                                        ; $4d1d: $7b
	xor  l                                           ; $4d1e: $ad
	or   a                                           ; $4d1f: $b7
	ld   h, c                                        ; $4d20: $61
	ld   de, $1111                                   ; $4d21: $11 $11 $11
	rra                                              ; $4d24: $1f
	rst  $38                                         ; $4d25: $ff
	rst  $38                                         ; $4d26: $ff
	rst  $38                                         ; $4d27: $ff
	rst  $38                                         ; $4d28: $ff
	and  [hl]                                        ; $4d29: $a6
	cp   c                                           ; $4d2a: $b9
	ld   l, e                                        ; $4d2b: $6b
	jp   c, $cbfa                                    ; $4d2c: $da $fa $cb

	ld   [hl], $11                                   ; $4d2f: $36 $11
	ld   de, $1111                                   ; $4d31: $11 $11 $11
	rst  $38                                         ; $4d34: $ff
	rst  $38                                         ; $4d35: $ff
	rst  $38                                         ; $4d36: $ff
	rst  $38                                         ; $4d37: $ff
	ld   sp, hl                                      ; $4d38: $f9
	add  [hl]                                        ; $4d39: $86
	ld   h, e                                        ; $4d3a: $63
	adc  e                                           ; $4d3b: $8b
	xor  [hl]                                        ; $4d3c: $ae
	xor  [hl]                                        ; $4d3d: $ae
	and  h                                           ; $4d3e: $a4
	ld   h, c                                        ; $4d3f: $61
	ld   de, $1111                                   ; $4d40: $11 $11 $11
	rra                                              ; $4d43: $1f
	rst  $38                                         ; $4d44: $ff
	rst  $38                                         ; $4d45: $ff
	rst  $38                                         ; $4d46: $ff
	rst  $38                                         ; $4d47: $ff
	add  l                                           ; $4d48: $85
	and  e                                           ; $4d49: $a3
	ld   c, d                                        ; $4d4a: $4a
	cp   l                                           ; $4d4b: $bd
	db   $fc                                         ; $4d4c: $fc
	jp   z, $1112                                    ; $4d4d: $ca $12 $11

	ld   de, $1411                                   ; $4d50: $11 $11 $14
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d53: $cf
	rst  $38                                         ; $4d54: $ff
	rst  $38                                         ; $4d55: $ff
	rst  $38                                         ; $4d56: $ff
	db   $fd                                         ; $4d57: $fd
	ld   d, l                                        ; $4d58: $55
	ld   de, $df59                                   ; $4d59: $11 $59 $df
	rst  $38                                         ; $4d5c: $ff
	sub  $11                                         ; $4d5d: $d6 $11
	ld   de, $1111                                   ; $4d5f: $11 $11 $11
	xor  a                                           ; $4d62: $af
	rst  $38                                         ; $4d63: $ff
	rst  $38                                         ; $4d64: $ff
	rst  $38                                         ; $4d65: $ff
	rst  $38                                         ; $4d66: $ff
	call $0291                                       ; $4d67: $cd $91 $02
	add  hl, sp                                      ; $4d6a: $39
	rst  $28                                         ; $4d6b: $ef
	db   $fc                                         ; $4d6c: $fc
	and  h                                           ; $4d6d: $a4
	ld   de, $1111                                   ; $4d6e: $11 $11 $11
	rra                                              ; $4d71: $1f
	rst  $38                                         ; $4d72: $ff
	rst  $38                                         ; $4d73: $ff
	rst  $38                                         ; $4d74: $ff
	rst  $38                                         ; $4d75: $ff
	cp   $fd                                         ; $4d76: $fe $fd
	ld   h, [hl]                                     ; $4d78: $66
	inc  [hl]                                        ; $4d79: $34
	sbc  b                                           ; $4d7a: $98
	rst  $28                                         ; $4d7b: $ef
	call $1141                                       ; $4d7c: $cd $41 $11
	ld   de, rAUD1LEN                                   ; $4d7f: $11 $11 $ff
	rst  $38                                         ; $4d82: $ff
	rst  $38                                         ; $4d83: $ff
	ei                                               ; $4d84: $fb
	bit  5, h                                        ; $4d85: $cb $6c
	rst  $10                                         ; $4d87: $d7
	xor  c                                           ; $4d88: $a9
	ld   a, d                                        ; $4d89: $7a
	adc  d                                           ; $4d8a: $8a
	rst  $10                                         ; $4d8b: $d7
	sub  l                                           ; $4d8c: $95
	ld   de, $1111                                   ; $4d8d: $11 $11 $11
	rra                                              ; $4d90: $1f
	rst  $38                                         ; $4d91: $ff
	rst  $38                                         ; $4d92: $ff
	rst  $38                                         ; $4d93: $ff
	adc  a                                           ; $4d94: $8f
	ld   [hl], e                                     ; $4d95: $73
	ret  c                                           ; $4d96: $d8

	ld   l, d                                        ; $4d97: $6a
	cp   d                                           ; $4d98: $ba
	ret  z                                           ; $4d99: $c8

	cp   h                                           ; $4d9a: $bc
	add  hl, sp                                      ; $4d9b: $39
	ld   sp, $1111                                   ; $4d9c: $31 $11 $11
	inc  de                                          ; $4d9f: $13
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4da0: $cf
	rst  $38                                         ; $4da1: $ff
	rst  $38                                         ; $4da2: $ff
	rst  $38                                         ; $4da3: $ff
	jp   hl                                          ; $4da4: $e9


	add  a                                           ; $4da5: $87
	ld   b, c                                        ; $4da6: $41
	ld   b, a                                        ; $4da7: $47
	xor  [hl]                                        ; $4da8: $ae
	rst  $38                                         ; $4da9: $ff
	ei                                               ; $4daa: $fb
	ld   d, c                                        ; $4dab: $51
	ld   de, $1111                                   ; $4dac: $11 $11 $11
	ld   c, a                                        ; $4daf: $4f
	rst  $38                                         ; $4db0: $ff
	rst  $38                                         ; $4db1: $ff
	rst  $38                                         ; $4db2: $ff
	rst  $38                                         ; $4db3: $ff
	db   $dd                                         ; $4db4: $dd
	or   d                                           ; $4db5: $b2
	ld   de, $de38                                   ; $4db6: $11 $38 $de
	rst  $38                                         ; $4db9: $ff
	and  a                                           ; $4dba: $a7
	ld   de, $1111                                   ; $4dbb: $11 $11 $11
	rra                                              ; $4dbe: $1f
	rst  $38                                         ; $4dbf: $ff
	rst  $38                                         ; $4dc0: $ff
	rst  $38                                         ; $4dc1: $ff
	sbc  $fc                                         ; $4dc2: $de $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dc4: $cf
	ld   b, d                                        ; $4dc5: $42
	inc  h                                           ; $4dc6: $24
	sbc  l                                           ; $4dc7: $9d
	rst  $38                                         ; $4dc8: $ff
	ld   a, [$1161]                                  ; $4dc9: $fa $61 $11
	ld   de, rAUD1LEN                                   ; $4dcc: $11 $11 $ff
	rst  $38                                         ; $4dcf: $ff
	rst  $38                                         ; $4dd0: $ff
	ld   sp, hl                                      ; $4dd1: $f9
	xor  a                                           ; $4dd2: $af
	xor  [hl]                                        ; $4dd3: $ae
	pop  af                                          ; $4dd4: $f1
	ld   de, $ef2a                                   ; $4dd5: $11 $2a $ef
	rst  $38                                         ; $4dd8: $ff
	sub  h                                           ; $4dd9: $94
	ld   de, $1111                                   ; $4dda: $11 $11 $11
	ld   e, a                                        ; $4ddd: $5f
	rst  $38                                         ; $4dde: $ff
	rst  $38                                         ; $4ddf: $ff
	cp   $ff                                         ; $4de0: $fe $ff
	db   $fd                                         ; $4de2: $fd
	push de                                          ; $4de3: $d5
	ld   de, $ff16                                   ; $4de4: $11 $16 $ff
	rst  $38                                         ; $4de7: $ff
	push af                                          ; $4de8: $f5
	ld   de, $1111                                   ; $4de9: $11 $11 $11
	ld   e, a                                        ; $4dec: $5f
	rst  $38                                         ; $4ded: $ff
	rst  $38                                         ; $4dee: $ff
	rst  JumpTable                                         ; $4def: $df
	rst  $38                                         ; $4df0: $ff
	rst  $38                                         ; $4df1: $ff
	ret                                              ; $4df2: $c9


	ld   de, rAUD1LEN                                   ; $4df3: $11 $11 $ff
	rst  $38                                         ; $4df6: $ff
	ld   hl, sp+$11                                  ; $4df7: $f8 $11
	ld   de, $5811                                   ; $4df9: $11 $11 $58
	rst  $38                                         ; $4dfc: $ff
	rst  $38                                         ; $4dfd: $ff
	db   $db                                         ; $4dfe: $db
	rst  $38                                         ; $4dff: $ff
	rst  $38                                         ; $4e00: $ff
	rst  $20                                         ; $4e01: $e7
	ld   de, $af11                                   ; $4e02: $11 $11 $af
	rst  $38                                         ; $4e05: $ff
	ld   a, [$1111]                                  ; $4e06: $fa $11 $11
	ld   de, $6f37                                   ; $4e09: $11 $37 $6f
	rst  $38                                         ; $4e0c: $ff
	rst  $38                                         ; $4e0d: $ff
	rst  $38                                         ; $4e0e: $ff
	rst  $38                                         ; $4e0f: $ff
	di                                               ; $4e10: $f3
	ld   de, $5f11                                   ; $4e11: $11 $11 $5f
	rst  $38                                         ; $4e14: $ff
	rst  $38                                         ; $4e15: $ff
	ld   de, $1111                                   ; $4e16: $11 $11 $11
	ld   d, $18                                      ; $4e19: $16 $18
	rst  $38                                         ; $4e1b: $ff
	rst  $38                                         ; $4e1c: $ff
	rst  $38                                         ; $4e1d: $ff
	rst  $38                                         ; $4e1e: $ff
	di                                               ; $4e1f: $f3
	ld   de, $6f11                                   ; $4e20: $11 $11 $6f
	rst  $38                                         ; $4e23: $ff
	rst  $38                                         ; $4e24: $ff
	ld   h, c                                        ; $4e25: $61
	ld   de, $1111                                   ; $4e26: $11 $11 $11
	ld   de, $ff9f                                   ; $4e29: $11 $9f $ff
	rst  $38                                         ; $4e2c: $ff
	cp   $a9                                         ; $4e2d: $fe $a9
	ld   de, $7e11                                   ; $4e2f: $11 $11 $7e
	rst  $38                                         ; $4e32: $ff
	rst  $38                                         ; $4e33: $ff
	db   $f4                                         ; $4e34: $f4
	ld   de, $1111                                   ; $4e35: $11 $11 $11
	ld   de, $ff2f                                   ; $4e38: $11 $2f $ff
	cp   $fb                                         ; $4e3b: $fe $fb
	ld   e, a                                        ; $4e3d: $5f
	sub  [hl]                                        ; $4e3e: $96
	ld   b, c                                        ; $4e3f: $41
	ld   de, $ff5f                                   ; $4e40: $11 $5f $ff
	rst  $38                                         ; $4e43: $ff
	ld   de, $1111                                   ; $4e44: $11 $11 $11
	rla                                              ; $4e47: $17
	ld   l, a                                        ; $4e48: $6f
	rst  $38                                         ; $4e49: $ff
	rst  $38                                         ; $4e4a: $ff
	rst  $38                                         ; $4e4b: $ff
	rst  $38                                         ; $4e4c: $ff
	pop  af                                          ; $4e4d: $f1
	ld   de, $8f11                                   ; $4e4e: $11 $11 $8f
	rst  $38                                         ; $4e51: $ff
	rst  $38                                         ; $4e52: $ff
	ld   hl, $1111                                   ; $4e53: $21 $11 $11
	ld   [de], a                                     ; $4e56: $12
	dec  d                                           ; $4e57: $15
	rst  $38                                         ; $4e58: $ff
	rst  $38                                         ; $4e59: $ff
	rst  $38                                         ; $4e5a: $ff
	ld   a, [$11d1]                                  ; $4e5b: $fa $d1 $11
	inc  de                                          ; $4e5e: $13
	sbc  a                                           ; $4e5f: $9f
	rst  $38                                         ; $4e60: $ff
	rst  $38                                         ; $4e61: $ff
	or   c                                           ; $4e62: $b1
	ld   de, $1111                                   ; $4e63: $11 $11 $11
	ld   de, $ffff                                   ; $4e66: $11 $ff $ff
	rst  $38                                         ; $4e69: $ff
	ld   sp, hl                                      ; $4e6a: $f9
	cp   l                                           ; $4e6b: $bd
	inc  d                                           ; $4e6c: $14
	ld   de, rAUD1LOW                                   ; $4e6d: $11 $13 $ff
	rst  $38                                         ; $4e70: $ff
	ld   hl, sp+$11                                  ; $4e71: $f8 $11
	ld   de, $1111                                   ; $4e73: $11 $11 $11
	ccf                                              ; $4e76: $3f
	rst  $38                                         ; $4e77: $ff
	rst  $38                                         ; $4e78: $ff
	rst  $38                                         ; $4e79: $ff
	sbc  a                                           ; $4e7a: $9f
	ld   d, c                                        ; $4e7b: $51
	ld   de, $af16                                   ; $4e7c: $11 $16 $af
	rst  $38                                         ; $4e7f: $ff
	cp   $31                                         ; $4e80: $fe $31
	ld   de, $1111                                   ; $4e82: $11 $11 $11
	ld   d, $ff                                      ; $4e85: $16 $ff
	rst  $38                                         ; $4e87: $ff
	rst  $38                                         ; $4e88: $ff
	push af                                          ; $4e89: $f5
	ldh  a, [c]                                      ; $4e8a: $f2
	ld   de, $5c11                                   ; $4e8b: $11 $11 $5c
	rst  $38                                         ; $4e8e: $ff
	rst  $38                                         ; $4e8f: $ff
	di                                               ; $4e90: $f3
	ld   de, $1111                                   ; $4e91: $11 $11 $11
	ld   de, $ff7f                                   ; $4e94: $11 $7f $ff
	rst  $38                                         ; $4e97: $ff
	rst  $38                                         ; $4e98: $ff
	ld   c, a                                        ; $4e99: $4f
	ld   de, $1811                                   ; $4e9a: $11 $11 $18
	rst  JumpTable                                         ; $4e9d: $df
	rst  $38                                         ; $4e9e: $ff
	db   $fd                                         ; $4e9f: $fd
	inc  hl                                          ; $4ea0: $23
	ld   de, $1111                                   ; $4ea1: $11 $11 $11
	jr   @+$01                                       ; $4ea4: $18 $ff

	rst  $38                                         ; $4ea6: $ff
	rst  $28                                         ; $4ea7: $ef
	push af                                          ; $4ea8: $f5
	db   $f4                                         ; $4ea9: $f4
	ld   de, $5d11                                   ; $4eaa: $11 $11 $5d
	rst  $38                                         ; $4ead: $ff
	rst  $38                                         ; $4eae: $ff
	pop  hl                                          ; $4eaf: $e1
	ld   b, c                                        ; $4eb0: $41
	ld   de, $1111                                   ; $4eb1: $11 $11 $11
	ld   c, a                                        ; $4eb4: $4f
	rst  $38                                         ; $4eb5: $ff
	rst  $38                                         ; $4eb6: $ff
	rst  $38                                         ; $4eb7: $ff
	ld   a, a                                        ; $4eb8: $7f
	sub  c                                           ; $4eb9: $91
	ld   de, $ef14                                   ; $4eba: $11 $14 $ef
	rst  $38                                         ; $4ebd: $ff
	cp   $17                                         ; $4ebe: $fe $17
	ld   de, $1111                                   ; $4ec0: $11 $11 $11
	ld   d, $ff                                      ; $4ec3: $16 $ff
	rst  $38                                         ; $4ec5: $ff
	ei                                               ; $4ec6: $fb
	rst  $38                                         ; $4ec7: $ff
	rst  $38                                         ; $4ec8: $ff
	ld   de, $1b11                                   ; $4ec9: $11 $11 $1b
	rst  $38                                         ; $4ecc: $ff
	rst  $38                                         ; $4ecd: $ff
	push af                                          ; $4ece: $f5
	ld   l, c                                        ; $4ecf: $69
	ld   de, $1111                                   ; $4ed0: $11 $11 $11
	ld   l, a                                        ; $4ed3: $6f
	rst  $38                                         ; $4ed4: $ff
	rst  $38                                         ; $4ed5: $ff
	ld   c, a                                        ; $4ed6: $4f
	rst  $38                                         ; $4ed7: $ff
	di                                               ; $4ed8: $f3
	ld   de, $df11                                   ; $4ed9: $11 $11 $df
	rst  $38                                         ; $4edc: $ff
	db   $fd                                         ; $4edd: $fd
	or   [hl]                                        ; $4ede: $b6
	rst  $30                                         ; $4edf: $f7
	ld   de, $1311                                   ; $4ee0: $11 $11 $13
	rst  $38                                         ; $4ee3: $ff
	rst  $38                                         ; $4ee4: $ff
	rst  $38                                         ; $4ee5: $ff
	rst  JumpTable                                         ; $4ee6: $df
	rst  $38                                         ; $4ee7: $ff
	and  c                                           ; $4ee8: $a1
	ld   de, $ff18                                   ; $4ee9: $11 $18 $ff
	rst  $38                                         ; $4eec: $ff
	rst  $38                                         ; $4eed: $ff
	rst  $38                                         ; $4eee: $ff
	pop  af                                          ; $4eef: $f1
	ld   de, $1a11                                   ; $4ef0: $11 $11 $1a
	rst  $38                                         ; $4ef3: $ff
	rst  $38                                         ; $4ef4: $ff
	rst  $38                                         ; $4ef5: $ff
	rst  $38                                         ; $4ef6: $ff
	ld   sp, hl                                      ; $4ef7: $f9
	ld   hl, $1a11                                   ; $4ef8: $21 $11 $1a
	rst  $38                                         ; $4efb: $ff
	rst  $38                                         ; $4efc: $ff
	rst  $38                                         ; $4efd: $ff
	cp   $a1                                         ; $4efe: $fe $a1
	ld   de, $1711                                   ; $4f00: $11 $11 $17
	set  7, a                                        ; $4f03: $cb $ff
	rst  $38                                         ; $4f05: $ff
	rst  $38                                         ; $4f06: $ff
	db   $f4                                         ; $4f07: $f4
	ld   sp, $1113                                   ; $4f08: $31 $13 $11
	sbc  c                                           ; $4f0b: $99
	rst  $38                                         ; $4f0c: $ff
	rst  $38                                         ; $4f0d: $ff
	ld   hl, sp+$71                                  ; $4f0e: $f8 $71
	ld   de, $1111                                   ; $4f10: $11 $11 $11
	db   $fc                                         ; $4f13: $fc
	rst  $38                                         ; $4f14: $ff
	rst  $38                                         ; $4f15: $ff
	rst  JumpTable                                         ; $4f16: $df
	rst  $38                                         ; $4f17: $ff
	ld   d, c                                        ; $4f18: $51
	ld   de, $ef11                                   ; $4f19: $11 $11 $ef
	rst  $28                                         ; $4f1c: $ef
	rst  $38                                         ; $4f1d: $ff
	ld   a, [$1191]                                  ; $4f1e: $fa $91 $11
	ld   de, $db11                                   ; $4f21: $11 $11 $db
	rst  JumpTable                                         ; $4f24: $df
	rst  $38                                         ; $4f25: $ff
	rst  $38                                         ; $4f26: $ff
	rst  $38                                         ; $4f27: $ff
	ld   b, c                                        ; $4f28: $41
	ld   [de], a                                     ; $4f29: $12
	ld   hl, $af7e                                   ; $4f2a: $21 $7e $af
	rst  $38                                         ; $4f2d: $ff
	db   $fd                                         ; $4f2e: $fd
	adc  b                                           ; $4f2f: $88
	ld   de, $1111                                   ; $4f30: $11 $11 $11
	dec  e                                           ; $4f33: $1d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f34: $cf
	rst  $38                                         ; $4f35: $ff
	rst  $38                                         ; $4f36: $ff
	rst  $38                                         ; $4f37: $ff
	rst  $30                                         ; $4f38: $f7
	ld   de, $1641                                   ; $4f39: $11 $41 $16
	ld   d, [hl]                                     ; $4f3c: $56
	rst  $28                                         ; $4f3d: $ef
	rst  $38                                         ; $4f3e: $ff
	bit  2, d                                        ; $4f3f: $cb $52
	ld   hl, $1111                                   ; $4f41: $21 $11 $11
	db   $db                                         ; $4f44: $db
	rst  $38                                         ; $4f45: $ff
	rst  JumpTable                                         ; $4f46: $df
	rst  $38                                         ; $4f47: $ff
	rst  $38                                         ; $4f48: $ff
	ld   d, c                                        ; $4f49: $51
	rla                                              ; $4f4a: $17
	ld   d, c                                        ; $4f4b: $51
	ld   [hl], c                                     ; $4f4c: $71
	inc  e                                           ; $4f4d: $1c
	rst  $38                                         ; $4f4e: $ff
	db   $fd                                         ; $4f4f: $fd
	push bc                                          ; $4f50: $c5
	ld   h, $11                                      ; $4f51: $26 $11
	ld   de, $ef1e                                   ; $4f53: $11 $1e $ef
	ld   sp, hl                                      ; $4f56: $f9
	rst  $38                                         ; $4f57: $ff
	rst  $38                                         ; $4f58: $ff
	or   $11                                         ; $4f59: $f6 $11
	daa                                              ; $4f5b: $27
	inc  h                                           ; $4f5c: $24
	ld   de, $ff5f                                   ; $4f5d: $11 $5f $ff
	ei                                               ; $4f60: $fb
	sub  e                                           ; $4f61: $93
	sub  a                                           ; $4f62: $97
	ld   de, $4d11                                   ; $4f63: $11 $11 $4d
	xor  a                                           ; $4f66: $af
	xor  l                                           ; $4f67: $ad
	rst  $38                                         ; $4f68: $ff
	rst  $38                                         ; $4f69: $ff
	and  d                                           ; $4f6a: $a2
	ld   [de], a                                     ; $4f6b: $12
	or   c                                           ; $4f6c: $b1
	ld   de, rAUD1LEN                                   ; $4f6d: $11 $11 $ff
	rst  $38                                         ; $4f70: $ff
	adc  [hl]                                        ; $4f71: $8e
	cp   a                                           ; $4f72: $bf
	ldh  a, [c]                                      ; $4f73: $f2
	ld   de, rAUD1LEN                                   ; $4f74: $11 $11 $ff
	ld   d, c                                        ; $4f77: $51
	rra                                              ; $4f78: $1f
	rst  $38                                         ; $4f79: $ff
	rst  $38                                         ; $4f7a: $ff
	ld   de, $f13f                                   ; $4f7b: $11 $3f $f1
	ld   de, $ff1f                                   ; $4f7e: $11 $1f $ff
	db   $f4                                         ; $4f81: $f4
	ld   l, a                                        ; $4f82: $6f
	rst  $38                                         ; $4f83: $ff
	and  c                                           ; $4f84: $a1
	ld   de, $f116                                   ; $4f85: $11 $16 $f1
	ld   de, $ffaf                                   ; $4f88: $11 $af $ff
	rst  $30                                         ; $4f8b: $f7
	dec  de                                          ; $4f8c: $1b
	rst  $38                                         ; $4f8d: $ff
	ld   de, $4f11                                   ; $4f8e: $11 $11 $4f
	rst  $38                                         ; $4f91: $ff
	cp   c                                           ; $4f92: $b9
	rst  $38                                         ; $4f93: $ff
	db   $fc                                         ; $4f94: $fc
	ld   de, $1111                                   ; $4f95: $11 $11 $11
	ld   hl, $ff1f                                   ; $4f98: $21 $1f $ff
	rst  $38                                         ; $4f9b: $ff
	rst  $38                                         ; $4f9c: $ff
	ld   a, a                                        ; $4f9d: $7f
	ld   [hl], e                                     ; $4f9e: $73
	ld   de, $1a11                                   ; $4f9f: $11 $11 $1a
	rst  $38                                         ; $4fa2: $ff
	rst  $38                                         ; $4fa3: $ff
	rst  $38                                         ; $4fa4: $ff
	db   $fc                                         ; $4fa5: $fc
	ld   d, c                                        ; $4fa6: $51
	ld   de, $1111                                   ; $4fa7: $11 $11 $11
	ld   a, [de]                                     ; $4faa: $1a
	rst  JumpTable                                         ; $4fab: $df
	rst  $38                                         ; $4fac: $ff
	rst  $38                                         ; $4fad: $ff
	cp   l                                           ; $4fae: $bd
	or   h                                           ; $4faf: $b4
	ld   d, c                                        ; $4fb0: $51
	ld   de, $ef14                                   ; $4fb1: $11 $14 $ef
	rst  $38                                         ; $4fb4: $ff
	rst  $38                                         ; $4fb5: $ff
	cp   $91                                         ; $4fb6: $fe $91
	ld   de, $1611                                   ; $4fb8: $11 $11 $16
	ld   d, c                                        ; $4fbb: $51
	ld   a, [$ffff]                                  ; $4fbc: $fa $ff $ff
	db   $f4                                         ; $4fbf: $f4
	call nz, $1175                                   ; $4fc0: $c4 $75 $11
	ld   de, $ffbf                                   ; $4fc3: $11 $bf $ff
	rst  $28                                         ; $4fc6: $ef
	rst  $38                                         ; $4fc7: $ff
	db   $f4                                         ; $4fc8: $f4
	ld   de, $1111                                   ; $4fc9: $11 $11 $11
	ld   hl, $ff6f                                   ; $4fcc: $21 $6f $ff
	rst  $38                                         ; $4fcf: $ff
	rst  $38                                         ; $4fd0: $ff
	rst  $38                                         ; $4fd1: $ff
	ld   b, [hl]                                     ; $4fd2: $46
	ld   de, $1711                                   ; $4fd3: $11 $11 $17
	cp   a                                           ; $4fd6: $bf
	rst  $38                                         ; $4fd7: $ff
	rst  $38                                         ; $4fd8: $ff
	db   $fc                                         ; $4fd9: $fc
	ld   [hl], h                                     ; $4fda: $74
	ld   de, $1811                                   ; $4fdb: $11 $11 $18
	sub  c                                           ; $4fde: $91
	jp   z, $ffff                                    ; $4fdf: $ca $ff $ff

	di                                               ; $4fe2: $f3
	jp   c, $11b6                                    ; $4fe3: $da $b6 $11

	ld   de, $ff8e                                   ; $4fe6: $11 $8e $ff
	rst  JumpTable                                         ; $4fe9: $df
	rst  $38                                         ; $4fea: $ff
	push hl                                          ; $4feb: $e5
	ld   sp, $1111                                   ; $4fec: $31 $11 $11
	inc  de                                          ; $4fef: $13
	dec  de                                          ; $4ff0: $1b
	adc  a                                           ; $4ff1: $8f
	rst  $38                                         ; $4ff2: $ff
	rst  $38                                         ; $4ff3: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ff4: $cf
	ret                                              ; $4ff5: $c9


	ld   [hl], c                                     ; $4ff6: $71
	ld   de, $7a14                                   ; $4ff7: $11 $14 $7a
	db   $fd                                         ; $4ffa: $fd
	rst  $38                                         ; $4ffb: $ff
	rst  $38                                         ; $4ffc: $ff
	sbc  b                                           ; $4ffd: $98
	ld   d, c                                        ; $4ffe: $51
	ld   de, $3511                                   ; $4fff: $11 $11 $35
	dec  d                                           ; $5002: $15
	cp   a                                           ; $5003: $bf
	rst  $38                                         ; $5004: $ff
	rst  $38                                         ; $5005: $ff
	cp   a                                           ; $5006: $bf
	ld   a, [$1141]                                  ; $5007: $fa $41 $11
	dec  d                                           ; $500a: $15
	ld   a, [hl-]                                    ; $500b: $3a
	rst  $28                                         ; $500c: $ef
	rst  $38                                         ; $500d: $ff
	rst  $38                                         ; $500e: $ff
	call z, $1161                                    ; $500f: $cc $61 $11
	ld   de, $1345                                   ; $5012: $11 $45 $13
	rst  $28                                         ; $5015: $ef
	rst  $38                                         ; $5016: $ff
	rst  $38                                         ; $5017: $ff
	rst  JumpTable                                         ; $5018: $df
	ld   a, [$1111]                                  ; $5019: $fa $11 $11
	ld   [de], a                                     ; $501c: $12
	add  hl, de                                      ; $501d: $19
	rst  $28                                         ; $501e: $ef
	rst  $38                                         ; $501f: $ff
	rst  $38                                         ; $5020: $ff
	rst  $28                                         ; $5021: $ef
	ld   d, c                                        ; $5022: $51
	ld   de, $4611                                   ; $5023: $11 $11 $46
	inc  d                                           ; $5026: $14
	rst  JumpTable                                         ; $5027: $df
	rst  $38                                         ; $5028: $ff
	rst  $38                                         ; $5029: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $502a: $cf
	ld   a, [$1121]                                  ; $502b: $fa $21 $11
	ld   de, $df19                                   ; $502e: $11 $19 $df
	rst  $38                                         ; $5031: $ff
	rst  $38                                         ; $5032: $ff
	rst  $38                                         ; $5033: $ff
	ld   d, c                                        ; $5034: $51
	ld   de, $1611                                   ; $5035: $11 $11 $16
	ld   de, $ffef                                   ; $5038: $11 $ef $ff
	rst  $38                                         ; $503b: $ff
	rst  $38                                         ; $503c: $ff
	db   $fd                                         ; $503d: $fd
	ld   h, c                                        ; $503e: $61
	ld   de, $2311                                   ; $503f: $11 $11 $23
	xor  l                                           ; $5042: $ad
	rst  $38                                         ; $5043: $ff
	rst  $38                                         ; $5044: $ff
	rst  $38                                         ; $5045: $ff
	or   e                                           ; $5046: $b3
	ld   de, $1211                                   ; $5047: $11 $11 $12
	ld   de, $ff6a                                   ; $504a: $11 $6a $ff
	rst  $38                                         ; $504d: $ff
	rst  $38                                         ; $504e: $ff
	rst  $38                                         ; $504f: $ff
	push de                                          ; $5050: $d5
	ld   [de], a                                     ; $5051: $12
	ld   de, $4911                                   ; $5052: $11 $11 $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5055: $cf
	rst  $38                                         ; $5056: $ff
	rst  $38                                         ; $5057: $ff
	ld   a, [$1132]                                  ; $5058: $fa $32 $11
	ld   de, $1751                                   ; $505b: $11 $51 $17
	sbc  a                                           ; $505e: $9f
	rst  $38                                         ; $505f: $ff
	rst  $38                                         ; $5060: $ff
	rst  $38                                         ; $5061: $ff
	db   $fd                                         ; $5062: $fd
	inc  sp                                          ; $5063: $33
	ld   b, c                                        ; $5064: $41
	ld   de, $7e13                                   ; $5065: $11 $13 $7e
	db   $fc                                         ; $5068: $fc
	rst  $38                                         ; $5069: $ff
	cp   $86                                         ; $506a: $fe $86
	ld   de, $1111                                   ; $506c: $11 $11 $11
	ld   de, $ff59                                   ; $506f: $11 $59 $ff
	rst  $38                                         ; $5072: $ff
	rst  $38                                         ; $5073: $ff
	rst  $38                                         ; $5074: $ff
	push de                                          ; $5075: $d5
	ld   b, h                                        ; $5076: $44
	ld   de, $5711                                   ; $5077: $11 $11 $57
	db   $dd                                         ; $507a: $dd
	rst  $28                                         ; $507b: $ef
	rst  $38                                         ; $507c: $ff
	jp   hl                                          ; $507d: $e9


	ld   h, c                                        ; $507e: $61
	ld   de, $1111                                   ; $507f: $11 $11 $11
	ld   de, $ff9f                                   ; $5082: $11 $9f $ff
	rst  $38                                         ; $5085: $ff
	rst  $38                                         ; $5086: $ff
	cp   $77                                         ; $5087: $fe $77
	ld   d, d                                        ; $5089: $52
	ld   de, $7a26                                   ; $508a: $11 $26 $7a
	sbc  h                                           ; $508d: $9c
	rst  $38                                         ; $508e: $ff
	ld   a, [$1165]                                  ; $508f: $fa $65 $11
	ld   de, $1131                                   ; $5092: $11 $31 $11
	add  hl, hl                                      ; $5095: $29
	rst  $38                                         ; $5096: $ff
	rst  $38                                         ; $5097: $ff
	rst  $38                                         ; $5098: $ff
	rst  $38                                         ; $5099: $ff
	ei                                               ; $509a: $fb
	ld   h, [hl]                                     ; $509b: $66
	ld   d, c                                        ; $509c: $51
	ld   [de], a                                     ; $509d: $12
	ld   h, a                                        ; $509e: $67
	adc  d                                           ; $509f: $8a
	call $a8dc                                       ; $50a0: $cd $dc $a8
	ld   b, c                                        ; $50a3: $41
	ld   de, $1115                                   ; $50a4: $11 $15 $11
	ld   [de], a                                     ; $50a7: $12
	xor  [hl]                                        ; $50a8: $ae
	rst  $38                                         ; $50a9: $ff
	rst  $28                                         ; $50aa: $ef
	rst  $38                                         ; $50ab: $ff
	rst  $38                                         ; $50ac: $ff
	cp   d                                           ; $50ad: $ba
	or   [hl]                                        ; $50ae: $b6
	ld   sp, $5647                                   ; $50af: $31 $47 $56
	ld   e, c                                        ; $50b2: $59
	call z, $45c6                                    ; $50b3: $cc $c6 $45
	ld   b, c                                        ; $50b6: $41
	ld   de, $1151                                   ; $50b7: $11 $51 $11
	ld   b, a                                        ; $50ba: $47
	cp   a                                           ; $50bb: $bf
	adc  $ff                                         ; $50bc: $ce $ff
	rst  $38                                         ; $50be: $ff
	ei                                               ; $50bf: $fb
	sbc  h                                           ; $50c0: $9c
	add  l                                           ; $50c1: $85
	ld   b, l                                        ; $50c2: $45
	ld   [hl], l                                     ; $50c3: $75
	ld   a, b                                        ; $50c4: $78
	ld   l, b                                        ; $50c5: $68
	xor  c                                           ; $50c6: $a9
	ld   h, h                                        ; $50c7: $64
	ld   h, c                                        ; $50c8: $61
	ld   de, $1158                                   ; $50c9: $11 $58 $11
	ld   d, h                                        ; $50cc: $54
	xor  l                                           ; $50cd: $ad
	call c, $ffcf                                    ; $50ce: $dc $cf $ff
	rst  $38                                         ; $50d1: $ff
	db   $ec                                         ; $50d2: $ec
	cp   d                                           ; $50d3: $ba
	ld   b, h                                        ; $50d4: $44
	add  a                                           ; $50d5: $87
	ld   b, l                                        ; $50d6: $45
	ld   a, b                                        ; $50d7: $78
	ld   a, c                                        ; $50d8: $79
	ld   [hl], d                                     ; $50d9: $72
	ld   [hl], $41                                   ; $50da: $36 $41
	ld   de, $2112                                   ; $50dc: $11 $12 $21
	ld   b, a                                        ; $50df: $47
	rst  $38                                         ; $50e0: $ff
	rst  JumpTable                                         ; $50e1: $df
	rst  $38                                         ; $50e2: $ff
	rst  $38                                         ; $50e3: $ff
	ei                                               ; $50e4: $fb
	xor  e                                           ; $50e5: $ab
	sub  a                                           ; $50e6: $97
	ld   b, l                                        ; $50e7: $45
	ld   a, b                                        ; $50e8: $78
	adc  b                                           ; $50e9: $88
	adc  c                                           ; $50ea: $89
	xor  e                                           ; $50eb: $ab
	ld   [hl], h                                     ; $50ec: $74
	ld   hl, $4411                                   ; $50ed: $21 $11 $44
	ld   de, $6916                                   ; $50f0: $11 $16 $69
	ret                                              ; $50f3: $c9


	rst  JumpTable                                         ; $50f4: $df
	rst  $38                                         ; $50f5: $ff
	rst  $38                                         ; $50f6: $ff
	db   $fd                                         ; $50f7: $fd
	db   $db                                         ; $50f8: $db
	sub  a                                           ; $50f9: $97
	sbc  b                                           ; $50fa: $98
	ld   b, [hl]                                     ; $50fb: $46
	add  a                                           ; $50fc: $87
	ld   h, [hl]                                     ; $50fd: $66
	ld   [hl], h                                     ; $50fe: $74
	inc  [hl]                                        ; $50ff: $34
	ld   sp, $5211                                   ; $5100: $31 $11 $52
	ld   [bc], a                                     ; $5103: $02
	ld   b, a                                        ; $5104: $47
	adc  h                                           ; $5105: $8c
	cp   e                                           ; $5106: $bb
	rst  $28                                         ; $5107: $ef
	rst  $38                                         ; $5108: $ff
	rst  $38                                         ; $5109: $ff
	call z, $99aa                                    ; $510a: $cc $aa $99
	cp   b                                           ; $510d: $b8
	adc  d                                           ; $510e: $8a
	xor  c                                           ; $510f: $a9
	add  a                                           ; $5110: $87

Jump_0f9_5111:
	ld   h, [hl]                                     ; $5111: $66
	ld   d, h                                        ; $5112: $54
	ld   de, $5113                                   ; $5113: $11 $13 $51
	ld   de, $8a46                                   ; $5116: $11 $46 $8a
	ld   a, e                                        ; $5119: $7b
	rst  $38                                         ; $511a: $ff
	cp   $fe                                         ; $511b: $fe $fe
	xor  $bb                                         ; $511d: $ee $bb
	xor  h                                           ; $511f: $ac
	ret                                              ; $5120: $c9


	xor  d                                           ; $5121: $aa
	adc  b                                           ; $5122: $88
	adc  b                                           ; $5123: $88
	ld   h, l                                        ; $5124: $65
	ld   d, d                                        ; $5125: $52
	ld   hl, $4211                                   ; $5126: $21 $11 $42
	ld   de, $5735                                   ; $5129: $11 $35 $57
	sbc  c                                           ; $512c: $99
	call $efee                                       ; $512d: $cd $ee $ef
	db   $ed                                         ; $5130: $ed
	cp   d                                           ; $5131: $ba
	call $abdb                                       ; $5132: $cd $db $ab
	cp   c                                           ; $5135: $b9
	add  a                                           ; $5136: $87
	ld   a, c                                        ; $5137: $79
	halt                                             ; $5138: $76
	ld   b, d                                        ; $5139: $42
	ld   hl, $1134                                   ; $513a: $21 $34 $11
	inc  de                                          ; $513d: $13
	inc  [hl]                                        ; $513e: $34
	ld   d, a                                        ; $513f: $57
	ld   a, c                                        ; $5140: $79
	set  1, h                                        ; $5141: $cb $cc
	cp   $ed                                         ; $5143: $fe $ed
	cp   h                                           ; $5145: $bc
	db   $dd                                         ; $5146: $dd
	db   $db                                         ; $5147: $db
	cp   e                                           ; $5148: $bb
	xor  e                                           ; $5149: $ab
	sbc  c                                           ; $514a: $99
	sbc  c                                           ; $514b: $99
	sub  [hl]                                        ; $514c: $96
	ld   h, h                                        ; $514d: $64
	ld   hl, $4112                                   ; $514e: $21 $12 $41
	ld   de, $4624                                   ; $5151: $11 $24 $46
	ld   d, [hl]                                     ; $5154: $56
	sbc  e                                           ; $5155: $9b
	jp   z, $edbd                                    ; $5156: $ca $bd $ed

	res  7, l                                        ; $5159: $cb $bd
	xor  $cb                                         ; $515b: $ee $cb
	call $a9cb                                       ; $515d: $cd $cb $a9
	xor  c                                           ; $5160: $a9
	sub  [hl]                                        ; $5161: $96
	ld   d, l                                        ; $5162: $55
	ld   b, d                                        ; $5163: $42
	inc  d                                           ; $5164: $14
	ld   [hl+], a                                    ; $5165: $22
	ld   de, $4321                                   ; $5166: $11 $21 $43
	ld   d, l                                        ; $5169: $55
	ld   a, b                                        ; $516a: $78
	sbc  e                                           ; $516b: $9b
	xor  e                                           ; $516c: $ab
	db   $dd                                         ; $516d: $dd
	call z, $eecd                                    ; $516e: $cc $cd $ee
	db   $ec                                         ; $5171: $ec
	set  3, e                                        ; $5172: $cb $db
	xor  c                                           ; $5174: $a9
	cp   c                                           ; $5175: $b9

Jump_0f9_5176:
	xor  b                                           ; $5176: $a8
	ld   h, [hl]                                     ; $5177: $66
	ld   b, h                                        ; $5178: $44
	ld   [hl+], a                                    ; $5179: $22
	inc  [hl]                                        ; $517a: $34
	ld   de, $3211                                   ; $517b: $11 $11 $32
	ld   b, h                                        ; $517e: $44
	ld   b, [hl]                                     ; $517f: $46
	ld   a, c                                        ; $5180: $79
	adc  d                                           ; $5181: $8a
	cp   e                                           ; $5182: $bb
	cp   l                                           ; $5183: $bd
	call c, $ccce                                    ; $5184: $dc $ce $cc
	db   $dd                                         ; $5187: $dd
	res  7, e                                        ; $5188: $cb $bb
	sbc  d                                           ; $518a: $9a
	xor  c                                           ; $518b: $a9
	add  a                                           ; $518c: $87
	ld   [hl], a                                     ; $518d: $77
	halt                                             ; $518e: $76
	ld   d, h                                        ; $518f: $54
	ld   b, h                                        ; $5190: $44
	inc  [hl]                                        ; $5191: $34
	ld   b, e                                        ; $5192: $43
	inc  sp                                          ; $5193: $33
	inc  [hl]                                        ; $5194: $34
	ld   d, l                                        ; $5195: $55
	ld   h, [hl]                                     ; $5196: $66
	ld   a, c                                        ; $5197: $79
	sbc  d                                           ; $5198: $9a
	xor  e                                           ; $5199: $ab
	xor  e                                           ; $519a: $ab
	res  7, e                                        ; $519b: $cb $bb
	cp   e                                           ; $519d: $bb
	cp   e                                           ; $519e: $bb
	xor  d                                           ; $519f: $aa
	xor  e                                           ; $51a0: $ab
	xor  b                                           ; $51a1: $a8
	adc  b                                           ; $51a2: $88
	sbc  b                                           ; $51a3: $98
	adc  b                                           ; $51a4: $88
	ld   a, b                                        ; $51a5: $78
	ld   h, a                                        ; $51a6: $67
	ld   [hl], a                                     ; $51a7: $77
	halt                                             ; $51a8: $76
	halt                                             ; $51a9: $76
	ld   h, [hl]                                     ; $51aa: $66
	ld   h, [hl]                                     ; $51ab: $66
	ld   d, l                                        ; $51ac: $55
	ld   d, [hl]                                     ; $51ad: $56
	ld   h, l                                        ; $51ae: $65
	ld   d, [hl]                                     ; $51af: $56
	ld   [hl], a                                     ; $51b0: $77
	add  a                                           ; $51b1: $87
	adc  b                                           ; $51b2: $88
	adc  c                                           ; $51b3: $89
	adc  d                                           ; $51b4: $8a
	xor  c                                           ; $51b5: $a9
	sbc  c                                           ; $51b6: $99
	xor  b                                           ; $51b7: $a8
	xor  d                                           ; $51b8: $aa
	sbc  d                                           ; $51b9: $9a
	xor  d                                           ; $51ba: $aa
	xor  c                                           ; $51bb: $a9
	sbc  c                                           ; $51bc: $99
	adc  d                                           ; $51bd: $8a
	sbc  b                                           ; $51be: $98
	sbc  b                                           ; $51bf: $98
	ld   a, b                                        ; $51c0: $78
	sbc  c                                           ; $51c1: $99
	ld   a, b                                        ; $51c2: $78
	adc  b                                           ; $51c3: $88
	halt                                             ; $51c4: $76
	ld   [hl], a                                     ; $51c5: $77
	ld   [hl], a                                     ; $51c6: $77
	ld   [hl], a                                     ; $51c7: $77
	ld   [hl], a                                     ; $51c8: $77
	ld   h, [hl]                                     ; $51c9: $66
	ld   h, a                                        ; $51ca: $67
	ld   h, a                                        ; $51cb: $67
	ld   h, l                                        ; $51cc: $65
	halt                                             ; $51cd: $76
	halt                                             ; $51ce: $76
	ld   a, b                                        ; $51cf: $78
	sub  a                                           ; $51d0: $97
	ld   a, b                                        ; $51d1: $78
	adc  c                                           ; $51d2: $89
	adc  b                                           ; $51d3: $88
	sbc  c                                           ; $51d4: $99
	adc  c                                           ; $51d5: $89
	xor  d                                           ; $51d6: $aa
	sbc  d                                           ; $51d7: $9a
	xor  d                                           ; $51d8: $aa
	sbc  c                                           ; $51d9: $99
	sbc  c                                           ; $51da: $99
	sbc  b                                           ; $51db: $98
	sbc  c                                           ; $51dc: $99
	adc  c                                           ; $51dd: $89
	adc  b                                           ; $51de: $88
	sbc  c                                           ; $51df: $99
	adc  c                                           ; $51e0: $89
	ld   [hl], a                                     ; $51e1: $77
	ld   [hl], a                                     ; $51e2: $77
	ld   [hl], a                                     ; $51e3: $77
	ld   [hl], a                                     ; $51e4: $77
	add  a                                           ; $51e5: $87
	add  a                                           ; $51e6: $87
	ld   a, b                                        ; $51e7: $78
	add  a                                           ; $51e8: $87
	ld   [hl], a                                     ; $51e9: $77
	ld   [hl], a                                     ; $51ea: $77
	ld   [hl], a                                     ; $51eb: $77
	and  a                                           ; $51ec: $a7
	ld   h, a                                        ; $51ed: $67
	adc  c                                           ; $51ee: $89
	ld   [hl], a                                     ; $51ef: $77
	adc  b                                           ; $51f0: $88
	sub  [hl]                                        ; $51f1: $96
	ld   [hl], a                                     ; $51f2: $77
	adc  b                                           ; $51f3: $88
	adc  c                                           ; $51f4: $89
	adc  c                                           ; $51f5: $89
	ld   a, b                                        ; $51f6: $78
	sbc  c                                           ; $51f7: $99
	sbc  b                                           ; $51f8: $98
	sbc  b                                           ; $51f9: $98
	ld   a, b                                        ; $51fa: $78
	adc  c                                           ; $51fb: $89
	adc  c                                           ; $51fc: $89
	sbc  b                                           ; $51fd: $98
	sbc  b                                           ; $51fe: $98
	adc  c                                           ; $51ff: $89
	adc  c                                           ; $5200: $89
	ld   a, d                                        ; $5201: $7a
	sbc  c                                           ; $5202: $99
	ld   [hl], a                                     ; $5203: $77
	sbc  d                                           ; $5204: $9a
	xor  b                                           ; $5205: $a8
	adc  b                                           ; $5206: $88
	adc  b                                           ; $5207: $88
	ld   [hl], a                                     ; $5208: $77
	ld   a, b                                        ; $5209: $78
	ld   h, a                                        ; $520a: $67
	ld   [hl], a                                     ; $520b: $77
	adc  b                                           ; $520c: $88
	sbc  b                                           ; $520d: $98
	ld   [hl], a                                     ; $520e: $77
	ld   [hl], a                                     ; $520f: $77
	ld   [hl], a                                     ; $5210: $77
	ld   a, b                                        ; $5211: $78
	ld   [hl], a                                     ; $5212: $77
	ld   a, b                                        ; $5213: $78
	ld   a, b                                        ; $5214: $78
	sbc  b                                           ; $5215: $98
	adc  b                                           ; $5216: $88
	adc  b                                           ; $5217: $88
	ld   [hl], a                                     ; $5218: $77
	sbc  b                                           ; $5219: $98
	sbc  b                                           ; $521a: $98
	ld   a, c                                        ; $521b: $79
	sbc  b                                           ; $521c: $98
	sbc  c                                           ; $521d: $99
	adc  b                                           ; $521e: $88
	adc  c                                           ; $521f: $89
	ld   a, b                                        ; $5220: $78
	adc  b                                           ; $5221: $88
	sbc  c                                           ; $5222: $99
	adc  c                                           ; $5223: $89
	sbc  b                                           ; $5224: $98
	ld   [hl], a                                     ; $5225: $77
	add  a                                           ; $5226: $87
	adc  c                                           ; $5227: $89
	adc  b                                           ; $5228: $88
	adc  b                                           ; $5229: $88
	add  a                                           ; $522a: $87
	adc  b                                           ; $522b: $88
	adc  c                                           ; $522c: $89
	ld   a, b                                        ; $522d: $78
	adc  b                                           ; $522e: $88
	adc  b                                           ; $522f: $88
	add  a                                           ; $5230: $87
	add  a                                           ; $5231: $87
	adc  c                                           ; $5232: $89
	adc  b                                           ; $5233: $88
	ld   [hl], a                                     ; $5234: $77
	adc  b                                           ; $5235: $88
	ld   h, a                                        ; $5236: $67
	ld   [hl], a                                     ; $5237: $77
	add  a                                           ; $5238: $87
	sbc  b                                           ; $5239: $98
	sbc  b                                           ; $523a: $98
	ld   [hl], a                                     ; $523b: $77
	ld   [hl], a                                     ; $523c: $77
	ld   a, b                                        ; $523d: $78
	adc  b                                           ; $523e: $88
	adc  b                                           ; $523f: $88
	adc  c                                           ; $5240: $89
	add  a                                           ; $5241: $87
	ld   [hl], a                                     ; $5242: $77
	add  a                                           ; $5243: $87
	adc  c                                           ; $5244: $89
	xor  b                                           ; $5245: $a8
	adc  b                                           ; $5246: $88
	adc  b                                           ; $5247: $88
	ld   a, b                                        ; $5248: $78
	sbc  c                                           ; $5249: $99
	ld   a, c                                        ; $524a: $79
	sbc  c                                           ; $524b: $99
	sbc  b                                           ; $524c: $98
	ld   a, c                                        ; $524d: $79
	ld   a, b                                        ; $524e: $78
	adc  c                                           ; $524f: $89
	add  a                                           ; $5250: $87
	add  a                                           ; $5251: $87
	sbc  b                                           ; $5252: $98
	sub  a                                           ; $5253: $97
	adc  b                                           ; $5254: $88
	ld   a, b                                        ; $5255: $78
	ld   a, b                                        ; $5256: $78
	ld   a, b                                        ; $5257: $78
	add  a                                           ; $5258: $87
	add  a                                           ; $5259: $87
	adc  b                                           ; $525a: $88
	adc  b                                           ; $525b: $88
	ld   [hl], a                                     ; $525c: $77
	adc  b                                           ; $525d: $88
	ld   a, b                                        ; $525e: $78
	ld   [hl], a                                     ; $525f: $77
	sub  a                                           ; $5260: $97
	ld   a, c                                        ; $5261: $79
	sbc  c                                           ; $5262: $99
	ld   [hl], a                                     ; $5263: $77
	ld   a, b                                        ; $5264: $78
	sbc  b                                           ; $5265: $98
	adc  c                                           ; $5266: $89
	adc  b                                           ; $5267: $88
	add  a                                           ; $5268: $87
	ld   [hl], a                                     ; $5269: $77
	adc  c                                           ; $526a: $89
	adc  b                                           ; $526b: $88
	adc  b                                           ; $526c: $88
	adc  c                                           ; $526d: $89
	add  a                                           ; $526e: $87
	ld   [hl], a                                     ; $526f: $77
	adc  b                                           ; $5270: $88
	sbc  c                                           ; $5271: $99
	sub  a                                           ; $5272: $97
	sbc  b                                           ; $5273: $98
	ld   l, c                                        ; $5274: $69
	ld   a, b                                        ; $5275: $78
	adc  b                                           ; $5276: $88
	adc  b                                           ; $5277: $88
	adc  b                                           ; $5278: $88
	add  a                                           ; $5279: $87
	add  a                                           ; $527a: $87
	adc  b                                           ; $527b: $88
	ld   a, c                                        ; $527c: $79
	xor  c                                           ; $527d: $a9
	adc  c                                           ; $527e: $89
	ld   a, b                                        ; $527f: $78
	ld   [hl], a                                     ; $5280: $77
	sbc  b                                           ; $5281: $98
	adc  b                                           ; $5282: $88
	add  a                                           ; $5283: $87
	add  a                                           ; $5284: $87
	ld   a, b                                        ; $5285: $78
	adc  b                                           ; $5286: $88
	ld   a, b                                        ; $5287: $78
	adc  c                                           ; $5288: $89
	adc  b                                           ; $5289: $88
	add  a                                           ; $528a: $87
	add  a                                           ; $528b: $87
	ld   a, c                                        ; $528c: $79
	adc  b                                           ; $528d: $88
	sbc  b                                           ; $528e: $98
	add  [hl]                                        ; $528f: $86
	ld   a, b                                        ; $5290: $78
	sbc  b                                           ; $5291: $98
	sbc  c                                           ; $5292: $99
	sbc  c                                           ; $5293: $99
	ld   a, b                                        ; $5294: $78
	ld   a, b                                        ; $5295: $78
	adc  b                                           ; $5296: $88
	xor  b                                           ; $5297: $a8
	sbc  b                                           ; $5298: $98
	adc  b                                           ; $5299: $88
	adc  c                                           ; $529a: $89
	ld   h, a                                        ; $529b: $67
	adc  b                                           ; $529c: $88
	adc  b                                           ; $529d: $88
	adc  b                                           ; $529e: $88
	sub  a                                           ; $529f: $97
	add  a                                           ; $52a0: $87
	adc  b                                           ; $52a1: $88
	sub  a                                           ; $52a2: $97
	adc  b                                           ; $52a3: $88
	adc  b                                           ; $52a4: $88
	ld   l, b                                        ; $52a5: $68
	ld   a, c                                        ; $52a6: $79
	add  a                                           ; $52a7: $87
	sub  a                                           ; $52a8: $97
	xor  b                                           ; $52a9: $a8
	add  a                                           ; $52aa: $87
	add  a                                           ; $52ab: $87
	ld   a, b                                        ; $52ac: $78
	ld   a, c                                        ; $52ad: $79
	ld   a, c                                        ; $52ae: $79
	ld   [hl], a                                     ; $52af: $77
	ld   a, b                                        ; $52b0: $78
	ld   a, b                                        ; $52b1: $78
	sub  a                                           ; $52b2: $97
	sbc  b                                           ; $52b3: $98
	sub  a                                           ; $52b4: $97
	sub  a                                           ; $52b5: $97
	sbc  b                                           ; $52b6: $98
	ld   a, d                                        ; $52b7: $7a
	ld   a, b                                        ; $52b8: $78
	adc  c                                           ; $52b9: $89
	ld   [hl], a                                     ; $52ba: $77
	ld   a, b                                        ; $52bb: $78
	ld   [hl], a                                     ; $52bc: $77
	adc  b                                           ; $52bd: $88
	sbc  b                                           ; $52be: $98
	adc  c                                           ; $52bf: $89
	ld   a, c                                        ; $52c0: $79
	ld   a, b                                        ; $52c1: $78
	sub  a                                           ; $52c2: $97
	or   a                                           ; $52c3: $b7
	adc  c                                           ; $52c4: $89
	ld   a, c                                        ; $52c5: $79
	ld   l, b                                        ; $52c6: $68
	ld   a, b                                        ; $52c7: $78
	sub  a                                           ; $52c8: $97
	adc  b                                           ; $52c9: $88
	add  [hl]                                        ; $52ca: $86
	ld   a, b                                        ; $52cb: $78
	adc  b                                           ; $52cc: $88
	ld   a, c                                        ; $52cd: $79
	sbc  b                                           ; $52ce: $98
	ld   a, b                                        ; $52cf: $78
	ld   [hl], a                                     ; $52d0: $77
	adc  b                                           ; $52d1: $88
	adc  b                                           ; $52d2: $88
	adc  b                                           ; $52d3: $88
	adc  b                                           ; $52d4: $88
	add  a                                           ; $52d5: $87
	ld   a, c                                        ; $52d6: $79
	ld   a, c                                        ; $52d7: $79
	adc  c                                           ; $52d8: $89
	adc  b                                           ; $52d9: $88
	add  a                                           ; $52da: $87
	add  a                                           ; $52db: $87
	add  a                                           ; $52dc: $87
	adc  c                                           ; $52dd: $89
	adc  c                                           ; $52de: $89
	add  [hl]                                        ; $52df: $86
	adc  b                                           ; $52e0: $88
	ld   a, c                                        ; $52e1: $79
	ld   a, c                                        ; $52e2: $79
	sub  a                                           ; $52e3: $97
	adc  b                                           ; $52e4: $88
	add  [hl]                                        ; $52e5: $86
	sub  a                                           ; $52e6: $97
	sub  a                                           ; $52e7: $97
	ld   a, c                                        ; $52e8: $79
	adc  c                                           ; $52e9: $89
	sbc  c                                           ; $52ea: $99
	ld   a, b                                        ; $52eb: $78
	add  a                                           ; $52ec: $87
	ld   [hl], a                                     ; $52ed: $77
	sbc  b                                           ; $52ee: $98
	ld   a, b                                        ; $52ef: $78
	add  a                                           ; $52f0: $87
	ld   a, b                                        ; $52f1: $78
	add  a                                           ; $52f2: $87
	sbc  c                                           ; $52f3: $99
	add  a                                           ; $52f4: $87
	sub  [hl]                                        ; $52f5: $96
	ld   [hl], a                                     ; $52f6: $77
	adc  c                                           ; $52f7: $89
	ld   l, c                                        ; $52f8: $69
	ld   a, d                                        ; $52f9: $7a
	ld   a, b                                        ; $52fa: $78
	halt                                             ; $52fb: $76
	sub  l                                           ; $52fc: $95
	or   a                                           ; $52fd: $b7
	adc  c                                           ; $52fe: $89
	adc  c                                           ; $52ff: $89
	ld   [hl], a                                     ; $5300: $77
	and  a                                           ; $5301: $a7
	ld   a, c                                        ; $5302: $79
	ld   a, d                                        ; $5303: $7a
	ld   l, c                                        ; $5304: $69
	sub  a                                           ; $5305: $97
	sub  a                                           ; $5306: $97
	and  [hl]                                        ; $5307: $a6
	sbc  b                                           ; $5308: $98
	adc  e                                           ; $5309: $8b
	adc  b                                           ; $530a: $88
	ld   [hl], a                                     ; $530b: $77
	sbc  b                                           ; $530c: $98
	ld   [hl], a                                     ; $530d: $77
	adc  c                                           ; $530e: $89
	adc  c                                           ; $530f: $89
	add  a                                           ; $5310: $87
	add  a                                           ; $5311: $87
	ld   [hl], a                                     ; $5312: $77
	ld   a, c                                        ; $5313: $79
	ld   a, c                                        ; $5314: $79
	ld   a, b                                        ; $5315: $78
	ld   [hl], a                                     ; $5316: $77
	ld   [hl], a                                     ; $5317: $77
	add  a                                           ; $5318: $87
	sbc  b                                           ; $5319: $98
	ld   a, c                                        ; $531a: $79
	add  [hl]                                        ; $531b: $86
	sub  a                                           ; $531c: $97
	ld   a, b                                        ; $531d: $78
	sbc  b                                           ; $531e: $98
	sbc  d                                           ; $531f: $9a
	ld   e, d                                        ; $5320: $5a
	ld   l, d                                        ; $5321: $6a
	sbc  b                                           ; $5322: $98
	sbc  b                                           ; $5323: $98
	and  a                                           ; $5324: $a7
	xor  c                                           ; $5325: $a9
	xor  b                                           ; $5326: $a8
	sbc  b                                           ; $5327: $98
	xor  d                                           ; $5328: $aa
	adc  c                                           ; $5329: $89
	ld   a, d                                        ; $532a: $7a
	adc  d                                           ; $532b: $8a
	add  a                                           ; $532c: $87
	ld   [hl], a                                     ; $532d: $77
	adc  b                                           ; $532e: $88
	add  a                                           ; $532f: $87
	and  [hl]                                        ; $5330: $a6
	sub  [hl]                                        ; $5331: $96
	ld   a, b                                        ; $5332: $78
	ld   h, [hl]                                     ; $5333: $66
	ld   a, b                                        ; $5334: $78
	adc  c                                           ; $5335: $89
	ld   a, b                                        ; $5336: $78
	ld   l, b                                        ; $5337: $68
	ld   h, a                                        ; $5338: $67
	ld   [hl], a                                     ; $5339: $77
	sub  l                                           ; $533a: $95
	and  a                                           ; $533b: $a7
	adc  b                                           ; $533c: $88
	ld   a, c                                        ; $533d: $79
	adc  c                                           ; $533e: $89
	adc  d                                           ; $533f: $8a
	sbc  b                                           ; $5340: $98
	sbc  c                                           ; $5341: $99
	ld   a, d                                        ; $5342: $7a
	sbc  d                                           ; $5343: $9a
	xor  b                                           ; $5344: $a8
	sbc  c                                           ; $5345: $99
	sbc  d                                           ; $5346: $9a
	sbc  d                                           ; $5347: $9a
	sbc  b                                           ; $5348: $98
	add  a                                           ; $5349: $87
	sub  a                                           ; $534a: $97
	adc  c                                           ; $534b: $89
	ld   l, b                                        ; $534c: $68
	adc  b                                           ; $534d: $88
	ld   h, a                                        ; $534e: $67
	ld   l, b                                        ; $534f: $68
	ld   [hl], a                                     ; $5350: $77
	sub  [hl]                                        ; $5351: $96
	ld   h, a                                        ; $5352: $67
	ld   l, b                                        ; $5353: $68
	ld   h, [hl]                                     ; $5354: $66
	ld   [hl], l                                     ; $5355: $75
	add  a                                           ; $5356: $87
	ld   [hl], a                                     ; $5357: $77
	ld   [hl], a                                     ; $5358: $77
	add  a                                           ; $5359: $87
	sbc  c                                           ; $535a: $99
	sbc  c                                           ; $535b: $99
	adc  c                                           ; $535c: $89
	adc  e                                           ; $535d: $8b
	sbc  c                                           ; $535e: $99
	xor  b                                           ; $535f: $a8
	xor  b                                           ; $5360: $a8
	sbc  b                                           ; $5361: $98
	sbc  d                                           ; $5362: $9a
	adc  d                                           ; $5363: $8a
	xor  c                                           ; $5364: $a9
	adc  c                                           ; $5365: $89
	ld   a, b                                        ; $5366: $78
	ld   [hl], a                                     ; $5367: $77
	sub  [hl]                                        ; $5368: $96
	add  a                                           ; $5369: $87
	ld   a, b                                        ; $536a: $78
	add  [hl]                                        ; $536b: $86
	ld   d, [hl]                                     ; $536c: $56
	ld   h, [hl]                                     ; $536d: $66
	ld   h, a                                        ; $536e: $67
	ld   d, a                                        ; $536f: $57
	add  l                                           ; $5370: $85
	add  l                                           ; $5371: $85
	ld   h, a                                        ; $5372: $67
	ld   l, b                                        ; $5373: $68
	ld   l, b                                        ; $5374: $68
	adc  b                                           ; $5375: $88
	sbc  c                                           ; $5376: $99

Jump_0f9_5377:
	sbc  c                                           ; $5377: $99
	sbc  c                                           ; $5378: $99
	xor  d                                           ; $5379: $aa
	sbc  d                                           ; $537a: $9a
	sbc  e                                           ; $537b: $9b
	xor  d                                           ; $537c: $aa
	sbc  c                                           ; $537d: $99
	xor  c                                           ; $537e: $a9
	xor  c                                           ; $537f: $a9
	adc  b                                           ; $5380: $88
	ld   a, b                                        ; $5381: $78
	sbc  b                                           ; $5382: $98
	ld   a, b                                        ; $5383: $78
	ld   [hl], a                                     ; $5384: $77
	halt                                             ; $5385: $76
	ld   [hl], l                                     ; $5386: $75
	ld   h, [hl]                                     ; $5387: $66
	ld   h, a                                        ; $5388: $67
	ld   h, l                                        ; $5389: $65
	ld   d, [hl]                                     ; $538a: $56
	ld   h, a                                        ; $538b: $67
	ld   h, [hl]                                     ; $538c: $66
	ld   h, a                                        ; $538d: $67
	ld   [hl], a                                     ; $538e: $77
	adc  c                                           ; $538f: $89
	sbc  c                                           ; $5390: $99
	xor  d                                           ; $5391: $aa
	xor  c                                           ; $5392: $a9
	xor  e                                           ; $5393: $ab
	xor  d                                           ; $5394: $aa
	sbc  e                                           ; $5395: $9b
	cp   c                                           ; $5396: $b9
	xor  d                                           ; $5397: $aa
	xor  d                                           ; $5398: $aa
	sbc  c                                           ; $5399: $99
	sbc  b                                           ; $539a: $98
	adc  b                                           ; $539b: $88
	sbc  b                                           ; $539c: $98
	ld   a, b                                        ; $539d: $78
	ld   h, a                                        ; $539e: $67
	ld   h, [hl]                                     ; $539f: $66
	ld   h, l                                        ; $53a0: $65
	ld   d, h                                        ; $53a1: $54
	ld   h, l                                        ; $53a2: $65
	ld   h, l                                        ; $53a3: $65
	ld   b, [hl]                                     ; $53a4: $46
	ld   d, [hl]                                     ; $53a5: $56
	ld   h, [hl]                                     ; $53a6: $66
	ld   a, b                                        ; $53a7: $78
	ld   a, c                                        ; $53a8: $79
	sbc  c                                           ; $53a9: $99
	xor  c                                           ; $53aa: $a9
	xor  d                                           ; $53ab: $aa
	xor  e                                           ; $53ac: $ab
	xor  h                                           ; $53ad: $ac
	xor  c                                           ; $53ae: $a9
	res  5, e                                        ; $53af: $cb $ab
	xor  d                                           ; $53b1: $aa
	sbc  c                                           ; $53b2: $99
	sbc  b                                           ; $53b3: $98
	sub  a                                           ; $53b4: $97
	ld   [hl], a                                     ; $53b5: $77
	ld   [hl], a                                     ; $53b6: $77
	ld   h, [hl]                                     ; $53b7: $66
	ld   d, [hl]                                     ; $53b8: $56
	ld   b, l                                        ; $53b9: $45
	ld   b, h                                        ; $53ba: $44
	ld   d, h                                        ; $53bb: $54
	ld   d, l                                        ; $53bc: $55
	ld   d, l                                        ; $53bd: $55
	ld   d, a                                        ; $53be: $57
	ld   a, b                                        ; $53bf: $78
	sbc  b                                           ; $53c0: $98
	xor  c                                           ; $53c1: $a9
	xor  d                                           ; $53c2: $aa
	cp   e                                           ; $53c3: $bb
	cp   e                                           ; $53c4: $bb
	xor  h                                           ; $53c5: $ac
	cp   e                                           ; $53c6: $bb
	cp   e                                           ; $53c7: $bb
	cp   d                                           ; $53c8: $ba
	xor  c                                           ; $53c9: $a9
	xor  c                                           ; $53ca: $a9
	sbc  b                                           ; $53cb: $98
	adc  b                                           ; $53cc: $88
	ld   d, a                                        ; $53cd: $57
	ld   d, l                                        ; $53ce: $55
	ld   h, h                                        ; $53cf: $64
	inc  [hl]                                        ; $53d0: $34
	ld   b, h                                        ; $53d1: $44
	ld   b, h                                        ; $53d2: $44
	ld   b, h                                        ; $53d3: $44
	ld   b, l                                        ; $53d4: $45
	halt                                             ; $53d5: $76
	adc  b                                           ; $53d6: $88
	adc  d                                           ; $53d7: $8a
	cp   e                                           ; $53d8: $bb
	xor  h                                           ; $53d9: $ac
	cp   e                                           ; $53da: $bb
	cp   h                                           ; $53db: $bc
	db   $dd                                         ; $53dc: $dd
	cp   h                                           ; $53dd: $bc
	cp   d                                           ; $53de: $ba
	cp   e                                           ; $53df: $bb
	xor  c                                           ; $53e0: $a9
	xor  b                                           ; $53e1: $a8
	ld   a, c                                        ; $53e2: $79
	ld   h, [hl]                                     ; $53e3: $66
	ld   h, h                                        ; $53e4: $64
	ld   b, e                                        ; $53e5: $43
	inc  [hl]                                        ; $53e6: $34
	inc  hl                                          ; $53e7: $23
	ld   b, e                                        ; $53e8: $43
	inc  sp                                          ; $53e9: $33
	ld   b, [hl]                                     ; $53ea: $46
	ld   h, a                                        ; $53eb: $67
	adc  c                                           ; $53ec: $89
	sbc  d                                           ; $53ed: $9a
	set  3, h                                        ; $53ee: $cb $dc
	call c, $dddc                                    ; $53f0: $dc $dc $dd
	cp   l                                           ; $53f3: $bd
	xor  e                                           ; $53f4: $ab
	xor  e                                           ; $53f5: $ab
	xor  b                                           ; $53f6: $a8
	sub  a                                           ; $53f7: $97
	ld   h, [hl]                                     ; $53f8: $66
	ld   h, h                                        ; $53f9: $64
	ld   sp, $3322                                   ; $53fa: $31 $22 $33
	ld   [hl+], a                                    ; $53fd: $22
	inc  hl                                          ; $53fe: $23
	ld   b, [hl]                                     ; $53ff: $46
	ld   l, b                                        ; $5400: $68
	ld   a, c                                        ; $5401: $79
	xor  e                                           ; $5402: $ab
	db   $db                                         ; $5403: $db
	db   $db                                         ; $5404: $db
	db   $dd                                         ; $5405: $dd
	xor  $cc                                         ; $5406: $ee $cc
	call $badb                                       ; $5408: $cd $db $ba
	sbc  b                                           ; $540b: $98
	ld   h, a                                        ; $540c: $67
	ld   h, l                                        ; $540d: $65
	ld   sp, $2122                                   ; $540e: $31 $22 $21

Call_0f9_5411:
	ld   de, $4622                                   ; $5411: $11 $22 $46
	ld   h, a                                        ; $5414: $67
	ld   a, e                                        ; $5415: $7b
	cp   [hl]                                        ; $5416: $be
	call $eccd                                       ; $5417: $cd $cd $ec
	xor  $de                                         ; $541a: $ee $de
	call c, $a9dc                                    ; $541c: $dc $dc $a9
	halt                                             ; $541f: $76
	ld   h, l                                        ; $5420: $65
	ld   [hl-], a                                    ; $5421: $32
	inc  de                                          ; $5422: $13
	ld   de, $1111                                   ; $5423: $11 $11 $11
	ld   [hl], $67                                   ; $5426: $36 $67
	adc  c                                           ; $5428: $89
	adc  $ed                                         ; $5429: $ce $ed
	db   $ec                                         ; $542b: $ec
	xor  $ee                                         ; $542c: $ee $ee
	db   $dd                                         ; $542e: $dd
	call $b7da                                       ; $542f: $cd $da $b7
	halt                                             ; $5432: $76
	inc  sp                                          ; $5433: $33
	inc  de                                          ; $5434: $13
	ld   hl, $1111                                   ; $5435: $21 $11 $11
	ld   [hl+], a                                    ; $5438: $22
	ld   h, [hl]                                     ; $5439: $66
	ld   l, c                                        ; $543a: $69
	sbc  l                                           ; $543b: $9d
	rst  $28                                         ; $543c: $ef
	cp   $ee                                         ; $543d: $fe $ee
	rst  JumpTable                                         ; $543f: $df
	db   $fd                                         ; $5440: $fd
	db   $ed                                         ; $5441: $ed
	db   $ec                                         ; $5442: $ec
	and  a                                           ; $5443: $a7
	ld   d, l                                        ; $5444: $55
	ld   b, d                                        ; $5445: $42
	ld   [de], a                                     ; $5446: $12
	ld   sp, $1111                                   ; $5447: $31 $11 $11
	inc  d                                           ; $544a: $14
	ld   h, a                                        ; $544b: $67
	ld   a, c                                        ; $544c: $79
	adc  $ff                                         ; $544d: $ce $ff
	cp   $ee                                         ; $544f: $fe $ee
	rst  JumpTable                                         ; $5451: $df
	rst  JumpTable                                         ; $5452: $df
	db   $ed                                         ; $5453: $ed
	cp   c                                           ; $5454: $b9
	add  e                                           ; $5455: $83
	ld   b, d                                        ; $5456: $42
	ld   de, $1124                                   ; $5457: $11 $24 $11
	ld   de, $7711                                   ; $545a: $11 $11 $77
	add  a                                           ; $545d: $87
	xor  l                                           ; $545e: $ad
	rst  $38                                         ; $545f: $ff
	rst  $38                                         ; $5460: $ff
	rst  $28                                         ; $5461: $ef
	rst  $28                                         ; $5462: $ef
	db   $fd                                         ; $5463: $fd
	db   $eb                                         ; $5464: $eb
	xor  c                                           ; $5465: $a9
	ld   h, l                                        ; $5466: $65
	ld   de, $3211                                   ; $5467: $11 $11 $32
	ld   de, $1311                                   ; $546a: $11 $11 $13
	ld   a, c                                        ; $546d: $79
	adc  c                                           ; $546e: $89
	xor  a                                           ; $546f: $af
	rst  $38                                         ; $5470: $ff
	rst  $38                                         ; $5471: $ff
	rst  $38                                         ; $5472: $ff
	rst  $38                                         ; $5473: $ff
	db   $fd                                         ; $5474: $fd
	ld   [$52a7], a                                  ; $5475: $ea $a7 $52
	ld   de, $1111                                   ; $5478: $11 $11 $11
	ld   de, $1411                                   ; $547b: $11 $11 $14
	xor  c                                           ; $547e: $a9
	adc  e                                           ; $547f: $8b
	rst  $28                                         ; $5480: $ef
	rst  $38                                         ; $5481: $ff
	rst  $38                                         ; $5482: $ff
	rst  $38                                         ; $5483: $ff
	rst  $38                                         ; $5484: $ff
	rst  $28                                         ; $5485: $ef
	cp   d                                           ; $5486: $ba
	ld   [hl], l                                     ; $5487: $75
	ld   hl, $1111                                   ; $5488: $21 $11 $11
	ld   de, $1111                                   ; $548b: $11 $11 $11
	ld   a, [hl-]                                    ; $548e: $3a
	xor  e                                           ; $548f: $ab
	cp   a                                           ; $5490: $bf
	rst  $38                                         ; $5491: $ff
	rst  $38                                         ; $5492: $ff
	rst  $38                                         ; $5493: $ff
	rst  $38                                         ; $5494: $ff

Jump_0f9_5495:
	rst  $38                                         ; $5495: $ff
	jp   hl                                          ; $5496: $e9


	sub  [hl]                                        ; $5497: $96
	ld   b, c                                        ; $5498: $41
	ld   de, $1111                                   ; $5499: $11 $11 $11
	ld   de, $1611                                   ; $549c: $11 $11 $16
	cp   d                                           ; $549f: $ba
	call $ffff                                       ; $54a0: $cd $ff $ff
	rst  $38                                         ; $54a3: $ff
	rst  $38                                         ; $54a4: $ff
	rst  $38                                         ; $54a5: $ff
	db   $fc                                         ; $54a6: $fc

Jump_0f9_54a7:
	add  a                                           ; $54a7: $87
	inc  sp                                          ; $54a8: $33
	ld   de, $1111                                   ; $54a9: $11 $11 $11
	ld   de, $1311                                   ; $54ac: $11 $11 $13
	cp   h                                           ; $54af: $bc
	rst  JumpTable                                         ; $54b0: $df
	rst  $38                                         ; $54b1: $ff
	rst  $38                                         ; $54b2: $ff
	rst  $38                                         ; $54b3: $ff
	rst  $38                                         ; $54b4: $ff
	rst  $38                                         ; $54b5: $ff
	cp   $87                                         ; $54b6: $fe $87
	ld   hl, $1111                                   ; $54b8: $21 $11 $11
	ld   de, $1111                                   ; $54bb: $11 $11 $11
	ld   [de], a                                     ; $54be: $12
	xor  h                                           ; $54bf: $ac
	rst  $38                                         ; $54c0: $ff
	rst  $38                                         ; $54c1: $ff
	rst  $38                                         ; $54c2: $ff
	rst  $38                                         ; $54c3: $ff
	rst  $38                                         ; $54c4: $ff
	rst  $38                                         ; $54c5: $ff
	db   $fd                                         ; $54c6: $fd
	add  [hl]                                        ; $54c7: $86
	ld   de, $1111                                   ; $54c8: $11 $11 $11
	ld   de, $1111                                   ; $54cb: $11 $11 $11
	inc  de                                          ; $54ce: $13
	adc  $ff                                         ; $54cf: $ce $ff
	rst  $38                                         ; $54d1: $ff
	rst  $38                                         ; $54d2: $ff
	rst  $38                                         ; $54d3: $ff
	rst  $38                                         ; $54d4: $ff
	rst  $38                                         ; $54d5: $ff
	db   $fc                                         ; $54d6: $fc
	add  e                                           ; $54d7: $83
	ld   de, $1111                                   ; $54d8: $11 $11 $11
	ld   de, $1111                                   ; $54db: $11 $11 $11
	dec  d                                           ; $54de: $15
	rst  $28                                         ; $54df: $ef
	rst  $38                                         ; $54e0: $ff
	rst  $38                                         ; $54e1: $ff
	rst  $38                                         ; $54e2: $ff
	rst  $38                                         ; $54e3: $ff
	rst  $38                                         ; $54e4: $ff
	rst  $38                                         ; $54e5: $ff
	bit  2, c                                        ; $54e6: $cb $51
	ld   de, $1111                                   ; $54e8: $11 $11 $11
	ld   de, $1111                                   ; $54eb: $11 $11 $11
	dec  sp                                          ; $54ee: $3b
	rst  $38                                         ; $54ef: $ff
	rst  $38                                         ; $54f0: $ff
	rst  $38                                         ; $54f1: $ff
	rst  $38                                         ; $54f2: $ff
	rst  $38                                         ; $54f3: $ff
	rst  $38                                         ; $54f4: $ff
	db   $fd                                         ; $54f5: $fd
	and  a                                           ; $54f6: $a7
	ld   de, $1111                                   ; $54f7: $11 $11 $11
	ld   de, $1111                                   ; $54fa: $11 $11 $11
	inc  d                                           ; $54fd: $14
	xor  a                                           ; $54fe: $af
	rst  $38                                         ; $54ff: $ff
	rst  $38                                         ; $5500: $ff
	rst  $38                                         ; $5501: $ff
	rst  $38                                         ; $5502: $ff
	rst  $38                                         ; $5503: $ff
	rst  $38                                         ; $5504: $ff
	jp   c, $1161                                    ; $5505: $da $61 $11

	ld   de, $1111                                   ; $5508: $11 $11 $11
	ld   de, $6c11                                   ; $550b: $11 $11 $6c
	rst  $38                                         ; $550e: $ff
	rst  $38                                         ; $550f: $ff
	rst  $38                                         ; $5510: $ff
	rst  $38                                         ; $5511: $ff
	rst  $38                                         ; $5512: $ff
	rst  $38                                         ; $5513: $ff
	db   $fc                                         ; $5514: $fc
	sub  e                                           ; $5515: $93
	ld   de, $1111                                   ; $5516: $11 $11 $11
	ld   de, $1111                                   ; $5519: $11 $11 $11
	ld   c, e                                        ; $551c: $4b
	rst  $38                                         ; $551d: $ff
	rst  $38                                         ; $551e: $ff
	rst  $38                                         ; $551f: $ff
	rst  $38                                         ; $5520: $ff
	rst  $38                                         ; $5521: $ff
	rst  $38                                         ; $5522: $ff
	db   $fd                                         ; $5523: $fd
	sub  h                                           ; $5524: $94
	ld   de, $1111                                   ; $5525: $11 $11 $11
	ld   de, $1111                                   ; $5528: $11 $11 $11
	ld   c, e                                        ; $552b: $4b
	rst  $38                                         ; $552c: $ff
	rst  $38                                         ; $552d: $ff
	rst  $38                                         ; $552e: $ff
	rst  $38                                         ; $552f: $ff
	rst  $38                                         ; $5530: $ff
	rst  $38                                         ; $5531: $ff
	db   $fc                                         ; $5532: $fc
	ld   [hl], e                                     ; $5533: $73
	ld   de, $1111                                   ; $5534: $11 $11 $11
	ld   de, $1111                                   ; $5537: $11 $11 $11
	ld   e, [hl]                                     ; $553a: $5e
	rst  $38                                         ; $553b: $ff
	rst  $38                                         ; $553c: $ff
	rst  $38                                         ; $553d: $ff
	rst  $38                                         ; $553e: $ff
	rst  $38                                         ; $553f: $ff
	rst  $38                                         ; $5540: $ff
	ld   a, [$1151]                                  ; $5541: $fa $51 $11
	ld   de, $1111                                   ; $5544: $11 $11 $11
	ld   de, $af13                                   ; $5547: $11 $13 $af
	rst  $38                                         ; $554a: $ff
	rst  $38                                         ; $554b: $ff
	rst  $38                                         ; $554c: $ff
	rst  $38                                         ; $554d: $ff
	rst  $38                                         ; $554e: $ff
	rst  $38                                         ; $554f: $ff
	or   [hl]                                        ; $5550: $b6
	ld   de, $1111                                   ; $5551: $11 $11 $11
	ld   de, $1111                                   ; $5554: $11 $11 $11
	ld   a, [hl-]                                    ; $5557: $3a
	rst  $38                                         ; $5558: $ff
	rst  $38                                         ; $5559: $ff
	rst  $38                                         ; $555a: $ff
	rst  $38                                         ; $555b: $ff
	rst  $38                                         ; $555c: $ff
	rst  $38                                         ; $555d: $ff
	db   $fc                                         ; $555e: $fc
	ld   d, c                                        ; $555f: $51
	ld   de, $1111                                   ; $5560: $11 $11 $11
	ld   de, $1411                                   ; $5563: $11 $11 $14
	cp   a                                           ; $5566: $bf
	rst  $38                                         ; $5567: $ff
	rst  $38                                         ; $5568: $ff
	rst  $38                                         ; $5569: $ff
	rst  $38                                         ; $556a: $ff
	rst  $38                                         ; $556b: $ff
	rst  $38                                         ; $556c: $ff
	or   l                                           ; $556d: $b5
	ld   de, $1111                                   ; $556e: $11 $11 $11
	ld   de, $1111                                   ; $5571: $11 $11 $11
	ld   l, h                                        ; $5574: $6c
	rst  $38                                         ; $5575: $ff
	rst  $38                                         ; $5576: $ff
	rst  $38                                         ; $5577: $ff
	rst  $38                                         ; $5578: $ff
	rst  $38                                         ; $5579: $ff
	rst  $38                                         ; $557a: $ff
	rst  $30                                         ; $557b: $f7
	ld   sp, $1111                                   ; $557c: $31 $11 $11
	ld   de, $1111                                   ; $557f: $11 $11 $11
	dec  hl                                          ; $5582: $2b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5583: $cf
	rst  $38                                         ; $5584: $ff
	rst  $38                                         ; $5585: $ff
	rst  $38                                         ; $5586: $ff
	rst  $38                                         ; $5587: $ff
	rst  $38                                         ; $5588: $ff
	ei                                               ; $5589: $fb
	ld   b, c                                        ; $558a: $41
	ld   de, $1111                                   ; $558b: $11 $11 $11
	ld   de, $1a11                                   ; $558e: $11 $11 $1a
	cp   a                                           ; $5591: $bf
	rst  $38                                         ; $5592: $ff
	rst  $38                                         ; $5593: $ff
	rst  $38                                         ; $5594: $ff
	rst  $38                                         ; $5595: $ff
	rst  $38                                         ; $5596: $ff
	cp   $61                                         ; $5597: $fe $61
	ld   de, $1111                                   ; $5599: $11 $11 $11
	ld   de, $1711                                   ; $559c: $11 $11 $17
	sbc  l                                           ; $559f: $9d
	rst  $38                                         ; $55a0: $ff
	rst  $38                                         ; $55a1: $ff
	rst  $38                                         ; $55a2: $ff
	rst  $38                                         ; $55a3: $ff
	rst  $38                                         ; $55a4: $ff
	cp   $82                                         ; $55a5: $fe $82
	ld   de, $1111                                   ; $55a7: $11 $11 $11

Call_0f9_55aa:
	ld   de, $1511                                   ; $55aa: $11 $11 $15
	adc  h                                           ; $55ad: $8c
	rst  $38                                         ; $55ae: $ff
	rst  $38                                         ; $55af: $ff
	rst  $38                                         ; $55b0: $ff
	rst  $38                                         ; $55b1: $ff
	rst  $38                                         ; $55b2: $ff
	rst  $38                                         ; $55b3: $ff
	or   d                                           ; $55b4: $b2
	ld   de, $1111                                   ; $55b5: $11 $11 $11
	ld   de, $1411                                   ; $55b8: $11 $11 $14
	adc  e                                           ; $55bb: $8b
	rst  $38                                         ; $55bc: $ff
	rst  $38                                         ; $55bd: $ff
	rst  $38                                         ; $55be: $ff
	rst  $38                                         ; $55bf: $ff
	rst  $38                                         ; $55c0: $ff
	rst  $38                                         ; $55c1: $ff
	or   e                                           ; $55c2: $b3
	ld   de, $1111                                   ; $55c3: $11 $11 $11
	ld   de, $1411                                   ; $55c6: $11 $11 $14
	ld   a, d                                        ; $55c9: $7a
	rst  $28                                         ; $55ca: $ef
	rst  $38                                         ; $55cb: $ff
	rst  $38                                         ; $55cc: $ff
	rst  $38                                         ; $55cd: $ff
	rst  $38                                         ; $55ce: $ff
	rst  $38                                         ; $55cf: $ff
	or   h                                           ; $55d0: $b4
	ld   de, $1111                                   ; $55d1: $11 $11 $11
	ld   de, $1411                                   ; $55d4: $11 $11 $14
	ld   a, d                                        ; $55d7: $7a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55d8: $cf
	rst  $38                                         ; $55d9: $ff
	rst  $38                                         ; $55da: $ff
	rst  $38                                         ; $55db: $ff
	rst  $38                                         ; $55dc: $ff
	rst  $38                                         ; $55dd: $ff
	call nz, $1111                                   ; $55de: $c4 $11 $11
	ld   de, $1111                                   ; $55e1: $11 $11 $11
	inc  de                                          ; $55e4: $13
	ld   a, b                                        ; $55e5: $78
	xor  a                                           ; $55e6: $af
	rst  $38                                         ; $55e7: $ff
	rst  $38                                         ; $55e8: $ff
	rst  $38                                         ; $55e9: $ff
	rst  $38                                         ; $55ea: $ff
	rst  $38                                         ; $55eb: $ff
	or   h                                           ; $55ec: $b4
	ld   de, $1111                                   ; $55ed: $11 $11 $11
	ld   de, $1411                                   ; $55f0: $11 $11 $14
	ld   h, [hl]                                     ; $55f3: $66
	xor  a                                           ; $55f4: $af
	rst  $38                                         ; $55f5: $ff
	rst  $38                                         ; $55f6: $ff
	rst  $38                                         ; $55f7: $ff
	rst  $38                                         ; $55f8: $ff
	rst  $38                                         ; $55f9: $ff
	or   e                                           ; $55fa: $b3
	ld   de, $1101                                   ; $55fb: $11 $01 $11
	ld   de, $1611                                   ; $55fe: $11 $11 $16
	ld   h, [hl]                                     ; $5601: $66
	xor  a                                           ; $5602: $af
	rst  $38                                         ; $5603: $ff
	rst  $38                                         ; $5604: $ff
	rst  $38                                         ; $5605: $ff
	rst  $38                                         ; $5606: $ff
	rst  $38                                         ; $5607: $ff
	and  e                                           ; $5608: $a3
	ld   de, $1111                                   ; $5609: $11 $11 $11
	ld   de, $1611                                   ; $560c: $11 $11 $16
	ld   h, a                                        ; $560f: $67
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5610: $cf
	rst  $38                                         ; $5611: $ff
	rst  $38                                         ; $5612: $ff
	rst  $38                                         ; $5613: $ff
	rst  $38                                         ; $5614: $ff
	cp   $82                                         ; $5615: $fe $82
	ld   de, $1141                                   ; $5617: $11 $41 $11
	ld   de, $4611                                   ; $561a: $11 $11 $46
	ld   c, c                                        ; $561d: $49
	rst  $28                                         ; $561e: $ef
	rst  $38                                         ; $561f: $ff
	rst  $38                                         ; $5620: $ff
	rst  $38                                         ; $5621: $ff
	rst  $38                                         ; $5622: $ff
	ld   a, [$1441]                                  ; $5623: $fa $41 $14
	ld   hl, $1111                                   ; $5626: $21 $11 $11
	ld   de, $5b65                                   ; $5629: $11 $65 $5b
	rst  $38                                         ; $562c: $ff
	rst  $38                                         ; $562d: $ff
	rst  $38                                         ; $562e: $ff
	rst  $38                                         ; $562f: $ff
	rst  $38                                         ; $5630: $ff
	rst  $10                                         ; $5631: $d7
	ld   sp, $1135                                   ; $5632: $31 $35 $11
	ld   de, $1411                                   ; $5635: $11 $11 $14
	ld   h, h                                        ; $5638: $64
	adc  [hl]                                        ; $5639: $8e
	rst  $28                                         ; $563a: $ef
	rst  $38                                         ; $563b: $ff
	rst  $38                                         ; $563c: $ff
	rst  $38                                         ; $563d: $ff
	rst  $38                                         ; $563e: $ff
	and  h                                           ; $563f: $a4
	ld   [de], a                                     ; $5640: $12
	ld   h, c                                        ; $5641: $61
	ld   de, $1111                                   ; $5642: $11 $11 $11
	ld   [hl], $36                                   ; $5645: $36 $36
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5647: $cf
	rst  $38                                         ; $5648: $ff
	rst  $38                                         ; $5649: $ff
	rst  $38                                         ; $564a: $ff
	rst  $38                                         ; $564b: $ff
	ei                                               ; $564c: $fb
	ld   d, c                                        ; $564d: $51
	rla                                              ; $564e: $17
	ld   hl, $1111                                   ; $564f: $21 $11 $11
	ld   [de], a                                     ; $5652: $12
	ld   h, e                                        ; $5653: $63
	ld   e, h                                        ; $5654: $5c
	rst  $28                                         ; $5655: $ef
	rst  $38                                         ; $5656: $ff
	rst  $38                                         ; $5657: $ff
	rst  $38                                         ; $5658: $ff
	rst  $38                                         ; $5659: $ff
	push bc                                          ; $565a: $c5
	ld   de, $1182                                   ; $565b: $11 $82 $11
	ld   de, $2611                                   ; $565e: $11 $11 $26
	ld   b, [hl]                                     ; $5661: $46
	cp   [hl]                                        ; $5662: $be
	xor  $ff                                         ; $5663: $ee $ff
	rst  $38                                         ; $5665: $ff
	rst  $38                                         ; $5666: $ff
	db   $eb                                         ; $5667: $eb
	ld   h, c                                        ; $5668: $61
	jr   jr_0f9_567c                                 ; $5669: $18 $11

	ld   de, $1311                                   ; $566b: $11 $11 $13
	ld   [hl], e                                     ; $566e: $73
	ld   l, h                                        ; $566f: $6c
	xor  $ef                                         ; $5670: $ee $ef
	rst  $38                                         ; $5672: $ff
	rst  $38                                         ; $5673: $ff
	db   $fd                                         ; $5674: $fd
	and  l                                           ; $5675: $a5
	ld   [de], a                                     ; $5676: $12
	ld   [hl], c                                     ; $5677: $71
	ld   de, $1111                                   ; $5678: $11 $11 $11
	ld   d, [hl]                                     ; $567b: $56

jr_0f9_567c:
	ld   c, c                                        ; $567c: $49
	rst  JumpTable                                         ; $567d: $df
	rst  $38                                         ; $567e: $ff
	rst  $38                                         ; $567f: $ff
	rst  $38                                         ; $5680: $ff
	rst  $38                                         ; $5681: $ff
	ret                                              ; $5682: $c9


	ld   hl, $1145                                   ; $5683: $21 $45 $11
	ld   de, $1611                                   ; $5686: $11 $11 $16
	ld   d, h                                        ; $5689: $54
	cp   a                                           ; $568a: $bf
	cp   $ff                                         ; $568b: $fe $ff
	rst  $38                                         ; $568d: $ff
	rst  $38                                         ; $568e: $ff
	db   $eb                                         ; $568f: $eb
	ld   h, c                                        ; $5690: $61
	ld   d, $11                                      ; $5691: $16 $11
	ld   de, $1211                                   ; $5693: $11 $11 $12
	ld   [hl], h                                     ; $5696: $74
	ld   l, l                                        ; $5697: $6d
	rst  $38                                         ; $5698: $ff
	rst  $38                                         ; $5699: $ff
	rst  $38                                         ; $569a: $ff
	rst  $38                                         ; $569b: $ff
	db   $fd                                         ; $569c: $fd
	and  e                                           ; $569d: $a3
	inc  de                                          ; $569e: $13
	ld   b, c                                        ; $569f: $41
	ld   de, $1111                                   ; $56a0: $11 $11 $11
	ld   b, [hl]                                     ; $56a3: $46
	ld   e, d                                        ; $56a4: $5a
	rst  $38                                         ; $56a5: $ff
	rst  $38                                         ; $56a6: $ff
	rst  $38                                         ; $56a7: $ff
	rst  $38                                         ; $56a8: $ff
	cp   $c6                                         ; $56a9: $fe $c6
	ld   de, $1151                                   ; $56ab: $11 $51 $11
	ld   de, $2511                                   ; $56ae: $11 $11 $25
	ld   e, b                                        ; $56b1: $58
	rst  JumpTable                                         ; $56b2: $df
	rst  $38                                         ; $56b3: $ff
	rst  $38                                         ; $56b4: $ff
	rst  $38                                         ; $56b5: $ff
	rst  $38                                         ; $56b6: $ff
	reti                                             ; $56b7: $d9


	ld   de, $1151                                   ; $56b8: $11 $51 $11
	ld   de, $1511                                   ; $56bb: $11 $11 $15
	ld   d, a                                        ; $56be: $57
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56bf: $cf
	rst  $38                                         ; $56c0: $ff
	rst  $38                                         ; $56c1: $ff
	rst  $38                                         ; $56c2: $ff
	rst  $38                                         ; $56c3: $ff
	jp   c, $4231                                    ; $56c4: $da $31 $42

	ld   de, $1111                                   ; $56c7: $11 $11 $11
	inc  d                                           ; $56ca: $14
	ld   b, [hl]                                     ; $56cb: $46
	cp   [hl]                                        ; $56cc: $be
	rst  $38                                         ; $56cd: $ff
	rst  $38                                         ; $56ce: $ff
	rst  $38                                         ; $56cf: $ff
	rst  $38                                         ; $56d0: $ff
	ld   [$4141], a                                  ; $56d1: $ea $41 $41
	ld   de, $1111                                   ; $56d4: $11 $11 $11
	inc  de                                          ; $56d7: $13
	ld   b, [hl]                                     ; $56d8: $46
	xor  [hl]                                        ; $56d9: $ae
	rst  $38                                         ; $56da: $ff
	rst  $38                                         ; $56db: $ff
	rst  $38                                         ; $56dc: $ff
	rst  $38                                         ; $56dd: $ff
	ei                                               ; $56de: $fb
	ld   b, d                                        ; $56df: $42
	ld   d, c                                        ; $56e0: $51
	ld   de, $1111                                   ; $56e1: $11 $11 $11
	ld   [de], a                                     ; $56e4: $12
	ld   b, [hl]                                     ; $56e5: $46
	cp   [hl]                                        ; $56e6: $be
	rst  $38                                         ; $56e7: $ff
	rst  $38                                         ; $56e8: $ff
	rst  $38                                         ; $56e9: $ff
	rst  $38                                         ; $56ea: $ff
	ld   [$5153], a                                  ; $56eb: $ea $53 $51
	ld   de, $1111                                   ; $56ee: $11 $11 $11
	ld   [de], a                                     ; $56f1: $12
	ld   b, a                                        ; $56f2: $47
	call $ffff                                       ; $56f3: $cd $ff $ff
	rst  $38                                         ; $56f6: $ff
	rst  $38                                         ; $56f7: $ff
	ld   [$4144], a                                  ; $56f8: $ea $44 $41
	ld   de, $1111                                   ; $56fb: $11 $11 $11
	inc  de                                          ; $56fe: $13
	ld   e, b                                        ; $56ff: $58
	xor  l                                           ; $5700: $ad
	rst  $28                                         ; $5701: $ef
	rst  $38                                         ; $5702: $ff
	rst  $38                                         ; $5703: $ff
	rst  $38                                         ; $5704: $ff
	jp   hl                                          ; $5705: $e9


	ld   b, h                                        ; $5706: $44
	ld   hl, $1111                                   ; $5707: $21 $11 $11
	ld   de, $6813                                   ; $570a: $11 $13 $68
	cp   l                                           ; $570d: $bd
	rst  $28                                         ; $570e: $ef
	rst  $38                                         ; $570f: $ff
	rst  $38                                         ; $5710: $ff
	cp   $d7                                         ; $5711: $fe $d7
	ld   d, h                                        ; $5713: $54
	ld   de, $1111                                   ; $5714: $11 $11 $11
	ld   de, $6924                                   ; $5717: $11 $24 $69
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $571a: $cf
	rst  $38                                         ; $571b: $ff
	rst  $38                                         ; $571c: $ff
	rst  $38                                         ; $571d: $ff
	db   $fd                                         ; $571e: $fd
	and  [hl]                                        ; $571f: $a6
	ld   d, e                                        ; $5720: $53
	ld   de, $1111                                   ; $5721: $11 $11 $11
	ld   de, $8b24                                   ; $5724: $11 $24 $8b
	rst  JumpTable                                         ; $5727: $df
	rst  $38                                         ; $5728: $ff
	rst  $38                                         ; $5729: $ff
	rst  $38                                         ; $572a: $ff
	call c, $5186                                    ; $572b: $dc $86 $51
	ld   de, $1111                                   ; $572e: $11 $11 $11
	ld   [de], a                                     ; $5731: $12
	ld   [hl], $9b                                   ; $5732: $36 $9b
	rst  $28                                         ; $5734: $ef
	rst  $38                                         ; $5735: $ff
	rst  $38                                         ; $5736: $ff
	rst  $38                                         ; $5737: $ff
	reti                                             ; $5738: $d9


	ld   h, [hl]                                     ; $5739: $66
	ld   sp, $1111                                   ; $573a: $31 $11 $11
	ld   de, $5823                                   ; $573d: $11 $23 $58
	cp   l                                           ; $5740: $bd
	rst  $28                                         ; $5741: $ef
	rst  $38                                         ; $5742: $ff
	rst  $38                                         ; $5743: $ff
	db   $fd                                         ; $5744: $fd
	and  a                                           ; $5745: $a7
	ld   h, h                                        ; $5746: $64
	ld   de, $1111                                   ; $5747: $11 $11 $11
	ld   de, $8a24                                   ; $574a: $11 $24 $8a
	sbc  $ff                                         ; $574d: $de $ff
	rst  $38                                         ; $574f: $ff
	rst  $38                                         ; $5750: $ff
	jp   c, Jump_0f9_5176                            ; $5751: $da $76 $51

	ld   de, $1111                                   ; $5754: $11 $11 $11
	inc  de                                          ; $5757: $13
	ld   b, a                                        ; $5758: $47
	cp   l                                           ; $5759: $bd
	rst  $28                                         ; $575a: $ef
	rst  $38                                         ; $575b: $ff
	rst  $38                                         ; $575c: $ff
	db   $fd                                         ; $575d: $fd
	and  a                                           ; $575e: $a7
	ld   h, l                                        ; $575f: $65
	ld   de, $1111                                   ; $5760: $11 $11 $11
	ld   de, $6a33                                   ; $5763: $11 $33 $6a
	rst  JumpTable                                         ; $5766: $df
	rst  $38                                         ; $5767: $ff
	rst  $38                                         ; $5768: $ff
	rst  $38                                         ; $5769: $ff
	db   $ec                                         ; $576a: $ec
	ld   [hl], l                                     ; $576b: $75
	ld   d, c                                        ; $576c: $51
	ld   de, $1111                                   ; $576d: $11 $11 $11
	inc  de                                          ; $5770: $13
	ld   [hl], $ae                                   ; $5771: $36 $ae
	rst  $38                                         ; $5773: $ff
	rst  $38                                         ; $5774: $ff
	rst  $38                                         ; $5775: $ff
	rst  $38                                         ; $5776: $ff
	or   a                                           ; $5777: $b7
	ld   d, l                                        ; $5778: $55
	ld   de, $1111                                   ; $5779: $11 $11 $11
	ld   de, $5a22                                   ; $577c: $11 $22 $5a
	rst  $28                                         ; $577f: $ef
	rst  $38                                         ; $5780: $ff
	rst  $38                                         ; $5781: $ff
	rst  $38                                         ; $5782: $ff
	db   $fc                                         ; $5783: $fc
	add  h                                           ; $5784: $84
	ld   b, c                                        ; $5785: $41
	ld   de, $1111                                   ; $5786: $11 $11 $11
	ld   de, $9f25                                   ; $5789: $11 $25 $9f
	rst  $38                                         ; $578c: $ff
	rst  $38                                         ; $578d: $ff
	rst  $38                                         ; $578e: $ff
	rst  $38                                         ; $578f: $ff
	ret  c                                           ; $5790: $d8

	ld   b, e                                        ; $5791: $43
	ld   de, $1111                                   ; $5792: $11 $11 $11
	ld   de, $4a11                                   ; $5795: $11 $11 $4a
	rst  $38                                         ; $5798: $ff
	rst  $38                                         ; $5799: $ff
	rst  $38                                         ; $579a: $ff
	rst  $38                                         ; $579b: $ff
	db   $fd                                         ; $579c: $fd
	and  e                                           ; $579d: $a3
	ld   hl, $1111                                   ; $579e: $21 $11 $11
	ld   de, $1411                                   ; $57a1: $11 $11 $14
	xor  a                                           ; $57a4: $af
	rst  $38                                         ; $57a5: $ff
	rst  $38                                         ; $57a6: $ff
	rst  $38                                         ; $57a7: $ff
	rst  $38                                         ; $57a8: $ff
	jp   hl                                          ; $57a9: $e9


	ld   [hl-], a                                    ; $57aa: $32
	ld   de, $1111                                   ; $57ab: $11 $11 $11
	ld   de, $3c21                                   ; $57ae: $11 $21 $3c
	rst  $38                                         ; $57b1: $ff
	rst  $38                                         ; $57b2: $ff
	rst  $38                                         ; $57b3: $ff
	rst  $38                                         ; $57b4: $ff
	cp   $82                                         ; $57b5: $fe $82
	ld   de, $1111                                   ; $57b7: $11 $11 $11
	ld   de, $1412                                   ; $57ba: $11 $12 $14
	rst  JumpTable                                         ; $57bd: $df
	rst  $38                                         ; $57be: $ff
	rst  $38                                         ; $57bf: $ff
	rst  $38                                         ; $57c0: $ff
	rst  $38                                         ; $57c1: $ff
	add  sp, $11                                     ; $57c2: $e8 $11
	ld   de, $1111                                   ; $57c4: $11 $11 $11
	ld   de, $5f31                                   ; $57c7: $11 $31 $5f
	rst  $38                                         ; $57ca: $ff
	rst  $38                                         ; $57cb: $ff
	rst  $38                                         ; $57cc: $ff
	rst  $38                                         ; $57cd: $ff
	db   $fd                                         ; $57ce: $fd
	ld   b, c                                        ; $57cf: $41
	ld   de, $1111                                   ; $57d0: $11 $11 $11
	ld   de, $1616                                   ; $57d3: $11 $16 $16
	rst  $38                                         ; $57d6: $ff
	rst  $38                                         ; $57d7: $ff
	rst  $38                                         ; $57d8: $ff
	rst  $38                                         ; $57d9: $ff
	rst  $38                                         ; $57da: $ff
	and  d                                           ; $57db: $a2
	ld   de, $1111                                   ; $57dc: $11 $11 $11
	ld   de, $5111                                   ; $57df: $11 $11 $51
	cp   a                                           ; $57e2: $bf
	rst  $38                                         ; $57e3: $ff
	rst  $38                                         ; $57e4: $ff
	rst  $38                                         ; $57e5: $ff
	rst  $38                                         ; $57e6: $ff
	rst  $20                                         ; $57e7: $e7
	ld   de, $1111                                   ; $57e8: $11 $11 $11
	ld   de, $3911                                   ; $57eb: $11 $11 $39
	ld   e, $ff                                      ; $57ee: $1e $ff
	rst  $38                                         ; $57f0: $ff
	rst  $38                                         ; $57f1: $ff
	rst  $38                                         ; $57f2: $ff
	ei                                               ; $57f3: $fb
	ld   hl, $1111                                   ; $57f4: $21 $11 $11
	ld   de, $1b11                                   ; $57f7: $11 $11 $1b
	ld   b, c                                        ; $57fa: $41
	rst  $38                                         ; $57fb: $ff
	rst  $38                                         ; $57fc: $ff
	rst  $38                                         ; $57fd: $ff
	rst  $38                                         ; $57fe: $ff
	db   $fc                                         ; $57ff: $fc
	sub  c                                           ; $5800: $91
	ld   de, $1111                                   ; $5801: $11 $11 $11
	ld   de, $e311                                   ; $5804: $11 $11 $e3
	sbc  a                                           ; $5807: $9f
	rst  $38                                         ; $5808: $ff
	rst  $38                                         ; $5809: $ff
	rst  $38                                         ; $580a: $ff
	rst  $38                                         ; $580b: $ff
	ld   [hl], h                                     ; $580c: $74
	ld   de, $1111                                   ; $580d: $11 $11 $11
	ld   de, $8f11                                   ; $5810: $11 $11 $8f
	rra                                              ; $5813: $1f
	rst  $38                                         ; $5814: $ff
	rst  $38                                         ; $5815: $ff
	rst  $38                                         ; $5816: $ff
	rst  $38                                         ; $5817: $ff
	and  h                                           ; $5818: $a4
	ld   de, $1111                                   ; $5819: $11 $11 $11
	ld   de, $1f11                                   ; $581c: $11 $11 $1f
	ld   e, b                                        ; $581f: $58
	rst  $38                                         ; $5820: $ff
	rst  $38                                         ; $5821: $ff
	rst  $38                                         ; $5822: $ff
	rst  $38                                         ; $5823: $ff
	pop  af                                          ; $5824: $f1
	ld   sp, $1111                                   ; $5825: $31 $11 $11
	ld   de, $1f11                                   ; $5828: $11 $11 $1f
	ldh  a, [c]                                      ; $582b: $f2
	rst  $38                                         ; $582c: $ff
	rst  $38                                         ; $582d: $ff
	rst  $38                                         ; $582e: $ff
	rst  $38                                         ; $582f: $ff
	db   $f4                                         ; $5830: $f4
	ld   de, $1112                                   ; $5831: $11 $12 $11
	ld   de, $1b11                                   ; $5834: $11 $11 $1b
	or   $ff                                         ; $5837: $f6 $ff
	rst  $38                                         ; $5839: $ff
	rst  $38                                         ; $583a: $ff
	rst  $38                                         ; $583b: $ff
	db   $fc                                         ; $583c: $fc
	ld   de, $1111                                   ; $583d: $11 $11 $11
	inc  d                                           ; $5840: $14
	ld   de, $f818                                   ; $5841: $11 $18 $f8
	rst  JumpTable                                         ; $5844: $df
	rst  $38                                         ; $5845: $ff
	rst  $38                                         ; $5846: $ff
	rst  $38                                         ; $5847: $ff
	rst  $38                                         ; $5848: $ff
	ld   de, $1111                                   ; $5849: $11 $11 $11
	add  hl, de                                      ; $584c: $19
	ld   de, $fa15                                   ; $584d: $11 $15 $fa
	xor  a                                           ; $5850: $af
	rst  $38                                         ; $5851: $ff
	rst  $38                                         ; $5852: $ff
	rst  $38                                         ; $5853: $ff
	rst  $38                                         ; $5854: $ff
	ld   de, $1111                                   ; $5855: $11 $11 $11
	dec  de                                          ; $5858: $1b
	ld   de, $fc15                                   ; $5859: $11 $15 $fc
	cp   a                                           ; $585c: $bf
	rst  $38                                         ; $585d: $ff
	rst  $38                                         ; $585e: $ff
	rst  $38                                         ; $585f: $ff
	rst  $38                                         ; $5860: $ff
	ld   de, $1114                                   ; $5861: $11 $14 $11
	rra                                              ; $5864: $1f
	ld   de, $f91b                                   ; $5865: $11 $1b $f9
	rst  $38                                         ; $5868: $ff
	rst  $38                                         ; $5869: $ff
	rst  $38                                         ; $586a: $ff
	rst  $38                                         ; $586b: $ff
	ld   sp, hl                                      ; $586c: $f9
	ld   de, $111a                                   ; $586d: $11 $1a $11
	ld   e, $11                                      ; $5870: $1e $11
	rra                                              ; $5872: $1f
	rst  $30                                         ; $5873: $f7
	rst  $38                                         ; $5874: $ff
	rst  $38                                         ; $5875: $ff
	rst  $38                                         ; $5876: $ff
	rst  $38                                         ; $5877: $ff
	pop  af                                          ; $5878: $f1
	ld   de, $111f                                   ; $5879: $11 $1f $11
	cp   d                                           ; $587c: $ba
	ld   sp, $fc1f                                   ; $587d: $31 $1f $fc
	ei                                               ; $5880: $fb
	rst  $38                                         ; $5881: $ff
	rst  $38                                         ; $5882: $ff
	xor  a                                           ; $5883: $af
	pop  af                                          ; $5884: $f1
	ld   de, $11a9                                   ; $5885: $11 $a9 $11
	or   $51                                         ; $5888: $f6 $51
	sbc  a                                           ; $588a: $9f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $588b: $cf
	ld   hl, sp-$01                                  ; $588c: $f8 $ff
	ei                                               ; $588e: $fb
	rst  JumpTable                                         ; $588f: $df
	ld   hl, $f111                                   ; $5890: $21 $11 $f1
	dec  de                                          ; $5893: $1b
	sbc  c                                           ; $5894: $99
	ld   de, $ffff                                   ; $5895: $11 $ff $ff
	rra                                              ; $5898: $1f
	rst  $38                                         ; $5899: $ff
	pop  af                                          ; $589a: $f1
	rst  $38                                         ; $589b: $ff
	ld   de, $211f                                   ; $589c: $11 $1f $21
	dec  e                                           ; $589f: $1d
	adc  b                                           ; $58a0: $88
	rra                                              ; $58a1: $1f
	cp   $f6                                         ; $58a2: $fe $f6
	xor  a                                           ; $58a4: $af
	rst  $38                                         ; $58a5: $ff
	rra                                              ; $58a6: $1f
	pop  af                                          ; $58a7: $f1
	ld   de, $11fd                                   ; $58a8: $11 $fd $11
	rst  $30                                         ; $58ab: $f7
	or   c                                           ; $58ac: $b1
	rst  $38                                         ; $58ad: $ff
	xor  a                                           ; $58ae: $af
	and  l                                           ; $58af: $a5
	rst  $38                                         ; $58b0: $ff
	pop  af                                          ; $58b1: $f1
	rst  $38                                         ; $58b2: $ff
	ld   de, $f11f                                   ; $58b3: $11 $1f $f1
	rra                                              ; $58b6: $1f
	adc  [hl]                                        ; $58b7: $8e
	rra                                              ; $58b8: $1f
	ld   a, [$2ffa]                                  ; $58b9: $fa $fa $2f
	rst  $38                                         ; $58bc: $ff
	rra                                              ; $58bd: $1f
	pop  af                                          ; $58be: $f1
	ld   de, $11ff                                   ; $58bf: $11 $ff $11
	ld   hl, sp-$1f                                  ; $58c2: $f8 $e1
	rst  $38                                         ; $58c4: $ff
	xor  a                                           ; $58c5: $af
	ld   d, [hl]                                     ; $58c6: $56
	rst  $38                                         ; $58c7: $ff
	pop  af                                          ; $58c8: $f1
	rst  $38                                         ; $58c9: $ff
	ld   de, $511f                                   ; $58ca: $11 $1f $51
	xor  h                                           ; $58cd: $ac
	cp   d                                           ; $58ce: $ba
	rra                                              ; $58cf: $1f
	ld   l, a                                        ; $58d0: $6f
	pop  af                                          ; $58d1: $f1
	rst  $28                                         ; $58d2: $ef
	rst  $38                                         ; $58d3: $ff
	rra                                              ; $58d4: $1f
	pop  de                                          ; $58d5: $d1
	ld   de, $1ff1                                   ; $58d6: $11 $f1 $1f
	ld   l, a                                        ; $58d9: $6f
	ld   [hl], $f1                                   ; $58da: $36 $f1
	rst  $38                                         ; $58dc: $ff
	rra                                              ; $58dd: $1f
	rst  $38                                         ; $58de: $ff
	ld   b, c                                        ; $58df: $41
	pop  af                                          ; $58e0: $f1
	ld   de, $11bf                                   ; $58e1: $11 $bf $11
	push af                                          ; $58e4: $f5
	pop  af                                          ; $58e5: $f1
	rst  $38                                         ; $58e6: $ff
	cpl                                              ; $58e7: $2f
	inc  sp                                          ; $58e8: $33
	rst  $38                                         ; $58e9: $ff
	pop  af                                          ; $58ea: $f1
	rst  $38                                         ; $58eb: $ff
	ld   de, $111f                                   ; $58ec: $11 $1f $11
	ld   a, [$2fd9]                                  ; $58ef: $fa $d9 $2f
	rra                                              ; $58f2: $1f
	pop  af                                          ; $58f3: $f1
	cp   $f6                                         ; $58f4: $fe $f6
	rra                                              ; $58f6: $1f
	ld   de, $f11b                                   ; $58f7: $11 $1b $f1
	rra                                              ; $58fa: $1f
	ld   e, a                                        ; $58fb: $5f
	rra                                              ; $58fc: $1f
	jp   nz, $2ff1                                   ; $58fd: $c2 $f1 $2f

	rst  $38                                         ; $5900: $ff
	rra                                              ; $5901: $1f
	pop  af                                          ; $5902: $f1
	ld   de, $1ff1                                   ; $5903: $11 $f1 $1f
	ld   a, a                                        ; $5906: $7f
	dec  hl                                          ; $5907: $2b
	pop  af                                          ; $5908: $f1
	rst  $38                                         ; $5909: $ff
	rra                                              ; $590a: $1f
	xor  a                                           ; $590b: $af
	ld   d, $f1                                      ; $590c: $16 $f1
	ld   de, $1fff                                   ; $590e: $11 $ff $1f
	db   $fd                                         ; $5911: $fd
	and  c                                           ; $5912: $a1
	pop  af                                          ; $5913: $f1
	rst  $38                                         ; $5914: $ff
	rra                                              ; $5915: $1f
	adc  a                                           ; $5916: $8f
	ld   [hl], c                                     ; $5917: $71
	pop  af                                          ; $5918: $f1
	ld   de, $16ff                                   ; $5919: $11 $ff $16
	ld   sp, hl                                      ; $591c: $f9
	pop  af                                          ; $591d: $f1
	pop  af                                          ; $591e: $f1
	xor  a                                           ; $591f: $af
	ld   a, [de]                                     ; $5920: $1a
	sbc  a                                           ; $5921: $9f
	pop  af                                          ; $5922: $f1
	di                                               ; $5923: $f3
	ld   de, $11af                                   ; $5924: $11 $af $11
	rst  $30                                         ; $5927: $f7
	pop  af                                          ; $5928: $f1
	or   $3f                                         ; $5929: $f6 $3f
	ld   d, $9f                                      ; $592b: $16 $9f
	pop  af                                          ; $592d: $f1
	or   $11                                         ; $592e: $f6 $11
	ld   a, a                                        ; $5930: $7f
	ld   de, $f1f6                                   ; $5931: $11 $f6 $f1
	ld   hl, sp+$2f                                  ; $5934: $f8 $2f
	dec  d                                           ; $5936: $15
	xor  a                                           ; $5937: $af
	pop  af                                          ; $5938: $f1
	rst  $30                                         ; $5939: $f7
	ld   de, $118f                                   ; $593a: $11 $8f $11
	or   $f1                                         ; $593d: $f6 $f1
	rst  $30                                         ; $593f: $f7
	ccf                                              ; $5940: $3f
	inc  d                                           ; $5941: $14
	cp   a                                           ; $5942: $bf
	pop  af                                          ; $5943: $f1
	push af                                          ; $5944: $f5
	ld   de, $12ff                                   ; $5945: $11 $ff $12
	ld   hl, sp-$0f                                  ; $5948: $f8 $f1
	pop  af                                          ; $594a: $f1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $594b: $cf
	rla                                              ; $594c: $17
	sbc  a                                           ; $594d: $9f
	pop  bc                                          ; $594e: $c1
	pop  af                                          ; $594f: $f1
	ld   de, $1fff                                   ; $5950: $11 $ff $1f
	db   $fc                                         ; $5953: $fc
	pop  de                                          ; $5954: $d1
	pop  af                                          ; $5955: $f1
	rst  $38                                         ; $5956: $ff
	ld   a, [de]                                     ; $5957: $1a
	sbc  a                                           ; $5958: $9f
	ld   sp, $11f1                                   ; $5959: $31 $f1 $11
	cp   $1f                                         ; $595c: $fe $1f
	rst  $38                                         ; $595e: $ff
	add  l                                           ; $595f: $85
	pop  af                                          ; $5960: $f1
	rst  $38                                         ; $5961: $ff
	dec  e                                           ; $5962: $1d
	cp   a                                           ; $5963: $bf
	ld   d, $f1                                      ; $5964: $16 $f1
	ld   de, $1ff1                                   ; $5966: $11 $f1 $1f
	rst  JumpTable                                         ; $5969: $df
	rra                                              ; $596a: $1f
	pop  af                                          ; $596b: $f1
	db   $f4                                         ; $596c: $f4
	inc  e                                           ; $596d: $1c
	rst  $38                                         ; $596e: $ff
	rra                                              ; $596f: $1f
	pop  af                                          ; $5970: $f1
	ld   de, $1ff1                                   ; $5971: $11 $f1 $1f
	xor  a                                           ; $5974: $af
	rra                                              ; $5975: $1f
	and  h                                           ; $5976: $a4
	pop  af                                          ; $5977: $f1
	dec  de                                          ; $5978: $1b
	rst  $38                                         ; $5979: $ff
	rra                                              ; $597a: $1f
	ld   de, $f11f                                   ; $597b: $11 $1f $f1
	sbc  a                                           ; $597e: $9f
	rst  $38                                         ; $597f: $ff
	rra                                              ; $5980: $1f
	rra                                              ; $5981: $1f
	pop  af                                          ; $5982: $f1
	ld   a, e                                        ; $5983: $7b
	pop  af                                          ; $5984: $f1
	rra                                              ; $5985: $1f
	ld   de, $111f                                   ; $5986: $11 $1f $11
	rst  $38                                         ; $5989: $ff
	di                                               ; $598a: $f3
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $598b: $cf
	rra                                              ; $598c: $1f
	ld   b, c                                        ; $598d: $41
	xor  a                                           ; $598e: $af
	pop  af                                          ; $598f: $f1
	ld   a, [$8f11]                                  ; $5990: $fa $11 $8f
	ld   de, $f1fd                                   ; $5993: $11 $fd $f1
	pop  af                                          ; $5996: $f1
	rst  $38                                         ; $5997: $ff
	inc  d                                           ; $5998: $14
	sbc  a                                           ; $5999: $9f
	or   c                                           ; $599a: $b1
	pop  af                                          ; $599b: $f1
	ld   de, $1fff                                   ; $599c: $11 $ff $1f
	rst  $38                                         ; $599f: $ff
	add  a                                           ; $59a0: $87
	pop  af                                          ; $59a1: $f1
	db   $fd                                         ; $59a2: $fd
	ld   a, [de]                                     ; $59a3: $1a
	rst  $38                                         ; $59a4: $ff
	ld   e, $e1                                      ; $59a5: $1e $e1
	ld   [de], a                                     ; $59a7: $12
	pop  af                                          ; $59a8: $f1
	rra                                              ; $59a9: $1f
	cp   a                                           ; $59aa: $bf
	rra                                              ; $59ab: $1f
	dec  l                                           ; $59ac: $2d

jr_0f9_59ad:
	pop  af                                          ; $59ad: $f1
	jr   c, jr_0f9_59ad                              ; $59ae: $38 $fd

	rra                                              ; $59b0: $1f
	ld   de, $f11f                                   ; $59b1: $11 $1f $f1
	rst  $38                                         ; $59b4: $ff
	ld   a, [$1f7f]                                  ; $59b5: $fa $7f $1f
	pop  hl                                          ; $59b8: $e1
	xor  [hl]                                        ; $59b9: $ae
	pop  af                                          ; $59ba: $f1
	rst  $28                                         ; $59bb: $ef
	ld   de, $114f                                   ; $59bc: $11 $4f $11
	db   $fc                                         ; $59bf: $fc
	pop  af                                          ; $59c0: $f1
	pop  af                                          ; $59c1: $f1
	rst  JumpTable                                         ; $59c2: $df
	inc  d                                           ; $59c3: $14
	adc  a                                           ; $59c4: $8f
	or   c                                           ; $59c5: $b1
	pop  af                                          ; $59c6: $f1
	ld   de, $1ff8                                   ; $59c7: $11 $f8 $1f
	rst  $38                                         ; $59ca: $ff
	ld   e, l                                        ; $59cb: $5d
	pop  af                                          ; $59cc: $f1
	db   $f4                                         ; $59cd: $f4
	ld   a, [de]                                     ; $59ce: $1a
	rst  $38                                         ; $59cf: $ff
	rra                                              ; $59d0: $1f
	ld   [hl], c                                     ; $59d1: $71
	rra                                              ; $59d2: $1f
	pop  af                                          ; $59d3: $f1
	ld   e, a                                        ; $59d4: $5f
	cp   $1f                                         ; $59d5: $fe $1f
	rra                                              ; $59d7: $1f
	pop  af                                          ; $59d8: $f1
	ld   a, d                                        ; $59d9: $7a
	pop  af                                          ; $59da: $f1
	cpl                                              ; $59db: $2f
	ld   de, $111f                                   ; $59dc: $11 $1f $11
	rst  $38                                         ; $59df: $ff
	pop  af                                          ; $59e0: $f1
	ld   a, [$112f]                                  ; $59e1: $fa $2f $11
	adc  a                                           ; $59e4: $8f
	pop  af                                          ; $59e5: $f1
	pop  af                                          ; $59e6: $f1
	ld   de, $1fff                                   ; $59e7: $11 $ff $1f
	rst  $38                                         ; $59ea: $ff
	ld   l, d                                        ; $59eb: $6a
	pop  af                                          ; $59ec: $f1
	ld   a, [$ff18]                                  ; $59ed: $fa $18 $ff
	ld   e, $a1                                      ; $59f0: $1e $a1
	dec  e                                           ; $59f2: $1d
	pop  af                                          ; $59f3: $f1
	cpl                                              ; $59f4: $2f
	cp   $1f                                         ; $59f5: $fe $1f
	rra                                              ; $59f7: $1f
	pop  af                                          ; $59f8: $f1
	ld   e, c                                        ; $59f9: $59
	ldh  a, [c]                                      ; $59fa: $f2
	ccf                                              ; $59fb: $3f
	ld   de, $111f                                   ; $59fc: $11 $1f $11
	rst  $38                                         ; $59ff: $ff
	pop  af                                          ; $5a00: $f1
	or   $6f                                         ; $5a01: $f6 $6f
	ld   de, $f17f                                   ; $5a03: $11 $7f $f1
	pop  af                                          ; $5a06: $f1
	ld   de, $1ffb                                   ; $5a07: $11 $fb $1f
	rst  $38                                         ; $5a0a: $ff
	ld   a, $f1                                      ; $5a0b: $3e $f1
	ldh  a, [c]                                      ; $5a0d: $f2
	rla                                              ; $5a0e: $17
	rst  $38                                         ; $5a0f: $ff
	rra                                              ; $5a10: $1f
	ld   sp, $f11f                                   ; $5a11: $31 $1f $f1
	cp   a                                           ; $5a14: $bf
	db   $fc                                         ; $5a15: $fc
	ccf                                              ; $5a16: $3f
	rra                                              ; $5a17: $1f
	pop  af                                          ; $5a18: $f1
	ld   a, h                                        ; $5a19: $7c
	pop  af                                          ; $5a1a: $f1
	sbc  l                                           ; $5a1b: $9d
	ld   de, $113f                                   ; $5a1c: $11 $3f $11
	rst  $38                                         ; $5a1f: $ff
	pop  af                                          ; $5a20: $f1
	pop  af                                          ; $5a21: $f1
	rst  $38                                         ; $5a22: $ff
	inc  de                                          ; $5a23: $13
	adc  a                                           ; $5a24: $8f
	ld   [hl], c                                     ; $5a25: $71
	pop  af                                          ; $5a26: $f1
	ld   de, $1ff1                                   ; $5a27: $11 $f1 $1f
	rst  $38                                         ; $5a2a: $ff
	rra                                              ; $5a2b: $1f
	and  c                                           ; $5a2c: $a1
	pop  af                                          ; $5a2d: $f1
	ld   d, $ff                                      ; $5a2e: $16 $ff
	rra                                              ; $5a30: $1f
	ld   de, $d11f                                   ; $5a31: $11 $1f $d1
	rst  $38                                         ; $5a34: $ff
	ldh  a, [c]                                      ; $5a35: $f2
	rst  JumpTable                                         ; $5a36: $df
	rra                                              ; $5a37: $1f
	ld   sp, $f17f                                   ; $5a38: $31 $7f $f1
	di                                               ; $5a3b: $f3
	ld   de, $1fff                                   ; $5a3c: $11 $ff $1f
	rst  $38                                         ; $5a3f: $ff
	add  [hl]                                        ; $5a40: $86
	pop  af                                          ; $5a41: $f1
	rst  $38                                         ; $5a42: $ff
	ld   d, $ff                                      ; $5a43: $16 $ff
	ld   a, [de]                                     ; $5a45: $1a
	and  c                                           ; $5a46: $a1
	rra                                              ; $5a47: $1f
	pop  af                                          ; $5a48: $f1
	cpl                                              ; $5a49: $2f
	db   $fc                                         ; $5a4a: $fc
	rra                                              ; $5a4b: $1f
	rra                                              ; $5a4c: $1f
	pop  af                                          ; $5a4d: $f1
	ld   c, h                                        ; $5a4e: $4c
	pop  af                                          ; $5a4f: $f1
	ld   c, [hl]                                     ; $5a50: $4e
	ld   de, $118f                                   ; $5a51: $11 $8f $11
	rst  $38                                         ; $5a54: $ff
	pop  de                                          ; $5a55: $d1
	pop  af                                          ; $5a56: $f1
	rst  $38                                         ; $5a57: $ff
	ld   [de], a                                     ; $5a58: $12
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5a59: $cf
	ld   hl, $13f1                                   ; $5a5a: $21 $f1 $13
	pop  af                                          ; $5a5d: $f1
	rra                                              ; $5a5e: $1f
	db   $fd                                         ; $5a5f: $fd
	rra                                              ; $5a60: $1f
	rra                                              ; $5a61: $1f
	pop  af                                          ; $5a62: $f1
	ld   a, [de]                                     ; $5a63: $1a
	push af                                          ; $5a64: $f5
	rra                                              ; $5a65: $1f
	ld   de, $111f                                   ; $5a66: $11 $1f $11
	rst  $38                                         ; $5a69: $ff
	pop  hl                                          ; $5a6a: $e1
	di                                               ; $5a6b: $f3
	rst  $28                                         ; $5a6c: $ef
	ld   de, $619f                                   ; $5a6d: $11 $9f $61
	pop  af                                          ; $5a70: $f1
	ld   de, $1ff1                                   ; $5a71: $11 $f1 $1f
	rst  $38                                         ; $5a74: $ff
	rra                                              ; $5a75: $1f
	ccf                                              ; $5a76: $3f
	pop  af                                          ; $5a77: $f1
	add  hl, de                                      ; $5a78: $19
	or   $1f                                         ; $5a79: $f6 $1f
	ld   de, $111f                                   ; $5a7b: $11 $1f $11
	rst  $38                                         ; $5a7e: $ff
	pop  af                                          ; $5a7f: $f1
	di                                               ; $5a80: $f3
	rst  $28                                         ; $5a81: $ef
	ld   de, $61af                                   ; $5a82: $11 $af $61
	pop  af                                          ; $5a85: $f1
	ld   de, $1ff1                                   ; $5a86: $11 $f1 $1f
	rst  $38                                         ; $5a89: $ff
	rra                                              ; $5a8a: $1f
	ccf                                              ; $5a8b: $3f
	pop  af                                          ; $5a8c: $f1
	dec  de                                          ; $5a8d: $1b
	push af                                          ; $5a8e: $f5
	rra                                              ; $5a8f: $1f
	ld   de, $111f                                   ; $5a90: $11 $1f $11
	rst  $38                                         ; $5a93: $ff
	pop  hl                                          ; $5a94: $e1
	di                                               ; $5a95: $f3
	rst  $38                                         ; $5a96: $ff
	ld   de, $41cf                                   ; $5a97: $11 $cf $41
	pop  af                                          ; $5a9a: $f1
	ld   de, $1ff1                                   ; $5a9b: $11 $f1 $1f
	cp   $1f                                         ; $5a9e: $fe $1f
	rra                                              ; $5aa0: $1f
	pop  af                                          ; $5aa1: $f1
	ld   e, $f1                                      ; $5aa2: $1e $f1
	ld   e, $11                                      ; $5aa4: $1e $11
	ccf                                              ; $5aa6: $3f
	ld   de, $c1ff                                   ; $5aa7: $11 $ff $c1
	pop  af                                          ; $5aaa: $f1
	rst  $38                                         ; $5aab: $ff
	ld   [de], a                                     ; $5aac: $12
	rst  JumpTable                                         ; $5aad: $df
	ld   de, $17e1                                   ; $5aae: $11 $e1 $17
	pop  af                                          ; $5ab1: $f1
	rra                                              ; $5ab2: $1f
	db   $fc                                         ; $5ab3: $fc
	rra                                              ; $5ab4: $1f
	rra                                              ; $5ab5: $1f
	pop  af                                          ; $5ab6: $f1
	cpl                                              ; $5ab7: $2f
	pop  af                                          ; $5ab8: $f1
	dec  hl                                          ; $5ab9: $2b
	ld   de, $116f                                   ; $5aba: $11 $6f $11
	rst  $38                                         ; $5abd: $ff
	pop  bc                                          ; $5abe: $c1
	pop  af                                          ; $5abf: $f1
	rst  $38                                         ; $5ac0: $ff
	inc  d                                           ; $5ac1: $14
	rst  $28                                         ; $5ac2: $ef
	inc  de                                          ; $5ac3: $13
	sub  c                                           ; $5ac4: $91
	add  hl, de                                      ; $5ac5: $19
	pop  af                                          ; $5ac6: $f1
	rra                                              ; $5ac7: $1f
	db   $fc                                         ; $5ac8: $fc
	cpl                                              ; $5ac9: $2f
	rra                                              ; $5aca: $1f
	pop  af                                          ; $5acb: $f1
	ld   c, a                                        ; $5acc: $4f
	pop  af                                          ; $5acd: $f1
	ld   b, [hl]                                     ; $5ace: $46
	ld   de, $13bf                                   ; $5acf: $11 $bf $13
	rst  $38                                         ; $5ad2: $ff
	or   e                                           ; $5ad3: $b3
	pop  af                                          ; $5ad4: $f1
	rst  $38                                         ; $5ad5: $ff
	dec  d                                           ; $5ad6: $15
	rst  $38                                         ; $5ad7: $ff
	rla                                              ; $5ad8: $17
	ld   b, c                                        ; $5ad9: $41
	dec  de                                          ; $5ada: $1b
	pop  af                                          ; $5adb: $f1
	ld   e, a                                        ; $5adc: $5f
	db   $fc                                         ; $5add: $fc
	ld   c, a                                        ; $5ade: $4f
	rra                                              ; $5adf: $1f
	pop  af                                          ; $5ae0: $f1
	ld   e, a                                        ; $5ae1: $5f
	pop  af                                          ; $5ae2: $f1
	add  c                                           ; $5ae3: $81
	ld   de, $148f                                   ; $5ae4: $11 $8f $14
	rst  $38                                         ; $5ae7: $ff
	jp   nz, $fff1                                   ; $5ae8: $c2 $f1 $ff

	ld   d, $ff                                      ; $5aeb: $16 $ff
	rla                                              ; $5aed: $17
	ld   de, $f117                                   ; $5aee: $11 $17 $f1
	rra                                              ; $5af1: $1f
	db   $fc                                         ; $5af2: $fc
	cpl                                              ; $5af3: $2f
	rra                                              ; $5af4: $1f
	pop  af                                          ; $5af5: $f1
	ld   e, a                                        ; $5af6: $5f
	pop  af                                          ; $5af7: $f1
	ld   h, c                                        ; $5af8: $61
	ld   de, $114f                                   ; $5af9: $11 $4f $11
	rst  $38                                         ; $5afc: $ff
	pop  bc                                          ; $5afd: $c1
	pop  af                                          ; $5afe: $f1
	rst  $38                                         ; $5aff: $ff
	ld   d, $ff                                      ; $5b00: $16 $ff
	inc  d                                           ; $5b02: $14
	ld   hl, $f111                                   ; $5b03: $21 $11 $f1
	rra                                              ; $5b06: $1f
	db   $fc                                         ; $5b07: $fc
	rra                                              ; $5b08: $1f
	cpl                                              ; $5b09: $2f
	pop  af                                          ; $5b0a: $f1
	ld   a, a                                        ; $5b0b: $7f
	ldh  a, [c]                                      ; $5b0c: $f2
	ld   b, h                                        ; $5b0d: $44
	ld   de, $111f                                   ; $5b0e: $11 $1f $11
	db   $fc                                         ; $5b11: $fc
	pop  hl                                          ; $5b12: $e1
	rst  $30                                         ; $5b13: $f7
	rst  $38                                         ; $5b14: $ff
	scf                                              ; $5b15: $37
	rst  $38                                         ; $5b16: $ff
	jp   nz, $1171                                   ; $5b17: $c2 $71 $11

	pop  af                                          ; $5b1a: $f1
	rra                                              ; $5b1b: $1f

Call_0f9_5b1c:
	sbc  [hl]                                        ; $5b1c: $9e
	rra                                              ; $5b1d: $1f
	db   $ec                                         ; $5b1e: $ec
	db   $fc                                         ; $5b1f: $fc
	ld   a, [hl]                                     ; $5b20: $7e
	rst  $38                                         ; $5b21: $ff
	ld   a, [de]                                     ; $5b22: $1a
	ld   de, $511d                                   ; $5b23: $11 $1d $51
	ld   c, b                                        ; $5b26: $48
	and  d                                           ; $5b27: $a2
	ld   a, a                                        ; $5b28: $7f
	ld   c, a                                        ; $5b29: $4f
	rst  $30                                         ; $5b2a: $f7
	rst  JumpTable                                         ; $5b2b: $df
	ei                                               ; $5b2c: $fb
	sub  l                                           ; $5b2d: $95
	ld   de, $111f                                   ; $5b2e: $11 $1f $11
	ld   [hl], l                                     ; $5b31: $75
	ld   [hl], c                                     ; $5b32: $71
	ld   sp, hl                                      ; $5b33: $f9
	cp   a                                           ; $5b34: $bf
	db   $ed                                         ; $5b35: $ed
	rst  $38                                         ; $5b36: $ff
	ld   sp, hl                                      ; $5b37: $f9
	ldh  a, [c]                                      ; $5b38: $f2
	ld   de, $111a                                   ; $5b39: $11 $1a $11
	inc  sp                                          ; $5b3c: $33
	ld   sp, $ffd5                                   ; $5b3d: $31 $d5 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b40: $cf
	rst  $38                                         ; $5b41: $ff
	rst  $38                                         ; $5b42: $ff
	ldh  a, [c]                                      ; $5b43: $f2
	ld   sp, $1139                                   ; $5b44: $31 $39 $11
	inc  d                                           ; $5b47: $14
	ld   de, $bf66                                   ; $5b48: $11 $66 $bf
	db   $ec                                         ; $5b4b: $ec
	rst  $38                                         ; $5b4c: $ff
	rst  $38                                         ; $5b4d: $ff
	rst  $30                                         ; $5b4e: $f7
	ld   d, c                                        ; $5b4f: $51
	add  hl, de                                      ; $5b50: $19
	ld   bc, $2112                                   ; $5b51: $01 $12 $21
	rla                                              ; $5b54: $17
	ld   e, a                                        ; $5b55: $5f
	jp   c, $ffff                                    ; $5b56: $da $ff $ff

	ei                                               ; $5b59: $fb
	add  e                                           ; $5b5a: $83
	add  hl, de                                      ; $5b5b: $19
	and  c                                           ; $5b5c: $a1
	inc  d                                           ; $5b5d: $14
	ld   hl, $4516                                   ; $5b5e: $21 $16 $45
	jp   hl                                          ; $5b61: $e9


	adc  $ff                                         ; $5b62: $ce $ff
	rst  $38                                         ; $5b64: $ff
	sub  [hl]                                        ; $5b65: $96
	inc  [hl]                                        ; $5b66: $34
	ret                                              ; $5b67: $c9


	inc  de                                          ; $5b68: $13
	inc  de                                          ; $5b69: $13
	ld   de, $9951                                   ; $5b6a: $11 $51 $99
	xor  c                                           ; $5b6d: $a9
	rst  JumpTable                                         ; $5b6e: $df
	rst  $38                                         ; $5b6f: $ff
	jp   hl                                          ; $5b70: $e9


	ld   d, [hl]                                     ; $5b71: $56
	adc  [hl]                                        ; $5b72: $8e
	and  c                                           ; $5b73: $a1
	ld   d, h                                        ; $5b74: $54
	ld   b, c                                        ; $5b75: $41
	inc  de                                          ; $5b76: $13
	jr   @-$67                                       ; $5b77: $18 $97

	xor  h                                           ; $5b79: $ac
	rst  $38                                         ; $5b7a: $ff
	db   $fc                                         ; $5b7b: $fc
	adc  c                                           ; $5b7c: $89
	ld   l, c                                        ; $5b7d: $69
	ld   a, [$4435]                                  ; $5b7e: $fa $35 $44
	inc  sp                                          ; $5b81: $33
	ld   sp, $6789                                   ; $5b82: $31 $89 $67
	xor  l                                           ; $5b85: $ad
	sbc  $b9                                         ; $5b86: $de $b9
	sbc  b                                           ; $5b88: $98
	sbc  a                                           ; $5b89: $9f
	or   e                                           ; $5b8a: $b3
	ld   d, [hl]                                     ; $5b8b: $56
	ld   h, e                                        ; $5b8c: $63
	inc  h                                           ; $5b8d: $24
	daa                                              ; $5b8e: $27
	add  [hl]                                        ; $5b8f: $86
	ld   a, c                                        ; $5b90: $79
	set  1, e                                        ; $5b91: $cb $cb
	xor  d                                           ; $5b93: $aa
	sbc  c                                           ; $5b94: $99
	db   $dd                                         ; $5b95: $dd
	ld   d, l                                        ; $5b96: $55
	ld   [hl], l                                     ; $5b97: $75
	ld   d, e                                        ; $5b98: $53
	ld   b, d                                        ; $5b99: $42
	ld   c, c                                        ; $5b9a: $49
	ld   h, [hl]                                     ; $5b9b: $66
	adc  e                                           ; $5b9c: $8b
	cp   e                                           ; $5b9d: $bb
	cp   e                                           ; $5b9e: $bb
	cp   e                                           ; $5b9f: $bb
	adc  d                                           ; $5ba0: $8a
	ld   a, [$7647]                                  ; $5ba1: $fa $47 $76
	ld   b, e                                        ; $5ba4: $43
	ld   [hl-], a                                    ; $5ba5: $32
	ld   l, b                                        ; $5ba6: $68
	ld   d, [hl]                                     ; $5ba7: $56
	sbc  d                                           ; $5ba8: $9a
	cp   h                                           ; $5ba9: $bc
	res  5, d                                        ; $5baa: $cb $aa
	sbc  h                                           ; $5bac: $9c
	ld   sp, hl                                      ; $5bad: $f9
	ld   d, a                                        ; $5bae: $57
	ld   [hl], l                                     ; $5baf: $75
	ld   b, e                                        ; $5bb0: $43
	ld   [hl-], a                                    ; $5bb1: $32
	ld   l, c                                        ; $5bb2: $69
	ld   d, a                                        ; $5bb3: $57
	xor  d                                           ; $5bb4: $aa
	cp   d                                           ; $5bb5: $ba
	cp   d                                           ; $5bb6: $ba
	cp   d                                           ; $5bb7: $ba
	sbc  h                                           ; $5bb8: $9c
	reti                                             ; $5bb9: $d9


	ld   e, b                                        ; $5bba: $58
	ld   [hl], h                                     ; $5bbb: $74
	ld   d, d                                        ; $5bbc: $52
	ld   [hl-], a                                    ; $5bbd: $32

Jump_0f9_5bbe:
	ld   l, b                                        ; $5bbe: $68
	ld   b, a                                        ; $5bbf: $47
	xor  c                                           ; $5bc0: $a9
	sbc  e                                           ; $5bc1: $9b
	cp   e                                           ; $5bc2: $bb
	db   $db                                         ; $5bc3: $db
	sbc  d                                           ; $5bc4: $9a
	call Call_0f9_7566                               ; $5bc5: $cd $66 $75
	ld   d, l                                        ; $5bc8: $55
	ld   [hl-], a                                    ; $5bc9: $32
	ld   b, a                                        ; $5bca: $47
	ld   [hl], h                                     ; $5bcb: $74
	adc  d                                           ; $5bcc: $8a
	sbc  e                                           ; $5bcd: $9b
	xor  e                                           ; $5bce: $ab
	cp   l                                           ; $5bcf: $bd
	xor  c                                           ; $5bd0: $a9
	xor  h                                           ; $5bd1: $ac
	rst  ToBoot                                         ; $5bd2: $c7
	ld   l, b                                        ; $5bd3: $68
	ld   d, l                                        ; $5bd4: $55
	ld   d, d                                        ; $5bd5: $52
	inc  [hl]                                        ; $5bd6: $34
	ld   [hl], a                                     ; $5bd7: $77
	ld   e, c                                        ; $5bd8: $59
	sbc  c                                           ; $5bd9: $99
	xor  e                                           ; $5bda: $ab
	cp   e                                           ; $5bdb: $bb
	jp   z, $ab8b                                    ; $5bdc: $ca $8b $ab

	or   [hl]                                        ; $5bdf: $b6
	halt                                             ; $5be0: $76
	ld   d, l                                        ; $5be1: $55
	inc  sp                                          ; $5be2: $33
	ld   b, l                                        ; $5be3: $45
	add  a                                           ; $5be4: $87
	ld   l, c                                        ; $5be5: $69
	sbc  c                                           ; $5be6: $99
	xor  d                                           ; $5be7: $aa
	cp   e                                           ; $5be8: $bb
	cp   d                                           ; $5be9: $ba
	sbc  c                                           ; $5bea: $99
	xor  e                                           ; $5beb: $ab
	sub  l                                           ; $5bec: $95
	ld   [hl], a                                     ; $5bed: $77
	ld   d, l                                        ; $5bee: $55
	ld   b, h                                        ; $5bef: $44
	ld   b, [hl]                                     ; $5bf0: $46
	add  [hl]                                        ; $5bf1: $86
	ld   l, d                                        ; $5bf2: $6a
	sbc  c                                           ; $5bf3: $99
	adc  d                                           ; $5bf4: $8a
	xor  d                                           ; $5bf5: $aa
	ret                                              ; $5bf6: $c9


	adc  c                                           ; $5bf7: $89
	cp   e                                           ; $5bf8: $bb
	and  [hl]                                        ; $5bf9: $a6
	ld   h, a                                        ; $5bfa: $67
	ld   h, [hl]                                     ; $5bfb: $66
	inc  [hl]                                        ; $5bfc: $34
	ld   d, [hl]                                     ; $5bfd: $56
	add  [hl]                                        ; $5bfe: $86
	ld   e, c                                        ; $5bff: $59
	sbc  c                                           ; $5c00: $99
	sbc  b                                           ; $5c01: $98
	sbc  d                                           ; $5c02: $9a
	xor  c                                           ; $5c03: $a9
	xor  d                                           ; $5c04: $aa
	xor  h                                           ; $5c05: $ac
	cp   b                                           ; $5c06: $b8
	ld   e, c                                        ; $5c07: $59
	add  [hl]                                        ; $5c08: $86
	ld   d, e                                        ; $5c09: $53
	ld   d, h                                        ; $5c0a: $54
	ld   h, a                                        ; $5c0b: $67
	ld   h, [hl]                                     ; $5c0c: $66
	adc  c                                           ; $5c0d: $89
	adc  c                                           ; $5c0e: $89
	sbc  d                                           ; $5c0f: $9a
	cp   e                                           ; $5c10: $bb
	xor  c                                           ; $5c11: $a9
	xor  h                                           ; $5c12: $ac
	cp   h                                           ; $5c13: $bc
	sub  l                                           ; $5c14: $95
	add  a                                           ; $5c15: $87
	ld   h, h                                        ; $5c16: $64
	inc  [hl]                                        ; $5c17: $34
	ld   b, l                                        ; $5c18: $45
	halt                                             ; $5c19: $76
	ld   l, c                                        ; $5c1a: $69
	sbc  c                                           ; $5c1b: $99
	adc  c                                           ; $5c1c: $89
	cp   e                                           ; $5c1d: $bb
	cp   e                                           ; $5c1e: $bb
	xor  d                                           ; $5c1f: $aa
	cp   d                                           ; $5c20: $ba
	jp   z, Jump_0f9_7556                            ; $5c21: $ca $56 $75

	ld   b, h                                        ; $5c24: $44
	ld   b, h                                        ; $5c25: $44
	ld   d, a                                        ; $5c26: $57
	halt                                             ; $5c27: $76
	adc  d                                           ; $5c28: $8a
	sbc  d                                           ; $5c29: $9a
	xor  c                                           ; $5c2a: $a9
	sbc  e                                           ; $5c2b: $9b
	cp   d                                           ; $5c2c: $ba
	xor  c                                           ; $5c2d: $a9
	sbc  d                                           ; $5c2e: $9a
	cp   b                                           ; $5c2f: $b8
	ld   d, a                                        ; $5c30: $57
	add  l                                           ; $5c31: $85
	ld   d, h                                        ; $5c32: $54
	ld   b, l                                        ; $5c33: $45
	ld   e, b                                        ; $5c34: $58
	ld   h, [hl]                                     ; $5c35: $66
	xor  c                                           ; $5c36: $a9
	sbc  c                                           ; $5c37: $99
	sbc  c                                           ; $5c38: $99
	xor  d                                           ; $5c39: $aa
	xor  c                                           ; $5c3a: $a9
	xor  c                                           ; $5c3b: $a9
	sbc  d                                           ; $5c3c: $9a
	jp   z, Jump_0f9_7568                            ; $5c3d: $ca $68 $75

	ld   d, h                                        ; $5c40: $54
	ld   b, h                                        ; $5c41: $44
	ld   l, b                                        ; $5c42: $68
	ld   h, l                                        ; $5c43: $65
	adc  c                                           ; $5c44: $89
	adc  c                                           ; $5c45: $89
	adc  c                                           ; $5c46: $89
	cp   e                                           ; $5c47: $bb
	cp   c                                           ; $5c48: $b9
	xor  d                                           ; $5c49: $aa
	sbc  d                                           ; $5c4a: $9a
	bit  0, a                                        ; $5c4b: $cb $47
	ld   [hl], h                                     ; $5c4d: $74
	ld   d, h                                        ; $5c4e: $54
	inc  [hl]                                        ; $5c4f: $34
	ld   h, a                                        ; $5c50: $67
	ld   h, [hl]                                     ; $5c51: $66
	xor  c                                           ; $5c52: $a9
	sbc  c                                           ; $5c53: $99
	cp   d                                           ; $5c54: $ba
	xor  h                                           ; $5c55: $ac
	xor  d                                           ; $5c56: $aa
	cp   c                                           ; $5c57: $b9
	sbc  e                                           ; $5c58: $9b
	reti                                             ; $5c59: $d9


	ld   b, l                                        ; $5c5a: $45
	ld   [hl], l                                     ; $5c5b: $75
	ld   d, l                                        ; $5c5c: $55
	inc  [hl]                                        ; $5c5d: $34
	ld   d, a                                        ; $5c5e: $57
	ld   [hl], l                                     ; $5c5f: $75
	adc  e                                           ; $5c60: $8b
	sbc  d                                           ; $5c61: $9a
	xor  c                                           ; $5c62: $a9
	xor  e                                           ; $5c63: $ab
	cp   d                                           ; $5c64: $ba
	sbc  c                                           ; $5c65: $99
	adc  b                                           ; $5c66: $88
	jp   hl                                          ; $5c67: $e9


	ld   b, a                                        ; $5c68: $47
	ld   [hl], l                                     ; $5c69: $75
	ld   d, h                                        ; $5c6a: $54
	inc  [hl]                                        ; $5c6b: $34
	ld   l, d                                        ; $5c6c: $6a
	ld   h, l                                        ; $5c6d: $65
	sbc  c                                           ; $5c6e: $99
	adc  d                                           ; $5c6f: $8a
	cp   c                                           ; $5c70: $b9
	call z, $a7aa                                    ; $5c71: $cc $aa $a7
	adc  e                                           ; $5c74: $8b
	rst  $20                                         ; $5c75: $e7
	daa                                              ; $5c76: $27
	ld   h, h                                        ; $5c77: $64
	ld   d, l                                        ; $5c78: $55
	inc  [hl]                                        ; $5c79: $34
	adc  b                                           ; $5c7a: $88
	ld   d, a                                        ; $5c7b: $57
	cp   d                                           ; $5c7c: $ba
	xor  e                                           ; $5c7d: $ab
	sbc  d                                           ; $5c7e: $9a
	call z, $97a7                                    ; $5c7f: $cc $a7 $97
	sbc  a                                           ; $5c82: $9f
	add  d                                           ; $5c83: $82
	halt                                             ; $5c84: $76
	ld   d, [hl]                                     ; $5c85: $56
	inc  sp                                          ; $5c86: $33
	scf                                              ; $5c87: $37
	or   [hl]                                        ; $5c88: $b6
	ld   e, e                                        ; $5c89: $5b
	jp   z, $acca                                    ; $5c8a: $ca $ca $ac

	jp   c, $6d66                                    ; $5c8d: $da $66 $6d

	db   $f4                                         ; $5c90: $f4
	ld   h, $55                                      ; $5c91: $26 $55
	ld   d, d                                        ; $5c93: $52
	inc  [hl]                                        ; $5c94: $34
	xor  d                                           ; $5c95: $aa
	ld   e, b                                        ; $5c96: $58
	cp   h                                           ; $5c97: $bc
	set  1, h                                        ; $5c98: $cb $cc
	db   $dd                                         ; $5c9a: $dd
	ld   h, e                                        ; $5c9b: $63
	ld   c, l                                        ; $5c9c: $4d
	or   $16                                         ; $5c9d: $f6 $16
	ld   b, h                                        ; $5c9f: $44
	sub  c                                           ; $5ca0: $91
	ld   [hl+], a                                    ; $5ca1: $22
	xor  l                                           ; $5ca2: $ad
	ld   e, c                                        ; $5ca3: $59
	call z, $ccee                                    ; $5ca4: $cc $ee $cc
	ld   [$5f41], a                                  ; $5ca7: $ea $41 $5f
	pop  de                                          ; $5caa: $d1
	dec  b                                           ; $5cab: $05
	rla                                              ; $5cac: $17
	ld   h, c                                        ; $5cad: $61
	inc  [hl]                                        ; $5cae: $34
	ld   [$ce6e], a                                  ; $5caf: $ea $6e $ce
	rst  $38                                         ; $5cb2: $ff
	ret                                              ; $5cb3: $c9


	push hl                                          ; $5cb4: $e5
	ld   de, $11ef                                   ; $5cb5: $11 $ef $11
	ld   b, c                                        ; $5cb8: $41
	add  a                                           ; $5cb9: $87
	ld   sp, $b75f                                   ; $5cba: $31 $5f $b7
	cp   $cf                                         ; $5cbd: $fe $cf
	db   $fd                                         ; $5cbf: $fd
	ld   a, [hl]                                     ; $5cc0: $7e
	ld   de, $e11f                                   ; $5cc1: $11 $1f $e1
	ld   h, c                                        ; $5cc4: $61
	inc  e                                           ; $5cc5: $1c
	ld   h, h                                        ; $5cc6: $64
	inc  e                                           ; $5cc7: $1c
	ld   sp, hl                                      ; $5cc8: $f9
	rst  $28                                         ; $5cc9: $ef
	xor  a                                           ; $5cca: $af
	rst  $38                                         ; $5ccb: $ff
	xor  b                                           ; $5ccc: $a8
	ld   [hl], c                                     ; $5ccd: $71
	ld   e, $f1                                      ; $5cce: $1e $f1
	ld   a, [de]                                     ; $5cd0: $1a
	dec  d                                           ; $5cd1: $15
	or   a                                           ; $5cd2: $b7
	inc  d                                           ; $5cd3: $14
	rst  $38                                         ; $5cd4: $ff
	ld   a, a                                        ; $5cd5: $7f
	rst  JumpTable                                         ; $5cd6: $df
	rst  $38                                         ; $5cd7: $ff
	and  c                                           ; $5cd8: $a1
	add  c                                           ; $5cd9: $81
	rra                                              ; $5cda: $1f
	pop  af                                          ; $5cdb: $f1
	add  hl, de                                      ; $5cdc: $19
	rla                                              ; $5cdd: $17
	rst  $28                                         ; $5cde: $ef
	jr   @+$01                                       ; $5cdf: $18 $ff

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ce1: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ce2: $cf
	rst  $38                                         ; $5ce3: $ff
	ld   de, $1f11                                   ; $5ce4: $11 $11 $1f
	ld   h, c                                        ; $5ce7: $61
	rla                                              ; $5ce8: $17
	ld   e, a                                        ; $5ce9: $5f
	rst  JumpTable                                         ; $5cea: $df
	rra                                              ; $5ceb: $1f
	db   $f4                                         ; $5cec: $f4
	rst  $38                                         ; $5ced: $ff
	rst  $38                                         ; $5cee: $ff
	rst  $38                                         ; $5cef: $ff
	ld   de, rAUD1LEN                                   ; $5cf0: $11 $11 $ff
	ld   de, $fd3c                                   ; $5cf3: $11 $3c $fd
	pop  af                                          ; $5cf6: $f1
	rst  $38                                         ; $5cf7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cf8: $cf
	ld   a, d                                        ; $5cf9: $7a
	rst  $38                                         ; $5cfa: $ff
	pop  af                                          ; $5cfb: $f1
	ld   de, $f11f                                   ; $5cfc: $11 $1f $f1
	ld   de, $ffff                                   ; $5cff: $11 $ff $ff
	rra                                              ; $5d02: $1f
	rst  $30                                         ; $5d03: $f7
	pop  af                                          ; $5d04: $f1
	ld   e, l                                        ; $5d05: $5d
	rst  $38                                         ; $5d06: $ff
	ld   de, rAUD1LEN                                   ; $5d07: $11 $11 $ff
	ld   de, $ff1f                                   ; $5d0a: $11 $1f $ff
	pop  af                                          ; $5d0d: $f1
	rst  $38                                         ; $5d0e: $ff
	ld   e, a                                        ; $5d0f: $5f
	dec  d                                           ; $5d10: $15
	cp   a                                           ; $5d11: $bf
	pop  af                                          ; $5d12: $f1
	ld   de, $f11f                                   ; $5d13: $11 $1f $f1
	ld   de, $ffff                                   ; $5d16: $11 $ff $ff
	ld   a, [de]                                     ; $5d19: $1a
	ld   a, [$2bf1]                                  ; $5d1a: $fa $f1 $2b
	rst  $38                                         ; $5d1d: $ff
	ld   de, rAUD1LEN                                   ; $5d1e: $11 $11 $ff
	ld   de, $ff1c                                   ; $5d21: $11 $1c $ff
	pop  af                                          ; $5d24: $f1
	rra                                              ; $5d25: $1f
	rst  $28                                         ; $5d26: $ef
	ld   de, $f5bf                                   ; $5d27: $11 $bf $f5
	ld   de, $f119                                   ; $5d2a: $11 $19 $f1
	ld   de, $ff5f                                   ; $5d2d: $11 $5f $ff
	ld   de, $f2ff                                   ; $5d30: $11 $ff $f2
	ld   d, $9f                                      ; $5d33: $16 $9f
	pop  af                                          ; $5d35: $f1
	ld   de, $f11f                                   ; $5d36: $11 $1f $f1
	ld   de, $fbff                                   ; $5d39: $11 $ff $fb
	dec  e                                           ; $5d3c: $1d
	rst  $38                                         ; $5d3d: $ff
	sub  c                                           ; $5d3e: $91
	dec  d                                           ; $5d3f: $15
	rst  $38                                         ; $5d40: $ff
	ld   de, rAUD1LEN                                   ; $5d41: $11 $11 $ff
	ld   de, $ff19                                   ; $5d44: $11 $19 $ff
	pop  af                                          ; $5d47: $f1
	rra                                              ; $5d48: $1f
	rst  $38                                         ; $5d49: $ff
	ld   hl, $ff1f                                   ; $5d4a: $21 $1f $ff
	ld   de, $fe11                                   ; $5d4d: $11 $11 $fe
	ld   de, $ff1f                                   ; $5d50: $11 $1f $ff
	ld   d, c                                        ; $5d53: $51
	xor  d                                           ; $5d54: $aa
	ei                                               ; $5d55: $fb
	ld   h, c                                        ; $5d56: $61
	ccf                                              ; $5d57: $3f
	rst  $30                                         ; $5d58: $f7
	ld   de, $f91f                                   ; $5d59: $11 $1f $f9
	pop  bc                                          ; $5d5c: $c1
	ld   c, h                                        ; $5d5d: $4c
	rst  $38                                         ; $5d5e: $ff
	ld   [de], a                                     ; $5d5f: $12
	ld   de, $f1df                                   ; $5d60: $11 $df $f1
	rst  JumpTable                                         ; $5d63: $df
	cp   e                                           ; $5d64: $bb
	ld   de, $af1f                                   ; $5d65: $11 $1f $af
	pop  de                                          ; $5d68: $d1
	ld   c, l                                        ; $5d69: $4d
	rst  $38                                         ; $5d6a: $ff
	ld   [hl], $11                                   ; $5d6b: $36 $11
	xor  a                                           ; $5d6d: $af
	db   $fd                                         ; $5d6e: $fd
	rst  $30                                         ; $5d6f: $f7
	ld   b, e                                        ; $5d70: $43
	ld   de, $7ffb                                   ; $5d71: $11 $fb $7f
	cp   c                                           ; $5d74: $b9
	adc  a                                           ; $5d75: $8f
	di                                               ; $5d76: $f3
	or   d                                           ; $5d77: $b2
	ld   de, $ffef                                   ; $5d78: $11 $ef $ff
	ldh  a, [c]                                      ; $5d7b: $f2
	ld   de, $f311                                   ; $5d7c: $11 $11 $f3
	rst  JumpTable                                         ; $5d7f: $df
	xor  e                                           ; $5d80: $ab
	rst  $38                                         ; $5d81: $ff
	jp   nc, $1181                                   ; $5d82: $d2 $81 $11

	rst  $38                                         ; $5d85: $ff
	rst  $38                                         ; $5d86: $ff
	and  l                                           ; $5d87: $a5
	ld   de, $f111                                   ; $5d88: $11 $11 $f1
	rst  $38                                         ; $5d8b: $ff
	xor  l                                           ; $5d8c: $ad
	rst  $38                                         ; $5d8d: $ff
	ld   d, h                                        ; $5d8e: $54
	ld   h, c                                        ; $5d8f: $61
	ld   de, $ffff                                   ; $5d90: $11 $ff $ff
	inc  [hl]                                        ; $5d93: $34
	ld   de, $f111                                   ; $5d94: $11 $11 $f1
	rst  $38                                         ; $5d97: $ff
	cp   a                                           ; $5d98: $bf
	cp   a                                           ; $5d99: $bf
	ld   d, h                                        ; $5d9a: $54
	ld   [hl], c                                     ; $5d9b: $71
	ld   de, $ffff                                   ; $5d9c: $11 $ff $ff
	ld   hl, $1111                                   ; $5d9f: $21 $11 $11
	ldh  a, [c]                                      ; $5da2: $f2
	rst  $38                                         ; $5da3: $ff
	rst  $38                                         ; $5da4: $ff
	cp   a                                           ; $5da5: $bf
	ld   b, c                                        ; $5da6: $41
	add  c                                           ; $5da7: $81
	ld   de, $ffff                                   ; $5da8: $11 $ff $ff
	ld   h, c                                        ; $5dab: $61
	ld   de, $fd11                                   ; $5dac: $11 $11 $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5daf: $cf
	rst  $38                                         ; $5db0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5db1: $cf
	pop  af                                          ; $5db2: $f1
	sub  c                                           ; $5db3: $91
	ld   de, $ffff                                   ; $5db4: $11 $ff $ff
	pop  af                                          ; $5db7: $f1
	ld   de, $1f11                                   ; $5db8: $11 $11 $1f
	ccf                                              ; $5dbb: $3f
	rst  $38                                         ; $5dbc: $ff
	rst  $30                                         ; $5dbd: $f7
	pop  af                                          ; $5dbe: $f1
	ld   d, $11                                      ; $5dbf: $16 $11
	ld   c, a                                        ; $5dc1: $4f
	rst  $38                                         ; $5dc2: $ff
	pop  af                                          ; $5dc3: $f1
	ld   de, $1511                                   ; $5dc4: $11 $11 $15
	or   $ff                                         ; $5dc7: $f6 $ff
	rst  $38                                         ; $5dc9: $ff
	ld   l, d                                        ; $5dca: $6a
	ld   de, $6a11                                   ; $5dcb: $11 $11 $6a
	rst  $38                                         ; $5dce: $ff
	rst  $38                                         ; $5dcf: $ff
	ld   de, $1111                                   ; $5dd0: $11 $11 $11
	cp   a                                           ; $5dd3: $bf
	rst  $28                                         ; $5dd4: $ef
	rst  $38                                         ; $5dd5: $ff
	pop  af                                          ; $5dd6: $f1
	ld   h, c                                        ; $5dd7: $61
	ld   hl, $ef19                                   ; $5dd8: $21 $19 $ef
	rst  $38                                         ; $5ddb: $ff
	pop  af                                          ; $5ddc: $f1
	ld   de, $1111                                   ; $5ddd: $11 $11 $11
	db   $ed                                         ; $5de0: $ed
	rst  $38                                         ; $5de1: $ff
	rst  $38                                         ; $5de2: $ff
	ld   de, $5111                                   ; $5de3: $11 $11 $51
	ld   a, b                                        ; $5de6: $78
	rst  $38                                         ; $5de7: $ff
	rst  $38                                         ; $5de8: $ff
	ld   de, $1111                                   ; $5de9: $11 $11 $11
	rra                                              ; $5dec: $1f
	ld   a, a                                        ; $5ded: $7f
	rst  $38                                         ; $5dee: $ff
	pop  af                                          ; $5def: $f1
	ld   de, $1919                                   ; $5df0: $11 $19 $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5df3: $cf
	rst  $38                                         ; $5df4: $ff
	pop  af                                          ; $5df5: $f1
	ld   de, $1111                                   ; $5df6: $11 $11 $11
	rra                                              ; $5df9: $1f
	rst  $38                                         ; $5dfa: $ff
	rst  $38                                         ; $5dfb: $ff
	ld   d, c                                        ; $5dfc: $51
	ld   de, $1b3d                                   ; $5dfd: $11 $3d $1b
	adc  a                                           ; $5e00: $8f
	rst  $38                                         ; $5e01: $ff
	pop  af                                          ; $5e02: $f1
	ld   de, $1111                                   ; $5e03: $11 $11 $11
	xor  $ff                                         ; $5e06: $ee $ff
	rst  $38                                         ; $5e08: $ff
	ld   de, $f511                                   ; $5e09: $11 $11 $f5
	ld   e, h                                        ; $5e0c: $5c
	cp   a                                           ; $5e0d: $bf
	rst  $38                                         ; $5e0e: $ff
	pop  af                                          ; $5e0f: $f1
	ld   de, $1111                                   ; $5e10: $11 $11 $11
	rra                                              ; $5e13: $1f
	rst  $38                                         ; $5e14: $ff
	rst  $38                                         ; $5e15: $ff
	ld   de, $af11                                   ; $5e16: $11 $11 $af
	ld   a, [hl+]                                    ; $5e19: $2a
	ld   c, a                                        ; $5e1a: $4f
	rst  $38                                         ; $5e1b: $ff
	ldh  a, [c]                                      ; $5e1c: $f2
	ld   de, $1111                                   ; $5e1d: $11 $11 $11
	jp   c, $ffff                                    ; $5e20: $da $ff $ff

	ld   de, $f411                                   ; $5e23: $11 $11 $f4
	halt                                             ; $5e26: $76
	ld   e, a                                        ; $5e27: $5f
	rst  $38                                         ; $5e28: $ff
	ldh  a, [c]                                      ; $5e29: $f2
	ld   de, $1111                                   ; $5e2a: $11 $11 $11
	rra                                              ; $5e2d: $1f
	rst  JumpTable                                         ; $5e2e: $df
	rst  $38                                         ; $5e2f: $ff
	pop  hl                                          ; $5e30: $e1
	ld   de, $1f9f                                   ; $5e31: $11 $9f $1f
	inc  e                                           ; $5e34: $1c
	rst  $38                                         ; $5e35: $ff
	or   $41                                         ; $5e36: $f6 $41
	ld   de, $3f11                                   ; $5e38: $11 $11 $3f
	rst  $38                                         ; $5e3b: $ff
	db   $fd                                         ; $5e3c: $fd
	ld   [hl], c                                     ; $5e3d: $71
	ld   de, $1cdf                                   ; $5e3e: $11 $df $1c
	rra                                              ; $5e41: $1f
	rst  $38                                         ; $5e42: $ff
	di                                               ; $5e43: $f3
	ld   b, c                                        ; $5e44: $41
	ld   [de], a                                     ; $5e45: $12
	ld   hl, $af1f                                   ; $5e46: $21 $1f $af
	cp   $f1                                         ; $5e49: $fe $f1
	ld   de, $7c1f                                   ; $5e4b: $11 $1f $7c
	pop  bc                                          ; $5e4e: $c1
	rst  $38                                         ; $5e4f: $ff
	rst  $38                                         ; $5e50: $ff
	ld   d, c                                        ; $5e51: $51
	ld   de, $1f11                                   ; $5e52: $11 $11 $1f
	rst  $38                                         ; $5e55: $ff
	ei                                               ; $5e56: $fb
	pop  bc                                          ; $5e57: $c1
	ld   de, $1f1f                                   ; $5e58: $11 $1f $1f
	ld   l, b                                        ; $5e5b: $68
	rst  $38                                         ; $5e5c: $ff
	push af                                          ; $5e5d: $f5
	ld   h, c                                        ; $5e5e: $61
	inc  de                                          ; $5e5f: $13
	ld   de, $fa16                                   ; $5e60: $11 $16 $fa
	rst  $38                                         ; $5e63: $ff
	add  e                                           ; $5e64: $83
	ld   de, $f51f                                   ; $5e65: $11 $1f $f5
	pop  af                                          ; $5e68: $f1
	rst  $38                                         ; $5e69: $ff
	rst  $38                                         ; $5e6a: $ff
	ld   c, e                                        ; $5e6b: $4b
	ld   de, $1111                                   ; $5e6c: $11 $11 $11
	ld   sp, hl                                      ; $5e6f: $f9
	rst  $38                                         ; $5e70: $ff
	ld   l, e                                        ; $5e71: $6b
	ld   de, $f11f                                   ; $5e72: $11 $1f $f1
	pop  af                                          ; $5e75: $f1
	rst  $38                                         ; $5e76: $ff
	rst  $38                                         ; $5e77: $ff
	ld   e, l                                        ; $5e78: $5d
	ld   de, $1121                                   ; $5e79: $11 $21 $11
	rst  ToBoot                                         ; $5e7c: $c7
	rst  $38                                         ; $5e7d: $ff
	rst  $28                                         ; $5e7e: $ef
	ld   de, $f511                                   ; $5e7f: $11 $11 $f5
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e82: $cf
	rra                                              ; $5e83: $1f
	rst  $38                                         ; $5e84: $ff
	cp   $61                                         ; $5e85: $fe $61

jr_0f9_5e87:
	ld   hl, $1f11                                   ; $5e87: $21 $11 $1f
	rra                                              ; $5e8a: $1f
	ei                                               ; $5e8b: $fb
	pop  af                                          ; $5e8c: $f1
	ld   b, c                                        ; $5e8d: $41
	cp   $1f                                         ; $5e8e: $fe $1f
	rra                                              ; $5e90: $1f
	rst  $38                                         ; $5e91: $ff
	ei                                               ; $5e92: $fb
	pop  af                                          ; $5e93: $f1
	ld   de, $1112                                   ; $5e94: $11 $12 $11
	ld   e, b                                        ; $5e97: $58
	rst  $38                                         ; $5e98: $ff
	rst  $38                                         ; $5e99: $ff
	ld   [de], a                                     ; $5e9a: $12
	rra                                              ; $5e9b: $1f
	pop  hl                                          ; $5e9c: $e1
	pop  af                                          ; $5e9d: $f1
	call c, $ffff                                    ; $5e9e: $dc $ff $ff
	ld   de, $1111                                   ; $5ea1: $11 $11 $11
	and  c                                           ; $5ea4: $a1
	rst  $38                                         ; $5ea5: $ff
	rst  $38                                         ; $5ea6: $ff
	add  c                                           ; $5ea7: $81
	ld   h, c                                        ; $5ea8: $61
	pop  af                                          ; $5ea9: $f1
	and  e                                           ; $5eaa: $a3
	rra                                              ; $5eab: $1f
	xor  a                                           ; $5eac: $af
	rst  $38                                         ; $5ead: $ff
	add  c                                           ; $5eae: $81
	ld   h, c                                        ; $5eaf: $61
	ld   [hl], c                                     ; $5eb0: $71
	ld   de, $ff18                                   ; $5eb1: $11 $18 $ff
	rst  $38                                         ; $5eb4: $ff
	ld   a, [de]                                     ; $5eb5: $1a
	rra                                              ; $5eb6: $1f
	ld   [hl], l                                     ; $5eb7: $75
	sub  c                                           ; $5eb8: $91
	or   l                                           ; $5eb9: $b5
	rst  $38                                         ; $5eba: $ff
	rst  $38                                         ; $5ebb: $ff
	dec  d                                           ; $5ebc: $15
	ld   [de], a                                     ; $5ebd: $12
	ld   de, $ff61                                   ; $5ebe: $11 $61 $ff
	xor  a                                           ; $5ec1: $af
	adc  h                                           ; $5ec2: $8c
	ld   a, e                                        ; $5ec3: $7b
	pop  af                                          ; $5ec4: $f1
	pop  af                                          ; $5ec5: $f1
	jr   c, jr_0f9_5e87                              ; $5ec6: $38 $bf

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ec8: $cf
	ld   d, $33                                      ; $5ec9: $16 $33
	ld   [hl], c                                     ; $5ecb: $71
	ld   hl, $f278                                   ; $5ecc: $21 $78 $f2
	call nz, Call_0f9_6f6c                           ; $5ecf: $c4 $6c $6f
	ccf                                              ; $5ed2: $3f
	dec  [hl]                                        ; $5ed3: $35
	push de                                          ; $5ed4: $d5
	rst  $30                                         ; $5ed5: $f7
	db   $f4                                         ; $5ed6: $f4
	ld   h, a                                        ; $5ed7: $67
	add  hl, hl                                      ; $5ed8: $29
	dec  de                                          ; $5ed9: $1b
	ld   l, c                                        ; $5eda: $69
	or   c                                           ; $5edb: $b1
	ld   d, c                                        ; $5edc: $51
	jr   c, jr_0f9_5f4e                              ; $5edd: $38 $6f

	cp   d                                           ; $5edf: $ba
	sub  h                                           ; $5ee0: $94
	reti                                             ; $5ee1: $d9


	ld   a, [$5bca]                                  ; $5ee2: $fa $ca $5b
	ld   c, [hl]                                     ; $5ee5: $4e
	ld   e, b                                        ; $5ee6: $58
	ld   [hl], $a4                                   ; $5ee7: $36 $a4
	sub  c                                           ; $5ee9: $91
	ld   h, c                                        ; $5eea: $61
	ld   h, [hl]                                     ; $5eeb: $66
	ld   l, a                                        ; $5eec: $6f
	ccf                                              ; $5eed: $3f
	ld   c, l                                        ; $5eee: $4d
	jp   z, $f8f6                                    ; $5eef: $ca $f6 $f8

	ld   a, [$28bc]                                  ; $5ef2: $fa $bc $28
	ld   c, h                                        ; $5ef5: $4c
	inc  h                                           ; $5ef6: $24
	ld   de, $8321                                   ; $5ef7: $11 $21 $83
	call nc, $af99                                   ; $5efa: $d4 $99 $af
	cp   a                                           ; $5efd: $bf
	adc  a                                           ; $5efe: $8f
	sbc  $eb                                         ; $5eff: $de $eb
	and  $a1                                         ; $5f01: $e6 $a1
	ld   h, l                                        ; $5f03: $65
	inc  hl                                          ; $5f04: $23
	inc  d                                           ; $5f05: $14
	dec  d                                           ; $5f06: $15
	inc  h                                           ; $5f07: $24
	and  [hl]                                        ; $5f08: $a6
	sub  $ea                                         ; $5f09: $d6 $ea
	rst  JumpTable                                         ; $5f0b: $df
	cp   a                                           ; $5f0c: $bf
	cp   a                                           ; $5f0d: $bf
	xor  h                                           ; $5f0e: $ac
	push de                                          ; $5f0f: $d5
	add  c                                           ; $5f10: $81
	or   c                                           ; $5f11: $b1
	ld   sp, $1713                                   ; $5f12: $31 $13 $17
	ld   a, [de]                                     ; $5f15: $1a
	ld   h, a                                        ; $5f16: $67
	or   a                                           ; $5f17: $b7
	ld   sp, hl                                      ; $5f18: $f9
	db   $fc                                         ; $5f19: $fc
	rst  $38                                         ; $5f1a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f1b: $cf
	sbc  a                                           ; $5f1c: $9f
	ld   a, h                                        ; $5f1d: $7c
	ld   [hl-], a                                    ; $5f1e: $32
	ld   [hl], c                                     ; $5f1f: $71
	ld   [hl], c                                     ; $5f20: $71
	ld   b, c                                        ; $5f21: $41
	inc  d                                           ; $5f22: $14
	inc  e                                           ; $5f23: $1c
	ld   c, h                                        ; $5f24: $4c
	ld   l, d                                        ; $5f25: $6a
	ld   sp, hl                                      ; $5f26: $f9
	ld   a, [$effe]                                  ; $5f27: $fa $fe $ef
	xor  a                                           ; $5f2a: $af
	ld   l, e                                        ; $5f2b: $6b
	dec  d                                           ; $5f2c: $15
	ld   [hl], c                                     ; $5f2d: $71
	ld   h, c                                        ; $5f2e: $61
	ld   sp, $1c23                                   ; $5f2f: $31 $23 $1c
	inc  e                                           ; $5f32: $1c
	ld   c, h                                        ; $5f33: $4c
	db   $eb                                         ; $5f34: $eb
	ld   hl, sp-$06                                  ; $5f35: $f8 $fa
	rst  $38                                         ; $5f37: $ff
	rst  JumpTable                                         ; $5f38: $df
	ld   e, l                                        ; $5f39: $5d
	ld   d, $53                                      ; $5f3a: $16 $53
	ld   h, c                                        ; $5f3c: $61
	ld   b, c                                        ; $5f3d: $41
	ld   [hl-], a                                    ; $5f3e: $32
	ld   a, [hl+]                                    ; $5f3f: $2a
	ld   c, h                                        ; $5f40: $4c
	ld   e, e                                        ; $5f41: $5b
	call c, $fefa                                    ; $5f42: $dc $fa $fe
	rst  $38                                         ; $5f45: $ff
	cp   a                                           ; $5f46: $bf
	ld   l, c                                        ; $5f47: $69
	ld   d, $72                                      ; $5f48: $16 $72
	ld   h, c                                        ; $5f4a: $61
	ld   sp, $1c23                                   ; $5f4b: $31 $23 $1c

jr_0f9_5f4e:
	dec  hl                                          ; $5f4e: $2b
	ld   c, l                                        ; $5f4f: $4d
	db   $eb                                         ; $5f50: $eb
	ld   hl, sp-$05                                  ; $5f51: $f8 $fb
	rst  $38                                         ; $5f53: $ff
	cp   a                                           ; $5f54: $bf
	ld   c, l                                        ; $5f55: $4d
	dec  d                                           ; $5f56: $15
	ld   h, e                                        ; $5f57: $63
	add  c                                           ; $5f58: $81
	ld   sp, $1a13                                   ; $5f59: $31 $13 $1a
	ld   l, d                                        ; $5f5c: $6a
	ld   a, b                                        ; $5f5d: $78
	db   $fc                                         ; $5f5e: $fc
	cp   $ff                                         ; $5f5f: $fe $ff
	rst  $28                                         ; $5f61: $ef
	cp   a                                           ; $5f62: $bf
	adc  b                                           ; $5f63: $88
	ld   b, c                                        ; $5f64: $41
	pop  bc                                          ; $5f65: $c1
	add  c                                           ; $5f66: $81
	ld   de, $1c1a                                   ; $5f67: $11 $1a $1c
	ld   d, a                                        ; $5f6a: $57
	and  h                                           ; $5f6b: $a4
	ld   hl, sp-$05                                  ; $5f6c: $f8 $fb
	rst  $28                                         ; $5f6e: $ef
	cp   a                                           ; $5f6f: $bf
	adc  a                                           ; $5f70: $8f
	ld   a, c                                        ; $5f71: $79
	ld   b, c                                        ; $5f72: $41
	or   c                                           ; $5f73: $b1
	or   c                                           ; $5f74: $b1
	ld   de, $1a1a                                   ; $5f75: $11 $1a $1a
	sub  l                                           ; $5f78: $95
	or   e                                           ; $5f79: $b3
	ei                                               ; $5f7a: $fb
	rst  $38                                         ; $5f7b: $ff
	adc  a                                           ; $5f7c: $8f
	xor  a                                           ; $5f7d: $af
	adc  $b1                                         ; $5f7e: $ce $b1
	ld   [hl], c                                     ; $5f80: $71
	call nz, $1584                                   ; $5f81: $c4 $84 $15
	ld   e, $38                                      ; $5f84: $1e $38
	pop  de                                          ; $5f86: $d1
	pop  de                                          ; $5f87: $d1
	ei                                               ; $5f88: $fb
	rst  $28                                         ; $5f89: $ef
	ld   c, a                                        ; $5f8a: $4f
	adc  a                                           ; $5f8b: $8f
	xor  h                                           ; $5f8c: $ac
	or   c                                           ; $5f8d: $b1
	and  c                                           ; $5f8e: $a1
	halt                                             ; $5f8f: $76
	ld   a, d                                        ; $5f90: $7a
	dec  d                                           ; $5f91: $15
	add  hl, de                                      ; $5f92: $19
	push bc                                          ; $5f93: $c5
	db   $f4                                         ; $5f94: $f4
	add  [hl]                                        ; $5f95: $86
	adc  a                                           ; $5f96: $8f
	ld   a, a                                        ; $5f97: $7f
	ld   c, l                                        ; $5f98: $4d
	rst  $38                                         ; $5f99: $ff
	di                                               ; $5f9a: $f3
	pop  de                                          ; $5f9b: $d1
	ld   hl, $1f1f                                   ; $5f9c: $21 $1f $1f
	inc  d                                           ; $5f9f: $14
	ld   [hl], $f1                                   ; $5fa0: $36 $f1
	pop  af                                          ; $5fa2: $f1
	ld   l, b                                        ; $5fa3: $68
	ccf                                              ; $5fa4: $3f
	rra                                              ; $5fa5: $1f
	inc  l                                           ; $5fa6: $2c
	db   $fd                                         ; $5fa7: $fd
	pop  af                                          ; $5fa8: $f1
	pop  de                                          ; $5fa9: $d1
	ld   de, $1c1f                                   ; $5faa: $11 $1f $1c
	ld   hl, $f6d3                                   ; $5fad: $21 $d3 $f6
	cp   a                                           ; $5fb0: $bf
	rra                                              ; $5fb1: $1f
	rra                                              ; $5fb2: $1f
	ld   h, [hl]                                     ; $5fb3: $66
	pop  af                                          ; $5fb4: $f1
	db   $fd                                         ; $5fb5: $fd
	rst  $30                                         ; $5fb6: $f7
	inc  sp                                          ; $5fb7: $33
	ld   de, $151f                                   ; $5fb8: $11 $1f $15
	pop  af                                          ; $5fbb: $f1
	pop  af                                          ; $5fbc: $f1
	ld   sp, hl                                      ; $5fbd: $f9
	ld   e, a                                        ; $5fbe: $5f
	rra                                              ; $5fbf: $1f
	rra                                              ; $5fc0: $1f
	ld   [hl], c                                     ; $5fc1: $71
	pop  af                                          ; $5fc2: $f1
	db   $fd                                         ; $5fc3: $fd
	push af                                          ; $5fc4: $f5
	jr   jr_0f9_5fe0                                 ; $5fc5: $18 $19

	ld   de, $f5a1                                   ; $5fc7: $11 $a1 $f5
	and  a                                           ; $5fca: $a7
	xor  a                                           ; $5fcb: $af
	rra                                              ; $5fcc: $1f
	ld   de, $f1f1                                   ; $5fcd: $11 $f1 $f1
	db   $f4                                         ; $5fd0: $f4
	rst  $38                                         ; $5fd1: $ff
	xor  a                                           ; $5fd2: $af
	add  hl, de                                      ; $5fd3: $19
	ld   de, $f111                                   ; $5fd4: $11 $11 $f1
	rst  $38                                         ; $5fd7: $ff
	rra                                              ; $5fd8: $1f
	ccf                                              ; $5fd9: $3f
	ld   h, [hl]                                     ; $5fda: $66
	pop  af                                          ; $5fdb: $f1
	pop  af                                          ; $5fdc: $f1
	push af                                          ; $5fdd: $f5
	cpl                                              ; $5fde: $2f
	cpl                                              ; $5fdf: $2f

jr_0f9_5fe0:
	rst  JumpTable                                         ; $5fe0: $df
	ld   [hl+], a                                    ; $5fe1: $22
	and  c                                           ; $5fe2: $a1
	ld   h, c                                        ; $5fe3: $61
	rra                                              ; $5fe4: $1f
	sbc  a                                           ; $5fe5: $9f
	pop  af                                          ; $5fe6: $f1
	db   $db                                         ; $5fe7: $db
	push af                                          ; $5fe8: $f5
	rra                                              ; $5fe9: $1f
	rra                                              ; $5fea: $1f
	ld   c, a                                        ; $5feb: $4f
	ld   de, $f9f4                                   ; $5fec: $11 $f4 $f9
	jp   $114b                                       ; $5fef: $c3 $4b $11


	ld   de, $f1f3                                   ; $5ff2: $11 $f3 $f1
	ld   e, a                                        ; $5ff5: $5f
	rst  $38                                         ; $5ff6: $ff
	rra                                              ; $5ff7: $1f
	inc  de                                          ; $5ff8: $13
	pop  af                                          ; $5ff9: $f1
	pop  af                                          ; $5ffa: $f1
	rst  $38                                         ; $5ffb: $ff
	rst  $38                                         ; $5ffc: $ff
	ld   e, $1f                                      ; $5ffd: $1e $1f
	ld   de, $af11                                   ; $5fff: $11 $11 $af
	rra                                              ; $6002: $1f
	rla                                              ; $6003: $17
	rst  $38                                         ; $6004: $ff
	pop  af                                          ; $6005: $f1
	db   $f4                                         ; $6006: $f4
	ld   e, a                                        ; $6007: $5f
	rra                                              ; $6008: $1f
	rra                                              ; $6009: $1f
	rst  $38                                         ; $600a: $ff
	pop  af                                          ; $600b: $f1
	push af                                          ; $600c: $f5
	pop  hl                                          ; $600d: $e1
	ld   de, $f11f                                   ; $600e: $11 $1f $f1
	pop  af                                          ; $6011: $f1
	ei                                               ; $6012: $fb
	ld   sp, hl                                      ; $6013: $f9
	rra                                              ; $6014: $1f
	rra                                              ; $6015: $1f
	ld   sp, $f7e1                                   ; $6016: $31 $e1 $f7
	rst  $38                                         ; $6019: $ff
	ld   a, a                                        ; $601a: $7f
	dec  l                                           ; $601b: $2d
	ld   de, rAUD1LEN                                   ; $601c: $11 $11 $ff
	rra                                              ; $601f: $1f
	rra                                              ; $6020: $1f
	rst  JumpTable                                         ; $6021: $df
	pop  af                                          ; $6022: $f1
	pop  af                                          ; $6023: $f1
	cp   d                                           ; $6024: $ba
	rra                                              ; $6025: $1f
	rra                                              ; $6026: $1f
	xor  a                                           ; $6027: $af
	push af                                          ; $6028: $f5
	pop  af                                          ; $6029: $f1
	add  c                                           ; $602a: $81
	ld   de, $131f                                   ; $602b: $11 $1f $13
	pop  af                                          ; $602e: $f1
	ldh  a, [c]                                      ; $602f: $f2
	pop  af                                          ; $6030: $f1
	rra                                              ; $6031: $1f
	rra                                              ; $6032: $1f
	dec  de                                          ; $6033: $1b
	jp   nc, $fff4                                   ; $6034: $d2 $f4 $ff

	call c, $1118                                    ; $6037: $dc $18 $11
	ld   de, $1ff8                                   ; $603a: $11 $f8 $1f
	rra                                              ; $603d: $1f
	ld   l, a                                        ; $603e: $6f
	sub  c                                           ; $603f: $91
	pop  af                                          ; $6040: $f1
	db   $d3                                         ; $6041: $d3
	ccf                                              ; $6042: $3f
	rra                                              ; $6043: $1f
	ld   l, a                                        ; $6044: $6f
	ld   a, [$71f1]                                  ; $6045: $fa $f1 $71
	ld   de, $111f                                   ; $6048: $11 $1f $11
	pop  af                                          ; $604b: $f1
	pop  af                                          ; $604c: $f1
	pop  af                                          ; $604d: $f1
	rra                                              ; $604e: $1f
	rra                                              ; $604f: $1f
	inc  e                                           ; $6050: $1c
	pop  af                                          ; $6051: $f1
	ld   hl, sp-$01                                  ; $6052: $f8 $ff
	ret  z                                           ; $6054: $c8

	ld   a, [hl+]                                    ; $6055: $2a
	ld   de, rAUD1LEN                                   ; $6056: $11 $11 $ff
	rra                                              ; $6059: $1f
	rra                                              ; $605a: $1f
	ret  z                                           ; $605b: $c8

	pop  af                                          ; $605c: $f1
	ldh  a, [c]                                      ; $605d: $f2
	ld   [hl], $1f                                   ; $605e: $36 $1f
	rra                                              ; $6060: $1f
	sbc  $fe                                         ; $6061: $de $fe
	and  c                                           ; $6063: $a1
	add  c                                           ; $6064: $81
	ld   de, $111f                                   ; $6065: $11 $1f $11
	pop  af                                          ; $6068: $f1
	push af                                          ; $6069: $f5
	or   $1f                                         ; $606a: $f6 $1f
	jr   jr_0f9_6089                                 ; $606c: $18 $1b

	pop  af                                          ; $606e: $f1
	ei                                               ; $606f: $fb
	rst  $38                                         ; $6070: $ff
	and  $3a                                         ; $6071: $e6 $3a
	ld   d, c                                        ; $6073: $51
	ld   de, $1fff                                   ; $6074: $11 $ff $1f
	ld   c, a                                        ; $6077: $4f
	pop  af                                          ; $6078: $f1
	pop  af                                          ; $6079: $f1
	db   $fd                                         ; $607a: $fd
	jr   jr_0f9_609c                                 ; $607b: $18 $1f

	ld   b, $ff                                      ; $607d: $06 $ff
	rst  $38                                         ; $607f: $ff
	or   d                                           ; $6080: $b2
	rst  ToBoot                                         ; $6081: $c7
	ld   de, $f11f                                   ; $6082: $11 $1f $f1
	ret                                              ; $6085: $c9


	rst  $38                                         ; $6086: $ff
	rra                                              ; $6087: $1f
	rra                                              ; $6088: $1f

jr_0f9_6089:
	pop  af                                          ; $6089: $f1
	ld   [hl], c                                     ; $608a: $71
	pop  af                                          ; $608b: $f1
	ld   c, a                                        ; $608c: $4f
	rst  $38                                         ; $608d: $ff
	db   $fc                                         ; $608e: $fc
	inc  l                                           ; $608f: $2c
	pop  de                                          ; $6090: $d1
	ld   de, $111f                                   ; $6091: $11 $1f $11
	ei                                               ; $6094: $fb
	pop  af                                          ; $6095: $f1
	ld   a, a                                        ; $6096: $7f
	rra                                              ; $6097: $1f
	ld   [de], a                                     ; $6098: $12
	rra                                              ; $6099: $1f
	pop  af                                          ; $609a: $f1
	sbc  l                                           ; $609b: $9d

jr_0f9_609c:
	rst  $38                                         ; $609c: $ff
	rst  $10                                         ; $609d: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $609e: $cf
	ld   hl, $fe11                                   ; $609f: $21 $11 $fe
	ld   a, [de]                                     ; $60a2: $1a
	rst  $38                                         ; $60a3: $ff
	or   c                                           ; $60a4: $b1
	pop  af                                          ; $60a5: $f1
	push af                                          ; $60a6: $f5
	ld   de, $138f                                   ; $60a7: $11 $8f $13
	rst  $38                                         ; $60aa: $ff
	db   $fc                                         ; $60ab: $fc
	rst  $10                                         ; $60ac: $d7
	rst  $30                                         ; $60ad: $f7
	ld   de, $f111                                   ; $60ae: $11 $11 $f1
	rra                                              ; $60b1: $1f
	rst  $38                                         ; $60b2: $ff
	dec  e                                           ; $60b3: $1d
	di                                               ; $60b4: $f3
	pop  af                                          ; $60b5: $f1
	ld   b, e                                        ; $60b6: $43
	rst  $38                                         ; $60b7: $ff
	add  hl, de                                      ; $60b8: $19
	rst  $38                                         ; $60b9: $ff
	call c, $c2af                                    ; $60ba: $dc $af $c2
	ld   de, $f11b                                   ; $60bd: $11 $1b $f1
	ld   l, a                                        ; $60c0: $6f
	db   $fd                                         ; $60c1: $fd
	rra                                              ; $60c2: $1f
	ld   l, a                                        ; $60c3: $6f
	and  c                                           ; $60c4: $a1
	ld   h, e                                        ; $60c5: $63
	pop  af                                          ; $60c6: $f1
	rra                                              ; $60c7: $1f
	cp   $6f                                         ; $60c8: $fe $6f
	rst  $38                                         ; $60ca: $ff
	inc  hl                                          ; $60cb: $23
	ld   de, $111f                                   ; $60cc: $11 $1f $11
	rst  $38                                         ; $60cf: $ff
	pop  af                                          ; $60d0: $f1
	rst  $38                                         ; $60d1: $ff
	ld   c, a                                        ; $60d2: $4f
	add  hl, de                                      ; $60d3: $19
	rra                                              ; $60d4: $1f
	or   c                                           ; $60d5: $b1
	ld   a, a                                        ; $60d6: $7f
	push af                                          ; $60d7: $f5
	rst  $28                                         ; $60d8: $ef
	ld   a, [$1131]                                  ; $60d9: $fa $31 $11
	sbc  a                                           ; $60dc: $9f
	ld   [de], a                                     ; $60dd: $12
	rst  $38                                         ; $60de: $ff
	and  c                                           ; $60df: $a1
	db   $fc                                         ; $60e0: $fc
	ld   a, [$1f37]                                  ; $60e1: $fa $37 $1f
	ld   de, $f3af                                   ; $60e4: $11 $af $f3
	rst  $38                                         ; $60e7: $ff
	pop  af                                          ; $60e8: $f1
	ld   d, c                                        ; $60e9: $51
	ld   de, $1ff1                                   ; $60ea: $11 $f1 $1f
	rst  $38                                         ; $60ed: $ff
	rra                                              ; $60ee: $1f
	db   $f4                                         ; $60ef: $f4
	pop  af                                          ; $60f0: $f1
	pop  hl                                          ; $60f1: $e1
	cp   [hl]                                        ; $60f2: $be
	ld   de, $5bff                                   ; $60f3: $11 $ff $5b
	rst  $38                                         ; $60f6: $ff
	sub  e                                           ; $60f7: $93
	ld   sp, $f111                                   ; $60f8: $31 $11 $f1
	rra                                              ; $60fb: $1f
	db   $fd                                         ; $60fc: $fd
	rra                                              ; $60fd: $1f
	db   $fd                                         ; $60fe: $fd
	rst  $20                                         ; $60ff: $e7
	or   c                                           ; $6100: $b1
	db   $f4                                         ; $6101: $f4
	ld   [de], a                                     ; $6102: $12
	rst  $38                                         ; $6103: $ff
	inc  l                                           ; $6104: $2c
	rst  $38                                         ; $6105: $ff
	jr   c, jr_0f9_6119                              ; $6106: $38 $11

	rla                                              ; $6108: $17
	pop  af                                          ; $6109: $f1
	rra                                              ; $610a: $1f
	ld   sp, hl                                      ; $610b: $f9
	rra                                              ; $610c: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $610d: $cf
	ret  c                                           ; $610e: $d8

	pop  bc                                          ; $610f: $c1
	pop  af                                          ; $6110: $f1

Jump_0f9_6111:
	inc  d                                           ; $6111: $14
	rst  $38                                         ; $6112: $ff
	cpl                                              ; $6113: $2f
	rst  $38                                         ; $6114: $ff
	ld   l, b                                        ; $6115: $68
	ld   de, $711f                                   ; $6116: $11 $1f $71

jr_0f9_6119:
	ccf                                              ; $6119: $3f
	pop  af                                          ; $611a: $f1
	ld   c, a                                        ; $611b: $4f
	sbc  a                                           ; $611c: $9f
	adc  a                                           ; $611d: $8f
	ld   b, c                                        ; $611e: $41
	pop  af                                          ; $611f: $f1
	ld   de, $3eff                                   ; $6120: $11 $ff $3e
	rst  $38                                         ; $6123: $ff
	ld   l, c                                        ; $6124: $69
	ld   de, $311f                                   ; $6125: $11 $1f $31
	ld   e, l                                        ; $6128: $5d
	pop  af                                          ; $6129: $f1
	ld   a, a                                        ; $612a: $7f
	ld   a, a                                        ; $612b: $7f
	ld   a, a                                        ; $612c: $7f
	ld   [hl+], a                                    ; $612d: $22
	pop  af                                          ; $612e: $f1
	ld   de, $3fff                                   ; $612f: $11 $ff $3f
	rst  $38                                         ; $6132: $ff
	ld   a, b                                        ; $6133: $78
	ld   de, $111f                                   ; $6134: $11 $1f $11
	inc  a                                           ; $6137: $3c
	pop  af                                          ; $6138: $f1
	rst  JumpTable                                         ; $6139: $df
	xor  a                                           ; $613a: $af
	ld   c, a                                        ; $613b: $4f
	dec  de                                          ; $613c: $1b
	pop  af                                          ; $613d: $f1
	ld   de, $6cfa                                   ; $613e: $11 $fa $6c
	cp   $5a                                         ; $6141: $fe $5a
	ld   de, $111f                                   ; $6143: $11 $1f $11
	rra                                              ; $6146: $1f
	pop  af                                          ; $6147: $f1
	rst  $38                                         ; $6148: $ff
	rst  $38                                         ; $6149: $ff
	cp   a                                           ; $614a: $bf
	rra                                              ; $614b: $1f
	push hl                                          ; $614c: $e5
	ld   [de], a                                     ; $614d: $12
	rst  $30                                         ; $614e: $f7
	adc  c                                           ; $614f: $89
	ld   sp, hl                                      ; $6150: $f9
	xor  b                                           ; $6151: $a8
	ld   de, $111f                                   ; $6152: $11 $1f $11
	rra                                              ; $6155: $1f
	pop  af                                          ; $6156: $f1
	cp   $ff                                         ; $6157: $fe $ff
	cp   a                                           ; $6159: $bf
	rra                                              ; $615a: $1f
	ret  c                                           ; $615b: $d8

	ld   de, $b8f5                                   ; $615c: $11 $f5 $b8
	ld   hl, sp-$75                                  ; $615f: $f8 $8b
	ld   de, $111f                                   ; $6161: $11 $1f $11
	ld   e, $f1                                      ; $6164: $1e $f1
	db   $fc                                         ; $6166: $fc
	rst  $38                                         ; $6167: $ff
	rst  $38                                         ; $6168: $ff
	rra                                              ; $6169: $1f
	call z, $f512                                    ; $616a: $cc $12 $f5
	rst  ToBoot                                         ; $616d: $c7
	push af                                          ; $616e: $f5
	ld   a, e                                        ; $616f: $7b
	ld   de, $111f                                   ; $6170: $11 $1f $11
	dec  de                                          ; $6173: $1b
	pop  af                                          ; $6174: $f1
	db   $fd                                         ; $6175: $fd
	rst  JumpTable                                         ; $6176: $df
	rst  $28                                         ; $6177: $ef
	rra                                              ; $6178: $1f
	db   $ec                                         ; $6179: $ec
	ld   [hl-], a                                    ; $617a: $32
	push af                                          ; $617b: $f5
	ret                                              ; $617c: $c9


	push af                                          ; $617d: $f5
	ld   e, e                                        ; $617e: $5b
	ld   bc, $111f                                   ; $617f: $01 $1f $11
	ld   d, $f1                                      ; $6182: $16 $f1
	db   $fc                                         ; $6184: $fc
	adc  $ef                                         ; $6185: $ce $ef
	dec  e                                           ; $6187: $1d
	db   $dd                                         ; $6188: $dd
	ld   h, d                                        ; $6189: $62
	or   $c9                                         ; $618a: $f6 $c9
	or   $3b                                         ; $618c: $f6 $3b
	ld   hl, $611d                                   ; $618e: $21 $1d $61
	ld   de, $adf1                                   ; $6191: $11 $f1 $ad
	sbc  [hl]                                        ; $6194: $9e
	xor  a                                           ; $6195: $af
	ld   a, b                                        ; $6196: $78
	ei                                               ; $6197: $fb
	pop  bc                                          ; $6198: $c1
	ld   sp, hl                                      ; $6199: $f9
	xor  d                                           ; $619a: $aa
	call $241c                                       ; $619b: $cd $1c $24
	inc  d                                           ; $619e: $14
	pop  de                                          ; $619f: $d1
	ld   de, $3cb6                                   ; $61a0: $11 $b6 $3c
	sbc  d                                           ; $61a3: $9a
	cp   a                                           ; $61a4: $bf
	di                                               ; $61a5: $f3
	ei                                               ; $61a6: $fb
	push hl                                          ; $61a7: $e5
	sbc  a                                           ; $61a8: $9f
	ld   e, [hl]                                     ; $61a9: $5e
	ld   l, a                                        ; $61aa: $6f
	jr   c, @-$7a                                    ; $61ab: $38 $84

	ld   sp, $51a6                                   ; $61ad: $31 $a6 $51
	ld   b, e                                        ; $61b0: $43
	ld   [hl], h                                     ; $61b1: $74
	and  [hl]                                        ; $61b2: $a6
	ld   l, l                                        ; $61b3: $6d
	xor  a                                           ; $61b4: $af
	ld   c, a                                        ; $61b5: $4f
	sbc  [hl]                                        ; $61b6: $9e
	adc  d                                           ; $61b7: $8a
	push af                                          ; $61b8: $f5
	rst  $20                                         ; $61b9: $e7
	db   $f4                                         ; $61ba: $f4
	and  a                                           ; $61bb: $a7
	ld   [hl], l                                     ; $61bc: $75
	ld   [hl], $5b                                   ; $61bd: $36 $5b
	ld   d, $1a                                      ; $61bf: $16 $1a
	dec  h                                           ; $61c1: $25
	ld   h, e                                        ; $61c2: $63
	db   $d3                                         ; $61c3: $d3
	or   $eb                                         ; $61c4: $f6 $eb
	adc  $6e                                         ; $61c6: $ce $6e
	ld   a, [hl]                                     ; $61c8: $7e
	sbc  h                                           ; $61c9: $9c
	cp   b                                           ; $61ca: $b8
	and  a                                           ; $61cb: $a7
	and  [hl]                                        ; $61cc: $a6
	sub  l                                           ; $61cd: $95
	sub  a                                           ; $61ce: $97
	inc  [hl]                                        ; $61cf: $34
	ld   d, $24                                      ; $61d0: $16 $24
	ld   b, e                                        ; $61d2: $43
	halt                                             ; $61d3: $76
	xor  b                                           ; $61d4: $a8
	xor  e                                           ; $61d5: $ab
	xor  h                                           ; $61d6: $ac
	xor  e                                           ; $61d7: $ab
	sbc  c                                           ; $61d8: $99
	cp   h                                           ; $61d9: $bc
	cp   c                                           ; $61da: $b9
	cp   d                                           ; $61db: $ba
	jp   z, Jump_0f9_78b8                            ; $61dc: $ca $b8 $78

	sub  [hl]                                        ; $61df: $96
	inc  hl                                          ; $61e0: $23
	ld   b, l                                        ; $61e1: $45
	inc  de                                          ; $61e2: $13
	dec  [hl]                                        ; $61e3: $35
	ld   d, [hl]                                     ; $61e4: $56
	sub  a                                           ; $61e5: $97
	xor  c                                           ; $61e6: $a9
	xor  b                                           ; $61e7: $a8
	xor  d                                           ; $61e8: $aa
	xor  e                                           ; $61e9: $ab
	xor  h                                           ; $61ea: $ac
	xor  h                                           ; $61eb: $ac
	cp   e                                           ; $61ec: $bb
	call z, Call_0f9_78c9                            ; $61ed: $cc $c9 $78
	and  a                                           ; $61f0: $a7
	ld   d, d                                        ; $61f1: $52
	ld   b, h                                        ; $61f2: $44
	ld   [hl-], a                                    ; $61f3: $32
	inc  de                                          ; $61f4: $13
	ld   b, l                                        ; $61f5: $45
	ld   d, a                                        ; $61f6: $57
	ld   a, b                                        ; $61f7: $78
	adc  c                                           ; $61f8: $89
	xor  e                                           ; $61f9: $ab
	cp   d                                           ; $61fa: $ba
	cp   e                                           ; $61fb: $bb
	res  7, e                                        ; $61fc: $cb $bb
	cp   e                                           ; $61fe: $bb
	call z, $b8cc                                    ; $61ff: $cc $cc $b8
	add  a                                           ; $6202: $87
	ld   b, e                                        ; $6203: $43
	inc  sp                                          ; $6204: $33
	ld   de, $3423                                   ; $6205: $11 $23 $34
	ld   d, a                                        ; $6208: $57
	ld   a, b                                        ; $6209: $78
	sbc  c                                           ; $620a: $99
	xor  d                                           ; $620b: $aa
	xor  c                                           ; $620c: $a9
	cp   d                                           ; $620d: $ba
	xor  e                                           ; $620e: $ab
	cp   h                                           ; $620f: $bc
	cp   h                                           ; $6210: $bc
	db   $dd                                         ; $6211: $dd
	res  5, c                                        ; $6212: $cb $a9
	adc  b                                           ; $6214: $88
	ld   [hl], h                                     ; $6215: $74
	inc  hl                                          ; $6216: $23
	ld   [hl+], a                                    ; $6217: $22
	inc  de                                          ; $6218: $13
	ld   b, h                                        ; $6219: $44
	ld   d, l                                        ; $621a: $55
	halt                                             ; $621b: $76
	ld   a, b                                        ; $621c: $78
	sbc  d                                           ; $621d: $9a
	sbc  e                                           ; $621e: $9b
	xor  d                                           ; $621f: $aa
	cp   e                                           ; $6220: $bb
	set  3, h                                        ; $6221: $cb $dc
	call z, $bbcb                                    ; $6223: $cc $cb $bb
	xor  c                                           ; $6226: $a9
	ld   a, b                                        ; $6227: $78
	ld   h, h                                        ; $6228: $64
	ld   [hl-], a                                    ; $6229: $32
	ld   sp, $3412                                   ; $622a: $31 $12 $34
	ld   b, l                                        ; $622d: $45
	ld   h, a                                        ; $622e: $67
	adc  c                                           ; $622f: $89
	sbc  d                                           ; $6230: $9a
	xor  c                                           ; $6231: $a9
	sbc  d                                           ; $6232: $9a
	cp   d                                           ; $6233: $ba
	cp   h                                           ; $6234: $bc
	call c, $ddcc                                    ; $6235: $dc $cc $dd
	call z, $76a9                                    ; $6238: $cc $a9 $76
	ld   h, l                                        ; $623b: $65
	ld   b, e                                        ; $623c: $43
	ld   [hl+], a                                    ; $623d: $22
	ld   hl, $4523                                   ; $623e: $21 $23 $45
	ld   d, a                                        ; $6241: $57
	ld   [hl], a                                     ; $6242: $77
	adc  c                                           ; $6243: $89
	sbc  d                                           ; $6244: $9a
	xor  d                                           ; $6245: $aa
	cp   d                                           ; $6246: $ba
	cp   e                                           ; $6247: $bb
	call z, $bdcc                                    ; $6248: $cc $cc $bd
	db   $db                                         ; $624b: $db
	xor  c                                           ; $624c: $a9
	sbc  b                                           ; $624d: $98
	halt                                             ; $624e: $76
	ld   h, h                                        ; $624f: $64
	ld   hl, $1322                                   ; $6250: $21 $22 $13
	inc  [hl]                                        ; $6253: $34
	ld   b, l                                        ; $6254: $45
	halt                                             ; $6255: $76
	ld   a, c                                        ; $6256: $79
	sbc  d                                           ; $6257: $9a
	xor  e                                           ; $6258: $ab
	xor  e                                           ; $6259: $ab
	cp   h                                           ; $625a: $bc
	call z, $cbdc                                    ; $625b: $cc $dc $cb
	call z, $a8ba                                    ; $625e: $cc $ba $a8
	halt                                             ; $6261: $76
	ld   d, l                                        ; $6262: $55
	ld   b, e                                        ; $6263: $43
	ld   [hl-], a                                    ; $6264: $32
	inc  sp                                          ; $6265: $33
	inc  h                                           ; $6266: $24
	ld   b, l                                        ; $6267: $45
	ld   h, a                                        ; $6268: $67
	adc  b                                           ; $6269: $88
	sbc  c                                           ; $626a: $99
	xor  d                                           ; $626b: $aa
	xor  e                                           ; $626c: $ab
	cp   e                                           ; $626d: $bb
	cp   e                                           ; $626e: $bb
	cp   e                                           ; $626f: $bb
	cp   d                                           ; $6270: $ba
	xor  d                                           ; $6271: $aa
	xor  d                                           ; $6272: $aa
	xor  d                                           ; $6273: $aa
	xor  c                                           ; $6274: $a9
	sbc  b                                           ; $6275: $98
	halt                                             ; $6276: $76
	ld   h, l                                        ; $6277: $65
	ld   b, h                                        ; $6278: $44
	inc  sp                                          ; $6279: $33
	inc  sp                                          ; $627a: $33
	ld   b, h                                        ; $627b: $44
	ld   d, l                                        ; $627c: $55
	ld   h, a                                        ; $627d: $67
	ld   a, b                                        ; $627e: $78
	sbc  c                                           ; $627f: $99
	xor  d                                           ; $6280: $aa
	xor  d                                           ; $6281: $aa
	cp   e                                           ; $6282: $bb
	cp   h                                           ; $6283: $bc
	call z, $babb                                    ; $6284: $cc $bb $ba
	xor  d                                           ; $6287: $aa
	sbc  c                                           ; $6288: $99
	add  a                                           ; $6289: $87
	halt                                             ; $628a: $76
	ld   h, [hl]                                     ; $628b: $66
	ld   d, l                                        ; $628c: $55
	ld   b, e                                        ; $628d: $43
	inc  sp                                          ; $628e: $33
	ld   b, h                                        ; $628f: $44
	ld   d, l                                        ; $6290: $55
	ld   h, [hl]                                     ; $6291: $66
	ld   a, b                                        ; $6292: $78
	adc  b                                           ; $6293: $88
	sbc  d                                           ; $6294: $9a
	xor  e                                           ; $6295: $ab
	xor  d                                           ; $6296: $aa
	xor  d                                           ; $6297: $aa
	cp   e                                           ; $6298: $bb
	cp   d                                           ; $6299: $ba
	cp   h                                           ; $629a: $bc
	cp   e                                           ; $629b: $bb
	xor  d                                           ; $629c: $aa
	xor  c                                           ; $629d: $a9
	sbc  c                                           ; $629e: $99
	sbc  b                                           ; $629f: $98
	halt                                             ; $62a0: $76
	ld   d, l                                        ; $62a1: $55
	ld   b, h                                        ; $62a2: $44
	inc  sp                                          ; $62a3: $33
	ld   b, e                                        ; $62a4: $43
	inc  [hl]                                        ; $62a5: $34
	ld   d, l                                        ; $62a6: $55
	ld   h, [hl]                                     ; $62a7: $66
	ld   a, b                                        ; $62a8: $78
	adc  c                                           ; $62a9: $89
	sbc  e                                           ; $62aa: $9b
	call z, $bbcb                                    ; $62ab: $cc $cb $bb
	cp   e                                           ; $62ae: $bb
	cp   e                                           ; $62af: $bb
	cp   d                                           ; $62b0: $ba
	xor  d                                           ; $62b1: $aa
	sbc  b                                           ; $62b2: $98
	add  a                                           ; $62b3: $87
	ld   [hl], a                                     ; $62b4: $77
	ld   [hl], a                                     ; $62b5: $77
	ld   h, [hl]                                     ; $62b6: $66
	ld   d, h                                        ; $62b7: $54
	ld   b, h                                        ; $62b8: $44
	ld   b, h                                        ; $62b9: $44
	ld   b, l                                        ; $62ba: $45
	ld   d, [hl]                                     ; $62bb: $56
	ld   h, [hl]                                     ; $62bc: $66
	ld   a, b                                        ; $62bd: $78
	adc  b                                           ; $62be: $88
	sbc  d                                           ; $62bf: $9a
	cp   e                                           ; $62c0: $bb
	xor  e                                           ; $62c1: $ab
	cp   d                                           ; $62c2: $ba
	cp   e                                           ; $62c3: $bb
	cp   e                                           ; $62c4: $bb
	xor  e                                           ; $62c5: $ab
	cp   d                                           ; $62c6: $ba
	xor  d                                           ; $62c7: $aa
	sbc  c                                           ; $62c8: $99
	add  a                                           ; $62c9: $87
	ld   h, a                                        ; $62ca: $67
	ld   a, b                                        ; $62cb: $78
	ld   [hl], l                                     ; $62cc: $75
	ld   b, e                                        ; $62cd: $43
	ld   b, e                                        ; $62ce: $43
	ld   b, l                                        ; $62cf: $45
	ld   b, h                                        ; $62d0: $44
	ld   b, [hl]                                     ; $62d1: $46
	ld   h, a                                        ; $62d2: $67
	ld   a, c                                        ; $62d3: $79
	xor  d                                           ; $62d4: $aa
	xor  d                                           ; $62d5: $aa
	cp   e                                           ; $62d6: $bb
	res  5, d                                        ; $62d7: $cb $aa
	xor  e                                           ; $62d9: $ab
	xor  d                                           ; $62da: $aa
	sbc  c                                           ; $62db: $99
	sbc  c                                           ; $62dc: $99
	cp   d                                           ; $62dd: $ba
	sub  [hl]                                        ; $62de: $96
	ld   d, a                                        ; $62df: $57
	sbc  c                                           ; $62e0: $99
	sub  a                                           ; $62e1: $97
	ld   h, [hl]                                     ; $62e2: $66
	ld   h, [hl]                                     ; $62e3: $66
	ld   h, l                                        ; $62e4: $65
	ld   b, h                                        ; $62e5: $44
	ld   d, l                                        ; $62e6: $55
	ld   d, [hl]                                     ; $62e7: $56
	ld   h, a                                        ; $62e8: $67
	ld   [hl], a                                     ; $62e9: $77
	adc  b                                           ; $62ea: $88
	xor  c                                           ; $62eb: $a9
	xor  e                                           ; $62ec: $ab
	xor  d                                           ; $62ed: $aa
	xor  d                                           ; $62ee: $aa
	cp   e                                           ; $62ef: $bb
	xor  c                                           ; $62f0: $a9
	xor  d                                           ; $62f1: $aa
	sbc  d                                           ; $62f2: $9a
	sbc  d                                           ; $62f3: $9a
	cp   c                                           ; $62f4: $b9
	adc  b                                           ; $62f5: $88
	ld   a, c                                        ; $62f6: $79
	ld   [hl], a                                     ; $62f7: $77
	ld   [hl], l                                     ; $62f8: $75
	ld   d, [hl]                                     ; $62f9: $56
	ld   [hl], l                                     ; $62fa: $75
	ld   d, h                                        ; $62fb: $54
	ld   d, l                                        ; $62fc: $55
	ld   b, h                                        ; $62fd: $44
	ld   e, b                                        ; $62fe: $58
	sbc  b                                           ; $62ff: $98
	sbc  b                                           ; $6300: $98
	sbc  c                                           ; $6301: $99
	sbc  e                                           ; $6302: $9b
	cp   e                                           ; $6303: $bb
	sbc  c                                           ; $6304: $99
	xor  c                                           ; $6305: $a9
	cp   c                                           ; $6306: $b9

jr_0f9_6307:
	xor  d                                           ; $6307: $aa
	xor  e                                           ; $6308: $ab
	sbc  b                                           ; $6309: $98
	adc  c                                           ; $630a: $89
	res  6, a                                        ; $630b: $cb $b7
	ld   sp, $9847                                   ; $630d: $31 $47 $98
	ld   sp, $5615                                   ; $6310: $31 $15 $56
	ld   [hl], l                                     ; $6313: $75
	ld   [hl], l                                     ; $6314: $75
	adc  d                                           ; $6315: $8a
	sbc  e                                           ; $6316: $9b
	adc  d                                           ; $6317: $8a
	xor  c                                           ; $6318: $a9
	cp   d                                           ; $6319: $ba
	cp   c                                           ; $631a: $b9
	sbc  e                                           ; $631b: $9b
	xor  e                                           ; $631c: $ab
	xor  e                                           ; $631d: $ab
	cp   c                                           ; $631e: $b9
	xor  c                                           ; $631f: $a9
	xor  d                                           ; $6320: $aa
	halt                                             ; $6321: $76
	inc  hl                                          ; $6322: $23
	ld   h, a                                        ; $6323: $67
	ld   d, e                                        ; $6324: $53
	inc  de                                          ; $6325: $13
	inc  [hl]                                        ; $6326: $34
	sub  [hl]                                        ; $6327: $96
	add  h                                           ; $6328: $84
	ld   l, d                                        ; $6329: $6a
	adc  h                                           ; $632a: $8c
	ld   a, h                                        ; $632b: $7c
	cp   c                                           ; $632c: $b9
	ret                                              ; $632d: $c9


	jp   c, $9abc                                    ; $632e: $da $bc $9a

	xor  h                                           ; $6331: $ac
	jp   z, Jump_0f9_73a7                            ; $6332: $ca $a7 $73

	ld   [de], a                                     ; $6335: $12
	ld   e, l                                        ; $6336: $5d
	ld   h, [hl]                                     ; $6337: $66
	ld   de, $d852                                   ; $6338: $11 $52 $d8
	or   l                                           ; $633b: $b5
	dec  de                                          ; $633c: $1b
	ld   l, a                                        ; $633d: $6f
	sbc  c                                           ; $633e: $99
	and  e                                           ; $633f: $a3
	reti                                             ; $6340: $d9


	db   $eb                                         ; $6341: $eb
	ld   a, e                                        ; $6342: $7b
	adc  [hl]                                        ; $6343: $8e
	call z, $84b6                                    ; $6344: $cc $b6 $84
	ld   b, c                                        ; $6347: $41
	dec  de                                          ; $6348: $1b
	ld   [hl], a                                     ; $6349: $77
	ld   sp, $cc91                                   ; $634a: $31 $91 $cc
	call Call_0f9_5b1c                               ; $634d: $cd $1c $5b
	jp   $a6f1                                       ; $6350: $c3 $f1 $a6


	xor  a                                           ; $6353: $af
	ld   e, a                                        ; $6354: $5f
	ld   a, [hl]                                     ; $6355: $7e
	cp   c                                           ; $6356: $b9
	ldh  [c], a                                      ; $6357: $e2
	ld   d, c                                        ; $6358: $51
	ld   de, $bc7d                                   ; $6359: $11 $7d $bc
	ld   a, [de]                                     ; $635c: $1a
	cpl                                              ; $635d: $2f
	rst  $38                                         ; $635e: $ff
	pop  af                                          ; $635f: $f1
	and  c                                           ; $6360: $a1
	ld   c, l                                        ; $6361: $4d
	rra                                              ; $6362: $1f
	jr   @+$18                                       ; $6363: $18 $16

	ld   a, [$f5fa]                                  ; $6365: $fa $fa $f5
	daa                                              ; $6368: $27
	inc  de                                          ; $6369: $13
	ld   de, $af14                                   ; $636a: $11 $14 $af
	adc  a                                           ; $636d: $8f
	ld   a, e                                        ; $636e: $7b
	rst  $38                                         ; $636f: $ff
	pop  af                                          ; $6370: $f1
	pop  de                                          ; $6371: $d1
	ld   a, [de]                                     ; $6372: $1a
	rra                                              ; $6373: $1f
	jr   jr_0f9_6307                                 ; $6374: $18 $91

	rst  $30                                         ; $6376: $f7
	rst  $38                                         ; $6377: $ff
	ld   sp, hl                                      ; $6378: $f9
	inc  d                                           ; $6379: $14

jr_0f9_637a:
	ld   de, $1111                                   ; $637a: $11 $11 $11
	ld   e, a                                        ; $637d: $5f
	rst  $38                                         ; $637e: $ff
	ld   a, [$f4f9]                                  ; $637f: $fa $f9 $f4
	ld   h, h                                        ; $6382: $64
	ld   d, $1f                                      ; $6383: $16 $1f
	dec  sp                                          ; $6385: $3b
	or   $fb                                         ; $6386: $f6 $fb
	rst  $38                                         ; $6388: $ff
	db   $eb                                         ; $6389: $eb
	ld   [de], a                                     ; $638a: $12
	ld   de, $1511                                   ; $638b: $11 $11 $15
	ld   l, a                                        ; $638e: $6f
	rst  $38                                         ; $638f: $ff
	ldh  a, [c]                                      ; $6390: $f2
	pop  af                                          ; $6391: $f1
	pop  af                                          ; $6392: $f1
	ld   [hl-], a                                    ; $6393: $32
	inc  d                                           ; $6394: $14
	rra                                              ; $6395: $1f
	xor  a                                           ; $6396: $af
	rst  $38                                         ; $6397: $ff
	ld   sp, hl                                      ; $6398: $f9
	ei                                               ; $6399: $fb
	sub  l                                           ; $639a: $95
	ld   de, $1111                                   ; $639b: $11 $11 $11
	rra                                              ; $639e: $1f
	rst  $38                                         ; $639f: $ff
	rst  $38                                         ; $63a0: $ff
	add  c                                           ; $63a1: $81
	pop  af                                          ; $63a2: $f1
	pop  af                                          ; $63a3: $f1
	or   c                                           ; $63a4: $b1
	ld   de, $ff1f                                   ; $63a5: $11 $1f $ff
	rst  $38                                         ; $63a8: $ff
	di                                               ; $63a9: $f3
	sub  l                                           ; $63aa: $95
	ld   h, h                                        ; $63ab: $64
	ld   h, c                                        ; $63ac: $61
	ld   de, $2f11                                   ; $63ad: $11 $11 $2f
	rst  $38                                         ; $63b0: $ff
	rst  $38                                         ; $63b1: $ff
	ld   de, $f141                                   ; $63b2: $11 $41 $f1
	pop  de                                          ; $63b5: $d1
	ld   de, $ff1f                                   ; $63b6: $11 $1f $ff
	rst  $38                                         ; $63b9: $ff
	ld   d, c                                        ; $63ba: $51
	jr   z, jr_0f9_637a                              ; $63bb: $28 $bd

	pop  bc                                          ; $63bd: $c1
	ld   de, $1f11                                   ; $63be: $11 $11 $1f
	rst  $38                                         ; $63c1: $ff
	rst  $38                                         ; $63c2: $ff
	ld   h, c                                        ; $63c3: $61
	add  c                                           ; $63c4: $81
	ld   sp, hl                                      ; $63c5: $f9
	jr   c, jr_0f9_63db                              ; $63c6: $38 $13

	rra                                              ; $63c8: $1f
	rst  $38                                         ; $63c9: $ff
	ld   sp, hl                                      ; $63ca: $f9
	sub  c                                           ; $63cb: $91
	ld   a, [hl+]                                    ; $63cc: $2a
	rst  $28                                         ; $63cd: $ef
	rst  $20                                         ; $63ce: $e7
	ld   hl, $1111                                   ; $63cf: $21 $11 $11
	cp   a                                           ; $63d2: $bf
	rst  $38                                         ; $63d3: $ff
	rst  $38                                         ; $63d4: $ff
	ld   a, [de]                                     ; $63d5: $1a
	ccf                                              ; $63d6: $3f
	add  c                                           ; $63d7: $81
	pop  bc                                          ; $63d8: $c1
	ld   [hl], c                                     ; $63d9: $71
	rst  $38                                         ; $63da: $ff

jr_0f9_63db:
	rst  $38                                         ; $63db: $ff
	cp   a                                           ; $63dc: $bf
	ld   d, $8b                                      ; $63dd: $16 $8b
	db   $fc                                         ; $63df: $fc
	add  e                                           ; $63e0: $83
	ld   de, $1511                                   ; $63e1: $11 $11 $15
	rst  $38                                         ; $63e4: $ff
	rst  $38                                         ; $63e5: $ff
	pop  af                                          ; $63e6: $f1
	dec  d                                           ; $63e7: $15
	ld   e, $1f                                      ; $63e8: $1e $1f
	ld   de, $ff15                                   ; $63ea: $11 $15 $ff
	rst  $38                                         ; $63ed: $ff
	pop  af                                          ; $63ee: $f1
	inc  de                                          ; $63ef: $13
	ld   e, h                                        ; $63f0: $5c
	db   $ed                                         ; $63f1: $ed
	add  c                                           ; $63f2: $81
	ld   de, $1f11                                   ; $63f3: $11 $11 $1f
	rst  JumpTable                                         ; $63f6: $df
	rst  $38                                         ; $63f7: $ff
	pop  af                                          ; $63f8: $f1
	add  c                                           ; $63f9: $81
	ld   d, [hl]                                     ; $63fa: $56
	rra                                              ; $63fb: $1f
	ld   d, $1f                                      ; $63fc: $16 $1f
	rst  $38                                         ; $63fe: $ff
	rst  $38                                         ; $63ff: $ff
	pop  af                                          ; $6400: $f1
	inc  de                                          ; $6401: $13
	dec  a                                           ; $6402: $3d
	rst  $38                                         ; $6403: $ff
	and  c                                           ; $6404: $a1
	ld   sp, $1f11                                   ; $6405: $31 $11 $1f
	adc  a                                           ; $6408: $8f
	rst  $38                                         ; $6409: $ff
	pop  af                                          ; $640a: $f1
	ld   [hl], c                                     ; $640b: $71
	ld   [hl], $1f                                   ; $640c: $36 $1f
	add  hl, de                                      ; $640e: $19
	inc  e                                           ; $640f: $1c
	cp   $fe                                         ; $6410: $fe $fe
	pop  af                                          ; $6412: $f1
	inc  de                                          ; $6413: $13
	rra                                              ; $6414: $1f
	rst  $38                                         ; $6415: $ff
	db   $e4                                         ; $6416: $e4
	ld   d, c                                        ; $6417: $51
	ld   de, $9f16                                   ; $6418: $11 $16 $9f
	rst  $38                                         ; $641b: $ff
	ldh  a, [c]                                      ; $641c: $f2
	ld   de, $1f18                                   ; $641d: $11 $18 $1f
	inc  d                                           ; $6420: $14
	inc  de                                          ; $6421: $13
	ld   a, [$f3ff]                                  ; $6422: $fa $ff $f3
	inc  de                                          ; $6425: $13
	ld   e, $ff                                      ; $6426: $1e $ff
	rst  $30                                         ; $6428: $f7
	ld   h, c                                        ; $6429: $61
	ld   de, $8d11                                   ; $642a: $11 $11 $8d
	rst  $38                                         ; $642d: $ff
	rst  $38                                         ; $642e: $ff
	ld   de, $4111                                   ; $642f: $11 $11 $41
	pop  bc                                          ; $6432: $c1
	ld   h, c                                        ; $6433: $61
	rst  JumpTable                                         ; $6434: $df
	rst  $38                                         ; $6435: $ff
	rst  $28                                         ; $6436: $ef
	ld   de, rAUD1LEN                                   ; $6437: $11 $11 $ff
	cp   $83                                         ; $643a: $fe $83
	ld   de, $1b11                                   ; $643c: $11 $11 $1b
	rst  JumpTable                                         ; $643f: $df
	rst  $38                                         ; $6440: $ff
	pop  af                                          ; $6441: $f1
	ld   de, $1c12                                   ; $6442: $11 $12 $1c
	add  hl, sp                                      ; $6445: $39
	ccf                                              ; $6446: $3f
	rst  $38                                         ; $6447: $ff
	cp   $e1                                         ; $6448: $fe $e1
	ld   de, $ff1f                                   ; $644a: $11 $1f $ff
	ei                                               ; $644d: $fb
	ld   b, c                                        ; $644e: $41
	ld   de, $8f11                                   ; $644f: $11 $11 $8f
	rst  $38                                         ; $6452: $ff
	rst  $38                                         ; $6453: $ff
	ld   sp, $3111                                   ; $6454: $31 $11 $31
	push de                                          ; $6457: $d5
	and  [hl]                                        ; $6458: $a6
	rst  JumpTable                                         ; $6459: $df
	rst  $28                                         ; $645a: $ef
	sbc  $11                                         ; $645b: $de $11
	ld   de, $ffff                                   ; $645d: $11 $ff $ff
	or   $11                                         ; $6460: $f6 $11
	ld   de, $ee11                                   ; $6462: $11 $11 $ee
	rst  $38                                         ; $6465: $ff
	rst  $38                                         ; $6466: $ff
	ld   de, $1111                                   ; $6467: $11 $11 $11
	or   $fa                                         ; $646a: $f6 $fa
	rst  $38                                         ; $646c: $ff
	cp   a                                           ; $646d: $bf
	sbc  l                                           ; $646e: $9d
	ld   de, rAUD1LEN                                   ; $646f: $11 $11 $ff
	rst  $38                                         ; $6472: $ff
	call nc, $1111                                   ; $6473: $d4 $11 $11
	ld   de, $ffff                                   ; $6476: $11 $ff $ff
	rst  $38                                         ; $6479: $ff
	ld   de, $1311                                   ; $647a: $11 $11 $13
	ld   a, [$fdfa]                                  ; $647d: $fa $fa $fd
	rst  $38                                         ; $6480: $ff
	sbc  b                                           ; $6481: $98
	ld   de, $ff15                                   ; $6482: $11 $15 $ff
	rst  $38                                         ; $6485: $ff
	db   $d3                                         ; $6486: $d3
	ld   de, $1111                                   ; $6487: $11 $11 $11
	rra                                              ; $648a: $1f
	rst  $38                                         ; $648b: $ff
	rst  $38                                         ; $648c: $ff
	pop  af                                          ; $648d: $f1
	ld   de, $6f11                                   ; $648e: $11 $11 $6f
	rst  $38                                         ; $6491: $ff
	rst  $38                                         ; $6492: $ff
	ld   e, d                                        ; $6493: $5a
	or   [hl]                                        ; $6494: $b6
	add  c                                           ; $6495: $81
	add  c                                           ; $6496: $81
	ld   l, l                                        ; $6497: $6d
	rst  $38                                         ; $6498: $ff
	rst  $38                                         ; $6499: $ff
	ld   b, c                                        ; $649a: $41
	ld   de, $1f11                                   ; $649b: $11 $11 $1f
	rst  $38                                         ; $649e: $ff
	rst  $38                                         ; $649f: $ff
	pop  af                                          ; $64a0: $f1
	ld   de, $1f11                                   ; $64a1: $11 $11 $1f
	rst  $38                                         ; $64a4: $ff
	rst  JumpTable                                         ; $64a5: $df
	rst  ToBoot                                         ; $64a6: $c7
	push af                                          ; $64a7: $f5
	and  c                                           ; $64a8: $a1
	ld   hl, $ff2d                                   ; $64a9: $21 $2d $ff
	rst  $38                                         ; $64ac: $ff
	add  c                                           ; $64ad: $81
	ld   de, $1111                                   ; $64ae: $11 $11 $11
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $64b1: $cf
	rst  $38                                         ; $64b2: $ff
	rst  $38                                         ; $64b3: $ff
	ld   b, c                                        ; $64b4: $41
	ld   de, rAUD1LEN                                   ; $64b5: $11 $11 $ff
	rst  $38                                         ; $64b8: $ff
	ei                                               ; $64b9: $fb
	inc  e                                           ; $64ba: $1c
	add  hl, sp                                      ; $64bb: $39
	ld   d, $72                                      ; $64bc: $16 $72
	adc  $ff                                         ; $64be: $ce $ff
	ei                                               ; $64c0: $fb
	ld   hl, $1111                                   ; $64c1: $21 $11 $11
	inc  de                                          ; $64c4: $13
	cp   $ff                                         ; $64c5: $fe $ff
	rst  $38                                         ; $64c7: $ff
	ld   de, $1c11                                   ; $64c8: $11 $11 $1c
	rst  $38                                         ; $64cb: $ff
	rst  $38                                         ; $64cc: $ff
	pop  af                                          ; $64cd: $f1
	ld   l, b                                        ; $64ce: $68
	ld   c, b                                        ; $64cf: $48
	dec  hl                                          ; $64d0: $2b
	rla                                              ; $64d1: $17
	rst  JumpTable                                         ; $64d2: $df
	rst  $38                                         ; $64d3: $ff
	or   $11                                         ; $64d4: $f6 $11
	ld   de, $1c11                                   ; $64d6: $11 $11 $1c
	rst  $38                                         ; $64d9: $ff
	rst  $38                                         ; $64da: $ff
	di                                               ; $64db: $f3
	ld   de, $1f11                                   ; $64dc: $11 $11 $1f
	rst  $38                                         ; $64df: $ff
	rst  $38                                         ; $64e0: $ff
	or   c                                           ; $64e1: $b1
	or   c                                           ; $64e2: $b1
	add  h                                           ; $64e3: $84
	ld   a, c                                        ; $64e4: $79
	dec  l                                           ; $64e5: $2d
	rst  JumpTable                                         ; $64e6: $df
	rst  $38                                         ; $64e7: $ff
	jp   nz, $1111                                   ; $64e8: $c2 $11 $11

	ld   [hl-], a                                    ; $64eb: $32
	inc  d                                           ; $64ec: $14
	cp   a                                           ; $64ed: $bf
	rst  $38                                         ; $64ee: $ff
	db   $fc                                         ; $64ef: $fc
	ld   de, $1f11                                   ; $64f0: $11 $11 $1f
	rst  $38                                         ; $64f3: $ff
	rst  $38                                         ; $64f4: $ff
	pop  bc                                          ; $64f5: $c1
	ld   h, c                                        ; $64f6: $61
	sbc  c                                           ; $64f7: $99
	sbc  l                                           ; $64f8: $9d
	dec  sp                                          ; $64f9: $3b
	adc  a                                           ; $64fa: $8f
	rst  $38                                         ; $64fb: $ff
	or   $21                                         ; $64fc: $f6 $21
	ld   de, $1135                                   ; $64fe: $11 $35 $11
	ld   c, h                                        ; $6501: $4c
	rst  $38                                         ; $6502: $ff
	rst  $38                                         ; $6503: $ff
	ld   h, c                                        ; $6504: $61
	ld   de, rAUD1ENV                                   ; $6505: $11 $12 $ff
	rst  $38                                         ; $6508: $ff
	db   $f4                                         ; $6509: $f4
	inc  d                                           ; $650a: $14
	dec  hl                                          ; $650b: $2b
	ld   a, l                                        ; $650c: $7d
	sub  [hl]                                        ; $650d: $96
	sbc  c                                           ; $650e: $99
	rst  $38                                         ; $650f: $ff
	db   $fc                                         ; $6510: $fc
	ld   [hl], c                                     ; $6511: $71
	ld   de, $6216                                   ; $6512: $11 $16 $62
	ld   de, $ff9d                                   ; $6515: $11 $9d $ff
	ei                                               ; $6518: $fb
	ld   de, $1f11                                   ; $6519: $11 $11 $1f
	rst  $38                                         ; $651c: $ff
	rst  $38                                         ; $651d: $ff
	ld   [hl], c                                     ; $651e: $71
	ld   sp, $ecb9                                   ; $651f: $31 $b9 $ec
	ld   l, c                                        ; $6522: $69
	ld   l, [hl]                                     ; $6523: $6e
	rst  $28                                         ; $6524: $ef
	jp   hl                                          ; $6525: $e9


	ld   hl, $5711                                   ; $6526: $21 $11 $57
	ld   d, c                                        ; $6529: $51
	dec  d                                           ; $652a: $15
	ld   a, a                                        ; $652b: $7f
	rst  $38                                         ; $652c: $ff
	di                                               ; $652d: $f3
	ld   de, $6f11                                   ; $652e: $11 $11 $6f
	rst  $38                                         ; $6531: $ff
	rst  $38                                         ; $6532: $ff
	ld   de, $c934                                   ; $6533: $11 $34 $c9
	ld   sp, hl                                      ; $6536: $f9
	halt                                             ; $6537: $76
	adc  [hl]                                        ; $6538: $8e
	rst  JumpTable                                         ; $6539: $df
	cp   c                                           ; $653a: $b9
	ld   de, $6711                                   ; $653b: $11 $11 $67
	ld   [hl], c                                     ; $653e: $71
	inc  de                                          ; $653f: $13
	ld   l, a                                        ; $6540: $6f
	rst  $38                                         ; $6541: $ff
	rst  $30                                         ; $6542: $f7
	ld   de, $4f11                                   ; $6543: $11 $11 $4f
	rst  $38                                         ; $6546: $ff
	rst  $38                                         ; $6547: $ff
	ld   de, $b933                                   ; $6548: $11 $33 $b9
	ld   a, [$6c66]                                  ; $654b: $fa $66 $6c
	cp   a                                           ; $654e: $bf
	db   $ec                                         ; $654f: $ec
	ld   hl, $6721                                   ; $6550: $21 $21 $67
	sub  c                                           ; $6553: $91
	ld   de, $ff29                                   ; $6554: $11 $29 $ff
	rst  $38                                         ; $6557: $ff
	ld   b, c                                        ; $6558: $41
	ld   de, $ff19                                   ; $6559: $11 $19 $ff
	rst  $38                                         ; $655c: $ff
	pop  bc                                          ; $655d: $c1
	inc  de                                          ; $655e: $13
	ld   l, h                                        ; $655f: $6c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6560: $cf
	halt                                             ; $6561: $76
	ld   e, c                                        ; $6562: $59
	cp   [hl]                                        ; $6563: $be
	cp   $a2                                         ; $6564: $fe $a2
	ld   sp, $7715                                   ; $6566: $31 $15 $77
	ld   de, $9f13                                   ; $6569: $11 $13 $9f
	rst  $38                                         ; $656c: $ff
	db   $f4                                         ; $656d: $f4
	ld   de, $7f11                                   ; $656e: $11 $11 $7f
	rst  $38                                         ; $6571: $ff
	cp   $11                                         ; $6572: $fe $11
	inc  hl                                          ; $6574: $23
	cp   d                                           ; $6575: $ba
	ld   sp, hl                                      ; $6576: $f9
	add  [hl]                                        ; $6577: $86
	adc  e                                           ; $6578: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6579: $cf
	jp   c, $1131                                    ; $657a: $da $31 $11

	ld   l, b                                        ; $657d: $68
	add  d                                           ; $657e: $82
	ld   de, $ff18                                   ; $657f: $11 $18 $ff
	rst  $38                                         ; $6582: $ff
	pop  bc                                          ; $6583: $c1
	ld   de, rAUD1LEN                                   ; $6584: $11 $11 $ff
	rst  $38                                         ; $6587: $ff
	and  $12                                         ; $6588: $e6 $12
	ld   a, [hl+]                                    ; $658a: $2a
	call Call_0f9_75d6                               ; $658b: $cd $d6 $75
	sbc  e                                           ; $658e: $9b
	rst  $38                                         ; $658f: $ff
	ret  z                                           ; $6590: $c8

	ld   hl, $6913                                   ; $6591: $21 $13 $69
	add  d                                           ; $6594: $82
	ld   de, $ff18                                   ; $6595: $11 $18 $ff
	rst  $38                                         ; $6598: $ff
	sub  c                                           ; $6599: $91
	ld   de, rAUD1LOW                                   ; $659a: $11 $13 $ff
	rst  $38                                         ; $659d: $ff
	push hl                                          ; $659e: $e5
	ld   [de], a                                     ; $659f: $12
	add  hl, hl                                      ; $65a0: $29
	cp   [hl]                                        ; $65a1: $be
	rst  ToBoot                                         ; $65a2: $c7
	ld   [hl], l                                     ; $65a3: $75
	xor  d                                           ; $65a4: $aa
	cp   $c7                                         ; $65a5: $fe $c7
	ld   [de], a                                     ; $65a7: $12
	inc  d                                           ; $65a8: $14
	ld   a, c                                        ; $65a9: $79
	add  d                                           ; $65aa: $82
	ld   de, $ff18                                   ; $65ab: $11 $18 $ff
	rst  $38                                         ; $65ae: $ff
	or   c                                           ; $65af: $b1
	ld   de, rAUD1ENV                                   ; $65b0: $11 $12 $ff
	rst  $38                                         ; $65b3: $ff
	push af                                          ; $65b4: $f5
	ld   de, $ae19                                   ; $65b5: $11 $19 $ae

Call_0f9_65b8:
	reti                                             ; $65b8: $d9


Call_0f9_65b9:
	ld   [hl], l                                     ; $65b9: $75
	sbc  b                                           ; $65ba: $98
	cp   $c8                                         ; $65bb: $fe $c8
	ld   [hl+], a                                    ; $65bd: $22
	inc  d                                           ; $65be: $14
	ld   a, d                                        ; $65bf: $7a
	and  l                                           ; $65c0: $a5
	ld   de, $bf12                                   ; $65c1: $11 $12 $bf
	rst  $38                                         ; $65c4: $ff
	db   $f4                                         ; $65c5: $f4
	ld   de, $9f11                                   ; $65c6: $11 $11 $9f
	rst  $38                                         ; $65c9: $ff
	ei                                               ; $65ca: $fb
	ld   de, $bc15                                   ; $65cb: $11 $15 $bc
	ei                                               ; $65ce: $fb
	sub  h                                           ; $65cf: $94
	ld   d, a                                        ; $65d0: $57
	xor  [hl]                                        ; $65d1: $ae
	db   $dd                                         ; $65d2: $dd
	ld   h, h                                        ; $65d3: $64
	ld   de, $b847                                   ; $65d4: $11 $47 $b8
	ld   [hl], c                                     ; $65d7: $71
	ld   de, $ff3c                                   ; $65d8: $11 $3c $ff
	rst  $38                                         ; $65db: $ff
	ld   b, c                                        ; $65dc: $41
	ld   de, $ff1a                                   ; $65dd: $11 $1a $ff
	rst  $38                                         ; $65e0: $ff
	and  c                                           ; $65e1: $a1
	ld   de, $ef6d                                   ; $65e2: $11 $6d $ef
	and  a                                           ; $65e5: $a7
	inc  [hl]                                        ; $65e6: $34
	ld   l, d                                        ; $65e7: $6a
	rst  $38                                         ; $65e8: $ff
	rst  $20                                         ; $65e9: $e7
	ld   b, c                                        ; $65ea: $41
	inc  de                                          ; $65eb: $13
	adc  h                                           ; $65ec: $8c
	cp   b                                           ; $65ed: $b8
	ld   hl, $7f11                                   ; $65ee: $21 $11 $7f
	rst  $38                                         ; $65f1: $ff
	cp   $11                                         ; $65f2: $fe $11
	ld   de, $ff1f                                   ; $65f4: $11 $1f $ff
	cp   $61                                         ; $65f7: $fe $61
	inc  d                                           ; $65f9: $14
	cp   h                                           ; $65fa: $bc
	db   $ec                                         ; $65fb: $ec
	ld   h, h                                        ; $65fc: $64
	dec  d                                           ; $65fd: $15
	adc  [hl]                                        ; $65fe: $8e
	rst  $38                                         ; $65ff: $ff
	or   h                                           ; $6600: $b4
	ld   de, $cf05                                   ; $6601: $11 $05 $cf
	ld   [$1121], a                                  ; $6604: $ea $21 $11
	ld   c, a                                        ; $6607: $4f
	rst  $38                                         ; $6608: $ff
	rst  $38                                         ; $6609: $ff
	ld   de, $1b11                                   ; $660a: $11 $11 $1b
	rst  $38                                         ; $660d: $ff
	rst  $38                                         ; $660e: $ff
	and  c                                           ; $660f: $a1
	inc  de                                          ; $6610: $13
	ld   a, h                                        ; $6611: $7c
	cp   [hl]                                        ; $6612: $be
	ld   h, l                                        ; $6613: $65
	dec  d                                           ; $6614: $15
	sbc  l                                           ; $6615: $9d
	rst  $38                                         ; $6616: $ff
	push af                                          ; $6617: $f5
	ld   hl, $8f12                                   ; $6618: $21 $12 $8f
	rst  $38                                         ; $661b: $ff
	sub  c                                           ; $661c: $91
	ld   de, rAUD1LOW                                   ; $661d: $11 $13 $ff
	rst  $38                                         ; $6620: $ff
	ldh  a, [c]                                      ; $6621: $f2
	ld   de, $bf11                                   ; $6622: $11 $11 $bf
	rst  $38                                         ; $6625: $ff
	ld   [$4811], a                                  ; $6626: $ea $11 $48
	call Call_0f9_41e6                               ; $6629: $cd $e6 $41
	ld   e, c                                        ; $662c: $59
	rst  $28                                         ; $662d: $ef
	rst  $38                                         ; $662e: $ff
	ld   h, d                                        ; $662f: $62
	ld   de, $ff29                                   ; $6630: $11 $29 $ff
	ld   a, [$1151]                                  ; $6633: $fa $51 $11
	rla                                              ; $6636: $17
	rst  $38                                         ; $6637: $ff
	rst  $38                                         ; $6638: $ff
	di                                               ; $6639: $f3
	ld   de, $7f11                                   ; $663a: $11 $11 $7f
	rst  $38                                         ; $663d: $ff
	call c, Call_0f9_7754                            ; $663e: $dc $54 $77
	or   a                                           ; $6641: $b7
	and  l                                           ; $6642: $a5
	ld   b, h                                        ; $6643: $44
	ld   a, h                                        ; $6644: $7c
	rst  JumpTable                                         ; $6645: $df
	db   $ed                                         ; $6646: $ed
	ld   d, c                                        ; $6647: $51
	ld   de, $ef59                                   ; $6648: $11 $59 $ef
	ei                                               ; $664b: $fb
	ld   h, d                                        ; $664c: $62
	ld   de, $5e11                                   ; $664d: $11 $11 $5e
	rst  $38                                         ; $6650: $ff
	rst  $38                                         ; $6651: $ff
	add  c                                           ; $6652: $81
	ld   de, $df13                                   ; $6653: $11 $13 $df
	rst  $38                                         ; $6656: $ff
	ld   sp, hl                                      ; $6657: $f9
	ld   b, h                                        ; $6658: $44
	ld   b, [hl]                                     ; $6659: $46
	ld   e, d                                        ; $665a: $5a
	adc  b                                           ; $665b: $88
	adc  c                                           ; $665c: $89
	set  5, h                                        ; $665d: $cb $ec
	rst  ToBoot                                         ; $665f: $c7
	ld   b, d                                        ; $6660: $42
	inc  d                                           ; $6661: $14
	ld   l, h                                        ; $6662: $6c
	adc  $c9                                         ; $6663: $ce $c9
	ld   h, d                                        ; $6665: $62
	ld   hl, $1911                                   ; $6666: $21 $11 $19
	rst  $28                                         ; $6669: $ef
	rst  $38                                         ; $666a: $ff
	db   $f4                                         ; $666b: $f4
	ld   de, $8f11                                   ; $666c: $11 $11 $8f
	rst  $38                                         ; $666f: $ff
	db   $fd                                         ; $6670: $fd
	ld   d, h                                        ; $6671: $54
	inc  [hl]                                        ; $6672: $34
	ld   d, a                                        ; $6673: $57
	cp   c                                           ; $6674: $b9
	cp   d                                           ; $6675: $ba
	cp   d                                           ; $6676: $ba
	xor  e                                           ; $6677: $ab
	xor  c                                           ; $6678: $a9
	ld   d, l                                        ; $6679: $55
	inc  sp                                          ; $667a: $33
	ld   l, c                                        ; $667b: $69
	call z, $85da                                    ; $667c: $cc $da $85
	ld   b, h                                        ; $667f: $44
	inc  sp                                          ; $6680: $33
	ld   de, $df19                                   ; $6681: $11 $19 $df
	rst  $38                                         ; $6684: $ff
	db   $f4                                         ; $6685: $f4
	ld   de, $7e11                                   ; $6686: $11 $11 $7e
	rst  $38                                         ; $6689: $ff
	db   $fd                                         ; $668a: $fd
	ld   d, h                                        ; $668b: $54
	inc  de                                          ; $668c: $13
	ld   e, c                                        ; $668d: $59
	set  1, c                                        ; $668e: $cb $c9
	and  a                                           ; $6690: $a7
	adc  b                                           ; $6691: $88
	sbc  c                                           ; $6692: $99
	ld   a, b                                        ; $6693: $78
	ld   d, l                                        ; $6694: $55
	ld   h, a                                        ; $6695: $67
	xor  d                                           ; $6696: $aa
	res  4, a                                        ; $6697: $cb $a7
	ld   h, l                                        ; $6699: $65
	inc  sp                                          ; $669a: $33
	ld   hl, $9d11                                   ; $669b: $21 $11 $9d
	rst  $38                                         ; $669e: $ff
	cp   $31                                         ; $669f: $fe $31
	ld   de, $ef19                                   ; $66a1: $11 $19 $ef
	rst  $38                                         ; $66a4: $ff
	call nc, Call_0f9_4541                           ; $66a5: $d4 $41 $45
	sbc  h                                           ; $66a8: $9c
	xor  d                                           ; $66a9: $aa
	adc  c                                           ; $66aa: $89
	ld   a, b                                        ; $66ab: $78
	sbc  e                                           ; $66ac: $9b
	and  a                                           ; $66ad: $a7
	sub  l                                           ; $66ae: $95
	ld   d, l                                        ; $66af: $55
	ld   a, d                                        ; $66b0: $7a
	sbc  e                                           ; $66b1: $9b
	xor  d                                           ; $66b2: $aa
	add  a                                           ; $66b3: $87
	ld   h, [hl]                                     ; $66b4: $66
	ld   h, h                                        ; $66b5: $64
	ld   b, d                                        ; $66b6: $42
	ld   de, $ff7b                                   ; $66b7: $11 $7b $ff
	rst  $38                                         ; $66ba: $ff
	ld   h, c                                        ; $66bb: $61
	ld   de, $ef16                                   ; $66bc: $11 $16 $ef
	rst  $38                                         ; $66bf: $ff
	push af                                          ; $66c0: $f5
	ld   hl, $9e25                                   ; $66c1: $21 $25 $9e
	call c, $6688                                    ; $66c4: $dc $88 $66
	adc  c                                           ; $66c7: $89
	cp   c                                           ; $66c8: $b9
	and  a                                           ; $66c9: $a7
	ld   d, h                                        ; $66ca: $54
	ld   l, b                                        ; $66cb: $68
	xor  e                                           ; $66cc: $ab
	cp   d                                           ; $66cd: $ba
	add  a                                           ; $66ce: $87
	ld   h, [hl]                                     ; $66cf: $66
	ld   h, a                                        ; $66d0: $67
	halt                                             ; $66d1: $76
	ld   sp, $8e13                                   ; $66d2: $31 $13 $8e
	rst  $38                                         ; $66d5: $ff
	ld   a, [$1121]                                  ; $66d6: $fa $21 $11
	dec  l                                           ; $66d9: $2d
	rst  $38                                         ; $66da: $ff
	rst  $38                                         ; $66db: $ff
	ld   [hl], c                                     ; $66dc: $71
	ld   de, $ed68                                   ; $66dd: $11 $68 $ed
	cp   d                                           ; $66e0: $ba
	ld   h, [hl]                                     ; $66e1: $66
	ld   c, c                                        ; $66e2: $49
	sbc  h                                           ; $66e3: $9c
	cp   d                                           ; $66e4: $ba
	sub  l                                           ; $66e5: $95
	ld   d, h                                        ; $66e6: $54
	ld   a, c                                        ; $66e7: $79
	xor  h                                           ; $66e8: $ac
	cp   c                                           ; $66e9: $b9
	ld   [hl], a                                     ; $66ea: $77
	ld   h, [hl]                                     ; $66eb: $66
	ld   [hl], a                                     ; $66ec: $77
	add  l                                           ; $66ed: $85
	ld   sp, $8e12                                   ; $66ee: $31 $12 $8e
	rst  $38                                         ; $66f1: $ff
	db   $fc                                         ; $66f2: $fc
	ld   de, $1c11                                   ; $66f3: $11 $11 $1c
	rst  $38                                         ; $66f6: $ff
	rst  $38                                         ; $66f7: $ff
	ld   [hl], c                                     ; $66f8: $71
	ld   de, $ed68                                   ; $66f9: $11 $68 $ed
	jp   z, $4866                                    ; $66fc: $ca $66 $48

	sbc  h                                           ; $66ff: $9c
	jp   z, Jump_0f9_5495                            ; $6700: $ca $95 $54

	ld   a, c                                        ; $6703: $79
	xor  h                                           ; $6704: $ac
	cp   d                                           ; $6705: $ba
	halt                                             ; $6706: $76
	ld   h, [hl]                                     ; $6707: $66
	ld   [hl], a                                     ; $6708: $77
	sub  a                                           ; $6709: $97
	ld   d, d                                        ; $670a: $52
	ld   de, $ff5b                                   ; $670b: $11 $5b $ff
	rst  $38                                         ; $670e: $ff
	ld   h, c                                        ; $670f: $61
	ld   de, $ef16                                   ; $6710: $11 $16 $ef
	rst  $38                                         ; $6713: $ff
	jp   $4922                                       ; $6714: $c3 $22 $49


	xor  [hl]                                        ; $6717: $ae
	xor  d                                           ; $6718: $aa
	ld   h, l                                        ; $6719: $65
	ld   h, [hl]                                     ; $671a: $66
	cp   e                                           ; $671b: $bb
	jp   c, Jump_0f9_4496                            ; $671c: $da $96 $44

	ld   c, b                                        ; $671f: $48
	xor  h                                           ; $6720: $ac
	jp   z, $6596                                    ; $6721: $ca $96 $65

	ld   a, b                                        ; $6724: $78
	sbc  c                                           ; $6725: $99
	ld   [hl], l                                     ; $6726: $75
	ld   hl, $9c11                                   ; $6727: $21 $11 $9c
	rst  $38                                         ; $672a: $ff
	db   $fd                                         ; $672b: $fd
	ld   hl, $1b11                                   ; $672c: $21 $11 $1b
	rst  $38                                         ; $672f: $ff
	cp   $b2                                         ; $6730: $fe $b2
	ld   b, d                                        ; $6732: $42
	ld   l, b                                        ; $6733: $68
	sbc  l                                           ; $6734: $9d
	sbc  c                                           ; $6735: $99
	ld   d, a                                        ; $6736: $57
	ld   l, b                                        ; $6737: $68
	xor  e                                           ; $6738: $ab
	ret  z                                           ; $6739: $c8

	sub  l                                           ; $673a: $95
	ld   d, l                                        ; $673b: $55
	ld   l, d                                        ; $673c: $6a
	sbc  e                                           ; $673d: $9b
	xor  d                                           ; $673e: $aa
	add  [hl]                                        ; $673f: $86
	halt                                             ; $6740: $76
	adc  b                                           ; $6741: $88
	sbc  c                                           ; $6742: $99
	halt                                             ; $6743: $76
	inc  sp                                          ; $6744: $33
	ld   de, $ff6b                                   ; $6745: $11 $6b $ff
	rst  $38                                         ; $6748: $ff
	ld   [hl], c                                     ; $6749: $71
	ld   de, $df15                                   ; $674a: $11 $15 $df
	rst  $38                                         ; $674d: $ff
	or   $34                                         ; $674e: $f6 $34
	jr   c, jr_0f9_67ce                              ; $6750: $38 $7c

	xor  d                                           ; $6752: $aa
	add  [hl]                                        ; $6753: $86
	add  [hl]                                        ; $6754: $86
	xor  d                                           ; $6755: $aa
	reti                                             ; $6756: $d9


	add  a                                           ; $6757: $87
	ld   b, l                                        ; $6758: $45
	ld   c, c                                        ; $6759: $49
	sbc  e                                           ; $675a: $9b
	cp   e                                           ; $675b: $bb
	and  a                                           ; $675c: $a7
	halt                                             ; $675d: $76
	ld   a, b                                        ; $675e: $78
	sbc  d                                           ; $675f: $9a
	adc  b                                           ; $6760: $88
	ld   h, l                                        ; $6761: $65
	ld   b, d                                        ; $6762: $42
	ld   de, $ff9b                                   ; $6763: $11 $9b $ff
	rst  $38                                         ; $6766: $ff
	ld   d, c                                        ; $6767: $51
	ld   de, $de17                                   ; $6768: $11 $17 $de
	cp   $e5                                         ; $676b: $fe $e5
	ld   d, h                                        ; $676d: $54
	ld   b, a                                        ; $676e: $47
	ld   l, e                                        ; $676f: $6b
	adc  d                                           ; $6770: $8a
	adc  b                                           ; $6771: $88
	add  a                                           ; $6772: $87
	xor  b                                           ; $6773: $a8
	or   a                                           ; $6774: $b7
	add  a                                           ; $6775: $87
	ld   d, a                                        ; $6776: $57
	ld   l, c                                        ; $6777: $69
	sbc  e                                           ; $6778: $9b
	xor  c                                           ; $6779: $a9
	add  [hl]                                        ; $677a: $86
	halt                                             ; $677b: $76
	adc  c                                           ; $677c: $89
	xor  d                                           ; $677d: $aa
	sub  a                                           ; $677e: $97
	ld   d, l                                        ; $677f: $55
	ld   b, e                                        ; $6780: $43
	ld   sp, $cf5a                                   ; $6781: $31 $5a $cf
	rst  $38                                         ; $6784: $ff
	call nz, $1221                                   ; $6785: $c4 $21 $12
	adc  h                                           ; $6788: $8c
	rst  $38                                         ; $6789: $ff
	db   $dd                                         ; $678a: $dd
	ld   d, [hl]                                     ; $678b: $56
	dec  [hl]                                        ; $678c: $35
	ld   l, b                                        ; $678d: $68
	xor  c                                           ; $678e: $a9
	cp   b                                           ; $678f: $b8
	and  a                                           ; $6790: $a7
	ld   a, b                                        ; $6791: $78
	adc  d                                           ; $6792: $8a
	ld   a, c                                        ; $6793: $79
	ld   a, b                                        ; $6794: $78
	ld   [hl], a                                     ; $6795: $77
	adc  b                                           ; $6796: $88
	sbc  c                                           ; $6797: $99
	sub  a                                           ; $6798: $97
	ld   [hl], a                                     ; $6799: $77
	ld   a, b                                        ; $679a: $78
	adc  d                                           ; $679b: $8a
	sbc  c                                           ; $679c: $99
	halt                                             ; $679d: $76
	ld   h, h                                        ; $679e: $64
	ld   d, l                                        ; $679f: $55
	ld   b, e                                        ; $67a0: $43
	ld   e, d                                        ; $67a1: $5a
	xor  a                                           ; $67a2: $af
	cp   $b5                                         ; $67a3: $fe $b5
	ld   sp, $7b12                                   ; $67a5: $31 $12 $7b

Call_0f9_67a8:
	rst  $28                                         ; $67a8: $ef
	db   $ec                                         ; $67a9: $ec
	halt                                             ; $67aa: $76
	ld   b, h                                        ; $67ab: $44
	ld   h, a                                        ; $67ac: $67
	cp   c                                           ; $67ad: $b9
	xor  c                                           ; $67ae: $a9
	sbc  b                                           ; $67af: $98
	ld   a, b                                        ; $67b0: $78
	adc  c                                           ; $67b1: $89
	adc  c                                           ; $67b2: $89
	add  a                                           ; $67b3: $87
	ld   [hl], a                                     ; $67b4: $77
	add  a                                           ; $67b5: $87
	adc  b                                           ; $67b6: $88
	adc  b                                           ; $67b7: $88
	ld   a, b                                        ; $67b8: $78
	ld   a, b                                        ; $67b9: $78
	adc  c                                           ; $67ba: $89
	adc  c                                           ; $67bb: $89
	add  a                                           ; $67bc: $87
	halt                                             ; $67bd: $76
	ld   h, a                                        ; $67be: $67
	ld   [hl], a                                     ; $67bf: $77
	ld   [hl], a                                     ; $67c0: $77
	ld   d, h                                        ; $67c1: $54
	ld   l, b                                        ; $67c2: $68
	xor  l                                           ; $67c3: $ad
	db   $dd                                         ; $67c4: $dd
	and  [hl]                                        ; $67c5: $a6
	ld   b, e                                        ; $67c6: $43
	ld   [hl], $9c                                   ; $67c7: $36 $9c
	db   $dd                                         ; $67c9: $dd
	ret                                              ; $67ca: $c9


	ld   h, l                                        ; $67cb: $65
	ld   b, l                                        ; $67cc: $45
	ld   l, b                                        ; $67cd: $68

jr_0f9_67ce:
	xor  d                                           ; $67ce: $aa
	xor  b                                           ; $67cf: $a8
	add  a                                           ; $67d0: $87
	ld   [hl], a                                     ; $67d1: $77
	adc  c                                           ; $67d2: $89
	adc  b                                           ; $67d3: $88
	sbc  c                                           ; $67d4: $99
	sbc  c                                           ; $67d5: $99
	adc  b                                           ; $67d6: $88
	adc  c                                           ; $67d7: $89
	adc  b                                           ; $67d8: $88
	adc  b                                           ; $67d9: $88
	sbc  c                                           ; $67da: $99
	add  a                                           ; $67db: $87
	halt                                             ; $67dc: $76
	ld   h, [hl]                                     ; $67dd: $66
	ld   h, a                                        ; $67de: $67
	halt                                             ; $67df: $76
	ld   d, l                                        ; $67e0: $55
	ld   a, c                                        ; $67e1: $79
	cp   l                                           ; $67e2: $bd
	call z, Call_0f9_4385                            ; $67e3: $cc $85 $43
	ld   [hl], $9b                                   ; $67e6: $36 $9b
	call z, Call_0f9_65b8                            ; $67e8: $cc $b8 $65
	ld   d, [hl]                                     ; $67eb: $56
	ld   a, d                                        ; $67ec: $7a
	sbc  d                                           ; $67ed: $9a
	sbc  c                                           ; $67ee: $99
	add  a                                           ; $67ef: $87
	adc  b                                           ; $67f0: $88
	sbc  c                                           ; $67f1: $99
	adc  b                                           ; $67f2: $88
	ld   [hl], a                                     ; $67f3: $77
	ld   [hl], a                                     ; $67f4: $77
	adc  c                                           ; $67f5: $89
	adc  b                                           ; $67f6: $88
	sbc  b                                           ; $67f7: $98

Jump_0f9_67f8:
	add  a                                           ; $67f8: $87
	ld   [hl], a                                     ; $67f9: $77
	ld   a, b                                        ; $67fa: $78
	adc  b                                           ; $67fb: $88
	adc  c                                           ; $67fc: $89
	adc  b                                           ; $67fd: $88
	adc  c                                           ; $67fe: $89
	sbc  b                                           ; $67ff: $98
	adc  c                                           ; $6800: $89
	adc  b                                           ; $6801: $88
	ld   [hl], a                                     ; $6802: $77
	ld   [hl], a                                     ; $6803: $77
	ld   [hl], a                                     ; $6804: $77
	ld   h, l                                        ; $6805: $65
	ld   d, a                                        ; $6806: $57
	adc  d                                           ; $6807: $8a
	call z, Call_0f9_65b9                            ; $6808: $cc $b9 $65
	ld   b, h                                        ; $680b: $44
	ld   l, b                                        ; $680c: $68
	xor  h                                           ; $680d: $ac
	res  2, a                                        ; $680e: $cb $97
	ld   h, [hl]                                     ; $6810: $66
	ld   h, a                                        ; $6811: $67
	sbc  c                                           ; $6812: $99
	adc  b                                           ; $6813: $88
	add  a                                           ; $6814: $87
	ld   a, b                                        ; $6815: $78
	adc  c                                           ; $6816: $89
	adc  b                                           ; $6817: $88
	add  a                                           ; $6818: $87
	adc  b                                           ; $6819: $88
	sbc  b                                           ; $681a: $98
	sbc  d                                           ; $681b: $9a
	sbc  c                                           ; $681c: $99
	add  a                                           ; $681d: $87
	ld   [hl], a                                     ; $681e: $77
	adc  b                                           ; $681f: $88
	sbc  b                                           ; $6820: $98
	add  a                                           ; $6821: $87
	ld   [hl], a                                     ; $6822: $77
	ld   [hl], a                                     ; $6823: $77
	adc  b                                           ; $6824: $88
	sbc  b                                           ; $6825: $98
	adc  b                                           ; $6826: $88
	ld   [hl], a                                     ; $6827: $77
	ld   a, b                                        ; $6828: $78
	adc  c                                           ; $6829: $89
	sbc  d                                           ; $682a: $9a
	add  a                                           ; $682b: $87
	ld   [hl], a                                     ; $682c: $77
	ld   [hl], a                                     ; $682d: $77
	sbc  c                                           ; $682e: $99
	sbc  b                                           ; $682f: $98
	adc  b                                           ; $6830: $88
	ld   [hl], a                                     ; $6831: $77
	ld   a, b                                        ; $6832: $78
	adc  c                                           ; $6833: $89
	adc  c                                           ; $6834: $89
	adc  b                                           ; $6835: $88
	adc  b                                           ; $6836: $88
	sbc  c                                           ; $6837: $99
	sbc  c                                           ; $6838: $99
	sbc  b                                           ; $6839: $98
	ld   [hl], a                                     ; $683a: $77
	ld   a, b                                        ; $683b: $78
	adc  c                                           ; $683c: $89
	sbc  b                                           ; $683d: $98
	add  a                                           ; $683e: $87
	ld   [hl], a                                     ; $683f: $77
	ld   a, b                                        ; $6840: $78
	adc  c                                           ; $6841: $89
	sbc  b                                           ; $6842: $98
	adc  b                                           ; $6843: $88
	ld   [hl], a                                     ; $6844: $77
	adc  c                                           ; $6845: $89
	adc  c                                           ; $6846: $89
	sbc  b                                           ; $6847: $98
	add  a                                           ; $6848: $87
	ld   [hl], a                                     ; $6849: $77
	ld   a, b                                        ; $684a: $78
	sbc  c                                           ; $684b: $99
	adc  b                                           ; $684c: $88
	ld   [hl], a                                     ; $684d: $77
	ld   h, [hl]                                     ; $684e: $66
	ld   a, b                                        ; $684f: $78
	sbc  d                                           ; $6850: $9a
	xor  d                                           ; $6851: $aa
	sub  a                                           ; $6852: $97
	ld   [hl], a                                     ; $6853: $77
	ld   [hl], a                                     ; $6854: $77
	sbc  c                                           ; $6855: $99
	xor  c                                           ; $6856: $a9
	sbc  b                                           ; $6857: $98
	ld   [hl], a                                     ; $6858: $77
	ld   [hl], a                                     ; $6859: $77
	ld   a, b                                        ; $685a: $78
	sbc  c                                           ; $685b: $99
	adc  b                                           ; $685c: $88
	add  a                                           ; $685d: $87
	ld   a, b                                        ; $685e: $78
	adc  b                                           ; $685f: $88
	adc  b                                           ; $6860: $88
	adc  b                                           ; $6861: $88
	adc  c                                           ; $6862: $89
	sbc  c                                           ; $6863: $99
	sbc  b                                           ; $6864: $98
	adc  b                                           ; $6865: $88
	adc  b                                           ; $6866: $88
	adc  b                                           ; $6867: $88
	adc  b                                           ; $6868: $88
	adc  b                                           ; $6869: $88
	add  a                                           ; $686a: $87
	ld   [hl], a                                     ; $686b: $77
	adc  b                                           ; $686c: $88
	adc  b                                           ; $686d: $88
	adc  b                                           ; $686e: $88
	adc  c                                           ; $686f: $89
	sbc  b                                           ; $6870: $98
	sbc  b                                           ; $6871: $98
	add  a                                           ; $6872: $87
	ld   [hl], a                                     ; $6873: $77
	adc  b                                           ; $6874: $88
	adc  b                                           ; $6875: $88
	adc  c                                           ; $6876: $89
	adc  b                                           ; $6877: $88
	ld   [hl], a                                     ; $6878: $77
	ld   a, b                                        ; $6879: $78
	adc  b                                           ; $687a: $88
	adc  b                                           ; $687b: $88
	adc  b                                           ; $687c: $88
	adc  b                                           ; $687d: $88
	adc  b                                           ; $687e: $88
	adc  b                                           ; $687f: $88
	adc  b                                           ; $6880: $88
	adc  b                                           ; $6881: $88
	adc  b                                           ; $6882: $88
	adc  b                                           ; $6883: $88
	adc  b                                           ; $6884: $88
	adc  b                                           ; $6885: $88
	adc  b                                           ; $6886: $88
	adc  b                                           ; $6887: $88
	adc  b                                           ; $6888: $88
	adc  b                                           ; $6889: $88
	adc  b                                           ; $688a: $88
	adc  b                                           ; $688b: $88
	adc  b                                           ; $688c: $88
	adc  b                                           ; $688d: $88
	adc  b                                           ; $688e: $88
	adc  b                                           ; $688f: $88
	adc  b                                           ; $6890: $88
	adc  b                                           ; $6891: $88
	adc  b                                           ; $6892: $88
	adc  b                                           ; $6893: $88
	adc  b                                           ; $6894: $88
	adc  b                                           ; $6895: $88
	adc  b                                           ; $6896: $88
	adc  b                                           ; $6897: $88
	adc  b                                           ; $6898: $88
	adc  b                                           ; $6899: $88
	adc  b                                           ; $689a: $88
	adc  b                                           ; $689b: $88
	adc  b                                           ; $689c: $88
	adc  b                                           ; $689d: $88
	adc  b                                           ; $689e: $88
	adc  b                                           ; $689f: $88
	adc  b                                           ; $68a0: $88
	adc  b                                           ; $68a1: $88
	adc  b                                           ; $68a2: $88
	adc  b                                           ; $68a3: $88
	adc  b                                           ; $68a4: $88
	adc  b                                           ; $68a5: $88
	adc  b                                           ; $68a6: $88
	adc  b                                           ; $68a7: $88
	adc  b                                           ; $68a8: $88
	adc  b                                           ; $68a9: $88
	adc  b                                           ; $68aa: $88
	adc  b                                           ; $68ab: $88
	adc  b                                           ; $68ac: $88
	adc  b                                           ; $68ad: $88
	adc  b                                           ; $68ae: $88
	adc  b                                           ; $68af: $88
	adc  b                                           ; $68b0: $88
	adc  b                                           ; $68b1: $88
	adc  b                                           ; $68b2: $88
	adc  b                                           ; $68b3: $88
	adc  b                                           ; $68b4: $88
	adc  b                                           ; $68b5: $88
	adc  b                                           ; $68b6: $88
	adc  b                                           ; $68b7: $88
	adc  b                                           ; $68b8: $88
	adc  b                                           ; $68b9: $88
	add  c                                           ; $68ba: $81
	ld   de, $1111                                   ; $68bb: $11 $11 $11
	ld   de, $1111                                   ; $68be: $11 $11 $11
	ld   de, $1111                                   ; $68c1: $11 $11 $11
	ld   de, $1111                                   ; $68c4: $11 $11 $11
	ld   de, $1111                                   ; $68c7: $11 $11 $11
	nop                                              ; $68ca: $00
	ld   c, b                                        ; $68cb: $48
	ld   de, $1111                                   ; $68cc: $11 $11 $11
	ld   de, $1111                                   ; $68cf: $11 $11 $11
	ld   de, $1111                                   ; $68d2: $11 $11 $11
	ld   de, $5413                                   ; $68d5: $11 $13 $54
	ld   d, h                                        ; $68d8: $54
	ld   d, h                                        ; $68d9: $54
	ld   b, c                                        ; $68da: $41
	rra                                              ; $68db: $1f
	rst  $38                                         ; $68dc: $ff
	pop  af                                          ; $68dd: $f1
	ld   de, $1311                                   ; $68de: $11 $11 $13
	pop  de                                          ; $68e1: $d1
	ld   de, $de1c                                   ; $68e2: $11 $1c $de
	call c, $d1de                                    ; $68e5: $dc $de $d1
	ld   de, $1111                                   ; $68e8: $11 $11 $11
	ld   de, $1111                                   ; $68eb: $11 $11 $11
	ld   de, $1111                                   ; $68ee: $11 $11 $11
	ld   de, $1111                                   ; $68f1: $11 $11 $11
	ld   de, $5411                                   ; $68f4: $11 $11 $54
	ld   b, h                                        ; $68f7: $44
	db   $d3                                         ; $68f8: $d3
	ld   de, $5454                                   ; $68f9: $11 $54 $54
	ld   h, a                                        ; $68fc: $67
	ld   [hl], d                                     ; $68fd: $72
	ld   de, $1111                                   ; $68fe: $11 $11 $11
	ld   de, $1112                                   ; $6901: $11 $12 $11
	ld   [de], a                                     ; $6904: $12
	ld   de, $1111                                   ; $6905: $11 $11 $11
	ld   h, [hl]                                     ; $6908: $66
	halt                                             ; $6909: $76
	and  e                                           ; $690a: $a3
	ld   de, $8888                                   ; $690b: $11 $88 $88
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
	adc  b                                           ; $691b: $88
	adc  b                                           ; $691c: $88
	adc  b                                           ; $691d: $88
	adc  b                                           ; $691e: $88
	adc  b                                           ; $691f: $88
	adc  b                                           ; $6920: $88
	adc  b                                           ; $6921: $88
	adc  b                                           ; $6922: $88
	adc  b                                           ; $6923: $88
	adc  b                                           ; $6924: $88
	adc  b                                           ; $6925: $88
	adc  b                                           ; $6926: $88
	adc  b                                           ; $6927: $88
	adc  b                                           ; $6928: $88
	adc  b                                           ; $6929: $88
	adc  b                                           ; $692a: $88
	adc  b                                           ; $692b: $88
	adc  b                                           ; $692c: $88
	adc  b                                           ; $692d: $88
	adc  b                                           ; $692e: $88
	adc  b                                           ; $692f: $88
	adc  b                                           ; $6930: $88
	adc  b                                           ; $6931: $88
	adc  b                                           ; $6932: $88
	adc  b                                           ; $6933: $88
	adc  b                                           ; $6934: $88
	adc  b                                           ; $6935: $88
	adc  b                                           ; $6936: $88
	adc  c                                           ; $6937: $89
	adc  b                                           ; $6938: $88
	adc  b                                           ; $6939: $88
	sbc  b                                           ; $693a: $98
	adc  b                                           ; $693b: $88
	adc  b                                           ; $693c: $88
	adc  b                                           ; $693d: $88
	adc  b                                           ; $693e: $88
	adc  b                                           ; $693f: $88
	adc  b                                           ; $6940: $88
	adc  b                                           ; $6941: $88
	adc  b                                           ; $6942: $88
	sbc  b                                           ; $6943: $98
	adc  c                                           ; $6944: $89
	ld   a, b                                        ; $6945: $78
	adc  b                                           ; $6946: $88
	sbc  b                                           ; $6947: $98
	adc  b                                           ; $6948: $88
	adc  c                                           ; $6949: $89
	ld   a, b                                        ; $694a: $78
	adc  b                                           ; $694b: $88
	sbc  b                                           ; $694c: $98
	adc  b                                           ; $694d: $88
	adc  b                                           ; $694e: $88
	adc  b                                           ; $694f: $88
	adc  b                                           ; $6950: $88
	adc  b                                           ; $6951: $88
	adc  b                                           ; $6952: $88
	ld   a, c                                        ; $6953: $79
	adc  b                                           ; $6954: $88
	sbc  b                                           ; $6955: $98
	adc  b                                           ; $6956: $88
	adc  b                                           ; $6957: $88
	adc  b                                           ; $6958: $88
	adc  b                                           ; $6959: $88
	adc  b                                           ; $695a: $88
	adc  b                                           ; $695b: $88
	adc  b                                           ; $695c: $88
	adc  b                                           ; $695d: $88
	sbc  b                                           ; $695e: $98
	adc  b                                           ; $695f: $88
	adc  b                                           ; $6960: $88
	adc  b                                           ; $6961: $88
	adc  b                                           ; $6962: $88
	adc  b                                           ; $6963: $88
	adc  b                                           ; $6964: $88
	adc  b                                           ; $6965: $88
	sub  a                                           ; $6966: $97
	adc  c                                           ; $6967: $89
	ld   a, b                                        ; $6968: $78
	adc  b                                           ; $6969: $88
	sub  a                                           ; $696a: $97
	sbc  b                                           ; $696b: $98
	adc  c                                           ; $696c: $89
	ld   a, b                                        ; $696d: $78
	add  a                                           ; $696e: $87
	adc  b                                           ; $696f: $88
	ld   a, c                                        ; $6970: $79
	ld   a, c                                        ; $6971: $79
	adc  b                                           ; $6972: $88
	adc  b                                           ; $6973: $88
	sub  a                                           ; $6974: $97
	adc  b                                           ; $6975: $88
	adc  b                                           ; $6976: $88
	adc  c                                           ; $6977: $89
	adc  b                                           ; $6978: $88
	sbc  b                                           ; $6979: $98
	adc  b                                           ; $697a: $88
	adc  b                                           ; $697b: $88
	adc  c                                           ; $697c: $89
	adc  b                                           ; $697d: $88
	sub  a                                           ; $697e: $97
	sbc  b                                           ; $697f: $98
	ld   a, b                                        ; $6980: $78
	ld   a, b                                        ; $6981: $78
	sub  a                                           ; $6982: $97
	sbc  b                                           ; $6983: $98
	adc  c                                           ; $6984: $89
	adc  b                                           ; $6985: $88
	adc  b                                           ; $6986: $88
	adc  b                                           ; $6987: $88
	adc  b                                           ; $6988: $88
	adc  b                                           ; $6989: $88
	ld   a, c                                        ; $698a: $79
	adc  b                                           ; $698b: $88
	add  a                                           ; $698c: $87
	adc  b                                           ; $698d: $88
	adc  b                                           ; $698e: $88
	adc  b                                           ; $698f: $88
	adc  b                                           ; $6990: $88
	adc  b                                           ; $6991: $88
	adc  b                                           ; $6992: $88
	ld   a, c                                        ; $6993: $79
	adc  b                                           ; $6994: $88
	add  a                                           ; $6995: $87
	add  a                                           ; $6996: $87
	sub  a                                           ; $6997: $97
	sub  a                                           ; $6998: $97
	adc  c                                           ; $6999: $89
	ld   a, b                                        ; $699a: $78
	ld   a, c                                        ; $699b: $79
	ld   a, b                                        ; $699c: $78
	adc  b                                           ; $699d: $88
	adc  b                                           ; $699e: $88
	adc  b                                           ; $699f: $88
	adc  b                                           ; $69a0: $88
	sub  a                                           ; $69a1: $97
	add  a                                           ; $69a2: $87
	adc  c                                           ; $69a3: $89
	ld   a, c                                        ; $69a4: $79
	ld   a, b                                        ; $69a5: $78
	ld   a, c                                        ; $69a6: $79
	adc  b                                           ; $69a7: $88
	add  a                                           ; $69a8: $87
	sub  a                                           ; $69a9: $97
	adc  b                                           ; $69aa: $88
	adc  b                                           ; $69ab: $88
	adc  b                                           ; $69ac: $88
	adc  b                                           ; $69ad: $88
	adc  b                                           ; $69ae: $88
	ld   a, b                                        ; $69af: $78
	add  a                                           ; $69b0: $87
	adc  b                                           ; $69b1: $88
	adc  c                                           ; $69b2: $89
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
	sbc  b                                           ; $69be: $98
	adc  b                                           ; $69bf: $88
	adc  b                                           ; $69c0: $88
	sbc  b                                           ; $69c1: $98
	adc  b                                           ; $69c2: $88
	adc  b                                           ; $69c3: $88
	adc  b                                           ; $69c4: $88
	ld   a, b                                        ; $69c5: $78
	add  a                                           ; $69c6: $87
	sbc  b                                           ; $69c7: $98
	adc  b                                           ; $69c8: $88
	ld   a, b                                        ; $69c9: $78
	adc  c                                           ; $69ca: $89
	adc  b                                           ; $69cb: $88
	adc  c                                           ; $69cc: $89
	add  a                                           ; $69cd: $87
	sub  a                                           ; $69ce: $97
	adc  c                                           ; $69cf: $89
	ld   a, c                                        ; $69d0: $79
	ld   [hl], a                                     ; $69d1: $77
	sub  a                                           ; $69d2: $97
	sbc  b                                           ; $69d3: $98
	ld   a, b                                        ; $69d4: $78
	ld   a, c                                        ; $69d5: $79
	adc  b                                           ; $69d6: $88
	adc  b                                           ; $69d7: $88
	add  a                                           ; $69d8: $87
	sub  a                                           ; $69d9: $97
	adc  c                                           ; $69da: $89
	ld   a, b                                        ; $69db: $78
	adc  b                                           ; $69dc: $88
	add  a                                           ; $69dd: $87
	add  a                                           ; $69de: $87
	adc  c                                           ; $69df: $89
	ld   a, b                                        ; $69e0: $78
	ld   a, b                                        ; $69e1: $78
	adc  b                                           ; $69e2: $88
	adc  b                                           ; $69e3: $88
	sub  a                                           ; $69e4: $97
	and  a                                           ; $69e5: $a7
	sbc  b                                           ; $69e6: $98
	ld   a, d                                        ; $69e7: $7a
	adc  c                                           ; $69e8: $89
	adc  b                                           ; $69e9: $88
	ld   a, b                                        ; $69ea: $78
	add  a                                           ; $69eb: $87
	ld   l, b                                        ; $69ec: $68
	ld   h, a                                        ; $69ed: $67
	add  a                                           ; $69ee: $87
	sub  a                                           ; $69ef: $97
	adc  b                                           ; $69f0: $88
	adc  c                                           ; $69f1: $89
	ld   a, b                                        ; $69f2: $78
	sub  a                                           ; $69f3: $97
	sbc  b                                           ; $69f4: $98
	adc  d                                           ; $69f5: $8a
	ld   l, c                                        ; $69f6: $69
	ld   [hl], a                                     ; $69f7: $77
	and  [hl]                                        ; $69f8: $a6
	sub  a                                           ; $69f9: $97
	ld   a, b                                        ; $69fa: $78
	ld   a, c                                        ; $69fb: $79
	adc  b                                           ; $69fc: $88
	sub  a                                           ; $69fd: $97
	sub  a                                           ; $69fe: $97
	adc  c                                           ; $69ff: $89
	ld   a, c                                        ; $6a00: $79
	ld   a, b                                        ; $6a01: $78
	sub  a                                           ; $6a02: $97
	sub  a                                           ; $6a03: $97
	adc  b                                           ; $6a04: $88
	ld   a, b                                        ; $6a05: $78
	sub  a                                           ; $6a06: $97
	sub  a                                           ; $6a07: $97
	sbc  c                                           ; $6a08: $99
	ld   a, d                                        ; $6a09: $7a
	add  a                                           ; $6a0a: $87
	and  a                                           ; $6a0b: $a7
	sbc  b                                           ; $6a0c: $98
	ld   a, d                                        ; $6a0d: $7a
	ld   a, b                                        ; $6a0e: $78
	sub  a                                           ; $6a0f: $97
	adc  c                                           ; $6a10: $89
	ld   a, b                                        ; $6a11: $78
	add  a                                           ; $6a12: $87
	adc  c                                           ; $6a13: $89
	adc  b                                           ; $6a14: $88
	sub  a                                           ; $6a15: $97
	sbc  c                                           ; $6a16: $99
	ld   a, b                                        ; $6a17: $78
	ld   a, b                                        ; $6a18: $78
	add  a                                           ; $6a19: $87
	adc  b                                           ; $6a1a: $88
	adc  c                                           ; $6a1b: $89
	ld   a, c                                        ; $6a1c: $79
	sub  a                                           ; $6a1d: $97
	add  a                                           ; $6a1e: $87
	ld   a, c                                        ; $6a1f: $79
	ld   a, b                                        ; $6a20: $78
	sub  a                                           ; $6a21: $97
	adc  c                                           ; $6a22: $89
	ld   a, c                                        ; $6a23: $79
	add  a                                           ; $6a24: $87
	sub  a                                           ; $6a25: $97
	adc  b                                           ; $6a26: $88
	ld   a, b                                        ; $6a27: $78
	add  a                                           ; $6a28: $87
	sub  a                                           ; $6a29: $97
	adc  b                                           ; $6a2a: $88
	ld   a, b                                        ; $6a2b: $78
	adc  b                                           ; $6a2c: $88
	ld   [hl], a                                     ; $6a2d: $77
	sub  a                                           ; $6a2e: $97
	sbc  b                                           ; $6a2f: $98
	ld   a, b                                        ; $6a30: $78
	ld   [hl], a                                     ; $6a31: $77
	adc  b                                           ; $6a32: $88
	adc  c                                           ; $6a33: $89
	add  a                                           ; $6a34: $87
	adc  b                                           ; $6a35: $88
	adc  c                                           ; $6a36: $89
	add  a                                           ; $6a37: $87
	sub  a                                           ; $6a38: $97
	sbc  c                                           ; $6a39: $99
	adc  b                                           ; $6a3a: $88
	ld   a, b                                        ; $6a3b: $78
	sbc  b                                           ; $6a3c: $98
	sbc  b                                           ; $6a3d: $98
	ld   a, b                                        ; $6a3e: $78
	ld   a, c                                        ; $6a3f: $79
	adc  b                                           ; $6a40: $88
	sub  a                                           ; $6a41: $97
	sbc  b                                           ; $6a42: $98
	adc  b                                           ; $6a43: $88
	adc  c                                           ; $6a44: $89
	adc  b                                           ; $6a45: $88
	ld   [hl], a                                     ; $6a46: $77
	add  [hl]                                        ; $6a47: $86
	adc  b                                           ; $6a48: $88
	ld   a, b                                        ; $6a49: $78
	ld   a, c                                        ; $6a4a: $79
	adc  b                                           ; $6a4b: $88
	add  [hl]                                        ; $6a4c: $86
	sbc  b                                           ; $6a4d: $98
	ld   a, b                                        ; $6a4e: $78
	ld   [hl], a                                     ; $6a4f: $77
	sbc  c                                           ; $6a50: $99
	add  a                                           ; $6a51: $87
	add  a                                           ; $6a52: $87
	adc  c                                           ; $6a53: $89
	ld   a, b                                        ; $6a54: $78
	ld   [hl], a                                     ; $6a55: $77
	sbc  b                                           ; $6a56: $98
	sbc  c                                           ; $6a57: $99
	ld   l, b                                        ; $6a58: $68
	adc  c                                           ; $6a59: $89
	sub  a                                           ; $6a5a: $97
	add  a                                           ; $6a5b: $87
	adc  b                                           ; $6a5c: $88
	adc  b                                           ; $6a5d: $88
	add  a                                           ; $6a5e: $87
	ld   a, b                                        ; $6a5f: $78
	ld   a, c                                        ; $6a60: $79
	sbc  b                                           ; $6a61: $98
	ld   [hl], a                                     ; $6a62: $77
	ld   a, b                                        ; $6a63: $78
	adc  b                                           ; $6a64: $88
	add  [hl]                                        ; $6a65: $86
	add  a                                           ; $6a66: $87
	sbc  c                                           ; $6a67: $99
	adc  b                                           ; $6a68: $88
	ld   a, b                                        ; $6a69: $78
	adc  b                                           ; $6a6a: $88
	sbc  c                                           ; $6a6b: $99
	adc  b                                           ; $6a6c: $88
	adc  b                                           ; $6a6d: $88
	add  a                                           ; $6a6e: $87
	adc  b                                           ; $6a6f: $88
	adc  b                                           ; $6a70: $88
	adc  b                                           ; $6a71: $88
	adc  b                                           ; $6a72: $88
	adc  b                                           ; $6a73: $88
	ld   a, c                                        ; $6a74: $79
	adc  c                                           ; $6a75: $89
	sub  [hl]                                        ; $6a76: $96
	adc  b                                           ; $6a77: $88
	adc  c                                           ; $6a78: $89
	ld   [hl], a                                     ; $6a79: $77
	halt                                             ; $6a7a: $76
	adc  c                                           ; $6a7b: $89
	ld   [hl], a                                     ; $6a7c: $77
	ld   h, a                                        ; $6a7d: $67
	adc  b                                           ; $6a7e: $88
	ld   [hl], a                                     ; $6a7f: $77
	ld   a, b                                        ; $6a80: $78
	adc  b                                           ; $6a81: $88
	add  a                                           ; $6a82: $87
	ld   a, b                                        ; $6a83: $78
	adc  c                                           ; $6a84: $89
	sbc  b                                           ; $6a85: $98
	ld   a, b                                        ; $6a86: $78
	sbc  b                                           ; $6a87: $98
	adc  b                                           ; $6a88: $88
	ld   a, b                                        ; $6a89: $78
	ld   a, b                                        ; $6a8a: $78
	add  a                                           ; $6a8b: $87
	adc  b                                           ; $6a8c: $88
	adc  c                                           ; $6a8d: $89
	adc  b                                           ; $6a8e: $88
	add  a                                           ; $6a8f: $87
	adc  b                                           ; $6a90: $88
	sbc  c                                           ; $6a91: $99
	adc  b                                           ; $6a92: $88
	adc  b                                           ; $6a93: $88
	ld   a, b                                        ; $6a94: $78
	add  a                                           ; $6a95: $87
	sub  a                                           ; $6a96: $97
	ld   a, b                                        ; $6a97: $78
	ld   a, b                                        ; $6a98: $78
	add  a                                           ; $6a99: $87
	adc  b                                           ; $6a9a: $88
	ld   a, c                                        ; $6a9b: $79
	add  a                                           ; $6a9c: $87
	sub  a                                           ; $6a9d: $97
	adc  c                                           ; $6a9e: $89
	ld   [hl], a                                     ; $6a9f: $77
	halt                                             ; $6aa0: $76
	add  a                                           ; $6aa1: $87
	ld   [hl], a                                     ; $6aa2: $77
	ld   a, c                                        ; $6aa3: $79
	sbc  b                                           ; $6aa4: $98
	adc  c                                           ; $6aa5: $89
	adc  d                                           ; $6aa6: $8a
	sbc  d                                           ; $6aa7: $9a
	sbc  c                                           ; $6aa8: $99
	sbc  c                                           ; $6aa9: $99
	sbc  c                                           ; $6aaa: $99
	add  a                                           ; $6aab: $87
	add  a                                           ; $6aac: $87
	ld   a, b                                        ; $6aad: $78
	ld   a, b                                        ; $6aae: $78
	ld   a, b                                        ; $6aaf: $78
	adc  b                                           ; $6ab0: $88
	sbc  c                                           ; $6ab1: $99
	adc  c                                           ; $6ab2: $89
	add  a                                           ; $6ab3: $87
	add  a                                           ; $6ab4: $87
	halt                                             ; $6ab5: $76
	ld   h, [hl]                                     ; $6ab6: $66
	ld   h, [hl]                                     ; $6ab7: $66
	ld   h, [hl]                                     ; $6ab8: $66
	ld   h, [hl]                                     ; $6ab9: $66
	ld   h, a                                        ; $6aba: $67
	ld   [hl], a                                     ; $6abb: $77
	adc  c                                           ; $6abc: $89
	xor  c                                           ; $6abd: $a9
	xor  e                                           ; $6abe: $ab
	xor  e                                           ; $6abf: $ab
	cp   e                                           ; $6ac0: $bb
	cp   e                                           ; $6ac1: $bb
	xor  d                                           ; $6ac2: $aa
	adc  c                                           ; $6ac3: $89
	ld   [hl], a                                     ; $6ac4: $77
	halt                                             ; $6ac5: $76
	ld   h, [hl]                                     ; $6ac6: $66
	ld   h, a                                        ; $6ac7: $67
	ld   a, b                                        ; $6ac8: $78
	sbc  b                                           ; $6ac9: $98
	adc  c                                           ; $6aca: $89
	xor  d                                           ; $6acb: $aa
	sbc  d                                           ; $6acc: $9a
	adc  b                                           ; $6acd: $88
	add  a                                           ; $6ace: $87
	ld   h, [hl]                                     ; $6acf: $66
	ld   d, h                                        ; $6ad0: $54
	ld   b, e                                        ; $6ad1: $43
	inc  h                                           ; $6ad2: $24
	ld   d, l                                        ; $6ad3: $55
	ld   h, a                                        ; $6ad4: $67
	ld   l, b                                        ; $6ad5: $68
	cp   h                                           ; $6ad6: $bc
	db   $dd                                         ; $6ad7: $dd
	db   $ed                                         ; $6ad8: $ed
	sbc  $dc                                         ; $6ad9: $de $dc
	cp   c                                           ; $6adb: $b9
	add  a                                           ; $6adc: $87
	halt                                             ; $6add: $76
	ld   h, l                                        ; $6ade: $65
	ld   d, l                                        ; $6adf: $55
	ld   d, a                                        ; $6ae0: $57
	ld   [hl], a                                     ; $6ae1: $77
	adc  b                                           ; $6ae2: $88
	adc  c                                           ; $6ae3: $89
	sbc  d                                           ; $6ae4: $9a
	xor  c                                           ; $6ae5: $a9
	sbc  c                                           ; $6ae6: $99
	adc  c                                           ; $6ae7: $89
	ld   a, b                                        ; $6ae8: $78
	halt                                             ; $6ae9: $76
	ld   h, [hl]                                     ; $6aea: $66
	ld   [hl], a                                     ; $6aeb: $77
	ld   [hl], a                                     ; $6aec: $77
	ld   [hl], a                                     ; $6aed: $77
	ld   [hl], a                                     ; $6aee: $77
	ld   h, l                                        ; $6aef: $65
	inc  [hl]                                        ; $6af0: $34
	halt                                             ; $6af1: $76
	ld   a, b                                        ; $6af2: $78
	ld   d, a                                        ; $6af3: $57
	sbc  d                                           ; $6af4: $9a
	db   $dd                                         ; $6af5: $dd
	res  7, e                                        ; $6af6: $cb $bb
	set  1, c                                        ; $6af8: $cb $c9
	ld   a, b                                        ; $6afa: $78
	adc  c                                           ; $6afb: $89
	sbc  b                                           ; $6afc: $98
	halt                                             ; $6afd: $76
	ld   l, b                                        ; $6afe: $68
	adc  b                                           ; $6aff: $88
	sbc  b                                           ; $6b00: $98
	ld   a, b                                        ; $6b01: $78
	adc  c                                           ; $6b02: $89
	sbc  c                                           ; $6b03: $99
	adc  b                                           ; $6b04: $88
	sbc  c                                           ; $6b05: $99
	adc  c                                           ; $6b06: $89
	add  a                                           ; $6b07: $87
	ld   h, [hl]                                     ; $6b08: $66
	ld   [hl], a                                     ; $6b09: $77
	ld   [hl], a                                     ; $6b0a: $77
	ld   h, [hl]                                     ; $6b0b: $66
	ld   h, a                                        ; $6b0c: $67
	ld   [hl], a                                     ; $6b0d: $77
	ld   h, e                                        ; $6b0e: $63
	dec  h                                           ; $6b0f: $25
	add  a                                           ; $6b10: $87
	sbc  c                                           ; $6b11: $99
	ld   b, a                                        ; $6b12: $47
	xor  e                                           ; $6b13: $ab
	db   $dd                                         ; $6b14: $dd
	cp   d                                           ; $6b15: $ba
	xor  e                                           ; $6b16: $ab
	set  1, c                                        ; $6b17: $cb $c9
	ld   a, b                                        ; $6b19: $78
	adc  c                                           ; $6b1a: $89
	xor  c                                           ; $6b1b: $a9
	add  [hl]                                        ; $6b1c: $86
	ld   l, b                                        ; $6b1d: $68
	adc  c                                           ; $6b1e: $89
	sub  a                                           ; $6b1f: $97
	ld   [hl], a                                     ; $6b20: $77
	sbc  c                                           ; $6b21: $99
	sbc  d                                           ; $6b22: $9a
	adc  b                                           ; $6b23: $88
	ld   a, b                                        ; $6b24: $78
	sbc  c                                           ; $6b25: $99
	add  a                                           ; $6b26: $87
	ld   h, [hl]                                     ; $6b27: $66
	ld   [hl], a                                     ; $6b28: $77
	ld   [hl], a                                     ; $6b29: $77
	ld   [hl], l                                     ; $6b2a: $75
	ld   d, l                                        ; $6b2b: $55
	ld   b, e                                        ; $6b2c: $43
	ld   h, $74                                      ; $6b2d: $26 $74
	sub  [hl]                                        ; $6b2f: $96
	ld   c, c                                        ; $6b30: $49
	sbc  h                                           ; $6b31: $9c
	db   $db                                         ; $6b32: $db
	cp   e                                           ; $6b33: $bb
	cp   l                                           ; $6b34: $bd
	db   $db                                         ; $6b35: $db
	ret                                              ; $6b36: $c9


	adc  b                                           ; $6b37: $88
	adc  c                                           ; $6b38: $89
	sbc  b                                           ; $6b39: $98
	ld   [hl], l                                     ; $6b3a: $75
	ld   d, a                                        ; $6b3b: $57
	ld   a, b                                        ; $6b3c: $78
	add  [hl]                                        ; $6b3d: $86
	ld   [hl], a                                     ; $6b3e: $77
	xor  d                                           ; $6b3f: $aa
	xor  e                                           ; $6b40: $ab
	xor  b                                           ; $6b41: $a8
	sbc  d                                           ; $6b42: $9a
	sbc  c                                           ; $6b43: $99
	add  [hl]                                        ; $6b44: $86
	ld   h, l                                        ; $6b45: $65
	ld   h, [hl]                                     ; $6b46: $66
	ld   h, [hl]                                     ; $6b47: $66
	ld   d, h                                        ; $6b48: $54
	ld   b, e                                        ; $6b49: $43
	ld   hl, $5749                                   ; $6b4a: $21 $49 $57
	sub  e                                           ; $6b4d: $93
	adc  e                                           ; $6b4e: $8b
	cp   a                                           ; $6b4f: $bf
	db   $ed                                         ; $6b50: $ed
	jp   c, $bdce                                    ; $6b51: $da $ce $bd

	and  [hl]                                        ; $6b54: $a6
	add  [hl]                                        ; $6b55: $86
	adc  c                                           ; $6b56: $89
	ld   [hl], a                                     ; $6b57: $77
	ld   d, h                                        ; $6b58: $54
	ld   [hl], a                                     ; $6b59: $77
	ld   a, d                                        ; $6b5a: $7a
	adc  b                                           ; $6b5b: $88
	adc  c                                           ; $6b5c: $89
	cp   e                                           ; $6b5d: $bb
	cp   h                                           ; $6b5e: $bc
	xor  c                                           ; $6b5f: $a9
	sbc  b                                           ; $6b60: $98
	add  a                                           ; $6b61: $87
	ld   h, l                                        ; $6b62: $65
	inc  [hl]                                        ; $6b63: $34
	ld   b, h                                        ; $6b64: $44
	ld   b, h                                        ; $6b65: $44
	ld   b, d                                        ; $6b66: $42
	ld   hl, $a63a                                   ; $6b67: $21 $3a $a6
	or   [hl]                                        ; $6b6a: $b6
	ld   e, h                                        ; $6b6b: $5c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b6c: $cf
	ei                                               ; $6b6d: $fb
	jp   z, $ba9d                                    ; $6b6e: $ca $9d $ba

	and  l                                           ; $6b71: $a5
	ld   d, [hl]                                     ; $6b72: $56
	ld   l, d                                        ; $6b73: $6a
	ld   [hl], a                                     ; $6b74: $77
	add  l                                           ; $6b75: $85
	adc  c                                           ; $6b76: $89
	xor  e                                           ; $6b77: $ab
	sbc  c                                           ; $6b78: $99
	sbc  b                                           ; $6b79: $98
	cp   h                                           ; $6b7a: $bc
	cp   e                                           ; $6b7b: $bb
	sbc  b                                           ; $6b7c: $98
	add  a                                           ; $6b7d: $87
	add  [hl]                                        ; $6b7e: $86
	ld   d, l                                        ; $6b7f: $55
	ld   b, h                                        ; $6b80: $44
	ld   b, h                                        ; $6b81: $44
	ld   b, h                                        ; $6b82: $44
	ld   hl, $8813                                   ; $6b83: $21 $13 $88
	ld   l, c                                        ; $6b86: $69
	ld   d, l                                        ; $6b87: $55
	call $cdff                                       ; $6b88: $cd $ff $cd
	xor  d                                           ; $6b8b: $aa
	call c, Call_0f9_55aa                            ; $6b8c: $dc $aa $55
	ld   d, [hl]                                     ; $6b8f: $56
	sub  [hl]                                        ; $6b90: $96
	halt                                             ; $6b91: $76
	ld   d, a                                        ; $6b92: $57
	sbc  d                                           ; $6b93: $9a
	cp   d                                           ; $6b94: $ba
	xor  d                                           ; $6b95: $aa
	xor  h                                           ; $6b96: $ac
	call c, $98da                                    ; $6b97: $dc $da $98
	sbc  c                                           ; $6b9a: $99
	halt                                             ; $6b9b: $76
	ld   b, d                                        ; $6b9c: $42
	ld   [hl+], a                                    ; $6b9d: $22
	ld   de, $1111                                   ; $6b9e: $11 $11 $11
	ld   d, [hl]                                     ; $6ba1: $56
	ld   e, d                                        ; $6ba2: $5a
	ld   h, [hl]                                     ; $6ba3: $66
	call $ffff                                       ; $6ba4: $cd $ff $ff
	set  5, h                                        ; $6ba7: $cb $ec
	xor  d                                           ; $6ba9: $aa
	ld   d, h                                        ; $6baa: $54
	inc  [hl]                                        ; $6bab: $34
	ld   h, l                                        ; $6bac: $65
	ld   d, [hl]                                     ; $6bad: $56
	ld   b, [hl]                                     ; $6bae: $46
	sbc  c                                           ; $6baf: $99
	call z, $becc                                    ; $6bb0: $cc $cc $be
	db   $ed                                         ; $6bb3: $ed
	db   $db                                         ; $6bb4: $db
	sbc  b                                           ; $6bb5: $98
	halt                                             ; $6bb6: $76
	ld   d, h                                        ; $6bb7: $54
	ld   sp, $1111                                   ; $6bb8: $31 $11 $11
	ld   de, $7514                                   ; $6bbb: $11 $14 $75
	sbc  c                                           ; $6bbe: $99
	ld   e, l                                        ; $6bbf: $5d
	rst  $28                                         ; $6bc0: $ef
	rst  $38                                         ; $6bc1: $ff
	cp   $ae                                         ; $6bc2: $fe $ae
	jp   c, Jump_0f9_44a6                            ; $6bc4: $da $a6 $44

	dec  h                                           ; $6bc7: $25
	ld   d, h                                        ; $6bc8: $54
	ld   h, h                                        ; $6bc9: $64
	ld   e, b                                        ; $6bca: $58
	sbc  e                                           ; $6bcb: $9b
	cp   h                                           ; $6bcc: $bc
	call c, $edef                                    ; $6bcd: $dc $ef $ed
	db   $db                                         ; $6bd0: $db
	xor  b                                           ; $6bd1: $a8
	add  [hl]                                        ; $6bd2: $86
	ld   d, h                                        ; $6bd3: $54
	ld   hl, $1111                                   ; $6bd4: $21 $11 $11
	ld   [de], a                                     ; $6bd7: $12
	ld   [hl-], a                                    ; $6bd8: $32
	ld   [hl], h                                     ; $6bd9: $74
	ld   l, h                                        ; $6bda: $6c
	rst  JumpTable                                         ; $6bdb: $df
	rst  $38                                         ; $6bdc: $ff
	rst  $38                                         ; $6bdd: $ff
	rst  $28                                         ; $6bde: $ef
	db   $ec                                         ; $6bdf: $ec
	or   [hl]                                        ; $6be0: $b6
	ld   h, h                                        ; $6be1: $64
	ld   [hl], $34                                   ; $6be2: $36 $34
	ld   b, d                                        ; $6be4: $42
	ld   d, [hl]                                     ; $6be5: $56
	adc  d                                           ; $6be6: $8a
	xor  h                                           ; $6be7: $ac
	call z, $ffee                                    ; $6be8: $cc $ee $ff
	call z, Call_0f9_7588                            ; $6beb: $cc $88 $75
	ld   b, d                                        ; $6bee: $42
	ld   de, $1111                                   ; $6bef: $11 $11 $11
	ld   sp, $2947                                   ; $6bf2: $31 $47 $29
	call $ffff                                       ; $6bf5: $cd $ff $ff
	rst  JumpTable                                         ; $6bf8: $df
	db   $fd                                         ; $6bf9: $fd
	jp   hl                                          ; $6bfa: $e9


	ld   h, a                                        ; $6bfb: $67
	ld   h, $52                                      ; $6bfc: $26 $52
	ld   h, d                                        ; $6bfe: $62
	ld   b, l                                        ; $6bff: $45
	ld   l, d                                        ; $6c00: $6a
	sbc  e                                           ; $6c01: $9b
	set  3, [hl]                                     ; $6c02: $cb $de
	rst  $28                                         ; $6c04: $ef
	call c, $96a7                                    ; $6c05: $dc $a7 $96
	ld   b, d                                        ; $6c08: $42
	ld   de, $1111                                   ; $6c09: $11 $11 $11
	ld   [de], a                                     ; $6c0c: $12
	ld   b, c                                        ; $6c0d: $41
	ld   a, d                                        ; $6c0e: $7a
	rst  $28                                         ; $6c0f: $ef
	rst  $38                                         ; $6c10: $ff
	db   $fd                                         ; $6c11: $fd
	rst  $38                                         ; $6c12: $ff
	rst  $28                                         ; $6c13: $ef
	xor  c                                           ; $6c14: $a9
	ld   [hl], d                                     ; $6c15: $72
	add  l                                           ; $6c16: $85
	ld   b, [hl]                                     ; $6c17: $46
	inc  d                                           ; $6c18: $14
	ld   [hl], $99                                   ; $6c19: $36 $99
	call z, $efcd                                    ; $6c1b: $cc $cd $ef
	db   $ed                                         ; $6c1e: $ed
	jp   z, Jump_0f9_5377                            ; $6c1f: $ca $77 $53

	ld   de, $1111                                   ; $6c22: $11 $11 $11
	dec  d                                           ; $6c25: $15
	dec  d                                           ; $6c26: $15
	adc  b                                           ; $6c27: $88
	rst  $38                                         ; $6c28: $ff
	rst  $38                                         ; $6c29: $ff
	rst  JumpTable                                         ; $6c2a: $df
	rst  $38                                         ; $6c2b: $ff
	ei                                               ; $6c2c: $fb
	cp   c                                           ; $6c2d: $b9
	ld   c, b                                        ; $6c2e: $48
	ld   b, h                                        ; $6c2f: $44
	ld   h, d                                        ; $6c30: $62
	ld   d, e                                        ; $6c31: $53
	scf                                              ; $6c32: $37
	ld   l, d                                        ; $6c33: $6a
	cp   e                                           ; $6c34: $bb
	call c, $bcec                                    ; $6c35: $dc $ec $bc
	cp   d                                           ; $6c38: $ba
	ld   [hl], h                                     ; $6c39: $74
	ld   hl, $1111                                   ; $6c3a: $21 $11 $11
	inc  d                                           ; $6c3d: $14
	ld   [de], a                                     ; $6c3e: $12
	add  a                                           ; $6c3f: $87
	rst  $38                                         ; $6c40: $ff
	rst  $28                                         ; $6c41: $ef
	rst  JumpTable                                         ; $6c42: $df
	cp   $fd                                         ; $6c43: $fe $fd
	call Call_0f9_7449                               ; $6c45: $cd $49 $74
	add  d                                           ; $6c48: $82
	ld   d, e                                        ; $6c49: $53
	scf                                              ; $6c4a: $37
	ld   c, b                                        ; $6c4b: $48
	xor  d                                           ; $6c4c: $aa
	db   $ec                                         ; $6c4d: $ec
	db   $ec                                         ; $6c4e: $ec
	cp   l                                           ; $6c4f: $bd
	cp   d                                           ; $6c50: $ba
	ld   [hl], e                                     ; $6c51: $73
	ld   de, $1112                                   ; $6c52: $11 $12 $11
	ld   hl, $6f34                                   ; $6c55: $21 $34 $6f
	xor  a                                           ; $6c58: $af
	db   $fc                                         ; $6c59: $fc
	rst  $38                                         ; $6c5a: $ff
	rst  $38                                         ; $6c5b: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c5c: $cf
	rst  ToBoot                                         ; $6c5d: $c7
	add  $87                                         ; $6c5e: $c6 $87
	scf                                              ; $6c60: $37
	inc  h                                           ; $6c61: $24
	ld   h, l                                        ; $6c62: $65
	xor  b                                           ; $6c63: $a8
	res  5, h                                        ; $6c64: $cb $ac
	xor  e                                           ; $6c66: $ab
	cp   b                                           ; $6c67: $b8
	ld   d, c                                        ; $6c68: $51
	ld   de, $1321                                   ; $6c69: $11 $21 $13
	ld   de, $fd65                                   ; $6c6c: $11 $65 $fd
	rst  $28                                         ; $6c6f: $ef
	cp   a                                           ; $6c70: $bf
	rst  $38                                         ; $6c71: $ff
	cp   $ed                                         ; $6c72: $fe $ed
	ld   l, e                                        ; $6c74: $6b
	ld   [hl], a                                     ; $6c75: $77
	sub  e                                           ; $6c76: $93
	ld   h, d                                        ; $6c77: $62
	ld   [hl], $5a                                   ; $6c78: $36 $5a
	xor  h                                           ; $6c7a: $ac
	cp   c                                           ; $6c7b: $b9
	cp   e                                           ; $6c7c: $bb
	xor  d                                           ; $6c7d: $aa
	ld   [hl], h                                     ; $6c7e: $74
	ld   de, $1111                                   ; $6c7f: $11 $11 $11
	ld   de, $8f32                                   ; $6c82: $11 $32 $8f
	xor  a                                           ; $6c85: $af
	db   $fc                                         ; $6c86: $fc
	rst  $38                                         ; $6c87: $ff
	rst  $38                                         ; $6c88: $ff
	rst  JumpTable                                         ; $6c89: $df
	xor  b                                           ; $6c8a: $a8
	push bc                                          ; $6c8b: $c5
	or   [hl]                                        ; $6c8c: $b6
	ld   b, a                                        ; $6c8d: $47
	dec  d                                           ; $6c8e: $15
	ld   d, a                                        ; $6c8f: $57
	cp   b                                           ; $6c90: $b8
	reti                                             ; $6c91: $d9


	sbc  e                                           ; $6c92: $9b
	sbc  h                                           ; $6c93: $9c
	add  l                                           ; $6c94: $85
	ld   hl, $1112                                   ; $6c95: $21 $12 $11
	ld   sp, $4e13                                   ; $6c98: $31 $13 $4e
	sbc  $fd                                         ; $6c9b: $de $fd
	rst  $38                                         ; $6c9d: $ff
	rst  $38                                         ; $6c9e: $ff
	cp   $f6                                         ; $6c9f: $fe $f6
	ret                                              ; $6ca1: $c9


	sbc  d                                           ; $6ca2: $9a
	ld   c, b                                        ; $6ca3: $48
	inc  sp                                          ; $6ca4: $33
	add  [hl]                                        ; $6ca5: $86
	ret                                              ; $6ca6: $c9


	cp   c                                           ; $6ca7: $b9
	ld   e, d                                        ; $6ca8: $5a
	adc  b                                           ; $6ca9: $88
	ld   [hl], d                                     ; $6caa: $72
	ld   de, $1611                                   ; $6cab: $11 $11 $16
	ld   de, $fc51                                   ; $6cae: $11 $51 $fc
	rst  JumpTable                                         ; $6cb1: $df
	xor  a                                           ; $6cb2: $af
	cp   $fc                                         ; $6cb3: $fe $fc
	cp   $7a                                         ; $6cb5: $fe $7a
	ld   l, c                                        ; $6cb7: $69
	sub  l                                           ; $6cb8: $95
	and  h                                           ; $6cb9: $a4
	ld   b, a                                        ; $6cba: $47
	ld   l, l                                        ; $6cbb: $6d
	sbc  h                                           ; $6cbc: $9c
	push bc                                          ; $6cbd: $c5
	and  a                                           ; $6cbe: $a7
	sub  [hl]                                        ; $6cbf: $96
	ld   de, $1111                                   ; $6cc0: $11 $11 $11
	add  c                                           ; $6cc3: $81
	ld   d, $1f                                      ; $6cc4: $16 $1f
	cp   a                                           ; $6cc6: $bf
	ld   sp, hl                                      ; $6cc7: $f9
	rst  $38                                         ; $6cc8: $ff
	rst  $28                                         ; $6cc9: $ef
	cp   a                                           ; $6cca: $bf
	and  $d4                                         ; $6ccb: $e6 $d4
	sbc  c                                           ; $6ccd: $99
	ld   c, e                                        ; $6cce: $4b
	daa                                              ; $6ccf: $27
	halt                                             ; $6cd0: $76
	ld   hl, sp-$37                                  ; $6cd1: $f8 $c9
	ld   e, e                                        ; $6cd3: $5b
	ld   [hl], $21                                   ; $6cd4: $36 $21
	ld   de, $4111                                   ; $6cd6: $11 $11 $41
	rla                                              ; $6cd9: $17
	cpl                                              ; $6cda: $2f
	db   $dd                                         ; $6cdb: $dd
	ei                                               ; $6cdc: $fb
	rst  $38                                         ; $6cdd: $ff
	rst  JumpTable                                         ; $6cde: $df
	cp   a                                           ; $6cdf: $bf
	push af                                          ; $6ce0: $f5
	push de                                          ; $6ce1: $d5
	adc  d                                           ; $6ce2: $8a
	dec  sp                                          ; $6ce3: $3b
	scf                                              ; $6ce4: $37
	sub  [hl]                                        ; $6ce5: $96
	add  sp, -$47                                    ; $6ce6: $e8 $b9
	ld   e, d                                        ; $6ce8: $5a
	inc  h                                           ; $6ce9: $24
	ld   de, $1111                                   ; $6cea: $11 $11 $11
	ld   de, $af52                                   ; $6ced: $11 $52 $af
	xor  a                                           ; $6cf0: $af
	db   $fd                                         ; $6cf1: $fd
	rst  $38                                         ; $6cf2: $ff
	rst  $38                                         ; $6cf3: $ff
	xor  a                                           ; $6cf4: $af
	and  a                                           ; $6cf5: $a7
	or   h                                           ; $6cf6: $b4
	or   l                                           ; $6cf7: $b5
	ld   a, d                                        ; $6cf8: $7a
	ld   a, [hl-]                                    ; $6cf9: $3a
	ld   a, d                                        ; $6cfa: $7a
	ret  z                                           ; $6cfb: $c8

	push bc                                          ; $6cfc: $c5
	add  l                                           ; $6cfd: $85
	ld   [de], a                                     ; $6cfe: $12
	ld   de, $1221                                   ; $6cff: $11 $21 $12
	inc  de                                          ; $6d02: $13
	ld   [hl], $fb                                   ; $6d03: $36 $fb
	rst  $38                                         ; $6d05: $ff
	rst  $28                                         ; $6d06: $ef
	rst  $38                                         ; $6d07: $ff
	ei                                               ; $6d08: $fb
	db   $fc                                         ; $6d09: $fc
	ld   l, e                                        ; $6d0a: $6b
	ld   e, c                                        ; $6d0b: $59
	add  l                                           ; $6d0c: $85
	or   h                                           ; $6d0d: $b4
	sbc  c                                           ; $6d0e: $99
	xor  l                                           ; $6d0f: $ad
	ld   l, e                                        ; $6d10: $6b
	ld   h, h                                        ; $6d11: $64
	ld   b, c                                        ; $6d12: $41
	ld   de, $1631                                   ; $6d13: $11 $31 $16
	inc  de                                          ; $6d16: $13
	ld   d, c                                        ; $6d17: $51
	ld   sp, hl                                      ; $6d18: $f9
	rst  $38                                         ; $6d19: $ff
	sbc  a                                           ; $6d1a: $9f
	rst  $28                                         ; $6d1b: $ef
	ld   hl, sp-$05                                  ; $6d1c: $f8 $fb
	adc  l                                           ; $6d1e: $8d
	inc  a                                           ; $6d1f: $3c
	ld   [hl], l                                     ; $6d20: $75
	jp   $9ec8                                       ; $6d21: $c3 $c8 $9e


	ld   e, e                                        ; $6d24: $5b
	ld   h, e                                        ; $6d25: $63
	ld   d, c                                        ; $6d26: $51
	ld   de, $1611                                   ; $6d27: $11 $11 $16
	ld   de, $f961                                   ; $6d2a: $11 $61 $f9
	rst  $38                                         ; $6d2d: $ff
	ld   a, a                                        ; $6d2e: $7f
	rst  JumpTable                                         ; $6d2f: $df
	rst  $30                                         ; $6d30: $f7
	ld   a, [$3c7e]                                  ; $6d31: $fa $7e $3c
	halt                                             ; $6d34: $76
	push de                                          ; $6d35: $d5
	jp   c, Jump_0f9_5bbe                            ; $6d36: $da $be $5b

	ld   d, c                                        ; $6d39: $51
	ld   sp, $1112                                   ; $6d3a: $31 $12 $11
	ld   hl, $1f15                                   ; $6d3d: $21 $15 $1f
	set  7, d                                        ; $6d40: $cb $fa
	rst  $38                                         ; $6d42: $ff
	rst  JumpTable                                         ; $6d43: $df
	xor  l                                           ; $6d44: $ad
	db   $f4                                         ; $6d45: $f4
	push hl                                          ; $6d46: $e5
	sbc  e                                           ; $6d47: $9b
	ld   c, l                                        ; $6d48: $4d
	ld   l, e                                        ; $6d49: $6b
	jp   hl                                          ; $6d4a: $e9


	or   $96                                         ; $6d4b: $f6 $96
	ld   [de], a                                     ; $6d4d: $12
	ld   de, $1251                                   ; $6d4e: $11 $51 $12
	inc  d                                           ; $6d51: $14
	dec  d                                           ; $6d52: $15
	or   $ff                                         ; $6d53: $f6 $ff
	sbc  a                                           ; $6d55: $9f
	rst  $28                                         ; $6d56: $ef
	ld   hl, sp-$07                                  ; $6d57: $f8 $f9
	ld   a, h                                        ; $6d59: $7c
	ld   e, e                                        ; $6d5a: $5b
	ld   [hl], a                                     ; $6d5b: $77
	rst  $10                                         ; $6d5c: $d7
	db   $ed                                         ; $6d5d: $ed
	call $2159                                       ; $6d5e: $cd $59 $21
	ld   de, $1681                                   ; $6d61: $11 $81 $16
	ld   de, $f531                                   ; $6d64: $11 $31 $f5
	rst  $28                                         ; $6d67: $ef
	ld   a, a                                        ; $6d68: $7f
	rst  JumpTable                                         ; $6d69: $df
	or   $f8                                         ; $6d6a: $f6 $f8
	ld   a, h                                        ; $6d6c: $7c
	ld   e, h                                        ; $6d6d: $5c
	halt                                             ; $6d6e: $76
	rst  ToBoot                                         ; $6d6f: $c7
	db   $dd                                         ; $6d70: $dd
	cp   l                                           ; $6d71: $bd
	ld   b, l                                        ; $6d72: $45
	ld   de, $8111                                   ; $6d73: $11 $11 $81
	ld   hl, $1f1b                                   ; $6d76: $21 $1b $1f
	pop  af                                          ; $6d79: $f1
	or   $ff                                         ; $6d7a: $f6 $ff
	sbc  a                                           ; $6d7c: $9f
	ld   l, c                                        ; $6d7d: $69
	pop  af                                          ; $6d7e: $f1
	di                                               ; $6d7f: $f3
	sbc  h                                           ; $6d80: $9c
	dec  e                                           ; $6d81: $1d
	adc  e                                           ; $6d82: $8b
	ld   sp, hl                                      ; $6d83: $f9
	rst  $30                                         ; $6d84: $f7
	dec  h                                           ; $6d85: $25
	ld   de, $1116                                   ; $6d86: $11 $16 $11
	ld   de, $bf91                                   ; $6d89: $11 $91 $bf
	rra                                              ; $6d8c: $1f
	call z, $fdf9                                    ; $6d8d: $cc $f9 $fd
	ld   c, a                                        ; $6d90: $4f
	ld   e, $84                                      ; $6d91: $1e $84
	pop  af                                          ; $6d93: $f1
	xor  d                                           ; $6d94: $aa
	xor  a                                           ; $6d95: $af
	sbc  h                                           ; $6d96: $9c
	ld   [hl], c                                     ; $6d97: $71
	ld   de, $111b                                   ; $6d98: $11 $1b $11
	ld   de, $7f54                                   ; $6d9b: $11 $54 $7f
	ld   c, a                                        ; $6d9e: $4f
	rst  $30                                         ; $6d9f: $f7
	cp   $ff                                         ; $6da0: $fe $ff
	ld   l, $76                                      ; $6da2: $2e $76
	db   $e3                                         ; $6da4: $e3
	or   l                                           ; $6da5: $b5
	dec  a                                           ; $6da6: $3d
	adc  a                                           ; $6da7: $8f
	ret  z                                           ; $6da8: $c8

	sub  c                                           ; $6da9: $91
	ld   de, $111f                                   ; $6daa: $11 $1f $11
	ld   sp, $8f94                                   ; $6dad: $31 $94 $8f
	rra                                              ; $6db0: $1f
	ld   sp, hl                                      ; $6db1: $f9
	db   $fd                                         ; $6db2: $fd
	rst  $38                                         ; $6db3: $ff
	rra                                              ; $6db4: $1f
	ld   l, d                                        ; $6db5: $6a
	jp   Jump_0f9_4cb3                               ; $6db6: $c3 $b3 $4c


	adc  [hl]                                        ; $6db9: $8e
	sub  l                                           ; $6dba: $95
	ld   b, c                                        ; $6dbb: $41
	ld   de, $18a5                                   ; $6dbc: $11 $a5 $18
	ld   de, $f4d1                                   ; $6dbf: $11 $d1 $f4
	sbc  a                                           ; $6dc2: $9f
	ld   e, a                                        ; $6dc3: $5f
	rst  $38                                         ; $6dc4: $ff
	pop  af                                          ; $6dc5: $f1
	db   $fc                                         ; $6dc6: $fc
	ld   l, a                                        ; $6dc7: $6f
	dec  de                                          ; $6dc8: $1b
	ld   b, d                                        ; $6dc9: $42
	reti                                             ; $6dca: $d9


	reti                                             ; $6dcb: $d9


	ld   b, e                                        ; $6dcc: $43
	ld   de, $111e                                   ; $6dcd: $11 $1e $11
	ld   [hl], c                                     ; $6dd0: $71
	ld   e, h                                        ; $6dd1: $5c
	ccf                                              ; $6dd2: $3f
	dec  de                                          ; $6dd3: $1b
	push af                                          ; $6dd4: $f5
	db   $fd                                         ; $6dd5: $fd
	rst  $38                                         ; $6dd6: $ff
	rra                                              ; $6dd7: $1f
	or   a                                           ; $6dd8: $b7
	pop  af                                          ; $6dd9: $f1
	db   $e3                                         ; $6dda: $e3
	ld   c, a                                        ; $6ddb: $4f
	ld   l, d                                        ; $6ddc: $6a
	ld   sp, $1b11                                   ; $6ddd: $31 $11 $1b
	add  c                                           ; $6de0: $81
	ld   sp, $1f1f                                   ; $6de1: $31 $1f $1f
	pop  af                                          ; $6de4: $f1
	ei                                               ; $6de5: $fb
	rst  $38                                         ; $6de6: $ff
	ld   e, a                                        ; $6de7: $5f
	ld   a, [de]                                     ; $6de8: $1a
	di                                               ; $6de9: $f3
	pop  af                                          ; $6dea: $f1
	ld   e, [hl]                                     ; $6deb: $5e
	rra                                              ; $6dec: $1f
	sub  l                                           ; $6ded: $95
	ld   d, c                                        ; $6dee: $51
	ld   de, $811c                                   ; $6def: $11 $1c $81
	ld   de, $1f1f                                   ; $6df2: $11 $1f $1f
	pop  de                                          ; $6df5: $d1
	rst  $38                                         ; $6df6: $ff
	rst  $38                                         ; $6df7: $ff
	ld   l, a                                        ; $6df8: $6f
	ld   c, d                                        ; $6df9: $4a
	push af                                          ; $6dfa: $f5
	pop  af                                          ; $6dfb: $f1
	ld   l, a                                        ; $6dfc: $6f
	inc  e                                           ; $6dfd: $1c
	add  h                                           ; $6dfe: $84
	ld   sp, $1f11                                   ; $6dff: $31 $11 $1f
	ld   de, $f811                                   ; $6e02: $11 $11 $f8
	ld   c, a                                        ; $6e05: $4f
	dec  e                                           ; $6e06: $1d
	rst  $38                                         ; $6e07: $ff
	ld   sp, hl                                      ; $6e08: $f9
	rst  $28                                         ; $6e09: $ef
	cpl                                              ; $6e0a: $2f
	rst  $20                                         ; $6e0b: $e7
	pop  bc                                          ; $6e0c: $c1
	db   $eb                                         ; $6e0d: $eb
	ld   c, d                                        ; $6e0e: $4a
	ld   d, e                                        ; $6e0f: $53
	ld   de, $9311                                   ; $6e10: $11 $11 $93
	dec  d                                           ; $6e13: $15
	inc  d                                           ; $6e14: $14
	pop  af                                          ; $6e15: $f1
	di                                               ; $6e16: $f3
	ld   e, a                                        ; $6e17: $5f
	cp   a                                           ; $6e18: $bf
	or   $f5                                         ; $6e19: $f6 $f5
	rst  $38                                         ; $6e1b: $ff
	cpl                                              ; $6e1c: $2f
	inc  e                                           ; $6e1d: $1c
	db   $e3                                         ; $6e1e: $e3
	ld   [hl], h                                     ; $6e1f: $74
	ld   b, c                                        ; $6e20: $41
	ld   de, $111b                                   ; $6e21: $11 $1b $11
	ld   sp, $1f4f                                   ; $6e24: $31 $4f $1f
	ld   d, $fa                                      ; $6e27: $16 $fa
	rst  $38                                         ; $6e29: $ff
	adc  a                                           ; $6e2a: $8f
	ld   a, a                                        ; $6e2b: $7f
	pop  af                                          ; $6e2c: $f1
	db   $e4                                         ; $6e2d: $e4
	call Call_0f9_4436                               ; $6e2e: $cd $36 $44
	ld   de, $f111                                   ; $6e31: $11 $11 $f1
	ld   de, $b11c                                   ; $6e34: $11 $1c $b1
	pop  af                                          ; $6e37: $f1
	rst  $28                                         ; $6e38: $ef
	xor  a                                           ; $6e39: $af
	sbc  [hl]                                        ; $6e3a: $9e
	push af                                          ; $6e3b: $f5
	cp   $3f                                         ; $6e3c: $fe $3f
	ld   l, [hl]                                     ; $6e3e: $6e
	and  c                                           ; $6e3f: $a1
	ld   h, [hl]                                     ; $6e40: $66
	ld   sp, $3c11                                   ; $6e41: $31 $11 $3c
	ld   de, $f311                                   ; $6e44: $11 $11 $f3
	ld   l, a                                        ; $6e47: $6f
	rra                                              ; $6e48: $1f
	rst  $38                                         ; $6e49: $ff
	ldh  a, [c]                                      ; $6e4a: $f2
	rst  $38                                         ; $6e4b: $ff
	xor  a                                           ; $6e4c: $af
	ld   l, c                                        ; $6e4d: $69
	ld   hl, sp-$1a                                  ; $6e4e: $f8 $e6
	inc  h                                           ; $6e50: $24
	ld   h, c                                        ; $6e51: $61
	ld   de, $3117                                   ; $6e52: $11 $17 $31
	ld   de, $571d                                   ; $6e55: $11 $1d $57
	ldh  a, [c]                                      ; $6e58: $f2
	rst  $38                                         ; $6e59: $ff
	rst  $38                                         ; $6e5a: $ff
	rst  JumpTable                                         ; $6e5b: $df
	ei                                               ; $6e5c: $fb
	ld   sp, hl                                      ; $6e5d: $f9
	xor  l                                           ; $6e5e: $ad
	cp   d                                           ; $6e5f: $ba
	ld   b, h                                        ; $6e60: $44
	ld   d, h                                        ; $6e61: $54
	ld   de, $7b11                                   ; $6e62: $11 $11 $7b
	ld   de, $f111                                   ; $6e65: $11 $11 $f1
	sbc  a                                           ; $6e68: $9f
	rra                                              ; $6e69: $1f
	cp   $f5                                         ; $6e6a: $fe $f5
	rst  $38                                         ; $6e6c: $ff
	adc  a                                           ; $6e6d: $8f
	ld   a, a                                        ; $6e6e: $7f
	ld   [$5573], a                                  ; $6e6f: $ea $73 $55
	sub  c                                           ; $6e72: $91
	ld   de, $c11c                                   ; $6e73: $11 $1c $c1
	ld   de, $131f                                   ; $6e76: $11 $1f $13
	pop  bc                                          ; $6e79: $c1
	rst  $38                                         ; $6e7a: $ff
	rst  JumpTable                                         ; $6e7b: $df
	xor  a                                           ; $6e7c: $af
	ei                                               ; $6e7d: $fb
	reti                                             ; $6e7e: $d9


	rst  $38                                         ; $6e7f: $ff
	and  [hl]                                        ; $6e80: $a6
	ld   h, $a9                                      ; $6e81: $26 $a9
	ld   de, $1411                                   ; $6e83: $11 $11 $14
	ld   h, c                                        ; $6e86: $61
	add  hl, de                                      ; $6e87: $19
	rla                                              ; $6e88: $17
	ld   d, $f6                                      ; $6e89: $16 $f6
	rst  $38                                         ; $6e8b: $ff
	cp   a                                           ; $6e8c: $bf
	rst  $38                                         ; $6e8d: $ff
	ld   sp, hl                                      ; $6e8e: $f9
	rst  $38                                         ; $6e8f: $ff
	db   $dd                                         ; $6e90: $dd
	sub  l                                           ; $6e91: $95
	res  0, l                                        ; $6e92: $cb $85
	inc  de                                          ; $6e94: $13
	ld   [hl+], a                                    ; $6e95: $22
	ld   de, $1171                                   ; $6e96: $11 $71 $11
	inc  de                                          ; $6e99: $13
	ld   d, d                                        ; $6e9a: $52
	add  l                                           ; $6e9b: $85
	cp   a                                           ; $6e9c: $bf
	rst  $38                                         ; $6e9d: $ff
	rst  $38                                         ; $6e9e: $ff
	rst  $38                                         ; $6e9f: $ff
	db   $ec                                         ; $6ea0: $ec
	adc  l                                           ; $6ea1: $8d
	ld   [$9a99], a                                  ; $6ea2: $ea $99 $9a
	and  h                                           ; $6ea5: $a4
	ld   b, h                                        ; $6ea6: $44
	ld   b, c                                        ; $6ea7: $41
	inc  d                                           ; $6ea8: $14
	ld   de, $1311                                   ; $6ea9: $11 $11 $13
	inc  d                                           ; $6eac: $14
	ld   [hl], a                                     ; $6ead: $77
	db   $ec                                         ; $6eae: $ec
	rst  JumpTable                                         ; $6eaf: $df
	rst  $28                                         ; $6eb0: $ef
	db   $fd                                         ; $6eb1: $fd
	cp   e                                           ; $6eb2: $bb
	rst  JumpTable                                         ; $6eb3: $df
	db   $db                                         ; $6eb4: $db
	jp   c, Jump_0f9_67f8                            ; $6eb5: $da $f8 $67

	ld   e, h                                        ; $6eb8: $5c
	ld   sp, $4113                                   ; $6eb9: $31 $13 $41
	ld   de, $3113                                   ; $6ebc: $11 $13 $31
	ld   b, l                                        ; $6ebf: $45
	xor  h                                           ; $6ec0: $ac
	sbc  h                                           ; $6ec1: $9c
	rst  $28                                         ; $6ec2: $ef
	db   $fc                                         ; $6ec3: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ec4: $cf
	xor  $dd                                         ; $6ec5: $ee $dd
	cp   $da                                         ; $6ec7: $fe $da
	cp   h                                           ; $6ec9: $bc
	xor  c                                           ; $6eca: $a9
	ld   h, a                                        ; $6ecb: $67
	ld   h, c                                        ; $6ecc: $61
	inc  de                                          ; $6ecd: $13
	ld   hl, $1211                                   ; $6ece: $21 $11 $12
	ld   hl, $7c43                                   ; $6ed1: $21 $43 $7c
	adc  d                                           ; $6ed4: $8a
	db   $dd                                         ; $6ed5: $dd
	db   $ed                                         ; $6ed6: $ed
	call c, $fddc                                    ; $6ed7: $dc $dc $fd
	rst  $28                                         ; $6eda: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6edb: $cf
	call z, Call_0f9_7bbb                            ; $6edc: $cc $bb $7b
	add  l                                           ; $6edf: $85
	sub  c                                           ; $6ee0: $91
	inc  d                                           ; $6ee1: $14
	ld   b, c                                        ; $6ee2: $41
	ld   de, $1213                                   ; $6ee3: $11 $13 $12
	inc  h                                           ; $6ee6: $24
	ld   a, c                                        ; $6ee7: $79
	ld   a, b                                        ; $6ee8: $78
	cp   h                                           ; $6ee9: $bc
	add  sp, -$13                                    ; $6eea: $e8 $ed
	rst  $28                                         ; $6eec: $ef
	sbc  l                                           ; $6eed: $9d
	db   $fd                                         ; $6eee: $fd
	db   $fd                                         ; $6eef: $fd
	cp   a                                           ; $6ef0: $bf
	rst  ToBoot                                         ; $6ef1: $c7
	cp   c                                           ; $6ef2: $b9
	xor  h                                           ; $6ef3: $ac
	ld   b, a                                        ; $6ef4: $47
	ld   d, e                                        ; $6ef5: $53
	ld   h, c                                        ; $6ef6: $61
	ld   hl, $1112                                   ; $6ef7: $21 $12 $11
	ld   de, $3841                                   ; $6efa: $11 $41 $38
	ld   a, c                                        ; $6efd: $79
	adc  c                                           ; $6efe: $89
	call c, $ffcc                                    ; $6eff: $dc $cc $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6f02: $cf
	db   $fc                                         ; $6f03: $fc
	cp   $dd                                         ; $6f04: $fe $dd
	db   $ed                                         ; $6f06: $ed
	ld   a, [hl]                                     ; $6f07: $7e
	and  l                                           ; $6f08: $a5
	db   $e4                                         ; $6f09: $e4
	ld   a, e                                        ; $6f0a: $7b
	add  hl, de                                      ; $6f0b: $19
	ld   hl, $4151                                   ; $6f0c: $21 $51 $41
	inc  d                                           ; $6f0f: $14
	inc  d                                           ; $6f10: $14
	ld   [de], a                                     ; $6f11: $12
	ld   d, e                                        ; $6f12: $53
	halt                                             ; $6f13: $76
	adc  d                                           ; $6f14: $8a
	xor  h                                           ; $6f15: $ac
	cp   l                                           ; $6f16: $bd
	db   $eb                                         ; $6f17: $eb
	db   $ed                                         ; $6f18: $ed
	rst  $28                                         ; $6f19: $ef
	xor  $df                                         ; $6f1a: $ee $df
	cp   a                                           ; $6f1c: $bf
	sbc  d                                           ; $6f1d: $9a
	sub  $c7                                         ; $6f1e: $d6 $c7
	ld   l, c                                        ; $6f20: $69
	ld   [hl], l                                     ; $6f21: $75
	ld   [hl], l                                     ; $6f22: $75
	ld   d, l                                        ; $6f23: $55
	ld   b, e                                        ; $6f24: $43
	dec  [hl]                                        ; $6f25: $35
	dec  d                                           ; $6f26: $15
	inc  de                                          ; $6f27: $13
	ld   h, c                                        ; $6f28: $61
	ld   d, l                                        ; $6f29: $55
	scf                                              ; $6f2a: $37
	ld   [hl], h                                     ; $6f2b: $74
	ret  z                                           ; $6f2c: $c8

	ld   a, l                                        ; $6f2d: $7d
	sbc  h                                           ; $6f2e: $9c
	db   $db                                         ; $6f2f: $db
	adc  $9f                                         ; $6f30: $ce $9f
	sbc  e                                           ; $6f32: $9b
	or   $f7                                         ; $6f33: $f6 $f7
	ret                                              ; $6f35: $c9


	adc  l                                           ; $6f36: $8d
	ld   l, $48                                      ; $6f37: $2e $48
	ld   [hl], d                                     ; $6f39: $72
	or   l                                           ; $6f3a: $b5
	halt                                             ; $6f3b: $76
	dec  hl                                          ; $6f3c: $2b
	ld   d, h                                        ; $6f3d: $54
	or   e                                           ; $6f3e: $b3
	add  a                                           ; $6f3f: $87
	ld   e, c                                        ; $6f40: $59
	ld   d, a                                        ; $6f41: $57
	add  l                                           ; $6f42: $85
	sub  a                                           ; $6f43: $97
	ld   c, e                                        ; $6f44: $4b
	ld   c, b                                        ; $6f45: $48
	add  [hl]                                        ; $6f46: $86
	and  a                                           ; $6f47: $a7
	and  l                                           ; $6f48: $a5
	sbc  e                                           ; $6f49: $9b
	ld   a, c                                        ; $6f4a: $79
	xor  b                                           ; $6f4b: $a8
	ld   a, d                                        ; $6f4c: $7a
	ld   a, c                                        ; $6f4d: $79
	adc  c                                           ; $6f4e: $89
	and  l                                           ; $6f4f: $a5
	jp   hl                                          ; $6f50: $e9


	ld   l, a                                        ; $6f51: $6f
	dec  sp                                          ; $6f52: $3b
	ldh  [c], a                                      ; $6f53: $e2
	or   $7f                                         ; $6f54: $f6 $7f
	dec  a                                           ; $6f56: $3d
	ld   [hl], a                                     ; $6f57: $77
	sbc  b                                           ; $6f58: $98
	ld   h, a                                        ; $6f59: $67
	pop  de                                          ; $6f5a: $d1
	push hl                                          ; $6f5b: $e5
	ld   e, l                                        ; $6f5c: $5d
	add  hl, de                                      ; $6f5d: $19
	ld   e, b                                        ; $6f5e: $58
	ld   a, [hl+]                                    ; $6f5f: $2a
	ld   d, c                                        ; $6f60: $51
	pop  af                                          ; $6f61: $f1
	xor  d                                           ; $6f62: $aa
	ld   a, [de]                                     ; $6f63: $1a
	and  d                                           ; $6f64: $a2
	cp   b                                           ; $6f65: $b8
	ld   c, l                                        ; $6f66: $4d
	ld   e, c                                        ; $6f67: $59
	sbc  c                                           ; $6f68: $99
	xor  b                                           ; $6f69: $a8
	add  $ac                                         ; $6f6a: $c6 $ac

Call_0f9_6f6c:
	and  a                                           ; $6f6c: $a7
	cp   b                                           ; $6f6d: $b8
	xor  d                                           ; $6f6e: $aa
	ld   e, e                                        ; $6f6f: $5b
	ld   a, e                                        ; $6f70: $7b
	ld   l, d                                        ; $6f71: $6a
	and  e                                           ; $6f72: $a3
	push hl                                          ; $6f73: $e5
	ld   l, l                                        ; $6f74: $6d
	ld   d, a                                        ; $6f75: $57
	db   $d3                                         ; $6f76: $d3
	sbc  c                                           ; $6f77: $99
	ld   e, h                                        ; $6f78: $5c
	ld   a, [hl+]                                    ; $6f79: $2a
	halt                                             ; $6f7a: $76
	and  [hl]                                        ; $6f7b: $a6
	ld   [hl], a                                     ; $6f7c: $77
	and  l                                           ; $6f7d: $a5
	and  [hl]                                        ; $6f7e: $a6
	ld   e, c                                        ; $6f7f: $59
	ld   l, b                                        ; $6f80: $68
	ld   [hl], l                                     ; $6f81: $75
	sbc  b                                           ; $6f82: $98
	ld   l, b                                        ; $6f83: $68
	ld   l, b                                        ; $6f84: $68
	sub  l                                           ; $6f85: $95
	and  a                                           ; $6f86: $a7
	sbc  c                                           ; $6f87: $99
	ld   l, c                                        ; $6f88: $69
	sbc  b                                           ; $6f89: $98
	sbc  c                                           ; $6f8a: $99
	adc  c                                           ; $6f8b: $89
	adc  b                                           ; $6f8c: $88
	and  a                                           ; $6f8d: $a7
	xor  c                                           ; $6f8e: $a9
	ld   a, c                                        ; $6f8f: $79
	sbc  b                                           ; $6f90: $98
	and  a                                           ; $6f91: $a7
	adc  d                                           ; $6f92: $8a
	ld   e, c                                        ; $6f93: $59
	adc  c                                           ; $6f94: $89
	sub  a                                           ; $6f95: $97
	add  [hl]                                        ; $6f96: $86
	cp   b                                           ; $6f97: $b8
	add  a                                           ; $6f98: $87
	add  a                                           ; $6f99: $87
	and  [hl]                                        ; $6f9a: $a6
	ld   a, d                                        ; $6f9b: $7a
	ld   e, d                                        ; $6f9c: $5a
	ld   h, a                                        ; $6f9d: $67
	and  h                                           ; $6f9e: $a4
	adc  d                                           ; $6f9f: $8a
	dec  hl                                          ; $6fa0: $2b
	add  c                                           ; $6fa1: $81
	pop  hl                                          ; $6fa2: $e1
	sbc  e                                           ; $6fa3: $9b
	ld   e, $73                                      ; $6fa4: $1e $73
	db   $e4                                         ; $6fa6: $e4
	ld   a, h                                        ; $6fa7: $7c
	ld   c, d                                        ; $6fa8: $4a
	and  a                                           ; $6fa9: $a7
	sbc  c                                           ; $6faa: $99
	adc  h                                           ; $6fab: $8c
	adc  c                                           ; $6fac: $89
	xor  b                                           ; $6fad: $a8
	or   a                                           ; $6fae: $b7
	cp   c                                           ; $6faf: $b9
	adc  d                                           ; $6fb0: $8a
	ld   a, e                                        ; $6fb1: $7b
	halt                                             ; $6fb2: $76
	add  $7c                                         ; $6fb3: $c6 $7c
	inc  a                                           ; $6fb5: $3c
	ld   h, e                                        ; $6fb6: $63
	db   $d3                                         ; $6fb7: $d3
	ld   l, e                                        ; $6fb8: $6b
	ld   c, d                                        ; $6fb9: $4a
	ld   [hl], d                                     ; $6fba: $72
	sub  $59                                         ; $6fbb: $d6 $59
	ld   h, a                                        ; $6fbd: $67
	and  [hl]                                        ; $6fbe: $a6
	ld   e, l                                        ; $6fbf: $5d
	ld   a, [hl+]                                    ; $6fc0: $2a
	and  h                                           ; $6fc1: $a4
	add  $a7                                         ; $6fc2: $c6 $a7
	ld   l, d                                        ; $6fc4: $6a
	ld   [hl], a                                     ; $6fc5: $77
	and  a                                           ; $6fc6: $a7
	ld   e, d                                        ; $6fc7: $5a
	ld   l, c                                        ; $6fc8: $69
	or   [hl]                                        ; $6fc9: $b6
	and  a                                           ; $6fca: $a7
	adc  e                                           ; $6fcb: $8b
	ld   l, d                                        ; $6fcc: $6a
	ld   a, b                                        ; $6fcd: $78
	sub  $a9                                         ; $6fce: $d6 $a9
	ld   e, l                                        ; $6fd0: $5d
	ld   a, [hl-]                                    ; $6fd1: $3a
	sub  l                                           ; $6fd2: $95
	ldh  [c], a                                      ; $6fd3: $e2
	sbc  e                                           ; $6fd4: $9b
	ld   c, c                                        ; $6fd5: $49
	sub  h                                           ; $6fd6: $94
	cp   b                                           ; $6fd7: $b8
	dec  a                                           ; $6fd8: $3d
	ld   b, a                                        ; $6fd9: $47
	or   e                                           ; $6fda: $b3
	sbc  b                                           ; $6fdb: $98
	ld   e, e                                        ; $6fdc: $5b
	ld   [hl], e                                     ; $6fdd: $73
	call nz, $1c6d                                   ; $6fde: $c4 $6d $1c
	ld   [hl], h                                     ; $6fe1: $74
	call nz, $8997                                   ; $6fe2: $c4 $97 $89
	adc  b                                           ; $6fe5: $88
	ld   l, e                                        ; $6fe6: $6b
	adc  b                                           ; $6fe7: $88
	and  a                                           ; $6fe8: $a7
	xor  b                                           ; $6fe9: $a8
	cp   d                                           ; $6fea: $ba
	ld   e, l                                        ; $6feb: $5d
	ld   a, d                                        ; $6fec: $7a
	or   [hl]                                        ; $6fed: $b6
	or   a                                           ; $6fee: $b7
	sbc  c                                           ; $6fef: $99
	ld   e, c                                        ; $6ff0: $59
	ld   [hl], a                                     ; $6ff1: $77
	or   h                                           ; $6ff2: $b4
	rst  ToBoot                                         ; $6ff3: $c7
	ld   l, e                                        ; $6ff4: $6b
	ld   b, a                                        ; $6ff5: $47
	sub  [hl]                                        ; $6ff6: $96
	ld   l, d                                        ; $6ff7: $6a
	ld   e, c                                        ; $6ff8: $59
	ld   c, c                                        ; $6ff9: $49
	ld   e, b                                        ; $6ffa: $58
	add  h                                           ; $6ffb: $84
	or   c                                           ; $6ffc: $b1
	or   a                                           ; $6ffd: $b7
	ld   e, e                                        ; $6ffe: $5b
	ld   h, [hl]                                     ; $6fff: $66
	add  $6f                                         ; $7000: $c6 $6f
	ld   e, $a3                                      ; $7002: $1e $a3
	or   $9d                                         ; $7004: $f6 $9d
	ld   a, d                                        ; $7006: $7a
	or   a                                           ; $7007: $b7
	add  $8d                                         ; $7008: $c6 $8d
	cpl                                              ; $700a: $2f
	ld   b, [hl]                                     ; $700b: $46
	jp   nz, $84d6                                   ; $700c: $c2 $d6 $84

	call nc, $1f78                                   ; $700f: $d4 $78 $1f
	add  hl, de                                      ; $7012: $19
	ld   d, a                                        ; $7013: $57
	ld   h, l                                        ; $7014: $65
	ld   l, b                                        ; $7015: $68
	ld   d, h                                        ; $7016: $54
	pop  hl                                          ; $7017: $e1
	db   $f4                                         ; $7018: $f4
	sbc  c                                           ; $7019: $99
	ld   c, [hl]                                     ; $701a: $4e
	ld   e, l                                        ; $701b: $5d
	ld   a, h                                        ; $701c: $7c
	sbc  d                                           ; $701d: $9a
	ret  z                                           ; $701e: $c8

	call z, $ab8c                                    ; $701f: $cc $8c $ab
	or   [hl]                                        ; $7022: $b6
	rst  $10                                         ; $7023: $d7
	xor  c                                           ; $7024: $a9
	ld   a, d                                        ; $7025: $7a
	ld   a, c                                        ; $7026: $79
	ld   [hl], l                                     ; $7027: $75
	ld   [hl], a                                     ; $7028: $77
	jr   c, @+$49                                    ; $7029: $38 $47

	ld   [hl], $71                                   ; $702b: $36 $71
	and  d                                           ; $702d: $a2
	ld   [hl], a                                     ; $702e: $77
	add  hl, sp                                      ; $702f: $39
	ld   l, b                                        ; $7030: $68
	ld   l, [hl]                                     ; $7031: $6e
	dec  sp                                          ; $7032: $3b
	push bc                                          ; $7033: $c5
	reti                                             ; $7034: $d9


	sbc  [hl]                                        ; $7035: $9e
	rst  ToBoot                                         ; $7036: $c7
	or   $eb                                         ; $7037: $f6 $eb
	ld   a, a                                        ; $7039: $7f
	ld   a, $77                                      ; $703a: $3e $77
	push hl                                          ; $703c: $e5
	ld   e, e                                        ; $703d: $5b
	ld   b, a                                        ; $703e: $47
	ld   d, h                                        ; $703f: $54
	ld   h, c                                        ; $7040: $61
	pop  hl                                          ; $7041: $e1
	ld   h, e                                        ; $7042: $63
	ld   a, [de]                                     ; $7043: $1a
	inc  e                                           ; $7044: $1c
	rla                                              ; $7045: $17
	sub  h                                           ; $7046: $94
	rst  ToBoot                                         ; $7047: $c7
	adc  l                                           ; $7048: $8d
	sub  a                                           ; $7049: $97
	ld   hl, sp-$41                                  ; $704a: $f8 $bf
	set  3, h                                        ; $704c: $cb $dc
	xor  a                                           ; $704e: $af
	ld   l, [hl]                                     ; $704f: $6e
	add  $c8                                         ; $7050: $c6 $c8
	ld   e, c                                        ; $7052: $59
	ld   h, e                                        ; $7053: $63
	sub  c                                           ; $7054: $91
	ld   d, $31                                      ; $7055: $16 $31
	ld   h, c                                        ; $7057: $61
	ld   a, [de]                                     ; $7058: $1a
	jr   jr_0f9_70a0                                 ; $7059: $18 $45

	sub  a                                           ; $705b: $97
	and  a                                           ; $705c: $a7
	and  $fa                                         ; $705d: $e6 $fa
	xor  a                                           ; $705f: $af
	xor  a                                           ; $7060: $af
	cp   a                                           ; $7061: $bf
	xor  [hl]                                        ; $7062: $ae
	ret  c                                           ; $7063: $d8

	rst  $30                                         ; $7064: $f7
	ld   a, a                                        ; $7065: $7f
	ld   a, [de]                                     ; $7066: $1a
	sub  c                                           ; $7067: $91
	pop  af                                          ; $7068: $f1
	inc  hl                                          ; $7069: $23
	inc  d                                           ; $706a: $14
	ld   d, $12                                      ; $706b: $16 $12
	ld   b, e                                        ; $706d: $43
	ld   c, d                                        ; $706e: $4a
	ld   [hl], a                                     ; $706f: $77
	ld   a, [$facb]                                  ; $7070: $fa $cb $fa
	rst  JumpTable                                         ; $7073: $df
	sbc  [hl]                                        ; $7074: $9e
	rst  $38                                         ; $7075: $ff
	sbc  a                                           ; $7076: $9f
	sbc  c                                           ; $7077: $99
	pop  af                                          ; $7078: $f1
	pop  af                                          ; $7079: $f1
	dec  e                                           ; $707a: $1d
	jr   jr_0f9_709e                                 ; $707b: $18 $21

	ld   b, c                                        ; $707d: $41
	inc  de                                          ; $707e: $13
	ld   d, $63                                      ; $707f: $16 $63
	sbc  b                                           ; $7081: $98
	cp   e                                           ; $7082: $bb
	xor  e                                           ; $7083: $ab
	ld   a, [$afdf]                                  ; $7084: $fa $df $af
	db   $fc                                         ; $7087: $fc
	db   $ed                                         ; $7088: $ed
	adc  a                                           ; $7089: $8f
	ld   d, a                                        ; $708a: $57
	or   c                                           ; $708b: $b1
	sub  [hl]                                        ; $708c: $96
	rla                                              ; $708d: $17
	ld   de, $45a1                                   ; $708e: $11 $a1 $45
	dec  de                                          ; $7091: $1b
	rla                                              ; $7092: $17
	jp   c, $bfbb                                    ; $7093: $da $bb $bf

	add  sp, -$04                                    ; $7096: $e8 $fc
	rst  $28                                         ; $7098: $ef
	ret                                              ; $7099: $c9


	rst  $30                                         ; $709a: $f7
	ld   e, [hl]                                     ; $709b: $5e
	add  hl, de                                      ; $709c: $19
	ld   h, c                                        ; $709d: $61

jr_0f9_709e:
	add  c                                           ; $709e: $81
	inc  [hl]                                        ; $709f: $34

jr_0f9_70a0:
	dec  d                                           ; $70a0: $15
	inc  de                                          ; $70a1: $13
	sub  e                                           ; $70a2: $93
	and  a                                           ; $70a3: $a7
	rst  JumpTable                                         ; $70a4: $df
	ld   l, [hl]                                     ; $70a5: $6e
	rst  $38                                         ; $70a6: $ff
	ret                                              ; $70a7: $c9


	rst  $38                                         ; $70a8: $ff
	reti                                             ; $70a9: $d9


	bit  4, a                                        ; $70aa: $cb $67
	ld   de, $1167                                   ; $70ac: $11 $67 $11
	ld   a, [de]                                     ; $70af: $1a
	ld   de, $9854                                   ; $70b0: $11 $54 $98
	ld   l, c                                        ; $70b3: $69
	rst  JumpTable                                         ; $70b4: $df
	ld   [$bcff], a                                  ; $70b5: $ea $ff $bc
	rst  $38                                         ; $70b8: $ff
	set  0, [hl]                                     ; $70b9: $cb $c6
	ld   b, c                                        ; $70bb: $41
	inc  d                                           ; $70bc: $14
	ld   d, d                                        ; $70bd: $52
	ld   de, $1161                                   ; $70be: $11 $61 $11
	push de                                          ; $70c1: $d5
	ld   l, e                                        ; $70c2: $6b
	xor  a                                           ; $70c3: $af
	rst  $38                                         ; $70c4: $ff
	xor  a                                           ; $70c5: $af
	ei                                               ; $70c6: $fb
	xor  a                                           ; $70c7: $af
	rst  $30                                         ; $70c8: $f7
	cp   e                                           ; $70c9: $bb
	ld   [hl], c                                     ; $70ca: $71
	ld   de, $1198                                   ; $70cb: $11 $98 $11
	ld   h, c                                        ; $70ce: $61
	ld   d, c                                        ; $70cf: $51
	rra                                              ; $70d0: $1f
	ld   c, c                                        ; $70d1: $49
	ld   l, a                                        ; $70d2: $6f
	cp   $8f                                         ; $70d3: $fe $8f
	rst  $38                                         ; $70d5: $ff
	cp   a                                           ; $70d6: $bf
	db   $fc                                         ; $70d7: $fc
	or   [hl]                                        ; $70d8: $b6
	ld   d, l                                        ; $70d9: $55
	ld   de, $1ff1                                   ; $70da: $11 $f1 $1f
	ld   hl, $e431                                   ; $70dd: $21 $31 $e4
	rra                                              ; $70e0: $1f
	ccf                                              ; $70e1: $3f
	ld   a, [$ffff]                                  ; $70e2: $fa $ff $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70e5: $cf
	push af                                          ; $70e6: $f5
	ret  c                                           ; $70e7: $d8

	ld   de, $611f                                   ; $70e8: $11 $1f $61
	ld   e, a                                        ; $70eb: $5f
	dec  d                                           ; $70ec: $15
	ld   a, [de]                                     ; $70ed: $1a
	pop  de                                          ; $70ee: $d1
	db   $f4                                         ; $70ef: $f4
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70f0: $cf
	ld   e, a                                        ; $70f1: $5f
	rst  $38                                         ; $70f2: $ff
	db   $fd                                         ; $70f3: $fd
	rst  $38                                         ; $70f4: $ff
	ld   a, a                                        ; $70f5: $7f
	add  c                                           ; $70f6: $81
	ld   de, $13b9                                   ; $70f7: $11 $b9 $13
	pop  af                                          ; $70fa: $f1
	add  c                                           ; $70fb: $81
	ld   e, a                                        ; $70fc: $5f
	rra                                              ; $70fd: $1f
	call z, $fff2                                    ; $70fe: $cc $f2 $ff
	rst  $28                                         ; $7101: $ef
	rst  JumpTable                                         ; $7102: $df
	or   $f9                                         ; $7103: $f6 $f9
	ld   b, c                                        ; $7105: $41
	inc  e                                           ; $7106: $1c
	ld   [hl], c                                     ; $7107: $71
	ld   c, a                                        ; $7108: $4f
	jr   @+$1b                                       ; $7109: $18 $19

	pop  af                                          ; $710b: $f1
	ld   a, [$3fbf]                                  ; $710c: $fa $bf $3f
	db   $fc                                         ; $710f: $fc
	ld   a, [$6fff]                                  ; $7110: $fa $ff $6f
	sub  e                                           ; $7113: $93
	ld   de, $1ff1                                   ; $7114: $11 $f1 $1f
	ld   b, c                                        ; $7117: $41
	and  c                                           ; $7118: $a1
	db   $f4                                         ; $7119: $f4
	rra                                              ; $711a: $1f
	ld   c, a                                        ; $711b: $4f
	ldh  a, [c]                                      ; $711c: $f2
	rst  $38                                         ; $711d: $ff
	rst  JumpTable                                         ; $711e: $df
	cp   a                                           ; $711f: $bf
	xor  d                                           ; $7120: $aa
	rst  $30                                         ; $7121: $f7
	ld   de, $116f                                   ; $7122: $11 $6f $11
	pop  af                                          ; $7125: $f1
	ld   d, $1f                                      ; $7126: $16 $1f
	ld   de, $fff2                                   ; $7128: $11 $f2 $ff
	ld   l, a                                        ; $712b: $6f
	rst  $38                                         ; $712c: $ff
	rst  $38                                         ; $712d: $ff
	ldh  a, [c]                                      ; $712e: $f2
	rst  $38                                         ; $712f: $ff
	ld   d, c                                        ; $7130: $51
	dec  de                                          ; $7131: $1b
	pop  bc                                          ; $7132: $c1
	rra                                              ; $7133: $1f
	ld   de, $f121                                   ; $7134: $11 $21 $f1
	adc  a                                           ; $7137: $8f
	ld   c, a                                        ; $7138: $4f
	ld   a, a                                        ; $7139: $7f
	ld   a, [$ffff]                                  ; $713a: $fa $ff $ff
	rra                                              ; $713d: $1f
	ldh  a, [c]                                      ; $713e: $f2
	ld   de, $11d8                                   ; $713f: $11 $d8 $11
	pop  af                                          ; $7142: $f1
	ld   de, $1f1f                                   ; $7143: $11 $1f $1f
	ld   hl, sp-$0e                                  ; $7146: $f8 $f2
	rst  $38                                         ; $7148: $ff
	adc  a                                           ; $7149: $8f
	rst  $38                                         ; $714a: $ff
	db   $f4                                         ; $714b: $f4
	rst  $38                                         ; $714c: $ff
	ld   hl, $113f                                   ; $714d: $21 $3f $11
	ld   l, a                                        ; $7150: $6f
	ld   [de], a                                     ; $7151: $12
	dec  de                                          ; $7152: $1b
	and  c                                           ; $7153: $a1
	or   $ef                                         ; $7154: $f6 $ef
	rra                                              ; $7156: $1f
	ld   sp, hl                                      ; $7157: $f9
	rst  $38                                         ; $7158: $ff
	ld   a, [$c2af]                                  ; $7159: $fa $af $c2
	rla                                              ; $715c: $17
	pop  af                                          ; $715d: $f1
	rra                                              ; $715e: $1f
	ld   sp, $f131                                   ; $715f: $31 $31 $f1
	rra                                              ; $7162: $1f
	rra                                              ; $7163: $1f
	call nz, sRandomSeed                                   ; $7164: $c4 $ff $bf
	rst  $38                                         ; $7167: $ff
	ld   l, a                                        ; $7168: $6f
	ld   hl, sp+$21                                  ; $7169: $f8 $21
	cp   a                                           ; $716b: $bf
	ld   de, $11f1                                   ; $716c: $11 $f1 $11
	rra                                              ; $716f: $1f
	ld   de, $f4f1                                   ; $7170: $11 $f1 $f4
	rst  JumpTable                                         ; $7173: $df
	sbc  a                                           ; $7174: $9f
	rst  $38                                         ; $7175: $ff
	or   $ff                                         ; $7176: $f6 $ff
	ld   d, c                                        ; $7178: $51
	ld   c, l                                        ; $7179: $4d
	pop  de                                          ; $717a: $d1
	rra                                              ; $717b: $1f
	ld   de, $f111                                   ; $717c: $11 $11 $f1
	rst  $28                                         ; $717f: $ef
	cpl                                              ; $7180: $2f
	rra                                              ; $7181: $1f
	rst  $30                                         ; $7182: $f7
	rst  $38                                         ; $7183: $ff
	cp   $9f                                         ; $7184: $fe $9f
	di                                               ; $7186: $f3
	inc  de                                          ; $7187: $13
	pop  af                                          ; $7188: $f1
	add  hl, de                                      ; $7189: $19
	pop  de                                          ; $718a: $d1
	ld   de, $1fe2                                   ; $718b: $11 $e2 $1f
	ld   l, a                                        ; $718e: $6f
	push af                                          ; $718f: $f5
	rst  $38                                         ; $7190: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7191: $cf
	rst  $38                                         ; $7192: $ff
	sbc  a                                           ; $7193: $9f
	rst  $30                                         ; $7194: $f7
	ld   de, $11c9                                   ; $7195: $11 $c9 $11
	pop  af                                          ; $7198: $f1
	ld   de, $1f7d                                   ; $7199: $11 $7d $1f
	cp   a                                           ; $719c: $bf
	db   $f4                                         ; $719d: $f4
	rst  $38                                         ; $719e: $ff
	rst  JumpTable                                         ; $719f: $df
	rst  $38                                         ; $71a0: $ff
	db   $db                                         ; $71a1: $db
	ld   a, [$f411]                                  ; $71a2: $fa $11 $f4
	rla                                              ; $71a5: $17
	or   c                                           ; $71a6: $b1
	ld   de, $1fd1                                   ; $71a7: $11 $d1 $1f
	ld   c, a                                        ; $71aa: $4f
	db   $fc                                         ; $71ab: $fc
	rst  $38                                         ; $71ac: $ff
	rst  $38                                         ; $71ad: $ff
	rst  $38                                         ; $71ae: $ff
	cp   h                                           ; $71af: $bc
	db   $f4                                         ; $71b0: $f4
	ld   de, $1ff1                                   ; $71b1: $11 $f1 $1f
	ld   de, $f131                                   ; $71b4: $11 $31 $f1
	ld   l, a                                        ; $71b7: $6f
	rra                                              ; $71b8: $1f
	rst  $28                                         ; $71b9: $ef
	db   $fc                                         ; $71ba: $fc
	rst  $38                                         ; $71bb: $ff
	rst  $38                                         ; $71bc: $ff
	sbc  [hl]                                        ; $71bd: $9e
	pop  af                                          ; $71be: $f1
	ld   de, $1ff1                                   ; $71bf: $11 $f1 $1f
	ld   de, $f112                                   ; $71c2: $11 $12 $f1
	rst  $38                                         ; $71c5: $ff
	ld   e, a                                        ; $71c6: $5f
	xor  a                                           ; $71c7: $af
	cp   $ff                                         ; $71c8: $fe $ff
	rst  $38                                         ; $71ca: $ff
	adc  a                                           ; $71cb: $8f
	or   c                                           ; $71cc: $b1
	dec  d                                           ; $71cd: $15
	pop  af                                          ; $71ce: $f1
	rra                                              ; $71cf: $1f
	ld   de, $711b                                   ; $71d0: $11 $1b $71
	ei                                               ; $71d3: $fb
	rst  $28                                         ; $71d4: $ef
	xor  a                                           ; $71d5: $af
	rst  $38                                         ; $71d6: $ff
	rst  $38                                         ; $71d7: $ff
	rst  $38                                         ; $71d8: $ff
	adc  a                                           ; $71d9: $8f
	sub  c                                           ; $71da: $91
	inc  e                                           ; $71db: $1c
	ld   [hl], c                                     ; $71dc: $71
	ld   a, e                                        ; $71dd: $7b
	ld   de, $111f                                   ; $71de: $11 $1f $11
	db   $f4                                         ; $71e1: $f4
	rst  $38                                         ; $71e2: $ff
	rst  $38                                         ; $71e3: $ff
	rst  JumpTable                                         ; $71e4: $df
	rst  $38                                         ; $71e5: $ff
	db   $fc                                         ; $71e6: $fc
	cp   a                                           ; $71e7: $bf
	ld   h, c                                        ; $71e8: $61
	rra                                              ; $71e9: $1f
	ld   de, $11f1                                   ; $71ea: $11 $f1 $11
	rra                                              ; $71ed: $1f
	inc  e                                           ; $71ee: $1c
	db   $f4                                         ; $71ef: $f4
	db   $fc                                         ; $71f0: $fc
	rst  $38                                         ; $71f1: $ff
	rst  $38                                         ; $71f2: $ff
	rst  JumpTable                                         ; $71f3: $df
	ld   a, [$21dd]                                  ; $71f4: $fa $dd $21
	rra                                              ; $71f7: $1f
	ld   de, $11f1                                   ; $71f8: $11 $f1 $11
	sbc  c                                           ; $71fb: $99
	rra                                              ; $71fc: $1f
	db   $ec                                         ; $71fd: $ec
	db   $fd                                         ; $71fe: $fd
	cp   $ff                                         ; $71ff: $fe $ff
	rst  $38                                         ; $7201: $ff
	ld   a, [$11fa]                                  ; $7202: $fa $fa $11
	adc  c                                           ; $7205: $89
	ld   de, $11c1                                   ; $7206: $11 $c1 $11
	pop  af                                          ; $7209: $f1
	rra                                              ; $720a: $1f
	ld   a, a                                        ; $720b: $7f
	rst  $38                                         ; $720c: $ff
	db   $fc                                         ; $720d: $fc
	rst  $38                                         ; $720e: $ff
	rst  $38                                         ; $720f: $ff
	db   $ec                                         ; $7210: $ec
	add  sp, $11                                     ; $7211: $e8 $11
	pop  af                                          ; $7213: $f1
	dec  e                                           ; $7214: $1d
	ld   de, $f111                                   ; $7215: $11 $11 $f1
	rst  JumpTable                                         ; $7218: $df
	adc  a                                           ; $7219: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $721a: $cf
	rst  $38                                         ; $721b: $ff
	db   $fd                                         ; $721c: $fd
	rst  $38                                         ; $721d: $ff
	db   $ec                                         ; $721e: $ec
	call nz, $f111                                   ; $721f: $c4 $11 $f1
	dec  e                                           ; $7222: $1d
	ld   de, $711b                                   ; $7223: $11 $1b $71
	db   $fc                                         ; $7226: $fc
	rst  $38                                         ; $7227: $ff
	rst  $38                                         ; $7228: $ff
	cp   a                                           ; $7229: $bf
	rst  $38                                         ; $722a: $ff
	rst  $38                                         ; $722b: $ff
	res  6, c                                        ; $722c: $cb $b1
	rla                                              ; $722e: $17
	ld   b, c                                        ; $722f: $41
	ld   d, e                                        ; $7230: $53
	ld   de, $141f                                   ; $7231: $11 $1f $14
	ld   hl, sp-$05                                  ; $7234: $f8 $fb
	rst  $38                                         ; $7236: $ff
	rst  JumpTable                                         ; $7237: $df
	rst  JumpTable                                         ; $7238: $df
	rst  $38                                         ; $7239: $ff
	cp   h                                           ; $723a: $bc
	ld   [hl], c                                     ; $723b: $71
	dec  e                                           ; $723c: $1d
	ld   de, $11b1                                   ; $723d: $11 $b1 $11
	rra                                              ; $7240: $1f
	rra                                              ; $7241: $1f
	db   $fd                                         ; $7242: $fd
	cp   $fc                                         ; $7243: $fe $fc
	rst  $38                                         ; $7245: $ff
	rst  $28                                         ; $7246: $ef
	rst  $38                                         ; $7247: $ff
	xor  d                                           ; $7248: $aa
	ld   b, c                                        ; $7249: $41
	ld   a, [de]                                     ; $724a: $1a
	ld   de, $1171                                   ; $724b: $11 $71 $11
	or   l                                           ; $724e: $b5
	rra                                              ; $724f: $1f
	cp   a                                           ; $7250: $bf
	rst  $38                                         ; $7251: $ff
	ld   a, [$ffff]                                  ; $7252: $fa $ff $ff
	cp   $a8                                         ; $7255: $fe $a8
	ld   de, $1143                                   ; $7257: $11 $43 $11
	ld   de, $f111                                   ; $725a: $11 $11 $f1
	ld   e, a                                        ; $725d: $5f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $725e: $cf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $725f: $cf
	rst  $38                                         ; $7260: $ff
	rst  $38                                         ; $7261: $ff
	rst  $38                                         ; $7262: $ff
	db   $fc                                         ; $7263: $fc
	sub  [hl]                                        ; $7264: $96
	ld   de, $1681                                   ; $7265: $11 $81 $16
	ld   de, $c112                                   ; $7268: $11 $12 $c1
	db   $fc                                         ; $726b: $fc
	rst  $38                                         ; $726c: $ff
	rst  $38                                         ; $726d: $ff
	cp   a                                           ; $726e: $bf
	rst  $38                                         ; $726f: $ff
	rst  $38                                         ; $7270: $ff
	ld   a, [$1192]                                  ; $7271: $fa $92 $11
	ld   [hl], c                                     ; $7274: $71
	ld   [de], a                                     ; $7275: $12
	ld   de, $311b                                   ; $7276: $11 $1b $31
	ld   a, [$fffe]                                  ; $7279: $fa $fe $ff
	rst  JumpTable                                         ; $727c: $df
	rst  $38                                         ; $727d: $ff
	rst  $38                                         ; $727e: $ff
	ld   sp, hl                                      ; $727f: $f9
	ld   h, c                                        ; $7280: $61
	inc  de                                          ; $7281: $13
	ld   de, $1111                                   ; $7282: $11 $11 $11
	inc  e                                           ; $7285: $1c
	ld   a, [de]                                     ; $7286: $1a
	adc  $ff                                         ; $7287: $ce $ff
	db   $fd                                         ; $7289: $fd
	rst  $38                                         ; $728a: $ff
	rst  $38                                         ; $728b: $ff
	rst  $38                                         ; $728c: $ff
	jp   hl                                          ; $728d: $e9


	ld   hl, $1116                                   ; $728e: $21 $16 $11
	ld   de, $1811                                   ; $7291: $11 $11 $18
	dec  e                                           ; $7294: $1d
	adc  a                                           ; $7295: $8f
	rst  $38                                         ; $7296: $ff
	ei                                               ; $7297: $fb
	rst  $38                                         ; $7298: $ff
	rst  $38                                         ; $7299: $ff
	rst  $38                                         ; $729a: $ff
	rst  $20                                         ; $729b: $e7
	ld   de, $1116                                   ; $729c: $11 $16 $11
	ld   de, $5411                                   ; $729f: $11 $11 $54
	sbc  h                                           ; $72a2: $9c
	xor  a                                           ; $72a3: $af
	rst  $38                                         ; $72a4: $ff
	db   $ed                                         ; $72a5: $ed
	rst  $38                                         ; $72a6: $ff
	rst  $38                                         ; $72a7: $ff
	rst  $38                                         ; $72a8: $ff
	call nc, $3311                                   ; $72a9: $d4 $11 $33
	ld   de, $1111                                   ; $72ac: $11 $11 $11
	ld   d, d                                        ; $72af: $52
	ld   [$ffbf], a                                  ; $72b0: $ea $bf $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b3: $cf
	rst  $38                                         ; $72b4: $ff
	rst  $38                                         ; $72b5: $ff
	rst  $38                                         ; $72b6: $ff
	jp   nc, Jump_0f9_5111                           ; $72b7: $d2 $11 $51

	ld   de, $1112                                   ; $72ba: $11 $12 $11
	inc  sp                                          ; $72bd: $33
	ld   a, [$ffef]                                  ; $72be: $fa $ef $ff
	rst  JumpTable                                         ; $72c1: $df
	rst  $38                                         ; $72c2: $ff
	rst  $38                                         ; $72c3: $ff
	rst  $38                                         ; $72c4: $ff
	jp   nz, Jump_0f9_6111                           ; $72c5: $c2 $11 $61

	ld   de, $1111                                   ; $72c8: $11 $11 $11
	dec  d                                           ; $72cb: $15
	ei                                               ; $72cc: $fb
	cp   $ff                                         ; $72cd: $fe $ff
	rst  $28                                         ; $72cf: $ef
	rst  $38                                         ; $72d0: $ff
	rst  $38                                         ; $72d1: $ff
	db   $fd                                         ; $72d2: $fd
	sub  d                                           ; $72d3: $92
	ld   de, $1151                                   ; $72d4: $11 $51 $11
	ld   de, $1811                                   ; $72d7: $11 $11 $18
	call c, $fffe                                    ; $72da: $dc $fe $ff
	rst  $38                                         ; $72dd: $ff
	rst  $38                                         ; $72de: $ff
	rst  $38                                         ; $72df: $ff
	db   $fd                                         ; $72e0: $fd
	ld   [hl], c                                     ; $72e1: $71
	ld   de, $1141                                   ; $72e2: $11 $41 $11
	ld   de, $1a11                                   ; $72e5: $11 $11 $1a
	call $ffff                                       ; $72e8: $cd $ff $ff
	rst  $38                                         ; $72eb: $ff
	rst  $38                                         ; $72ec: $ff
	rst  $38                                         ; $72ed: $ff
	db   $fc                                         ; $72ee: $fc
	ld   h, c                                        ; $72ef: $61
	ld   de, $1131                                   ; $72f0: $11 $31 $11
	ld   de, $1b11                                   ; $72f3: $11 $11 $1b
	adc  $ff                                         ; $72f6: $ce $ff
	rst  $38                                         ; $72f8: $ff
	rst  $38                                         ; $72f9: $ff
	rst  $38                                         ; $72fa: $ff
	rst  $38                                         ; $72fb: $ff
	db   $ec                                         ; $72fc: $ec
	ld   [hl], d                                     ; $72fd: $72
	ld   de, $1141                                   ; $72fe: $11 $41 $11
	ld   de, $0811                                   ; $7301: $11 $11 $08
	adc  $fe                                         ; $7304: $ce $fe
	rst  $38                                         ; $7306: $ff
	rst  $38                                         ; $7307: $ff
	rst  $38                                         ; $7308: $ff
	rst  $38                                         ; $7309: $ff
	db   $fc                                         ; $730a: $fc
	add  e                                           ; $730b: $83
	ld   de, $1151                                   ; $730c: $11 $51 $11
	ld   de, $1711                                   ; $730f: $11 $11 $17
	call $fffd                                       ; $7312: $cd $fd $ff
	rst  $38                                         ; $7315: $ff
	rst  $38                                         ; $7316: $ff
	rst  $38                                         ; $7317: $ff
	db   $fd                                         ; $7318: $fd
	sub  e                                           ; $7319: $93
	ld   de, $1141                                   ; $731a: $11 $41 $11
	ld   de, $1411                                   ; $731d: $11 $11 $14
	call $fffc                                       ; $7320: $cd $fc $ff
	rst  $38                                         ; $7323: $ff
	rst  $38                                         ; $7324: $ff
	rst  $38                                         ; $7325: $ff
	db   $fd                                         ; $7326: $fd
	and  l                                           ; $7327: $a5
	ld   hl, $1123                                   ; $7328: $21 $23 $11
	ld   de, $1111                                   ; $732b: $11 $11 $11
	adc  l                                           ; $732e: $8d
	rst  $28                                         ; $732f: $ef
	rst  JumpTable                                         ; $7330: $df
	rst  $38                                         ; $7331: $ff
	rst  $38                                         ; $7332: $ff
	rst  $38                                         ; $7333: $ff
	rst  $38                                         ; $7334: $ff
	rst  $10                                         ; $7335: $d7
	ld   b, c                                        ; $7336: $41
	ld   d, $11                                      ; $7337: $16 $11
	ld   de, $1111                                   ; $7339: $11 $11 $11
	dec  sp                                          ; $733c: $3b
	rst  JumpTable                                         ; $733d: $df
	xor  $ff                                         ; $733e: $ee $ff
	rst  $38                                         ; $7340: $ff
	rst  $38                                         ; $7341: $ff
	rst  $38                                         ; $7342: $ff
	db   $ed                                         ; $7343: $ed
	ld   d, [hl]                                     ; $7344: $56
	ld   de, $1151                                   ; $7345: $11 $51 $11
	ld   de, $3111                                   ; $7348: $11 $11 $31
	cp   e                                           ; $734b: $bb
	db   $fc                                         ; $734c: $fc
	rst  $38                                         ; $734d: $ff
	rst  $38                                         ; $734e: $ff
	rst  $38                                         ; $734f: $ff
	rst  $38                                         ; $7350: $ff
	cp   $b7                                         ; $7351: $fe $b7
	ld   h, c                                        ; $7353: $61
	dec  h                                           ; $7354: $25
	ld   de, $1111                                   ; $7355: $11 $11 $11
	inc  de                                          ; $7358: $13
	dec  e                                           ; $7359: $1d
	xor  a                                           ; $735a: $af
	sbc  a                                           ; $735b: $9f
	rst  $38                                         ; $735c: $ff
	rst  $38                                         ; $735d: $ff
	db   $fd                                         ; $735e: $fd
	rst  $38                                         ; $735f: $ff
	db   $fc                                         ; $7360: $fc
	sub  [hl]                                        ; $7361: $96
	ld   de, $1137                                   ; $7362: $11 $37 $11
	ld   de, $4111                                   ; $7365: $11 $11 $41
	xor  c                                           ; $7368: $a9
	db   $fd                                         ; $7369: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $736a: $cf
	rst  $38                                         ; $736b: $ff
	rst  $38                                         ; $736c: $ff
	rst  $38                                         ; $736d: $ff
	rst  $38                                         ; $736e: $ff
	ld   a, [$1191]                                  ; $736f: $fa $91 $11
	add  c                                           ; $7372: $81
	ld   de, $1111                                   ; $7373: $11 $11 $11
	ld   de, $fb98                                   ; $7376: $11 $98 $fb
	rst  $38                                         ; $7379: $ff
	rst  $38                                         ; $737a: $ff
	rst  $38                                         ; $737b: $ff
	rst  $28                                         ; $737c: $ef
	rst  $38                                         ; $737d: $ff
	ld   sp, hl                                      ; $737e: $f9
	ld   [hl], d                                     ; $737f: $72
	ld   sp, $1152                                   ; $7380: $31 $52 $11
	ld   de, $1111                                   ; $7383: $11 $11 $11
	ld   a, b                                        ; $7386: $78
	db   $fd                                         ; $7387: $fd
	rst  $38                                         ; $7388: $ff
	rst  $38                                         ; $7389: $ff
	rst  $38                                         ; $738a: $ff
	rst  $38                                         ; $738b: $ff
	rst  $38                                         ; $738c: $ff
	ei                                               ; $738d: $fb
	and  e                                           ; $738e: $a3
	ld   d, c                                        ; $738f: $51
	dec  d                                           ; $7390: $15
	ld   de, $1111                                   ; $7391: $11 $11 $11
	ld   hl, $df37                                   ; $7394: $21 $37 $df
	rst  $38                                         ; $7397: $ff
	rst  $38                                         ; $7398: $ff
	rst  $38                                         ; $7399: $ff
	rst  $38                                         ; $739a: $ff
	rst  $28                                         ; $739b: $ef
	db   $fc                                         ; $739c: $fc
	add  $52                                         ; $739d: $c6 $52
	ld   de, $1171                                   ; $739f: $11 $71 $11
	ld   de, $3212                                   ; $73a2: $11 $12 $32
	adc  d                                           ; $73a5: $8a
	rst  $38                                         ; $73a6: $ff

Jump_0f9_73a7:
	rst  $38                                         ; $73a7: $ff
	rst  $38                                         ; $73a8: $ff
	rst  $38                                         ; $73a9: $ff
	cp   [hl]                                        ; $73aa: $be
	cp   $fb                                         ; $73ab: $fe $fb
	or   h                                           ; $73ad: $b4
	ld   b, d                                        ; $73ae: $42
	inc  de                                          ; $73af: $13
	ld   h, c                                        ; $73b0: $61
	ld   de, $1611                                   ; $73b1: $11 $11 $16
	inc  [hl]                                        ; $73b4: $34
	ld   l, d                                        ; $73b5: $6a
	db   $fd                                         ; $73b6: $fd
	cp   $ff                                         ; $73b7: $fe $ff
	db   $fd                                         ; $73b9: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ba: $cf
	rst  $38                                         ; $73bb: $ff
	sbc  $88                                         ; $73bc: $de $88
	ld   d, e                                        ; $73be: $53
	inc  de                                          ; $73bf: $13
	and  c                                           ; $73c0: $a1
	ld   de, $1511                                   ; $73c1: $11 $11 $15
	ld   [de], a                                     ; $73c4: $12
	ld   a, [hl-]                                    ; $73c5: $3a
	call c, $edfd                                    ; $73c6: $dc $fd $ed
	db   $fc                                         ; $73c9: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73ca: $cf
	rst  $38                                         ; $73cb: $ff
	rst  $28                                         ; $73cc: $ef
	xor  c                                           ; $73cd: $a9
	sbc  b                                           ; $73ce: $98
	ld   d, c                                        ; $73cf: $51
	ld   e, d                                        ; $73d0: $5a
	ld   d, c                                        ; $73d1: $51
	ld   de, $4211                                   ; $73d2: $11 $11 $42
	ld   [de], a                                     ; $73d5: $12
	ld   a, e                                        ; $73d6: $7b
	cp   h                                           ; $73d7: $bc
	call $caef                                       ; $73d8: $cd $ef $ca
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73db: $cf
	rst  $38                                         ; $73dc: $ff
	ei                                               ; $73dd: $fb
	cp   d                                           ; $73de: $ba
	add  sp, $51                                     ; $73df: $e8 $51
	add  hl, hl                                      ; $73e1: $29
	ld   sp, $1111                                   ; $73e2: $31 $11 $11
	ld   [hl+], a                                    ; $73e5: $22
	ld   hl, $bc48                                   ; $73e6: $21 $48 $bc
	xor  $df                                         ; $73e9: $ee $df
	db   $fd                                         ; $73eb: $fd
	rst  JumpTable                                         ; $73ec: $df
	rst  $38                                         ; $73ed: $ff
	cp   $b9                                         ; $73ee: $fe $b9
	cp   d                                           ; $73f0: $ba
	ld   h, a                                        ; $73f1: $67
	inc  h                                           ; $73f2: $24
	ld   d, e                                        ; $73f3: $53
	ld   de, $1111                                   ; $73f4: $11 $11 $11
	ld   [hl+], a                                    ; $73f7: $22
	dec  [hl]                                        ; $73f8: $35
	sbc  d                                           ; $73f9: $9a
	cp   l                                           ; $73fa: $bd
	rst  $28                                         ; $73fb: $ef
	rst  $28                                         ; $73fc: $ef
	cp   h                                           ; $73fd: $bc
	rst  JumpTable                                         ; $73fe: $df
	rst  $38                                         ; $73ff: $ff
	xor  $d9                                         ; $7400: $ee $d9
	rst  $10                                         ; $7402: $d7
	ld   [hl], a                                     ; $7403: $77
	ld   b, e                                        ; $7404: $43
	ld   b, e                                        ; $7405: $43
	ld   de, $1211                                   ; $7406: $11 $11 $12
	inc  sp                                          ; $7409: $33
	inc  [hl]                                        ; $740a: $34
	adc  c                                           ; $740b: $89
	xor  e                                           ; $740c: $ab
	call c, $cbbc                                    ; $740d: $dc $bc $cb
	cp   l                                           ; $7410: $bd
	rst  JumpTable                                         ; $7411: $df
	rst  $38                                         ; $7412: $ff
	call c, $a9dc                                    ; $7413: $dc $dc $a9
	and  [hl]                                        ; $7416: $a6
	ld   h, h                                        ; $7417: $64
	inc  [hl]                                        ; $7418: $34
	ld   hl, $1111                                   ; $7419: $21 $11 $11
	ld   [hl+], a                                    ; $741c: $22
	inc  hl                                          ; $741d: $23
	ld   d, a                                        ; $741e: $57
	adc  b                                           ; $741f: $88
	xor  e                                           ; $7420: $ab
	cp   d                                           ; $7421: $ba
	cp   h                                           ; $7422: $bc
	call $eecf                                       ; $7423: $cd $cf $ee
	cp   $ed                                         ; $7426: $fe $ed
	cp   d                                           ; $7428: $ba
	jp   z, Jump_0f9_54a7                            ; $7429: $ca $a7 $54

	ld   [hl-], a                                    ; $742c: $32
	ld   hl, $1111                                   ; $742d: $21 $11 $11
	ld   [de], a                                     ; $7430: $12
	inc  sp                                          ; $7431: $33
	ld   d, [hl]                                     ; $7432: $56
	ld   a, c                                        ; $7433: $79
	sbc  d                                           ; $7434: $9a
	call z, $ddcc                                    ; $7435: $cc $cc $dd
	db   $dd                                         ; $7438: $dd
	rst  JumpTable                                         ; $7439: $df
	rst  $38                                         ; $743a: $ff
	sbc  $cb                                         ; $743b: $de $cb
	ret                                              ; $743d: $c9


	xor  c                                           ; $743e: $a9
	ld   a, b                                        ; $743f: $78
	ld   d, d                                        ; $7440: $52
	ld   [hl+], a                                    ; $7441: $22
	ld   [hl+], a                                    ; $7442: $22
	ld   de, $1311                                   ; $7443: $11 $11 $13
	inc  [hl]                                        ; $7446: $34
	ld   b, l                                        ; $7447: $45
	ld   a, b                                        ; $7448: $78

Call_0f9_7449:
	sbc  c                                           ; $7449: $99
	sbc  d                                           ; $744a: $9a
	set  3, h                                        ; $744b: $cb $dc
	xor  $ef                                         ; $744d: $ee $ef
	db   $ed                                         ; $744f: $ed
	call $bacd                                       ; $7450: $cd $cd $ba
	xor  e                                           ; $7453: $ab
	sbc  b                                           ; $7454: $98
	ld   h, a                                        ; $7455: $67
	ld   d, l                                        ; $7456: $55
	ld   sp, $3132                                   ; $7457: $31 $32 $31
	ld   de, $3413                                   ; $745a: $11 $13 $34
	ld   b, l                                        ; $745d: $45
	ld   h, a                                        ; $745e: $67
	adc  c                                           ; $745f: $89
	xor  c                                           ; $7460: $a9
	xor  h                                           ; $7461: $ac
	call z, $ddcd                                    ; $7462: $cc $cd $dd
	xor  $dc                                         ; $7465: $ee $dc
	call z, $aadc                                    ; $7467: $cc $dc $aa
	adc  b                                           ; $746a: $88
	ld   [hl], a                                     ; $746b: $77
	ld   d, [hl]                                     ; $746c: $56
	ld   h, l                                        ; $746d: $65
	ld   d, l                                        ; $746e: $55
	ld   b, d                                        ; $746f: $42
	ld   [hl+], a                                    ; $7470: $22
	ld   b, e                                        ; $7471: $43
	inc  sp                                          ; $7472: $33
	dec  [hl]                                        ; $7473: $35
	ld   b, [hl]                                     ; $7474: $46
	ld   h, [hl]                                     ; $7475: $66
	ld   a, b                                        ; $7476: $78
	xor  d                                           ; $7477: $aa
	cp   d                                           ; $7478: $ba
	xor  e                                           ; $7479: $ab
	call $cbbb                                       ; $747a: $cd $bb $cb
	call z, $abbc                                    ; $747d: $cc $bc $ab
	sbc  d                                           ; $7480: $9a
	sbc  b                                           ; $7481: $98
	add  a                                           ; $7482: $87
	sub  [hl]                                        ; $7483: $96
	halt                                             ; $7484: $76
	halt                                             ; $7485: $76
	ld   b, [hl]                                     ; $7486: $46
	ld   d, a                                        ; $7487: $57
	ld   d, [hl]                                     ; $7488: $56
	ld   h, a                                        ; $7489: $67
	ld   h, l                                        ; $748a: $65
	ld   h, [hl]                                     ; $748b: $66
	halt                                             ; $748c: $76
	ld   [hl], a                                     ; $748d: $77
	ld   a, b                                        ; $748e: $78
	adc  b                                           ; $748f: $88
	adc  b                                           ; $7490: $88
	adc  c                                           ; $7491: $89
	sbc  d                                           ; $7492: $9a
	sbc  b                                           ; $7493: $98
	xor  c                                           ; $7494: $a9
	sbc  c                                           ; $7495: $99
	adc  b                                           ; $7496: $88
	adc  b                                           ; $7497: $88
	xor  c                                           ; $7498: $a9
	sbc  c                                           ; $7499: $99
	xor  c                                           ; $749a: $a9
	adc  b                                           ; $749b: $88
	ld   a, c                                        ; $749c: $79
	sbc  b                                           ; $749d: $98
	adc  c                                           ; $749e: $89
	xor  c                                           ; $749f: $a9
	ld   [hl], a                                     ; $74a0: $77
	ld   a, c                                        ; $74a1: $79
	sbc  b                                           ; $74a2: $98
	adc  b                                           ; $74a3: $88
	sbc  b                                           ; $74a4: $98
	ld   h, a                                        ; $74a5: $67
	ld   [hl], a                                     ; $74a6: $77
	ld   h, a                                        ; $74a7: $67
	ld   h, a                                        ; $74a8: $67
	halt                                             ; $74a9: $76
	ld   h, l                                        ; $74aa: $65
	halt                                             ; $74ab: $76
	halt                                             ; $74ac: $76
	ld   [hl], a                                     ; $74ad: $77
	ld   a, c                                        ; $74ae: $79
	ld   a, b                                        ; $74af: $78
	add  a                                           ; $74b0: $87
	sbc  d                                           ; $74b1: $9a
	sbc  d                                           ; $74b2: $9a
	sbc  d                                           ; $74b3: $9a
	xor  d                                           ; $74b4: $aa
	xor  c                                           ; $74b5: $a9
	sbc  c                                           ; $74b6: $99
	sbc  d                                           ; $74b7: $9a
	xor  b                                           ; $74b8: $a8
	sbc  c                                           ; $74b9: $99
	sbc  b                                           ; $74ba: $98
	ld   [hl], a                                     ; $74bb: $77
	adc  b                                           ; $74bc: $88
	ld   [hl], a                                     ; $74bd: $77
	ld   a, b                                        ; $74be: $78
	ld   [hl], a                                     ; $74bf: $77
	ld   h, [hl]                                     ; $74c0: $66
	add  a                                           ; $74c1: $87
	ld   [hl], a                                     ; $74c2: $77
	add  a                                           ; $74c3: $87
	sub  a                                           ; $74c4: $97
	ld   [hl], a                                     ; $74c5: $77
	ld   [hl], a                                     ; $74c6: $77
	ld   a, b                                        ; $74c7: $78
	ld   a, b                                        ; $74c8: $78
	adc  b                                           ; $74c9: $88
	add  a                                           ; $74ca: $87
	ld   a, b                                        ; $74cb: $78
	adc  b                                           ; $74cc: $88
	adc  c                                           ; $74cd: $89
	sbc  b                                           ; $74ce: $98
	adc  b                                           ; $74cf: $88
	sub  a                                           ; $74d0: $97
	adc  b                                           ; $74d1: $88
	adc  b                                           ; $74d2: $88
	adc  c                                           ; $74d3: $89
	adc  c                                           ; $74d4: $89
	add  a                                           ; $74d5: $87
	adc  b                                           ; $74d6: $88
	sbc  c                                           ; $74d7: $99
	ld   a, c                                        ; $74d8: $79
	sbc  c                                           ; $74d9: $99
	sub  a                                           ; $74da: $97
	ld   a, b                                        ; $74db: $78
	add  a                                           ; $74dc: $87
	add  a                                           ; $74dd: $87
	adc  c                                           ; $74de: $89
	ld   [hl], a                                     ; $74df: $77
	ld   a, b                                        ; $74e0: $78
	ld   a, c                                        ; $74e1: $79
	ld   a, b                                        ; $74e2: $78
	adc  b                                           ; $74e3: $88
	add  a                                           ; $74e4: $87
	ld   [hl], a                                     ; $74e5: $77
	adc  b                                           ; $74e6: $88
	ld   a, b                                        ; $74e7: $78
	ld   a, b                                        ; $74e8: $78
	add  a                                           ; $74e9: $87
	ld   [hl], a                                     ; $74ea: $77
	add  a                                           ; $74eb: $87
	ld   [hl], a                                     ; $74ec: $77
	sbc  b                                           ; $74ed: $98
	ld   a, b                                        ; $74ee: $78
	ld   a, b                                        ; $74ef: $78
	ld   a, b                                        ; $74f0: $78
	ld   a, b                                        ; $74f1: $78
	sbc  b                                           ; $74f2: $98
	sbc  b                                           ; $74f3: $98
	sbc  b                                           ; $74f4: $98
	adc  b                                           ; $74f5: $88
	sbc  c                                           ; $74f6: $99
	sbc  b                                           ; $74f7: $98
	sbc  c                                           ; $74f8: $99
	adc  c                                           ; $74f9: $89
	sbc  b                                           ; $74fa: $98
	adc  b                                           ; $74fb: $88
	sub  a                                           ; $74fc: $97
	ld   a, b                                        ; $74fd: $78
	adc  c                                           ; $74fe: $89
	ld   [hl], a                                     ; $74ff: $77
	adc  b                                           ; $7500: $88
	ld   [hl], a                                     ; $7501: $77
	ld   a, b                                        ; $7502: $78
	add  a                                           ; $7503: $87
	ld   [hl], a                                     ; $7504: $77
	add  [hl]                                        ; $7505: $86
	ld   [hl], a                                     ; $7506: $77
	add  a                                           ; $7507: $87
	add  a                                           ; $7508: $87
	adc  b                                           ; $7509: $88
	ld   a, b                                        ; $750a: $78
	ld   a, c                                        ; $750b: $79
	sbc  b                                           ; $750c: $98
	sbc  b                                           ; $750d: $98
	sbc  b                                           ; $750e: $98
	add  a                                           ; $750f: $87
	xor  b                                           ; $7510: $a8
	adc  b                                           ; $7511: $88
	sbc  c                                           ; $7512: $99
	add  a                                           ; $7513: $87
	ld   a, c                                        ; $7514: $79
	adc  b                                           ; $7515: $88
	ld   a, b                                        ; $7516: $78
	adc  b                                           ; $7517: $88
	add  a                                           ; $7518: $87
	ld   a, c                                        ; $7519: $79
	adc  b                                           ; $751a: $88
	adc  b                                           ; $751b: $88
	adc  b                                           ; $751c: $88
	ld   a, c                                        ; $751d: $79
	sbc  c                                           ; $751e: $99
	ld   a, b                                        ; $751f: $78
	sbc  b                                           ; $7520: $98
	sub  a                                           ; $7521: $97
	adc  b                                           ; $7522: $88
	adc  c                                           ; $7523: $89
	adc  b                                           ; $7524: $88
	sbc  b                                           ; $7525: $98
	add  a                                           ; $7526: $87
	sbc  b                                           ; $7527: $98
	ld   a, c                                        ; $7528: $79
	add  a                                           ; $7529: $87
	sbc  b                                           ; $752a: $98
	ld   a, b                                        ; $752b: $78
	add  a                                           ; $752c: $87
	ld   a, b                                        ; $752d: $78
	adc  b                                           ; $752e: $88
	ld   a, b                                        ; $752f: $78
	sbc  c                                           ; $7530: $99
	adc  b                                           ; $7531: $88
	ld   [hl], a                                     ; $7532: $77
	sbc  b                                           ; $7533: $98
	adc  b                                           ; $7534: $88
	ld   a, c                                        ; $7535: $79
	sub  a                                           ; $7536: $97
	sub  a                                           ; $7537: $97
	sbc  b                                           ; $7538: $98
	adc  b                                           ; $7539: $88
	adc  c                                           ; $753a: $89
	ld   a, b                                        ; $753b: $78
	ld   a, b                                        ; $753c: $78
	ld   a, b                                        ; $753d: $78
	ld   [hl], a                                     ; $753e: $77
	xor  b                                           ; $753f: $a8
	and  a                                           ; $7540: $a7
	sub  a                                           ; $7541: $97
	adc  c                                           ; $7542: $89
	sub  a                                           ; $7543: $97
	ld   a, c                                        ; $7544: $79
	ld   a, c                                        ; $7545: $79
	ld   [hl], a                                     ; $7546: $77
	ld   a, b                                        ; $7547: $78
	add  a                                           ; $7548: $87
	adc  b                                           ; $7549: $88
	ld   a, b                                        ; $754a: $78
	and  a                                           ; $754b: $a7
	add  a                                           ; $754c: $87
	ld   a, b                                        ; $754d: $78
	add  a                                           ; $754e: $87
	add  a                                           ; $754f: $87
	adc  c                                           ; $7550: $89
	ld   a, b                                        ; $7551: $78
	adc  b                                           ; $7552: $88
	adc  b                                           ; $7553: $88
	sbc  b                                           ; $7554: $98
	sbc  b                                           ; $7555: $98

Jump_0f9_7556:
	sbc  c                                           ; $7556: $99
	add  a                                           ; $7557: $87
	adc  c                                           ; $7558: $89
	ld   a, c                                        ; $7559: $79
	ld   a, c                                        ; $755a: $79
	add  a                                           ; $755b: $87
	and  a                                           ; $755c: $a7
	ld   a, b                                        ; $755d: $78
	sbc  b                                           ; $755e: $98
	adc  b                                           ; $755f: $88
	ld   a, c                                        ; $7560: $79
	adc  b                                           ; $7561: $88
	add  a                                           ; $7562: $87
	sub  a                                           ; $7563: $97
	ld   a, b                                        ; $7564: $78
	ld   [hl], a                                     ; $7565: $77

Call_0f9_7566:
	sub  a                                           ; $7566: $97
	ld   a, c                                        ; $7567: $79

Jump_0f9_7568:
	ld   a, b                                        ; $7568: $78
	ld   [hl], a                                     ; $7569: $77
	ld   a, b                                        ; $756a: $78
	add  a                                           ; $756b: $87
	add  a                                           ; $756c: $87
	adc  b                                           ; $756d: $88
	sbc  b                                           ; $756e: $98
	adc  c                                           ; $756f: $89
	sbc  c                                           ; $7570: $99
	sbc  d                                           ; $7571: $9a
	xor  c                                           ; $7572: $a9
	sbc  b                                           ; $7573: $98
	sbc  c                                           ; $7574: $99
	sbc  b                                           ; $7575: $98
	adc  c                                           ; $7576: $89
	adc  c                                           ; $7577: $89
	ld   a, c                                        ; $7578: $79
	adc  c                                           ; $7579: $89
	add  a                                           ; $757a: $87
	and  a                                           ; $757b: $a7
	add  [hl]                                        ; $757c: $86
	add  a                                           ; $757d: $87
	ld   a, b                                        ; $757e: $78
	ld   e, b                                        ; $757f: $58
	ld   l, c                                        ; $7580: $69
	ld   d, [hl]                                     ; $7581: $56
	halt                                             ; $7582: $76
	add  [hl]                                        ; $7583: $86
	halt                                             ; $7584: $76
	adc  b                                           ; $7585: $88
	add  a                                           ; $7586: $87
	ld   a, c                                        ; $7587: $79

Call_0f9_7588:
	adc  c                                           ; $7588: $89
	sbc  c                                           ; $7589: $99
	adc  d                                           ; $758a: $8a
	xor  c                                           ; $758b: $a9
	xor  d                                           ; $758c: $aa
	xor  c                                           ; $758d: $a9
	xor  c                                           ; $758e: $a9
	cp   d                                           ; $758f: $ba
	xor  c                                           ; $7590: $a9
	xor  c                                           ; $7591: $a9
	adc  d                                           ; $7592: $8a
	ld   a, d                                        ; $7593: $7a
	ld   a, b                                        ; $7594: $78
	ld   [hl], a                                     ; $7595: $77
	sub  [hl]                                        ; $7596: $96
	ld   h, [hl]                                     ; $7597: $66
	halt                                             ; $7598: $76
	ld   d, l                                        ; $7599: $55
	ld   d, e                                        ; $759a: $53
	halt                                             ; $759b: $76
	ld   d, l                                        ; $759c: $55
	ld   b, a                                        ; $759d: $47
	ld   h, a                                        ; $759e: $67
	ld   a, b                                        ; $759f: $78
	adc  c                                           ; $75a0: $89
	sbc  d                                           ; $75a1: $9a
	res  5, e                                        ; $75a2: $cb $ab
	set  1, e                                        ; $75a4: $cb $cb
	cp   d                                           ; $75a6: $ba

Call_0f9_75a7:
	cp   h                                           ; $75a7: $bc
	cp   e                                           ; $75a8: $bb
	adc  c                                           ; $75a9: $89
	xor  c                                           ; $75aa: $a9
	sub  a                                           ; $75ab: $97
	adc  b                                           ; $75ac: $88
	and  a                                           ; $75ad: $a7
	ld   h, [hl]                                     ; $75ae: $66
	ld   d, [hl]                                     ; $75af: $56
	dec  [hl]                                        ; $75b0: $35
	ld   [hl+], a                                    ; $75b1: $22
	inc  [hl]                                        ; $75b2: $34
	ld   b, e                                        ; $75b3: $43
	ld   b, e                                        ; $75b4: $43
	ld   h, [hl]                                     ; $75b5: $66
	add  a                                           ; $75b6: $87
	adc  b                                           ; $75b7: $88
	call $cdcd                                       ; $75b8: $cd $cd $cd
	rst  JumpTable                                         ; $75bb: $df
	set  1, h                                        ; $75bc: $cb $cc
	cp   d                                           ; $75be: $ba
	cp   c                                           ; $75bf: $b9
	xor  c                                           ; $75c0: $a9
	xor  b                                           ; $75c1: $a8
	xor  c                                           ; $75c2: $a9
	ld   a, b                                        ; $75c3: $78
	ld   h, a                                        ; $75c4: $67
	ld   b, h                                        ; $75c5: $44
	ld   sp, $1111                                   ; $75c6: $31 $11 $11
	ld   de, $4813                                   ; $75c9: $11 $13 $48
	sbc  c                                           ; $75cc: $99
	cp   h                                           ; $75cd: $bc
	rst  $38                                         ; $75ce: $ff
	rst  $38                                         ; $75cf: $ff
	rst  $28                                         ; $75d0: $ef
	rst  $38                                         ; $75d1: $ff
	res  3, c                                        ; $75d2: $cb $99
	xor  d                                           ; $75d4: $aa
	sub  a                                           ; $75d5: $97

Call_0f9_75d6:
	sbc  d                                           ; $75d6: $9a
	xor  d                                           ; $75d7: $aa
	sub  [hl]                                        ; $75d8: $96
	halt                                             ; $75d9: $76
	ld   [hl], e                                     ; $75da: $73
	ld   de, $1111                                   ; $75db: $11 $11 $11
	ld   de, $8b13                                   ; $75de: $11 $13 $8b
	db   $dd                                         ; $75e1: $dd
	rst  $38                                         ; $75e2: $ff
	rst  $38                                         ; $75e3: $ff
	rst  $38                                         ; $75e4: $ff
	rst  $38                                         ; $75e5: $ff
	ld   a, [$6864]                                  ; $75e6: $fa $64 $68
	sbc  b                                           ; $75e9: $98
	ld   a, e                                        ; $75ea: $7b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $75eb: $cf
	xor  c                                           ; $75ec: $a9
	add  [hl]                                        ; $75ed: $86
	ld   d, c                                        ; $75ee: $51
	ld   de, $1111                                   ; $75ef: $11 $11 $11
	ld   de, $ff2b                                   ; $75f2: $11 $2b $ff
	rst  $38                                         ; $75f5: $ff
	rst  $38                                         ; $75f6: $ff
	rst  $38                                         ; $75f7: $ff
	rst  $38                                         ; $75f8: $ff
	db   $fc                                         ; $75f9: $fc
	ld   d, c                                        ; $75fa: $51
	inc  d                                           ; $75fb: $14
	ld   a, b                                        ; $75fc: $78
	ld   a, c                                        ; $75fd: $79
	rst  JumpTable                                         ; $75fe: $df
	db   $fc                                         ; $75ff: $fc
	and  l                                           ; $7600: $a5
	ld   sp, $1111                                   ; $7601: $31 $11 $11
	ld   de, $9f11                                   ; $7604: $11 $11 $9f
	rst  $38                                         ; $7607: $ff
	rst  $38                                         ; $7608: $ff
	rst  $38                                         ; $7609: $ff
	rst  $38                                         ; $760a: $ff
	rst  $38                                         ; $760b: $ff
	call nc, $1711                                   ; $760c: $d4 $11 $17
	sbc  b                                           ; $760f: $98
	ld   a, [hl]                                     ; $7610: $7e
	rst  $38                                         ; $7611: $ff
	jp   hl                                          ; $7612: $e9


	ld   d, d                                        ; $7613: $52
	ld   de, $1111                                   ; $7614: $11 $11 $11
	ld   de, $ff5e                                   ; $7617: $11 $5e $ff
	rst  $38                                         ; $761a: $ff
	rst  $38                                         ; $761b: $ff
	rst  $38                                         ; $761c: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $761d: $cf
	and  $11                                         ; $761e: $e6 $11
	dec  d                                           ; $7620: $15
	sub  a                                           ; $7621: $97
	ld   e, e                                        ; $7622: $5b
	rst  $38                                         ; $7623: $ff
	ret  c                                           ; $7624: $d8

	ld   sp, $1111                                   ; $7625: $31 $11 $11
	ld   de, $af13                                   ; $7628: $11 $13 $af
	rst  $38                                         ; $762b: $ff
	rst  $38                                         ; $762c: $ff
	rst  $38                                         ; $762d: $ff
	rst  $38                                         ; $762e: $ff
	db   $fd                                         ; $762f: $fd
	sub  c                                           ; $7630: $91
	ld   de, $4434                                   ; $7631: $11 $34 $44
	cp   a                                           ; $7634: $bf
	rst  $38                                         ; $7635: $ff
	jp   z, $1151                                    ; $7636: $ca $51 $11

	ld   b, c                                        ; $7639: $41
	ld   de, $ff1b                                   ; $763a: $11 $1b $ff
	cp   $ff                                         ; $763d: $fe $ff
	rst  $38                                         ; $763f: $ff
	adc  a                                           ; $7640: $8f
	ld   hl, sp+$11                                  ; $7641: $f8 $11
	ld   de, $3864                                   ; $7643: $11 $64 $38
	rst  $38                                         ; $7646: $ff
	rst  $38                                         ; $7647: $ff
	ret  z                                           ; $7648: $c8

	ld   sp, $2111                                   ; $7649: $31 $11 $21
	ld   de, $ffbf                                   ; $764c: $11 $bf $ff
	rst  $38                                         ; $764f: $ff
	rst  $38                                         ; $7650: $ff
	rst  $30                                         ; $7651: $f7
	rst  JumpTable                                         ; $7652: $df
	ld   d, c                                        ; $7653: $51
	ld   de, $1111                                   ; $7654: $11 $11 $11
	sbc  a                                           ; $7657: $9f
	rst  $38                                         ; $7658: $ff
	rst  $38                                         ; $7659: $ff
	or   $11                                         ; $765a: $f6 $11
	dec  d                                           ; $765c: $15
	ld   de, rAUD1LEN                                   ; $765d: $11 $11 $ff
	rst  $38                                         ; $7660: $ff
	rst  $38                                         ; $7661: $ff
	rst  $38                                         ; $7662: $ff
	ret                                              ; $7663: $c9


	ei                                               ; $7664: $fb
	ld   de, $1111                                   ; $7665: $11 $11 $11
	ld   [de], a                                     ; $7668: $12
	rst  $38                                         ; $7669: $ff
	rst  $38                                         ; $766a: $ff
	rst  $38                                         ; $766b: $ff
	pop  de                                          ; $766c: $d1
	ld   de, $1151                                   ; $766d: $11 $51 $11
	inc  e                                           ; $7670: $1c
	adc  $ff                                         ; $7671: $ce $ff
	rst  $38                                         ; $7673: $ff
	rst  $38                                         ; $7674: $ff
	rst  $28                                         ; $7675: $ef
	pop  de                                          ; $7676: $d1
	ld   de, $1111                                   ; $7677: $11 $11 $11
	ld   c, a                                        ; $767a: $4f
	rst  $38                                         ; $767b: $ff
	rst  $38                                         ; $767c: $ff
	ld   a, [$1f11]                                  ; $767d: $fa $11 $1f
	ld   de, $f411                                   ; $7680: $11 $11 $f4
	rst  $38                                         ; $7683: $ff
	rst  $38                                         ; $7684: $ff
	rst  $38                                         ; $7685: $ff
	sbc  $f5                                         ; $7686: $de $f5
	ld   de, $1113                                   ; $7688: $11 $13 $11
	ld   d, $ff                                      ; $768b: $16 $ff
	rst  $38                                         ; $768d: $ff
	rst  $38                                         ; $768e: $ff
	ld   sp, $611f                                   ; $768f: $31 $1f $61
	ld   de, $6f9f                                   ; $7692: $11 $9f $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7695: $cf
	rst  $38                                         ; $7696: $ff
	ld   hl, sp-$01                                  ; $7697: $f8 $ff
	ld   de, $2111                                   ; $7699: $11 $11 $21
	ld   de, $ffff                                   ; $769c: $11 $ff $ff
	rst  $38                                         ; $769f: $ff
	ld   h, c                                        ; $76a0: $61
	jr   @-$0d                                       ; $76a1: $18 $f1

	ld   de, $4f3f                                   ; $76a3: $11 $3f $4f
	rst  $38                                         ; $76a6: $ff
	rst  $38                                         ; $76a7: $ff
	ld   hl, sp-$01                                  ; $76a8: $f8 $ff
	ld   de, $2111                                   ; $76aa: $11 $11 $21
	inc  sp                                          ; $76ad: $33
	rst  $38                                         ; $76ae: $ff
	rst  $38                                         ; $76af: $ff
	rst  $38                                         ; $76b0: $ff
	sub  c                                           ; $76b1: $91
	ld   de, $11f1                                   ; $76b2: $11 $f1 $11
	rra                                              ; $76b5: $1f
	sbc  a                                           ; $76b6: $9f
	rst  $38                                         ; $76b7: $ff
	rst  $38                                         ; $76b8: $ff
	cp   $cf                                         ; $76b9: $fe $cf
	ld   de, $3111                                   ; $76bb: $11 $11 $31
	rla                                              ; $76be: $17
	rst  $38                                         ; $76bf: $ff
	rst  $38                                         ; $76c0: $ff
	rst  $38                                         ; $76c1: $ff
	or   c                                           ; $76c2: $b1
	ld   de, $11f1                                   ; $76c3: $11 $f1 $11
	rra                                              ; $76c6: $1f
	xor  a                                           ; $76c7: $af
	rst  $38                                         ; $76c8: $ff
	rst  $38                                         ; $76c9: $ff
	cp   $df                                         ; $76ca: $fe $df
	ld   de, $1111                                   ; $76cc: $11 $11 $11
	inc  e                                           ; $76cf: $1c
	rst  $38                                         ; $76d0: $ff
	rst  $38                                         ; $76d1: $ff
	rst  $38                                         ; $76d2: $ff
	ld   hl, $111f                                   ; $76d3: $21 $1f $11
	ld   de, $ffb8                                   ; $76d6: $11 $b8 $ff
	rst  $38                                         ; $76d9: $ff
	rst  $38                                         ; $76da: $ff
	cp   $f2                                         ; $76db: $fe $f2
	ld   de, $1111                                   ; $76dd: $11 $11 $11
	rst  $28                                         ; $76e0: $ef
	rst  $38                                         ; $76e1: $ff
	rst  $38                                         ; $76e2: $ff
	add  c                                           ; $76e3: $81
	inc  e                                           ; $76e4: $1c
	pop  de                                          ; $76e5: $d1
	ld   de, $1f2d                                   ; $76e6: $11 $2d $1f
	rst  $38                                         ; $76e9: $ff
	rst  $38                                         ; $76ea: $ff
	db   $fc                                         ; $76eb: $fc
	rst  $38                                         ; $76ec: $ff
	ld   de, $1111                                   ; $76ed: $11 $11 $11
	rst  JumpTable                                         ; $76f0: $df
	rst  $38                                         ; $76f1: $ff
	ld   a, [$1f11]                                  ; $76f2: $fa $11 $1f
	ld   [hl], c                                     ; $76f5: $71
	inc  d                                           ; $76f6: $14
	adc  e                                           ; $76f7: $8b
	rra                                              ; $76f8: $1f
	rst  $38                                         ; $76f9: $ff
	rst  $38                                         ; $76fa: $ff
	db   $fc                                         ; $76fb: $fc
	ld   a, [$1511]                                  ; $76fc: $fa $11 $15
	ld   de, $ffff                                   ; $76ff: $11 $ff $ff
	ld   h, c                                        ; $7702: $61
	ld   de, $11ff                                   ; $7703: $11 $ff $11
	reti                                             ; $7706: $d9


	pop  af                                          ; $7707: $f1
	rst  $38                                         ; $7708: $ff
	rst  $28                                         ; $7709: $ef
	db   $dd                                         ; $770a: $dd
	ei                                               ; $770b: $fb
	pop  af                                          ; $770c: $f1
	inc  de                                          ; $770d: $13
	ld   c, b                                        ; $770e: $48
	dec  e                                           ; $770f: $1d
	rst  $38                                         ; $7710: $ff
	pop  af                                          ; $7711: $f1
	ld   de, $911f                                   ; $7712: $11 $1f $91
	inc  e                                           ; $7715: $1c
	rst  $38                                         ; $7716: $ff
	rra                                              ; $7717: $1f
	rst  $38                                         ; $7718: $ff
	ld   sp, hl                                      ; $7719: $f9
	cp   c                                           ; $771a: $b9
	or   $11                                         ; $771b: $f6 $11
	adc  a                                           ; $771d: $8f
	call nc, $fc8f                                   ; $771e: $d4 $8f $fc
	ld   de, $f11f                                   ; $7721: $11 $1f $f1
	dec  e                                           ; $7724: $1d
	rst  $38                                         ; $7725: $ff
	rra                                              ; $7726: $1f
	rst  $28                                         ; $7727: $ef
	di                                               ; $7728: $f3
	or   h                                           ; $7729: $b4
	or   $11                                         ; $772a: $f6 $11
	ld   a, a                                        ; $772c: $7f
	pop  af                                          ; $772d: $f1
	ld   a, a                                        ; $772e: $7f
	push af                                          ; $772f: $f5
	ld   de, $11ff                                   ; $7730: $11 $ff $11
	ld   c, a                                        ; $7733: $4f
	pop  af                                          ; $7734: $f1
	rst  $28                                         ; $7735: $ef
	rst  $38                                         ; $7736: $ff
	push bc                                          ; $7737: $c5
	rra                                              ; $7738: $1f
	pop  af                                          ; $7739: $f1
	ld   de, $11ff                                   ; $773a: $11 $ff $11
	rst  JumpTable                                         ; $773d: $df
	sub  c                                           ; $773e: $91
	rra                                              ; $773f: $1f
	pop  af                                          ; $7740: $f1
	ld   de, $2fff                                   ; $7741: $11 $ff $2f
	adc  a                                           ; $7744: $8f
	rst  $38                                         ; $7745: $ff
	ld   [hl], c                                     ; $7746: $71
	rst  $38                                         ; $7747: $ff
	ld   de, $f11f                                   ; $7748: $11 $1f $f1
	dec  de                                          ; $774b: $1b
	add  c                                           ; $774c: $81
	inc  e                                           ; $774d: $1c
	pop  af                                          ; $774e: $f1
	rla                                              ; $774f: $17
	cp   a                                           ; $7750: $bf
	rra                                              ; $7751: $1f
	rst  $30                                         ; $7752: $f7
	rst  $38                                         ; $7753: $ff

Call_0f9_7754:
	pop  af                                          ; $7754: $f1
	rst  JumpTable                                         ; $7755: $df
	ld   de, $f51f                                   ; $7756: $11 $1f $f5
	ld   d, $31                                      ; $7759: $16 $31
	rra                                              ; $775b: $1f
	pop  af                                          ; $775c: $f1
	rra                                              ; $775d: $1f
	rst  $38                                         ; $775e: $ff
	rra                                              ; $775f: $1f
	cp   a                                           ; $7760: $bf
	ld   sp, hl                                      ; $7761: $f9
	pop  af                                          ; $7762: $f1

jr_0f9_7763:
	rst  $38                                         ; $7763: $ff
	ld   de, $f11f                                   ; $7764: $11 $1f $f1
	ld   [de], a                                     ; $7767: $12
	ld   de, $11ef                                   ; $7768: $11 $ef $11
	rst  $38                                         ; $776b: $ff
	pop  af                                          ; $776c: $f1
	rst  $38                                         ; $776d: $ff
	ld   l, a                                        ; $776e: $6f
	adc  a                                           ; $776f: $8f
	jr   jr_0f9_7763                                 ; $7770: $18 $f1

	ld   de, $11ff                                   ; $7772: $11 $ff $11
	ld   hl, $f11f                                   ; $7775: $21 $1f $f1
	rra                                              ; $7778: $1f
	rst  $38                                         ; $7779: $ff
	rra                                              ; $777a: $1f
	ld   a, [$f1fb]                                  ; $777b: $fa $fb $f1
	rst  $28                                         ; $777e: $ef
	ld   de, $f11f                                   ; $777f: $11 $1f $f1
	ld   de, $f111                                   ; $7782: $11 $11 $f1
	ld   [de], a                                     ; $7785: $12
	rst  $38                                         ; $7786: $ff
	ld   de, $f3ff                                   ; $7787: $11 $ff $f3
	ei                                               ; $778a: $fb
	ld   l, a                                        ; $778b: $6f
	ld   d, c                                        ; $778c: $51
	rra                                              ; $778d: $1f
	pop  af                                          ; $778e: $f1
	ld   de, $fc11                                   ; $778f: $11 $11 $fc
	ld   de, $11ff                                   ; $7792: $11 $ff $11
	rst  $38                                         ; $7795: $ff
	pop  af                                          ; $7796: $f1
	rst  $38                                         ; $7797: $ff
	ld   a, a                                        ; $7798: $7f
	ld   h, c                                        ; $7799: $61
	rra                                              ; $779a: $1f
	pop  af                                          ; $779b: $f1
	ld   de, $f117                                   ; $779c: $11 $17 $f1
	rla                                              ; $779f: $17
	rst  $38                                         ; $77a0: $ff
	ld   de, $f1ff                                   ; $77a1: $11 $ff $f1
	ret                                              ; $77a4: $c9


	rst  JumpTable                                         ; $77a5: $df
	ld   de, $f11f                                   ; $77a6: $11 $1f $f1
	ld   de, $f11f                                   ; $77a9: $11 $1f $f1
	rra                                              ; $77ac: $1f
	rst  $38                                         ; $77ad: $ff
	inc  e                                           ; $77ae: $1c
	rst  $38                                         ; $77af: $ff
	pop  af                                          ; $77b0: $f1
	sbc  b                                           ; $77b1: $98
	db   $fc                                         ; $77b2: $fc
	ld   de, $51ff                                   ; $77b3: $11 $ff $51
	ld   de, $11ff                                   ; $77b6: $11 $ff $11
	rst  $28                                         ; $77b9: $ef
	pop  af                                          ; $77ba: $f1
	rra                                              ; $77bb: $1f
	rst  $38                                         ; $77bc: $ff
	inc  sp                                          ; $77bd: $33
	ld   c, a                                        ; $77be: $4f
	pop  af                                          ; $77bf: $f1
	add  hl, de                                      ; $77c0: $19
	cp   $11                                         ; $77c1: $fe $11
	rra                                              ; $77c3: $1f
	pop  af                                          ; $77c4: $f1
	inc  e                                           ; $77c5: $1c
	rst  $38                                         ; $77c6: $ff
	ld   de, $f7ff                                   ; $77c7: $11 $ff $f7
	ld   d, c                                        ; $77ca: $51
	rst  $38                                         ; $77cb: $ff
	ld   de, $c19f                                   ; $77cc: $11 $9f $c1
	ld   de, $11ff                                   ; $77cf: $11 $ff $11
	rst  $38                                         ; $77d2: $ff
	pop  af                                          ; $77d3: $f1
	xor  a                                           ; $77d4: $af
	rst  $38                                         ; $77d5: $ff
	add  l                                           ; $77d6: $85
	rra                                              ; $77d7: $1f
	pop  af                                          ; $77d8: $f1
	ld   e, $f3                                      ; $77d9: $1e $f3
	ld   de, $21df                                   ; $77db: $11 $df $21
	rra                                              ; $77de: $1f
	ei                                               ; $77df: $fb
	rra                                              ; $77e0: $1f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $77e1: $cf
	rst  $38                                         ; $77e2: $ff
	ld   de, $11f8                                   ; $77e3: $11 $f8 $11
	rst  $38                                         ; $77e6: $ff
	ld   de, $f11f                                   ; $77e7: $11 $1f $f1
	ld   a, [de]                                     ; $77ea: $1a
	rst  $38                                         ; $77eb: $ff
	cpl                                              ; $77ec: $2f
	ld   c, a                                        ; $77ed: $4f
	rst  $38                                         ; $77ee: $ff
	add  c                                           ; $77ef: $81
	db   $fc                                         ; $77f0: $fc
	ld   h, c                                        ; $77f1: $61
	cp   a                                           ; $77f2: $bf
	ld   de, $f11f                                   ; $77f3: $11 $1f $f1
	jr   @+$01                                       ; $77f6: $18 $ff

	rra                                              ; $77f8: $1f
	ld   e, a                                        ; $77f9: $5f
	rst  $38                                         ; $77fa: $ff
	pop  af                                          ; $77fb: $f1
	ld   a, [$6fc1]                                  ; $77fc: $fa $c1 $6f
	ld   de, $e11f                                   ; $77ff: $11 $1f $e1
	dec  de                                          ; $7802: $1b
	rst  $30                                         ; $7803: $f7
	ld   e, a                                        ; $7804: $5f
	ld   l, a                                        ; $7805: $6f
	rst  $38                                         ; $7806: $ff
	or   c                                           ; $7807: $b1
	push af                                          ; $7808: $f5
	pop  af                                          ; $7809: $f1
	sbc  e                                           ; $780a: $9b
	ld   de, $111f                                   ; $780b: $11 $1f $11
	rra                                              ; $780e: $1f
	pop  af                                          ; $780f: $f1
	rst  $38                                         ; $7810: $ff
	cp   a                                           ; $7811: $bf
	rst  $38                                         ; $7812: $ff
	ld   de, $f1f7                                   ; $7813: $11 $f7 $f1
	pop  af                                          ; $7816: $f1
	ld   de, $11af                                   ; $7817: $11 $af $11
	rra                                              ; $781a: $1f
	pop  af                                          ; $781b: $f1
	db   $fc                                         ; $781c: $fc
	rst  $38                                         ; $781d: $ff
	rst  $38                                         ; $781e: $ff
	rra                                              ; $781f: $1f
	cp   a                                           ; $7820: $bf
	ld   hl, $11f1                                   ; $7821: $21 $f1 $11
	ld   a, [$4f11]                                  ; $7824: $fa $11 $4f
	ld   a, [de]                                     ; $7827: $1a
	db   $fd                                         ; $7828: $fd
	cp   $f9                                         ; $7829: $fe $f9
	rra                                              ; $782b: $1f
	rst  $38                                         ; $782c: $ff
	rla                                              ; $782d: $17
	ld   de, $f111                                   ; $782e: $11 $11 $f1
	ld   de, $1fff                                   ; $7831: $11 $ff $1f
	rst  JumpTable                                         ; $7834: $df
	rst  $38                                         ; $7835: $ff
	pop  af                                          ; $7836: $f1
	xor  h                                           ; $7837: $ac
	ld   sp, hl                                      ; $7838: $f9
	ld   a, [de]                                     ; $7839: $1a
	ld   de, $c11f                                   ; $783a: $11 $1f $c1
	ld   de, $4ff6                                   ; $783d: $11 $f6 $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7840: $cf
	rst  $28                                         ; $7841: $ef
	di                                               ; $7842: $f3
	cp   $f4                                         ; $7843: $fe $f4
	ld   d, a                                        ; $7845: $57
	ld   de, $711f                                   ; $7846: $11 $1f $71
	ld   de, $8df5                                   ; $7849: $11 $f5 $8d
	cp   a                                           ; $784c: $bf
	rst  $38                                         ; $784d: $ff
	rst  $30                                         ; $784e: $f7
	db   $dd                                         ; $784f: $dd
	ld   hl, sp-$77                                  ; $7850: $f8 $89
	ld   de, $a11f                                   ; $7852: $11 $1f $a1
	ld   de, $86d8                                   ; $7855: $11 $d8 $86
	sub  a                                           ; $7858: $97
	rst  $38                                         ; $7859: $ff
	ld   sp, hl                                      ; $785a: $f9
	xor  a                                           ; $785b: $af
	adc  $7d                                         ; $785c: $ce $7d
	ld   [hl+], a                                    ; $785e: $22
	dec  h                                           ; $785f: $25
	rst  ToBoot                                         ; $7860: $c7
	ld   b, c                                        ; $7861: $41
	ld   b, l                                        ; $7862: $45
	or   [hl]                                        ; $7863: $b6
	ld   h, [hl]                                     ; $7864: $66
	ld   a, h                                        ; $7865: $7c
	sbc  a                                           ; $7866: $9f
	ld   a, h                                        ; $7867: $7c
	xor  l                                           ; $7868: $ad
	ret  c                                           ; $7869: $d8

	and  h                                           ; $786a: $a4
	ld   [hl], l                                     ; $786b: $75
	cp   d                                           ; $786c: $ba
	and  [hl]                                        ; $786d: $a6
	ld   h, $79                                      ; $786e: $26 $79
	ld   [hl], l                                     ; $7870: $75
	ld   d, l                                        ; $7871: $55
	ld   a, c                                        ; $7872: $79
	sub  a                                           ; $7873: $97
	ld   l, b                                        ; $7874: $68
	cp   e                                           ; $7875: $bb
	sub  [hl]                                        ; $7876: $96
	adc  d                                           ; $7877: $8a
	db   $db                                         ; $7878: $db
	ld   a, b                                        ; $7879: $78
	sbc  h                                           ; $787a: $9c
	sub  a                                           ; $787b: $97
	ld   d, [hl]                                     ; $787c: $56
	ld   [hl], a                                     ; $787d: $77
	ld   h, l                                        ; $787e: $65
	ld   d, l                                        ; $787f: $55
	ld   a, b                                        ; $7880: $78
	add  a                                           ; $7881: $87
	ld   h, a                                        ; $7882: $67
	sbc  d                                           ; $7883: $9a
	xor  c                                           ; $7884: $a9
	sbc  e                                           ; $7885: $9b
	call c, $aaa9                                    ; $7886: $dc $a9 $aa
	sub  a                                           ; $7889: $97
	ld   h, [hl]                                     ; $788a: $66
	ld   h, l                                        ; $788b: $65
	ld   d, l                                        ; $788c: $55
	ld   d, [hl]                                     ; $788d: $56
	ld   h, [hl]                                     ; $788e: $66
	ld   a, b                                        ; $788f: $78
	adc  b                                           ; $7890: $88
	adc  d                                           ; $7891: $8a
	cp   e                                           ; $7892: $bb
	cp   d                                           ; $7893: $ba
	cp   h                                           ; $7894: $bc
	cp   e                                           ; $7895: $bb
	sbc  c                                           ; $7896: $99
	add  a                                           ; $7897: $87

Jump_0f9_7898:
	ld   h, l                                        ; $7898: $65
	ld   d, l                                        ; $7899: $55
	ld   d, l                                        ; $789a: $55
	ld   d, [hl]                                     ; $789b: $56
	ld   h, a                                        ; $789c: $67
	ld   l, b                                        ; $789d: $68
	adc  b                                           ; $789e: $88
	sbc  c                                           ; $789f: $99
	xor  d                                           ; $78a0: $aa
	xor  d                                           ; $78a1: $aa
	cp   d                                           ; $78a2: $ba
	cp   d                                           ; $78a3: $ba
	xor  c                                           ; $78a4: $a9
	add  a                                           ; $78a5: $87
	halt                                             ; $78a6: $76
	ld   h, [hl]                                     ; $78a7: $66
	ld   d, l                                        ; $78a8: $55
	ld   d, [hl]                                     ; $78a9: $56
	ld   h, [hl]                                     ; $78aa: $66
	ld   [hl], a                                     ; $78ab: $77
	sbc  b                                           ; $78ac: $98
	sbc  c                                           ; $78ad: $99
	sbc  c                                           ; $78ae: $99
	sbc  d                                           ; $78af: $9a
	sbc  d                                           ; $78b0: $9a
	xor  d                                           ; $78b1: $aa
	xor  d                                           ; $78b2: $aa
	xor  c                                           ; $78b3: $a9
	sub  a                                           ; $78b4: $97
	ld   [hl], a                                     ; $78b5: $77
	ld   h, l                                        ; $78b6: $65
	ld   h, [hl]                                     ; $78b7: $66

Jump_0f9_78b8:
	ld   h, [hl]                                     ; $78b8: $66
	ld   h, a                                        ; $78b9: $67
	ld   [hl], a                                     ; $78ba: $77
	adc  b                                           ; $78bb: $88
	adc  c                                           ; $78bc: $89
	adc  b                                           ; $78bd: $88
	sbc  c                                           ; $78be: $99
	sbc  d                                           ; $78bf: $9a
	sbc  c                                           ; $78c0: $99
	xor  d                                           ; $78c1: $aa
	sbc  c                                           ; $78c2: $99
	sbc  b                                           ; $78c3: $98
	add  a                                           ; $78c4: $87
	ld   h, [hl]                                     ; $78c5: $66
	ld   h, [hl]                                     ; $78c6: $66
	ld   h, [hl]                                     ; $78c7: $66
	ld   h, a                                        ; $78c8: $67

Call_0f9_78c9:
	ld   [hl], a                                     ; $78c9: $77
	ld   a, b                                        ; $78ca: $78
	sbc  c                                           ; $78cb: $99
	adc  b                                           ; $78cc: $88
	adc  b                                           ; $78cd: $88
	sbc  c                                           ; $78ce: $99
	xor  c                                           ; $78cf: $a9
	sbc  d                                           ; $78d0: $9a
	xor  d                                           ; $78d1: $aa
	sbc  c                                           ; $78d2: $99
	sbc  b                                           ; $78d3: $98
	ld   [hl], a                                     ; $78d4: $77
	halt                                             ; $78d5: $76
	ld   h, [hl]                                     ; $78d6: $66
	ld   h, [hl]                                     ; $78d7: $66
	ld   h, a                                        ; $78d8: $67
	ld   [hl], a                                     ; $78d9: $77
	ld   [hl], a                                     ; $78da: $77
	adc  b                                           ; $78db: $88
	adc  b                                           ; $78dc: $88
	adc  c                                           ; $78dd: $89
	adc  c                                           ; $78de: $89
	xor  d                                           ; $78df: $aa
	sbc  c                                           ; $78e0: $99
	xor  d                                           ; $78e1: $aa
	sbc  c                                           ; $78e2: $99
	adc  b                                           ; $78e3: $88
	ld   [hl], a                                     ; $78e4: $77
	halt                                             ; $78e5: $76
	ld   h, [hl]                                     ; $78e6: $66
	ld   h, [hl]                                     ; $78e7: $66
	ld   h, [hl]                                     ; $78e8: $66
	ld   [hl], a                                     ; $78e9: $77
	ld   a, b                                        ; $78ea: $78
	adc  b                                           ; $78eb: $88
	adc  b                                           ; $78ec: $88
	adc  b                                           ; $78ed: $88
	adc  c                                           ; $78ee: $89
	sbc  c                                           ; $78ef: $99
	sbc  d                                           ; $78f0: $9a
	xor  c                                           ; $78f1: $a9
	sbc  b                                           ; $78f2: $98
	sbc  b                                           ; $78f3: $98
	ld   [hl], a                                     ; $78f4: $77
	ld   [hl], a                                     ; $78f5: $77
	halt                                             ; $78f6: $76
	ld   h, a                                        ; $78f7: $67
	ld   [hl], a                                     ; $78f8: $77
	ld   [hl], a                                     ; $78f9: $77
	adc  b                                           ; $78fa: $88
	adc  b                                           ; $78fb: $88
	adc  c                                           ; $78fc: $89
	sbc  c                                           ; $78fd: $99
	adc  b                                           ; $78fe: $88
	adc  b                                           ; $78ff: $88
	sbc  b                                           ; $7900: $98
	sbc  c                                           ; $7901: $99
	sbc  c                                           ; $7902: $99
	sbc  b                                           ; $7903: $98
	sbc  b                                           ; $7904: $98
	ld   [hl], a                                     ; $7905: $77
	ld   [hl], a                                     ; $7906: $77
	ld   [hl], a                                     ; $7907: $77
	ld   [hl], a                                     ; $7908: $77
	ld   [hl], a                                     ; $7909: $77
	ld   a, b                                        ; $790a: $78
	adc  b                                           ; $790b: $88
	adc  b                                           ; $790c: $88
	adc  b                                           ; $790d: $88
	adc  b                                           ; $790e: $88
	sbc  c                                           ; $790f: $99
	adc  b                                           ; $7910: $88
	adc  c                                           ; $7911: $89
	sbc  c                                           ; $7912: $99
	adc  c                                           ; $7913: $89
	sbc  b                                           ; $7914: $98
	adc  b                                           ; $7915: $88
	adc  b                                           ; $7916: $88
	ld   [hl], a                                     ; $7917: $77
	ld   [hl], a                                     ; $7918: $77
	ld   [hl], a                                     ; $7919: $77
	ld   [hl], a                                     ; $791a: $77
	ld   [hl], a                                     ; $791b: $77
	adc  b                                           ; $791c: $88
	adc  b                                           ; $791d: $88
	adc  c                                           ; $791e: $89
	adc  b                                           ; $791f: $88
	sbc  b                                           ; $7920: $98
	adc  c                                           ; $7921: $89
	sbc  c                                           ; $7922: $99
	sbc  c                                           ; $7923: $99
	adc  b                                           ; $7924: $88
	sbc  c                                           ; $7925: $99
	adc  b                                           ; $7926: $88
	adc  b                                           ; $7927: $88
	ld   [hl], a                                     ; $7928: $77
	ld   [hl], a                                     ; $7929: $77
	ld   [hl], a                                     ; $792a: $77
	ld   [hl], a                                     ; $792b: $77
	ld   a, b                                        ; $792c: $78
	adc  b                                           ; $792d: $88
	adc  b                                           ; $792e: $88
	adc  b                                           ; $792f: $88
	adc  c                                           ; $7930: $89
	sbc  c                                           ; $7931: $99
	sbc  c                                           ; $7932: $99
	adc  b                                           ; $7933: $88
	adc  b                                           ; $7934: $88
	adc  b                                           ; $7935: $88
	adc  c                                           ; $7936: $89
	adc  b                                           ; $7937: $88
	add  a                                           ; $7938: $87
	ld   [hl], a                                     ; $7939: $77
	ld   [hl], a                                     ; $793a: $77
	ld   [hl], a                                     ; $793b: $77
	ld   [hl], a                                     ; $793c: $77
	adc  b                                           ; $793d: $88
	adc  b                                           ; $793e: $88
	adc  b                                           ; $793f: $88
	adc  c                                           ; $7940: $89
	adc  b                                           ; $7941: $88
	adc  b                                           ; $7942: $88
	sbc  c                                           ; $7943: $99
	sbc  c                                           ; $7944: $99
	sbc  b                                           ; $7945: $98
	sbc  c                                           ; $7946: $99
	sbc  c                                           ; $7947: $99
	adc  b                                           ; $7948: $88
	adc  b                                           ; $7949: $88
	add  a                                           ; $794a: $87
	ld   [hl], a                                     ; $794b: $77
	ld   [hl], a                                     ; $794c: $77
	ld   [hl], a                                     ; $794d: $77
	adc  b                                           ; $794e: $88
	adc  b                                           ; $794f: $88
	adc  b                                           ; $7950: $88
	adc  b                                           ; $7951: $88
	adc  b                                           ; $7952: $88
	adc  b                                           ; $7953: $88
	adc  c                                           ; $7954: $89
	sbc  c                                           ; $7955: $99
	sbc  c                                           ; $7956: $99
	sbc  c                                           ; $7957: $99
	adc  c                                           ; $7958: $89
	adc  b                                           ; $7959: $88
	adc  b                                           ; $795a: $88
	adc  b                                           ; $795b: $88
	ld   [hl], a                                     ; $795c: $77
	ld   a, b                                        ; $795d: $78
	add  a                                           ; $795e: $87
	ld   a, b                                        ; $795f: $78
	adc  b                                           ; $7960: $88
	adc  b                                           ; $7961: $88
	adc  b                                           ; $7962: $88
	adc  b                                           ; $7963: $88
	adc  b                                           ; $7964: $88
	adc  b                                           ; $7965: $88
	adc  b                                           ; $7966: $88
	adc  b                                           ; $7967: $88
	sbc  c                                           ; $7968: $99
	adc  b                                           ; $7969: $88
	adc  b                                           ; $796a: $88
	adc  b                                           ; $796b: $88
	adc  b                                           ; $796c: $88
	adc  b                                           ; $796d: $88
	adc  b                                           ; $796e: $88
	adc  b                                           ; $796f: $88
	adc  b                                           ; $7970: $88
	adc  b                                           ; $7971: $88
	adc  b                                           ; $7972: $88
	adc  b                                           ; $7973: $88
	adc  b                                           ; $7974: $88
	adc  b                                           ; $7975: $88
	adc  b                                           ; $7976: $88
	adc  b                                           ; $7977: $88
	adc  b                                           ; $7978: $88
	adc  b                                           ; $7979: $88
	adc  b                                           ; $797a: $88
	adc  b                                           ; $797b: $88
	adc  b                                           ; $797c: $88
	adc  b                                           ; $797d: $88
	adc  b                                           ; $797e: $88
	adc  b                                           ; $797f: $88
	adc  b                                           ; $7980: $88
	adc  b                                           ; $7981: $88
	adc  b                                           ; $7982: $88
	adc  b                                           ; $7983: $88
	adc  b                                           ; $7984: $88
	adc  b                                           ; $7985: $88
	adc  b                                           ; $7986: $88
	adc  b                                           ; $7987: $88
	adc  b                                           ; $7988: $88
	adc  b                                           ; $7989: $88
	adc  b                                           ; $798a: $88
	adc  b                                           ; $798b: $88
	adc  b                                           ; $798c: $88
	adc  b                                           ; $798d: $88
	adc  b                                           ; $798e: $88
	adc  b                                           ; $798f: $88
	adc  b                                           ; $7990: $88
	adc  b                                           ; $7991: $88
	adc  b                                           ; $7992: $88
	adc  b                                           ; $7993: $88
	adc  b                                           ; $7994: $88
	adc  b                                           ; $7995: $88
	adc  b                                           ; $7996: $88
	adc  b                                           ; $7997: $88
	adc  b                                           ; $7998: $88
	adc  b                                           ; $7999: $88
	adc  b                                           ; $799a: $88
	adc  b                                           ; $799b: $88
	adc  b                                           ; $799c: $88
	adc  b                                           ; $799d: $88
	adc  b                                           ; $799e: $88
	adc  b                                           ; $799f: $88
	adc  b                                           ; $79a0: $88
	adc  b                                           ; $79a1: $88
	adc  b                                           ; $79a2: $88
	adc  b                                           ; $79a3: $88
	adc  b                                           ; $79a4: $88
	adc  b                                           ; $79a5: $88
	adc  b                                           ; $79a6: $88
	adc  b                                           ; $79a7: $88
	adc  b                                           ; $79a8: $88
	adc  b                                           ; $79a9: $88
	sbc  c                                           ; $79aa: $99

jr_0f9_79ab:
	adc  b                                           ; $79ab: $88
	adc  b                                           ; $79ac: $88
	adc  b                                           ; $79ad: $88
	adc  b                                           ; $79ae: $88
	add  a                                           ; $79af: $87
	ld   a, b                                        ; $79b0: $78
	adc  b                                           ; $79b1: $88
	adc  b                                           ; $79b2: $88
	adc  b                                           ; $79b3: $88
	adc  b                                           ; $79b4: $88
	sbc  c                                           ; $79b5: $99
	sbc  c                                           ; $79b6: $99
	adc  c                                           ; $79b7: $89
	adc  c                                           ; $79b8: $89
	adc  b                                           ; $79b9: $88
	ld   [hl], a                                     ; $79ba: $77
	adc  b                                           ; $79bb: $88
	adc  b                                           ; $79bc: $88
	adc  b                                           ; $79bd: $88
	ld   [hl], a                                     ; $79be: $77
	ld   [hl], a                                     ; $79bf: $77
	ld   a, c                                        ; $79c0: $79
	sbc  c                                           ; $79c1: $99
	add  a                                           ; $79c2: $87
	ld   [hl], a                                     ; $79c3: $77
	adc  c                                           ; $79c4: $89
	adc  c                                           ; $79c5: $89
	adc  b                                           ; $79c6: $88
	ld   [hl], a                                     ; $79c7: $77
	adc  b                                           ; $79c8: $88
	sbc  c                                           ; $79c9: $99
	xor  b                                           ; $79ca: $a8
	add  a                                           ; $79cb: $87
	ld   [hl], a                                     ; $79cc: $77
	ld   [hl], a                                     ; $79cd: $77
	ld   a, b                                        ; $79ce: $78
	ld   [hl], a                                     ; $79cf: $77
	ld   [hl], a                                     ; $79d0: $77
	adc  c                                           ; $79d1: $89
	xor  c                                           ; $79d2: $a9
	sbc  b                                           ; $79d3: $98
	ld   [hl], a                                     ; $79d4: $77
	ld   d, l                                        ; $79d5: $55
	ld   a, c                                        ; $79d6: $79
	xor  e                                           ; $79d7: $ab
	xor  b                                           ; $79d8: $a8
	ld   h, l                                        ; $79d9: $65
	ld   h, [hl]                                     ; $79da: $66
	adc  d                                           ; $79db: $8a
	xor  e                                           ; $79dc: $ab
	sub  a                                           ; $79dd: $97
	halt                                             ; $79de: $76
	adc  c                                           ; $79df: $89
	call $31a8                                       ; $79e0: $cd $a8 $31
	inc  de                                          ; $79e3: $13
	sbc  c                                           ; $79e4: $99
	cp   c                                           ; $79e5: $b9
	ld   h, [hl]                                     ; $79e6: $66
	dec  [hl]                                        ; $79e7: $35
	adc  c                                           ; $79e8: $89
	db   $fd                                         ; $79e9: $fd
	db   $ec                                         ; $79ea: $ec
	adc  c                                           ; $79eb: $89
	ld   a, d                                        ; $79ec: $7a
	and  a                                           ; $79ed: $a7
	ld   [hl], d                                     ; $79ee: $72
	ld   b, h                                        ; $79ef: $44
	jr   z, @+$58                                    ; $79f0: $28 $56

	add  e                                           ; $79f2: $83
	add  a                                           ; $79f3: $87
	sbc  [hl]                                        ; $79f4: $9e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $79f5: $cf
	db   $fc                                         ; $79f6: $fc
	ld   sp, hl                                      ; $79f7: $f9
	ret  z                                           ; $79f8: $c8

	ld   de, $0111                                   ; $79f9: $11 $11 $01
	and  a                                           ; $79fc: $a7
	sbc  d                                           ; $79fd: $9a
	jr   z, jr_0f9_79ab                              ; $79fe: $28 $ab

	rst  $38                                         ; $7a00: $ff
	rst  $38                                         ; $7a01: $ff
	adc  $35                                         ; $7a02: $ce $35
	ld   b, c                                        ; $7a04: $41
	ld   de, $1c11                                   ; $7a05: $11 $11 $1c
	ld   e, e                                        ; $7a08: $5b
	push de                                          ; $7a09: $d5
	rst  $38                                         ; $7a0a: $ff
	rst  $38                                         ; $7a0b: $ff
	rst  $38                                         ; $7a0c: $ff
	ld   [$61d1], a                                  ; $7a0d: $ea $d1 $61
	ld   de, $1811                                   ; $7a10: $11 $11 $18
	rst  $38                                         ; $7a13: $ff
	rst  $38                                         ; $7a14: $ff
	rst  $38                                         ; $7a15: $ff
	rst  $38                                         ; $7a16: $ff
	rst  $38                                         ; $7a17: $ff
	ld   a, [$11c2]                                  ; $7a18: $fa $c2 $11
	ld   de, $3f11                                   ; $7a1b: $11 $11 $3f
	rst  $38                                         ; $7a1e: $ff
	rst  $38                                         ; $7a1f: $ff
	db   $fd                                         ; $7a20: $fd
	cp   $ff                                         ; $7a21: $fe $ff
	sbc  [hl]                                        ; $7a23: $9e
	sub  c                                           ; $7a24: $91
	ld   de, $1111                                   ; $7a25: $11 $11 $11
	rst  $38                                         ; $7a28: $ff
	rst  $38                                         ; $7a29: $ff
	rst  $38                                         ; $7a2a: $ff
	ret                                              ; $7a2b: $c9


	push bc                                          ; $7a2c: $c5
	cp   $cf                                         ; $7a2d: $fe $cf
	ld   b, c                                        ; $7a2f: $41
	ld   de, $1f11                                   ; $7a30: $11 $11 $1f
	rst  $38                                         ; $7a33: $ff
	rst  $38                                         ; $7a34: $ff
	db   $fd                                         ; $7a35: $fd
	dec  d                                           ; $7a36: $15
	rra                                              ; $7a37: $1f
	db   $fd                                         ; $7a38: $fd
	cp   $21                                         ; $7a39: $fe $21
	ld   de, rAUD1LEN                                   ; $7a3b: $11 $11 $ff
	rst  $38                                         ; $7a3e: $ff
	rst  $38                                         ; $7a3f: $ff
	sub  c                                           ; $7a40: $91
	ld   de, $ffaf                                   ; $7a41: $11 $af $ff
	ld   hl, sp+$11                                  ; $7a44: $f8 $11
	ld   de, $ff1f                                   ; $7a46: $11 $1f $ff
	rst  $38                                         ; $7a49: $ff
	ldh  a, [c]                                      ; $7a4a: $f2
	ld   de, $ff19                                   ; $7a4b: $11 $19 $ff
	rst  $38                                         ; $7a4e: $ff
	and  c                                           ; $7a4f: $a1
	ld   de, rAUD1LEN                                   ; $7a50: $11 $11 $ff
	rst  $38                                         ; $7a53: $ff
	rst  $38                                         ; $7a54: $ff
	ld   de, $af11                                   ; $7a55: $11 $11 $af
	rst  $38                                         ; $7a58: $ff
	ei                                               ; $7a59: $fb
	ld   de, $1f11                                   ; $7a5a: $11 $11 $1f
	rst  $38                                         ; $7a5d: $ff
	rst  $38                                         ; $7a5e: $ff
	pop  af                                          ; $7a5f: $f1
	ld   de, $ff1d                                   ; $7a60: $11 $1d $ff
	rst  $38                                         ; $7a63: $ff
	add  c                                           ; $7a64: $81
	ld   de, rAUD1LEN                                   ; $7a65: $11 $11 $ff
	rst  $38                                         ; $7a68: $ff
	rst  $38                                         ; $7a69: $ff
	ld   de, $ef11                                   ; $7a6a: $11 $11 $ef
	rst  $38                                         ; $7a6d: $ff
	pop  af                                          ; $7a6e: $f1
	ld   de, $9f11                                   ; $7a6f: $11 $11 $9f
	rst  $38                                         ; $7a72: $ff
	rst  $38                                         ; $7a73: $ff
	ld   de, $1f11                                   ; $7a74: $11 $11 $1f
	rst  $38                                         ; $7a77: $ff
	rst  $38                                         ; $7a78: $ff
	ld   de, $1f11                                   ; $7a79: $11 $11 $1f
	rst  $38                                         ; $7a7c: $ff
	rst  $38                                         ; $7a7d: $ff
	pop  af                                          ; $7a7e: $f1
	ld   de, rAUD1HIGH                                   ; $7a7f: $11 $14 $ff
	rst  $38                                         ; $7a82: $ff
	sub  c                                           ; $7a83: $91
	ld   de, rAUD1LEN                                   ; $7a84: $11 $11 $ff
	rst  $38                                         ; $7a87: $ff
	ld   hl, sp+$11                                  ; $7a88: $f8 $11
	ld   de, $ff8f                                   ; $7a8a: $11 $8f $ff
	pop  af                                          ; $7a8d: $f1
	ld   de, rAUD1LEN                                   ; $7a8e: $11 $11 $ff
	rst  $38                                         ; $7a91: $ff
	rst  $38                                         ; $7a92: $ff
	ld   de, $1f11                                   ; $7a93: $11 $11 $1f
	rst  $38                                         ; $7a96: $ff
	or   $11                                         ; $7a97: $f6 $11
	ld   de, $ff2f                                   ; $7a99: $11 $2f $ff
	rst  $38                                         ; $7a9c: $ff
	ld   b, c                                        ; $7a9d: $41
	ld   de, $ff15                                   ; $7a9e: $11 $15 $ff
	rst  $38                                         ; $7aa1: $ff
	ld   de, $1f11                                   ; $7aa2: $11 $11 $1f
	rst  $38                                         ; $7aa5: $ff
	rst  $38                                         ; $7aa6: $ff
	pop  af                                          ; $7aa7: $f1
	ld   de, rAUD1LEN                                   ; $7aa8: $11 $11 $ff
	rst  $38                                         ; $7aab: $ff
	ld   de, $1f11                                   ; $7aac: $11 $11 $1f
	rst  $38                                         ; $7aaf: $ff
	rst  $38                                         ; $7ab0: $ff
	pop  af                                          ; $7ab1: $f1
	ld   de, rAUD1LEN                                   ; $7ab2: $11 $11 $ff
	rst  $38                                         ; $7ab5: $ff
	ld   de, $1c11                                   ; $7ab6: $11 $11 $1c
	rst  $38                                         ; $7ab9: $ff
	rst  $38                                         ; $7aba: $ff
	pop  af                                          ; $7abb: $f1
	ld   de, $ef11                                   ; $7abc: $11 $11 $ef
	rst  $38                                         ; $7abf: $ff
	ld   de, $1e11                                   ; $7ac0: $11 $11 $1e
	rst  $38                                         ; $7ac3: $ff
	rst  $38                                         ; $7ac4: $ff
	pop  af                                          ; $7ac5: $f1
	ld   de, rAUD1LEN                                   ; $7ac6: $11 $11 $ff
	rst  $30                                         ; $7ac9: $f7
	ld   de, $2f11                                   ; $7aca: $11 $11 $2f
	rst  $38                                         ; $7acd: $ff
	rst  $38                                         ; $7ace: $ff
	pop  af                                          ; $7acf: $f1
	ld   de, rAUD1LEN                                   ; $7ad0: $11 $11 $ff
	pop  af                                          ; $7ad3: $f1
	ld   de, $af11                                   ; $7ad4: $11 $11 $af
	rst  $38                                         ; $7ad7: $ff
	rst  $38                                         ; $7ad8: $ff
	add  c                                           ; $7ad9: $81
	ld   de, $ff15                                   ; $7ada: $11 $15 $ff
	add  c                                           ; $7add: $81
	ld   de, rAUD1ENV                                   ; $7ade: $11 $12 $ff
	rst  $38                                         ; $7ae1: $ff
	rst  $38                                         ; $7ae2: $ff
	ld   de, $1e11                                   ; $7ae3: $11 $11 $1e
	rst  $38                                         ; $7ae6: $ff
	ld   de, $1911                                   ; $7ae7: $11 $11 $19
	rst  $38                                         ; $7aea: $ff
	rst  $38                                         ; $7aeb: $ff
	ei                                               ; $7aec: $fb
	ld   de, $2f11                                   ; $7aed: $11 $11 $2f
	ld   hl, sp+$11                                  ; $7af0: $f8 $11
	ld   de, $ff1f                                   ; $7af2: $11 $1f $ff
	rst  $38                                         ; $7af5: $ff
	pop  af                                          ; $7af6: $f1
	ld   de, $af11                                   ; $7af7: $11 $11 $af
	pop  de                                          ; $7afa: $d1
	ld   de, $bf11                                   ; $7afb: $11 $11 $bf
	rst  $38                                         ; $7afe: $ff
	rst  $38                                         ; $7aff: $ff
	or   c                                           ; $7b00: $b1
	ld   de, $eb11                                   ; $7b01: $11 $11 $eb
	ld   de, $1811                                   ; $7b04: $11 $11 $18
	rst  $38                                         ; $7b07: $ff
	rst  $38                                         ; $7b08: $ff
	rst  $38                                         ; $7b09: $ff
	ld   de, $1a11                                   ; $7b0a: $11 $11 $1a
	or   c                                           ; $7b0d: $b1
	ld   de, $7f11                                   ; $7b0e: $11 $11 $7f
	rst  $38                                         ; $7b11: $ff
	rst  $38                                         ; $7b12: $ff
	ldh  a, [c]                                      ; $7b13: $f2
	ld   de, $8911                                   ; $7b14: $11 $11 $89
	ld   de, $1611                                   ; $7b17: $11 $11 $16
	rst  $38                                         ; $7b1a: $ff
	rst  $38                                         ; $7b1b: $ff
	rst  $38                                         ; $7b1c: $ff
	ld   sp, $1811                                   ; $7b1d: $31 $11 $18
	sub  c                                           ; $7b20: $91
	ld   de, $6f11                                   ; $7b21: $11 $11 $6f
	rst  $38                                         ; $7b24: $ff
	rst  $38                                         ; $7b25: $ff
	db   $f4                                         ; $7b26: $f4
	ld   de, $7911                                   ; $7b27: $11 $11 $79
	ld   de, $1511                                   ; $7b2a: $11 $11 $15
	rst  $38                                         ; $7b2d: $ff
	rst  $38                                         ; $7b2e: $ff
	rst  $38                                         ; $7b2f: $ff
	ld   d, c                                        ; $7b30: $51
	ld   de, $8117                                   ; $7b31: $11 $17 $81
	ld   de, $4f11                                   ; $7b34: $11 $11 $4f
	rst  $38                                         ; $7b37: $ff
	rst  $38                                         ; $7b38: $ff
	rst  $30                                         ; $7b39: $f7
	ld   de, $5611                                   ; $7b3a: $11 $11 $56
	ld   de, $1611                                   ; $7b3d: $11 $11 $16
	rst  $38                                         ; $7b40: $ff
	rst  $38                                         ; $7b41: $ff
	rst  $38                                         ; $7b42: $ff
	add  c                                           ; $7b43: $81
	ld   de, $1112                                   ; $7b44: $11 $12 $11
	ld   de, $af11                                   ; $7b47: $11 $11 $af
	rst  $38                                         ; $7b4a: $ff
	rst  $38                                         ; $7b4b: $ff
	rst  $30                                         ; $7b4c: $f7
	ld   de, $2111                                   ; $7b4d: $11 $11 $21
	ld   de, $1d11                                   ; $7b50: $11 $11 $1d
	rst  $38                                         ; $7b53: $ff
	rst  $38                                         ; $7b54: $ff
	rst  $38                                         ; $7b55: $ff
	ld   d, c                                        ; $7b56: $51
	ld   de, $1111                                   ; $7b57: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7b5a: $11 $13 $ff
	rst  $38                                         ; $7b5d: $ff
	rst  $38                                         ; $7b5e: $ff
	ldh  a, [c]                                      ; $7b5f: $f2
	ld   de, $1111                                   ; $7b60: $11 $11 $11
	ld   de, $7f11                                   ; $7b63: $11 $11 $7f
	rst  $38                                         ; $7b66: $ff
	rst  $38                                         ; $7b67: $ff
	cp   $11                                         ; $7b68: $fe $11
	ld   de, $1111                                   ; $7b6a: $11 $11 $11
	ld   de, $ff1c                                   ; $7b6d: $11 $1c $ff
	rst  $38                                         ; $7b70: $ff
	rst  $38                                         ; $7b71: $ff
	and  c                                           ; $7b72: $a1
	ld   de, $1111                                   ; $7b73: $11 $11 $11
	ld   de, rAUD1LOW                                   ; $7b76: $11 $13 $ff
	rst  $38                                         ; $7b79: $ff
	rst  $38                                         ; $7b7a: $ff
	push af                                          ; $7b7b: $f5
	ld   de, $1111                                   ; $7b7c: $11 $11 $11
	ld   de, $9f11                                   ; $7b7f: $11 $11 $9f
	rst  $38                                         ; $7b82: $ff
	rst  $38                                         ; $7b83: $ff
	cp   $11                                         ; $7b84: $fe $11
	ld   de, $1111                                   ; $7b86: $11 $11 $11
	ld   de, $ff1e                                   ; $7b89: $11 $1e $ff
	rst  $38                                         ; $7b8c: $ff
	rst  $38                                         ; $7b8d: $ff
	sub  c                                           ; $7b8e: $91
	ld   de, $1111                                   ; $7b8f: $11 $11 $11
	ld   de, $ff1a                                   ; $7b92: $11 $1a $ff
	rst  $38                                         ; $7b95: $ff
	rst  $38                                         ; $7b96: $ff
	di                                               ; $7b97: $f3
	ld   de, $1111                                   ; $7b98: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7b9b: $11 $11 $ff
	rst  $38                                         ; $7b9e: $ff
	rst  $38                                         ; $7b9f: $ff
	ei                                               ; $7ba0: $fb
	ld   de, $1111                                   ; $7ba1: $11 $11 $11
	ld   de, $af11                                   ; $7ba4: $11 $11 $af
	rst  $38                                         ; $7ba7: $ff
	rst  $38                                         ; $7ba8: $ff
	rst  $38                                         ; $7ba9: $ff
	ld   d, c                                        ; $7baa: $51
	ld   de, $1111                                   ; $7bab: $11 $11 $11
	ld   de, $ff2f                                   ; $7bae: $11 $2f $ff
	rst  $38                                         ; $7bb1: $ff
	rst  $38                                         ; $7bb2: $ff
	pop  de                                          ; $7bb3: $d1
	ld   de, $1111                                   ; $7bb4: $11 $11 $11
	ld   de, $ff1b                                   ; $7bb7: $11 $1b $ff
	rst  $38                                         ; $7bba: $ff

Call_0f9_7bbb:
	rst  $38                                         ; $7bbb: $ff
	push af                                          ; $7bbc: $f5
	ld   de, $1111                                   ; $7bbd: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7bc0: $11 $11 $ff
	rst  $38                                         ; $7bc3: $ff
	rst  $38                                         ; $7bc4: $ff
	db   $fc                                         ; $7bc5: $fc
	ld   de, $1111                                   ; $7bc6: $11 $11 $11
	ld   de, $bf11                                   ; $7bc9: $11 $11 $bf
	rst  $38                                         ; $7bcc: $ff
	rst  $38                                         ; $7bcd: $ff
	rst  $38                                         ; $7bce: $ff
	ld   d, c                                        ; $7bcf: $51
	ld   de, $1111                                   ; $7bd0: $11 $11 $11
	ld   de, $ff3f                                   ; $7bd3: $11 $3f $ff
	rst  $38                                         ; $7bd6: $ff
	rst  $38                                         ; $7bd7: $ff
	pop  bc                                          ; $7bd8: $c1
	ld   de, $1111                                   ; $7bd9: $11 $11 $11
	ld   de, $ff1b                                   ; $7bdc: $11 $1b $ff
	rst  $38                                         ; $7bdf: $ff
	rst  $38                                         ; $7be0: $ff
	push af                                          ; $7be1: $f5
	ld   de, $1111                                   ; $7be2: $11 $11 $11
	ld   de, $ff17                                   ; $7be5: $11 $17 $ff
	rst  $38                                         ; $7be8: $ff
	rst  $38                                         ; $7be9: $ff
	db   $fd                                         ; $7bea: $fd
	ld   de, $1111                                   ; $7beb: $11 $11 $11
	ld   de, $ef11                                   ; $7bee: $11 $11 $ef
	rst  $38                                         ; $7bf1: $ff
	rst  $38                                         ; $7bf2: $ff
	rst  $38                                         ; $7bf3: $ff
	ld   d, c                                        ; $7bf4: $51
	ld   de, $1111                                   ; $7bf5: $11 $11 $11
	ld   de, $ff9f                                   ; $7bf8: $11 $9f $ff
	rst  $38                                         ; $7bfb: $ff
	rst  $38                                         ; $7bfc: $ff
	or   c                                           ; $7bfd: $b1
	ld   de, $1111                                   ; $7bfe: $11 $11 $11
	ld   de, $ff1d                                   ; $7c01: $11 $1d $ff
	rst  $38                                         ; $7c04: $ff
	rst  $38                                         ; $7c05: $ff
	ldh  a, [c]                                      ; $7c06: $f2
	ld   de, $1111                                   ; $7c07: $11 $11 $11
	ld   de, $ff17                                   ; $7c0a: $11 $17 $ff
	rst  $38                                         ; $7c0d: $ff
	rst  $38                                         ; $7c0e: $ff
	ld   sp, hl                                      ; $7c0f: $f9
	ld   de, $1111                                   ; $7c10: $11 $11 $11
	ld   de, rAUD1ENV                                   ; $7c13: $11 $12 $ff
	rst  $38                                         ; $7c16: $ff
	rst  $38                                         ; $7c17: $ff
	rst  $38                                         ; $7c18: $ff
	ld   sp, $1111                                   ; $7c19: $31 $11 $11
	ld   de, $9f11                                   ; $7c1c: $11 $11 $9f
	rst  $38                                         ; $7c1f: $ff
	rst  $38                                         ; $7c20: $ff
	rst  $38                                         ; $7c21: $ff
	sub  c                                           ; $7c22: $91
	ld   de, $1111                                   ; $7c23: $11 $11 $11
	ld   de, $ff2f                                   ; $7c26: $11 $2f $ff
	rst  $38                                         ; $7c29: $ff
	rst  $38                                         ; $7c2a: $ff
	db   $f4                                         ; $7c2b: $f4
	ld   de, $1111                                   ; $7c2c: $11 $11 $11
	ld   de, $ff17                                   ; $7c2f: $11 $17 $ff
	rst  $38                                         ; $7c32: $ff
	rst  $38                                         ; $7c33: $ff
	db   $fd                                         ; $7c34: $fd
	ld   de, $1111                                   ; $7c35: $11 $11 $11
	ld   de, rAUD1LEN                                   ; $7c38: $11 $11 $ff
	rst  $38                                         ; $7c3b: $ff
	rst  $38                                         ; $7c3c: $ff
	rst  $38                                         ; $7c3d: $ff
	ld   h, c                                        ; $7c3e: $61
	ld   de, $1111                                   ; $7c3f: $11 $11 $11
	ld   de, $ff8f                                   ; $7c42: $11 $8f $ff
	rst  $38                                         ; $7c45: $ff
	rst  $38                                         ; $7c46: $ff
	or   c                                           ; $7c47: $b1
	ld   de, $1111                                   ; $7c48: $11 $11 $11
	ld   de, $ff1d                                   ; $7c4b: $11 $1d $ff
	rst  $38                                         ; $7c4e: $ff
	rst  $38                                         ; $7c4f: $ff
	ld   hl, sp+$11                                  ; $7c50: $f8 $11
	ld   de, $1111                                   ; $7c52: $11 $11 $11
	inc  de                                          ; $7c55: $13
	rst  $38                                         ; $7c56: $ff
	rst  $38                                         ; $7c57: $ff
	rst  $38                                         ; $7c58: $ff
	rst  $38                                         ; $7c59: $ff
	ld   d, c                                        ; $7c5a: $51
	ld   de, $1111                                   ; $7c5b: $11 $11 $11
	ld   de, $ff7f                                   ; $7c5e: $11 $7f $ff
	rst  $38                                         ; $7c61: $ff
	rst  $38                                         ; $7c62: $ff
	push de                                          ; $7c63: $d5
	ld   de, $1111                                   ; $7c64: $11 $11 $11
	ld   de, $ff1e                                   ; $7c67: $11 $1e $ff
	rst  $38                                         ; $7c6a: $ff
	rst  $38                                         ; $7c6b: $ff
	ei                                               ; $7c6c: $fb
	ld   sp, $1111                                   ; $7c6d: $31 $11 $11
	ld   de, rAUD1HIGH                                   ; $7c70: $11 $14 $ff
	rst  $38                                         ; $7c73: $ff
	rst  $38                                         ; $7c74: $ff
	rst  $38                                         ; $7c75: $ff
	sub  c                                           ; $7c76: $91
	ld   de, $1111                                   ; $7c77: $11 $11 $11
	ld   de, $ff7f                                   ; $7c7a: $11 $7f $ff
	rst  $38                                         ; $7c7d: $ff
	rst  $38                                         ; $7c7e: $ff
	ld   hl, sp+$11                                  ; $7c7f: $f8 $11
	ld   de, $1111                                   ; $7c81: $11 $11 $11
	jr   @+$01                                       ; $7c84: $18 $ff

	rst  $38                                         ; $7c86: $ff
	rst  $38                                         ; $7c87: $ff
	rst  $38                                         ; $7c88: $ff
	add  c                                           ; $7c89: $81
	ld   de, $1111                                   ; $7c8a: $11 $11 $11
	ld   de, $ffaf                                   ; $7c8d: $11 $af $ff
	rst  $38                                         ; $7c90: $ff
	rst  $38                                         ; $7c91: $ff
	ld   hl, sp+$11                                  ; $7c92: $f8 $11
	ld   de, $1111                                   ; $7c94: $11 $11 $11
	ld   a, [de]                                     ; $7c97: $1a
	rst  $38                                         ; $7c98: $ff
	rst  $38                                         ; $7c99: $ff
	rst  $38                                         ; $7c9a: $ff
	rst  $38                                         ; $7c9b: $ff
	sub  c                                           ; $7c9c: $91
	ld   de, $1111                                   ; $7c9d: $11 $11 $11
	ld   de, $ffaf                                   ; $7ca0: $11 $af $ff
	rst  $38                                         ; $7ca3: $ff
	rst  $38                                         ; $7ca4: $ff
	ei                                               ; $7ca5: $fb
	ld   de, $1111                                   ; $7ca6: $11 $11 $11
	ld   de, $ff17                                   ; $7ca9: $11 $17 $ff
	rst  $38                                         ; $7cac: $ff
	rst  $38                                         ; $7cad: $ff
	rst  $38                                         ; $7cae: $ff
	pop  de                                          ; $7caf: $d1
	ld   de, $1111                                   ; $7cb0: $11 $11 $11
	ld   de, $ff5f                                   ; $7cb3: $11 $5f $ff
	rst  $38                                         ; $7cb6: $ff
	rst  $38                                         ; $7cb7: $ff
	rst  $38                                         ; $7cb8: $ff
	ld   d, c                                        ; $7cb9: $51
	ld   de, $1111                                   ; $7cba: $11 $11 $11
	ld   de, $ffff                                   ; $7cbd: $11 $ff $ff
	rst  $38                                         ; $7cc0: $ff
	rst  $38                                         ; $7cc1: $ff
	ld   hl, sp+$11                                  ; $7cc2: $f8 $11
	ld   de, $1111                                   ; $7cc4: $11 $11 $11
	ld   a, [de]                                     ; $7cc7: $1a
	rst  $38                                         ; $7cc8: $ff
	rst  $38                                         ; $7cc9: $ff
	rst  $38                                         ; $7cca: $ff
	rst  $38                                         ; $7ccb: $ff
	pop  hl                                          ; $7ccc: $e1
	ld   de, $1111                                   ; $7ccd: $11 $11 $11
	ld   de, $ff2f                                   ; $7cd0: $11 $2f $ff
	rst  $38                                         ; $7cd3: $ff
	rst  $38                                         ; $7cd4: $ff
	rst  $38                                         ; $7cd5: $ff
	ld   [hl], c                                     ; $7cd6: $71
	ld   de, $1111                                   ; $7cd7: $11 $11 $11
	ld   de, $ffaf                                   ; $7cda: $11 $af $ff
	rst  $38                                         ; $7cdd: $ff
	rst  $38                                         ; $7cde: $ff
	rst  $38                                         ; $7cdf: $ff
	ld   b, c                                        ; $7ce0: $41
	ld   de, $1111                                   ; $7ce1: $11 $11 $11
	ld   de, $ffff                                   ; $7ce4: $11 $ff $ff
	rst  $38                                         ; $7ce7: $ff
	rst  $38                                         ; $7ce8: $ff
	db   $fd                                         ; $7ce9: $fd
	ld   b, c                                        ; $7cea: $41
	ld   de, $1111                                   ; $7ceb: $11 $11 $11
	ld   [de], a                                     ; $7cee: $12
	rst  $38                                         ; $7cef: $ff
	rst  $38                                         ; $7cf0: $ff
	rst  $38                                         ; $7cf1: $ff
	rst  $38                                         ; $7cf2: $ff
	db   $fd                                         ; $7cf3: $fd
	ld   sp, $1111                                   ; $7cf4: $31 $11 $11
	ld   de, rAUD1LOW                                   ; $7cf7: $11 $13 $ff
	rst  $38                                         ; $7cfa: $ff
	rst  $38                                         ; $7cfb: $ff
	rst  $38                                         ; $7cfc: $ff
	db   $fd                                         ; $7cfd: $fd
	ld   sp, $1111                                   ; $7cfe: $31 $11 $11
	ld   de, rAUD1LOW                                   ; $7d01: $11 $13 $ff
	rst  $38                                         ; $7d04: $ff
	rst  $38                                         ; $7d05: $ff
	rst  $38                                         ; $7d06: $ff
	cp   $41                                         ; $7d07: $fe $41
	ld   de, $1111                                   ; $7d09: $11 $11 $11
	ld   de, $ffff                                   ; $7d0c: $11 $ff $ff
	rst  $38                                         ; $7d0f: $ff
	rst  $38                                         ; $7d10: $ff
	rst  $38                                         ; $7d11: $ff
	ld   [hl], c                                     ; $7d12: $71
	ld   de, $1111                                   ; $7d13: $11 $11 $11
	ld   de, $ffbf                                   ; $7d16: $11 $bf $ff
	rst  $38                                         ; $7d19: $ff
	rst  $38                                         ; $7d1a: $ff
	rst  $38                                         ; $7d1b: $ff
	or   c                                           ; $7d1c: $b1
	ld   de, $1111                                   ; $7d1d: $11 $11 $11
	ld   de, $ff6f                                   ; $7d20: $11 $6f $ff
	rst  $38                                         ; $7d23: $ff
	rst  $38                                         ; $7d24: $ff
	rst  $38                                         ; $7d25: $ff
	rst  $30                                         ; $7d26: $f7
	ld   de, $1111                                   ; $7d27: $11 $11 $11
	ld   de, $ff1b                                   ; $7d2a: $11 $1b $ff
	rst  $38                                         ; $7d2d: $ff
	rst  $38                                         ; $7d2e: $ff
	rst  $38                                         ; $7d2f: $ff
	cp   $11                                         ; $7d30: $fe $11
	ld   de, $1111                                   ; $7d32: $11 $11 $11
	inc  de                                          ; $7d35: $13
	rst  $28                                         ; $7d36: $ef
	rst  $38                                         ; $7d37: $ff
	rst  $38                                         ; $7d38: $ff
	rst  $38                                         ; $7d39: $ff
	rst  $38                                         ; $7d3a: $ff
	or   c                                           ; $7d3b: $b1
	ld   de, $1111                                   ; $7d3c: $11 $11 $11
	ld   de, $ff5f                                   ; $7d3f: $11 $5f $ff
	rst  $38                                         ; $7d42: $ff
	rst  $38                                         ; $7d43: $ff
	rst  $38                                         ; $7d44: $ff
	ei                                               ; $7d45: $fb
	ld   de, $1111                                   ; $7d46: $11 $11 $11
	ld   de, $ef14                                   ; $7d49: $11 $14 $ef
	rst  $38                                         ; $7d4c: $ff
	rst  $38                                         ; $7d4d: $ff
	rst  $38                                         ; $7d4e: $ff
	rst  $38                                         ; $7d4f: $ff
	db   $e4                                         ; $7d50: $e4
	ld   de, $1111                                   ; $7d51: $11 $11 $11
	ld   de, $ff1b                                   ; $7d54: $11 $1b $ff
	rst  $38                                         ; $7d57: $ff
	rst  $38                                         ; $7d58: $ff
	rst  $38                                         ; $7d59: $ff
	rst  $38                                         ; $7d5a: $ff
	sub  c                                           ; $7d5b: $91
	ld   de, $1111                                   ; $7d5c: $11 $11 $11
	ld   de, $ff6f                                   ; $7d5f: $11 $6f $ff
	rst  $38                                         ; $7d62: $ff
	rst  $38                                         ; $7d63: $ff
	rst  $38                                         ; $7d64: $ff
	cp   $21                                         ; $7d65: $fe $21
	ld   de, $1111                                   ; $7d67: $11 $11 $11
	ld   de, $ff8f                                   ; $7d6a: $11 $8f $ff
	rst  $38                                         ; $7d6d: $ff
	rst  $38                                         ; $7d6e: $ff
	rst  $38                                         ; $7d6f: $ff
	ld   a, [$1121]                                  ; $7d70: $fa $21 $11
	ld   de, $1211                                   ; $7d73: $11 $11 $12
	sbc  a                                           ; $7d76: $9f
	rst  $38                                         ; $7d77: $ff
	rst  $38                                         ; $7d78: $ff
	rst  $38                                         ; $7d79: $ff
	rst  $38                                         ; $7d7a: $ff
	ld   sp, hl                                      ; $7d7b: $f9
	ld   bc, $1111                                   ; $7d7c: $01 $11 $11
	ld   de, $af13                                   ; $7d7f: $11 $13 $af
	rst  $38                                         ; $7d82: $ff
	rst  $38                                         ; $7d83: $ff
	rst  $38                                         ; $7d84: $ff
	rst  $38                                         ; $7d85: $ff
	ld   sp, hl                                      ; $7d86: $f9
	ld   de, $1111                                   ; $7d87: $11 $11 $11
	ld   de, $af13                                   ; $7d8a: $11 $13 $af
	rst  $38                                         ; $7d8d: $ff
	rst  $38                                         ; $7d8e: $ff
	rst  $38                                         ; $7d8f: $ff
	rst  $38                                         ; $7d90: $ff
	ei                                               ; $7d91: $fb
	ld   hl, $1111                                   ; $7d92: $21 $11 $11
	ld   de, $8d12                                   ; $7d95: $11 $12 $8d
	rst  $38                                         ; $7d98: $ff
	rst  $38                                         ; $7d99: $ff
	rst  $38                                         ; $7d9a: $ff
	rst  $38                                         ; $7d9b: $ff
	cp   $71                                         ; $7d9c: $fe $71
	ld   de, $1111                                   ; $7d9e: $11 $11 $11
	ld   de, $df49                                   ; $7da1: $11 $49 $df
	rst  $38                                         ; $7da4: $ff
	rst  $38                                         ; $7da5: $ff
	rst  $38                                         ; $7da6: $ff
	rst  $38                                         ; $7da7: $ff
	or   [hl]                                        ; $7da8: $b6
	ld   de, $1111                                   ; $7da9: $11 $11 $11
	ld   de, $8d13                                   ; $7dac: $11 $13 $8d
	rst  $38                                         ; $7daf: $ff
	rst  $38                                         ; $7db0: $ff
	rst  $38                                         ; $7db1: $ff
	rst  $38                                         ; $7db2: $ff
	ei                                               ; $7db3: $fb
	ld   h, c                                        ; $7db4: $61
	ld   de, $1111                                   ; $7db5: $11 $11 $11
	ld   de, $af38                                   ; $7db8: $11 $38 $af
	rst  $38                                         ; $7dbb: $ff
	rst  $38                                         ; $7dbc: $ff
	rst  $38                                         ; $7dbd: $ff
	cp   $95                                         ; $7dbe: $fe $95
	ld   hl, $1111                                   ; $7dc0: $21 $11 $11
	ld   de, $6813                                   ; $7dc3: $11 $13 $68
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7dc6: $cf
	rst  $38                                         ; $7dc7: $ff
	rst  $38                                         ; $7dc8: $ff
	rst  $38                                         ; $7dc9: $ff
	ret  z                                           ; $7dca: $c8

	ld   h, [hl]                                     ; $7dcb: $66
	ld   d, h                                        ; $7dcc: $54
	ld   [hl-], a                                    ; $7dcd: $32
	ld   de, $3611                                   ; $7dce: $11 $11 $36
	ld   a, c                                        ; $7dd1: $79
	call z, $feee                                    ; $7dd2: $cc $ee $fe
	res  3, c                                        ; $7dd5: $cb $99
	sbc  c                                           ; $7dd7: $99
	add  [hl]                                        ; $7dd8: $86
	ld   b, h                                        ; $7dd9: $44
	ld   [hl+], a                                    ; $7dda: $22
	inc  sp                                          ; $7ddb: $33
	ld   d, [hl]                                     ; $7ddc: $56
	ld   a, c                                        ; $7ddd: $79
	xor  e                                           ; $7dde: $ab
	set  1, e                                        ; $7ddf: $cb $cb
	cp   h                                           ; $7de1: $bc
	xor  e                                           ; $7de2: $ab
	xor  c                                           ; $7de3: $a9
	add  [hl]                                        ; $7de4: $86
	ld   d, h                                        ; $7de5: $54
	ld   b, h                                        ; $7de6: $44
	ld   b, h                                        ; $7de7: $44
	ld   d, [hl]                                     ; $7de8: $56
	ld   [hl], a                                     ; $7de9: $77
	sbc  c                                           ; $7dea: $99
	sbc  d                                           ; $7deb: $9a
	cp   e                                           ; $7dec: $bb
	res  7, e                                        ; $7ded: $cb $bb
	xor  c                                           ; $7def: $a9
	add  a                                           ; $7df0: $87
	ld   h, [hl]                                     ; $7df1: $66
	ld   d, l                                        ; $7df2: $55
	ld   d, l                                        ; $7df3: $55
	ld   d, [hl]                                     ; $7df4: $56
	ld   [hl], a                                     ; $7df5: $77
	sbc  c                                           ; $7df6: $99
	sbc  d                                           ; $7df7: $9a
	sbc  d                                           ; $7df8: $9a
	xor  e                                           ; $7df9: $ab
	xor  d                                           ; $7dfa: $aa
	xor  b                                           ; $7dfb: $a8
	sbc  b                                           ; $7dfc: $98
	halt                                             ; $7dfd: $76
	ld   h, l                                        ; $7dfe: $65
	ld   h, l                                        ; $7dff: $65
	ld   h, [hl]                                     ; $7e00: $66
	ld   l, b                                        ; $7e01: $68
	ld   a, c                                        ; $7e02: $79
	sbc  c                                           ; $7e03: $99
	xor  d                                           ; $7e04: $aa
	xor  c                                           ; $7e05: $a9
	xor  c                                           ; $7e06: $a9
	xor  c                                           ; $7e07: $a9
	adc  b                                           ; $7e08: $88
	add  a                                           ; $7e09: $87
	halt                                             ; $7e0a: $76
	ld   h, [hl]                                     ; $7e0b: $66
	ld   h, [hl]                                     ; $7e0c: $66
	ld   h, a                                        ; $7e0d: $67
	adc  c                                           ; $7e0e: $89
	sbc  c                                           ; $7e0f: $99
	xor  c                                           ; $7e10: $a9
	sbc  c                                           ; $7e11: $99
	xor  c                                           ; $7e12: $a9
	sbc  b                                           ; $7e13: $98
	sbc  b                                           ; $7e14: $98
	add  a                                           ; $7e15: $87
	ld   [hl], a                                     ; $7e16: $77
	ld   [hl], a                                     ; $7e17: $77
	ld   [hl], a                                     ; $7e18: $77
	ld   [hl], a                                     ; $7e19: $77
	ld   a, b                                        ; $7e1a: $78
	sbc  c                                           ; $7e1b: $99
	sbc  c                                           ; $7e1c: $99
	xor  c                                           ; $7e1d: $a9
	sbc  b                                           ; $7e1e: $98
	add  a                                           ; $7e1f: $87
	ld   [hl], a                                     ; $7e20: $77
	ld   [hl], a                                     ; $7e21: $77
	adc  b                                           ; $7e22: $88
	adc  c                                           ; $7e23: $89
	sbc  b                                           ; $7e24: $98
	sbc  c                                           ; $7e25: $99
	sbc  c                                           ; $7e26: $99
	sbc  b                                           ; $7e27: $98
	adc  b                                           ; $7e28: $88
	adc  b                                           ; $7e29: $88
	ld   a, b                                        ; $7e2a: $78
	ld   [hl], a                                     ; $7e2b: $77
	ld   h, a                                        ; $7e2c: $67
	ld   [hl], a                                     ; $7e2d: $77
	adc  b                                           ; $7e2e: $88
	adc  c                                           ; $7e2f: $89
	sbc  d                                           ; $7e30: $9a
	sbc  d                                           ; $7e31: $9a
	xor  d                                           ; $7e32: $aa
	sbc  b                                           ; $7e33: $98
	add  a                                           ; $7e34: $87
	halt                                             ; $7e35: $76
	ld   h, [hl]                                     ; $7e36: $66
	halt                                             ; $7e37: $76
	ld   [hl], a                                     ; $7e38: $77
	ld   [hl], a                                     ; $7e39: $77
	ld   a, c                                        ; $7e3a: $79
	adc  b                                           ; $7e3b: $88
	sbc  b                                           ; $7e3c: $98
	sbc  c                                           ; $7e3d: $99
	sbc  d                                           ; $7e3e: $9a
	xor  d                                           ; $7e3f: $aa
	xor  c                                           ; $7e40: $a9
	adc  b                                           ; $7e41: $88
	ld   [hl], a                                     ; $7e42: $77
	ld   h, [hl]                                     ; $7e43: $66
	ld   [hl], a                                     ; $7e44: $77
	ld   [hl], a                                     ; $7e45: $77
	ld   [hl], a                                     ; $7e46: $77
	ld   a, b                                        ; $7e47: $78
	ld   a, b                                        ; $7e48: $78
	adc  b                                           ; $7e49: $88
	adc  b                                           ; $7e4a: $88
	sbc  b                                           ; $7e4b: $98
	sbc  d                                           ; $7e4c: $9a
	sbc  d                                           ; $7e4d: $9a
	xor  d                                           ; $7e4e: $aa
	sbc  c                                           ; $7e4f: $99
	add  a                                           ; $7e50: $87
	ld   h, [hl]                                     ; $7e51: $66
	ld   h, [hl]                                     ; $7e52: $66
	ld   h, [hl]                                     ; $7e53: $66
	ld   [hl], a                                     ; $7e54: $77
	adc  b                                           ; $7e55: $88
	adc  c                                           ; $7e56: $89
	sbc  b                                           ; $7e57: $98
	adc  b                                           ; $7e58: $88
	adc  b                                           ; $7e59: $88
	sbc  c                                           ; $7e5a: $99
	sbc  b                                           ; $7e5b: $98
	sbc  b                                           ; $7e5c: $98
	adc  b                                           ; $7e5d: $88
	sbc  c                                           ; $7e5e: $99
	adc  b                                           ; $7e5f: $88
	ld   [hl], a                                     ; $7e60: $77
	ld   [hl], a                                     ; $7e61: $77
	adc  b                                           ; $7e62: $88
	adc  b                                           ; $7e63: $88
	adc  b                                           ; $7e64: $88
	add  a                                           ; $7e65: $87
	ld   [hl], a                                     ; $7e66: $77
	ld   h, [hl]                                     ; $7e67: $66
	ld   [hl], a                                     ; $7e68: $77
	ld   a, b                                        ; $7e69: $78
	sbc  d                                           ; $7e6a: $9a
	xor  e                                           ; $7e6b: $ab
	cp   d                                           ; $7e6c: $ba
	xor  d                                           ; $7e6d: $aa
	sbc  c                                           ; $7e6e: $99
	ld   [hl], a                                     ; $7e6f: $77
	ld   h, [hl]                                     ; $7e70: $66
	ld   h, [hl]                                     ; $7e71: $66
	ld   h, [hl]                                     ; $7e72: $66
	ld   h, a                                        ; $7e73: $67
	adc  b                                           ; $7e74: $88
	sbc  b                                           ; $7e75: $98
	adc  b                                           ; $7e76: $88
	sbc  c                                           ; $7e77: $99
	sbc  b                                           ; $7e78: $98
	sbc  b                                           ; $7e79: $98
	adc  b                                           ; $7e7a: $88
	sbc  b                                           ; $7e7b: $98
	adc  c                                           ; $7e7c: $89
	adc  b                                           ; $7e7d: $88
	add  a                                           ; $7e7e: $87
	ld   a, b                                        ; $7e7f: $78
	ld   a, b                                        ; $7e80: $78
	ld   a, b                                        ; $7e81: $78
	adc  b                                           ; $7e82: $88
	sbc  b                                           ; $7e83: $98
	sbc  b                                           ; $7e84: $98
	add  a                                           ; $7e85: $87
	halt                                             ; $7e86: $76
	ld   h, [hl]                                     ; $7e87: $66
	ld   h, a                                        ; $7e88: $67
	ld   a, b                                        ; $7e89: $78
	adc  c                                           ; $7e8a: $89
	xor  e                                           ; $7e8b: $ab
	xor  d                                           ; $7e8c: $aa
	cp   d                                           ; $7e8d: $ba
	xor  c                                           ; $7e8e: $a9
	add  a                                           ; $7e8f: $87
	halt                                             ; $7e90: $76
	ld   h, [hl]                                     ; $7e91: $66
	ld   h, [hl]                                     ; $7e92: $66
	ld   [hl], a                                     ; $7e93: $77
	ld   a, b                                        ; $7e94: $78
	sbc  b                                           ; $7e95: $98
	sbc  b                                           ; $7e96: $98
	add  a                                           ; $7e97: $87
	ld   [hl], a                                     ; $7e98: $77
	ld   a, b                                        ; $7e99: $78
	adc  c                                           ; $7e9a: $89
	adc  c                                           ; $7e9b: $89
	sbc  d                                           ; $7e9c: $9a
	sbc  c                                           ; $7e9d: $99
	xor  c                                           ; $7e9e: $a9
	adc  b                                           ; $7e9f: $88
	add  a                                           ; $7ea0: $87
	ld   [hl], a                                     ; $7ea1: $77
	ld   [hl], a                                     ; $7ea2: $77
	ld   [hl], a                                     ; $7ea3: $77
	adc  b                                           ; $7ea4: $88
	sbc  c                                           ; $7ea5: $99
	sbc  b                                           ; $7ea6: $98
	add  a                                           ; $7ea7: $87
	ld   [hl], a                                     ; $7ea8: $77
	ld   h, a                                        ; $7ea9: $67
	ld   [hl], a                                     ; $7eaa: $77
	ld   a, b                                        ; $7eab: $78
	adc  b                                           ; $7eac: $88
	sbc  d                                           ; $7ead: $9a
	xor  d                                           ; $7eae: $aa
	xor  d                                           ; $7eaf: $aa
	sbc  c                                           ; $7eb0: $99
	sbc  b                                           ; $7eb1: $98
	add  a                                           ; $7eb2: $87
	ld   [hl], a                                     ; $7eb3: $77
	ld   [hl], a                                     ; $7eb4: $77
	ld   [hl], a                                     ; $7eb5: $77
	ld   a, b                                        ; $7eb6: $78
	adc  b                                           ; $7eb7: $88
	sbc  b                                           ; $7eb8: $98
	add  a                                           ; $7eb9: $87
	ld   [hl], a                                     ; $7eba: $77
	ld   [hl], a                                     ; $7ebb: $77
	ld   [hl], a                                     ; $7ebc: $77
	ld   a, b                                        ; $7ebd: $78
	adc  b                                           ; $7ebe: $88
	sbc  c                                           ; $7ebf: $99
	sbc  d                                           ; $7ec0: $9a
	sbc  d                                           ; $7ec1: $9a
	sbc  c                                           ; $7ec2: $99
	sbc  c                                           ; $7ec3: $99
	adc  b                                           ; $7ec4: $88
	ld   [hl], a                                     ; $7ec5: $77
	ld   [hl], a                                     ; $7ec6: $77
	ld   [hl], a                                     ; $7ec7: $77
	adc  b                                           ; $7ec8: $88
	adc  b                                           ; $7ec9: $88
	ld   [hl], a                                     ; $7eca: $77
	ld   [hl], a                                     ; $7ecb: $77
	ld   [hl], a                                     ; $7ecc: $77
	ld   [hl], a                                     ; $7ecd: $77
	ld   [hl], a                                     ; $7ece: $77
	adc  b                                           ; $7ecf: $88
	sbc  b                                           ; $7ed0: $98
	sbc  c                                           ; $7ed1: $99
	sbc  c                                           ; $7ed2: $99
	sbc  c                                           ; $7ed3: $99
	adc  b                                           ; $7ed4: $88
	sbc  b                                           ; $7ed5: $98
	sbc  c                                           ; $7ed6: $99
	sbc  c                                           ; $7ed7: $99
	sbc  b                                           ; $7ed8: $98
	adc  b                                           ; $7ed9: $88
	adc  b                                           ; $7eda: $88
	add  a                                           ; $7edb: $87
	ld   [hl], a                                     ; $7edc: $77
	ld   [hl], a                                     ; $7edd: $77
	ld   [hl], a                                     ; $7ede: $77
	ld   [hl], a                                     ; $7edf: $77
	ld   [hl], a                                     ; $7ee0: $77
	ld   a, b                                        ; $7ee1: $78
	adc  b                                           ; $7ee2: $88
	sbc  c                                           ; $7ee3: $99
	sbc  c                                           ; $7ee4: $99
	adc  b                                           ; $7ee5: $88
	adc  c                                           ; $7ee6: $89
	sbc  b                                           ; $7ee7: $98
	sbc  c                                           ; $7ee8: $99
	sbc  d                                           ; $7ee9: $9a
	xor  c                                           ; $7eea: $a9
	sbc  c                                           ; $7eeb: $99
	sbc  b                                           ; $7eec: $98
	add  a                                           ; $7eed: $87
	ld   [hl], a                                     ; $7eee: $77
	ld   [hl], a                                     ; $7eef: $77
	ld   [hl], a                                     ; $7ef0: $77
	ld   [hl], a                                     ; $7ef1: $77
	ld   [hl], a                                     ; $7ef2: $77
	ld   [hl], a                                     ; $7ef3: $77
	ld   [hl], a                                     ; $7ef4: $77
	ld   [hl], a                                     ; $7ef5: $77
	ld   [hl], a                                     ; $7ef6: $77
	adc  b                                           ; $7ef7: $88
	adc  b                                           ; $7ef8: $88
	adc  b                                           ; $7ef9: $88
	sbc  c                                           ; $7efa: $99
	adc  b                                           ; $7efb: $88
	sbc  c                                           ; $7efc: $99
	sbc  c                                           ; $7efd: $99
	xor  d                                           ; $7efe: $aa
	xor  d                                           ; $7eff: $aa
	sbc  c                                           ; $7f00: $99
	adc  c                                           ; $7f01: $89
	adc  b                                           ; $7f02: $88
	ld   [hl], a                                     ; $7f03: $77
	ld   [hl], a                                     ; $7f04: $77
	ld   [hl], a                                     ; $7f05: $77
	ld   [hl], a                                     ; $7f06: $77
	ld   [hl], a                                     ; $7f07: $77
	ld   [hl], a                                     ; $7f08: $77
	ld   [hl], a                                     ; $7f09: $77
	ld   [hl], a                                     ; $7f0a: $77
	ld   [hl], a                                     ; $7f0b: $77
	ld   [hl], a                                     ; $7f0c: $77
	adc  b                                           ; $7f0d: $88
	adc  b                                           ; $7f0e: $88
	sbc  c                                           ; $7f0f: $99
	sbc  b                                           ; $7f10: $98
	adc  b                                           ; $7f11: $88
	adc  c                                           ; $7f12: $89
	sbc  c                                           ; $7f13: $99
	sbc  c                                           ; $7f14: $99
	sbc  c                                           ; $7f15: $99
	sbc  c                                           ; $7f16: $99
	sbc  c                                           ; $7f17: $99
	sbc  b                                           ; $7f18: $98
	adc  c                                           ; $7f19: $89
	adc  b                                           ; $7f1a: $88
	add  a                                           ; $7f1b: $87
	ld   [hl], a                                     ; $7f1c: $77
	ld   [hl], a                                     ; $7f1d: $77
	ld   [hl], a                                     ; $7f1e: $77
	ld   [hl], a                                     ; $7f1f: $77
	ld   [hl], a                                     ; $7f20: $77
	ld   [hl], a                                     ; $7f21: $77
	ld   [hl], a                                     ; $7f22: $77
	ld   [hl], a                                     ; $7f23: $77
	ld   a, b                                        ; $7f24: $78
	adc  b                                           ; $7f25: $88
	adc  b                                           ; $7f26: $88
	sbc  c                                           ; $7f27: $99
	adc  b                                           ; $7f28: $88
	adc  b                                           ; $7f29: $88
	adc  b                                           ; $7f2a: $88
	adc  c                                           ; $7f2b: $89
	sbc  c                                           ; $7f2c: $99
	sbc  c                                           ; $7f2d: $99
	sbc  c                                           ; $7f2e: $99
	sbc  c                                           ; $7f2f: $99
	sbc  c                                           ; $7f30: $99
	sbc  b                                           ; $7f31: $98
	adc  b                                           ; $7f32: $88
	adc  b                                           ; $7f33: $88
	ld   [hl], a                                     ; $7f34: $77
	ld   [hl], a                                     ; $7f35: $77
	ld   [hl], a                                     ; $7f36: $77
	ld   [hl], a                                     ; $7f37: $77
	ld   a, b                                        ; $7f38: $78
	adc  b                                           ; $7f39: $88
	adc  b                                           ; $7f3a: $88
	adc  b                                           ; $7f3b: $88
	adc  b                                           ; $7f3c: $88
	adc  b                                           ; $7f3d: $88
	adc  b                                           ; $7f3e: $88
	adc  b                                           ; $7f3f: $88
	adc  b                                           ; $7f40: $88
	adc  b                                           ; $7f41: $88
	adc  b                                           ; $7f42: $88
	adc  b                                           ; $7f43: $88
	adc  b                                           ; $7f44: $88
	adc  b                                           ; $7f45: $88
	adc  b                                           ; $7f46: $88
	adc  b                                           ; $7f47: $88
	adc  b                                           ; $7f48: $88
	adc  b                                           ; $7f49: $88
	adc  b                                           ; $7f4a: $88
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
	add  c                                           ; $7f5c: $81
	ld   de, $1111                                   ; $7f5d: $11 $11 $11
	ld   de, $1111                                   ; $7f60: $11 $11 $11
	ld   de, $1111                                   ; $7f63: $11 $11 $11
	ld   de, $1111                                   ; $7f66: $11 $11 $11
	ld   de, $1111                                   ; $7f69: $11 $11 $11
	ld   de, $1111                                   ; $7f6c: $11 $11 $11
	ld   de, $1111                                   ; $7f6f: $11 $11 $11
	ld   de, $1111                                   ; $7f72: $11 $11 $11
	ld   de, $4800                                   ; $7f75: $11 $00 $48
	ld   de, $1111                                   ; $7f78: $11 $11 $11
	ld   de, $1111                                   ; $7f7b: $11 $11 $11
	ld   de, $1111                                   ; $7f7e: $11 $11 $11
	ld   de, $5413                                   ; $7f81: $11 $13 $54
	ld   d, h                                        ; $7f84: $54
	ld   d, h                                        ; $7f85: $54
	ld   b, c                                        ; $7f86: $41
	rra                                              ; $7f87: $1f
	rst  $38                                         ; $7f88: $ff
	pop  af                                          ; $7f89: $f1
	ld   de, $1411                                   ; $7f8a: $11 $11 $14
	or   c                                           ; $7f8d: $b1
	ld   de, $de1c                                   ; $7f8e: $11 $1c $de
	call c, $d1de                                    ; $7f91: $dc $de $d1
	ld   de, $1111                                   ; $7f94: $11 $11 $11
	ld   de, $1111                                   ; $7f97: $11 $11 $11
	ld   de, $1111                                   ; $7f9a: $11 $11 $11
	ld   de, $1111                                   ; $7f9d: $11 $11 $11
	ld   de, $5411                                   ; $7fa0: $11 $11 $54
	ld   b, h                                        ; $7fa3: $44
	or   h                                           ; $7fa4: $b4
	ld   de, $5454                                   ; $7fa5: $11 $54 $54
	ld   h, a                                        ; $7fa8: $67
	ld   [hl], d                                     ; $7fa9: $72
	ld   de, $1111                                   ; $7faa: $11 $11 $11
	ld   de, $1112                                   ; $7fad: $11 $12 $11
	ld   [de], a                                     ; $7fb0: $12
	ld   de, $1111                                   ; $7fb1: $11 $11 $11
	ld   h, [hl]                                     ; $7fb4: $66
	halt                                             ; $7fb5: $76
	add  h                                           ; $7fb6: $84
	ld   de, $8888                                   ; $7fb7: $11 $88 $88
	ld   [hl], a                                     ; $7fba: $77
	ld   [hl], a                                     ; $7fbb: $77
	ld   [hl], a                                     ; $7fbc: $77
	ld   [hl], a                                     ; $7fbd: $77
	ld   [hl], a                                     ; $7fbe: $77
	ld   [hl], a                                     ; $7fbf: $77
	ld   [hl], a                                     ; $7fc0: $77
	ld   [hl], a                                     ; $7fc1: $77
	adc  c                                           ; $7fc2: $89
	sbc  d                                           ; $7fc3: $9a
	xor  d                                           ; $7fc4: $aa
	sbc  d                                           ; $7fc5: $9a
	sbc  b                                           ; $7fc6: $98
	sbc  b                                           ; $7fc7: $98
	sbc  c                                           ; $7fc8: $99
	xor  d                                           ; $7fc9: $aa
	sbc  c                                           ; $7fca: $99
	sbc  b                                           ; $7fcb: $98
	ld   [hl], a                                     ; $7fcc: $77
	ld   h, l                                        ; $7fcd: $65
	ld   [hl-], a                                    ; $7fce: $32
	ld   de, $bd46                                   ; $7fcf: $11 $46 $bd
	rst  JumpTable                                         ; $7fd2: $df
	db   $db                                         ; $7fd3: $db
	sub  l                                           ; $7fd4: $95
	ld   d, e                                        ; $7fd5: $53
	ld   [hl], $68                                   ; $7fd6: $36 $68
	xor  e                                           ; $7fd8: $ab
	call z, $abba                                    ; $7fd9: $cc $ba $ab
	sbc  d                                           ; $7fdc: $9a
	xor  c                                           ; $7fdd: $a9
	sub  a                                           ; $7fde: $97
	halt                                             ; $7fdf: $76
	ld   h, [hl]                                     ; $7fe0: $66
	ld   h, a                                        ; $7fe1: $67
	sbc  c                                           ; $7fe2: $99
	xor  b                                           ; $7fe3: $a8
	add  a                                           ; $7fe4: $87
	ld   h, [hl]                                     ; $7fe5: $66
	ld   d, l                                        ; $7fe6: $55
	ld   d, l                                        ; $7fe7: $55
	ld   d, l                                        ; $7fe8: $55
	ld   b, h                                        ; $7fe9: $44
	ld   h, a                                        ; $7fea: $67
	xor  e                                           ; $7feb: $ab
	call $a8db                                       ; $7fec: $cd $db $a8
	halt                                             ; $7fef: $76
	ld   a, b                                        ; $7ff0: $78
	sbc  c                                           ; $7ff1: $99
	xor  e                                           ; $7ff2: $ab
	cp   d                                           ; $7ff3: $ba
	xor  c                                           ; $7ff4: $a9
	adc  b                                           ; $7ff5: $88
	ld   a, b                                        ; $7ff6: $78
	ld   [hl], a                                     ; $7ff7: $77
	ld   [hl], l                                     ; $7ff8: $75
	ld   hl, $1311                                   ; $7ff9: $21 $11 $13
	cp   a                                           ; $7ffc: $bf
	rst  $38                                         ; $7ffd: $ff
	db   $fd                                         ; $7ffe: $fd
	sub  d                                           ; $7fff: $92
