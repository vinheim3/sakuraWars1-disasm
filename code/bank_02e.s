; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $02e", ROMX[$4000], BANK[$2e]

	ld   a, e                                        ; $4000: $7b
	ld   bc, $0401                                   ; $4001: $01 $01 $04
	ei                                               ; $4004: $fb
	add  c                                           ; $4005: $81
	ld   hl, sp+$00                                  ; $4006: $f8 $00
	ei                                               ; $4008: $fb
	add  b                                           ; $4009: $80
	ld   a, [$fb00]                                  ; $400a: $fa $00 $fb
	add  b                                           ; $400d: $80
	ld   a, [$fb80]                                  ; $400e: $fa $80 $fb
	add  b                                           ; $4011: $80
	ld   sp, hl                                      ; $4012: $f9
	ld   bc, $03fb                                   ; $4013: $01 $fb $03
	add  b                                           ; $4016: $80
	rst  $38                                         ; $4017: $ff
	add  b                                           ; $4018: $80
	nop                                              ; $4019: $00
	add  b                                           ; $401a: $80
	rst  $38                                         ; $401b: $ff
	add  d                                           ; $401c: $82
	ld   a, a                                        ; $401d: $7f
	add  e                                           ; $401e: $83
	rst  $38                                         ; $401f: $ff
	ld   de, $ff50                                   ; $4020: $11 $50 $ff
	ld   d, b                                        ; $4023: $50
	nop                                              ; $4024: $00
	cpl                                              ; $4025: $2f
	rst  $38                                         ; $4026: $ff
	add  $fc                                         ; $4027: $c6 $fc
	jp   nz, $c1fc                                   ; $4029: $c2 $fc $c1

	rst  $38                                         ; $402c: $ff
	pop  bc                                          ; $402d: $c1
	rst  $38                                         ; $402e: $ff
	add  c                                           ; $402f: $81
	rst  $38                                         ; $4030: $ff
	dec  d                                           ; $4031: $15
	cp   a                                           ; $4032: $bf
	add  b                                           ; $4033: $80
	nop                                              ; $4034: $00
	add  b                                           ; $4035: $80
	cp   a                                           ; $4036: $bf
	inc  bc                                          ; $4037: $03
	or   a                                           ; $4038: $b7
	and  a                                           ; $4039: $a7
	or   a                                           ; $403a: $b7
	and  a                                           ; $403b: $a7
	add  h                                           ; $403c: $84
	cp   a                                           ; $403d: $bf
	nop                                              ; $403e: $00
	ld   hl, sp-$80                                  ; $403f: $f8 $80
	ld   sp, hl                                      ; $4041: $f9
	add  b                                           ; $4042: $80
	ld   a, [$f980]                                  ; $4043: $fa $80 $f9
	add  b                                           ; $4046: $80
	ld   a, [$f980]                                  ; $4047: $fa $80 $f9
	add  b                                           ; $404a: $80
	ld   a, [$f980]                                  ; $404b: $fa $80 $f9
	ld   bc, $fdfa                                   ; $404e: $01 $fa $fd
	add  c                                           ; $4051: $81
	ccf                                              ; $4052: $3f
	add  b                                           ; $4053: $80
	jr   nc, jr_02e_4056                             ; $4054: $30 $00

jr_02e_4056:
	scf                                              ; $4056: $37
	add  b                                           ; $4057: $80
	jr   nc, jr_02e_405c                             ; $4058: $30 $02

jr_02e_405a:
	ld   [hl], $32                                   ; $405a: $36 $32

jr_02e_405c:
	inc  sp                                          ; $405c: $33
	add  b                                           ; $405d: $80
	inc  [hl]                                        ; $405e: $34
	add  b                                           ; $405f: $80
	scf                                              ; $4060: $37
	nop                                              ; $4061: $00
	ccf                                              ; $4062: $3f
	add  c                                           ; $4063: $81
	rst  $38                                         ; $4064: $ff
	add  b                                           ; $4065: $80
	nop                                              ; $4066: $00
	add  c                                           ; $4067: $81
	rst  $38                                         ; $4068: $ff
	add  b                                           ; $4069: $80
	ccf                                              ; $406a: $3f
	add  b                                           ; $406b: $80
	adc  a                                           ; $406c: $8f
	inc  bc                                          ; $406d: $03
	db   $e3                                         ; $406e: $e3
	inc  hl                                          ; $406f: $23
	jr   c, jr_02e_405a                              ; $4070: $38 $e8

	add  c                                           ; $4072: $81
	rst  $28                                         ; $4073: $ef
	add  b                                           ; $4074: $80
	ld   l, h                                        ; $4075: $6c
	nop                                              ; $4076: $00
	db   $ed                                         ; $4077: $ed
	add  b                                           ; $4078: $80
	ld   l, h                                        ; $4079: $6c
	nop                                              ; $407a: $00
	ld   l, l                                        ; $407b: $6d
	add  b                                           ; $407c: $80
	ld   l, h                                        ; $407d: $6c
	add  d                                           ; $407e: $82

jr_02e_407f:
	ld   l, l                                        ; $407f: $6d
	ld   bc, $f38c                                   ; $4080: $01 $8c $f3
	add  b                                           ; $4083: $80
	ld   sp, hl                                      ; $4084: $f9
	add  b                                           ; $4085: $80
	db   $fc                                         ; $4086: $fc
	add  b                                           ; $4087: $80
	cp   $8c                                         ; $4088: $fe $8c
	rst  $38                                         ; $408a: $ff
	add  b                                           ; $408b: $80
	ld   a, a                                        ; $408c: $7f
	add  b                                           ; $408d: $80
	rra                                              ; $408e: $1f
	add  b                                           ; $408f: $80
	adc  a                                           ; $4090: $8f
	add  b                                           ; $4091: $80
	rst  $20                                         ; $4092: $e7
	add  b                                           ; $4093: $80
	di                                               ; $4094: $f3
	jr   nz, jr_02e_40ec                             ; $4095: $20 $55

	rst  $38                                         ; $4097: $ff
	nop                                              ; $4098: $00
	rst  $38                                         ; $4099: $ff
	add  b                                           ; $409a: $80
	rst  $38                                         ; $409b: $ff
	ret  nc                                          ; $409c: $d0

	rst  $38                                         ; $409d: $ff
	ld   hl, sp-$01                                  ; $409e: $f8 $ff
	db   $fc                                         ; $40a0: $fc
	rst  $38                                         ; $40a1: $ff
	cp   $ff                                         ; $40a2: $fe $ff
	ld   a, [$5aff]                                  ; $40a4: $fa $ff $5a
	push af                                          ; $40a7: $f5
	dec  b                                           ; $40a8: $05
	ld   a, [$fd02]                                  ; $40a9: $fa $02 $fd
	nop                                              ; $40ac: $00
	rst  $38                                         ; $40ad: $ff
	nop                                              ; $40ae: $00
	rst  $38                                         ; $40af: $ff
	nop                                              ; $40b0: $00
	rst  $38                                         ; $40b1: $ff
	nop                                              ; $40b2: $00
	rst  $38                                         ; $40b3: $ff
	nop                                              ; $40b4: $00
	rst  $38                                         ; $40b5: $ff
	ld   d, l                                        ; $40b6: $55
	cp   l                                           ; $40b7: $bd
	nop                                              ; $40b8: $00
	ld   [hl+], a                                    ; $40b9: $22
	dec  c                                           ; $40ba: $0d
	ei                                               ; $40bb: $fb
	ldh  a, [c]                                      ; $40bc: $f2
	ei                                               ; $40bd: $fb
	ldh  a, [c]                                      ; $40be: $f2
	ei                                               ; $40bf: $fb
	ldh  a, [c]                                      ; $40c0: $f2
	ei                                               ; $40c1: $fb
	ldh  a, [c]                                      ; $40c2: $f2
	ei                                               ; $40c3: $fb
	ldh  a, [c]                                      ; $40c4: $f2
	ei                                               ; $40c5: $fb
	ldh  a, [c]                                      ; $40c6: $f2
	ei                                               ; $40c7: $fb
	ldh  a, [c]                                      ; $40c8: $f2
	ei                                               ; $40c9: $fb
	add  b                                           ; $40ca: $80
	rst  $38                                         ; $40cb: $ff
	ccf                                              ; $40cc: $3f
	rst  $38                                         ; $40cd: $ff
	ccf                                              ; $40ce: $3f
	rst  $38                                         ; $40cf: $ff
	ccf                                              ; $40d0: $3f
	rst  $38                                         ; $40d1: $ff
	rra                                              ; $40d2: $1f
	rst  $38                                         ; $40d3: $ff
	rrca                                             ; $40d4: $0f
	rst  $38                                         ; $40d5: $ff
	rrca                                             ; $40d6: $0f
	cp   $a1                                         ; $40d7: $fe $a1
	rst  $38                                         ; $40d9: $ff
	ld   l, b                                        ; $40da: $68
	ld   b, c                                        ; $40db: $41
	ld   b, e                                        ; $40dc: $43
	add  b                                           ; $40dd: $80
	db   $eb                                         ; $40de: $eb
	add  a                                           ; $40df: $87
	jp   Jump_02e_4b0a                               ; $40e0: $c3 $0a $4b


	swap l                                           ; $40e3: $cb $35
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40e5: $cf
	jp   z, $c5cf                                    ; $40e6: $ca $cf $c5

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40e9: $cf
	set  1, a                                        ; $40ea: $cb $cf

jr_02e_40ec:
	rst  ToBoot                                         ; $40ec: $c7
	add  l                                           ; $40ed: $85
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $40ee: $cf
	nop                                              ; $40ef: $00
	jr   z, jr_02e_407f                              ; $40f0: $28 $8d

	ld   hl, sp+$23                                  ; $40f2: $f8 $23
	sub  c                                           ; $40f4: $91
	rst  $38                                         ; $40f5: $ff
	cp   h                                           ; $40f6: $bc
	rst  JumpTable                                         ; $40f7: $df
	adc  b                                           ; $40f8: $88
	rst  $38                                         ; $40f9: $ff
	ld   [hl], c                                     ; $40fa: $71
	rst  $38                                         ; $40fb: $ff
	db   $e3                                         ; $40fc: $e3
	rst  $38                                         ; $40fd: $ff
	rst  ToBoot                                         ; $40fe: $c7
	rst  $38                                         ; $40ff: $ff
	adc  a                                           ; $4100: $8f
	rst  $38                                         ; $4101: $ff
	rra                                              ; $4102: $1f
	rst  $38                                         ; $4103: $ff
	ld   a, $ff                                      ; $4104: $3e $ff

jr_02e_4106:
	ld   a, h                                        ; $4106: $7c
	rst  $38                                         ; $4107: $ff
	ld   hl, sp-$01                                  ; $4108: $f8 $ff
	pop  af                                          ; $410a: $f1
	rst  $38                                         ; $410b: $ff
	db   $e3                                         ; $410c: $e3
	rst  $38                                         ; $410d: $ff
	add  $fe                                         ; $410e: $c6 $fe
	adc  l                                           ; $4110: $8d
	db   $fd                                         ; $4111: $fd
	rra                                              ; $4112: $1f
	rst  $38                                         ; $4113: $ff
	jr   nc, jr_02e_4106                             ; $4114: $30 $f0

	ld   h, b                                        ; $4116: $60
	ldh  [$80], a                                    ; $4117: $e0 $80
	pop  bc                                          ; $4119: $c1
	add  b                                           ; $411a: $80
	add  d                                           ; $411b: $82
	add  b                                           ; $411c: $80
	ld   d, l                                        ; $411d: $55
	add  b                                           ; $411e: $80
	xor  e                                           ; $411f: $ab
	add  b                                           ; $4120: $80
	ld   d, a                                        ; $4121: $57
	add  b                                           ; $4122: $80
	xor  a                                           ; $4123: $af
	add  b                                           ; $4124: $80
	ld   e, a                                        ; $4125: $5f
	add  b                                           ; $4126: $80
	cp   a                                           ; $4127: $bf
	add  b                                           ; $4128: $80
	ld   a, [hl]                                     ; $4129: $7e
	add  b                                           ; $412a: $80
	db   $fc                                         ; $412b: $fc
	add  b                                           ; $412c: $80
	ld   sp, hl                                      ; $412d: $f9
	ld   c, $f2                                      ; $412e: $0e $f2
	di                                               ; $4130: $f3
	push hl                                          ; $4131: $e5
	rst  $20                                         ; $4132: $e7
	set  1, a                                        ; $4133: $cb $cf
	sub  [hl]                                        ; $4135: $96
	sbc  [hl]                                        ; $4136: $9e
	ld   l, $3e                                      ; $4137: $2e $3e
	ld   e, [hl]                                     ; $4139: $5e
	ld   a, [hl]                                     ; $413a: $7e
	cp   [hl]                                        ; $413b: $be
	cp   $7e                                         ; $413c: $fe $7e
	add  l                                           ; $413e: $85
	cp   $8e                                         ; $413f: $fe $8e
	ld   a, a                                        ; $4141: $7f
	add  a                                           ; $4142: $87
	rst  $38                                         ; $4143: $ff
	dec  b                                           ; $4144: $05
	nop                                              ; $4145: $00
	dec  b                                           ; $4146: $05
	ld   a, a                                        ; $4147: $7f
	ld   [hl], c                                     ; $4148: $71
	ld   a, a                                        ; $4149: $7f
	ld   h, e                                        ; $414a: $63
	add  b                                           ; $414b: $80
	ld   a, a                                        ; $414c: $7f
	dec  d                                           ; $414d: $15
	rst  $38                                         ; $414e: $ff
	rst  ToBoot                                         ; $414f: $c7
	rst  $38                                         ; $4150: $ff
	adc  [hl]                                        ; $4151: $8e
	rst  $38                                         ; $4152: $ff
	inc  e                                           ; $4153: $1c
	rst  $38                                         ; $4154: $ff
	ld   a, b                                        ; $4155: $78
	ccf                                              ; $4156: $3f
	pop  af                                          ; $4157: $f1
	cp   a                                           ; $4158: $bf
	and  e                                           ; $4159: $a3
	cp   a                                           ; $415a: $bf
	add  a                                           ; $415b: $87
	cp   a                                           ; $415c: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $415d: $cf
	rst  $38                                         ; $415e: $ff
	rra                                              ; $415f: $1f
	rst  $38                                         ; $4160: $ff
	ccf                                              ; $4161: $3f
	rst  $38                                         ; $4162: $ff
	ld   a, a                                        ; $4163: $7f
	add  b                                           ; $4164: $80
	cp   $05                                         ; $4165: $fe $05
	db   $fc                                         ; $4167: $fc
	db   $fd                                         ; $4168: $fd
	ld   sp, hl                                      ; $4169: $f9
	ei                                               ; $416a: $fb
	di                                               ; $416b: $f3
	rst  $30                                         ; $416c: $f7
	add  b                                           ; $416d: $80
	rst  $20                                         ; $416e: $e7
	inc  b                                           ; $416f: $04
	rst  ToBoot                                         ; $4170: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4171: $cf
	adc  a                                           ; $4172: $8f
	sbc  a                                           ; $4173: $9f
	rra                                              ; $4174: $1f
	add  b                                           ; $4175: $80
	ccf                                              ; $4176: $3f
	add  b                                           ; $4177: $80
	rst  $38                                         ; $4178: $ff
	ld   b, $fe                                      ; $4179: $06 $fe
	rst  $38                                         ; $417b: $ff
	db   $fc                                         ; $417c: $fc
	rst  $38                                         ; $417d: $ff
	ld   hl, sp-$01                                  ; $417e: $f8 $ff
	db   $e4                                         ; $4180: $e4
	add  l                                           ; $4181: $85
	inc  c                                           ; $4182: $0c
	nop                                              ; $4183: $00
	dec  c                                           ; $4184: $0d
	add  d                                           ; $4185: $82
	ld   c, $81                                      ; $4186: $0e $81
	rrca                                             ; $4188: $0f
	ld   [bc], a                                     ; $4189: $02
	db   $e3                                         ; $418a: $e3
	ei                                               ; $418b: $fb
	di                                               ; $418c: $f3
	add  l                                           ; $418d: $85
	ei                                               ; $418e: $fb
	add  b                                           ; $418f: $80
	ld   a, [$cb00]                                  ; $4190: $fa $00 $cb
	add  b                                           ; $4193: $80
	db   $eb                                         ; $4194: $eb
	ld   [$ffcb], sp                                 ; $4195: $08 $cb $ff
	add  d                                           ; $4198: $82
	cp   l                                           ; $4199: $bd
	ld   b, b                                        ; $419a: $40
	ld   [hl+], a                                    ; $419b: $22
	ccf                                              ; $419c: $3f
	sbc  l                                           ; $419d: $9d
	and  b                                           ; $419e: $a0
	add  b                                           ; $419f: $80
	ld   l, $11                                      ; $41a0: $2e $11
	and  h                                           ; $41a2: $a4
	and  a                                           ; $41a3: $a7
	add  hl, bc                                      ; $41a4: $09
	xor  a                                           ; $41a5: $af
	ld   [$48af], sp                                 ; $41a6: $08 $af $48
	inc  bc                                          ; $41a9: $03
	ei                                               ; $41aa: $fb
	dec  de                                          ; $41ab: $1b
	inc  bc                                          ; $41ac: $03
	ei                                               ; $41ad: $fb
	push af                                          ; $41ae: $f5
	rlca                                             ; $41af: $07
	ei                                               ; $41b0: $fb
	rst  $38                                         ; $41b1: $ff
	rlca                                             ; $41b2: $07
	rst  $38                                         ; $41b3: $ff
	add  b                                           ; $41b4: $80
	cp   $02                                         ; $41b5: $fe $02
	rst  $38                                         ; $41b7: $ff
	cp   $e1                                         ; $41b8: $fe $e1
	adc  d                                           ; $41ba: $8a
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $41bb: $cf
	add  c                                           ; $41bc: $81
	ld   c, a                                        ; $41bd: $4f
	nop                                              ; $41be: $00
	xor  b                                           ; $41bf: $a8
	adc  l                                           ; $41c0: $8d
	ld   hl, sp+$13                                  ; $41c1: $f8 $13
	ld   a, [hl]                                     ; $41c3: $7e
	rst  $38                                         ; $41c4: $ff
	ld   a, h                                        ; $41c5: $7c
	rst  $38                                         ; $41c6: $ff
	ld   a, [$f7ff]                                  ; $41c7: $fa $ff $f7
	rst  $38                                         ; $41ca: $ff
	rst  $28                                         ; $41cb: $ef
	rst  $38                                         ; $41cc: $ff
	rst  JumpTable                                         ; $41cd: $df
	rst  $38                                         ; $41ce: $ff
	xor  a                                           ; $41cf: $af
	rst  $38                                         ; $41d0: $ff
	ld   a, a                                        ; $41d1: $7f
	rst  $38                                         ; $41d2: $ff
	ld   l, a                                        ; $41d3: $6f
	rst  $38                                         ; $41d4: $ff
	ld   a, [hl]                                     ; $41d5: $7e
	cp   $80                                         ; $41d6: $fe $80
	db   $fd                                         ; $41d8: $fd
	add  b                                           ; $41d9: $80
	cp   $80                                         ; $41da: $fe $80
	db   $fd                                         ; $41dc: $fd
	add  b                                           ; $41dd: $80
	ei                                               ; $41de: $fb
	add  d                                           ; $41df: $82
	rst  $38                                         ; $41e0: $ff
	add  b                                           ; $41e1: $80
	ld   e, a                                        ; $41e2: $5f
	add  b                                           ; $41e3: $80
	cp   a                                           ; $41e4: $bf
	add  b                                           ; $41e5: $80
	ld   a, a                                        ; $41e6: $7f
	add  d                                           ; $41e7: $82
	rst  $38                                         ; $41e8: $ff
	ld   c, $fe                                      ; $41e9: $0e $fe
	rst  $38                                         ; $41eb: $ff
	db   $fd                                         ; $41ec: $fd
	rst  $38                                         ; $41ed: $ff
	ei                                               ; $41ee: $fb
	rst  $38                                         ; $41ef: $ff
	rst  $10                                         ; $41f0: $d7
	rst  JumpTable                                         ; $41f1: $df
	xor  a                                           ; $41f2: $af
	cp   a                                           ; $41f3: $bf
	ld   e, a                                        ; $41f4: $5f
	ld   a, a                                        ; $41f5: $7f
	cp   a                                           ; $41f6: $bf
	rst  $38                                         ; $41f7: $ff
	ld   a, a                                        ; $41f8: $7f
	add  h                                           ; $41f9: $84
	rst  $38                                         ; $41fa: $ff
	ld   bc, $0100                                   ; $41fb: $01 $00 $01
	add  c                                           ; $41fe: $81
	cp   $02                                         ; $41ff: $fe $02
	rst  $38                                         ; $4201: $ff
	ldh  [$f0], a                                    ; $4202: $e0 $f0
	add  c                                           ; $4204: $81
	rst  $38                                         ; $4205: $ff
	ld   b, $f0                                      ; $4206: $06 $f0
	ldh  [$f6], a                                    ; $4208: $e0 $f6
	cp   $ee                                         ; $420a: $fe $ee
	ld   a, $a7                                      ; $420c: $3e $a7
	add  c                                           ; $420e: $81
	ld   a, a                                        ; $420f: $7f
	nop                                              ; $4210: $00
	rst  $38                                         ; $4211: $ff
	add  b                                           ; $4212: $80
	nop                                              ; $4213: $00
	add  c                                           ; $4214: $81
	rst  $38                                         ; $4215: $ff
	add  b                                           ; $4216: $80
	nop                                              ; $4217: $00
	jr   jr_02e_4222                                 ; $4218: $18 $08

	ld   a, a                                        ; $421a: $7f
	ccf                                              ; $421b: $3f
	ld   a, a                                        ; $421c: $7f
	rst  $20                                         ; $421d: $e7
	ld   a, a                                        ; $421e: $7f
	ld   c, $7f                                      ; $421f: $0e $7f
	inc  e                                           ; $4221: $1c

jr_02e_4222:
	ld   a, a                                        ; $4222: $7f
	jr   c, jr_02e_42a4                              ; $4223: $38 $7f

	ld   [hl], c                                     ; $4225: $71
	ld   a, a                                        ; $4226: $7f
	ld   h, e                                        ; $4227: $63
	ld   a, a                                        ; $4228: $7f
	ld   b, a                                        ; $4229: $47
	ld   a, a                                        ; $422a: $7f
	rrca                                             ; $422b: $0f
	ld   a, a                                        ; $422c: $7f
	ccf                                              ; $422d: $3f
	cp   a                                           ; $422e: $bf
	rra                                              ; $422f: $1f
	cp   a                                           ; $4230: $bf
	ccf                                              ; $4231: $3f
	add  b                                           ; $4232: $80
	cp   a                                           ; $4233: $bf
	ld   c, $be                                      ; $4234: $0e $be
	cp   l                                           ; $4236: $bd
	cp   a                                           ; $4237: $bf
	cp   e                                           ; $4238: $bb
	cp   a                                           ; $4239: $bf
	or   a                                           ; $423a: $b7
	cp   a                                           ; $423b: $bf
	xor  a                                           ; $423c: $af
	cp   a                                           ; $423d: $bf
	rst  $28                                         ; $423e: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $423f: $cf
	rst  $38                                         ; $4240: $ff
	cp   a                                           ; $4241: $bf
	rst  $38                                         ; $4242: $ff
	ld   a, a                                        ; $4243: $7f
	add  d                                           ; $4244: $82
	rst  $38                                         ; $4245: $ff
	ld   d, $fe                                      ; $4246: $16 $fe
	rst  $38                                         ; $4248: $ff
	db   $fc                                         ; $4249: $fc
	rst  $38                                         ; $424a: $ff
	ld   hl, sp-$01                                  ; $424b: $f8 $ff
	ldh  a, [rIE]                                    ; $424d: $f0 $ff
	ldh  [rIE], a                                    ; $424f: $e0 $ff
	pop  bc                                          ; $4251: $c1
	rst  $38                                         ; $4252: $ff
	add  e                                           ; $4253: $83
	rst  $38                                         ; $4254: $ff
	rlca                                             ; $4255: $07
	rst  $38                                         ; $4256: $ff
	rrca                                             ; $4257: $0f
	rst  $38                                         ; $4258: $ff
	inc  de                                          ; $4259: $13
	rst  $38                                         ; $425a: $ff
	ccf                                              ; $425b: $3f
	rst  $38                                         ; $425c: $ff
	sub  e                                           ; $425d: $93
	adc  l                                           ; $425e: $8d
	rrca                                             ; $425f: $0f
	ld   bc, $fbeb                                   ; $4260: $01 $eb $fb
	add  b                                           ; $4263: $80
	nop                                              ; $4264: $00
	add  b                                           ; $4265: $80
	ei                                               ; $4266: $fb
	nop                                              ; $4267: $00
	res  0, b                                        ; $4268: $cb $80
	db   $eb                                         ; $426a: $eb
	nop                                              ; $426b: $00
	res  0, b                                        ; $426c: $cb $80
	ei                                               ; $426e: $fb
	add  b                                           ; $426f: $80
	ld   a, [$fb80]                                  ; $4270: $fa $80 $fb
	ld   bc, $af0f                                   ; $4273: $01 $0f $af
	add  b                                           ; $4276: $80
	and  b                                           ; $4277: $a0
	ld   c, $aa                                      ; $4278: $0e $aa
	xor  a                                           ; $427a: $af
	xor  b                                           ; $427b: $a8
	xor  a                                           ; $427c: $af
	xor  b                                           ; $427d: $a8
	xor  a                                           ; $427e: $af
	xor  b                                           ; $427f: $a8
	xor  a                                           ; $4280: $af
	xor  b                                           ; $4281: $a8
	xor  [hl]                                        ; $4282: $ae
	ld   [$82ae], sp                                 ; $4283: $08 $ae $82
	rst  $38                                         ; $4286: $ff
	ld   a, a                                        ; $4287: $7f
	add  b                                           ; $4288: $80
	nop                                              ; $4289: $00
	nop                                              ; $428a: $00
	rst  $38                                         ; $428b: $ff
	add  b                                           ; $428c: $80
	cp   $08                                         ; $428d: $fe $08
	ld   a, a                                        ; $428f: $7f
	cp   $3e                                         ; $4290: $fe $3e
	rst  $38                                         ; $4292: $ff
	cp   a                                           ; $4293: $bf
	nop                                              ; $4294: $00
	cp   $00                                         ; $4295: $fe $00
	pop  hl                                          ; $4297: $e1
	add  b                                           ; $4298: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4299: $cf
	add  b                                           ; $429a: $80
	rrca                                             ; $429b: $0f
	dec  bc                                          ; $429c: $0b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $429d: $cf
	adc  $4f                                         ; $429e: $ce $4f
	ld   c, h                                        ; $42a0: $4c
	ld   c, a                                        ; $42a1: $4f
	ld   c, c                                        ; $42a2: $49
	adc  a                                           ; $42a3: $8f

jr_02e_42a4:
	add  d                                           ; $42a4: $82
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $42a5: $cf
	push bc                                          ; $42a6: $c5
	adc  a                                           ; $42a7: $8f
	ld   l, e                                        ; $42a8: $6b
	add  c                                           ; $42a9: $81
	ld   hl, sp+$06                                  ; $42aa: $f8 $06
	ld   l, b                                        ; $42ac: $68
	ld   hl, sp+$48                                  ; $42ad: $f8 $48
	ld   hl, sp-$68                                  ; $42af: $f8 $98
	ld   hl, sp+$38                                  ; $42b1: $f8 $38
	add  c                                           ; $42b3: $81
	ld   hl, sp+$04                                  ; $42b4: $f8 $04
	ld   a, b                                        ; $42b6: $78
	ld   hl, sp+$50                                  ; $42b7: $f8 $50
	rst  JumpTable                                         ; $42b9: $df
	adc  a                                           ; $42ba: $8f
	sub  l                                           ; $42bb: $95
	rst  $38                                         ; $42bc: $ff
	ld   c, $fe                                      ; $42bd: $0e $fe
	rst  $38                                         ; $42bf: $ff
	db   $fd                                         ; $42c0: $fd
	rst  $38                                         ; $42c1: $ff
	ei                                               ; $42c2: $fb
	rst  $38                                         ; $42c3: $ff
	rst  $30                                         ; $42c4: $f7
	rst  $38                                         ; $42c5: $ff
	rst  $28                                         ; $42c6: $ef
	rst  $38                                         ; $42c7: $ff
	rst  JumpTable                                         ; $42c8: $df
	rst  $38                                         ; $42c9: $ff
	cp   a                                           ; $42ca: $bf
	rst  $38                                         ; $42cb: $ff
	ld   a, a                                        ; $42cc: $7f
	add  [hl]                                        ; $42cd: $86
	rst  $38                                         ; $42ce: $ff
	adc  l                                           ; $42cf: $8d
	ld   a, a                                        ; $42d0: $7f
	ld   a, [bc]                                     ; $42d1: $0a
	ld   [hl], $b6                                   ; $42d2: $36 $b6
	xor  d                                           ; $42d4: $aa
	cp   [hl]                                        ; $42d5: $be
	add  b                                           ; $42d6: $80
	cp   [hl]                                        ; $42d7: $be
	add  b                                           ; $42d8: $80
	cp   [hl]                                        ; $42d9: $be
	add  b                                           ; $42da: $80
	cp   [hl]                                        ; $42db: $be
	sub  l                                           ; $42dc: $95
	add  b                                           ; $42dd: $80
	add  b                                           ; $42de: $80
	add  c                                           ; $42df: $81
	cp   a                                           ; $42e0: $bf
	dec  b                                           ; $42e1: $05
	jr   z, jr_02e_4353                              ; $42e2: $28 $6f

	rlca                                             ; $42e4: $07
	ld   a, a                                        ; $42e5: $7f
	ld   a, $7e                                      ; $42e6: $3e $7e
	add  b                                           ; $42e8: $80
	ld   a, a                                        ; $42e9: $7f
	dec  bc                                          ; $42ea: $0b
	ld   a, [hl]                                     ; $42eb: $7e
	ld   a, a                                        ; $42ec: $7f
	add  d                                           ; $42ed: $82
	ld   bc, $fd00                                   ; $42ee: $01 $00 $fd
	db   $fc                                         ; $42f1: $fc
	db   $fd                                         ; $42f2: $fd
	cp   [hl]                                        ; $42f3: $be
	ld   a, a                                        ; $42f4: $7f
	ld   a, $7e                                      ; $42f5: $3e $7e
	add  b                                           ; $42f7: $80
	ld   a, h                                        ; $42f8: $7c
	ld   a, [bc]                                     ; $42f9: $0a
	ld   a, b                                        ; $42fa: $78
	ld   a, c                                        ; $42fb: $79
	add  c                                           ; $42fc: $81
	inc  bc                                          ; $42fd: $03
	xor  e                                           ; $42fe: $ab
	rst  $38                                         ; $42ff: $ff

Jump_02e_4300:
	rlca                                             ; $4300: $07
	rst  $38                                         ; $4301: $ff
	rrca                                             ; $4302: $0f
	rst  $38                                         ; $4303: $ff
	ld   e, a                                        ; $4304: $5f
	add  b                                           ; $4305: $80
	ccf                                              ; $4306: $3f
	add  b                                           ; $4307: $80
	ld   a, a                                        ; $4308: $7f
	add  e                                           ; $4309: $83
	rst  $38                                         ; $430a: $ff
	rla                                              ; $430b: $17
	cp   $ff                                         ; $430c: $fe $ff
	db   $fc                                         ; $430e: $fc
	rst  $38                                         ; $430f: $ff
	ld   hl, sp-$01                                  ; $4310: $f8 $ff
	ldh  a, [rIE]                                    ; $4312: $f0 $ff
	ldh  [rIE], a                                    ; $4314: $e0 $ff
	pop  bc                                          ; $4316: $c1
	rst  $38                                         ; $4317: $ff
	add  e                                           ; $4318: $83
	rst  $38                                         ; $4319: $ff
	rlca                                             ; $431a: $07
	rst  $38                                         ; $431b: $ff
	rrca                                             ; $431c: $0f
	rst  $38                                         ; $431d: $ff
	rra                                              ; $431e: $1f
	rst  $38                                         ; $431f: $ff
	ccf                                              ; $4320: $3f
	rst  $38                                         ; $4321: $ff
	ld   a, e                                        ; $4322: $7b
	ei                                               ; $4323: $fb
	adc  h                                           ; $4324: $8c
	rst  $38                                         ; $4325: $ff
	nop                                              ; $4326: $00
	rra                                              ; $4327: $1f
	adc  l                                           ; $4328: $8d
	rrca                                             ; $4329: $0f
	nop                                              ; $432a: $00
	db   $eb                                         ; $432b: $eb
	adc  l                                           ; $432c: $8d
	ei                                               ; $432d: $fb
	ld   [bc], a                                     ; $432e: $02
	ld   [bc], a                                     ; $432f: $02
	and  d                                           ; $4330: $a2
	and  b                                           ; $4331: $a0
	add  b                                           ; $4332: $80
	cp   h                                           ; $4333: $bc
	nop                                              ; $4334: $00
	add  h                                           ; $4335: $84
	add  b                                           ; $4336: $80
	sub  h                                           ; $4337: $94
	ld   [bc], a                                     ; $4338: $02
	cp   d                                           ; $4339: $ba
	add  b                                           ; $433a: $80
	and  b                                           ; $433b: $a0
	add  e                                           ; $433c: $83
	cp   [hl]                                        ; $433d: $be
	nop                                              ; $433e: $00
	ld   [hl-], a                                    ; $433f: $32
	add  a                                           ; $4340: $87
	sub  d                                           ; $4341: $92
	add  b                                           ; $4342: $80
	cp   $82                                         ; $4343: $fe $82
	sub  d                                           ; $4345: $92
	ld   a, [bc]                                     ; $4346: $0a
	add  hl, de                                      ; $4347: $19
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4348: $cf
	push bc                                          ; $4349: $c5
	adc  a                                           ; $434a: $8f
	adc  e                                           ; $434b: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $434c: $cf
	jp   $838f                                       ; $434d: $c3 $8f $83


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4350: $cf
	rst  ToBoot                                         ; $4351: $c7
	add  b                                           ; $4352: $80

jr_02e_4353:
	adc  a                                           ; $4353: $8f
	add  b                                           ; $4354: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4355: $cf
	ld   bc, $688f                                   ; $4356: $01 $8f $68
	adc  l                                           ; $4359: $8d
	ld   hl, sp+$00                                  ; $435a: $f8 $00
	nop                                              ; $435c: $00
	add  e                                           ; $435d: $83
	rst  $38                                         ; $435e: $ff
	nop                                              ; $435f: $00
	rst  $28                                         ; $4360: $ef
	add  c                                           ; $4361: $81
	rst  $38                                         ; $4362: $ff
	ld   c, $be                                      ; $4363: $0e $be
	rst  JumpTable                                         ; $4365: $df
	adc  l                                           ; $4366: $8d
	rst  $38                                         ; $4367: $ff
	ei                                               ; $4368: $fb
	rst  $38                                         ; $4369: $ff
	rst  $30                                         ; $436a: $f7
	rst  $38                                         ; $436b: $ff
	rst  $28                                         ; $436c: $ef
	rst  $38                                         ; $436d: $ff
	rst  JumpTable                                         ; $436e: $df
	rst  $38                                         ; $436f: $ff
	cp   a                                           ; $4370: $bf
	rst  $38                                         ; $4371: $ff
	ld   a, a                                        ; $4372: $7f
	sub  [hl]                                        ; $4373: $96
	rst  $38                                         ; $4374: $ff
	add  c                                           ; $4375: $81
	ld   a, a                                        ; $4376: $7f
	ld   bc, $7fff                                   ; $4377: $01 $ff $7f
	add  b                                           ; $437a: $80
	ccf                                              ; $437b: $3f
	ld   bc, $9f9c                                   ; $437c: $01 $9c $9f
	add  b                                           ; $437f: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4380: $cf
	inc  bc                                          ; $4381: $03
	db   $e3                                         ; $4382: $e3
	rst  $20                                         ; $4383: $e7
	rst  $30                                         ; $4384: $f7
	ldh  a, [$81]                                    ; $4385: $f0 $81
	add  b                                           ; $4387: $80
	inc  bc                                          ; $4388: $03
	cp   [hl]                                        ; $4389: $be
	ld   a, $be                                      ; $438a: $3e $be
	cp   d                                           ; $438c: $ba
	add  c                                           ; $438d: $81
	cp   [hl]                                        ; $438e: $be
	ld   [bc], a                                     ; $438f: $02
	xor  [hl]                                        ; $4390: $ae
	or   [hl]                                        ; $4391: $b6
	and  d                                           ; $4392: $a2
	add  b                                           ; $4393: $80
	cp   [hl]                                        ; $4394: $be
	dec  c                                           ; $4395: $0d
	ld   a, $3f                                      ; $4396: $3e $3f
	ld   bc, $7f00                                   ; $4398: $01 $00 $7f
	ld   a, [hl]                                     ; $439b: $7e
	ld   a, a                                        ; $439c: $7f
	ld   [hl], h                                     ; $439d: $74
	ld   a, a                                        ; $439e: $7f
	ld   a, c                                        ; $439f: $79
	ld   a, a                                        ; $43a0: $7f
	ld   e, e                                        ; $43a1: $5b
	ld   l, a                                        ; $43a2: $6f
	ld   b, a                                        ; $43a3: $47
	add  c                                           ; $43a4: $81
	ld   a, a                                        ; $43a5: $7f
	inc  b                                           ; $43a6: $04
	ccf                                              ; $43a7: $3f
	rst  $38                                         ; $43a8: $ff
	ccf                                              ; $43a9: $3f
	rst  $38                                         ; $43aa: $ff
	ld   a, a                                        ; $43ab: $7f
	add  e                                           ; $43ac: $83
	rst  $38                                         ; $43ad: $ff
	ld   d, $fe                                      ; $43ae: $16 $fe
	rst  $38                                         ; $43b0: $ff
	db   $fc                                         ; $43b1: $fc
	rst  $38                                         ; $43b2: $ff
	ld   hl, sp-$01                                  ; $43b3: $f8 $ff
	ldh  a, [rIE]                                    ; $43b5: $f0 $ff
	ldh  [rIE], a                                    ; $43b7: $e0 $ff
	pop  bc                                          ; $43b9: $c1
	rst  $38                                         ; $43ba: $ff
	add  e                                           ; $43bb: $83
	rst  $38                                         ; $43bc: $ff
	rlca                                             ; $43bd: $07
	rst  $38                                         ; $43be: $ff
	rlca                                             ; $43bf: $07
	rst  $38                                         ; $43c0: $ff
	rlca                                             ; $43c1: $07
	rst  $38                                         ; $43c2: $ff
	rlca                                             ; $43c3: $07
	rst  $38                                         ; $43c4: $ff
	ld   d, a                                        ; $43c5: $57
	sub  e                                           ; $43c6: $93
	rst  $38                                         ; $43c7: $ff
	nop                                              ; $43c8: $00
	di                                               ; $43c9: $f3
	add  c                                           ; $43ca: $81
	rst  $38                                         ; $43cb: $ff
	ld   bc, $fbf7                                   ; $43cc: $01 $f7 $fb
	add  d                                           ; $43cf: $82
	rst  $38                                         ; $43d0: $ff
	nop                                              ; $43d1: $00
	rra                                              ; $43d2: $1f
	adc  l                                           ; $43d3: $8d
	rrca                                             ; $43d4: $0f
	ld   bc, $faea                                   ; $43d5: $01 $ea $fa
	adc  h                                           ; $43d8: $8c
	ei                                               ; $43d9: $fb
	rlca                                             ; $43da: $07
	ld   e, $be                                      ; $43db: $1e $be
	ld   a, $be                                      ; $43dd: $3e $be
	ld   a, $be                                      ; $43df: $3e $be
	and  b                                           ; $43e1: $a0
	add  b                                           ; $43e2: $80
	add  [hl]                                        ; $43e3: $86
	cp   [hl]                                        ; $43e4: $be
	nop                                              ; $43e5: $00
	ld   [de], a                                     ; $43e6: $12
	add  e                                           ; $43e7: $83
	sub  d                                           ; $43e8: $92
	add  b                                           ; $43e9: $80
	cp   $00                                         ; $43ea: $fe $00
	sub  d                                           ; $43ec: $92
	add  c                                           ; $43ed: $81
	cp   $01                                         ; $43ee: $fe $01
	sub  d                                           ; $43f0: $92
	cp   $80                                         ; $43f1: $fe $80
	nop                                              ; $43f3: $00
	nop                                              ; $43f4: $00
	rra                                              ; $43f5: $1f
	add  b                                           ; $43f6: $80
	ld   c, a                                        ; $43f7: $4f
	add  b                                           ; $43f8: $80
	adc  a                                           ; $43f9: $8f
	add  b                                           ; $43fa: $80
	ld   c, a                                        ; $43fb: $4f
	add  b                                           ; $43fc: $80
	adc  a                                           ; $43fd: $8f
	add  b                                           ; $43fe: $80
	ld   c, a                                        ; $43ff: $4f

Jump_02e_4400:
	add  b                                           ; $4400: $80
	adc  a                                           ; $4401: $8f
	add  b                                           ; $4402: $80
	ld   c, a                                        ; $4403: $4f
	ld   bc, $688f                                   ; $4404: $01 $8f $68
	adc  l                                           ; $4407: $8d
	ld   hl, sp+$08                                  ; $4408: $f8 $08
	rrca                                             ; $440a: $0f
	rst  $38                                         ; $440b: $ff
	rst  $28                                         ; $440c: $ef
	rst  $38                                         ; $440d: $ff
	rst  JumpTable                                         ; $440e: $df
	rst  $38                                         ; $440f: $ff
	cp   a                                           ; $4410: $bf
	rst  $38                                         ; $4411: $ff
	ld   a, a                                        ; $4412: $7f
	and  c                                           ; $4413: $a1
	rst  $38                                         ; $4414: $ff
	ld   c, $fe                                      ; $4415: $0e $fe
	rst  $38                                         ; $4417: $ff
	db   $fd                                         ; $4418: $fd
	rst  $38                                         ; $4419: $ff
	ei                                               ; $441a: $fb
	rst  $38                                         ; $441b: $ff
	rst  $30                                         ; $441c: $f7
	rst  $38                                         ; $441d: $ff
	rst  $28                                         ; $441e: $ef
	rst  $38                                         ; $441f: $ff
	rst  JumpTable                                         ; $4420: $df
	rst  $38                                         ; $4421: $ff
	cp   a                                           ; $4422: $bf
	rst  $38                                         ; $4423: $ff
	ld   a, a                                        ; $4424: $7f
	add  h                                           ; $4425: $84
	rst  $38                                         ; $4426: $ff
	adc  [hl]                                        ; $4427: $8e
	cp   $87                                         ; $4428: $fe $87
	ld   a, a                                        ; $442a: $7f
	ld   h, $7e                                      ; $442b: $26 $7e
	ld   a, a                                        ; $442d: $7f
	ld   a, h                                        ; $442e: $7c
	ld   a, a                                        ; $442f: $7f
	ld   a, b                                        ; $4430: $78
	ld   a, a                                        ; $4431: $7f
	ld   [hl], b                                     ; $4432: $70
	rst  $38                                         ; $4433: $ff
	ldh  [rIE], a                                    ; $4434: $e0 $ff
	ret  nz                                          ; $4436: $c0

	rst  $38                                         ; $4437: $ff
	add  b                                           ; $4438: $80
	rst  $38                                         ; $4439: $ff
	nop                                              ; $443a: $00
	rst  $38                                         ; $443b: $ff
	nop                                              ; $443c: $00
	rst  $38                                         ; $443d: $ff
	nop                                              ; $443e: $00
	rst  $38                                         ; $443f: $ff
	nop                                              ; $4440: $00
	rst  $38                                         ; $4441: $ff
	dec  b                                           ; $4442: $05
	rst  $38                                         ; $4443: $ff
	rlca                                             ; $4444: $07
	rst  $38                                         ; $4445: $ff
	rlca                                             ; $4446: $07
	rst  $38                                         ; $4447: $ff
	rlca                                             ; $4448: $07
	rst  $38                                         ; $4449: $ff
	rla                                              ; $444a: $17
	rst  $38                                         ; $444b: $ff
	rla                                              ; $444c: $17
	rst  $38                                         ; $444d: $ff
	rla                                              ; $444e: $17
	rst  $38                                         ; $444f: $ff
	rla                                              ; $4450: $17
	rst  $38                                         ; $4451: $ff
	ld   d, a                                        ; $4452: $57
	sbc  l                                           ; $4453: $9d
	rst  $38                                         ; $4454: $ff
	nop                                              ; $4455: $00
	rra                                              ; $4456: $1f
	adc  l                                           ; $4457: $8d
	rrca                                             ; $4458: $0f
	ld   bc, $faea                                   ; $4459: $01 $ea $fa
	add  h                                           ; $445c: $84
	ei                                               ; $445d: $fb
	nop                                              ; $445e: $00
	res  0, b                                        ; $445f: $cb $80
	db   $eb                                         ; $4461: $eb
	nop                                              ; $4462: $00
	res  0, b                                        ; $4463: $cb $80
	ld   a, [$0180]                                  ; $4465: $fa $80 $01
	inc  b                                           ; $4468: $04
	rra                                              ; $4469: $1f
	sbc  a                                           ; $446a: $9f
	ccf                                              ; $446b: $3f
	cp   a                                           ; $446c: $bf
	ccf                                              ; $446d: $3f
	add  l                                           ; $446e: $85
	cp   a                                           ; $446f: $bf
	inc  b                                           ; $4470: $04
	ccf                                              ; $4471: $3f
	cp   a                                           ; $4472: $bf
	nop                                              ; $4473: $00
	add  b                                           ; $4474: $80
	ld   a, a                                        ; $4475: $7f
	add  l                                           ; $4476: $85
	rst  $38                                         ; $4477: $ff
	nop                                              ; $4478: $00
	cp   $80                                         ; $4479: $fe $80
	rst  $38                                         ; $447b: $ff
	nop                                              ; $447c: $00
	cp   $80                                         ; $447d: $fe $80
	rst  $38                                         ; $447f: $ff
	add  b                                           ; $4480: $80
	nop                                              ; $4481: $00
	nop                                              ; $4482: $00
	rra                                              ; $4483: $1f
	add  b                                           ; $4484: $80
	ld   c, a                                        ; $4485: $4f
	add  b                                           ; $4486: $80
	adc  a                                           ; $4487: $8f
	add  b                                           ; $4488: $80
	ld   c, a                                        ; $4489: $4f
	add  b                                           ; $448a: $80
	adc  a                                           ; $448b: $8f
	add  b                                           ; $448c: $80
	ld   c, a                                        ; $448d: $4f
	add  b                                           ; $448e: $80
	rrca                                             ; $448f: $0f
	add  b                                           ; $4490: $80
	ld   c, a                                        ; $4491: $4f
	ld   bc, $e80f                                   ; $4492: $01 $0f $e8
	adc  l                                           ; $4495: $8d
	ld   hl, sp-$7c                                  ; $4496: $f8 $84
	rst  $38                                         ; $4498: $ff
	add  b                                           ; $4499: $80
	nop                                              ; $449a: $00
	rlca                                             ; $449b: $07
	jp   Jump_02e_4400                               ; $449c: $c3 $00 $44


	nop                                              ; $449f: $00
	adc  b                                           ; $44a0: $88
	nop                                              ; $44a1: $00
	rrca                                             ; $44a2: $0f
	nop                                              ; $44a3: $00
	add  h                                           ; $44a4: $84
	rst  $38                                         ; $44a5: $ff
	add  b                                           ; $44a6: $80
	nop                                              ; $44a7: $00
	ld   d, $c3                                      ; $44a8: $16 $c3
	nop                                              ; $44aa: $00
	ld   b, h                                        ; $44ab: $44
	nop                                              ; $44ac: $00
	adc  b                                           ; $44ad: $88
	nop                                              ; $44ae: $00
	rrca                                             ; $44af: $0f
	nop                                              ; $44b0: $00
	ld   hl, sp-$01                                  ; $44b1: $f8 $ff
	rst  $30                                         ; $44b3: $f7
	rst  $38                                         ; $44b4: $ff
	rst  $28                                         ; $44b5: $ef
	rst  $38                                         ; $44b6: $ff
	rra                                              ; $44b7: $1f
	nop                                              ; $44b8: $00
	jp   Jump_02e_4400                               ; $44b9: $c3 $00 $44


	nop                                              ; $44bc: $00
	adc  b                                           ; $44bd: $88
	nop                                              ; $44be: $00
	rrca                                             ; $44bf: $0f
	add  b                                           ; $44c0: $80
	nop                                              ; $44c1: $00
	add  h                                           ; $44c2: $84
	rst  $38                                         ; $44c3: $ff
	rlca                                             ; $44c4: $07
	nop                                              ; $44c5: $00
	jp   Jump_02e_4400                               ; $44c6: $c3 $00 $44


	nop                                              ; $44c9: $00
	adc  b                                           ; $44ca: $88
	nop                                              ; $44cb: $00
	rrca                                             ; $44cc: $0f
	add  b                                           ; $44cd: $80
	nop                                              ; $44ce: $00
	add  h                                           ; $44cf: $84
	cp   $38                                         ; $44d0: $fe $38
	nop                                              ; $44d2: $00
	jp   nz, Jump_02e_4400                           ; $44d3: $c2 $00 $44

	nop                                              ; $44d6: $00
	adc  b                                           ; $44d7: $88
	nop                                              ; $44d8: $00
	ld   c, $00                                      ; $44d9: $0e $00
	ld   a, [bc]                                     ; $44db: $0a
	ld   a, a                                        ; $44dc: $7f
	ld   h, b                                        ; $44dd: $60
	ld   a, a                                        ; $44de: $7f
	ld   b, b                                        ; $44df: $40
	ld   a, a                                        ; $44e0: $7f
	ld   d, l                                        ; $44e1: $55
	nop                                              ; $44e2: $00
	ld   b, e                                        ; $44e3: $43
	nop                                              ; $44e4: $00
	ld   b, h                                        ; $44e5: $44
	nop                                              ; $44e6: $00
	ld   [$0f00], sp                                 ; $44e7: $08 $00 $0f
	nop                                              ; $44ea: $00
	xor  d                                           ; $44eb: $aa
	rst  $38                                         ; $44ec: $ff
	nop                                              ; $44ed: $00
	rst  $38                                         ; $44ee: $ff
	nop                                              ; $44ef: $00
	rst  $38                                         ; $44f0: $ff
	ld   d, l                                        ; $44f1: $55
	nop                                              ; $44f2: $00
	jp   Jump_02e_4400                               ; $44f3: $c3 $00 $44


	nop                                              ; $44f6: $00
	adc  b                                           ; $44f7: $88
	nop                                              ; $44f8: $00
	rrca                                             ; $44f9: $0f
	nop                                              ; $44fa: $00
	cp   a                                           ; $44fb: $bf
	rst  $38                                         ; $44fc: $ff
	rra                                              ; $44fd: $1f
	rst  $38                                         ; $44fe: $ff
	rra                                              ; $44ff: $1f
	rst  $38                                         ; $4500: $ff
	ld   b, b                                        ; $4501: $40
	nop                                              ; $4502: $00
	jp   Jump_02e_4400                               ; $4503: $c3 $00 $44


	nop                                              ; $4506: $00
	adc  b                                           ; $4507: $88
	nop                                              ; $4508: $00
	rrca                                             ; $4509: $0f
	nop                                              ; $450a: $00
	add  h                                           ; $450b: $84
	rst  $38                                         ; $450c: $ff
	add  b                                           ; $450d: $80
	nop                                              ; $450e: $00
	rlca                                             ; $450f: $07
	jp   Jump_02e_4400                               ; $4510: $c3 $00 $44


	nop                                              ; $4513: $00
	adc  b                                           ; $4514: $88
	nop                                              ; $4515: $00
	rrca                                             ; $4516: $0f
	nop                                              ; $4517: $00
	add  h                                           ; $4518: $84
	rst  $38                                         ; $4519: $ff
	add  b                                           ; $451a: $80
	nop                                              ; $451b: $00
	ld   [$00c3], sp                                 ; $451c: $08 $c3 $00
	ld   b, h                                        ; $451f: $44
	nop                                              ; $4520: $00
	adc  b                                           ; $4521: $88
	nop                                              ; $4522: $00
	rrca                                             ; $4523: $0f
	nop                                              ; $4524: $00
	rra                                              ; $4525: $1f
	adc  l                                           ; $4526: $8d
	rrca                                             ; $4527: $0f
	ld   bc, $aaba                                   ; $4528: $01 $ba $aa
	add  b                                           ; $452b: $80
	ld   d, l                                        ; $452c: $55
	add  b                                           ; $452d: $80
	xor  d                                           ; $452e: $aa
	add  b                                           ; $452f: $80
	ld   d, l                                        ; $4530: $55
	add  b                                           ; $4531: $80
	xor  d                                           ; $4532: $aa
	add  b                                           ; $4533: $80
	ld   d, l                                        ; $4534: $55
	add  b                                           ; $4535: $80
	xor  d                                           ; $4536: $aa
	add  b                                           ; $4537: $80
	ld   d, l                                        ; $4538: $55
	add  b                                           ; $4539: $80
	ld   a, [hl+]                                    ; $453a: $2a
	add  b                                           ; $453b: $80
	ld   d, l                                        ; $453c: $55
	add  b                                           ; $453d: $80
	xor  d                                           ; $453e: $aa
	add  b                                           ; $453f: $80
	ld   d, l                                        ; $4540: $55
	add  b                                           ; $4541: $80
	xor  d                                           ; $4542: $aa
	rlca                                             ; $4543: $07
	ld   d, b                                        ; $4544: $50
	ld   d, l                                        ; $4545: $55
	and  l                                           ; $4546: $a5
	xor  d                                           ; $4547: $aa
	ld   a, [bc]                                     ; $4548: $0a
	ld   d, l                                        ; $4549: $55
	rst  $38                                         ; $454a: $ff
	xor  d                                           ; $454b: $aa
	add  b                                           ; $454c: $80
	ld   d, l                                        ; $454d: $55
	add  b                                           ; $454e: $80
	xor  d                                           ; $454f: $aa
	ld   [bc], a                                     ; $4550: $02
	ld   b, b                                        ; $4551: $40
	ld   d, l                                        ; $4552: $55
	dec  d                                           ; $4553: $15
	add  b                                           ; $4554: $80
	xor  d                                           ; $4555: $aa
	ld   b, $55                                      ; $4556: $06 $55
	ld   d, b                                        ; $4558: $50
	xor  a                                           ; $4559: $af
	add  b                                           ; $455a: $80
	ld   a, a                                        ; $455b: $7f
	ld   [$80af], a                                  ; $455c: $ea $af $80
	ld   c, a                                        ; $455f: $4f
	add  b                                           ; $4560: $80
	xor  a                                           ; $4561: $af
	ld   a, [bc]                                     ; $4562: $0a
	ld   [de], a                                     ; $4563: $12
	ld   d, a                                        ; $4564: $57
	ld   b, b                                        ; $4565: $40
	cp   a                                           ; $4566: $bf
	nop                                              ; $4567: $00
	rst  $38                                         ; $4568: $ff
	nop                                              ; $4569: $00
	rst  $38                                         ; $456a: $ff
	nop                                              ; $456b: $00
	rst  $38                                         ; $456c: $ff
	xor  l                                           ; $456d: $ad
	add  b                                           ; $456e: $80
	ld   hl, sp+$0a                                  ; $456f: $f8 $0a
	ld   sp, hl                                      ; $4571: $f9
	ld   hl, sp-$05                                  ; $4572: $f8 $fb
	xor  b                                           ; $4574: $a8
	rst  $38                                         ; $4575: $ff
	ld   bc, $0aff                                   ; $4576: $01 $ff $0a
	cp   $5c                                         ; $4579: $fe $5c
	db   $fc                                         ; $457b: $fc
	add  b                                           ; $457c: $80
	ld   sp, hl                                      ; $457d: $f9
	add  hl, bc                                      ; $457e: $09
	nop                                              ; $457f: $00
	rst  $38                                         ; $4580: $ff
	and  [hl]                                        ; $4581: $a6
	ei                                               ; $4582: $fb
	db   $10                                         ; $4583: $10
	rst  $30                                         ; $4584: $f7
	ld   h, b                                        ; $4585: $60
	xor  a                                           ; $4586: $af
	or   l                                           ; $4587: $b5
	ccf                                              ; $4588: $3f
	add  b                                           ; $4589: $80
	ld   a, a                                        ; $458a: $7f
	add  d                                           ; $458b: $82
	rst  $38                                         ; $458c: $ff
	ld   b, $00                                      ; $458d: $06 $00
	rst  $38                                         ; $458f: $ff
	xor  d                                           ; $4590: $aa
	rst  $38                                         ; $4591: $ff
	nop                                              ; $4592: $00
	rst  $38                                         ; $4593: $ff
	xor  d                                           ; $4594: $aa
	add  a                                           ; $4595: $87
	rst  $38                                         ; $4596: $ff
	ld   b, $00                                      ; $4597: $06 $00
	rst  $38                                         ; $4599: $ff
	xor  d                                           ; $459a: $aa
	rst  $38                                         ; $459b: $ff
	nop                                              ; $459c: $00
	rst  $38                                         ; $459d: $ff
	xor  d                                           ; $459e: $aa
	add  a                                           ; $459f: $87
	rst  $38                                         ; $45a0: $ff
	ld   b, $00                                      ; $45a1: $06 $00
	rst  $38                                         ; $45a3: $ff
	xor  d                                           ; $45a4: $aa
	rst  $38                                         ; $45a5: $ff
	nop                                              ; $45a6: $00
	rst  $38                                         ; $45a7: $ff
	xor  d                                           ; $45a8: $aa
	add  a                                           ; $45a9: $87
	rst  $38                                         ; $45aa: $ff
	ld   b, $00                                      ; $45ab: $06 $00
	rst  $38                                         ; $45ad: $ff
	xor  e                                           ; $45ae: $ab
	cp   $01                                         ; $45af: $fe $01
	rst  $38                                         ; $45b1: $ff
	xor  d                                           ; $45b2: $aa
	add  a                                           ; $45b3: $87
	cp   $07                                         ; $45b4: $fe $07
	nop                                              ; $45b6: $00
	rst  $38                                         ; $45b7: $ff
	ld   a, [hl+]                                    ; $45b8: $2a
	rst  $38                                         ; $45b9: $ff
	nop                                              ; $45ba: $00
	ld   a, a                                        ; $45bb: $7f
	xor  d                                           ; $45bc: $aa
	rst  $38                                         ; $45bd: $ff
	add  [hl]                                        ; $45be: $86
	ld   a, a                                        ; $45bf: $7f
	ld   b, $00                                      ; $45c0: $06 $00
	rst  $38                                         ; $45c2: $ff

jr_02e_45c3:
	xor  d                                           ; $45c3: $aa
	rst  $38                                         ; $45c4: $ff
	nop                                              ; $45c5: $00
	rst  $38                                         ; $45c6: $ff
	xor  d                                           ; $45c7: $aa
	add  a                                           ; $45c8: $87
	rst  $38                                         ; $45c9: $ff
	ld   b, $00                                      ; $45ca: $06 $00
	rst  $38                                         ; $45cc: $ff
	xor  d                                           ; $45cd: $aa
	rst  $38                                         ; $45ce: $ff
	nop                                              ; $45cf: $00
	rst  $38                                         ; $45d0: $ff
	xor  d                                           ; $45d1: $aa
	add  a                                           ; $45d2: $87
	rst  $38                                         ; $45d3: $ff
	ld   b, $00                                      ; $45d4: $06 $00
	rst  $38                                         ; $45d6: $ff
	xor  d                                           ; $45d7: $aa
	rst  $38                                         ; $45d8: $ff
	nop                                              ; $45d9: $00
	rst  $38                                         ; $45da: $ff
	xor  d                                           ; $45db: $aa
	add  a                                           ; $45dc: $87
	rst  $38                                         ; $45dd: $ff
	add  hl, bc                                      ; $45de: $09
	nop                                              ; $45df: $00
	rst  $38                                         ; $45e0: $ff
	sbc  d                                           ; $45e1: $9a
	rst  $28                                         ; $45e2: $ef
	inc  a                                           ; $45e3: $3c
	rst  $30                                         ; $45e4: $f7
	sbc  d                                           ; $45e5: $9a
	ei                                               ; $45e6: $fb
	call c, $80fc                                    ; $45e7: $dc $fc $80
	cp   $82                                         ; $45ea: $fe $82
	rst  $38                                         ; $45ec: $ff
	nop                                              ; $45ed: $00
	ldh  [$80], a                                    ; $45ee: $e0 $80
	rrca                                             ; $45f0: $0f
	ld   a, [bc]                                     ; $45f1: $0a
	adc  a                                           ; $45f2: $8f
	rrca                                             ; $45f3: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f4: $cf
	dec  b                                           ; $45f5: $05
	rst  $38                                         ; $45f6: $ff
	nop                                              ; $45f7: $00
	rst  $38                                         ; $45f8: $ff
	ret  nc                                          ; $45f9: $d0

	ld   a, a                                        ; $45fa: $7f
	ld   a, [hl-]                                    ; $45fb: $3a
	ccf                                              ; $45fc: $3f
	add  b                                           ; $45fd: $80
	sbc  a                                           ; $45fe: $9f
	and  h                                           ; $45ff: $a4
	nop                                              ; $4600: $00
	nop                                              ; $4601: $00
	ret  nz                                          ; $4602: $c0

	add  l                                           ; $4603: $85
	nop                                              ; $4604: $00
	nop                                              ; $4605: $00
	ret  nz                                          ; $4606: $c0

	sub  [hl]                                        ; $4607: $96
	nop                                              ; $4608: $00
	add  [hl]                                        ; $4609: $86
	ret  nz                                          ; $460a: $c0

	sub  l                                           ; $460b: $95
	nop                                              ; $460c: $00
	add  [hl]                                        ; $460d: $86
	ret  nz                                          ; $460e: $c0

	rst  $38                                         ; $460f: $ff
	nop                                              ; $4610: $00
	rst  $38                                         ; $4611: $ff
	nop                                              ; $4612: $00
	rst  $38                                         ; $4613: $ff
	nop                                              ; $4614: $00
	rst  $38                                         ; $4615: $ff
	nop                                              ; $4616: $00
	rst  $38                                         ; $4617: $ff
	nop                                              ; $4618: $00
	rst  $38                                         ; $4619: $ff
	nop                                              ; $461a: $00
	rst  $38                                         ; $461b: $ff
	nop                                              ; $461c: $00
	rst  $38                                         ; $461d: $ff
	nop                                              ; $461e: $00
	rst  $38                                         ; $461f: $ff
	nop                                              ; $4620: $00
	rst  $38                                         ; $4621: $ff
	nop                                              ; $4622: $00

jr_02e_4623:
	rst  $38                                         ; $4623: $ff
	nop                                              ; $4624: $00
	rst  $38                                         ; $4625: $ff
	nop                                              ; $4626: $00
	rst  $38                                         ; $4627: $ff
	nop                                              ; $4628: $00
	rst  $38                                         ; $4629: $ff
	nop                                              ; $462a: $00
	rst  $38                                         ; $462b: $ff
	nop                                              ; $462c: $00
	add  c                                           ; $462d: $81
	nop                                              ; $462e: $00
	dec  d                                           ; $462f: $15
	ld   [bc], a                                     ; $4630: $02
	add  d                                           ; $4631: $82
	nop                                              ; $4632: $00
	dec  bc                                          ; $4633: $0b
	cp   $00                                         ; $4634: $fe $00
	ld   [bc], a                                     ; $4636: $02
	nop                                              ; $4637: $00
	ld   [bc], a                                     ; $4638: $02
	nop                                              ; $4639: $00
	ld   bc, $0908                                   ; $463a: $01 $08 $09
	ld   [hl], b                                     ; $463d: $70
	ld   [hl], c                                     ; $463e: $71
	nop                                              ; $463f: $00
	add  b                                           ; $4640: $80
	jr   nz, jr_02e_45c3                             ; $4641: $20 $80

	and  b                                           ; $4643: $a0
	add  d                                           ; $4644: $82
	and  h                                           ; $4645: $a4
	ld   bc, $8c8d                                   ; $4646: $01 $8d $8c
	add  b                                           ; $4649: $80
	db   $f4                                         ; $464a: $f4
	ld   bc, $f8f9                                   ; $464b: $01 $f9 $f8
	add  b                                           ; $464e: $80
	add  d                                           ; $464f: $82
	nop                                              ; $4650: $00
	ld   hl, sp-$80                                  ; $4651: $f8 $80
	nop                                              ; $4653: $00
	inc  b                                           ; $4654: $04
	ld   bc, $0109                                   ; $4655: $01 $09 $01
	rlca                                             ; $4658: $07
	ld   b, $80                                      ; $4659: $06 $80
	rlca                                             ; $465b: $07
	nop                                              ; $465c: $00
	rra                                              ; $465d: $1f
	add  e                                           ; $465e: $83
	rrca                                             ; $465f: $0f
	nop                                              ; $4660: $00
	db   $10                                         ; $4661: $10
	add  c                                           ; $4662: $81
	nop                                              ; $4663: $00
	nop                                              ; $4664: $00
	db   $10                                         ; $4665: $10
	add  c                                           ; $4666: $81
	nop                                              ; $4667: $00
	ld   [$0021], sp                                 ; $4668: $08 $21 $00
	ld   b, d                                        ; $466b: $42
	nop                                              ; $466c: $00
	ld   b, $3c                                      ; $466d: $06 $3c
	add  hl, sp                                      ; $466f: $39
	nop                                              ; $4670: $00
	add  d                                           ; $4671: $82
	add  b                                           ; $4672: $80
	ld   a, d                                        ; $4673: $7a
	ld   [$f9fa], sp                                 ; $4674: $08 $fa $f9
	ld   hl, sp-$02                                  ; $4677: $f8 $fe
	ldh  [$f8], a                                    ; $4679: $e0 $f8
	nop                                              ; $467b: $00
	ld   b, b                                        ; $467c: $40
	nop                                              ; $467d: $00
	add  e                                           ; $467e: $83
	ld   b, b                                        ; $467f: $40

Call_02e_4680:
	inc  bc                                          ; $4680: $03
	nop                                              ; $4681: $00
	stop                                             ; $4682: $10 $00
	ld   [$0081], sp                                 ; $4684: $08 $81 $00
	ld   [$0080], sp                                 ; $4687: $08 $80 $00
	inc  b                                           ; $468a: $04
	nop                                              ; $468b: $00
	ld   b, $3c                                      ; $468c: $06 $3c
	cp   c                                           ; $468e: $b9
	nop                                              ; $468f: $00
	rst  $38                                         ; $4690: $ff
	add  c                                           ; $4691: $81
	nop                                              ; $4692: $00
	dec  bc                                          ; $4693: $0b
	cp   $00                                         ; $4694: $fe $00
	ld   [bc], a                                     ; $4696: $02
	nop                                              ; $4697: $00
	ld   [bc], a                                     ; $4698: $02
	nop                                              ; $4699: $00
	ld   bc, $0908                                   ; $469a: $01 $08 $09
	ld   [hl], b                                     ; $469d: $70
	ld   [hl], c                                     ; $469e: $71
	nop                                              ; $469f: $00
	add  b                                           ; $46a0: $80
	jr   nz, jr_02e_4623                             ; $46a1: $20 $80

	and  b                                           ; $46a3: $a0
	add  d                                           ; $46a4: $82
	and  h                                           ; $46a5: $a4
	ld   c, $8d                                      ; $46a6: $0e $8d
	adc  h                                           ; $46a8: $8c
	di                                               ; $46a9: $f3
	ldh  a, [c]                                      ; $46aa: $f2
	jp   nz, $0aca                                   ; $46ab: $c2 $ca $0a

	ld   a, [hl-]                                    ; $46ae: $3a
	add  hl, sp                                      ; $46af: $39
	ld   hl, sp-$02                                  ; $46b0: $f8 $fe
	ldh  a, [$f8]                                    ; $46b2: $f0 $f8
	ldh  [$f0], a                                    ; $46b4: $e0 $f0
	add  b                                           ; $46b6: $80
	ret  nz                                          ; $46b7: $c0

	ld   [bc], a                                     ; $46b8: $02
	nop                                              ; $46b9: $00
	ld   b, b                                        ; $46ba: $40
	nop                                              ; $46bb: $00
	add  e                                           ; $46bc: $83
	ld   b, b                                        ; $46bd: $40
	inc  bc                                          ; $46be: $03
	nop                                              ; $46bf: $00
	stop                                             ; $46c0: $10 $00
	ld   [$0081], sp                                 ; $46c2: $08 $81 $00
	ld   d, $80                                      ; $46c5: $16 $80
	nop                                              ; $46c7: $00
	inc  b                                           ; $46c8: $04

jr_02e_46c9:
	nop                                              ; $46c9: $00
	ld   b, $3c                                      ; $46ca: $06 $3c
	cp   c                                           ; $46cc: $b9
	nop                                              ; $46cd: $00
	rst  $38                                         ; $46ce: $ff
	nop                                              ; $46cf: $00
	ldh  a, [rP1]                                    ; $46d0: $f0 $00
	stop                                             ; $46d2: $10 $00
	jr   jr_02e_46d6                                 ; $46d4: $18 $00

jr_02e_46d6:
	inc  b                                           ; $46d6: $04
	db   $10                                         ; $46d7: $10
	ld   [de], a                                     ; $46d8: $12
	ldh  [$e2], a                                    ; $46d9: $e0 $e2
	nop                                              ; $46db: $00
	ld   b, d                                        ; $46dc: $42
	add  c                                           ; $46dd: $81
	ld   b, b                                        ; $46de: $40
	add  b                                           ; $46df: $80
	ld   c, b                                        ; $46e0: $48
	add  b                                           ; $46e1: $80
	ld   [$0a02], sp                                 ; $46e2: $08 $02 $0a
	ld   c, b                                        ; $46e5: $48
	ret  z                                           ; $46e6: $c8

	add  b                                           ; $46e7: $80
	ret  c                                           ; $46e8: $d8

	dec  b                                           ; $46e9: $05
	ret  z                                           ; $46ea: $c8

	or   h                                           ; $46eb: $b4
	ldh  a, [$e8]                                    ; $46ec: $f0 $e8
	ldh  [rIE], a                                    ; $46ee: $e0 $ff
	add  l                                           ; $46f0: $85
	nop                                              ; $46f1: $00
	add  b                                           ; $46f2: $80
	rlca                                             ; $46f3: $07
	nop                                              ; $46f4: $00
	rra                                              ; $46f5: $1f
	add  e                                           ; $46f6: $83
	rrca                                             ; $46f7: $0f
	add  h                                           ; $46f8: $84
	nop                                              ; $46f9: $00
	nop                                              ; $46fa: $00
	ld   hl, $0081                                   ; $46fb: $21 $81 $00
	ld   d, $02                                      ; $46fe: $16 $02
	nop                                              ; $4700: $00
	ld   b, [hl]                                     ; $4701: $46
	inc  a                                           ; $4702: $3c
	add  hl, sp                                      ; $4703: $39

jr_02e_4704:
	nop                                              ; $4704: $00
	sbc  a                                           ; $4705: $9f
	nop                                              ; $4706: $00
	db   $10                                         ; $4707: $10
	ldh  [$e8], a                                    ; $4708: $e0 $e8
	ldh  a, [$f4]                                    ; $470a: $f0 $f4
	ld   hl, sp-$06                                  ; $470c: $f8 $fa
	ld   a, b                                        ; $470e: $78
	ld   a, a                                        ; $470f: $7f
	ld   d, $1c                                      ; $4710: $16 $1c
	ld   c, h                                        ; $4712: $4c

jr_02e_4713:
	ld   d, e                                        ; $4713: $53
	ld   b, b                                        ; $4714: $40
	ld   c, h                                        ; $4715: $4c
	add  a                                           ; $4716: $87
	nop                                              ; $4717: $00
	ld   b, $10                                      ; $4718: $06 $10
	nop                                              ; $471a: $00
	jr   jr_02e_478d                                 ; $471b: $18 $70

	ld   h, a                                        ; $471d: $67
	nop                                              ; $471e: $00
	ld   hl, sp-$7b                                  ; $471f: $f8 $85
	nop                                              ; $4721: $00
	add  b                                           ; $4722: $80
	inc  bc                                          ; $4723: $03
	nop                                              ; $4724: $00
	rrca                                             ; $4725: $0f
	add  e                                           ; $4726: $83
	rlca                                             ; $4727: $07
	add  h                                           ; $4728: $84
	nop                                              ; $4729: $00
	nop                                              ; $472a: $00
	db   $10                                         ; $472b: $10
	add  c                                           ; $472c: $81
	nop                                              ; $472d: $00
	ld   [$0001], sp                                 ; $472e: $08 $01 $00
	inc  hl                                          ; $4731: $23
	ld   e, $1c                                      ; $4732: $1e $1c
	nop                                              ; $4734: $00
	ret  nz                                          ; $4735: $c0

	nop                                              ; $4736: $00
	ld   bc, $7d81                                   ; $4737: $01 $81 $7d
	add  b                                           ; $473a: $80
	ld   a, h                                        ; $473b: $7c
	inc  bc                                          ; $473c: $03
	rst  $38                                         ; $473d: $ff
	add  b                                           ; $473e: $80
	xor  h                                           ; $473f: $ac
	add  b                                           ; $4740: $80

jr_02e_4741:
	add  d                                           ; $4741: $82
	and  b                                           ; $4742: $a0
	nop                                              ; $4743: $00
	jr   nz, jr_02e_46c9                             ; $4744: $20 $83

	nop                                              ; $4746: $00
	nop                                              ; $4747: $00
	add  b                                           ; $4748: $80
	add  c                                           ; $4749: $81
	nop                                              ; $474a: $00
	rlca                                             ; $474b: $07
	ld   [$0c00], sp                                 ; $474c: $08 $00 $0c
	jr   c, jr_02e_4704                              ; $474f: $38 $b3

	nop                                              ; $4751: $00
	ccf                                              ; $4752: $3f
	nop                                              ; $4753: $00
	add  b                                           ; $4754: $80
	add  b                                           ; $4755: $80
	ld   [bc], a                                     ; $4756: $02
	ld   b, b                                        ; $4757: $40
	nop                                              ; $4758: $00
	add  b                                           ; $4759: $80
	sub  l                                           ; $475a: $95
	nop                                              ; $475b: $00
	db   $10                                         ; $475c: $10
	add  b                                           ; $475d: $80
	nop                                              ; $475e: $00
	add  b                                           ; $475f: $80
	nop                                              ; $4760: $00
	ldh  a, [rP1]                                    ; $4761: $f0 $00
	stop                                             ; $4763: $10 $00
	jr   jr_02e_4767                                 ; $4765: $18 $00

jr_02e_4767:
	inc  b                                           ; $4767: $04
	db   $10                                         ; $4768: $10
	ld   [de], a                                     ; $4769: $12
	ldh  [$e2], a                                    ; $476a: $e0 $e2
	nop                                              ; $476c: $00
	ld   b, d                                        ; $476d: $42
	add  c                                           ; $476e: $81
	ld   b, b                                        ; $476f: $40
	add  b                                           ; $4770: $80
	ld   c, b                                        ; $4771: $48
	add  b                                           ; $4772: $80
	ld   [$0a15], sp                                 ; $4773: $08 $15 $0a
	ld   c, b                                        ; $4776: $48
	ret                                              ; $4777: $c9


	ret  c                                           ; $4778: $d8

	db   $db                                         ; $4779: $db
	ret                                              ; $477a: $c9


	or   c                                           ; $477b: $b1
	push af                                          ; $477c: $f5
	push bc                                          ; $477d: $c5
	call $3c0c                                       ; $477e: $cd $0c $3c
	dec  a                                           ; $4781: $3d
	ld   a, h                                        ; $4782: $7c
	ld   a, [hl]                                     ; $4783: $7e
	ld   a, b                                        ; $4784: $78
	ld   a, h                                        ; $4785: $7c
	ld   [hl], b                                     ; $4786: $70
	ld   hl, sp-$80                                  ; $4787: $f8 $80
	and  b                                           ; $4789: $a0
	add  b                                           ; $478a: $80
	add  d                                           ; $478b: $82
	and  b                                           ; $478c: $a0

jr_02e_478d:
	nop                                              ; $478d: $00
	jr   nz, jr_02e_4713                             ; $478e: $20 $83

	nop                                              ; $4790: $00
	nop                                              ; $4791: $00
	add  b                                           ; $4792: $80
	add  c                                           ; $4793: $81
	nop                                              ; $4794: $00
	ld   b, $08                                      ; $4795: $06 $08
	nop                                              ; $4797: $00
	inc  c                                           ; $4798: $0c
	jr   c, @-$4b                                    ; $4799: $38 $b3

	nop                                              ; $479b: $00
	rst  $38                                         ; $479c: $ff
	sub  l                                           ; $479d: $95
	nop                                              ; $479e: $00
	ld   bc, $00c0                                   ; $479f: $01 $c0 $00
	add  b                                           ; $47a2: $80
	add  b                                           ; $47a3: $80
	nop                                              ; $47a4: $00
	ld   b, b                                        ; $47a5: $40
	add  c                                           ; $47a6: $81
	nop                                              ; $47a7: $00
	nop                                              ; $47a8: $00
	add  b                                           ; $47a9: $80
	add  b                                           ; $47aa: $80
	inc  bc                                          ; $47ab: $03
	add  b                                           ; $47ac: $80
	ld   [bc], a                                     ; $47ad: $02
	xor  c                                           ; $47ae: $a9
	nop                                              ; $47af: $00
	nop                                              ; $47b0: $00
	ld   h, b                                        ; $47b1: $60
	adc  l                                           ; $47b2: $8d
	nop                                              ; $47b3: $00
	nop                                              ; $47b4: $00
	ld   h, b                                        ; $47b5: $60
	add  c                                           ; $47b6: $81
	nop                                              ; $47b7: $00
	ld   b, $03                                      ; $47b8: $06 $03
	nop                                              ; $47ba: $00
	inc  c                                           ; $47bb: $0c
	nop                                              ; $47bc: $00
	stop                                             ; $47bd: $10 $00
	jr   nz, jr_02e_4741                             ; $47bf: $20 $80

	ld   [$0601], sp                                 ; $47c1: $08 $01 $06
	ld   b, [hl]                                     ; $47c4: $46
	add  l                                           ; $47c5: $85
	nop                                              ; $47c6: $00
	ld   bc, $0040                                   ; $47c7: $01 $40 $00
	add  b                                           ; $47ca: $80
	ld   [bc], a                                     ; $47cb: $02
	ld   b, $23                                      ; $47cc: $06 $23
	inc  bc                                          ; $47ce: $03
	ld   de, $0901                                   ; $47cf: $11 $01 $09
	ld   bc, $8107                                   ; $47d2: $01 $07 $81
	nop                                              ; $47d5: $00
	dec  bc                                          ; $47d6: $0b
	cp   $00                                         ; $47d7: $fe $00
	ld   [bc], a                                     ; $47d9: $02
	nop                                              ; $47da: $00
	ld   [bc], a                                     ; $47db: $02
	nop                                              ; $47dc: $00
	ld   bc, $0908                                   ; $47dd: $01 $08 $09
	ld   [hl], b                                     ; $47e0: $70
	ld   [hl], c                                     ; $47e1: $71
	nop                                              ; $47e2: $00
	add  b                                           ; $47e3: $80

jr_02e_47e4:
	jr   nz, @-$7e                                   ; $47e4: $20 $80

	and  b                                           ; $47e6: $a0
	add  d                                           ; $47e7: $82
	and  h                                           ; $47e8: $a4
	ld   bc, $8c8d                                   ; $47e9: $01 $8d $8c
	add  b                                           ; $47ec: $80
	db   $f4                                         ; $47ed: $f4
	inc  b                                           ; $47ee: $04
	ld   a, [$f2f8]                                  ; $47ef: $fa $f8 $f2
	ldh  a, [$f9]                                    ; $47f2: $f0 $f9
	add  e                                           ; $47f4: $83
	nop                                              ; $47f5: $00
	ld   bc, $060e                                   ; $47f6: $01 $0e $06
	add  d                                           ; $47f9: $82
	rlca                                             ; $47fa: $07
	nop                                              ; $47fb: $00
	rra                                              ; $47fc: $1f
	add  c                                           ; $47fd: $81
	rrca                                             ; $47fe: $0f
	nop                                              ; $47ff: $00
	db   $10                                         ; $4800: $10
	add  c                                           ; $4801: $81
	nop                                              ; $4802: $00
	nop                                              ; $4803: $00
	db   $10                                         ; $4804: $10
	add  c                                           ; $4805: $81
	nop                                              ; $4806: $00
	ld   [de], a                                     ; $4807: $12
	ld   hl, $4200                                   ; $4808: $21 $00 $42
	nop                                              ; $480b: $00
	ld   b, $3c                                      ; $480c: $06 $3c
	add  hl, sp                                      ; $480e: $39
	nop                                              ; $480f: $00
	adc  l                                           ; $4810: $8d
	inc  c                                           ; $4811: $0c
	ld   a, [bc]                                     ; $4812: $0a
	add  sp, -$20                                    ; $4813: $e8 $e0
	ldh  a, [$f4]                                    ; $4815: $f0 $f4
	ldh  a, [$f8]                                    ; $4817: $f0 $f8
	ld   h, b                                        ; $4819: $60
	ld   [hl], b                                     ; $481a: $70
	add  b                                           ; $481b: $80
	nop                                              ; $481c: $00
	add  d                                           ; $481d: $82
	ld   b, b                                        ; $481e: $40
	inc  bc                                          ; $481f: $03
	nop                                              ; $4820: $00
	stop                                             ; $4821: $10 $00
	ld   [$0081], sp                                 ; $4823: $08 $81 $00
	ld   [$0080], sp                                 ; $4826: $08 $80 $00
	inc  b                                           ; $4829: $04
	nop                                              ; $482a: $00
	ld   b, $3c                                      ; $482b: $06 $3c
	cp   c                                           ; $482d: $b9
	nop                                              ; $482e: $00
	rst  $38                                         ; $482f: $ff
	add  c                                           ; $4830: $81
	nop                                              ; $4831: $00
	inc  b                                           ; $4832: $04
	inc  bc                                          ; $4833: $03
	nop                                              ; $4834: $00
	inc  c                                           ; $4835: $0c
	nop                                              ; $4836: $00
	db   $10                                         ; $4837: $10
	add  b                                           ; $4838: $80
	nop                                              ; $4839: $00
	ld   bc, $2404                                   ; $483a: $01 $04 $24
	add  b                                           ; $483d: $80
	inc  bc                                          ; $483e: $03
	add  c                                           ; $483f: $81
	nop                                              ; $4840: $00
	add  b                                           ; $4841: $80
	ld   bc, $0380                                   ; $4842: $01 $80 $03
	add  b                                           ; $4845: $80
	dec  hl                                          ; $4846: $2b
	add  b                                           ; $4847: $80
	jr   c, jr_02e_4850                              ; $4848: $38 $06

	cpl                                              ; $484a: $2f
	rrca                                             ; $484b: $0f
	rla                                              ; $484c: $17
	rlca                                             ; $484d: $07
	dec  bc                                          ; $484e: $0b
	inc  bc                                          ; $484f: $03

jr_02e_4850:
	rlca                                             ; $4850: $07
	add  c                                           ; $4851: $81
	nop                                              ; $4852: $00
	ld   b, $bc                                      ; $4853: $06 $bc
	nop                                              ; $4855: $00
	ld   b, h                                        ; $4856: $44
	nop                                              ; $4857: $00
	inc  b                                           ; $4858: $04
	nop                                              ; $4859: $00
	ld   [bc], a                                     ; $485a: $02
	add  b                                           ; $485b: $80
	nop                                              ; $485c: $00
	ld   [bc], a                                     ; $485d: $02
	adc  h                                           ; $485e: $8c
	adc  l                                           ; $485f: $8d
	nop                                              ; $4860: $00
	add  d                                           ; $4861: $82
	jr   nz, jr_02e_47e4                             ; $4862: $20 $80

	inc  h                                           ; $4864: $24
	add  b                                           ; $4865: $80
	xor  h                                           ; $4866: $ac
	ld   bc, $f0f1                                   ; $4867: $01 $f1 $f0
	add  b                                           ; $486a: $80
	ld   l, h                                        ; $486b: $6c
	inc  b                                           ; $486c: $04
	ld   a, [$e2f8]                                  ; $486d: $fa $f8 $e2
	ldh  [$fd], a                                    ; $4870: $e0 $fd
	add  c                                           ; $4872: $81
	nop                                              ; $4873: $00
	nop                                              ; $4874: $00
	inc  b                                           ; $4875: $04
	add  c                                           ; $4876: $81
	ld   bc, $0f01                                   ; $4877: $01 $01 $0f
	ld   b, $80                                      ; $487a: $06 $80
	rlca                                             ; $487c: $07
	nop                                              ; $487d: $00
	rra                                              ; $487e: $1f
	add  c                                           ; $487f: $81
	rrca                                             ; $4880: $0f
	nop                                              ; $4881: $00
	db   $10                                         ; $4882: $10
	add  e                                           ; $4883: $83
	nop                                              ; $4884: $00
	ld   b, $10                                      ; $4885: $06 $10
	ld   [$0718], sp                                 ; $4887: $08 $18 $07
	ld   [hl], a                                     ; $488a: $77
	nop                                              ; $488b: $00
	ld   a, a                                        ; $488c: $7f
	add  c                                           ; $488d: $81
	nop                                              ; $488e: $00
	ld   [bc], a                                     ; $488f: $02
	ldh  a, [c]                                      ; $4890: $f2
	inc  c                                           ; $4891: $0c
	ld   a, [bc]                                     ; $4892: $0a
	add  c                                           ; $4893: $81
	add  sp, $04                                     ; $4894: $e8 $04
	db   $e4                                         ; $4896: $e4
	ldh  a, [$f8]                                    ; $4897: $f0 $f8
	ldh  [$f0], a                                    ; $4899: $e0 $f0
	add  b                                           ; $489b: $80
	nop                                              ; $489c: $00
	add  c                                           ; $489d: $81
	ld   b, b                                        ; $489e: $40
	ld   [bc], a                                     ; $489f: $02
	ld   d, b                                        ; $48a0: $50
	nop                                              ; $48a1: $00
	ld   [$0081], sp                                 ; $48a2: $08 $81 $00
	ld   bc, $0008                                   ; $48a5: $01 $08 $00
	add  b                                           ; $48a8: $80
	and  b                                           ; $48a9: $a0
	ld   [bc], a                                     ; $48aa: $02
	rrca                                             ; $48ab: $0f
	nop                                              ; $48ac: $00
	rst  $38                                         ; $48ad: $ff
	rst  $38                                         ; $48ae: $ff
	nop                                              ; $48af: $00
	rst  $38                                         ; $48b0: $ff
	nop                                              ; $48b1: $00
	ld   bc, $ff00                                   ; $48b2: $01 $00 $ff
	add  d                                           ; $48b5: $82
	ld   l, $87                                      ; $48b6: $2e $87
	nop                                              ; $48b8: $00
	add  b                                           ; $48b9: $80
	xor  d                                           ; $48ba: $aa
	nop                                              ; $48bb: $00
	nop                                              ; $48bc: $00
	add  b                                           ; $48bd: $80
	ld   e, $80                                      ; $48be: $1e $80
	add  hl, de                                      ; $48c0: $19
	add  b                                           ; $48c1: $80
	rlca                                             ; $48c2: $07
	inc  b                                           ; $48c3: $04
	ld   e, $1f                                      ; $48c4: $1e $1f
	add  hl, de                                      ; $48c6: $19
	ld   a, [de]                                     ; $48c7: $1a
	ld   [bc], a                                     ; $48c8: $02
	add  b                                           ; $48c9: $80
	dec  d                                           ; $48ca: $15
	add  b                                           ; $48cb: $80
	xor  d                                           ; $48cc: $aa
	rlca                                             ; $48cd: $07
	nop                                              ; $48ce: $00
	ld   b, b                                        ; $48cf: $40
	ld   b, e                                        ; $48d0: $43
	jp   $97d7                                       ; $48d1: $c3 $d7 $97


	xor  a                                           ; $48d4: $af
	cpl                                              ; $48d5: $2f
	add  b                                           ; $48d6: $80
	ld   e, [hl]                                     ; $48d7: $5e
	add  b                                           ; $48d8: $80
	cp   [hl]                                        ; $48d9: $be
	add  b                                           ; $48da: $80
	ld   a, a                                        ; $48db: $7f
	add  b                                           ; $48dc: $80
	cp   a                                           ; $48dd: $bf
	add  c                                           ; $48de: $81
	ld   hl, sp+$05                                  ; $48df: $f8 $05
	ld   a, [$e1e2]                                  ; $48e1: $fa $e2 $e1
	add  c                                           ; $48e4: $81
	add  d                                           ; $48e5: $82
	ld   [bc], a                                     ; $48e6: $02
	add  c                                           ; $48e7: $81
	nop                                              ; $48e8: $00
	add  d                                           ; $48e9: $82
	rst  $38                                         ; $48ea: $ff
	add  c                                           ; $48eb: $81
	nop                                              ; $48ec: $00
	add  b                                           ; $48ed: $80
	xor  d                                           ; $48ee: $aa
	add  b                                           ; $48ef: $80
	ld   d, l                                        ; $48f0: $55
	add  b                                           ; $48f1: $80
	xor  d                                           ; $48f2: $aa
	add  c                                           ; $48f3: $81
	nop                                              ; $48f4: $00
	add  d                                           ; $48f5: $82
	rst  $38                                         ; $48f6: $ff
	add  hl, bc                                      ; $48f7: $09
	rlca                                             ; $48f8: $07
	nop                                              ; $48f9: $00
	ld   bc, $aba8                                   ; $48fa: $01 $a8 $ab
	ld   d, c                                        ; $48fd: $51
	ld   d, a                                        ; $48fe: $57
	xor  e                                           ; $48ff: $ab
	xor  a                                           ; $4900: $af
	rlca                                             ; $4901: $07
	add  b                                           ; $4902: $80
	rra                                              ; $4903: $1f
	rst  $38                                         ; $4904: $ff
	rst  $38                                         ; $4905: $ff
	and  c                                           ; $4906: $a1
	rst  $38                                         ; $4907: $ff
	add  b                                           ; $4908: $80
	ld   d, l                                        ; $4909: $55
	add  b                                           ; $490a: $80
	xor  d                                           ; $490b: $aa
	add  b                                           ; $490c: $80
	ld   d, l                                        ; $490d: $55
	add  b                                           ; $490e: $80
	xor  d                                           ; $490f: $aa
	add  b                                           ; $4910: $80
	ld   d, l                                        ; $4911: $55
	add  b                                           ; $4912: $80
	xor  d                                           ; $4913: $aa
	add  b                                           ; $4914: $80
	ld   d, l                                        ; $4915: $55
	add  b                                           ; $4916: $80
	xor  d                                           ; $4917: $aa
	add  b                                           ; $4918: $80
	ld   d, l                                        ; $4919: $55
	add  b                                           ; $491a: $80
	xor  d                                           ; $491b: $aa
	add  b                                           ; $491c: $80
	ld   d, l                                        ; $491d: $55
	add  b                                           ; $491e: $80
	xor  d                                           ; $491f: $aa
	add  b                                           ; $4920: $80
	ld   d, l                                        ; $4921: $55
	add  b                                           ; $4922: $80
	xor  d                                           ; $4923: $aa
	add  b                                           ; $4924: $80
	ld   d, l                                        ; $4925: $55
	add  b                                           ; $4926: $80
	xor  d                                           ; $4927: $aa

jr_02e_4928:
	add  b                                           ; $4928: $80
	ld   a, a                                        ; $4929: $7f
	add  b                                           ; $492a: $80
	rst  $38                                         ; $492b: $ff
	add  b                                           ; $492c: $80
	ld   a, a                                        ; $492d: $7f
	add  b                                           ; $492e: $80
	rst  $38                                         ; $492f: $ff
	add  b                                           ; $4930: $80
	ld   a, a                                        ; $4931: $7f
	add  b                                           ; $4932: $80
	cp   a                                           ; $4933: $bf
	add  b                                           ; $4934: $80
	ld   e, a                                        ; $4935: $5f
	add  b                                           ; $4936: $80
	xor  a                                           ; $4937: $af
	rst  $38                                         ; $4938: $ff
	rst  $38                                         ; $4939: $ff
	adc  $ff                                         ; $493a: $ce $ff
	ld   bc, $50fe                                   ; $493c: $01 $fe $50
	add  b                                           ; $493f: $80
	ld   d, e                                        ; $4940: $53
	ld   bc, $53fb                                   ; $4941: $01 $fb $53
	add  c                                           ; $4944: $81
	ei                                               ; $4945: $fb
	add  b                                           ; $4946: $80
	adc  e                                           ; $4947: $8b
	add  c                                           ; $4948: $81
	cp   e                                           ; $4949: $bb
	adc  c                                           ; $494a: $89
	xor  e                                           ; $494b: $ab
	ld   bc, $ffed                                   ; $494c: $01 $ed $ff
	add  c                                           ; $494f: $81
	add  c                                           ; $4950: $81
	ld   [bc], a                                     ; $4951: $02
	cp   a                                           ; $4952: $bf
	pop  bc                                          ; $4953: $c1
	rlca                                             ; $4954: $07
	add  b                                           ; $4955: $80
	inc  b                                           ; $4956: $04
	add  c                                           ; $4957: $81
	rlca                                             ; $4958: $07
	add  d                                           ; $4959: $82
	ld   b, $80                                      ; $495a: $06 $80
	nop                                              ; $495c: $00
	inc  bc                                          ; $495d: $03
	ld   bc, $0200                                   ; $495e: $01 $00 $02
	ld   a, c                                        ; $4961: $79
	add  b                                           ; $4962: $80
	and  a                                           ; $4963: $a7
	add  hl, bc                                      ; $4964: $09
	xor  a                                           ; $4965: $af
	or   a                                           ; $4966: $b7
	cp   a                                           ; $4967: $bf
	and  e                                           ; $4968: $a3
	cp   a                                           ; $4969: $bf
	pop  bc                                          ; $496a: $c1
	rst  $38                                         ; $496b: $ff
	adc  c                                           ; $496c: $89
	cp   e                                           ; $496d: $bb
	dec  sp                                          ; $496e: $3b
	add  b                                           ; $496f: $80
	ld   a, e                                        ; $4970: $7b
	ld   bc, $0dfb                                   ; $4971: $01 $fb $0d
	cp   l                                           ; $4974: $bd
	nop                                              ; $4975: $00
	ld   a, [de]                                     ; $4976: $1a
	inc  bc                                          ; $4977: $03
	dec  b                                           ; $4978: $05
	ld   bc, $030b                                   ; $4979: $01 $0b $03
	rla                                              ; $497c: $17
	rlca                                             ; $497d: $07
	cpl                                              ; $497e: $2f
	ld   c, $df                                      ; $497f: $0e $df
	dec  e                                           ; $4981: $1d
	ccf                                              ; $4982: $3f
	ld   a, [hl-]                                    ; $4983: $3a
	rst  $38                                         ; $4984: $ff
	ld   b, $ff                                      ; $4985: $06 $ff
	add  hl, de                                      ; $4987: $19
	ei                                               ; $4988: $fb
	db   $db                                         ; $4989: $db
	ei                                               ; $498a: $fb
	xor  e                                           ; $498b: $ab
	ei                                               ; $498c: $fb
	ld   e, e                                        ; $498d: $5b
	ei                                               ; $498e: $fb
	cp   e                                           ; $498f: $bb
	ei                                               ; $4990: $fb
	ld   h, e                                        ; $4991: $63
	add  c                                           ; $4992: $81
	rst  $30                                         ; $4993: $f7
	nop                                              ; $4994: $00
	add  hl, de                                      ; $4995: $19
	add  b                                           ; $4996: $80
	cp   $00                                         ; $4997: $fe $00
	rst  $38                                         ; $4999: $ff
	add  c                                           ; $499a: $81
	add  b                                           ; $499b: $80
	ld   bc, $b8b9                                   ; $499c: $01 $b9 $b8
	add  c                                           ; $499f: $81
	or   a                                           ; $49a0: $b7
	inc  b                                           ; $49a1: $04
	ldh  a, [$7f]                                    ; $49a2: $f0 $7f
	ld   e, c                                        ; $49a4: $59
	ccf                                              ; $49a5: $3f
	jr   nz, jr_02e_4928                             ; $49a6: $20 $80

	rra                                              ; $49a8: $1f
	nop                                              ; $49a9: $00
	rst  $38                                         ; $49aa: $ff
	add  c                                           ; $49ab: $81
	ld   bc, $ff03                                   ; $49ac: $01 $03 $ff
	add  c                                           ; $49af: $81
	rst  $38                                         ; $49b0: $ff
	jp   $fe80                                       ; $49b1: $c3 $80 $fe


	inc  bc                                          ; $49b4: $03
	rst  $38                                         ; $49b5: $ff
	call nz, Call_02e_78ff                           ; $49b6: $c4 $ff $78
	add  b                                           ; $49b9: $80
	rst  ToBoot                                         ; $49ba: $c7
	nop                                              ; $49bb: $00
	rst  $38                                         ; $49bc: $ff
	add  c                                           ; $49bd: $81
	ld   de, $7f01                                   ; $49be: $11 $01 $7f
	sbc  a                                           ; $49c1: $9f
	add  b                                           ; $49c2: $80
	rst  $38                                         ; $49c3: $ff
	add  b                                           ; $49c4: $80
	rra                                              ; $49c5: $1f
	inc  bc                                          ; $49c6: $03
	rst  $38                                         ; $49c7: $ff
	rrca                                             ; $49c8: $0f
	rst  $38                                         ; $49c9: $ff
	ld   bc, $ff81                                   ; $49ca: $01 $81 $ff
	add  c                                           ; $49cd: $81
	nop                                              ; $49ce: $00
	add  hl, bc                                      ; $49cf: $09
	rst  $38                                         ; $49d0: $ff
	cp   $ff                                         ; $49d1: $fe $ff
	db   $fd                                         ; $49d3: $fd
	rst  $38                                         ; $49d4: $ff
	ei                                               ; $49d5: $fb
	rst  $38                                         ; $49d6: $ff
	rst  $30                                         ; $49d7: $f7
	db   $fc                                         ; $49d8: $fc
	inc  c                                           ; $49d9: $0c
	add  b                                           ; $49da: $80
	ld   hl, sp+$00                                  ; $49db: $f8 $00
	rst  $38                                         ; $49dd: $ff
	add  c                                           ; $49de: $81
	nop                                              ; $49df: $00
	dec  b                                           ; $49e0: $05
	rst  $38                                         ; $49e1: $ff
	nop                                              ; $49e2: $00
	rst  $38                                         ; $49e3: $ff
	nop                                              ; $49e4: $00
	rst  $38                                         ; $49e5: $ff
	nop                                              ; $49e6: $00
	add  b                                           ; $49e7: $80
	rst  $38                                         ; $49e8: $ff
	add  d                                           ; $49e9: $82
	nop                                              ; $49ea: $00
	nop                                              ; $49eb: $00
	rst  $38                                         ; $49ec: $ff
	add  c                                           ; $49ed: $81
	adc  b                                           ; $49ee: $88
	ld   bc, $fcfb                                   ; $49ef: $01 $fb $fc
	add  b                                           ; $49f2: $80
	rst  $38                                         ; $49f3: $ff
	add  b                                           ; $49f4: $80
	ld   hl, sp+$03                                  ; $49f5: $f8 $03
	rst  $38                                         ; $49f7: $ff
	ldh  a, [rIE]                                    ; $49f8: $f0 $ff
	add  b                                           ; $49fa: $80
	add  c                                           ; $49fb: $81
	rst  $38                                         ; $49fc: $ff
	add  c                                           ; $49fd: $81
	ld   bc, $9d01                                   ; $49fe: $01 $01 $9d
	adc  l                                           ; $4a01: $8d
	add  c                                           ; $4a02: $81
	ld   a, l                                        ; $4a03: $7d
	inc  b                                           ; $4a04: $04
	rrca                                             ; $4a05: $0f
	cp   $9a                                         ; $4a06: $fe $9a
	db   $fc                                         ; $4a08: $fc
	inc  b                                           ; $4a09: $04
	add  b                                           ; $4a0a: $80
	ld   hl, sp-$01                                  ; $4a0b: $f8 $ff
	nop                                              ; $4a0d: $00
	ldh  a, [rP1]                                    ; $4a0e: $f0 $00
	ld   bc, $00ff                                   ; $4a10: $01 $ff $00
	add  [hl]                                        ; $4a13: $86
	db   $db                                         ; $4a14: $db
	add  b                                           ; $4a15: $80
	nop                                              ; $4a16: $00
	nop                                              ; $4a17: $00
	rst  $38                                         ; $4a18: $ff
	add  c                                           ; $4a19: $81
	nop                                              ; $4a1a: $00
	ld   bc, $00ff                                   ; $4a1b: $01 $ff $00
	add  [hl]                                        ; $4a1e: $86
	ld   l, l                                        ; $4a1f: $6d
	add  b                                           ; $4a20: $80
	nop                                              ; $4a21: $00
	nop                                              ; $4a22: $00
	rst  $38                                         ; $4a23: $ff
	add  c                                           ; $4a24: $81
	nop                                              ; $4a25: $00
	ld   bc, $00ff                                   ; $4a26: $01 $ff $00
	add  [hl]                                        ; $4a29: $86
	or   [hl]                                        ; $4a2a: $b6
	add  b                                           ; $4a2b: $80
	nop                                              ; $4a2c: $00
	nop                                              ; $4a2d: $00
	rst  $38                                         ; $4a2e: $ff
	add  c                                           ; $4a2f: $81
	nop                                              ; $4a30: $00
	ld   [bc], a                                     ; $4a31: $02
	rst  $38                                         ; $4a32: $ff
	nop                                              ; $4a33: $00
	dec  de                                          ; $4a34: $1b
	add  l                                           ; $4a35: $85
	db   $db                                         ; $4a36: $db
	ld   [bc], a                                     ; $4a37: $02
	ret  nz                                          ; $4a38: $c0

	nop                                              ; $4a39: $00
	rst  $38                                         ; $4a3a: $ff
	add  c                                           ; $4a3b: $81
	nop                                              ; $4a3c: $00
	ld   [bc], a                                     ; $4a3d: $02
	rst  $38                                         ; $4a3e: $ff
	nop                                              ; $4a3f: $00
	inc  bc                                          ; $4a40: $03
	add  l                                           ; $4a41: $85
	db   $db                                         ; $4a42: $db
	ld   [bc], a                                     ; $4a43: $02
	ret  c                                           ; $4a44: $d8

jr_02e_4a45:
	nop                                              ; $4a45: $00
	rst  $38                                         ; $4a46: $ff
	add  c                                           ; $4a47: $81
	nop                                              ; $4a48: $00
	nop                                              ; $4a49: $00
	rst  $38                                         ; $4a4a: $ff
	add  b                                           ; $4a4b: $80
	nop                                              ; $4a4c: $00
	add  [hl]                                        ; $4a4d: $86
	db   $db                                         ; $4a4e: $db
	ld   bc, $ff00                                   ; $4a4f: $01 $00 $ff
	add  c                                           ; $4a52: $81
	nop                                              ; $4a53: $00
	ld   [bc], a                                     ; $4a54: $02
	rst  $38                                         ; $4a55: $ff
	nop                                              ; $4a56: $00
	dec  c                                           ; $4a57: $0d
	add  l                                           ; $4a58: $85
	ld   l, l                                        ; $4a59: $6d
	ld   [bc], a                                     ; $4a5a: $02
	ld   h, b                                        ; $4a5b: $60
	nop                                              ; $4a5c: $00
	rst  $38                                         ; $4a5d: $ff
	add  c                                           ; $4a5e: $81
	nop                                              ; $4a5f: $00
	ld   [bc], a                                     ; $4a60: $02
	rst  $38                                         ; $4a61: $ff
	nop                                              ; $4a62: $00
	ld   bc, $6d85                                   ; $4a63: $01 $85 $6d
	ld   [bc], a                                     ; $4a66: $02
	ld   l, h                                        ; $4a67: $6c
	nop                                              ; $4a68: $00
	rst  $38                                         ; $4a69: $ff
	add  c                                           ; $4a6a: $81
	nop                                              ; $4a6b: $00
	nop                                              ; $4a6c: $00
	rst  $38                                         ; $4a6d: $ff
	add  b                                           ; $4a6e: $80
	nop                                              ; $4a6f: $00
	add  [hl]                                        ; $4a70: $86
	ld   l, l                                        ; $4a71: $6d
	ld   bc, $ff00                                   ; $4a72: $01 $00 $ff
	add  c                                           ; $4a75: $81
	nop                                              ; $4a76: $00
	ld   [bc], a                                     ; $4a77: $02
	rst  $38                                         ; $4a78: $ff
	nop                                              ; $4a79: $00
	ld   [hl], $85                                   ; $4a7a: $36 $85
	or   [hl]                                        ; $4a7c: $b6
	ld   [bc], a                                     ; $4a7d: $02
	add  b                                           ; $4a7e: $80
	nop                                              ; $4a7f: $00
	rst  $38                                         ; $4a80: $ff
	add  c                                           ; $4a81: $81
	nop                                              ; $4a82: $00
	ld   [bc], a                                     ; $4a83: $02
	rst  $38                                         ; $4a84: $ff
	nop                                              ; $4a85: $00
	ld   b, $85                                      ; $4a86: $06 $85
	or   [hl]                                        ; $4a88: $b6
	ld   [bc], a                                     ; $4a89: $02
	or   b                                           ; $4a8a: $b0
	nop                                              ; $4a8b: $00
	rst  $38                                         ; $4a8c: $ff

jr_02e_4a8d:
	add  c                                           ; $4a8d: $81
	nop                                              ; $4a8e: $00
	nop                                              ; $4a8f: $00
	rst  $38                                         ; $4a90: $ff
	add  b                                           ; $4a91: $80
	nop                                              ; $4a92: $00
	add  [hl]                                        ; $4a93: $86
	or   [hl]                                        ; $4a94: $b6
	ld   bc, $ff00                                   ; $4a95: $01 $00 $ff
	ret  nz                                          ; $4a98: $c0

	nop                                              ; $4a99: $00
	add  b                                           ; $4a9a: $80
	ld   b, h                                        ; $4a9b: $44
	add  b                                           ; $4a9c: $80
	ld   a, a                                        ; $4a9d: $7f
	add  b                                           ; $4a9e: $80
	adc  $80                                         ; $4a9f: $ce $80
	ld   d, l                                        ; $4aa1: $55
	add  b                                           ; $4aa2: $80
	ld   h, h                                        ; $4aa3: $64
	add  b                                           ; $4aa4: $80
	ld   l, [hl]                                     ; $4aa5: $6e
	add  b                                           ; $4aa6: $80
	ld   b, h                                        ; $4aa7: $44
	add  d                                           ; $4aa8: $82
	nop                                              ; $4aa9: $00
	add  b                                           ; $4aaa: $80
	add  b                                           ; $4aab: $80
	add  d                                           ; $4aac: $82
	nop                                              ; $4aad: $00
	add  d                                           ; $4aae: $82
	add  b                                           ; $4aaf: $80
	add  h                                           ; $4ab0: $84
	nop                                              ; $4ab1: $00
	add  b                                           ; $4ab2: $80
	inc  bc                                          ; $4ab3: $03
	add  [hl]                                        ; $4ab4: $86
	nop                                              ; $4ab5: $00
	add  b                                           ; $4ab6: $80
	inc  bc                                          ; $4ab7: $03
	add  b                                           ; $4ab8: $80
	nop                                              ; $4ab9: $00
	add  b                                           ; $4aba: $80
	ld   b, b                                        ; $4abb: $40
	add  b                                           ; $4abc: $80
	db   $fc                                         ; $4abd: $fc
	add  d                                           ; $4abe: $82
	ld   b, h                                        ; $4abf: $44
	add  d                                           ; $4ac0: $82
	add  h                                           ; $4ac1: $84
	add  b                                           ; $4ac2: $80
	jr   jr_02e_4a45                                 ; $4ac3: $18 $80

	nop                                              ; $4ac5: $00
	add  b                                           ; $4ac6: $80
	ld   b, b                                        ; $4ac7: $40
	add  b                                           ; $4ac8: $80
	ld   [hl], a                                     ; $4ac9: $77
	add  b                                           ; $4aca: $80
	and  h                                           ; $4acb: $a4
	add  b                                           ; $4acc: $80
	db   $fc                                         ; $4acd: $fc
	add  d                                           ; $4ace: $82
	inc  h                                           ; $4acf: $24
	add  b                                           ; $4ad0: $80
	rst  $10                                         ; $4ad1: $d7
	add  d                                           ; $4ad2: $82
	nop                                              ; $4ad3: $00
	adc  d                                           ; $4ad4: $8a
	add  b                                           ; $4ad5: $80
	add  b                                           ; $4ad6: $80
	nop                                              ; $4ad7: $00
	add  b                                           ; $4ad8: $80
	ld   a, $80                                      ; $4ad9: $3e $80
	rst  $38                                         ; $4adb: $ff
	add  b                                           ; $4adc: $80

jr_02e_4add:
	xor  d                                           ; $4add: $aa
	add  b                                           ; $4ade: $80
	ld   a, $80                                      ; $4adf: $3e $80
	rst  $38                                         ; $4ae1: $ff
	add  b                                           ; $4ae2: $80
	ld   d, l                                        ; $4ae3: $55
	add  b                                           ; $4ae4: $80
	rst  $38                                         ; $4ae5: $ff
	add  d                                           ; $4ae6: $82
	nop                                              ; $4ae7: $00
	add  d                                           ; $4ae8: $82
	add  b                                           ; $4ae9: $80
	add  b                                           ; $4aea: $80
	nop                                              ; $4aeb: $00
	add  b                                           ; $4aec: $80

jr_02e_4aed:
	add  b                                           ; $4aed: $80
	add  b                                           ; $4aee: $80
	nop                                              ; $4aef: $00
	add  b                                           ; $4af0: $80
	add  b                                           ; $4af1: $80
	add  b                                           ; $4af2: $80
	nop                                              ; $4af3: $00
	add  b                                           ; $4af4: $80
	ld   a, a                                        ; $4af5: $7f
	add  b                                           ; $4af6: $80
	ld   e, [hl]                                     ; $4af7: $5e
	add  b                                           ; $4af8: $80
	add  b                                           ; $4af9: $80
	add  b                                           ; $4afa: $80
	ld   a, a                                        ; $4afb: $7f
	add  b                                           ; $4afc: $80
	ld   a, [hl+]                                    ; $4afd: $2a
	add  b                                           ; $4afe: $80
	ld   [de], a                                     ; $4aff: $12
	add  b                                           ; $4b00: $80
	ld   l, l                                        ; $4b01: $6d
	add  b                                           ; $4b02: $80
	nop                                              ; $4b03: $00
	add  b                                           ; $4b04: $80
	ld   bc, $0280                                   ; $4b05: $01 $80 $02
	add  b                                           ; $4b08: $80
	rlca                                             ; $4b09: $07

Jump_02e_4b0a:
	add  b                                           ; $4b0a: $80
	jr   jr_02e_4a8d                                 ; $4b0b: $18 $80

	rlca                                             ; $4b0d: $07
	add  b                                           ; $4b0e: $80
	add  h                                           ; $4b0f: $84
	add  b                                           ; $4b10: $80
	add  a                                           ; $4b11: $87
	add  b                                           ; $4b12: $80
	nop                                              ; $4b13: $00
	add  b                                           ; $4b14: $80

jr_02e_4b15:
	ld   bc, $8180                                   ; $4b15: $01 $80 $81
	add  b                                           ; $4b18: $80
	pop  bc                                          ; $4b19: $c1
	add  b                                           ; $4b1a: $80
	ld   sp, $c180                                   ; $4b1b: $31 $80 $c1
	add  b                                           ; $4b1e: $80
	ld   b, c                                        ; $4b1f: $41
	add  b                                           ; $4b20: $80
	pop  bc                                          ; $4b21: $c1
	add  d                                           ; $4b22: $82

jr_02e_4b23:
	nop                                              ; $4b23: $00
	add  b                                           ; $4b24: $80
	ld   [$0484], sp                                 ; $4b25: $08 $84 $04
	add  b                                           ; $4b28: $80
	ld   b, b                                        ; $4b29: $40
	add  b                                           ; $4b2a: $80
	add  b                                           ; $4b2b: $80
	add  b                                           ; $4b2c: $80
	nop                                              ; $4b2d: $00
	add  b                                           ; $4b2e: $80
	ld   a, $80                                      ; $4b2f: $3e $80
	inc  e                                           ; $4b31: $1c
	add  b                                           ; $4b32: $80
	rst  $38                                         ; $4b33: $ff
	add  b                                           ; $4b34: $80
	inc  d                                           ; $4b35: $14
	add  b                                           ; $4b36: $80
	ccf                                              ; $4b37: $3f
	add  b                                           ; $4b38: $80
	ld   e, h                                        ; $4b39: $5c
	add  b                                           ; $4b3a: $80
	ld   c, c                                        ; $4b3b: $49
	add  b                                           ; $4b3c: $80
	nop                                              ; $4b3d: $00
	add  b                                           ; $4b3e: $80
	rrca                                             ; $4b3f: $0f
	add  b                                           ; $4b40: $80
	ld   [$8f80], sp                                 ; $4b41: $08 $80 $8f
	add  b                                           ; $4b44: $80
	ld   bc, $1f80                                   ; $4b45: $01 $80 $1f
	add  d                                           ; $4b48: $82
	ld   bc, $0080                                   ; $4b49: $01 $80 $00
	add  b                                           ; $4b4c: $80
	ldh  [$80], a                                    ; $4b4d: $e0 $80
	ld   hl, $e080                                   ; $4b4f: $21 $80 $e0
	add  b                                           ; $4b52: $80
	nop                                              ; $4b53: $00
	add  b                                           ; $4b54: $80
	pop  af                                          ; $4b55: $f1
	add  b                                           ; $4b56: $80
	ld   bc, $0082                                   ; $4b57: $01 $82 $00
	add  b                                           ; $4b5a: $80
	jr   nz, jr_02e_4add                             ; $4b5b: $20 $80

	db   $fc                                         ; $4b5d: $fc
	add  b                                           ; $4b5e: $80
	db   $10                                         ; $4b5f: $10
	add  b                                           ; $4b60: $80
	ld   [$1880], sp                                 ; $4b61: $08 $80 $18
	add  b                                           ; $4b64: $80
	nop                                              ; $4b65: $00
	add  b                                           ; $4b66: $80
	ldh  a, [$80]                                    ; $4b67: $f0 $80
	nop                                              ; $4b69: $00
	add  b                                           ; $4b6a: $80
	jr   jr_02e_4aed                                 ; $4b6b: $18 $80

	ld   h, $80                                      ; $4b6d: $26 $80
	rst  $38                                         ; $4b6f: $ff
	add  d                                           ; $4b70: $82
	ld   d, l                                        ; $4b71: $55
	add  b                                           ; $4b72: $80
	ld   [hl], a                                     ; $4b73: $77
	add  b                                           ; $4b74: $80
	inc  b                                           ; $4b75: $04
	add  b                                           ; $4b76: $80
	nop                                              ; $4b77: $00
	add  b                                           ; $4b78: $80
	ld   bc, $0f80                                   ; $4b79: $01 $80 $0f
	add  b                                           ; $4b7c: $80
	adc  c                                           ; $4b7d: $89
	add  b                                           ; $4b7e: $80
	add  hl, bc                                      ; $4b7f: $09
	add  b                                           ; $4b80: $80
	rrca                                             ; $4b81: $0f
	add  d                                           ; $4b82: $82
	ld   bc, $0082                                   ; $4b83: $01 $82 $00
	add  b                                           ; $4b86: $80
	db   $e3                                         ; $4b87: $e3
	add  b                                           ; $4b88: $80
	ld   hl, $2080                                   ; $4b89: $21 $80 $20
	add  b                                           ; $4b8c: $80
	pop  hl                                          ; $4b8d: $e1
	add  b                                           ; $4b8e: $80
	inc  bc                                          ; $4b8f: $03
	add  d                                           ; $4b90: $82
	nop                                              ; $4b91: $00
	add  b                                           ; $4b92: $80
	jr   nz, jr_02e_4b15                             ; $4b93: $20 $80

	cp   $80                                         ; $4b95: $fe $80
	ld   h, h                                        ; $4b97: $64
	add  b                                           ; $4b98: $80
	ld   hl, sp-$80                                  ; $4b99: $f8 $80
	inc  [hl]                                        ; $4b9b: $34
	add  b                                           ; $4b9c: $80
	cp   $80                                         ; $4b9d: $fe $80
	jr   nz, jr_02e_4b23                             ; $4b9f: $20 $82

	nop                                              ; $4ba1: $00
	adc  c                                           ; $4ba2: $89
	ld   bc, $6107                                   ; $4ba3: $01 $07 $61
	or   b                                           ; $4ba6: $b0
	ret  nc                                          ; $4ba7: $d0

	rst  $38                                         ; $4ba8: $ff
	add  d                                           ; $4ba9: $82
	cp   [hl]                                        ; $4baa: $be
	or   [hl]                                        ; $4bab: $b6
	xor  [hl]                                        ; $4bac: $ae
	add  b                                           ; $4bad: $80
	cp   [hl]                                        ; $4bae: $be
	inc  b                                           ; $4baf: $04
	and  [hl]                                        ; $4bb0: $a6
	cp   [hl]                                        ; $4bb1: $be
	cp   $7e                                         ; $4bb2: $fe $7e
	ld   b, e                                        ; $4bb4: $43
	add  b                                           ; $4bb5: $80
	ccf                                              ; $4bb6: $3f
	add  b                                           ; $4bb7: $80
	nop                                              ; $4bb8: $00
	dec  bc                                          ; $4bb9: $0b
	cp   $82                                         ; $4bba: $fe $82
	add  e                                           ; $4bbc: $83
	add  b                                           ; $4bbd: $80
	db   $fd                                         ; $4bbe: $fd
	add  l                                           ; $4bbf: $85
	cp   $82                                         ; $4bc0: $fe $82
	rst  $38                                         ; $4bc2: $ff
	ld   sp, hl                                      ; $4bc3: $f9
	rst  $38                                         ; $4bc4: $ff

jr_02e_4bc5:
	add  d                                           ; $4bc5: $82
	add  b                                           ; $4bc6: $80
	rst  $38                                         ; $4bc7: $ff
	add  d                                           ; $4bc8: $82
	nop                                              ; $4bc9: $00
	inc  b                                           ; $4bca: $04
	ld   hl, sp+$00                                  ; $4bcb: $f8 $00
	db   $fc                                         ; $4bcd: $fc
	inc  b                                           ; $4bce: $04
	rst  $38                                         ; $4bcf: $ff
	add  c                                           ; $4bd0: $81
	nop                                              ; $4bd1: $00
	ld   bc, $00ff                                   ; $4bd2: $01 $ff $00
	add  b                                           ; $4bd5: $80
	rst  $38                                         ; $4bd6: $ff
	add  [hl]                                        ; $4bd7: $86
	nop                                              ; $4bd8: $00
	nop                                              ; $4bd9: $00
	rst  $38                                         ; $4bda: $ff
	add  c                                           ; $4bdb: $81
	nop                                              ; $4bdc: $00
	ld   bc, $00ff                                   ; $4bdd: $01 $ff $00
	add  b                                           ; $4be0: $80
	rst  $38                                         ; $4be1: $ff
	adc  [hl]                                        ; $4be2: $8e
	nop                                              ; $4be3: $00
	ld   b, $3f                                      ; $4be4: $06 $3f
	ld   bc, $0141                                   ; $4be6: $01 $41 $01
	cp   a                                           ; $4be9: $bf
	or   a                                           ; $4bea: $b7
	xor  a                                           ; $4beb: $af
	add  b                                           ; $4bec: $80
	cp   a                                           ; $4bed: $bf
	inc  b                                           ; $4bee: $04
	and  a                                           ; $4bef: $a7
	cp   a                                           ; $4bf0: $bf
	cp   l                                           ; $4bf1: $bd
	cp   [hl]                                        ; $4bf2: $be
	jp   nz, $fc80                                   ; $4bf3: $c2 $80 $fc

	nop                                              ; $4bf6: $00
	rst  $38                                         ; $4bf7: $ff
	add  c                                           ; $4bf8: $81
	ld   b, b                                        ; $4bf9: $40
	add  c                                           ; $4bfa: $81
	rst  $38                                         ; $4bfb: $ff
	ld   [bc], a                                     ; $4bfc: $02
	ret  nz                                          ; $4bfd: $c0

	rst  $38                                         ; $4bfe: $ff
	ld   a, a                                        ; $4bff: $7f
	add  b                                           ; $4c00: $80
	add  b                                           ; $4c01: $80
	add  d                                           ; $4c02: $82
	nop                                              ; $4c03: $00
	nop                                              ; $4c04: $00
	rst  $38                                         ; $4c05: $ff
	add  c                                           ; $4c06: $81
	jr   z, jr_02e_4c0c                              ; $4c07: $28 $03

	rst  $28                                         ; $4c09: $ef
	add  sp, -$11                                    ; $4c0a: $e8 $ef

jr_02e_4c0c:
	ccf                                              ; $4c0c: $3f
	add  b                                           ; $4c0d: $80
	ldh  a, [$84]                                    ; $4c0e: $f0 $84
	nop                                              ; $4c10: $00
	nop                                              ; $4c11: $00
	rst  $38                                         ; $4c12: $ff
	add  c                                           ; $4c13: $81
	nop                                              ; $4c14: $00
	ld   bc, $00ff                                   ; $4c15: $01 $ff $00
	add  b                                           ; $4c18: $80
	rst  $38                                         ; $4c19: $ff
	add  l                                           ; $4c1a: $85
	nop                                              ; $4c1b: $00
	nop                                              ; $4c1c: $00
	ld   h, b                                        ; $4c1d: $60
	adc  l                                           ; $4c1e: $8d
	or   b                                           ; $4c1f: $b0
	nop                                              ; $4c20: $00
	sub  [hl]                                        ; $4c21: $96
	adc  l                                           ; $4c22: $8d
	xor  e                                           ; $4c23: $ab
	nop                                              ; $4c24: $00
	db   $ed                                         ; $4c25: $ed
	rst  $38                                         ; $4c26: $ff
	nop                                              ; $4c27: $00
	rst  $38                                         ; $4c28: $ff
	nop                                              ; $4c29: $00
	rst  $38                                         ; $4c2a: $ff
	nop                                              ; $4c2b: $00
	rst  $38                                         ; $4c2c: $ff
	nop                                              ; $4c2d: $00
	rst  $38                                         ; $4c2e: $ff
	nop                                              ; $4c2f: $00
	rst  $38                                         ; $4c30: $ff
	nop                                              ; $4c31: $00
	rst  $38                                         ; $4c32: $ff
	nop                                              ; $4c33: $00
	rst  $38                                         ; $4c34: $ff
	nop                                              ; $4c35: $00
	rst  $38                                         ; $4c36: $ff
	nop                                              ; $4c37: $00
	db   $f4                                         ; $4c38: $f4
	nop                                              ; $4c39: $00
	ld   [de], a                                     ; $4c3a: $12
	ld   [bc], a                                     ; $4c3b: $02
	nop                                              ; $4c3c: $00
	inc  b                                           ; $4c3d: $04
	add  c                                           ; $4c3e: $81
	dec  de                                          ; $4c3f: $1b
	add  d                                           ; $4c40: $82
	rra                                              ; $4c41: $1f
	add  d                                           ; $4c42: $82
	jr   jr_02e_4bc5                                 ; $4c43: $18 $80

	ld   a, [de]                                     ; $4c45: $1a
	add  b                                           ; $4c46: $80
	add  hl, de                                      ; $4c47: $19
	ld   bc, $d434                                   ; $4c48: $01 $34 $d4
	add  b                                           ; $4c4b: $80
	ld   [$f580], a                                  ; $4c4c: $ea $80 $f5
	add  b                                           ; $4c4f: $80
	rst  $38                                         ; $4c50: $ff
	adc  h                                           ; $4c51: $8c
	nop                                              ; $4c52: $00
	add  d                                           ; $4c53: $82
	rst  $38                                         ; $4c54: $ff
	add  d                                           ; $4c55: $82
	nop                                              ; $4c56: $00
	ld   [bc], a                                     ; $4c57: $02
	ld   [bc], a                                     ; $4c58: $02
	inc  b                                           ; $4c59: $04
	ld   b, $83                                      ; $4c5a: $06 $83
	nop                                              ; $4c5c: $00
	add  d                                           ; $4c5d: $82
	rst  $38                                         ; $4c5e: $ff
	add  d                                           ; $4c5f: $82
	nop                                              ; $4c60: $00
	inc  bc                                          ; $4c61: $03
	ld   b, h                                        ; $4c62: $44
	cp   h                                           ; $4c63: $bc
	and  e                                           ; $4c64: $a3
	ld   e, e                                        ; $4c65: $5b
	add  h                                           ; $4c66: $84
	dec  de                                          ; $4c67: $1b
	add  b                                           ; $4c68: $80
	nop                                              ; $4c69: $00
	rlca                                             ; $4c6a: $07
	ld   de, $c61f                                   ; $4c6b: $11 $1f $c6
	ret  c                                           ; $4c6e: $d8

	inc  bc                                          ; $4c6f: $03
	inc  d                                           ; $4c70: $14
	rst  ToBoot                                         ; $4c71: $c7
	ret  nz                                          ; $4c72: $c0

	add  [hl]                                        ; $4c73: $86
	ldh  a, [$80]                                    ; $4c74: $f0 $80
	ld   [hl], b                                     ; $4c76: $70
	add  b                                           ; $4c77: $80
	db   $10                                         ; $4c78: $10
	ld   [bc], a                                     ; $4c79: $02
	sub  b                                           ; $4c7a: $90
	ld   d, b                                        ; $4c7b: $50
	ret  nz                                          ; $4c7c: $c0

	add  b                                           ; $4c7d: $80
	ld   d, l                                        ; $4c7e: $55
	add  b                                           ; $4c7f: $80
	xor  d                                           ; $4c80: $aa
	add  b                                           ; $4c81: $80
	ld   d, l                                        ; $4c82: $55
	add  b                                           ; $4c83: $80
	xor  d                                           ; $4c84: $aa
	add  b                                           ; $4c85: $80
	ld   d, l                                        ; $4c86: $55
	add  b                                           ; $4c87: $80
	xor  d                                           ; $4c88: $aa
	add  b                                           ; $4c89: $80
	ld   d, l                                        ; $4c8a: $55
	add  b                                           ; $4c8b: $80
	xor  d                                           ; $4c8c: $aa
	add  b                                           ; $4c8d: $80
	rst  $38                                         ; $4c8e: $ff
	adc  e                                           ; $4c8f: $8b
	nop                                              ; $4c90: $00
	adc  [hl]                                        ; $4c91: $8e
	rst  $38                                         ; $4c92: $ff
	add  b                                           ; $4c93: $80
	cp   $80                                         ; $4c94: $fe $80
	rst  $38                                         ; $4c96: $ff
	add  b                                           ; $4c97: $80
	cp   $80                                         ; $4c98: $fe $80
	rst  $38                                         ; $4c9a: $ff
	add  b                                           ; $4c9b: $80
	cp   $80                                         ; $4c9c: $fe $80
	db   $fd                                         ; $4c9e: $fd
	add  b                                           ; $4c9f: $80
	ld   a, [$f580]                                  ; $4ca0: $fa $80 $f5
	add  b                                           ; $4ca3: $80
	xor  d                                           ; $4ca4: $aa
	add  b                                           ; $4ca5: $80
	ld   d, l                                        ; $4ca6: $55
	add  b                                           ; $4ca7: $80
	xor  d                                           ; $4ca8: $aa
	add  b                                           ; $4ca9: $80
	ld   d, l                                        ; $4caa: $55
	add  b                                           ; $4cab: $80
	xor  d                                           ; $4cac: $aa
	add  b                                           ; $4cad: $80
	ld   d, l                                        ; $4cae: $55
	add  b                                           ; $4caf: $80
	xor  d                                           ; $4cb0: $aa
	add  b                                           ; $4cb1: $80
	ld   d, l                                        ; $4cb2: $55
	add  b                                           ; $4cb3: $80
	xor  d                                           ; $4cb4: $aa
	add  b                                           ; $4cb5: $80
	ld   d, l                                        ; $4cb6: $55
	add  b                                           ; $4cb7: $80
	xor  d                                           ; $4cb8: $aa
	add  b                                           ; $4cb9: $80
	ld   d, l                                        ; $4cba: $55
	add  b                                           ; $4cbb: $80
	xor  d                                           ; $4cbc: $aa
	add  b                                           ; $4cbd: $80
	ld   d, l                                        ; $4cbe: $55
	add  b                                           ; $4cbf: $80
	xor  d                                           ; $4cc0: $aa
	add  b                                           ; $4cc1: $80
	ld   d, l                                        ; $4cc2: $55
	nop                                              ; $4cc3: $00
	rst  $38                                         ; $4cc4: $ff
	cp   l                                           ; $4cc5: $bd
	nop                                              ; $4cc6: $00
	add  c                                           ; $4cc7: $81
	rst  $38                                         ; $4cc8: $ff
	add  b                                           ; $4cc9: $80
	dec  e                                           ; $4cca: $1d
	add  b                                           ; $4ccb: $80
	nop                                              ; $4ccc: $00
	add  b                                           ; $4ccd: $80
	ld   [hl], b                                     ; $4cce: $70
	rlca                                             ; $4ccf: $07
	ld   a, [hl]                                     ; $4cd0: $7e
	ld   e, [hl]                                     ; $4cd1: $5e
	ld   e, $c6                                      ; $4cd2: $1e $c6
	nop                                              ; $4cd4: $00
	rlca                                             ; $4cd5: $07
	sub  c                                           ; $4cd6: $91
	ld   l, [hl]                                     ; $4cd7: $6e
	add  d                                           ; $4cd8: $82
	rst  $38                                         ; $4cd9: $ff
	add  b                                           ; $4cda: $80
	ld   l, a                                        ; $4cdb: $6f
	add  b                                           ; $4cdc: $80
	inc  bc                                          ; $4cdd: $03
	add  b                                           ; $4cde: $80
	ldh  [$80], a                                    ; $4cdf: $e0 $80
	rst  $30                                         ; $4ce1: $f7
	daa                                              ; $4ce2: $27
	ld   h, e                                        ; $4ce3: $63
	add  b                                           ; $4ce4: $80
	rlca                                             ; $4ce5: $07
	and  $ff                                         ; $4ce6: $e6 $ff
	cp   $ff                                         ; $4ce8: $fe $ff
	cp   $ff                                         ; $4cea: $fe $ff
	cp   $7f                                         ; $4cec: $fe $7f
	ld   a, [hl]                                     ; $4cee: $7e
	rla                                              ; $4cef: $17
	dec  d                                           ; $4cf0: $15
	add  b                                           ; $4cf1: $80
	add  d                                           ; $4cf2: $82
	cp   e                                           ; $4cf3: $bb
	cp   d                                           ; $4cf4: $ba
	dec  de                                          ; $4cf5: $1b
	or   d                                           ; $4cf6: $b2
	rst  $38                                         ; $4cf7: $ff
	nop                                              ; $4cf8: $00
	rst  $38                                         ; $4cf9: $ff
	nop                                              ; $4cfa: $00
	rst  $38                                         ; $4cfb: $ff
	dec  b                                           ; $4cfc: $05
	rst  $38                                         ; $4cfd: $ff
	adc  a                                           ; $4cfe: $8f
	ld   a, a                                        ; $4cff: $7f
	ld   e, a                                        ; $4d00: $5f
	ccf                                              ; $4d01: $3f
	ld   a, a                                        ; $4d02: $7f
	ld   b, a                                        ; $4d03: $47
	rlca                                             ; $4d04: $07
	ld   l, a                                        ; $4d05: $6f
	rst  ToBoot                                         ; $4d06: $c7
	rst  $38                                         ; $4d07: $ff
	rla                                              ; $4d08: $17
	rst  $38                                         ; $4d09: $ff
	cp   a                                           ; $4d0a: $bf
	add  a                                           ; $4d0b: $87
	rst  $38                                         ; $4d0c: $ff
	add  b                                           ; $4d0d: $80
	db   $fd                                         ; $4d0e: $fd
	ld   bc, $e1fe                                   ; $4d0f: $01 $fe $e1
	adc  b                                           ; $4d12: $88
	jp   hl                                          ; $4d13: $e9


	add  b                                           ; $4d14: $80
	xor  c                                           ; $4d15: $a9
	add  b                                           ; $4d16: $80
	ld   c, e                                        ; $4d17: $4b
	ld   bc, $11f1                                   ; $4d18: $01 $f1 $11
	add  [hl]                                        ; $4d1b: $86
	cp   c                                           ; $4d1c: $b9
	add  h                                           ; $4d1d: $84
	cp   e                                           ; $4d1e: $bb
	add  b                                           ; $4d1f: $80
	ld   de, $b986                                   ; $4d20: $11 $86 $b9
	ld   bc, $b9b8                                   ; $4d23: $01 $b8 $b9
	add  d                                           ; $4d26: $82
	cp   l                                           ; $4d27: $bd
	ld   bc, $9495                                   ; $4d28: $01 $95 $94
	adc  h                                           ; $4d2b: $8c
	sub  $00                                         ; $4d2c: $d6 $00
	nop                                              ; $4d2e: $00
	add  l                                           ; $4d2f: $85
	rst  $38                                         ; $4d30: $ff
	add  b                                           ; $4d31: $80
	ld   d, l                                        ; $4d32: $55
	add  b                                           ; $4d33: $80
	xor  d                                           ; $4d34: $aa
	add  b                                           ; $4d35: $80
	ld   d, l                                        ; $4d36: $55
	add  b                                           ; $4d37: $80
	nop                                              ; $4d38: $00
	add  [hl]                                        ; $4d39: $86
	rst  $38                                         ; $4d3a: $ff
	add  b                                           ; $4d3b: $80
	ld   d, l                                        ; $4d3c: $55
	add  b                                           ; $4d3d: $80
	xor  d                                           ; $4d3e: $aa
	add  b                                           ; $4d3f: $80
	ld   d, l                                        ; $4d40: $55
	add  b                                           ; $4d41: $80
	nop                                              ; $4d42: $00
	ld   bc, $18e7                                   ; $4d43: $01 $e7 $18
	adc  b                                           ; $4d46: $88
	ld   e, h                                        ; $4d47: $5c
	add  d                                           ; $4d48: $82
	ld   e, l                                        ; $4d49: $5d
	add  b                                           ; $4d4a: $80
	add  sp, -$74                                    ; $4d4b: $e8 $8c
	db   $ed                                         ; $4d4d: $ed
	add  b                                           ; $4d4e: $80
	adc  h                                           ; $4d4f: $8c
	add  b                                           ; $4d50: $80
	call z, $de88                                    ; $4d51: $cc $88 $de
	inc  bc                                          ; $4d54: $03
	ld   e, [hl]                                     ; $4d55: $5e
	sbc  $10                                         ; $4d56: $de $10
	sub  a                                           ; $4d58: $97
	add  h                                           ; $4d59: $84
	rst  $10                                         ; $4d5a: $d7
	add  d                                           ; $4d5b: $82
	rst  $30                                         ; $4d5c: $f7
	add  b                                           ; $4d5d: $80
	ldh  a, [c]                                      ; $4d5e: $f2
	add  b                                           ; $4d5f: $80
	push de                                          ; $4d60: $d5
	ld   b, $2d                                      ; $4d61: $06 $2d
	rst  $38                                         ; $4d63: $ff
	ret  nc                                          ; $4d64: $d0

	rst  $38                                         ; $4d65: $ff
	ld   hl, sp-$01                                  ; $4d66: $f8 $ff
	db   $fd                                         ; $4d68: $fd
	add  l                                           ; $4d69: $85
	rst  $38                                         ; $4d6a: $ff
	add  b                                           ; $4d6b: $80
	ld   d, a                                        ; $4d6c: $57
	dec  bc                                          ; $4d6d: $0b
	nop                                              ; $4d6e: $00
	ld   c, b                                        ; $4d6f: $48
	ld   c, a                                        ; $4d70: $4f
	jr   nz, jr_02e_4da1                             ; $4d71: $20 $2e

	ld   [hl], $ac                                   ; $4d73: $36 $ac
	adc  [hl]                                        ; $4d75: $8e
	ld   b, $ae                                      ; $4d76: $06 $ae
	adc  $8e                                         ; $4d78: $ce $8e
	add  b                                           ; $4d7a: $80
	rrca                                             ; $4d7b: $0f
	dec  de                                          ; $4d7c: $1b
	ld   c, d                                        ; $4d7d: $4a
	ld   c, a                                        ; $4d7e: $4f
	rst  $38                                         ; $4d7f: $ff
	adc  a                                           ; $4d80: $8f
	add  l                                           ; $4d81: $85
	add  a                                           ; $4d82: $87
	cp   h                                           ; $4d83: $bc
	adc  a                                           ; $4d84: $8f
	cp   $ae                                         ; $4d85: $fe $ae
	ld   l, [hl]                                     ; $4d87: $6e
	ld   c, [hl]                                     ; $4d88: $4e
	rrca                                             ; $4d89: $0f
	ld   c, c                                        ; $4d8a: $49
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d8b: $cf
	rst  ToBoot                                         ; $4d8c: $c7
	call nz, $00c7                                   ; $4d8d: $c4 $c7 $00
	ret  nz                                          ; $4d90: $c0

	adc  c                                           ; $4d91: $89
	db   $e3                                         ; $4d92: $e3
	rst  ToBoot                                         ; $4d93: $c7
	di                                               ; $4d94: $f3
	ldh  a, [c]                                      ; $4d95: $f2
	sub  e                                           ; $4d96: $93
	and  e                                           ; $4d97: $a3
	ld   sp, $b980                                   ; $4d98: $31 $80 $b9
	nop                                              ; $4d9b: $00
	add  hl, sp                                      ; $4d9c: $39
	add  c                                           ; $4d9d: $81
	ld   sp, hl                                      ; $4d9e: $f9
	rlca                                             ; $4d9f: $07
	sbc  [hl]                                        ; $4da0: $9e

jr_02e_4da1:
	ld   b, a                                        ; $4da1: $47
	or   a                                           ; $4da2: $b7
	ld   sp, $98d9                                   ; $4da3: $31 $d9 $98
	db   $ec                                         ; $4da6: $ec
	call z, $ec80                                    ; $4da7: $cc $80 $ec
	nop                                              ; $4daa: $00
	db   $e4                                         ; $4dab: $e4
	add  c                                           ; $4dac: $81
	db   $f4                                         ; $4dad: $f4
	inc  bc                                          ; $4dae: $03
	ld   [hl], h                                     ; $4daf: $74
	db   $f4                                         ; $4db0: $f4
	ld   h, l                                        ; $4db1: $65
	ld   [$d580], a                                  ; $4db2: $ea $80 $d5
	add  b                                           ; $4db5: $80
	xor  d                                           ; $4db6: $aa
	add  b                                           ; $4db7: $80
	ret  nc                                          ; $4db8: $d0

	ld   [bc], a                                     ; $4db9: $02
	ld   h, b                                        ; $4dba: $60
	ldh  [hScriptOpcodeParams], a                                    ; $4dbb: $e0 $a0
	add  e                                           ; $4dbd: $83
	ld   h, b                                        ; $4dbe: $60
	ld   bc, $abf4                                   ; $4dbf: $01 $f4 $ab
	add  b                                           ; $4dc2: $80
	ld   c, e                                        ; $4dc3: $4b
	add  d                                           ; $4dc4: $82
	dec  bc                                          ; $4dc5: $0b
	add  d                                           ; $4dc6: $82
	dec  de                                          ; $4dc7: $1b
	add  d                                           ; $4dc8: $82
	rra                                              ; $4dc9: $1f
	ld   [bc], a                                     ; $4dca: $02
	ld   e, e                                        ; $4dcb: $5b
	cp   e                                           ; $4dcc: $bb
	xor  e                                           ; $4dcd: $ab
	add  e                                           ; $4dce: $83
	cp   e                                           ; $4dcf: $bb
	ld   bc, $bfbe                                   ; $4dd0: $01 $be $bf
	add  b                                           ; $4dd3: $80
	rst  $38                                         ; $4dd4: $ff
	ld   b, $f4                                      ; $4dd5: $06 $f4
	rst  $30                                         ; $4dd7: $f7
	rst  ToBoot                                         ; $4dd8: $c7
	rst  $30                                         ; $4dd9: $f7
	ld   e, $3d                                      ; $4dda: $1e $3d
	inc  a                                           ; $4ddc: $3c
	add  e                                           ; $4ddd: $83
	dec  a                                           ; $4dde: $3d
	ld   bc, $3e2e                                   ; $4ddf: $01 $2e $3e
	add  h                                           ; $4de2: $84
	ld   e, $03                                      ; $4de3: $1e $03
	rst  ToBoot                                         ; $4de5: $c7
	rst  $10                                         ; $4de6: $d7
	ld   d, a                                        ; $4de7: $57
	rst  $10                                         ; $4de8: $d7
	add  d                                           ; $4de9: $82
	rst  $30                                         ; $4dea: $f7
	add  h                                           ; $4deb: $84
	rst  $38                                         ; $4dec: $ff
	ld   [bc], a                                     ; $4ded: $02
	ccf                                              ; $4dee: $3f
	rst  $38                                         ; $4def: $ff
	cp   a                                           ; $4df0: $bf
	sbc  l                                           ; $4df1: $9d
	nop                                              ; $4df2: $00
	ld   bc, $5da2                                   ; $4df3: $01 $a2 $5d
	add  d                                           ; $4df6: $82
	ld   a, l                                        ; $4df7: $7d
	add  d                                           ; $4df8: $82
	ld   a, a                                        ; $4df9: $7f
	add  h                                           ; $4dfa: $84
	ei                                               ; $4dfb: $fb
	add  b                                           ; $4dfc: $80
	db   $ed                                         ; $4dfd: $ed
	add  d                                           ; $4dfe: $82
	call $dc84                                       ; $4dff: $cd $84 $dc
	nop                                              ; $4e02: $00
	or   h                                           ; $4e03: $b4
	add  c                                           ; $4e04: $81
	cp   h                                           ; $4e05: $bc
	nop                                              ; $4e06: $00
	ld   d, [hl]                                     ; $4e07: $56
	add  c                                           ; $4e08: $81
	sbc  $80                                         ; $4e09: $de $80
	rst  JumpTable                                         ; $4e0b: $df
	add  b                                           ; $4e0c: $80
	rst  $38                                         ; $4e0d: $ff
	ld   bc, $ffb7                                   ; $4e0e: $01 $b7 $ff
	add  d                                           ; $4e11: $82
	cp   $03                                         ; $4e12: $fe $03
	ld   l, [hl]                                     ; $4e14: $6e
	xor  $9d                                         ; $4e15: $ee $9d
	jp   nc, $d084                                   ; $4e17: $d2 $84 $d0

	add  b                                           ; $4e1a: $80
	call nc, $0b07                                   ; $4e1b: $d4 $07 $0b
	inc  bc                                          ; $4e1e: $03
	jr   nc, @+$0c                                   ; $4e1f: $30 $0a

	adc  e                                           ; $4e21: $8b
	jp   hl                                          ; $4e22: $e9


	ld   [bc], a                                     ; $4e23: $02
	xor  d                                           ; $4e24: $aa
	add  b                                           ; $4e25: $80
	ld   d, l                                        ; $4e26: $55
	add  b                                           ; $4e27: $80
	ld   a, [bc]                                     ; $4e28: $0a
	add  b                                           ; $4e29: $80
	ld   bc, $c080                                   ; $4e2a: $01 $80 $c0
	add  b                                           ; $4e2d: $80
	and  b                                           ; $4e2e: $a0
	add  b                                           ; $4e2f: $80
	ld   d, b                                        ; $4e30: $50
	add  b                                           ; $4e31: $80
	ld   c, b                                        ; $4e32: $48
	ld   bc, $4fbf                                   ; $4e33: $01 $bf $4f
	adc  h                                           ; $4e36: $8c
	rst  JumpTable                                         ; $4e37: $df
	nop                                              ; $4e38: $00
	cp   c                                           ; $4e39: $b9
	adc  l                                           ; $4e3a: $8d
	rst  ToBoot                                         ; $4e3b: $c7
	nop                                              ; $4e3c: $00
	ld   d, [hl]                                     ; $4e3d: $56
	add  c                                           ; $4e3e: $81
	ld   hl, sp+$01                                  ; $4e3f: $f8 $01
	ei                                               ; $4e41: $fb
	ld   hl, sp-$80                                  ; $4e42: $f8 $80
	db   $fc                                         ; $4e44: $fc
	ld   bc, $f1ed                                   ; $4e45: $01 $ed $f1
	add  b                                           ; $4e48: $80
	pop  bc                                          ; $4e49: $c1
	nop                                              ; $4e4a: $00
	ld   sp, hl                                      ; $4e4b: $f9
	add  c                                           ; $4e4c: $81
	pop  af                                          ; $4e4d: $f1
	nop                                              ; $4e4e: $00
	ld   c, b                                        ; $4e4f: $48
	add  b                                           ; $4e50: $80
	db   $e4                                         ; $4e51: $e4
	add  b                                           ; $4e52: $80
	db   $ec                                         ; $4e53: $ec
	add  b                                           ; $4e54: $80
	ret  z                                           ; $4e55: $c8

	add  e                                           ; $4e56: $83
	ret                                              ; $4e57: $c9


	add  d                                           ; $4e58: $82
	jp   hl                                          ; $4e59: $e9


	ld   [bc], a                                     ; $4e5a: $02
	sub  $e0                                         ; $4e5b: $d6 $e0
	ld   h, b                                        ; $4e5d: $60
	add  c                                           ; $4e5e: $81
	ldh  [$88], a                                    ; $4e5f: $e0 $88
	ret  nz                                          ; $4e61: $c0

	nop                                              ; $4e62: $00
	nop                                              ; $4e63: $00
	add  c                                           ; $4e64: $81
	rra                                              ; $4e65: $1f
	add  d                                           ; $4e66: $82
	ld   e, $82                                      ; $4e67: $1e $82
	ld   c, $80                                      ; $4e69: $0e $80
	inc  c                                           ; $4e6b: $0c
	add  b                                           ; $4e6c: $80
	dec  c                                           ; $4e6d: $0d
	nop                                              ; $4e6e: $00
	dec  [hl]                                        ; $4e6f: $35
	add  c                                           ; $4e70: $81
	rst  $30                                         ; $4e71: $f7
	nop                                              ; $4e72: $00
	jp   hl                                          ; $4e73: $e9


	add  c                                           ; $4e74: $81
	xor  $09                                         ; $4e75: $ee $09
	adc  [hl]                                        ; $4e77: $8e
	xor  $e2                                         ; $4e78: $ee $e2
	db   $ec                                         ; $4e7a: $ec
	rst  $28                                         ; $4e7b: $ef
	db   $ec                                         ; $4e7c: $ec
	rra                                              ; $4e7d: $1f
	call c, $1e9d                                    ; $4e7e: $dc $9d $1e
	add  d                                           ; $4e81: $82
	rra                                              ; $4e82: $1f
	nop                                              ; $4e83: $00
	inc  de                                          ; $4e84: $13
	add  c                                           ; $4e85: $81
	rrca                                             ; $4e86: $0f
	rlca                                             ; $4e87: $07
	add  hl, bc                                      ; $4e88: $09
	rlca                                             ; $4e89: $07
	rra                                              ; $4e8a: $1f
	rlca                                             ; $4e8b: $07
	rra                                              ; $4e8c: $1f
	rlca                                             ; $4e8d: $07
	and  c                                           ; $4e8e: $a1
	ei                                               ; $4e8f: $fb
	add  b                                           ; $4e90: $80
	ld   a, e                                        ; $4e91: $7b
	add  b                                           ; $4e92: $80
	ld   a, d                                        ; $4e93: $7a
	ld   bc, $7a1a                                   ; $4e94: $01 $1a $7a
	add  b                                           ; $4e97: $80
	cp   d                                           ; $4e98: $ba
	add  b                                           ; $4e99: $80
	cp   h                                           ; $4e9a: $bc
	ld   bc, $bc8c                                   ; $4e9b: $01 $8c $bc
	add  b                                           ; $4e9e: $80
	call c, $ef00                                    ; $4e9f: $dc $00 $ef
	sbc  l                                           ; $4ea2: $9d
	nop                                              ; $4ea3: $00
	ld   [bc], a                                     ; $4ea4: $02
	inc  b                                           ; $4ea5: $04
	ei                                               ; $4ea6: $fb
	ldh  a, [c]                                      ; $4ea7: $f2
	add  c                                           ; $4ea8: $81
	di                                               ; $4ea9: $f3
	add  b                                           ; $4eaa: $80
	rst  $30                                         ; $4eab: $f7
	ld   bc, $f7f4                                   ; $4eac: $01 $f4 $f7
	add  b                                           ; $4eaf: $80
	or   $01                                         ; $4eb0: $f6 $01
	add  sp, -$12                                    ; $4eb2: $e8 $ee
	add  b                                           ; $4eb4: $80
	ld   l, h                                        ; $4eb5: $6c
	inc  bc                                          ; $4eb6: $03
	ldh  a, [$fc]                                    ; $4eb7: $f0 $fc
	ldh  [$f8], a                                    ; $4eb9: $e0 $f8
	add  d                                           ; $4ebb: $82
	ld   a, b                                        ; $4ebc: $78
	ld   bc, $7048                                   ; $4ebd: $01 $48 $70
	add  b                                           ; $4ec0: $80
	ldh  a, [rTAC]                                   ; $4ec1: $f0 $07
	ld   hl, sp-$10                                  ; $4ec3: $f8 $f0
	sbc  b                                           ; $4ec5: $98
	ldh  [$fe], a                                    ; $4ec6: $e0 $fe
	xor  $e2                                         ; $4ec8: $ee $e2
	xor  $80                                         ; $4eca: $ee $80
	or   $00                                         ; $4ecc: $f6 $00
	sub  [hl]                                        ; $4ece: $96
	add  c                                           ; $4ecf: $81
	halt                                             ; $4ed0: $76
	inc  c                                           ; $4ed1: $0c
	ld   [hl], b                                     ; $4ed2: $70
	halt                                             ; $4ed3: $76
	adc  d                                           ; $4ed4: $8a
	ld   a, [hl-]                                    ; $4ed5: $3a
	ld   a, [$6c3a]                                  ; $4ed6: $fa $3a $6c
	push hl                                          ; $4ed9: $e5
	add  l                                           ; $4eda: $85
	push bc                                          ; $4edb: $c5
	ret  nz                                          ; $4edc: $c0

	call nz, $81b2                                   ; $4edd: $c4 $b2 $81
	ldh  a, [c]                                      ; $4ee0: $f2
	rlca                                             ; $4ee1: $07
	sub  d                                           ; $4ee2: $92
	jp   nc, $d2c2                                   ; $4ee3: $d2 $c2 $d2

	or   d                                           ; $4ee6: $b2
	ldh  a, [c]                                      ; $4ee7: $f2

jr_02e_4ee8:
	ret  c                                           ; $4ee8: $d8

	ld   l, b                                        ; $4ee9: $68
	add  b                                           ; $4eea: $80
	inc  h                                           ; $4eeb: $24
	add  b                                           ; $4eec: $80
	or   h                                           ; $4eed: $b4
	add  h                                           ; $4eee: $84
	sub  d                                           ; $4eef: $92
	add  b                                           ; $4ef0: $80
	ld   c, c                                        ; $4ef1: $49
	add  b                                           ; $4ef2: $80
	ld   l, c                                        ; $4ef3: $69
	nop                                              ; $4ef4: $00
	cpl                                              ; $4ef5: $2f
	add  c                                           ; $4ef6: $81
	rst  JumpTable                                         ; $4ef7: $df
	add  b                                           ; $4ef8: $80
	rst  $28                                         ; $4ef9: $ef
	ld   [bc], a                                     ; $4efa: $02
	xor  $ef                                         ; $4efb: $ee $ef
	pop  hl                                          ; $4efd: $e1
	add  b                                           ; $4efe: $80
	xor  $82                                         ; $4eff: $ee $82
	ldh  [c], a                                      ; $4f01: $e2
	ld   bc, $b9e0                                   ; $4f02: $01 $e0 $b9
	add  l                                           ; $4f05: $85
	rst  ToBoot                                         ; $4f06: $c7
	nop                                              ; $4f07: $00
	call nz, $c581                                   ; $4f08: $c4 $81 $c5
	add  b                                           ; $4f0b: $80
	call z, $d602                                    ; $4f0c: $cc $02 $d6
	add  $59                                         ; $4f0f: $c6 $59
	add  b                                           ; $4f11: $80
	pop  af                                          ; $4f12: $f1
	add  l                                           ; $4f13: $85
	pop  hl                                          ; $4f14: $e1
	inc  bc                                          ; $4f15: $03
	and  c                                           ; $4f16: $a1
	pop  hl                                          ; $4f17: $e1
	ld   h, c                                        ; $4f18: $61
	pop  hl                                          ; $4f19: $e1
	add  b                                           ; $4f1a: $80
	ld   hl, $9800                                   ; $4f1b: $21 $00 $98
	add  b                                           ; $4f1e: $80
	jp   hl                                          ; $4f1f: $e9


	ld   [bc], a                                     ; $4f20: $02
	add  sp, -$20                                    ; $4f21: $e8 $e0
	add  sp, -$78                                    ; $4f23: $e8 $88
	ldh  [rSB], a                                    ; $4f25: $e0 $01
	ld   e, a                                        ; $4f27: $5f
	ret  nz                                          ; $4f28: $c0

	add  [hl]                                        ; $4f29: $86
	ldh  [$81], a                                    ; $4f2a: $e0 $81
	ldh  a, [$81]                                    ; $4f2c: $f0 $81
	ld   [hl], b                                     ; $4f2e: $70
	nop                                              ; $4f2f: $00
	sub  d                                           ; $4f30: $92
	add  e                                           ; $4f31: $83
	dec  c                                           ; $4f32: $0d
	add  b                                           ; $4f33: $80
	add  hl, bc                                      ; $4f34: $09
	add  b                                           ; $4f35: $80
	dec  bc                                          ; $4f36: $0b
	add  b                                           ; $4f37: $80
	ld   [bc], a                                     ; $4f38: $02
	add  b                                           ; $4f39: $80
	nop                                              ; $4f3a: $00
	add  b                                           ; $4f3b: $80
	db   $10                                         ; $4f3c: $10
	inc  b                                           ; $4f3d: $04
	xor  a                                           ; $4f3e: $af
	ret  c                                           ; $4f3f: $d8

	ld   e, b                                        ; $4f40: $58
	ret  c                                           ; $4f41: $d8

	adc  b                                           ; $4f42: $88

jr_02e_4f43:
	add  c                                           ; $4f43: $81
	or   b                                           ; $4f44: $b0
	ld   [bc], a                                     ; $4f45: $02
	db   $10                                         ; $4f46: $10
	ld   h, b                                        ; $4f47: $60
	and  b                                           ; $4f48: $a0
	add  b                                           ; $4f49: $80
	ldh  [$03], a                                    ; $4f4a: $e0 $03
	ret  nz                                          ; $4f4c: $c0

	ld   b, b                                        ; $4f4d: $40
	nop                                              ; $4f4e: $00
	ld   h, c                                        ; $4f4f: $61
	add  c                                           ; $4f50: $81
	inc  bc                                          ; $4f51: $03
	nop                                              ; $4f52: $00
	ld   [bc], a                                     ; $4f53: $02
	add  d                                           ; $4f54: $82
	ld   bc, $0085                                   ; $4f55: $01 $85 $00
	nop                                              ; $4f58: $00
	res  0, c                                        ; $4f59: $cb $81
	call c, Call_02e_6400                            ; $4f5b: $dc $00 $64
	add  c                                           ; $4f5e: $81
	db   $ec                                         ; $4f5f: $ec
	dec  b                                           ; $4f60: $05
	jr   nz, jr_02e_4f43                             ; $4f61: $20 $e0

	sub  b                                           ; $4f63: $90
	ld   [hl], b                                     ; $4f64: $70
	ld   d, b                                        ; $4f65: $50
	jr   nc, jr_02e_4ee8                             ; $4f66: $30 $80

	ld   bc, $3f00                                   ; $4f68: $01 $00 $3f
	sbc  l                                           ; $4f6b: $9d
	nop                                              ; $4f6c: $00
	inc  bc                                          ; $4f6d: $03
	cp   d                                           ; $4f6e: $ba
	ld   c, l                                        ; $4f6f: $4d
	ld   b, c                                        ; $4f70: $41
	ld   c, c                                        ; $4f71: $49
	add  b                                           ; $4f72: $80
	ld   d, e                                        ; $4f73: $53
	inc  c                                           ; $4f74: $0c
	ld   b, d                                        ; $4f75: $42
	ld   b, e                                        ; $4f76: $43
	inc  b                                           ; $4f77: $04
	rlca                                             ; $4f78: $07
	ld   bc, $0206                                   ; $4f79: $01 $06 $02
	inc  b                                           ; $4f7c: $04
	add  b                                           ; $4f7d: $80
	ret  nz                                          ; $4f7e: $c0

	ei                                               ; $4f7f: $fb
	ldh  [rAUD4LEN], a                               ; $4f80: $e0 $20
	add  c                                           ; $4f82: $81
	ret  nz                                          ; $4f83: $c0

	nop                                              ; $4f84: $00
	ld   b, b                                        ; $4f85: $40
	add  b                                           ; $4f86: $80
	add  b                                           ; $4f87: $80
	add  l                                           ; $4f88: $85
	nop                                              ; $4f89: $00
	ld   bc, $1a0a                                   ; $4f8a: $01 $0a $1a
	add  b                                           ; $4f8d: $80
	inc  e                                           ; $4f8e: $1c
	ld   b, $14                                      ; $4f8f: $06 $14
	inc  c                                           ; $4f91: $0c
	ld   a, [bc]                                     ; $4f92: $0a
	ld   c, $08                                      ; $4f93: $0e $08
	ld   b, $04                                      ; $4f95: $06 $04
	add  b                                           ; $4f97: $80
	ld   [bc], a                                     ; $4f98: $02
	add  c                                           ; $4f99: $81
	nop                                              ; $4f9a: $00
	inc  bc                                          ; $4f9b: $03
	ld   b, d                                        ; $4f9c: $42
	di                                               ; $4f9d: $f3
	sbc  d                                           ; $4f9e: $9a
	jp   c, $db80                                    ; $4f9f: $da $80 $db

	dec  bc                                          ; $4fa2: $0b
	cp   d                                           ; $4fa3: $ba
	ld   a, [$fbf9]                                  ; $4fa4: $fa $f9 $fb
	sbc  e                                           ; $4fa7: $9b
	db   $db                                         ; $4fa8: $db
	set  3, e                                        ; $4fa9: $cb $db
	ld   l, a                                        ; $4fab: $6f
	ld   a, a                                        ; $4fac: $7f
	cp   e                                           ; $4fad: $bb
	ld   c, c                                        ; $4fae: $49
	add  b                                           ; $4faf: $80
	ld   h, h                                        ; $4fb0: $64
	add  b                                           ; $4fb1: $80
	ld   b, h                                        ; $4fb2: $44
	add  b                                           ; $4fb3: $80
	ld   h, [hl]                                     ; $4fb4: $66
	add  b                                           ; $4fb5: $80
	ld   [hl], l                                     ; $4fb6: $75
	ld   bc, $6763                                   ; $4fb7: $01 $63 $67
	add  b                                           ; $4fba: $80
	rst  $38                                         ; $4fbb: $ff
	inc  b                                           ; $4fbc: $04
	cp   h                                           ; $4fbd: $bc
	cp   $56                                         ; $4fbe: $fe $56
	pop  hl                                          ; $4fc0: $e1
	ldh  a, [$81]                                    ; $4fc1: $f0 $81
	rst  $38                                         ; $4fc3: $ff
	inc  b                                           ; $4fc4: $04
	db   $fc                                         ; $4fc5: $fc
	cp   $fa                                         ; $4fc6: $fe $fa
	cp   $f6                                         ; $4fc8: $fe $f6
	add  c                                           ; $4fca: $81
	cp   $03                                         ; $4fcb: $fe $03
	sbc  $fe                                         ; $4fcd: $de $fe
	ld   h, b                                        ; $4fcf: $60
	ld   c, a                                        ; $4fd0: $4f
	add  c                                           ; $4fd1: $81
	rrca                                             ; $4fd2: $0f
	ld   bc, $1e8f                                   ; $4fd3: $01 $8f $1e
	add  c                                           ; $4fd6: $81
	rra                                              ; $4fd7: $1f
	add  d                                           ; $4fd8: $82
	ccf                                              ; $4fd9: $3f
	ld   [bc], a                                     ; $4fda: $02
	dec  sp                                          ; $4fdb: $3b
	ccf                                              ; $4fdc: $3f
	inc  a                                           ; $4fdd: $3c
	adc  l                                           ; $4fde: $8d
	pop  hl                                          ; $4fdf: $e1
	nop                                              ; $4fe0: $00
	ret  c                                           ; $4fe1: $d8

	add  e                                           ; $4fe2: $83
	ldh  [$82], a                                    ; $4fe3: $e0 $82
	ldh  a, [rSC]                                    ; $4fe5: $f0 $02
	ldh  [$f0], a                                    ; $4fe7: $e0 $f0
	or   b                                           ; $4fe9: $b0
	add  c                                           ; $4fea: $81
	ldh  a, [rSB]                                    ; $4feb: $f0 $01
	cpl                                              ; $4fed: $2f
	rra                                              ; $4fee: $1f
	add  b                                           ; $4fef: $80
	nop                                              ; $4ff0: $00
	add  b                                           ; $4ff1: $80
	rra                                              ; $4ff2: $1f
	add  b                                           ; $4ff3: $80
	nop                                              ; $4ff4: $00
	add  b                                           ; $4ff5: $80
	dec  d                                           ; $4ff6: $15
	add  b                                           ; $4ff7: $80
	inc  bc                                          ; $4ff8: $03
	add  b                                           ; $4ff9: $80
	dec  d                                           ; $4ffa: $15
	add  b                                           ; $4ffb: $80
	inc  bc                                          ; $4ffc: $03
	inc  bc                                          ; $4ffd: $03
	ret  c                                           ; $4ffe: $d8

	sbc  $08                                         ; $4fff: $de $08
	ld   c, $80                                      ; $5001: $0e $80
	add  b                                           ; $5003: $80
	add  b                                           ; $5004: $80
	db   $10                                         ; $5005: $10
	add  b                                           ; $5006: $80
	add  hl, de                                      ; $5007: $19
	nop                                              ; $5008: $00
	ld   a, [de]                                     ; $5009: $1a
	add  e                                           ; $500a: $83
	dec  de                                          ; $500b: $1b
	ld   bc, $3f3e                                   ; $500c: $01 $3e $3f
	add  b                                           ; $500f: $80
	nop                                              ; $5010: $00
	add  b                                           ; $5011: $80
	ccf                                              ; $5012: $3f
	add  b                                           ; $5013: $80
	nop                                              ; $5014: $00
	add  [hl]                                        ; $5015: $86
	rla                                              ; $5016: $17
	add  b                                           ; $5017: $80
	rst  $38                                         ; $5018: $ff
	add  b                                           ; $5019: $80
	nop                                              ; $501a: $00
	add  b                                           ; $501b: $80
	rst  $38                                         ; $501c: $ff
	add  b                                           ; $501d: $80
	nop                                              ; $501e: $00
	add  [hl]                                        ; $501f: $86
	ld   [hl], h                                     ; $5020: $74
	dec  b                                           ; $5021: $05
	ld   bc, $0c0f                                   ; $5022: $01 $0f $0c
	ld   c, $0d                                      ; $5025: $0e $0d
	ld   bc, $1180                                   ; $5027: $01 $80 $11
	nop                                              ; $502a: $00
	dec  b                                           ; $502b: $05
	add  e                                           ; $502c: $83
	dec  d                                           ; $502d: $15
	ld   bc, $1505                                   ; $502e: $01 $05 $15
	add  b                                           ; $5031: $80
	ld   a, a                                        ; $5032: $7f
	add  b                                           ; $5033: $80
	nop                                              ; $5034: $00
	add  b                                           ; $5035: $80
	ccf                                              ; $5036: $3f
	add  b                                           ; $5037: $80
	nop                                              ; $5038: $00
	add  [hl]                                        ; $5039: $86
	or   a                                           ; $503a: $b7
	add  b                                           ; $503b: $80
	cp   $80                                         ; $503c: $fe $80
	nop                                              ; $503e: $00
	add  b                                           ; $503f: $80
	cp   $80                                         ; $5040: $fe $80
	nop                                              ; $5042: $00
	add  [hl]                                        ; $5043: $86
	ld   [hl], h                                     ; $5044: $74
	dec  b                                           ; $5045: $05
	call nz, $58fc                                   ; $5046: $c4 $fc $58
	ld   a, b                                        ; $5049: $78
	jr   jr_02e_504c                                 ; $504a: $18 $00

jr_02e_504c:
	add  b                                           ; $504c: $80
	ld   c, b                                        ; $504d: $48
	add  b                                           ; $504e: $80
	ret  z                                           ; $504f: $c8

	nop                                              ; $5050: $00
	ret  nz                                          ; $5051: $c0

	add  c                                           ; $5052: $81
	ret  z                                           ; $5053: $c8

	add  b                                           ; $5054: $80
	call z, $f701                                    ; $5055: $cc $01 $f7
	rst  $38                                         ; $5058: $ff
	add  b                                           ; $5059: $80
	nop                                              ; $505a: $00
	add  b                                           ; $505b: $80
	rst  $38                                         ; $505c: $ff
	add  b                                           ; $505d: $80
	nop                                              ; $505e: $00
	add  [hl]                                        ; $505f: $86
	scf                                              ; $5060: $37
	add  b                                           ; $5061: $80
	cp   $80                                         ; $5062: $fe $80
	nop                                              ; $5064: $00
	add  b                                           ; $5065: $80
	cp   $80                                         ; $5066: $fe $80
	nop                                              ; $5068: $00
	add  [hl]                                        ; $5069: $86
	halt                                             ; $506a: $76
	jr   nz, jr_02e_50db                             ; $506b: $20 $6e

	sbc  a                                           ; $506d: $9f
	adc  a                                           ; $506e: $8f
	add  e                                           ; $506f: $83
	ld   [$6d68], a                                  ; $5070: $ea $68 $6d
	dec  a                                           ; $5073: $3d
	dec  l                                           ; $5074: $2d
	rlca                                             ; $5075: $07
	ld   h, l                                        ; $5076: $65
	ld   a, b                                        ; $5077: $78
	ld   a, [hl]                                     ; $5078: $7e

jr_02e_5079:
	ld   a, a                                        ; $5079: $7f
	nop                                              ; $507a: $00
	ld   a, a                                        ; $507b: $7f
	add  hl, hl                                      ; $507c: $29

jr_02e_507d:
	ld   hl, sp+$49                                  ; $507d: $f8 $49
	pop  hl                                          ; $507f: $e1
	ld   [$530a], a                                  ; $5080: $ea $0a $53
	ld   d, h                                        ; $5083: $54
	ld   e, e                                        ; $5084: $5b
	di                                               ; $5085: $f3
	ld   d, [hl]                                     ; $5086: $56
	ld   b, $65                                      ; $5087: $06 $65
	push af                                          ; $5089: $f5
	ld   [bc], a                                     ; $508a: $02
	ldh  a, [c]                                      ; $508b: $f2
	or   c                                           ; $508c: $b1
	add  c                                           ; $508d: $81
	cp   $8a                                         ; $508e: $fe $8a
	rst  $38                                         ; $5090: $ff
	nop                                              ; $5091: $00
	sub  l                                           ; $5092: $95
	adc  c                                           ; $5093: $89
	ccf                                              ; $5094: $3f
	inc  b                                           ; $5095: $04

Call_02e_5096:
	dec  [hl]                                        ; $5096: $35
	jr   nc, jr_02e_509c                             ; $5097: $30 $03

	nop                                              ; $5099: $00
	ld   a, $89                                      ; $509a: $3e $89

jr_02e_509c:
	pop  hl                                          ; $509c: $e1
	inc  b                                           ; $509d: $04
	ld   h, c                                        ; $509e: $61
	ld   hl, $01e1                                   ; $509f: $21 $e1 $01
	inc  a                                           ; $50a2: $3c
	adc  l                                           ; $50a3: $8d
	ldh  a, [rSB]                                    ; $50a4: $f0 $01
	dec  [hl]                                        ; $50a6: $35
	dec  b                                           ; $50a7: $05
	add  b                                           ; $50a8: $80
	ld   [bc], a                                     ; $50a9: $02
	add  b                                           ; $50aa: $80
	dec  b                                           ; $50ab: $05
	add  b                                           ; $50ac: $80
	ld   [bc], a                                     ; $50ad: $02
	add  b                                           ; $50ae: $80
	dec  b                                           ; $50af: $05
	add  b                                           ; $50b0: $80
	nop                                              ; $50b1: $00
	add  b                                           ; $50b2: $80
	dec  b                                           ; $50b3: $05
	add  b                                           ; $50b4: $80
	nop                                              ; $50b5: $00
	ld   bc, $1b1a                                   ; $50b6: $01 $1a $1b
	add  b                                           ; $50b9: $80
	rra                                              ; $50ba: $1f
	ld   bc, $1f1e                                   ; $50bb: $01 $1e $1f
	add  [hl]                                        ; $50be: $86
	dec  de                                          ; $50bf: $1b
	add  b                                           ; $50c0: $80
	ld   a, [de]                                     ; $50c1: $1a
	add  d                                           ; $50c2: $82
	rla                                              ; $50c3: $17
	add  b                                           ; $50c4: $80
	dec  d                                           ; $50c5: $15
	add  b                                           ; $50c6: $80
	ld   [bc], a                                     ; $50c7: $02
	add  b                                           ; $50c8: $80
	dec  d                                           ; $50c9: $15
	add  b                                           ; $50ca: $80
	nop                                              ; $50cb: $00
	add  b                                           ; $50cc: $80
	rst  $38                                         ; $50cd: $ff
	add  b                                           ; $50ce: $80
	nop                                              ; $50cf: $00
	add  d                                           ; $50d0: $82
	ld   [hl], h                                     ; $50d1: $74
	add  b                                           ; $50d2: $80
	ld   d, h                                        ; $50d3: $54
	add  b                                           ; $50d4: $80
	jr   nz, @-$7e                                   ; $50d5: $20 $80

	ld   d, h                                        ; $50d7: $54
	add  b                                           ; $50d8: $80
	nop                                              ; $50d9: $00
	add  b                                           ; $50da: $80

jr_02e_50db:
	rst  $38                                         ; $50db: $ff
	add  b                                           ; $50dc: $80
	nop                                              ; $50dd: $00
	add  b                                           ; $50de: $80
	scf                                              ; $50df: $37
	adc  b                                           ; $50e0: $88
	daa                                              ; $50e1: $27
	add  b                                           ; $50e2: $80
	ccf                                              ; $50e3: $3f
	add  b                                           ; $50e4: $80
	inc  e                                           ; $50e5: $1c
	add  d                                           ; $50e6: $82
	or   a                                           ; $50e7: $b7
	add  b                                           ; $50e8: $80
	and  d                                           ; $50e9: $a2
	add  b                                           ; $50ea: $80
	sub  l                                           ; $50eb: $95
	add  b                                           ; $50ec: $80
	and  d                                           ; $50ed: $a2
	add  b                                           ; $50ee: $80
	nop                                              ; $50ef: $00
	add  b                                           ; $50f0: $80
	rst  $38                                         ; $50f1: $ff
	add  b                                           ; $50f2: $80
	nop                                              ; $50f3: $00
	add  d                                           ; $50f4: $82
	ld   [hl], l                                     ; $50f5: $75
	add  b                                           ; $50f6: $80
	jr   nz, jr_02e_5079                             ; $50f7: $20 $80

	ld   d, l                                        ; $50f9: $55
	add  b                                           ; $50fa: $80
	jr   nz, jr_02e_507d                             ; $50fb: $20 $80

	nop                                              ; $50fd: $00
	add  b                                           ; $50fe: $80
	rst  $38                                         ; $50ff: $ff
	add  b                                           ; $5100: $80
	nop                                              ; $5101: $00
	ld   [bc], a                                     ; $5102: $02
	call nz, $d0cc                                   ; $5103: $c4 $cc $d0
	add  c                                           ; $5106: $81
	call c, $fc84                                    ; $5107: $dc $84 $fc
	ld   bc, $fcf8                                   ; $510a: $01 $f8 $fc
	add  b                                           ; $510d: $80
	ld   l, h                                        ; $510e: $6c
	add  d                                           ; $510f: $82
	scf                                              ; $5110: $37
	add  b                                           ; $5111: $80
	dec  d                                           ; $5112: $15
	add  b                                           ; $5113: $80
	ld   [hl+], a                                    ; $5114: $22
	add  b                                           ; $5115: $80
	dec  d                                           ; $5116: $15
	add  b                                           ; $5117: $80
	nop                                              ; $5118: $00
	add  b                                           ; $5119: $80
	rst  $38                                         ; $511a: $ff
	add  b                                           ; $511b: $80
	nop                                              ; $511c: $00
	add  b                                           ; $511d: $80
	ld   [hl], h                                     ; $511e: $74
	add  b                                           ; $511f: $80
	ld   [hl], d                                     ; $5120: $72
	add  b                                           ; $5121: $80
	ld   d, h                                        ; $5122: $54
	add  b                                           ; $5123: $80
	ld   [hl+], a                                    ; $5124: $22
	add  b                                           ; $5125: $80
	ld   d, h                                        ; $5126: $54
	add  b                                           ; $5127: $80
	nop                                              ; $5128: $00
	add  b                                           ; $5129: $80
	cp   $80                                         ; $512a: $fe $80
	nop                                              ; $512c: $00
	ld   [bc], a                                     ; $512d: $02
	add  hl, de                                      ; $512e: $19
	ld   a, a                                        ; $512f: $7f
	nop                                              ; $5130: $00
	add  c                                           ; $5131: $81
	ld   a, a                                        ; $5132: $7f
	nop                                              ; $5133: $00
	nop                                              ; $5134: $00
	add  c                                           ; $5135: $81
	ld   a, a                                        ; $5136: $7f
	nop                                              ; $5137: $00
	nop                                              ; $5138: $00
	add  c                                           ; $5139: $81
	ld   a, a                                        ; $513a: $7f
	dec  b                                           ; $513b: $05
	add  hl, de                                      ; $513c: $19
	nop                                              ; $513d: $00
	sub  l                                           ; $513e: $95
	push af                                          ; $513f: $f5
	ld   [bc], a                                     ; $5140: $02
	ldh  a, [c]                                      ; $5141: $f2
	add  b                                           ; $5142: $80
	push af                                          ; $5143: $f5
	ld   bc, $f202                                   ; $5144: $01 $02 $f2
	add  b                                           ; $5147: $80
	push af                                          ; $5148: $f5
	ld   bc, $f000                                   ; $5149: $01 $00 $f0
	add  b                                           ; $514c: $80
	rst  $30                                         ; $514d: $f7
	ld   [bc], a                                     ; $514e: $02
	sub  b                                           ; $514f: $90
	nop                                              ; $5150: $00
	ret  nc                                          ; $5151: $d0

	add  c                                           ; $5152: $81
	rst  $38                                         ; $5153: $ff
	nop                                              ; $5154: $00
	ld   a, a                                        ; $5155: $7f
	add  e                                           ; $5156: $83
	ld   a, [hl]                                     ; $5157: $7e
	add  e                                           ; $5158: $83
	ld   a, $02                                      ; $5159: $3e $02
	ccf                                              ; $515b: $3f
	sub  b                                           ; $515c: $90
	nop                                              ; $515d: $00
	add  b                                           ; $515e: $80
	ld   bc, $3f00                                   ; $515f: $01 $00 $3f
	add  b                                           ; $5162: $80
	ld   c, $01                                      ; $5163: $0e $01
	ld   bc, $8081                                   ; $5165: $01 $81 $80
	rrca                                             ; $5168: $0f
	add  b                                           ; $5169: $80

jr_02e_516a:
	ld   c, $24                                      ; $516a: $0e $24
	add  b                                           ; $516c: $80
	add  c                                           ; $516d: $81
	cp   $3a                                         ; $516e: $fe $3a
	jr   c, jr_02e_516a                              ; $5170: $38 $f8

	ret  nz                                          ; $5172: $c0

	call nz, $3938                                   ; $5173: $c4 $38 $39
	ld   hl, sp-$05                                  ; $5176: $f8 $fb
	ret  nz                                          ; $5178: $c0

	jp   Jump_02e_4300                               ; $5179: $c3 $00 $43


	add  b                                           ; $517c: $80
	ld   b, b                                        ; $517d: $40
	nop                                              ; $517e: $00
	ld   [hl], e                                     ; $517f: $73
	nop                                              ; $5180: $00
	jr   nc, jr_02e_5183                             ; $5181: $30 $00

jr_02e_5183:
	di                                               ; $5183: $f3
	inc  bc                                          ; $5184: $03
	rst  $38                                         ; $5185: $ff
	rrca                                             ; $5186: $0f
	rst  $38                                         ; $5187: $ff
	ld   c, $ce                                      ; $5188: $0e $ce
	ld   [$093f], sp                                 ; $518a: $08 $3f $09
	ld   sp, hl                                      ; $518d: $f9
	ld   a, [hl-]                                    ; $518e: $3a
	dec  e                                           ; $518f: $1d
	rra                                              ; $5190: $1f
	add  c                                           ; $5191: $81
	rst  $38                                         ; $5192: $ff
	add  b                                           ; $5193: $80
	ldh  [$80], a                                    ; $5194: $e0 $80
	add  b                                           ; $5196: $80
	add  c                                           ; $5197: $81
	nop                                              ; $5198: $00
	nop                                              ; $5199: $00
	rst  $38                                         ; $519a: $ff
	add  b                                           ; $519b: $80
	ld   d, l                                        ; $519c: $55
	ld   [bc], a                                     ; $519d: $02
	xor  d                                           ; $519e: $aa
	ld   c, d                                        ; $519f: $4a
	ldh  [$81], a                                    ; $51a0: $e0 $81
	rst  $38                                         ; $51a2: $ff
	add  e                                           ; $51a3: $83
	nop                                              ; $51a4: $00
	ld   b, $01                                      ; $51a5: $06 $01
	nop                                              ; $51a7: $00
	ei                                               ; $51a8: $fb
	ld   d, b                                        ; $51a9: $50
	ld   d, [hl]                                     ; $51aa: $56
	xor  b                                           ; $51ab: $a8
	ld   d, h                                        ; $51ac: $54
	sbc  l                                           ; $51ad: $9d
	rst  $38                                         ; $51ae: $ff
	add  b                                           ; $51af: $80
	ret  nz                                          ; $51b0: $c0

	xor  h                                           ; $51b1: $ac
	rst  $38                                         ; $51b2: $ff
	add  b                                           ; $51b3: $80
	inc  bc                                          ; $51b4: $03
	sbc  h                                           ; $51b5: $9c
	rst  $38                                         ; $51b6: $ff
	add  d                                           ; $51b7: $82
	db   $fc                                         ; $51b8: $fc
	adc  d                                           ; $51b9: $8a
	rst  $38                                         ; $51ba: $ff
	add  b                                           ; $51bb: $80
	sbc  a                                           ; $51bc: $9f
	add  d                                           ; $51bd: $82
	nop                                              ; $51be: $00
	adc  b                                           ; $51bf: $88
	rst  $38                                         ; $51c0: $ff
	add  b                                           ; $51c1: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51c2: $cf
	add  d                                           ; $51c3: $82
	nop                                              ; $51c4: $00
	add  h                                           ; $51c5: $84
	cp   $83                                         ; $51c6: $fe $83
	rst  $38                                         ; $51c8: $ff
	and  e                                           ; $51c9: $a3
	nop                                              ; $51ca: $00
	nop                                              ; $51cb: $00
	ret  nz                                          ; $51cc: $c0

	add  l                                           ; $51cd: $85
	nop                                              ; $51ce: $00
	nop                                              ; $51cf: $00
	ret  nz                                          ; $51d0: $c0

	sub  [hl]                                        ; $51d1: $96
	nop                                              ; $51d2: $00
	add  [hl]                                        ; $51d3: $86
	ret  nz                                          ; $51d4: $c0

	sub  l                                           ; $51d5: $95
	nop                                              ; $51d6: $00
	add  [hl]                                        ; $51d7: $86
	ret  nz                                          ; $51d8: $c0

	rst  $38                                         ; $51d9: $ff
	nop                                              ; $51da: $00
	rst  $38                                         ; $51db: $ff
	nop                                              ; $51dc: $00
	rst  $38                                         ; $51dd: $ff
	nop                                              ; $51de: $00
	rst  $38                                         ; $51df: $ff
	nop                                              ; $51e0: $00
	rst  $38                                         ; $51e1: $ff
	nop                                              ; $51e2: $00
	rst  $38                                         ; $51e3: $ff
	nop                                              ; $51e4: $00
	rst  $38                                         ; $51e5: $ff
	nop                                              ; $51e6: $00
	rst  $38                                         ; $51e7: $ff
	nop                                              ; $51e8: $00
	rst  $38                                         ; $51e9: $ff
	nop                                              ; $51ea: $00
	rst  $38                                         ; $51eb: $ff
	nop                                              ; $51ec: $00
	rst  $38                                         ; $51ed: $ff
	nop                                              ; $51ee: $00
	rst  $38                                         ; $51ef: $ff
	nop                                              ; $51f0: $00
	rst  $38                                         ; $51f1: $ff
	nop                                              ; $51f2: $00
	rst  $38                                         ; $51f3: $ff
	nop                                              ; $51f4: $00
	rst  $38                                         ; $51f5: $ff
	nop                                              ; $51f6: $00
	add  c                                           ; $51f7: $81
	nop                                              ; $51f8: $00
	ld   hl, sp+$01                                  ; $51f9: $f8 $01
	db   $10                                         ; $51fb: $10
	ret  c                                           ; $51fc: $d8

	ld   e, b                                        ; $51fd: $58
	ld   a, h                                        ; $51fe: $7c
	ld   a, l                                        ; $51ff: $7d
	ld   e, a                                        ; $5200: $5f
	ccf                                              ; $5201: $3f
	ld   c, a                                        ; $5202: $4f
	ld   a, [hl]                                     ; $5203: $7e
	cp   a                                           ; $5204: $bf
	rst  $38                                         ; $5205: $ff
	db   $db                                         ; $5206: $db
	rst  $38                                         ; $5207: $ff
	cp   h                                           ; $5208: $bc
	rst  $38                                         ; $5209: $ff
	or   $ff                                         ; $520a: $f6 $ff
	cp   $80                                         ; $520c: $fe $80
	nop                                              ; $520e: $00
	ld   bc, $0080                                   ; $520f: $01 $80 $00
	add  c                                           ; $5212: $81
	add  b                                           ; $5213: $80
	ld   [$c040], sp                                 ; $5214: $08 $40 $c0
	ld   b, b                                        ; $5217: $40
	ret  nz                                          ; $5218: $c0

	ldh  [rIE], a                                    ; $5219: $e0 $ff
	rst  JumpTable                                         ; $521b: $df
	rst  $38                                         ; $521c: $ff
	inc  a                                           ; $521d: $3c
	add  c                                           ; $521e: $81
	nop                                              ; $521f: $00
	ld   bc, $0004                                   ; $5220: $01 $04 $00
	add  b                                           ; $5223: $80
	ld   bc, $0800                                   ; $5224: $01 $00 $08
	add  c                                           ; $5227: $81
	nop                                              ; $5228: $00
	ld   bc, $f303                                   ; $5229: $01 $03 $f3
	add  b                                           ; $522c: $80
	ld   hl, sp+$03                                  ; $522d: $f8 $03
	ld   a, d                                        ; $522f: $7a
	ld   a, a                                        ; $5230: $7f
	ld   c, e                                        ; $5231: $4b
	ld   c, a                                        ; $5232: $4f
	add  c                                           ; $5233: $81
	pop  hl                                          ; $5234: $e1
	nop                                              ; $5235: $00
	ldh  [$80], a                                    ; $5236: $e0 $80
	rst  JumpTable                                         ; $5238: $df
	add  b                                           ; $5239: $80
	dec  [hl]                                        ; $523a: $35
	add  b                                           ; $523b: $80
	ld   [hl], l                                     ; $523c: $75
	ld   b, $00                                      ; $523d: $06 $00
	inc  bc                                          ; $523f: $03
	db   $fc                                         ; $5240: $fc
	rst  $38                                         ; $5241: $ff
	call c, $23ff                                    ; $5242: $dc $ff $23
	adc  c                                           ; $5245: $89
	rst  $38                                         ; $5246: $ff
	ld   [bc], a                                     ; $5247: $02
	rra                                              ; $5248: $1f
	rst  $38                                         ; $5249: $ff
	rra                                              ; $524a: $1f
	adc  e                                           ; $524b: $8b
	rst  $38                                         ; $524c: $ff
	ld   b, $83                                      ; $524d: $06 $83
	db   $fc                                         ; $524f: $fc
	sbc  a                                           ; $5250: $9f
	rst  $38                                         ; $5251: $ff
	db   $e3                                         ; $5252: $e3
	rst  $38                                         ; $5253: $ff
	db   $fc                                         ; $5254: $fc
	add  a                                           ; $5255: $87
	rst  $38                                         ; $5256: $ff
	ld   bc, $05fa                                   ; $5257: $01 $fa $05
	add  b                                           ; $525a: $80
	rst  $38                                         ; $525b: $ff
	ld   [bc], a                                     ; $525c: $02
	ld   a, a                                        ; $525d: $7f
	rst  $38                                         ; $525e: $ff
	add  b                                           ; $525f: $80
	add  a                                           ; $5260: $87
	rst  $38                                         ; $5261: $ff
	sub  d                                           ; $5262: $92
	nop                                              ; $5263: $00
	add  b                                           ; $5264: $80
	ld   de, $aa80                                   ; $5265: $11 $80 $aa
	add  b                                           ; $5268: $80
	ld   d, l                                        ; $5269: $55
	add  b                                           ; $526a: $80
	ld   a, [bc]                                     ; $526b: $0a
	add  b                                           ; $526c: $80
	ld   bc, $0080                                   ; $526d: $01 $80 $00
	add  b                                           ; $5270: $80
	inc  b                                           ; $5271: $04
	add  b                                           ; $5272: $80
	ld   a, [hl+]                                    ; $5273: $2a
	add  b                                           ; $5274: $80
	ld   d, l                                        ; $5275: $55
	add  b                                           ; $5276: $80
	xor  d                                           ; $5277: $aa
	add  b                                           ; $5278: $80
	ld   d, l                                        ; $5279: $55
	add  b                                           ; $527a: $80
	xor  d                                           ; $527b: $aa
	add  b                                           ; $527c: $80
	ld   d, l                                        ; $527d: $55
	add  b                                           ; $527e: $80
	ld   a, [hl+]                                    ; $527f: $2a

Jump_02e_5280:
	add  b                                           ; $5280: $80
	ccf                                              ; $5281: $3f
	add  b                                           ; $5282: $80
	cp   a                                           ; $5283: $bf
	add  b                                           ; $5284: $80
	ld   d, l                                        ; $5285: $55
	add  b                                           ; $5286: $80
	xor  e                                           ; $5287: $ab
	add  b                                           ; $5288: $80
	ld   d, a                                        ; $5289: $57
	add  b                                           ; $528a: $80
	xor  e                                           ; $528b: $ab
	add  b                                           ; $528c: $80
	ld   d, [hl]                                     ; $528d: $56
	add  b                                           ; $528e: $80
	xor  e                                           ; $528f: $ab
	cp   [hl]                                        ; $5290: $be
	nop                                              ; $5291: $00
	ld   b, $fc                                      ; $5292: $06 $fc
	sbc  a                                           ; $5294: $9f
	rra                                              ; $5295: $1f
	sbc  a                                           ; $5296: $9f
	rst  $20                                         ; $5297: $e7
	rst  $38                                         ; $5298: $ff
	ei                                               ; $5299: $fb
	add  c                                           ; $529a: $81
	rst  $38                                         ; $529b: $ff
	add  b                                           ; $529c: $80
	rra                                              ; $529d: $1f
	inc  b                                           ; $529e: $04
	pop  hl                                          ; $529f: $e1
	ld   bc, $001e                                   ; $52a0: $01 $1e $00
	ld   bc, $ff8b                                   ; $52a3: $01 $8b $ff

jr_02e_52a6:
	add  b                                           ; $52a6: $80
	rra                                              ; $52a7: $1f
	inc  b                                           ; $52a8: $04
	pop  bc                                          ; $52a9: $c1
	jp   nz, $0302                                   ; $52aa: $c2 $02 $03

	add  e                                           ; $52ad: $83
	add  d                                           ; $52ae: $82
	add  a                                           ; $52af: $87
	nop                                              ; $52b0: $00
	adc  e                                           ; $52b1: $8b
	add  b                                           ; $52b2: $80
	db   $eb                                         ; $52b3: $eb
	ld   [bc], a                                     ; $52b4: $02
	di                                               ; $52b5: $f3
	ei                                               ; $52b6: $fb
	db   $fd                                         ; $52b7: $fd
	add  b                                           ; $52b8: $80
	rst  $38                                         ; $52b9: $ff
	add  d                                           ; $52ba: $82
	nop                                              ; $52bb: $00
	add  b                                           ; $52bc: $80
	ldh  a, [$80]                                    ; $52bd: $f0 $80
	cp   $81                                         ; $52bf: $fe $81
	rst  $38                                         ; $52c1: $ff
	add  d                                           ; $52c2: $82
	cp   $00                                         ; $52c3: $fe $00
	rst  $38                                         ; $52c5: $ff
	add  l                                           ; $52c6: $85
	nop                                              ; $52c7: $00
	inc  b                                           ; $52c8: $04
	ld   [hl], b                                     ; $52c9: $70
	add  b                                           ; $52ca: $80
	nop                                              ; $52cb: $00
	inc  e                                           ; $52cc: $1c
	inc  d                                           ; $52cd: $14
	add  b                                           ; $52ce: $80
	rra                                              ; $52cf: $1f
	ld   bc, $d72f                                   ; $52d0: $01 $2f $d7
	adc  d                                           ; $52d3: $8a
	nop                                              ; $52d4: $00
	add  b                                           ; $52d5: $80
	add  b                                           ; $52d6: $80
	add  b                                           ; $52d7: $80
	ld   hl, sp-$65                                  ; $52d8: $f8 $9b
	nop                                              ; $52da: $00
	ld   [bc], a                                     ; $52db: $02
	add  hl, bc                                      ; $52dc: $09
	ld   e, $17                                      ; $52dd: $1e $17
	adc  b                                           ; $52df: $88
	nop                                              ; $52e0: $00
	dec  b                                           ; $52e1: $05
	inc  bc                                          ; $52e2: $03
	jr   c, jr_02e_52ec                              ; $52e3: $38 $07

	rst  ToBoot                                         ; $52e5: $c7
	rlca                                             ; $52e6: $07
	db   $fc                                         ; $52e7: $fc
	add  l                                           ; $52e8: $85
	nop                                              ; $52e9: $00
	inc  bc                                          ; $52ea: $03
	rlca                                             ; $52eb: $07

jr_02e_52ec:
	nop                                              ; $52ec: $00
	ld   a, b                                        ; $52ed: $78
	add  b                                           ; $52ee: $80
	add  b                                           ; $52ef: $80
	ret  nz                                          ; $52f0: $c0

	ld   [bc], a                                     ; $52f1: $02
	ld   b, b                                        ; $52f2: $40
	pop  bc                                          ; $52f3: $c1
	ld   a, [hl]                                     ; $52f4: $7e
	add  l                                           ; $52f5: $85
	nop                                              ; $52f6: $00
	ld   [$f408], sp                                 ; $52f7: $08 $08 $f4
	or   h                                           ; $52fa: $b4
	rst  $30                                         ; $52fb: $f7
	ld   [hl], e                                     ; $52fc: $73
	di                                               ; $52fd: $f3
	inc  de                                          ; $52fe: $13
	di                                               ; $52ff: $f3
	rst  JumpTable                                         ; $5300: $df
	adc  c                                           ; $5301: $89
	nop                                              ; $5302: $00
	inc  b                                           ; $5303: $04
	ld   bc, $e0c1                                   ; $5304: $01 $c1 $e0
	ret  nc                                          ; $5307: $d0

	ldh  a, [$89]                                    ; $5308: $f0 $89
	nop                                              ; $530a: $00
	add  b                                           ; $530b: $80
	ld   d, l                                        ; $530c: $55
	add  b                                           ; $530d: $80
	ld   [bc], a                                     ; $530e: $02
	adc  b                                           ; $530f: $88
	nop                                              ; $5310: $00
	add  b                                           ; $5311: $80
	ld   a, [bc]                                     ; $5312: $0a
	add  b                                           ; $5313: $80
	ld   d, l                                        ; $5314: $55
	add  b                                           ; $5315: $80
	xor  d                                           ; $5316: $aa
	adc  b                                           ; $5317: $88
	nop                                              ; $5318: $00
	add  b                                           ; $5319: $80
	ld   [bc], a                                     ; $531a: $02
	add  b                                           ; $531b: $80
	ld   d, h                                        ; $531c: $54
	add  b                                           ; $531d: $80
	and  b                                           ; $531e: $a0
	add  d                                           ; $531f: $82
	nop                                              ; $5320: $00
	add  b                                           ; $5321: $80
	jr   z, jr_02e_52a6                              ; $5322: $28 $82

	nop                                              ; $5324: $00
	add  b                                           ; $5325: $80
	add  b                                           ; $5326: $80
	add  [hl]                                        ; $5327: $86
	nop                                              ; $5328: $00
	ld   [bc], a                                     ; $5329: $02
	ld   h, b                                        ; $532a: $60
	ld   [hl], b                                     ; $532b: $70
	ld   a, [hl]                                     ; $532c: $7e
	add  c                                           ; $532d: $81
	ld   a, h                                        ; $532e: $7c
	ld   [bc], a                                     ; $532f: $02
	db   $10                                         ; $5330: $10
	ld   a, h                                        ; $5331: $7c
	db   $10                                         ; $5332: $10
	add  c                                           ; $5333: $81
	ld   a, h                                        ; $5334: $7c
	nop                                              ; $5335: $00
	ld   [hl-], a                                    ; $5336: $32
	adc  l                                           ; $5337: $8d
	db   $10                                         ; $5338: $10
	inc  b                                           ; $5339: $04
	ret  nc                                          ; $533a: $d0

	rra                                              ; $533b: $1f
	ldh  [rP1], a                                    ; $533c: $e0 $00
	rra                                              ; $533e: $1f
	add  e                                           ; $533f: $83
	nop                                              ; $5340: $00
	ld   b, $30                                      ; $5341: $06 $30
	jr   c, jr_02e_5383                              ; $5343: $38 $3e

	inc  a                                           ; $5345: $3c
	inc  c                                           ; $5346: $0c
	inc  a                                           ; $5347: $3c
	ld   a, [hl-]                                    ; $5348: $3a
	add  c                                           ; $5349: $81
	rst  $38                                         ; $534a: $ff
	add  b                                           ; $534b: $80
	rrca                                             ; $534c: $0f
	ld   [bc], a                                     ; $534d: $02
	sbc  $10                                         ; $534e: $de $10
	ld   de, $1085                                   ; $5350: $11 $85 $10
	dec  b                                           ; $5353: $05
	ret  z                                           ; $5354: $c8

	cpl                                              ; $5355: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5356: $cf
	rst  $28                                         ; $5357: $ef
	rst  $30                                         ; $5358: $f7
	rst  $38                                         ; $5359: $ff
	add  b                                           ; $535a: $80
	rrca                                             ; $535b: $0f
	ld   [bc], a                                     ; $535c: $02
	ldh  a, [rP1]                                    ; $535d: $f0 $00
	dec  c                                           ; $535f: $0d
	add  c                                           ; $5360: $81
	ld   bc, $4103                                   ; $5361: $01 $03 $41
	ld   h, c                                        ; $5364: $61
	inc  hl                                          ; $5365: $23
	rst  $38                                         ; $5366: $ff
	add  b                                           ; $5367: $80
	cp   $84                                         ; $5368: $fe $84
	rst  $38                                         ; $536a: $ff
	inc  b                                           ; $536b: $04
	pop  bc                                          ; $536c: $c1
	ld   bc, $003c                                   ; $536d: $01 $3c $00
	ld   [bc], a                                     ; $5370: $02
	add  b                                           ; $5371: $80
	ld   bc, $0002                                   ; $5372: $01 $02 $00
	ld   e, [hl]                                     ; $5375: $5e
	and  b                                           ; $5376: $a0
	add  b                                           ; $5377: $80
	ld   b, b                                        ; $5378: $40
	add  b                                           ; $5379: $80
	and  b                                           ; $537a: $a0
	add  b                                           ; $537b: $80
	ld   b, b                                        ; $537c: $40
	add  b                                           ; $537d: $80
	add  b                                           ; $537e: $80
	add  b                                           ; $537f: $80
	nop                                              ; $5380: $00
	add  b                                           ; $5381: $80
	cp   a                                           ; $5382: $bf

jr_02e_5383:
	ld   [bc], a                                     ; $5383: $02
	ld   b, $1e                                      ; $5384: $06 $1e
	ld   a, [bc]                                     ; $5386: $0a
	add  c                                           ; $5387: $81
	ld   [hl], $80                                   ; $5388: $36 $80
	inc  [hl]                                        ; $538a: $34
	nop                                              ; $538b: $00
	inc  h                                           ; $538c: $24
	add  c                                           ; $538d: $81
	nop                                              ; $538e: $00
	add  b                                           ; $538f: $80
	rra                                              ; $5390: $1f
	add  b                                           ; $5391: $80
	cp   a                                           ; $5392: $bf
	ld   bc, $0703                                   ; $5393: $01 $03 $07
	add  b                                           ; $5396: $80
	ld   b, $81                                      ; $5397: $06 $81
	inc  b                                           ; $5399: $04
	add  c                                           ; $539a: $81
	nop                                              ; $539b: $00
	add  b                                           ; $539c: $80
	ld   bc, $ef82                                   ; $539d: $01 $82 $ef
	nop                                              ; $53a0: $00
	ld   b, b                                        ; $53a1: $40
	add  c                                           ; $53a2: $81
	pop  bc                                          ; $53a3: $c1
	nop                                              ; $53a4: $00
	add  c                                           ; $53a5: $81
	add  b                                           ; $53a6: $80
	add  b                                           ; $53a7: $80
	add  c                                           ; $53a8: $81
	nop                                              ; $53a9: $00
	add  h                                           ; $53aa: $84
	db   $fd                                         ; $53ab: $fd
	ld   bc, $b393                                   ; $53ac: $01 $93 $b3
	add  c                                           ; $53af: $81
	ld   hl, $0181                                   ; $53b0: $21 $81 $01
	add  b                                           ; $53b3: $80
	nop                                              ; $53b4: $00
	nop                                              ; $53b5: $00
	rst  $38                                         ; $53b6: $ff
	add  c                                           ; $53b7: $81
	cp   $07                                         ; $53b8: $fe $07
	sub  $f6                                         ; $53ba: $d6 $f6
	sbc  e                                           ; $53bc: $9b
	sbc  l                                           ; $53bd: $9d
	dec  de                                          ; $53be: $1b
	inc  e                                           ; $53bf: $1c
	dec  e                                           ; $53c0: $1d
	inc  e                                           ; $53c1: $1c
	add  b                                           ; $53c2: $80
	ret  c                                           ; $53c3: $d8

	ld   [$7858], sp                                 ; $53c4: $08 $58 $78
	sbc  h                                           ; $53c7: $9c
	inc  e                                           ; $53c8: $1c
	ld   h, [hl]                                     ; $53c9: $66
	rlca                                             ; $53ca: $07
	dec  de                                          ; $53cb: $1b
	dec  bc                                          ; $53cc: $0b
	rrca                                             ; $53cd: $0f
	add  [hl]                                        ; $53ce: $86
	nop                                              ; $53cf: $00
	add  b                                           ; $53d0: $80
	add  b                                           ; $53d1: $80
	add  b                                           ; $53d2: $80
	add  c                                           ; $53d3: $81
	add  c                                           ; $53d4: $81
	pop  bc                                          ; $53d5: $c1
	ld   bc, $05c4                                   ; $53d6: $01 $c4 $05
	add  a                                           ; $53d9: $87
	nop                                              ; $53da: $00
	add  b                                           ; $53db: $80
	ret  nz                                          ; $53dc: $c0

	nop                                              ; $53dd: $00
	ldh  a, [$80]                                    ; $53de: $f0 $80
	jr   nc, jr_02e_53e3                             ; $53e0: $30 $01

	pop  af                                          ; $53e2: $f1

jr_02e_53e3:
	ld   bc, $2a80                                   ; $53e3: $01 $80 $2a
	adc  d                                           ; $53e6: $8a
	nop                                              ; $53e7: $00
	add  b                                           ; $53e8: $80
	ld   d, b                                        ; $53e9: $50
	adc  h                                           ; $53ea: $8c
	nop                                              ; $53eb: $00
	nop                                              ; $53ec: $00
	ld   l, [hl]                                     ; $53ed: $6e
	add  c                                           ; $53ee: $81
	ld   a, h                                        ; $53ef: $7c
	ld   [bc], a                                     ; $53f0: $02
	db   $10                                         ; $53f1: $10
	ld   a, h                                        ; $53f2: $7c
	db   $10                                         ; $53f3: $10
	add  e                                           ; $53f4: $83
	ld   a, h                                        ; $53f5: $7c
	inc  b                                           ; $53f6: $04
	db   $10                                         ; $53f7: $10
	db   $fc                                         ; $53f8: $fc
	cp   $ff                                         ; $53f9: $fe $ff
	rst  JumpTable                                         ; $53fb: $df
	adc  h                                           ; $53fc: $8c
	db   $10                                         ; $53fd: $10
	inc  bc                                          ; $53fe: $03
	ret  nc                                          ; $53ff: $d0

	jp   nz, $383c                                   ; $5400: $c2 $3c $38

	add  c                                           ; $5403: $81
	inc  a                                           ; $5404: $3c
	ld   [bc], a                                     ; $5405: $02
	ld   [$083c], sp                                 ; $5406: $08 $3c $08
	add  e                                           ; $5409: $83
	inc  a                                           ; $540a: $3c
	ld   [bc], a                                     ; $540b: $02
	ld   a, [bc]                                     ; $540c: $0a
	rst  $38                                         ; $540d: $ff
	rst  JumpTable                                         ; $540e: $df
	adc  l                                           ; $540f: $8d
	db   $10                                         ; $5410: $10
	inc  b                                           ; $5411: $04
	ld   l, d                                        ; $5412: $6a
	ld   [hl], c                                     ; $5413: $71
	ld   hl, $2171                                   ; $5414: $21 $71 $21
	add  c                                           ; $5417: $81
	ld   [hl], c                                     ; $5418: $71
	ld   [bc], a                                     ; $5419: $02
	ld   hl, $2171                                   ; $541a: $21 $71 $21
	add  e                                           ; $541d: $83
	ld   [hl], c                                     ; $541e: $71
	ld   [bc], a                                     ; $541f: $02
	ld   a, [hl+]                                    ; $5420: $2a
	ld   bc, $8100                                   ; $5421: $01 $00 $81
	ld   bc, $0280                                   ; $5424: $01 $80 $02
	add  b                                           ; $5427: $80
	inc  bc                                          ; $5428: $03
	ld   bc, $0604                                   ; $5429: $01 $04 $06
	add  b                                           ; $542c: $80
	dec  b                                           ; $542d: $05
	add  b                                           ; $542e: $80
	ld   b, $01                                      ; $542f: $06 $01
	add  e                                           ; $5431: $83
	ld   a, a                                        ; $5432: $7f
	add  b                                           ; $5433: $80
	cp   a                                           ; $5434: $bf
	add  b                                           ; $5435: $80
	ld   a, a                                        ; $5436: $7f
	add  b                                           ; $5437: $80
	cp   a                                           ; $5438: $bf
	add  b                                           ; $5439: $80
	ld   a, a                                        ; $543a: $7f
	add  b                                           ; $543b: $80
	cp   a                                           ; $543c: $bf
	add  b                                           ; $543d: $80
	ld   a, a                                        ; $543e: $7f
	add  d                                           ; $543f: $82
	cp   a                                           ; $5440: $bf
	inc  b                                           ; $5441: $04
	or   e                                           ; $5442: $b3
	cp   e                                           ; $5443: $bb
	or   e                                           ; $5444: $b3
	cp   e                                           ; $5445: $bb
	or   e                                           ; $5446: $b3
	add  c                                           ; $5447: $81
	cp   e                                           ; $5448: $bb
	inc  bc                                          ; $5449: $03
	or   e                                           ; $544a: $b3
	cp   e                                           ; $544b: $bb
	or   e                                           ; $544c: $b3
	cp   e                                           ; $544d: $bb
	add  b                                           ; $544e: $80
	cp   b                                           ; $544f: $b8
	nop                                              ; $5450: $00

jr_02e_5451:
	and  $81                                         ; $5451: $e6 $81
	rst  $28                                         ; $5453: $ef
	ld   [bc], a                                     ; $5454: $02
	xor  $ef                                         ; $5455: $ee $ef
	xor  $81                                         ; $5457: $ee $81
	rst  $28                                         ; $5459: $ef
	ld   [bc], a                                     ; $545a: $02
	xor  $ef                                         ; $545b: $ee $ef
	xor  $81                                         ; $545d: $ee $81
	rst  $28                                         ; $545f: $ef
	nop                                              ; $5460: $00
	cp   h                                           ; $5461: $bc
	adc  e                                           ; $5462: $8b
	cp   l                                           ; $5463: $bd
	add  b                                           ; $5464: $80
	cp   h                                           ; $5465: $bc
	inc  b                                           ; $5466: $04
	rst  $10                                         ; $5467: $d7
	or   $d6                                         ; $5468: $f6 $d6
	or   $d6                                         ; $546a: $f6 $d6
	add  c                                           ; $546c: $81
	or   $03                                         ; $546d: $f6 $03
	sub  $f6                                         ; $546f: $d6 $f6
	sub  $f6                                         ; $5471: $d6 $f6
	add  b                                           ; $5473: $80
	xor  $04                                         ; $5474: $ee $04
	jr   nz, @+$03                                   ; $5476: $20 $01

	cp   $28                                         ; $5478: $fe $28
	add  hl, hl                                      ; $547a: $29
	adc  d                                           ; $547b: $8a
	jr   z, jr_02e_5488                              ; $547c: $28 $0a

	xor  b                                           ; $547e: $a8
	jr   c, jr_02e_54f4                              ; $547f: $38 $73

	cp   l                                           ; $5481: $bd
	dec  hl                                          ; $5482: $2b
	ld   l, e                                        ; $5483: $6b
	ld   bc, $9404                                   ; $5484: $01 $04 $94
	adc  b                                           ; $5487: $88

jr_02e_5488:
	sbc  b                                           ; $5488: $98
	add  d                                           ; $5489: $82
	add  b                                           ; $548a: $80
	add  b                                           ; $548b: $80
	sub  d                                           ; $548c: $92
	ld   bc, $b4cb                                   ; $548d: $01 $cb $b4
	add  b                                           ; $5490: $80
	ld   [hl], h                                     ; $5491: $74
	inc  bc                                          ; $5492: $03
	ret  nz                                          ; $5493: $c0

	cp   $2b                                         ; $5494: $fe $2b
	ld   [hl], l                                     ; $5496: $75
	add  b                                           ; $5497: $80
	ei                                               ; $5498: $fb
	nop                                              ; $5499: $00
	dec  bc                                          ; $549a: $0b
	add  c                                           ; $549b: $81
	ld   a, e                                        ; $549c: $7b
	ld   [bc], a                                     ; $549d: $02
	rrca                                             ; $549e: $0f
	ccf                                              ; $549f: $3f
	ret  nz                                          ; $54a0: $c0

	add  e                                           ; $54a1: $83
	nop                                              ; $54a2: $00
	add  d                                           ; $54a3: $82
	add  b                                           ; $54a4: $80
	add  d                                           ; $54a5: $82
	nop                                              ; $54a6: $00
	ld   [bc], a                                     ; $54a7: $02
	add  b                                           ; $54a8: $80
	rst  $38                                         ; $54a9: $ff
	ld   a, h                                        ; $54aa: $7c
	add  b                                           ; $54ab: $80
	nop                                              ; $54ac: $00
	ld   bc, $0002                                   ; $54ad: $01 $02 $00
	add  c                                           ; $54b0: $81
	ld   [bc], a                                     ; $54b1: $02
	inc  bc                                          ; $54b2: $03
	inc  b                                           ; $54b3: $04
	nop                                              ; $54b4: $00
	dec  bc                                          ; $54b5: $0b
	inc  bc                                          ; $54b6: $03
	add  b                                           ; $54b7: $80
	ld   [bc], a                                     ; $54b8: $02
	ld   bc, $e717                                   ; $54b9: $01 $17 $e7
	add  l                                           ; $54bc: $85
	rst  $38                                         ; $54bd: $ff
	add  c                                           ; $54be: $81
	nop                                              ; $54bf: $00
	nop                                              ; $54c0: $00
	ld   l, [hl]                                     ; $54c1: $6e
	add  e                                           ; $54c2: $83
	ld   a, h                                        ; $54c3: $7c
	nop                                              ; $54c4: $00
	ld   [hl-], a                                    ; $54c5: $32
	add  h                                           ; $54c6: $84
	ret  nc                                          ; $54c7: $d0

	add  a                                           ; $54c8: $87
	stop                                             ; $54c9: $10 $00
	jr   nc, jr_02e_5451                             ; $54cb: $30 $84

	rst  $38                                         ; $54cd: $ff
	add  c                                           ; $54ce: $81
	nop                                              ; $54cf: $00
	nop                                              ; $54d0: $00
	ld   [hl], $81                                   ; $54d1: $36 $81
	inc  a                                           ; $54d3: $3c
	ld   [bc], a                                     ; $54d4: $02
	ld   [$1e3c], sp                                 ; $54d5: $08 $3c $1e
	add  d                                           ; $54d8: $82
	pop  de                                          ; $54d9: $d1
	add  b                                           ; $54da: $80
	ret  nc                                          ; $54db: $d0

	add  a                                           ; $54dc: $87
	stop                                             ; $54dd: $10 $00
	ld   [hl-], a                                    ; $54df: $32
	add  d                                           ; $54e0: $82
	db   $fd                                         ; $54e1: $fd
	add  c                                           ; $54e2: $81
	ld   bc, $5900                                   ; $54e3: $01 $00 $59
	add  c                                           ; $54e6: $81
	ld   [hl], c                                     ; $54e7: $71
	inc  b                                           ; $54e8: $04
	ld   hl, $2171                                   ; $54e9: $21 $71 $21
	ld   [hl], c                                     ; $54ec: $71
	inc  l                                           ; $54ed: $2c
	add  c                                           ; $54ee: $81
	jr   c, jr_02e_54fd                              ; $54ef: $38 $0c

	dec  a                                           ; $54f1: $3d
	dec  b                                           ; $54f2: $05
	ld   [de], a                                     ; $54f3: $12

jr_02e_54f4:
	ld   a, [de]                                     ; $54f4: $1a
	dec  b                                           ; $54f5: $05
	dec  e                                           ; $54f6: $1d
	ld   [bc], a                                     ; $54f7: $02
	ld   a, [de]                                     ; $54f8: $1a
	dec  h                                           ; $54f9: $25
	dec  [hl]                                        ; $54fa: $35
	ld   a, [hl+]                                    ; $54fb: $2a
	ld   a, [hl-]                                    ; $54fc: $3a

jr_02e_54fd:
	pop  af                                          ; $54fd: $f1
	add  c                                           ; $54fe: $81
	ld   bc, $7f80                                   ; $54ff: $01 $80 $7f
	add  b                                           ; $5502: $80
	cp   a                                           ; $5503: $bf
	add  b                                           ; $5504: $80
	ld   a, a                                        ; $5505: $7f
	add  b                                           ; $5506: $80
	cp   a                                           ; $5507: $bf
	add  b                                           ; $5508: $80
	ld   a, a                                        ; $5509: $7f
	add  b                                           ; $550a: $80
	cp   a                                           ; $550b: $bf
	add  d                                           ; $550c: $82
	add  b                                           ; $550d: $80
	add  h                                           ; $550e: $84
	cp   a                                           ; $550f: $bf
	nop                                              ; $5510: $00
	or   e                                           ; $5511: $b3
	add  c                                           ; $5512: $81
	cp   e                                           ; $5513: $bb
	ld   bc, $bbb3                                   ; $5514: $01 $b3 $bb
	add  d                                           ; $5517: $82
	ldh  [$82], a                                    ; $5518: $e0 $82
	rst  $28                                         ; $551a: $ef
	nop                                              ; $551b: $00
	xor  $83                                         ; $551c: $ee $83
	rst  $28                                         ; $551e: $ef
	ld   bc, $efee                                   ; $551f: $01 $ee $ef
	add  b                                           ; $5522: $80
	inc  e                                           ; $5523: $1c
	add  b                                           ; $5524: $80
	dec  e                                           ; $5525: $1d
	add  d                                           ; $5526: $82
	db   $fd                                         ; $5527: $fd
	add  [hl]                                        ; $5528: $86
	cp   l                                           ; $5529: $bd
	add  b                                           ; $552a: $80
	ld   bc, $ff00                                   ; $552b: $01 $00 $ff
	add  c                                           ; $552e: $81
	cp   $00                                         ; $552f: $fe $00
	sub  $83                                         ; $5531: $d6 $83
	or   $04                                         ; $5533: $f6 $04
	sub  $f6                                         ; $5535: $d6 $f6
	sub  $f6                                         ; $5537: $d6 $f6
	sbc  $80                                         ; $5539: $de $80
	ei                                               ; $553b: $fb
	add  b                                           ; $553c: $80
	dec  de                                          ; $553d: $1b
	add  d                                           ; $553e: $82
	dec  bc                                          ; $553f: $0b
	add  l                                           ; $5540: $85
	dec  hl                                          ; $5541: $2b
	ld   bc, $e430                                   ; $5542: $01 $30 $e4
	add  d                                           ; $5545: $82
	ldh  a, [$80]                                    ; $5546: $f0 $80
	db   $e4                                         ; $5548: $e4
	add  d                                           ; $5549: $82
	add  h                                           ; $554a: $84
	add  b                                           ; $554b: $80
	add  c                                           ; $554c: $81
	add  b                                           ; $554d: $80
	ret  nz                                          ; $554e: $c0

	inc  bc                                          ; $554f: $03
	ld   b, b                                        ; $5550: $40
	ld   a, a                                        ; $5551: $7f
	call $80fd                                       ; $5552: $cd $fd $80
	ld   a, [hl-]                                    ; $5555: $3a
	rlca                                             ; $5556: $07
	inc  bc                                          ; $5557: $03
	rrca                                             ; $5558: $0f
	ld   e, e                                        ; $5559: $5b
	ld   a, a                                        ; $555a: $7f
	ld   e, d                                        ; $555b: $5a
	ld   a, a                                        ; $555c: $7f
	dec  a                                           ; $555d: $3d
	ccf                                              ; $555e: $3f
	add  b                                           ; $555f: $80
	pop  hl                                          ; $5560: $e1
	dec  d                                           ; $5561: $15
	ccf                                              ; $5562: $3f
	cp   a                                           ; $5563: $bf
	rst  $38                                         ; $5564: $ff
	ld   a, a                                        ; $5565: $7f
	rst  $38                                         ; $5566: $ff
	ld   a, a                                        ; $5567: $7f
	cp   a                                           ; $5568: $bf
	rst  $38                                         ; $5569: $ff
	rst  JumpTable                                         ; $556a: $df
	rst  $38                                         ; $556b: $ff
	ld   e, a                                        ; $556c: $5f
	rst  $38                                         ; $556d: $ff
	adc  a                                           ; $556e: $8f
	rst  $38                                         ; $556f: $ff
	rst  $28                                         ; $5570: $ef
	rst  $38                                         ; $5571: $ff
	pop  de                                          ; $5572: $d1
	ld   sp, hl                                      ; $5573: $f9
	push hl                                          ; $5574: $e5
	db   $fd                                         ; $5575: $fd
	db   $ec                                         ; $5576: $ec
	db   $fc                                         ; $5577: $fc
	add  b                                           ; $5578: $80
	ld   hl, sp-$80                                  ; $5579: $f8 $80
	ldh  [$80], a                                    ; $557b: $e0 $80
	ldh  [c], a                                      ; $557d: $e2
	add  b                                           ; $557e: $80
	ldh  [rDIV], a                                   ; $557f: $e0 $04
	ret  nz                                          ; $5581: $c0

	ldh  [$dd], a                                    ; $5582: $e0 $dd
	ld   a, h                                        ; $5584: $7c
	db   $10                                         ; $5585: $10
	add  a                                           ; $5586: $87
	ld   a, h                                        ; $5587: $7c
	inc  b                                           ; $5588: $04
	db   $10                                         ; $5589: $10
	ld   a, h                                        ; $558a: $7c
	db   $10                                         ; $558b: $10
	ld   a, h                                        ; $558c: $7c
	ld   [hl-], a                                    ; $558d: $32
	adc  l                                           ; $558e: $8d
	stop                                             ; $558f: $10 $00
	ld   b, $85                                      ; $5591: $06 $85
	inc  a                                           ; $5593: $3c
	ld   [bc], a                                     ; $5594: $02
	ld   [$083c], sp                                 ; $5595: $08 $3c $08
	add  e                                           ; $5598: $83
	inc  a                                           ; $5599: $3c
	nop                                              ; $559a: $00
	ld   a, [hl+]                                    ; $559b: $2a
	adc  c                                           ; $559c: $89
	db   $10                                         ; $559d: $10
	add  b                                           ; $559e: $80
	inc  de                                          ; $559f: $13
	ld   [bc], a                                     ; $55a0: $02
	ld   c, a                                        ; $55a1: $4f
	ld   a, a                                        ; $55a2: $7f
	ld   e, d                                        ; $55a3: $5a
	add  c                                           ; $55a4: $81
	ld   [hl], c                                     ; $55a5: $71
	ld   [bc], a                                     ; $55a6: $02
	ld   hl, $2171                                   ; $55a7: $21 $71 $21
	add  c                                           ; $55aa: $81
	ld   [hl], c                                     ; $55ab: $71
	rla                                              ; $55ac: $17
	ld   [hl], l                                     ; $55ad: $75
	ld   a, [hl]                                     ; $55ae: $7e
	xor  $cf                                         ; $55af: $ee $cf
	jp   c, $0eff                                    ; $55b1: $da $ff $0e

	dec  d                                           ; $55b4: $15
	ld   a, [bc]                                     ; $55b5: $0a
	ld   a, [hl+]                                    ; $55b6: $2a
	ld   [hl], l                                     ; $55b7: $75
	ld   d, l                                        ; $55b8: $55
	ld   l, a                                        ; $55b9: $6f
	cpl                                              ; $55ba: $2f

jr_02e_55bb:
	ld   a, [hl]                                     ; $55bb: $7e
	cp   $3f                                         ; $55bc: $fe $3f
	rst  $38                                         ; $55be: $ff
	rst  JumpTable                                         ; $55bf: $df
	rst  $38                                         ; $55c0: $ff
	jr   c, jr_02e_55bb                              ; $55c1: $38 $f8

	ld   e, a                                        ; $55c3: $5f
	ld   a, a                                        ; $55c4: $7f
	add  b                                           ; $55c5: $80
	cp   a                                           ; $55c6: $bf
	add  b                                           ; $55c7: $80
	ccf                                              ; $55c8: $3f
	dec  b                                           ; $55c9: $05
	add  [hl]                                        ; $55ca: $86
	sbc  a                                           ; $55cb: $9f
	rlca                                             ; $55cc: $07
	rra                                              ; $55cd: $1f
	ld   c, $0f                                      ; $55ce: $0e $0f
	add  b                                           ; $55d0: $80
	ld   c, $80                                      ; $55d1: $0e $80
	nop                                              ; $55d3: $00
	dec  bc                                          ; $55d4: $0b
	or   e                                           ; $55d5: $b3
	cp   e                                           ; $55d6: $bb
	or   e                                           ; $55d7: $b3
	cp   e                                           ; $55d8: $bb
	or   e                                           ; $55d9: $b3
	cp   e                                           ; $55da: $bb
	jr   @+$01                                       ; $55db: $18 $ff

	rrca                                             ; $55dd: $0f
	rst  $38                                         ; $55de: $ff
	db   $eb                                         ; $55df: $eb
	db   $f4                                         ; $55e0: $f4
	add  b                                           ; $55e1: $80
	ld   e, e                                        ; $55e2: $5b
	add  b                                           ; $55e3: $80
	inc  b                                           ; $55e4: $04
	nop                                              ; $55e5: $00
	xor  $81                                         ; $55e6: $ee $81
	rst  $28                                         ; $55e8: $ef
	add  hl, bc                                      ; $55e9: $09
	xor  $ef                                         ; $55ea: $ee $ef
	jp   nz, $d9ff                                   ; $55ec: $c2 $ff $d9

	rst  $38                                         ; $55ef: $ff
	call nz, $dfff                                   ; $55f0: $c4 $ff $df
	rst  $38                                         ; $55f3: $ff
	add  b                                           ; $55f4: $80
	ld   [bc], a                                     ; $55f5: $02
	add  h                                           ; $55f6: $84
	cp   l                                           ; $55f7: $bd
	rlca                                             ; $55f8: $07
	dec  c                                           ; $55f9: $0d
	adc  a                                           ; $55fa: $8f
	cp   l                                           ; $55fb: $bd
	rst  $38                                         ; $55fc: $ff
	ld   b, a                                        ; $55fd: $47
	rst  $38                                         ; $55fe: $ff
	sbc  d                                           ; $55ff: $9a
	ldh  [c], a                                      ; $5600: $e2
	add  b                                           ; $5601: $80
	nop                                              ; $5602: $00
	dec  c                                           ; $5603: $0d
	rst  $10                                         ; $5604: $d7
	or   $d6                                         ; $5605: $f6 $d6
	or   $d6                                         ; $5607: $f6 $d6
	or   $2c                                         ; $5609: $f6 $2c
	ei                                               ; $560b: $fb
	ld   d, $ff                                      ; $560c: $16 $ff
	ret  nz                                          ; $560e: $c0

	rst  $38                                         ; $560f: $ff
	ld   b, d                                        ; $5610: $42
	ld   h, d                                        ; $5611: $62
	add  b                                           ; $5612: $80
	ld   de, $ff00                                   ; $5613: $11 $00 $ff
	add  b                                           ; $5616: $80
	dec  hl                                          ; $5617: $2b
	ld   a, [bc]                                     ; $5618: $0a
	cpl                                              ; $5619: $2f
	dec  h                                           ; $561a: $25
	ld   a, $cf                                      ; $561b: $3e $cf
	ei                                               ; $561d: $fb
	db   $ec                                         ; $561e: $ec
	rst  $28                                         ; $561f: $ef
	ld   a, c                                        ; $5620: $79
	db   $fd                                         ; $5621: $fd
	rrca                                             ; $5622: $0f
	ld   [hl], a                                     ; $5623: $77
	add  b                                           ; $5624: $80
	cpl                                              ; $5625: $2f
	add  b                                           ; $5626: $80
	add  b                                           ; $5627: $80
	add  b                                           ; $5628: $80
	pop  hl                                          ; $5629: $e1
	dec  b                                           ; $562a: $05
	ld   b, h                                        ; $562b: $44
	rst  $30                                         ; $562c: $f7
	inc  c                                           ; $562d: $0c
	rst  $38                                         ; $562e: $ff
	ldh  [hScriptOpcodeParams], a                                    ; $562f: $e0 $a0
	add  b                                           ; $5631: $80
	ldh  a, [$80]                                    ; $5632: $f0 $80
	ldh  [$03], a                                    ; $5634: $e0 $03
	ld   [hl-], a                                    ; $5636: $32
	ldh  a, [c]                                      ; $5637: $f2
	jp   nz, $8002                                   ; $5638: $c2 $02 $80

	db   $10                                         ; $563b: $10
	add  b                                           ; $563c: $80
	nop                                              ; $563d: $00
	ld   [bc], a                                     ; $563e: $02
	ld   l, l                                        ; $563f: $6d
	ld   l, a                                        ; $5640: $6f
	ld   b, d                                        ; $5641: $42
	add  c                                           ; $5642: $81
	ld   h, b                                        ; $5643: $60
	ld   bc, $0020                                   ; $5644: $01 $20 $00
	add  b                                           ; $5647: $80
	dec  b                                           ; $5648: $05
	nop                                              ; $5649: $00
	ccf                                              ; $564a: $3f
	add  c                                           ; $564b: $81
	ld   a, a                                        ; $564c: $7f
	inc  b                                           ; $564d: $04
	cp   d                                           ; $564e: $ba
	rst  $38                                         ; $564f: $ff
	inc  l                                           ; $5650: $2c
	add  hl, sp                                      ; $5651: $39
	db   $10                                         ; $5652: $10
	add  c                                           ; $5653: $81
	nop                                              ; $5654: $00
	add  d                                           ; $5655: $82
	rst  $38                                         ; $5656: $ff
	add  b                                           ; $5657: $80
	ret  nz                                          ; $5658: $c0

	add  b                                           ; $5659: $80
	ldh  a, [$80]                                    ; $565a: $f0 $80
	ld   hl, sp+$02                                  ; $565c: $f8 $02
	halt                                             ; $565e: $76
	or   $80                                         ; $565f: $f6 $80
	add  c                                           ; $5661: $81
	nop                                              ; $5662: $00
	add  b                                           ; $5663: $80
	add  b                                           ; $5664: $80
	add  b                                           ; $5665: $80
	ldh  [$03], a                                    ; $5666: $e0 $03
	sub  c                                           ; $5668: $91
	ld   a, h                                        ; $5669: $7c
	db   $ed                                         ; $566a: $ed
	rst  $38                                         ; $566b: $ff
	add  b                                           ; $566c: $80
	ld   b, a                                        ; $566d: $47
	add  b                                           ; $566e: $80
	sbc  d                                           ; $566f: $9a
	add  b                                           ; $5670: $80
	rst  $38                                         ; $5671: $ff
	inc  bc                                          ; $5672: $03
	ld   e, e                                        ; $5673: $5b
	rst  $38                                         ; $5674: $ff
	and  h                                           ; $5675: $a4
	rst  $38                                         ; $5676: $ff
	add  b                                           ; $5677: $80
	add  sp, $03                                     ; $5678: $e8 $03
	ret  nc                                          ; $567a: $d0

	rra                                              ; $567b: $1f
	set  7, e                                        ; $567c: $cb $fb
	add  b                                           ; $567e: $80
	push af                                          ; $567f: $f5
	dec  b                                           ; $5680: $05
	cp   $ff                                         ; $5681: $fe $ff
	pop  de                                          ; $5683: $d1
	rst  $38                                         ; $5684: $ff
	ld   l, $fe                                      ; $5685: $2e $fe
	add  b                                           ; $5687: $80
	and  e                                           ; $5688: $a3
	inc  bc                                          ; $5689: $03
	ld   [hl], b                                     ; $568a: $70
	ld   a, a                                        ; $568b: $7f
	inc  bc                                          ; $568c: $03
	di                                               ; $568d: $f3
	add  b                                           ; $568e: $80
	cp   $11                                         ; $568f: $fe $11
	ei                                               ; $5691: $fb
	rst  $38                                         ; $5692: $ff
	add  h                                           ; $5693: $84
	rst  $38                                         ; $5694: $ff
	ld   a, b                                        ; $5695: $78
	ld   hl, sp+$5c                                  ; $5696: $f8 $5c
	ld   e, a                                        ; $5698: $5f
	add  e                                           ; $5699: $83
	rst  $38                                         ; $569a: $ff
	ld   a, a                                        ; $569b: $7f
	rst  $38                                         ; $569c: $ff
	ldh  a, [c]                                      ; $569d: $f2
	di                                               ; $569e: $f3
	pop  de                                          ; $569f: $d1
	rst  $38                                         ; $56a0: $ff
	ld   a, [hl+]                                    ; $56a1: $2a
	ld   a, [$c380]                                  ; $56a2: $fa $80 $c3
	ld   [bc], a                                     ; $56a5: $02
	ldh  [rIE], a                                    ; $56a6: $e0 $ff
	rra                                              ; $56a8: $1f
	add  e                                           ; $56a9: $83
	rst  $38                                         ; $56aa: $ff
	ld   bc, $ff00                                   ; $56ab: $01 $00 $ff
	add  b                                           ; $56ae: $80
	pop  hl                                          ; $56af: $e1
	ld   [bc], a                                     ; $56b0: $02
	jr   c, jr_02e_56f2                              ; $56b1: $38 $3f

	rlca                                             ; $56b3: $07
	add  a                                           ; $56b4: $87
	rst  $38                                         ; $56b5: $ff
	inc  b                                           ; $56b6: $04
	ld   a, b                                        ; $56b7: $78
	add  a                                           ; $56b8: $87
	pop  bc                                          ; $56b9: $c1
	rst  $38                                         ; $56ba: $ff
	ld   a, $89                                      ; $56bb: $3e $89
	rst  $38                                         ; $56bd: $ff
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	add  c                                           ; $56c0: $81
	rst  $38                                         ; $56c1: $ff
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	adc  c                                           ; $56c4: $89
	rst  $38                                         ; $56c5: $ff
	nop                                              ; $56c6: $00
	nop                                              ; $56c7: $00
	add  c                                           ; $56c8: $81
	rst  $38                                         ; $56c9: $ff
	ld   [bc], a                                     ; $56ca: $02
	ccf                                              ; $56cb: $3f
	rst  $38                                         ; $56cc: $ff
	ret  nz                                          ; $56cd: $c0

	add  a                                           ; $56ce: $87
	rst  $38                                         ; $56cf: $ff
	nop                                              ; $56d0: $00
	nop                                              ; $56d1: $00
	add  e                                           ; $56d2: $83
	rst  $38                                         ; $56d3: $ff
	nop                                              ; $56d4: $00
	nop                                              ; $56d5: $00
	add  a                                           ; $56d6: $87
	rst  $38                                         ; $56d7: $ff
	nop                                              ; $56d8: $00
	nop                                              ; $56d9: $00
	add  e                                           ; $56da: $83
	rst  $38                                         ; $56db: $ff
	ld   [bc], a                                     ; $56dc: $02
	rrca                                             ; $56dd: $0f
	rst  $38                                         ; $56de: $ff
	ldh  a, [$85]                                    ; $56df: $f0 $85
	rst  $38                                         ; $56e1: $ff
	ld   bc, $fe01                                   ; $56e2: $01 $01 $fe
	add  h                                           ; $56e5: $84
	rst  $38                                         ; $56e6: $ff
	nop                                              ; $56e7: $00
	nop                                              ; $56e8: $00
	add  l                                           ; $56e9: $85
	rst  $38                                         ; $56ea: $ff
	ld   [$ff03], sp                                 ; $56eb: $08 $03 $ff
	di                                               ; $56ee: $f3
	rst  $38                                         ; $56ef: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56f0: $cf
	rst  $38                                         ; $56f1: $ff

jr_02e_56f2:
	cp   a                                           ; $56f2: $bf
	rst  $38                                         ; $56f3: $ff
	ld   a, a                                        ; $56f4: $7f
	add  l                                           ; $56f5: $85
	rst  $38                                         ; $56f6: $ff
	inc  b                                           ; $56f7: $04
	ret  nz                                          ; $56f8: $c0

	rst  $38                                         ; $56f9: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56fa: $cf
	rst  $38                                         ; $56fb: $ff
	ldh  a, [$89]                                    ; $56fc: $f0 $89
	rst  $38                                         ; $56fe: $ff
	inc  b                                           ; $56ff: $04
	nop                                              ; $5700: $00
	rst  $38                                         ; $5701: $ff
	cp   [hl]                                        ; $5702: $be
	rst  $38                                         ; $5703: $ff
	ld   b, c                                        ; $5704: $41
	adc  c                                           ; $5705: $89
	rst  $38                                         ; $5706: $ff
	ld   [bc], a                                     ; $5707: $02
	rra                                              ; $5708: $1f
	rst  $38                                         ; $5709: $ff
	rra                                              ; $570a: $1f
	adc  e                                           ; $570b: $8b
	rst  $38                                         ; $570c: $ff
	inc  b                                           ; $570d: $04
	nop                                              ; $570e: $00
	rst  $38                                         ; $570f: $ff
	rrca                                             ; $5710: $0f
	rst  $38                                         ; $5711: $ff
	ldh  a, [$89]                                    ; $5712: $f0 $89
	rst  $38                                         ; $5714: $ff
	inc  b                                           ; $5715: $04
	ldh  [$1f], a                                    ; $5716: $e0 $1f
	ldh  [rIE], a                                    ; $5718: $e0 $ff
	rra                                              ; $571a: $1f
	adc  c                                           ; $571b: $89
	rst  $38                                         ; $571c: $ff
	ld   [bc], a                                     ; $571d: $02
	ld   a, a                                        ; $571e: $7f
	rst  $38                                         ; $571f: $ff
	ld   a, a                                        ; $5720: $7f
	sbc  c                                           ; $5721: $99
	rst  $38                                         ; $5722: $ff
	add  b                                           ; $5723: $80
	ret  nz                                          ; $5724: $c0

	adc  d                                           ; $5725: $8a
	rst  $38                                         ; $5726: $ff
	add  b                                           ; $5727: $80
	ldh  a, [$80]                                    ; $5728: $f0 $80
	nop                                              ; $572a: $00
	adc  d                                           ; $572b: $8a
	rst  $38                                         ; $572c: $ff
	add  b                                           ; $572d: $80
	inc  a                                           ; $572e: $3c
	add  b                                           ; $572f: $80
	nop                                              ; $5730: $00
	adc  b                                           ; $5731: $88
	rst  $38                                         ; $5732: $ff
	add  b                                           ; $5733: $80
	ldh  a, [$82]                                    ; $5734: $f0 $82
	nop                                              ; $5736: $00
	add  [hl]                                        ; $5737: $86
	rst  $38                                         ; $5738: $ff
	add  b                                           ; $5739: $80
	ret  z                                           ; $573a: $c8

	add  b                                           ; $573b: $80
	nop                                              ; $573c: $00
	add  b                                           ; $573d: $80
	ld   bc, $0080                                   ; $573e: $01 $80 $00
	add  [hl]                                        ; $5741: $86
	rst  $38                                         ; $5742: $ff
	add  b                                           ; $5743: $80
	ld   a, a                                        ; $5744: $7f
	add  b                                           ; $5745: $80
	ccf                                              ; $5746: $3f
	add  b                                           ; $5747: $80
	rst  $38                                         ; $5748: $ff
	add  b                                           ; $5749: $80
	rlca                                             ; $574a: $07
	sbc  h                                           ; $574b: $9c
	rst  $38                                         ; $574c: $ff
	add  b                                           ; $574d: $80
	db   $fc                                         ; $574e: $fc
	adc  d                                           ; $574f: $8a
	rst  $38                                         ; $5750: $ff
	add  b                                           ; $5751: $80
	db   $e3                                         ; $5752: $e3
	add  b                                           ; $5753: $80
	nop                                              ; $5754: $00
	add  [hl]                                        ; $5755: $86
	rst  $38                                         ; $5756: $ff
	add  b                                           ; $5757: $80
	pop  bc                                          ; $5758: $c1
	add  b                                           ; $5759: $80
	ldh  a, [$80]                                    ; $575a: $f0 $80
	db   $fc                                         ; $575c: $fc
	add  b                                           ; $575d: $80
	ret  nz                                          ; $575e: $c0

	adc  b                                           ; $575f: $88
	rst  $38                                         ; $5760: $ff
	add  b                                           ; $5761: $80
	rrca                                             ; $5762: $0f
	add  d                                           ; $5763: $82
	nop                                              ; $5764: $00
	adc  b                                           ; $5765: $88
	rst  $38                                         ; $5766: $ff
	add  b                                           ; $5767: $80
	cp   $80                                         ; $5768: $fe $80
	rra                                              ; $576a: $1f
	add  b                                           ; $576b: $80
	nop                                              ; $576c: $00
	add  [hl]                                        ; $576d: $86
	rst  $38                                         ; $576e: $ff
	add  b                                           ; $576f: $80
	ld   hl, sp-$80                                  ; $5770: $f8 $80
	nop                                              ; $5772: $00
	add  b                                           ; $5773: $80
	add  b                                           ; $5774: $80
	add  b                                           ; $5775: $80
	nop                                              ; $5776: $00
	add  [hl]                                        ; $5777: $86
	rst  $38                                         ; $5778: $ff
	add  b                                           ; $5779: $80
	rlca                                             ; $577a: $07
	add  b                                           ; $577b: $80
	ccf                                              ; $577c: $3f
	add  b                                           ; $577d: $80
	rlca                                             ; $577e: $07
	add  b                                           ; $577f: $80
	ld   bc, $00a4                                   ; $5780: $01 $a4 $00
	nop                                              ; $5783: $00
	ret  nz                                          ; $5784: $c0

	add  l                                           ; $5785: $85
	nop                                              ; $5786: $00
	nop                                              ; $5787: $00
	ret  nz                                          ; $5788: $c0

	sub  [hl]                                        ; $5789: $96
	nop                                              ; $578a: $00
	add  [hl]                                        ; $578b: $86
	ret  nz                                          ; $578c: $c0

	sub  l                                           ; $578d: $95
	nop                                              ; $578e: $00
	add  [hl]                                        ; $578f: $86
	ret  nz                                          ; $5790: $c0

	rst  $38                                         ; $5791: $ff
	nop                                              ; $5792: $00
	rst  $38                                         ; $5793: $ff
	nop                                              ; $5794: $00
	rst  $38                                         ; $5795: $ff
	nop                                              ; $5796: $00
	rst  $38                                         ; $5797: $ff
	nop                                              ; $5798: $00
	rst  $38                                         ; $5799: $ff
	nop                                              ; $579a: $00
	rst  $38                                         ; $579b: $ff
	nop                                              ; $579c: $00
	rst  $38                                         ; $579d: $ff
	nop                                              ; $579e: $00
	rst  $38                                         ; $579f: $ff
	nop                                              ; $57a0: $00
	rst  $38                                         ; $57a1: $ff
	nop                                              ; $57a2: $00
	rst  $38                                         ; $57a3: $ff
	nop                                              ; $57a4: $00
	rst  $38                                         ; $57a5: $ff
	nop                                              ; $57a6: $00
	rst  $38                                         ; $57a7: $ff
	nop                                              ; $57a8: $00
	rst  $38                                         ; $57a9: $ff
	nop                                              ; $57aa: $00
	rst  $38                                         ; $57ab: $ff
	nop                                              ; $57ac: $00
	rst  $38                                         ; $57ad: $ff
	nop                                              ; $57ae: $00
	add  c                                           ; $57af: $81
	nop                                              ; $57b0: $00
	ld   hl, sp+$01                                  ; $57b1: $f8 $01
	db   $10                                         ; $57b3: $10
	ret  c                                           ; $57b4: $d8

	ld   e, b                                        ; $57b5: $58
	ld   a, h                                        ; $57b6: $7c
	ld   a, l                                        ; $57b7: $7d
	ld   e, a                                        ; $57b8: $5f
	ccf                                              ; $57b9: $3f
	ld   c, a                                        ; $57ba: $4f
	ld   a, [hl]                                     ; $57bb: $7e
	cp   a                                           ; $57bc: $bf
	rst  $38                                         ; $57bd: $ff
	db   $db                                         ; $57be: $db
	rst  $38                                         ; $57bf: $ff
	cp   h                                           ; $57c0: $bc
	rst  $38                                         ; $57c1: $ff
	or   $ff                                         ; $57c2: $f6 $ff
	cp   $80                                         ; $57c4: $fe $80
	nop                                              ; $57c6: $00
	ld   bc, $0080                                   ; $57c7: $01 $80 $00
	add  c                                           ; $57ca: $81
	add  b                                           ; $57cb: $80
	ld   [$c040], sp                                 ; $57cc: $08 $40 $c0
	ld   b, b                                        ; $57cf: $40
	ret  nz                                          ; $57d0: $c0

	ldh  [rIE], a                                    ; $57d1: $e0 $ff
	rst  JumpTable                                         ; $57d3: $df
	rst  $38                                         ; $57d4: $ff
	inc  a                                           ; $57d5: $3c
	add  c                                           ; $57d6: $81
	nop                                              ; $57d7: $00
	ld   bc, $0004                                   ; $57d8: $01 $04 $00
	add  b                                           ; $57db: $80
	ld   bc, $0800                                   ; $57dc: $01 $00 $08
	add  c                                           ; $57df: $81
	nop                                              ; $57e0: $00
	ld   bc, $f303                                   ; $57e1: $01 $03 $f3
	add  b                                           ; $57e4: $80
	ld   hl, sp+$03                                  ; $57e5: $f8 $03
	ld   a, d                                        ; $57e7: $7a
	ld   a, a                                        ; $57e8: $7f
	ld   c, e                                        ; $57e9: $4b
	ld   c, a                                        ; $57ea: $4f
	add  c                                           ; $57eb: $81
	pop  hl                                          ; $57ec: $e1
	nop                                              ; $57ed: $00
	ldh  [$80], a                                    ; $57ee: $e0 $80
	rst  JumpTable                                         ; $57f0: $df
	add  b                                           ; $57f1: $80
	dec  [hl]                                        ; $57f2: $35
	add  b                                           ; $57f3: $80
	ld   [hl], l                                     ; $57f4: $75
	ld   b, $00                                      ; $57f5: $06 $00
	inc  bc                                          ; $57f7: $03
	db   $fc                                         ; $57f8: $fc
	rst  $38                                         ; $57f9: $ff
	call c, $23ff                                    ; $57fa: $dc $ff $23
	adc  c                                           ; $57fd: $89
	rst  $38                                         ; $57fe: $ff
	ld   [bc], a                                     ; $57ff: $02
	rra                                              ; $5800: $1f
	rst  $38                                         ; $5801: $ff
	rra                                              ; $5802: $1f
	adc  e                                           ; $5803: $8b
	rst  $38                                         ; $5804: $ff
	ld   b, $83                                      ; $5805: $06 $83
	db   $fc                                         ; $5807: $fc
	sbc  a                                           ; $5808: $9f
	rst  $38                                         ; $5809: $ff
	db   $e3                                         ; $580a: $e3
	rst  $38                                         ; $580b: $ff
	db   $fc                                         ; $580c: $fc
	add  a                                           ; $580d: $87
	rst  $38                                         ; $580e: $ff
	ld   bc, $05fa                                   ; $580f: $01 $fa $05
	add  b                                           ; $5812: $80
	rst  $38                                         ; $5813: $ff
	ld   [bc], a                                     ; $5814: $02
	ld   a, a                                        ; $5815: $7f
	rst  $38                                         ; $5816: $ff
	add  b                                           ; $5817: $80
	add  a                                           ; $5818: $87
	rst  $38                                         ; $5819: $ff
	sub  d                                           ; $581a: $92
	nop                                              ; $581b: $00
	add  b                                           ; $581c: $80
	ld   de, $aa80                                   ; $581d: $11 $80 $aa
	add  b                                           ; $5820: $80
	ld   d, l                                        ; $5821: $55
	add  b                                           ; $5822: $80
	ld   a, [bc]                                     ; $5823: $0a
	add  b                                           ; $5824: $80
	ld   bc, $0080                                   ; $5825: $01 $80 $00
	add  b                                           ; $5828: $80
	inc  b                                           ; $5829: $04
	add  b                                           ; $582a: $80
	ld   a, [hl+]                                    ; $582b: $2a
	add  b                                           ; $582c: $80
	ld   d, l                                        ; $582d: $55
	add  b                                           ; $582e: $80
	xor  d                                           ; $582f: $aa
	add  b                                           ; $5830: $80
	ld   d, l                                        ; $5831: $55
	add  b                                           ; $5832: $80
	xor  d                                           ; $5833: $aa
	add  b                                           ; $5834: $80
	ld   d, l                                        ; $5835: $55
	add  b                                           ; $5836: $80
	ld   a, [hl+]                                    ; $5837: $2a
	add  b                                           ; $5838: $80
	ccf                                              ; $5839: $3f
	add  b                                           ; $583a: $80
	cp   a                                           ; $583b: $bf
	add  b                                           ; $583c: $80
	ld   d, l                                        ; $583d: $55
	add  b                                           ; $583e: $80
	xor  e                                           ; $583f: $ab
	add  b                                           ; $5840: $80
	ld   d, a                                        ; $5841: $57
	add  b                                           ; $5842: $80
	xor  e                                           ; $5843: $ab
	add  b                                           ; $5844: $80
	ld   d, [hl]                                     ; $5845: $56
	add  b                                           ; $5846: $80
	xor  e                                           ; $5847: $ab
	cp   [hl]                                        ; $5848: $be
	nop                                              ; $5849: $00
	ld   b, $fc                                      ; $584a: $06 $fc
	sbc  a                                           ; $584c: $9f
	rra                                              ; $584d: $1f
	sbc  a                                           ; $584e: $9f
	rst  $20                                         ; $584f: $e7
	rst  $38                                         ; $5850: $ff
	ei                                               ; $5851: $fb
	add  c                                           ; $5852: $81
	rst  $38                                         ; $5853: $ff
	add  b                                           ; $5854: $80
	rra                                              ; $5855: $1f
	inc  b                                           ; $5856: $04
	pop  hl                                          ; $5857: $e1
	ld   bc, $001e                                   ; $5858: $01 $1e $00
	ld   bc, $ff8b                                   ; $585b: $01 $8b $ff

jr_02e_585e:
	add  b                                           ; $585e: $80
	rra                                              ; $585f: $1f
	inc  b                                           ; $5860: $04
	pop  bc                                          ; $5861: $c1
	jp   nz, $0302                                   ; $5862: $c2 $02 $03

	add  e                                           ; $5865: $83
	add  d                                           ; $5866: $82
	add  a                                           ; $5867: $87
	nop                                              ; $5868: $00
	adc  e                                           ; $5869: $8b
	add  b                                           ; $586a: $80
	db   $eb                                         ; $586b: $eb
	ld   [bc], a                                     ; $586c: $02
	di                                               ; $586d: $f3
	ei                                               ; $586e: $fb
	db   $fd                                         ; $586f: $fd
	add  b                                           ; $5870: $80
	rst  $38                                         ; $5871: $ff
	add  d                                           ; $5872: $82
	nop                                              ; $5873: $00
	add  b                                           ; $5874: $80
	ldh  a, [$80]                                    ; $5875: $f0 $80
	cp   $81                                         ; $5877: $fe $81
	rst  $38                                         ; $5879: $ff
	add  d                                           ; $587a: $82
	cp   $00                                         ; $587b: $fe $00
	rst  $38                                         ; $587d: $ff
	add  l                                           ; $587e: $85
	nop                                              ; $587f: $00
	inc  b                                           ; $5880: $04
	ld   [hl], b                                     ; $5881: $70
	add  b                                           ; $5882: $80
	nop                                              ; $5883: $00
	inc  e                                           ; $5884: $1c
	inc  d                                           ; $5885: $14
	add  b                                           ; $5886: $80
	rra                                              ; $5887: $1f
	ld   bc, $d72f                                   ; $5888: $01 $2f $d7
	adc  d                                           ; $588b: $8a
	nop                                              ; $588c: $00
	add  b                                           ; $588d: $80
	add  b                                           ; $588e: $80
	add  b                                           ; $588f: $80
	ld   hl, sp-$65                                  ; $5890: $f8 $9b
	nop                                              ; $5892: $00
	ld   [bc], a                                     ; $5893: $02
	add  hl, bc                                      ; $5894: $09
	ld   e, $17                                      ; $5895: $1e $17
	adc  b                                           ; $5897: $88
	nop                                              ; $5898: $00
	dec  b                                           ; $5899: $05
	inc  bc                                          ; $589a: $03
	jr   c, jr_02e_58a4                              ; $589b: $38 $07

	rst  ToBoot                                         ; $589d: $c7
	rlca                                             ; $589e: $07
	db   $fc                                         ; $589f: $fc
	add  l                                           ; $58a0: $85
	nop                                              ; $58a1: $00
	inc  bc                                          ; $58a2: $03
	rlca                                             ; $58a3: $07

jr_02e_58a4:
	nop                                              ; $58a4: $00
	ld   a, b                                        ; $58a5: $78
	add  b                                           ; $58a6: $80
	add  b                                           ; $58a7: $80
	ret  nz                                          ; $58a8: $c0

	ld   [bc], a                                     ; $58a9: $02
	ld   b, b                                        ; $58aa: $40
	pop  bc                                          ; $58ab: $c1
	ld   a, [hl]                                     ; $58ac: $7e
	add  l                                           ; $58ad: $85
	nop                                              ; $58ae: $00
	ld   [$f408], sp                                 ; $58af: $08 $08 $f4
	or   h                                           ; $58b2: $b4
	rst  $30                                         ; $58b3: $f7
	ld   [hl], e                                     ; $58b4: $73
	di                                               ; $58b5: $f3
	inc  de                                          ; $58b6: $13
	di                                               ; $58b7: $f3
	rst  JumpTable                                         ; $58b8: $df
	adc  c                                           ; $58b9: $89
	nop                                              ; $58ba: $00
	inc  b                                           ; $58bb: $04
	ld   bc, $e0c1                                   ; $58bc: $01 $c1 $e0
	ret  nc                                          ; $58bf: $d0

	ldh  a, [$89]                                    ; $58c0: $f0 $89
	nop                                              ; $58c2: $00
	add  b                                           ; $58c3: $80
	ld   d, l                                        ; $58c4: $55
	add  b                                           ; $58c5: $80
	ld   [bc], a                                     ; $58c6: $02
	adc  b                                           ; $58c7: $88
	nop                                              ; $58c8: $00
	add  b                                           ; $58c9: $80
	ld   a, [bc]                                     ; $58ca: $0a
	add  b                                           ; $58cb: $80
	ld   d, l                                        ; $58cc: $55
	add  b                                           ; $58cd: $80
	xor  d                                           ; $58ce: $aa
	adc  b                                           ; $58cf: $88
	nop                                              ; $58d0: $00
	add  b                                           ; $58d1: $80
	ld   [bc], a                                     ; $58d2: $02
	add  b                                           ; $58d3: $80
	ld   d, h                                        ; $58d4: $54
	add  b                                           ; $58d5: $80
	and  b                                           ; $58d6: $a0
	add  d                                           ; $58d7: $82
	nop                                              ; $58d8: $00
	add  b                                           ; $58d9: $80
	jr   z, jr_02e_585e                              ; $58da: $28 $82

	nop                                              ; $58dc: $00
	add  b                                           ; $58dd: $80
	add  b                                           ; $58de: $80
	add  [hl]                                        ; $58df: $86
	nop                                              ; $58e0: $00
	ld   [bc], a                                     ; $58e1: $02
	ld   h, b                                        ; $58e2: $60
	ld   [hl], b                                     ; $58e3: $70
	ld   a, [hl]                                     ; $58e4: $7e
	add  c                                           ; $58e5: $81
	ld   a, h                                        ; $58e6: $7c
	ld   [bc], a                                     ; $58e7: $02
	db   $10                                         ; $58e8: $10
	ld   a, h                                        ; $58e9: $7c
	db   $10                                         ; $58ea: $10
	add  c                                           ; $58eb: $81
	ld   a, h                                        ; $58ec: $7c
	nop                                              ; $58ed: $00
	ld   [hl-], a                                    ; $58ee: $32
	adc  l                                           ; $58ef: $8d
	db   $10                                         ; $58f0: $10
	inc  b                                           ; $58f1: $04
	ret  nc                                          ; $58f2: $d0

	rra                                              ; $58f3: $1f
	ldh  [rP1], a                                    ; $58f4: $e0 $00
	rra                                              ; $58f6: $1f
	add  e                                           ; $58f7: $83
	nop                                              ; $58f8: $00
	ld   b, $30                                      ; $58f9: $06 $30
	jr   c, jr_02e_593b                              ; $58fb: $38 $3e

	inc  a                                           ; $58fd: $3c
	inc  c                                           ; $58fe: $0c
	inc  a                                           ; $58ff: $3c
	ld   a, [hl-]                                    ; $5900: $3a
	add  c                                           ; $5901: $81
	rst  $38                                         ; $5902: $ff
	add  b                                           ; $5903: $80
	rrca                                             ; $5904: $0f
	ld   [bc], a                                     ; $5905: $02
	sbc  $10                                         ; $5906: $de $10
	ld   de, $1085                                   ; $5908: $11 $85 $10
	dec  b                                           ; $590b: $05
	ret  z                                           ; $590c: $c8

	cpl                                              ; $590d: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $590e: $cf
	rst  $28                                         ; $590f: $ef
	rst  $30                                         ; $5910: $f7
	rst  $38                                         ; $5911: $ff
	add  b                                           ; $5912: $80
	rrca                                             ; $5913: $0f
	ld   [bc], a                                     ; $5914: $02
	ldh  a, [rP1]                                    ; $5915: $f0 $00
	dec  c                                           ; $5917: $0d
	add  c                                           ; $5918: $81
	ld   bc, $4103                                   ; $5919: $01 $03 $41
	ld   h, c                                        ; $591c: $61
	inc  hl                                          ; $591d: $23
	rst  $38                                         ; $591e: $ff
	add  b                                           ; $591f: $80
	cp   $84                                         ; $5920: $fe $84
	rst  $38                                         ; $5922: $ff
	inc  b                                           ; $5923: $04
	pop  bc                                          ; $5924: $c1
	ld   bc, $003c                                   ; $5925: $01 $3c $00
	ld   [bc], a                                     ; $5928: $02
	add  b                                           ; $5929: $80
	ld   bc, $0002                                   ; $592a: $01 $02 $00
	ld   e, [hl]                                     ; $592d: $5e
	and  b                                           ; $592e: $a0
	add  b                                           ; $592f: $80
	ld   b, b                                        ; $5930: $40
	add  b                                           ; $5931: $80
	and  b                                           ; $5932: $a0
	add  b                                           ; $5933: $80
	ld   b, b                                        ; $5934: $40
	add  b                                           ; $5935: $80
	add  b                                           ; $5936: $80
	add  b                                           ; $5937: $80
	nop                                              ; $5938: $00
	add  b                                           ; $5939: $80
	cp   a                                           ; $593a: $bf

jr_02e_593b:
	ld   [bc], a                                     ; $593b: $02
	ld   b, $1e                                      ; $593c: $06 $1e
	ld   a, [bc]                                     ; $593e: $0a
	add  c                                           ; $593f: $81
	ld   [hl], $80                                   ; $5940: $36 $80
	inc  [hl]                                        ; $5942: $34
	nop                                              ; $5943: $00
	inc  h                                           ; $5944: $24
	add  c                                           ; $5945: $81
	nop                                              ; $5946: $00
	add  b                                           ; $5947: $80
	rra                                              ; $5948: $1f
	add  b                                           ; $5949: $80
	cp   a                                           ; $594a: $bf
	ld   bc, $0703                                   ; $594b: $01 $03 $07
	add  b                                           ; $594e: $80
	ld   b, $81                                      ; $594f: $06 $81
	inc  b                                           ; $5951: $04
	add  c                                           ; $5952: $81
	nop                                              ; $5953: $00
	add  b                                           ; $5954: $80
	ld   bc, $ef82                                   ; $5955: $01 $82 $ef
	nop                                              ; $5958: $00
	ld   b, b                                        ; $5959: $40
	add  c                                           ; $595a: $81
	pop  bc                                          ; $595b: $c1
	nop                                              ; $595c: $00
	add  c                                           ; $595d: $81
	add  b                                           ; $595e: $80
	add  b                                           ; $595f: $80
	add  c                                           ; $5960: $81
	nop                                              ; $5961: $00
	add  h                                           ; $5962: $84
	db   $fd                                         ; $5963: $fd
	ld   bc, $b393                                   ; $5964: $01 $93 $b3
	add  c                                           ; $5967: $81
	ld   hl, $0181                                   ; $5968: $21 $81 $01
	add  b                                           ; $596b: $80
	nop                                              ; $596c: $00
	nop                                              ; $596d: $00
	rst  $38                                         ; $596e: $ff
	add  c                                           ; $596f: $81
	cp   $07                                         ; $5970: $fe $07
	sub  $f6                                         ; $5972: $d6 $f6
	sbc  e                                           ; $5974: $9b
	sbc  l                                           ; $5975: $9d
	dec  de                                          ; $5976: $1b
	inc  e                                           ; $5977: $1c
	dec  e                                           ; $5978: $1d
	inc  e                                           ; $5979: $1c
	add  b                                           ; $597a: $80
	ret  c                                           ; $597b: $d8

	ld   [$7858], sp                                 ; $597c: $08 $58 $78
	sbc  h                                           ; $597f: $9c
	inc  e                                           ; $5980: $1c
	ld   h, [hl]                                     ; $5981: $66
	rlca                                             ; $5982: $07
	dec  de                                          ; $5983: $1b
	dec  bc                                          ; $5984: $0b
	rrca                                             ; $5985: $0f
	add  [hl]                                        ; $5986: $86
	nop                                              ; $5987: $00
	add  b                                           ; $5988: $80
	add  b                                           ; $5989: $80
	add  b                                           ; $598a: $80
	add  c                                           ; $598b: $81
	add  c                                           ; $598c: $81
	pop  bc                                          ; $598d: $c1
	ld   bc, $05c4                                   ; $598e: $01 $c4 $05
	add  a                                           ; $5991: $87
	nop                                              ; $5992: $00
	add  b                                           ; $5993: $80
	ret  nz                                          ; $5994: $c0

	nop                                              ; $5995: $00
	ldh  a, [$80]                                    ; $5996: $f0 $80
	jr   nc, jr_02e_599b                             ; $5998: $30 $01

	pop  af                                          ; $599a: $f1

jr_02e_599b:
	ld   bc, $2a80                                   ; $599b: $01 $80 $2a
	adc  d                                           ; $599e: $8a
	nop                                              ; $599f: $00
	add  b                                           ; $59a0: $80
	ld   d, b                                        ; $59a1: $50
	adc  h                                           ; $59a2: $8c
	nop                                              ; $59a3: $00
	nop                                              ; $59a4: $00
	ld   l, [hl]                                     ; $59a5: $6e
	add  c                                           ; $59a6: $81
	ld   a, h                                        ; $59a7: $7c
	ld   [bc], a                                     ; $59a8: $02
	db   $10                                         ; $59a9: $10
	ld   a, h                                        ; $59aa: $7c
	db   $10                                         ; $59ab: $10
	add  e                                           ; $59ac: $83
	ld   a, h                                        ; $59ad: $7c
	inc  b                                           ; $59ae: $04
	db   $10                                         ; $59af: $10
	db   $fc                                         ; $59b0: $fc
	cp   $ff                                         ; $59b1: $fe $ff
	rst  JumpTable                                         ; $59b3: $df
	adc  h                                           ; $59b4: $8c
	db   $10                                         ; $59b5: $10
	inc  bc                                          ; $59b6: $03
	ret  nc                                          ; $59b7: $d0

	jp   nz, $383c                                   ; $59b8: $c2 $3c $38

	add  c                                           ; $59bb: $81
	inc  a                                           ; $59bc: $3c
	ld   [bc], a                                     ; $59bd: $02
	ld   [$083c], sp                                 ; $59be: $08 $3c $08
	add  e                                           ; $59c1: $83
	inc  a                                           ; $59c2: $3c
	ld   [bc], a                                     ; $59c3: $02
	ld   a, [bc]                                     ; $59c4: $0a
	rst  $38                                         ; $59c5: $ff
	rst  JumpTable                                         ; $59c6: $df
	adc  l                                           ; $59c7: $8d
	db   $10                                         ; $59c8: $10
	inc  b                                           ; $59c9: $04
	ld   l, d                                        ; $59ca: $6a
	ld   [hl], c                                     ; $59cb: $71
	ld   hl, $2171                                   ; $59cc: $21 $71 $21
	add  c                                           ; $59cf: $81
	ld   [hl], c                                     ; $59d0: $71
	ld   [bc], a                                     ; $59d1: $02
	ld   hl, $2171                                   ; $59d2: $21 $71 $21
	add  e                                           ; $59d5: $83
	ld   [hl], c                                     ; $59d6: $71
	ld   [bc], a                                     ; $59d7: $02
	ld   a, [hl+]                                    ; $59d8: $2a
	ld   bc, $8100                                   ; $59d9: $01 $00 $81
	ld   bc, $0280                                   ; $59dc: $01 $80 $02
	add  b                                           ; $59df: $80
	inc  bc                                          ; $59e0: $03
	ld   bc, $0604                                   ; $59e1: $01 $04 $06
	add  b                                           ; $59e4: $80
	dec  b                                           ; $59e5: $05
	add  b                                           ; $59e6: $80
	ld   b, $01                                      ; $59e7: $06 $01
	add  e                                           ; $59e9: $83
	ld   a, a                                        ; $59ea: $7f
	add  b                                           ; $59eb: $80
	cp   a                                           ; $59ec: $bf
	add  b                                           ; $59ed: $80
	ld   a, a                                        ; $59ee: $7f
	add  b                                           ; $59ef: $80
	cp   a                                           ; $59f0: $bf
	add  b                                           ; $59f1: $80
	ld   a, a                                        ; $59f2: $7f
	add  b                                           ; $59f3: $80
	cp   a                                           ; $59f4: $bf
	add  b                                           ; $59f5: $80
	ld   a, a                                        ; $59f6: $7f
	add  d                                           ; $59f7: $82
	cp   a                                           ; $59f8: $bf
	inc  b                                           ; $59f9: $04
	or   e                                           ; $59fa: $b3
	cp   e                                           ; $59fb: $bb
	or   e                                           ; $59fc: $b3
	cp   e                                           ; $59fd: $bb
	or   e                                           ; $59fe: $b3
	add  c                                           ; $59ff: $81
	cp   e                                           ; $5a00: $bb
	inc  bc                                          ; $5a01: $03
	or   e                                           ; $5a02: $b3
	cp   e                                           ; $5a03: $bb
	or   e                                           ; $5a04: $b3
	cp   e                                           ; $5a05: $bb
	add  b                                           ; $5a06: $80
	cp   b                                           ; $5a07: $b8
	nop                                              ; $5a08: $00

jr_02e_5a09:
	and  $81                                         ; $5a09: $e6 $81
	rst  $28                                         ; $5a0b: $ef
	ld   [bc], a                                     ; $5a0c: $02
	xor  $ef                                         ; $5a0d: $ee $ef
	xor  $81                                         ; $5a0f: $ee $81
	rst  $28                                         ; $5a11: $ef
	ld   [bc], a                                     ; $5a12: $02
	xor  $ef                                         ; $5a13: $ee $ef
	xor  $81                                         ; $5a15: $ee $81
	rst  $28                                         ; $5a17: $ef
	nop                                              ; $5a18: $00
	cp   h                                           ; $5a19: $bc
	adc  e                                           ; $5a1a: $8b
	cp   l                                           ; $5a1b: $bd
	add  b                                           ; $5a1c: $80
	cp   h                                           ; $5a1d: $bc
	inc  b                                           ; $5a1e: $04
	rst  $10                                         ; $5a1f: $d7
	or   $d6                                         ; $5a20: $f6 $d6
	or   $d6                                         ; $5a22: $f6 $d6
	add  c                                           ; $5a24: $81
	or   $03                                         ; $5a25: $f6 $03
	sub  $f6                                         ; $5a27: $d6 $f6
	sub  $f6                                         ; $5a29: $d6 $f6
	add  b                                           ; $5a2b: $80
	xor  $04                                         ; $5a2c: $ee $04
	jr   nz, @+$03                                   ; $5a2e: $20 $01

	cp   $28                                         ; $5a30: $fe $28
	add  hl, hl                                      ; $5a32: $29
	adc  d                                           ; $5a33: $8a
	jr   z, jr_02e_5a40                              ; $5a34: $28 $0a

	xor  b                                           ; $5a36: $a8
	jr   c, jr_02e_5aac                              ; $5a37: $38 $73

	cp   l                                           ; $5a39: $bd
	dec  hl                                          ; $5a3a: $2b
	ld   l, e                                        ; $5a3b: $6b
	ld   bc, $9404                                   ; $5a3c: $01 $04 $94
	adc  b                                           ; $5a3f: $88

jr_02e_5a40:
	sbc  b                                           ; $5a40: $98
	add  d                                           ; $5a41: $82
	add  b                                           ; $5a42: $80
	add  b                                           ; $5a43: $80
	sub  d                                           ; $5a44: $92
	ld   bc, $b4cb                                   ; $5a45: $01 $cb $b4
	add  b                                           ; $5a48: $80
	ld   [hl], h                                     ; $5a49: $74
	inc  bc                                          ; $5a4a: $03
	ret  nz                                          ; $5a4b: $c0

	cp   $2b                                         ; $5a4c: $fe $2b
	ld   [hl], l                                     ; $5a4e: $75
	add  b                                           ; $5a4f: $80
	ei                                               ; $5a50: $fb
	nop                                              ; $5a51: $00
	dec  bc                                          ; $5a52: $0b
	add  c                                           ; $5a53: $81
	ld   a, e                                        ; $5a54: $7b
	ld   [bc], a                                     ; $5a55: $02
	rrca                                             ; $5a56: $0f
	ccf                                              ; $5a57: $3f
	ret  nz                                          ; $5a58: $c0

	add  e                                           ; $5a59: $83
	nop                                              ; $5a5a: $00
	add  d                                           ; $5a5b: $82
	add  b                                           ; $5a5c: $80
	add  d                                           ; $5a5d: $82
	nop                                              ; $5a5e: $00
	ld   [bc], a                                     ; $5a5f: $02
	add  b                                           ; $5a60: $80
	rst  $38                                         ; $5a61: $ff
	ld   a, h                                        ; $5a62: $7c
	add  b                                           ; $5a63: $80
	nop                                              ; $5a64: $00
	ld   bc, $0002                                   ; $5a65: $01 $02 $00
	add  c                                           ; $5a68: $81
	ld   [bc], a                                     ; $5a69: $02
	inc  bc                                          ; $5a6a: $03
	inc  b                                           ; $5a6b: $04
	nop                                              ; $5a6c: $00
	dec  bc                                          ; $5a6d: $0b
	inc  bc                                          ; $5a6e: $03
	add  b                                           ; $5a6f: $80
	ld   [bc], a                                     ; $5a70: $02
	ld   bc, $e717                                   ; $5a71: $01 $17 $e7
	add  l                                           ; $5a74: $85
	rst  $38                                         ; $5a75: $ff
	add  c                                           ; $5a76: $81
	nop                                              ; $5a77: $00
	nop                                              ; $5a78: $00
	ld   l, [hl]                                     ; $5a79: $6e
	add  e                                           ; $5a7a: $83
	ld   a, h                                        ; $5a7b: $7c
	nop                                              ; $5a7c: $00
	ld   [hl-], a                                    ; $5a7d: $32
	add  h                                           ; $5a7e: $84
	ret  nc                                          ; $5a7f: $d0

	add  a                                           ; $5a80: $87
	stop                                             ; $5a81: $10 $00
	jr   nc, jr_02e_5a09                             ; $5a83: $30 $84

	rst  $38                                         ; $5a85: $ff
	add  c                                           ; $5a86: $81
	nop                                              ; $5a87: $00
	nop                                              ; $5a88: $00
	ld   [hl], $81                                   ; $5a89: $36 $81
	inc  a                                           ; $5a8b: $3c
	ld   [bc], a                                     ; $5a8c: $02
	ld   [$1e3c], sp                                 ; $5a8d: $08 $3c $1e
	add  d                                           ; $5a90: $82
	pop  de                                          ; $5a91: $d1
	add  b                                           ; $5a92: $80
	ret  nc                                          ; $5a93: $d0

	add  a                                           ; $5a94: $87
	stop                                             ; $5a95: $10 $00
	ld   [hl-], a                                    ; $5a97: $32
	add  d                                           ; $5a98: $82
	db   $fd                                         ; $5a99: $fd
	add  c                                           ; $5a9a: $81
	ld   bc, $5900                                   ; $5a9b: $01 $00 $59
	add  c                                           ; $5a9e: $81
	ld   [hl], c                                     ; $5a9f: $71
	inc  b                                           ; $5aa0: $04
	ld   hl, $2171                                   ; $5aa1: $21 $71 $21
	ld   [hl], c                                     ; $5aa4: $71
	inc  l                                           ; $5aa5: $2c
	add  c                                           ; $5aa6: $81
	jr   c, jr_02e_5ab5                              ; $5aa7: $38 $0c

	dec  a                                           ; $5aa9: $3d
	dec  b                                           ; $5aaa: $05
	ld   [de], a                                     ; $5aab: $12

jr_02e_5aac:
	ld   a, [de]                                     ; $5aac: $1a
	dec  b                                           ; $5aad: $05
	dec  e                                           ; $5aae: $1d
	ld   [bc], a                                     ; $5aaf: $02
	ld   a, [de]                                     ; $5ab0: $1a
	dec  h                                           ; $5ab1: $25
	dec  [hl]                                        ; $5ab2: $35
	ld   a, [hl+]                                    ; $5ab3: $2a
	ld   a, [hl-]                                    ; $5ab4: $3a

jr_02e_5ab5:
	pop  af                                          ; $5ab5: $f1
	add  c                                           ; $5ab6: $81
	ld   bc, $7f80                                   ; $5ab7: $01 $80 $7f
	add  b                                           ; $5aba: $80
	cp   a                                           ; $5abb: $bf
	add  b                                           ; $5abc: $80
	ld   a, a                                        ; $5abd: $7f
	add  b                                           ; $5abe: $80
	cp   a                                           ; $5abf: $bf
	add  b                                           ; $5ac0: $80
	ld   a, a                                        ; $5ac1: $7f
	add  b                                           ; $5ac2: $80
	cp   a                                           ; $5ac3: $bf
	add  d                                           ; $5ac4: $82
	add  b                                           ; $5ac5: $80
	add  h                                           ; $5ac6: $84
	cp   a                                           ; $5ac7: $bf
	nop                                              ; $5ac8: $00
	or   e                                           ; $5ac9: $b3
	add  c                                           ; $5aca: $81
	cp   e                                           ; $5acb: $bb
	ld   bc, $bbb3                                   ; $5acc: $01 $b3 $bb
	add  d                                           ; $5acf: $82
	ldh  [$82], a                                    ; $5ad0: $e0 $82
	rst  $28                                         ; $5ad2: $ef
	nop                                              ; $5ad3: $00
	xor  $83                                         ; $5ad4: $ee $83
	rst  $28                                         ; $5ad6: $ef
	ld   bc, $efee                                   ; $5ad7: $01 $ee $ef
	add  b                                           ; $5ada: $80
	inc  e                                           ; $5adb: $1c
	add  b                                           ; $5adc: $80
	dec  e                                           ; $5add: $1d
	add  d                                           ; $5ade: $82
	db   $fd                                         ; $5adf: $fd
	add  [hl]                                        ; $5ae0: $86
	cp   l                                           ; $5ae1: $bd
	add  b                                           ; $5ae2: $80
	ld   bc, $ff00                                   ; $5ae3: $01 $00 $ff
	add  c                                           ; $5ae6: $81
	cp   $00                                         ; $5ae7: $fe $00
	sub  $83                                         ; $5ae9: $d6 $83
	or   $04                                         ; $5aeb: $f6 $04
	sub  $f6                                         ; $5aed: $d6 $f6
	sub  $f6                                         ; $5aef: $d6 $f6
	sbc  $80                                         ; $5af1: $de $80
	ei                                               ; $5af3: $fb
	add  b                                           ; $5af4: $80
	dec  de                                          ; $5af5: $1b
	add  d                                           ; $5af6: $82
	dec  bc                                          ; $5af7: $0b
	add  l                                           ; $5af8: $85
	dec  hl                                          ; $5af9: $2b
	ld   bc, $e430                                   ; $5afa: $01 $30 $e4
	add  d                                           ; $5afd: $82
	ldh  a, [$80]                                    ; $5afe: $f0 $80
	db   $e4                                         ; $5b00: $e4
	add  d                                           ; $5b01: $82
	add  h                                           ; $5b02: $84
	add  b                                           ; $5b03: $80
	add  c                                           ; $5b04: $81
	add  b                                           ; $5b05: $80
	ret  nz                                          ; $5b06: $c0

	inc  bc                                          ; $5b07: $03
	ld   b, b                                        ; $5b08: $40
	ld   a, a                                        ; $5b09: $7f
	call $80fd                                       ; $5b0a: $cd $fd $80
	ld   a, [hl-]                                    ; $5b0d: $3a
	rlca                                             ; $5b0e: $07
	inc  bc                                          ; $5b0f: $03
	rrca                                             ; $5b10: $0f
	ld   e, e                                        ; $5b11: $5b
	ld   a, a                                        ; $5b12: $7f
	ld   e, d                                        ; $5b13: $5a
	ld   a, a                                        ; $5b14: $7f
	dec  a                                           ; $5b15: $3d
	ccf                                              ; $5b16: $3f
	add  b                                           ; $5b17: $80
	pop  hl                                          ; $5b18: $e1
	dec  d                                           ; $5b19: $15
	ccf                                              ; $5b1a: $3f
	cp   a                                           ; $5b1b: $bf
	rst  $38                                         ; $5b1c: $ff
	ld   a, a                                        ; $5b1d: $7f
	rst  $38                                         ; $5b1e: $ff
	ld   a, a                                        ; $5b1f: $7f
	cp   a                                           ; $5b20: $bf
	rst  $38                                         ; $5b21: $ff
	rst  JumpTable                                         ; $5b22: $df
	rst  $38                                         ; $5b23: $ff
	ld   e, a                                        ; $5b24: $5f
	rst  $38                                         ; $5b25: $ff
	adc  a                                           ; $5b26: $8f
	rst  $38                                         ; $5b27: $ff
	rst  $28                                         ; $5b28: $ef
	rst  $38                                         ; $5b29: $ff
	pop  de                                          ; $5b2a: $d1
	ld   sp, hl                                      ; $5b2b: $f9
	push hl                                          ; $5b2c: $e5
	db   $fd                                         ; $5b2d: $fd
	db   $ec                                         ; $5b2e: $ec
	db   $fc                                         ; $5b2f: $fc
	add  b                                           ; $5b30: $80
	ld   hl, sp-$80                                  ; $5b31: $f8 $80
	ldh  [$80], a                                    ; $5b33: $e0 $80
	ldh  [c], a                                      ; $5b35: $e2
	add  b                                           ; $5b36: $80
	ldh  [rDIV], a                                   ; $5b37: $e0 $04
	ret  nz                                          ; $5b39: $c0

	ldh  [$dd], a                                    ; $5b3a: $e0 $dd
	ld   a, h                                        ; $5b3c: $7c
	db   $10                                         ; $5b3d: $10
	add  a                                           ; $5b3e: $87
	ld   a, h                                        ; $5b3f: $7c
	inc  b                                           ; $5b40: $04
	db   $10                                         ; $5b41: $10
	ld   a, h                                        ; $5b42: $7c
	db   $10                                         ; $5b43: $10
	ld   a, h                                        ; $5b44: $7c
	ld   [hl-], a                                    ; $5b45: $32
	adc  l                                           ; $5b46: $8d
	stop                                             ; $5b47: $10 $00
	ld   b, $85                                      ; $5b49: $06 $85
	inc  a                                           ; $5b4b: $3c
	ld   [bc], a                                     ; $5b4c: $02
	ld   [$083c], sp                                 ; $5b4d: $08 $3c $08
	add  e                                           ; $5b50: $83
	inc  a                                           ; $5b51: $3c
	nop                                              ; $5b52: $00
	ld   a, [hl+]                                    ; $5b53: $2a
	adc  c                                           ; $5b54: $89
	db   $10                                         ; $5b55: $10
	add  b                                           ; $5b56: $80
	inc  de                                          ; $5b57: $13
	ld   [bc], a                                     ; $5b58: $02
	ld   c, a                                        ; $5b59: $4f
	ld   a, a                                        ; $5b5a: $7f
	ld   e, d                                        ; $5b5b: $5a
	add  c                                           ; $5b5c: $81
	ld   [hl], c                                     ; $5b5d: $71
	ld   [bc], a                                     ; $5b5e: $02
	ld   hl, $2171                                   ; $5b5f: $21 $71 $21
	add  c                                           ; $5b62: $81
	ld   [hl], c                                     ; $5b63: $71
	rla                                              ; $5b64: $17
	ld   [hl], l                                     ; $5b65: $75
	ld   a, [hl]                                     ; $5b66: $7e
	xor  $cf                                         ; $5b67: $ee $cf
	jp   c, $0eff                                    ; $5b69: $da $ff $0e

	dec  d                                           ; $5b6c: $15
	ld   a, [bc]                                     ; $5b6d: $0a
	ld   a, [hl+]                                    ; $5b6e: $2a
	ld   [hl], l                                     ; $5b6f: $75
	ld   d, l                                        ; $5b70: $55
	ld   l, a                                        ; $5b71: $6f
	cpl                                              ; $5b72: $2f

jr_02e_5b73:
	ld   a, [hl]                                     ; $5b73: $7e
	cp   $3f                                         ; $5b74: $fe $3f
	rst  $38                                         ; $5b76: $ff
	rst  JumpTable                                         ; $5b77: $df
	rst  $38                                         ; $5b78: $ff
	jr   c, jr_02e_5b73                              ; $5b79: $38 $f8

	ld   e, a                                        ; $5b7b: $5f
	ld   a, a                                        ; $5b7c: $7f
	add  b                                           ; $5b7d: $80
	cp   a                                           ; $5b7e: $bf
	add  b                                           ; $5b7f: $80
	ccf                                              ; $5b80: $3f
	dec  b                                           ; $5b81: $05
	add  [hl]                                        ; $5b82: $86
	sbc  a                                           ; $5b83: $9f
	rlca                                             ; $5b84: $07
	rra                                              ; $5b85: $1f
	ld   c, $0f                                      ; $5b86: $0e $0f
	add  b                                           ; $5b88: $80
	ld   c, $80                                      ; $5b89: $0e $80
	nop                                              ; $5b8b: $00
	dec  bc                                          ; $5b8c: $0b
	or   e                                           ; $5b8d: $b3
	cp   e                                           ; $5b8e: $bb
	or   e                                           ; $5b8f: $b3
	cp   e                                           ; $5b90: $bb
	or   e                                           ; $5b91: $b3
	cp   e                                           ; $5b92: $bb
	jr   @+$01                                       ; $5b93: $18 $ff

	rrca                                             ; $5b95: $0f
	rst  $38                                         ; $5b96: $ff
	db   $eb                                         ; $5b97: $eb
	db   $f4                                         ; $5b98: $f4
	add  b                                           ; $5b99: $80
	ld   e, e                                        ; $5b9a: $5b
	add  b                                           ; $5b9b: $80
	inc  b                                           ; $5b9c: $04
	nop                                              ; $5b9d: $00
	xor  $81                                         ; $5b9e: $ee $81
	rst  $28                                         ; $5ba0: $ef
	add  hl, bc                                      ; $5ba1: $09
	xor  $ef                                         ; $5ba2: $ee $ef
	jp   nz, $d9ff                                   ; $5ba4: $c2 $ff $d9

	rst  $38                                         ; $5ba7: $ff
	call nz, $dfff                                   ; $5ba8: $c4 $ff $df
	rst  $38                                         ; $5bab: $ff
	add  b                                           ; $5bac: $80
	ld   [bc], a                                     ; $5bad: $02
	add  h                                           ; $5bae: $84
	cp   l                                           ; $5baf: $bd
	rlca                                             ; $5bb0: $07
	dec  c                                           ; $5bb1: $0d
	adc  a                                           ; $5bb2: $8f
	cp   l                                           ; $5bb3: $bd
	rst  $38                                         ; $5bb4: $ff
	ld   b, a                                        ; $5bb5: $47
	rst  $38                                         ; $5bb6: $ff
	sbc  d                                           ; $5bb7: $9a
	ldh  [c], a                                      ; $5bb8: $e2
	add  b                                           ; $5bb9: $80
	nop                                              ; $5bba: $00
	dec  c                                           ; $5bbb: $0d
	rst  $10                                         ; $5bbc: $d7
	or   $d6                                         ; $5bbd: $f6 $d6
	or   $d6                                         ; $5bbf: $f6 $d6
	or   $2c                                         ; $5bc1: $f6 $2c
	ei                                               ; $5bc3: $fb
	ld   d, $ff                                      ; $5bc4: $16 $ff
	ret  nz                                          ; $5bc6: $c0

	rst  $38                                         ; $5bc7: $ff
	ld   b, d                                        ; $5bc8: $42
	ld   h, d                                        ; $5bc9: $62
	add  b                                           ; $5bca: $80
	ld   de, $ff00                                   ; $5bcb: $11 $00 $ff
	add  b                                           ; $5bce: $80
	dec  hl                                          ; $5bcf: $2b
	ld   a, [bc]                                     ; $5bd0: $0a
	cpl                                              ; $5bd1: $2f
	dec  h                                           ; $5bd2: $25
	ld   a, $cf                                      ; $5bd3: $3e $cf
	ei                                               ; $5bd5: $fb
	db   $ec                                         ; $5bd6: $ec
	rst  $28                                         ; $5bd7: $ef
	ld   a, c                                        ; $5bd8: $79
	db   $fd                                         ; $5bd9: $fd
	rrca                                             ; $5bda: $0f
	ld   [hl], a                                     ; $5bdb: $77
	add  b                                           ; $5bdc: $80
	cpl                                              ; $5bdd: $2f
	add  b                                           ; $5bde: $80
	add  b                                           ; $5bdf: $80
	add  b                                           ; $5be0: $80
	pop  hl                                          ; $5be1: $e1
	dec  b                                           ; $5be2: $05
	ld   b, h                                        ; $5be3: $44
	rst  $30                                         ; $5be4: $f7
	inc  c                                           ; $5be5: $0c
	rst  $38                                         ; $5be6: $ff
	ldh  [hScriptOpcodeParams], a                                    ; $5be7: $e0 $a0
	add  b                                           ; $5be9: $80
	ldh  a, [$80]                                    ; $5bea: $f0 $80
	ldh  [$03], a                                    ; $5bec: $e0 $03
	ld   [hl-], a                                    ; $5bee: $32
	ldh  a, [c]                                      ; $5bef: $f2
	jp   nz, $8002                                   ; $5bf0: $c2 $02 $80

	db   $10                                         ; $5bf3: $10
	add  b                                           ; $5bf4: $80
	nop                                              ; $5bf5: $00
	ld   [bc], a                                     ; $5bf6: $02
	ld   l, l                                        ; $5bf7: $6d
	ld   l, a                                        ; $5bf8: $6f
	ld   b, d                                        ; $5bf9: $42
	add  c                                           ; $5bfa: $81
	ld   h, b                                        ; $5bfb: $60
	ld   bc, $0020                                   ; $5bfc: $01 $20 $00
	add  b                                           ; $5bff: $80
	dec  b                                           ; $5c00: $05
	nop                                              ; $5c01: $00
	ccf                                              ; $5c02: $3f
	add  c                                           ; $5c03: $81
	ld   a, a                                        ; $5c04: $7f
	inc  b                                           ; $5c05: $04
	cp   d                                           ; $5c06: $ba
	rst  $38                                         ; $5c07: $ff
	inc  l                                           ; $5c08: $2c
	add  hl, sp                                      ; $5c09: $39
	db   $10                                         ; $5c0a: $10
	add  c                                           ; $5c0b: $81
	nop                                              ; $5c0c: $00
	add  d                                           ; $5c0d: $82
	rst  $38                                         ; $5c0e: $ff
	add  b                                           ; $5c0f: $80
	ret  nz                                          ; $5c10: $c0

	add  b                                           ; $5c11: $80
	ldh  a, [$80]                                    ; $5c12: $f0 $80
	ld   hl, sp+$02                                  ; $5c14: $f8 $02
	halt                                             ; $5c16: $76
	or   $80                                         ; $5c17: $f6 $80
	add  c                                           ; $5c19: $81
	nop                                              ; $5c1a: $00
	add  b                                           ; $5c1b: $80
	add  b                                           ; $5c1c: $80
	add  b                                           ; $5c1d: $80
	ldh  [$03], a                                    ; $5c1e: $e0 $03
	sub  c                                           ; $5c20: $91
	ld   a, h                                        ; $5c21: $7c
	db   $ed                                         ; $5c22: $ed
	rst  $38                                         ; $5c23: $ff
	add  b                                           ; $5c24: $80
	ld   b, a                                        ; $5c25: $47
	add  b                                           ; $5c26: $80
	sbc  d                                           ; $5c27: $9a
	add  b                                           ; $5c28: $80
	rst  $38                                         ; $5c29: $ff
	inc  bc                                          ; $5c2a: $03
	ld   e, e                                        ; $5c2b: $5b
	rst  $38                                         ; $5c2c: $ff
	and  h                                           ; $5c2d: $a4
	rst  $38                                         ; $5c2e: $ff
	add  b                                           ; $5c2f: $80
	add  sp, $03                                     ; $5c30: $e8 $03
	ret  nc                                          ; $5c32: $d0

	rra                                              ; $5c33: $1f
	set  7, e                                        ; $5c34: $cb $fb
	add  b                                           ; $5c36: $80
	push af                                          ; $5c37: $f5
	dec  b                                           ; $5c38: $05
	cp   $ff                                         ; $5c39: $fe $ff
	pop  de                                          ; $5c3b: $d1
	rst  $38                                         ; $5c3c: $ff
	ld   l, $fe                                      ; $5c3d: $2e $fe
	add  b                                           ; $5c3f: $80
	and  e                                           ; $5c40: $a3
	inc  bc                                          ; $5c41: $03
	ld   [hl], b                                     ; $5c42: $70
	ld   a, a                                        ; $5c43: $7f
	inc  bc                                          ; $5c44: $03
	di                                               ; $5c45: $f3
	add  b                                           ; $5c46: $80
	cp   $11                                         ; $5c47: $fe $11
	ei                                               ; $5c49: $fb
	rst  $38                                         ; $5c4a: $ff
	add  h                                           ; $5c4b: $84
	rst  $38                                         ; $5c4c: $ff
	ld   a, b                                        ; $5c4d: $78
	ld   hl, sp+$5c                                  ; $5c4e: $f8 $5c
	ld   e, a                                        ; $5c50: $5f
	add  e                                           ; $5c51: $83
	rst  $38                                         ; $5c52: $ff
	ld   a, a                                        ; $5c53: $7f
	rst  $38                                         ; $5c54: $ff
	ldh  a, [c]                                      ; $5c55: $f2
	di                                               ; $5c56: $f3
	pop  de                                          ; $5c57: $d1
	rst  $38                                         ; $5c58: $ff
	ld   a, [hl+]                                    ; $5c59: $2a
	ld   a, [$c380]                                  ; $5c5a: $fa $80 $c3
	ld   [bc], a                                     ; $5c5d: $02
	ldh  [rIE], a                                    ; $5c5e: $e0 $ff
	rra                                              ; $5c60: $1f
	add  e                                           ; $5c61: $83
	rst  $38                                         ; $5c62: $ff
	ld   bc, $ff00                                   ; $5c63: $01 $00 $ff
	add  b                                           ; $5c66: $80
	pop  hl                                          ; $5c67: $e1
	ld   [bc], a                                     ; $5c68: $02
	jr   c, jr_02e_5caa                              ; $5c69: $38 $3f

	rlca                                             ; $5c6b: $07
	add  a                                           ; $5c6c: $87
	rst  $38                                         ; $5c6d: $ff
	inc  b                                           ; $5c6e: $04
	ld   a, b                                        ; $5c6f: $78
	add  a                                           ; $5c70: $87
	pop  bc                                          ; $5c71: $c1
	rst  $38                                         ; $5c72: $ff
	ld   a, $89                                      ; $5c73: $3e $89
	rst  $38                                         ; $5c75: $ff
	nop                                              ; $5c76: $00
	nop                                              ; $5c77: $00
	add  c                                           ; $5c78: $81
	rst  $38                                         ; $5c79: $ff
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	adc  c                                           ; $5c7c: $89
	rst  $38                                         ; $5c7d: $ff
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	add  c                                           ; $5c80: $81
	rst  $38                                         ; $5c81: $ff
	ld   [bc], a                                     ; $5c82: $02
	ccf                                              ; $5c83: $3f
	rst  $38                                         ; $5c84: $ff
	ret  nz                                          ; $5c85: $c0

	add  a                                           ; $5c86: $87
	rst  $38                                         ; $5c87: $ff
	nop                                              ; $5c88: $00
	nop                                              ; $5c89: $00
	add  e                                           ; $5c8a: $83
	rst  $38                                         ; $5c8b: $ff
	nop                                              ; $5c8c: $00
	nop                                              ; $5c8d: $00
	add  a                                           ; $5c8e: $87
	rst  $38                                         ; $5c8f: $ff
	nop                                              ; $5c90: $00
	nop                                              ; $5c91: $00
	add  e                                           ; $5c92: $83
	rst  $38                                         ; $5c93: $ff
	ld   [bc], a                                     ; $5c94: $02
	rrca                                             ; $5c95: $0f
	rst  $38                                         ; $5c96: $ff
	ldh  a, [$85]                                    ; $5c97: $f0 $85
	rst  $38                                         ; $5c99: $ff
	ld   bc, $fe01                                   ; $5c9a: $01 $01 $fe
	add  h                                           ; $5c9d: $84
	rst  $38                                         ; $5c9e: $ff
	nop                                              ; $5c9f: $00
	nop                                              ; $5ca0: $00
	add  l                                           ; $5ca1: $85
	rst  $38                                         ; $5ca2: $ff
	ld   [$ff03], sp                                 ; $5ca3: $08 $03 $ff
	di                                               ; $5ca6: $f3
	rst  $38                                         ; $5ca7: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ca8: $cf
	rst  $38                                         ; $5ca9: $ff

jr_02e_5caa:
	cp   a                                           ; $5caa: $bf
	rst  $38                                         ; $5cab: $ff
	ld   a, a                                        ; $5cac: $7f
	add  l                                           ; $5cad: $85
	rst  $38                                         ; $5cae: $ff
	inc  b                                           ; $5caf: $04
	ret  nz                                          ; $5cb0: $c0

	rst  $38                                         ; $5cb1: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5cb2: $cf
	rst  $38                                         ; $5cb3: $ff
	ldh  a, [$89]                                    ; $5cb4: $f0 $89
	rst  $38                                         ; $5cb6: $ff
	inc  b                                           ; $5cb7: $04
	nop                                              ; $5cb8: $00
	rst  $38                                         ; $5cb9: $ff
	cp   [hl]                                        ; $5cba: $be
	rst  $38                                         ; $5cbb: $ff
	ld   b, c                                        ; $5cbc: $41
	adc  c                                           ; $5cbd: $89
	rst  $38                                         ; $5cbe: $ff
	ld   [bc], a                                     ; $5cbf: $02
	rra                                              ; $5cc0: $1f
	rst  $38                                         ; $5cc1: $ff
	rra                                              ; $5cc2: $1f
	adc  e                                           ; $5cc3: $8b
	rst  $38                                         ; $5cc4: $ff
	inc  b                                           ; $5cc5: $04
	nop                                              ; $5cc6: $00
	rst  $38                                         ; $5cc7: $ff
	rrca                                             ; $5cc8: $0f
	rst  $38                                         ; $5cc9: $ff
	ldh  a, [$89]                                    ; $5cca: $f0 $89
	rst  $38                                         ; $5ccc: $ff
	inc  b                                           ; $5ccd: $04
	ldh  [$1f], a                                    ; $5cce: $e0 $1f
	ldh  [rIE], a                                    ; $5cd0: $e0 $ff
	rra                                              ; $5cd2: $1f
	adc  c                                           ; $5cd3: $89
	rst  $38                                         ; $5cd4: $ff
	ld   [bc], a                                     ; $5cd5: $02
	ld   a, a                                        ; $5cd6: $7f
	rst  $38                                         ; $5cd7: $ff
	ld   a, a                                        ; $5cd8: $7f
	sbc  c                                           ; $5cd9: $99
	rst  $38                                         ; $5cda: $ff
	add  b                                           ; $5cdb: $80
	ret  nz                                          ; $5cdc: $c0

	adc  d                                           ; $5cdd: $8a
	rst  $38                                         ; $5cde: $ff
	add  b                                           ; $5cdf: $80
	ldh  a, [$80]                                    ; $5ce0: $f0 $80
	nop                                              ; $5ce2: $00
	adc  d                                           ; $5ce3: $8a
	rst  $38                                         ; $5ce4: $ff
	add  b                                           ; $5ce5: $80
	inc  a                                           ; $5ce6: $3c
	add  b                                           ; $5ce7: $80
	nop                                              ; $5ce8: $00
	adc  b                                           ; $5ce9: $88
	rst  $38                                         ; $5cea: $ff
	add  b                                           ; $5ceb: $80
	ldh  a, [$82]                                    ; $5cec: $f0 $82
	nop                                              ; $5cee: $00
	add  [hl]                                        ; $5cef: $86
	rst  $38                                         ; $5cf0: $ff
	add  b                                           ; $5cf1: $80
	ret  z                                           ; $5cf2: $c8

	add  b                                           ; $5cf3: $80
	nop                                              ; $5cf4: $00
	add  b                                           ; $5cf5: $80
	ld   bc, $0080                                   ; $5cf6: $01 $80 $00
	add  [hl]                                        ; $5cf9: $86
	rst  $38                                         ; $5cfa: $ff
	add  b                                           ; $5cfb: $80
	ld   a, a                                        ; $5cfc: $7f
	add  b                                           ; $5cfd: $80
	ccf                                              ; $5cfe: $3f
	add  b                                           ; $5cff: $80
	rst  $38                                         ; $5d00: $ff
	add  b                                           ; $5d01: $80
	rlca                                             ; $5d02: $07
	sbc  h                                           ; $5d03: $9c
	rst  $38                                         ; $5d04: $ff
	add  b                                           ; $5d05: $80
	db   $fc                                         ; $5d06: $fc
	adc  d                                           ; $5d07: $8a
	rst  $38                                         ; $5d08: $ff
	add  b                                           ; $5d09: $80
	db   $e3                                         ; $5d0a: $e3
	add  b                                           ; $5d0b: $80
	nop                                              ; $5d0c: $00
	add  [hl]                                        ; $5d0d: $86
	rst  $38                                         ; $5d0e: $ff
	add  b                                           ; $5d0f: $80
	pop  bc                                          ; $5d10: $c1
	add  b                                           ; $5d11: $80
	ldh  a, [$80]                                    ; $5d12: $f0 $80
	db   $fc                                         ; $5d14: $fc
	add  b                                           ; $5d15: $80
	ret  nz                                          ; $5d16: $c0

	adc  b                                           ; $5d17: $88
	rst  $38                                         ; $5d18: $ff
	add  b                                           ; $5d19: $80
	rrca                                             ; $5d1a: $0f
	add  d                                           ; $5d1b: $82
	nop                                              ; $5d1c: $00
	adc  b                                           ; $5d1d: $88
	rst  $38                                         ; $5d1e: $ff
	add  b                                           ; $5d1f: $80
	cp   $80                                         ; $5d20: $fe $80
	rra                                              ; $5d22: $1f
	add  b                                           ; $5d23: $80
	nop                                              ; $5d24: $00
	add  [hl]                                        ; $5d25: $86
	rst  $38                                         ; $5d26: $ff
	add  b                                           ; $5d27: $80
	ld   hl, sp-$80                                  ; $5d28: $f8 $80
	nop                                              ; $5d2a: $00
	add  b                                           ; $5d2b: $80
	add  b                                           ; $5d2c: $80
	add  b                                           ; $5d2d: $80
	nop                                              ; $5d2e: $00
	add  [hl]                                        ; $5d2f: $86
	rst  $38                                         ; $5d30: $ff
	add  b                                           ; $5d31: $80
	rlca                                             ; $5d32: $07
	add  b                                           ; $5d33: $80
	ccf                                              ; $5d34: $3f
	add  b                                           ; $5d35: $80
	rlca                                             ; $5d36: $07
	add  b                                           ; $5d37: $80
	ld   bc, $00a4                                   ; $5d38: $01 $a4 $00
	nop                                              ; $5d3b: $00

jr_02e_5d3c:
	ret  nz                                          ; $5d3c: $c0

	add  l                                           ; $5d3d: $85
	nop                                              ; $5d3e: $00
	nop                                              ; $5d3f: $00
	ret  nz                                          ; $5d40: $c0

	sub  [hl]                                        ; $5d41: $96
	nop                                              ; $5d42: $00
	add  [hl]                                        ; $5d43: $86
	ret  nz                                          ; $5d44: $c0

	sub  l                                           ; $5d45: $95
	nop                                              ; $5d46: $00
	add  [hl]                                        ; $5d47: $86
	ret  nz                                          ; $5d48: $c0

	rst  $38                                         ; $5d49: $ff
	nop                                              ; $5d4a: $00
	rst  $38                                         ; $5d4b: $ff
	nop                                              ; $5d4c: $00
	rst  $38                                         ; $5d4d: $ff
	nop                                              ; $5d4e: $00
	rst  $38                                         ; $5d4f: $ff
	nop                                              ; $5d50: $00
	rst  $38                                         ; $5d51: $ff
	nop                                              ; $5d52: $00
	rst  $38                                         ; $5d53: $ff
	nop                                              ; $5d54: $00
	rst  $38                                         ; $5d55: $ff
	nop                                              ; $5d56: $00
	rst  $38                                         ; $5d57: $ff
	nop                                              ; $5d58: $00
	rst  $38                                         ; $5d59: $ff
	nop                                              ; $5d5a: $00
	rst  $38                                         ; $5d5b: $ff
	nop                                              ; $5d5c: $00
	rst  $38                                         ; $5d5d: $ff
	nop                                              ; $5d5e: $00
	rst  $38                                         ; $5d5f: $ff
	nop                                              ; $5d60: $00
	rst  $38                                         ; $5d61: $ff
	nop                                              ; $5d62: $00
	rst  $38                                         ; $5d63: $ff
	nop                                              ; $5d64: $00
	rst  $38                                         ; $5d65: $ff
	nop                                              ; $5d66: $00
	add  c                                           ; $5d67: $81
	nop                                              ; $5d68: $00
	rlc  c                                           ; $5d69: $cb $01
	inc  b                                           ; $5d6b: $04
	rrca                                             ; $5d6c: $0f
	nop                                              ; $5d6d: $00
	jr   nc, jr_02e_5d74                             ; $5d6e: $30 $04

	push bc                                          ; $5d70: $c5
	add  b                                           ; $5d71: $80
	jr   nc, jr_02e_5d74                             ; $5d72: $30 $00

jr_02e_5d74:
	ldh  a, [$81]                                    ; $5d74: $f0 $81
	db   $f4                                         ; $5d76: $f4
	inc  bc                                          ; $5d77: $03
	ld   a, h                                        ; $5d78: $7c
	adc  c                                           ; $5d79: $89
	rlca                                             ; $5d7a: $07
	inc  bc                                          ; $5d7b: $03
	add  c                                           ; $5d7c: $81
	dec  b                                           ; $5d7d: $05
	ld   b, $11                                      ; $5d7e: $06 $11
	nop                                              ; $5d80: $00
	jr   nz, jr_02e_5d83                             ; $5d81: $20 $00

jr_02e_5d83:
	ld   b, c                                        ; $5d83: $41
	nop                                              ; $5d84: $00
	ld   [bc], a                                     ; $5d85: $02
	add  c                                           ; $5d86: $81
	nop                                              ; $5d87: $00
	inc  c                                           ; $5d88: $0c
	ret  nz                                          ; $5d89: $c0

	ld   a, b                                        ; $5d8a: $78
	dec  sp                                          ; $5d8b: $3b
	nop                                              ; $5d8c: $00
	rlca                                             ; $5d8d: $07
	nop                                              ; $5d8e: $00
	inc  b                                           ; $5d8f: $04
	ld   e, b                                        ; $5d90: $58
	ld   e, d                                        ; $5d91: $5a
	inc  c                                           ; $5d92: $0c
	dec  c                                           ; $5d93: $0d
	ld   b, $66                                      ; $5d94: $06 $66
	add  c                                           ; $5d96: $81
	ld   l, [hl]                                     ; $5d97: $6e
	inc  d                                           ; $5d98: $14
	rrca                                             ; $5d99: $0f
	call nz, Call_02e_5096                           ; $5d9a: $c4 $96 $50
	inc  sp                                          ; $5d9d: $33
	jr   nc, jr_02e_5da6                             ; $5d9e: $30 $06

	nop                                              ; $5da0: $00
	dec  b                                           ; $5da1: $05
	nop                                              ; $5da2: $00
	add  d                                           ; $5da3: $82
	nop                                              ; $5da4: $00
	ld   b, c                                        ; $5da5: $41

jr_02e_5da6:
	nop                                              ; $5da6: $00
	jr   nz, jr_02e_5daf                             ; $5da7: $20 $06

	scf                                              ; $5da9: $37
	inc  e                                           ; $5daa: $1c
	call $ff00                                       ; $5dab: $cd $00 $ff
	adc  a                                           ; $5dae: $8f

jr_02e_5daf:
	nop                                              ; $5daf: $00
	ld   b, $c0                                      ; $5db0: $06 $c0
	nop                                              ; $5db2: $00
	or   b                                           ; $5db3: $b0
	nop                                              ; $5db4: $00
	ld   l, b                                        ; $5db5: $68
	nop                                              ; $5db6: $00
	jr   jr_02e_5d3c                                 ; $5db7: $18 $83

	nop                                              ; $5db9: $00
	ld   a, [de]                                     ; $5dba: $1a
	ld   hl, sp+$00                                  ; $5dbb: $f8 $00
	rst  $38                                         ; $5dbd: $ff
	nop                                              ; $5dbe: $00
	ld   [$1202], sp                                 ; $5dbf: $08 $02 $12
	ld   [$1828], sp                                 ; $5dc2: $08 $28 $18
	ld   a, [de]                                     ; $5dc5: $1a
	ld   [bc], a                                     ; $5dc6: $02
	jp   c, $c81a                                    ; $5dc7: $da $1a $c8

	dec  bc                                          ; $5dca: $0b
	ld   hl, $1a02                                   ; $5dcb: $21 $02 $1a
	ld   [bc], a                                     ; $5dce: $02
	ld   [$1000], sp                                 ; $5dcf: $08 $00 $10
	nop                                              ; $5dd2: $00
	jr   nz, jr_02e_5dd5                             ; $5dd3: $20 $00

jr_02e_5dd5:
	ld   bc, $0081                                   ; $5dd5: $01 $81 $00
	ld   [$3c60], sp                                 ; $5dd8: $08 $60 $3c
	sbc  l                                           ; $5ddb: $9d
	nop                                              ; $5ddc: $00
	inc  bc                                          ; $5ddd: $03
	nop                                              ; $5dde: $00
	ld   [bc], a                                     ; $5ddf: $02
	inc  l                                           ; $5de0: $2c
	xor  l                                           ; $5de1: $ad
	add  b                                           ; $5de2: $80
	ld   b, $01                                      ; $5de3: $06 $01
	inc  bc                                          ; $5de5: $03
	inc  sp                                          ; $5de6: $33
	add  c                                           ; $5de7: $81
	scf                                              ; $5de8: $37
	inc  d                                           ; $5de9: $14
	add  a                                           ; $5dea: $87
	ldh  [c], a                                      ; $5deb: $e2
	res  5, b                                        ; $5dec: $cb $a8
	sbc  c                                           ; $5dee: $99
	sbc  b                                           ; $5def: $98
	add  e                                           ; $5df0: $83
	nop                                              ; $5df1: $00
	ld   [bc], a                                     ; $5df2: $02
	nop                                              ; $5df3: $00
	pop  bc                                          ; $5df4: $c1
	nop                                              ; $5df5: $00
	jr   nz, jr_02e_5df8                             ; $5df6: $20 $00

jr_02e_5df8:
	db   $10                                         ; $5df8: $10
	inc  bc                                          ; $5df9: $03
	dec  de                                          ; $5dfa: $1b
	ld   c, $e6                                      ; $5dfb: $0e $e6
	nop                                              ; $5dfd: $00
	rst  $38                                         ; $5dfe: $ff
	add  e                                           ; $5dff: $83
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	add  b                                           ; $5e02: $80
	add  e                                           ; $5e03: $83
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00
	add  b                                           ; $5e06: $80
	add  c                                           ; $5e07: $81
	nop                                              ; $5e08: $00
	ld   [$0080], sp                                 ; $5e09: $08 $80 $00
	ld   h, b                                        ; $5e0c: $60

jr_02e_5e0d:
	nop                                              ; $5e0d: $00
	ret  c                                           ; $5e0e: $d8

	nop                                              ; $5e0f: $00
	inc  [hl]                                        ; $5e10: $34
	nop                                              ; $5e11: $00
	adc  h                                           ; $5e12: $8c
	add  c                                           ; $5e13: $81
	nop                                              ; $5e14: $00
	inc  e                                           ; $5e15: $1c
	add  b                                           ; $5e16: $80
	nop                                              ; $5e17: $00
	db   $fc                                         ; $5e18: $fc
	nop                                              ; $5e19: $00
	di                                               ; $5e1a: $f3
	nop                                              ; $5e1b: $00
	db   $10                                         ; $5e1c: $10
	inc  b                                           ; $5e1d: $04
	dec  h                                           ; $5e1e: $25
	db   $10                                         ; $5e1f: $10
	ld   d, b                                        ; $5e20: $50
	jr   nc, jr_02e_5e57                             ; $5e21: $30 $34

	inc  b                                           ; $5e23: $04
	ld   bc, $6120                                   ; $5e24: $01 $20 $61
	add  hl, de                                      ; $5e27: $19
	jr   c, jr_02e_5e2a                              ; $5e28: $38 $00

jr_02e_5e2a:
	inc  d                                           ; $5e2a: $14
	inc  b                                           ; $5e2b: $04
	stop                                             ; $5e2c: $10 $00
	jr   nz, jr_02e_5e30                             ; $5e2e: $20 $00

jr_02e_5e30:
	ld   b, c                                        ; $5e30: $41
	nop                                              ; $5e31: $00
	ld   [bc], a                                     ; $5e32: $02
	add  c                                           ; $5e33: $81
	nop                                              ; $5e34: $00
	inc  c                                           ; $5e35: $0c
	ret  nz                                          ; $5e36: $c0

	ld   a, b                                        ; $5e37: $78
	dec  sp                                          ; $5e38: $3b
	nop                                              ; $5e39: $00
	rlca                                             ; $5e3a: $07
	nop                                              ; $5e3b: $00
	inc  b                                           ; $5e3c: $04
	ld   e, b                                        ; $5e3d: $58
	ld   e, d                                        ; $5e3e: $5a
	inc  c                                           ; $5e3f: $0c
	dec  c                                           ; $5e40: $0d
	ld   b, $66                                      ; $5e41: $06 $66
	add  c                                           ; $5e43: $81
	ld   l, [hl]                                     ; $5e44: $6e
	ld   hl, $848f                                   ; $5e45: $21 $8f $84
	sub  [hl]                                        ; $5e48: $96
	sub  b                                           ; $5e49: $90
	inc  sp                                          ; $5e4a: $33
	jr   nc, jr_02e_5e53                             ; $5e4b: $30 $06

	nop                                              ; $5e4d: $00
	dec  b                                           ; $5e4e: $05
	nop                                              ; $5e4f: $00
	add  d                                           ; $5e50: $82
	nop                                              ; $5e51: $00
	ld   b, c                                        ; $5e52: $41

jr_02e_5e53:
	nop                                              ; $5e53: $00
	jr   nz, jr_02e_5e5c                             ; $5e54: $20 $06

	scf                                              ; $5e56: $37

jr_02e_5e57:
	inc  e                                           ; $5e57: $1c
	call $ff00                                       ; $5e58: $cd $00 $ff
	nop                                              ; $5e5b: $00

jr_02e_5e5c:
	rra                                              ; $5e5c: $1f
	nop                                              ; $5e5d: $00
	jr   jr_02e_5e60                                 ; $5e5e: $18 $00

jr_02e_5e60:
	ld   [$1000], sp                                 ; $5e60: $08 $00 $10
	ld   [$0728], sp                                 ; $5e63: $08 $28 $07
	ld   b, a                                        ; $5e66: $47
	nop                                              ; $5e67: $00
	add  b                                           ; $5e68: $80
	ld   bc, $4501                                   ; $5e69: $01 $01 $45
	dec  b                                           ; $5e6c: $05
	add  d                                           ; $5e6d: $82
	dec  c                                           ; $5e6e: $0d
	add  b                                           ; $5e6f: $80
	rrca                                             ; $5e70: $0f
	ld   bc, $0323                                   ; $5e71: $01 $23 $03
	add  b                                           ; $5e74: $80
	dec  c                                           ; $5e75: $0d
	ld   c, $77                                      ; $5e76: $0e $77
	rlca                                             ; $5e78: $07
	ei                                               ; $5e79: $fb
	ld   h, e                                        ; $5e7a: $63
	rst  $30                                         ; $5e7b: $f7
	nop                                              ; $5e7c: $00
	add  b                                           ; $5e7d: $80
	nop                                              ; $5e7e: $00
	jr   c, jr_02e_5e81                              ; $5e7f: $38 $00

jr_02e_5e81:
	ld   b, h                                        ; $5e81: $44
	nop                                              ; $5e82: $00
	ld   [bc], a                                     ; $5e83: $02
	inc  b                                           ; $5e84: $04
	dec  b                                           ; $5e85: $05
	add  b                                           ; $5e86: $80
	jr   c, @-$7d                                    ; $5e87: $38 $81

	nop                                              ; $5e89: $00
	add  d                                           ; $5e8a: $82
	jr   nz, jr_02e_5e0d                             ; $5e8b: $20 $80

	ld   h, b                                        ; $5e8d: $60
	add  b                                           ; $5e8e: $80
	or   $80                                         ; $5e8f: $f6 $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5e91: $cf
	inc  bc                                          ; $5e92: $03
	cp   l                                           ; $5e93: $bd
	cp   h                                           ; $5e94: $bc
	ld   a, [$80f8]                                  ; $5e95: $fa $f8 $80
	ldh  a, [rSC]                                    ; $5e98: $f0 $02
	dec  hl                                          ; $5e9a: $2b
	jr   nz, jr_02e_5ea5                             ; $5e9b: $20 $08

	add  b                                           ; $5e9d: $80
	ld   b, d                                        ; $5e9e: $42
	add  b                                           ; $5e9f: $80
	ld   [hl], b                                     ; $5ea0: $70
	nop                                              ; $5ea1: $00
	ld   a, b                                        ; $5ea2: $78
	add  b                                           ; $5ea3: $80
	ld   a, d                                        ; $5ea4: $7a

jr_02e_5ea5:
	inc  b                                           ; $5ea5: $04
	ld   a, [$7a3a]                                  ; $5ea6: $fa $3a $7a
	ld   [bc], a                                     ; $5ea9: $02
	ld   a, [hl-]                                    ; $5eaa: $3a

jr_02e_5eab:
	add  c                                           ; $5eab: $81
	ld   [bc], a                                     ; $5eac: $02
	inc  d                                           ; $5ead: $14
	ld   [$1000], sp                                 ; $5eae: $08 $00 $10
	nop                                              ; $5eb1: $00
	jr   nz, jr_02e_5eb4                             ; $5eb2: $20 $00

jr_02e_5eb4:
	ld   bc, $4200                                   ; $5eb4: $01 $00 $42
	nop                                              ; $5eb7: $00
	ret  nz                                          ; $5eb8: $c0

	ld   a, b                                        ; $5eb9: $78
	dec  sp                                          ; $5eba: $3b
	nop                                              ; $5ebb: $00
	inc  bc                                          ; $5ebc: $03
	nop                                              ; $5ebd: $00
	ld   [bc], a                                     ; $5ebe: $02
	inc  l                                           ; $5ebf: $2c
	xor  l                                           ; $5ec0: $ad
	ld   b, $1e                                      ; $5ec1: $06 $1e
	add  c                                           ; $5ec3: $81
	dec  de                                          ; $5ec4: $1b
	add  b                                           ; $5ec5: $80
	inc  bc                                          ; $5ec6: $03
	inc  b                                           ; $5ec7: $04
	and  e                                           ; $5ec8: $a3
	xor  [hl]                                        ; $5ec9: $ae
	cp   [hl]                                        ; $5eca: $be
	or   b                                           ; $5ecb: $b0
	add  e                                           ; $5ecc: $83
	add  e                                           ; $5ecd: $83
	nop                                              ; $5ece: $00
	ld   a, [bc]                                     ; $5ecf: $0a
	jp   nz, Boot                                    ; $5ed0: $c2 $00 $01

	nop                                              ; $5ed3: $00
	jr   nz, jr_02e_5ed6                             ; $5ed4: $20 $00

jr_02e_5ed6:
	jr   nc, jr_02e_5ef6                             ; $5ed6: $30 $1e

	adc  $00                                         ; $5ed8: $ce $00
	rst  $38                                         ; $5eda: $ff
	add  c                                           ; $5edb: $81
	nop                                              ; $5edc: $00
	ld   [$0006], sp                                 ; $5edd: $08 $06 $00
	sbc  d                                           ; $5ee0: $9a
	nop                                              ; $5ee1: $00
	ld   l, h                                        ; $5ee2: $6c

jr_02e_5ee3:
	nop                                              ; $5ee3: $00
	jr   nc, jr_02e_5ee6                             ; $5ee4: $30 $00

jr_02e_5ee6:
	ret  nz                                          ; $5ee6: $c0

	adc  a                                           ; $5ee7: $8f
	nop                                              ; $5ee8: $00
	ld   [bc], a                                     ; $5ee9: $02
	cp   $00                                         ; $5eea: $fe $00
	cp   $90                                         ; $5eec: $fe $90
	nop                                              ; $5eee: $00
	inc  b                                           ; $5eef: $04
	ld   [$0818], sp                                 ; $5ef0: $08 $18 $08
	jr   jr_02e_5f74                                 ; $5ef3: $18 $7f

	add  b                                           ; $5ef5: $80

jr_02e_5ef6:
	ld   b, a                                        ; $5ef6: $47
	add  b                                           ; $5ef7: $80
	ld   sp, $0080                                   ; $5ef8: $31 $80 $00
	nop                                              ; $5efb: $00
	ld   a, a                                        ; $5efc: $7f
	adc  a                                           ; $5efd: $8f
	nop                                              ; $5efe: $00
	ld   bc, $1c02                                   ; $5eff: $01 $02 $1c
	add  d                                           ; $5f02: $82
	jr   jr_02e_5f0a                                 ; $5f03: $18 $05

	db   $10                                         ; $5f05: $10
	ld   [hl], b                                     ; $5f06: $70
	ld   d, h                                        ; $5f07: $54
	inc  d                                           ; $5f08: $14
	inc  [hl]                                        ; $5f09: $34

jr_02e_5f0a:
	inc  d                                           ; $5f0a: $14
	add  b                                           ; $5f0b: $80
	jr   jr_02e_5f0e                                 ; $5f0c: $18 $00

jr_02e_5f0e:
	ld   e, $8f                                      ; $5f0e: $1e $8f
	nop                                              ; $5f10: $00
	ld   bc, $0e01                                   ; $5f11: $01 $01 $0e
	add  d                                           ; $5f14: $82
	inc  c                                           ; $5f15: $0c
	ld   a, [bc]                                     ; $5f16: $0a
	ld   a, [bc]                                     ; $5f17: $0a
	ld   [$2aba], a                                  ; $5f18: $ea $ba $2a
	ld   l, d                                        ; $5f1b: $6a
	jr   z, jr_02e_5f4f                              ; $5f1c: $28 $31

	jr   nc, jr_02e_5ee3                             ; $5f1e: $30 $c3

	nop                                              ; $5f20: $00
	rst  $38                                         ; $5f21: $ff
	sub  h                                           ; $5f22: $94
	nop                                              ; $5f23: $00
	inc  b                                           ; $5f24: $04
	ldh  [$b0], a                                    ; $5f25: $e0 $b0
	jr   z, jr_02e_5f95                              ; $5f27: $28 $6c

	jr   z, jr_02e_5eab                              ; $5f29: $28 $80

	jr   nc, @+$04                                   ; $5f2b: $30 $02

	jp   $ff00                                       ; $5f2d: $c3 $00 $ff


	sub  h                                           ; $5f30: $94
	nop                                              ; $5f31: $00
	add  b                                           ; $5f32: $80
	ld   c, $07                                      ; $5f33: $0e $07
	ld   e, $02                                      ; $5f35: $1e $02
	ld   [hl+], a                                    ; $5f37: $22
	ld   b, b                                        ; $5f38: $40
	nop                                              ; $5f39: $00
	ld   bc, $7f00                                   ; $5f3a: $01 $00 $7f
	adc  [hl]                                        ; $5f3d: $8e
	nop                                              ; $5f3e: $00
	add  b                                           ; $5f3f: $80
	add  b                                           ; $5f40: $80
	add  b                                           ; $5f41: $80
	ld   h, $80                                      ; $5f42: $26 $80
	inc  hl                                          ; $5f44: $23
	add  b                                           ; $5f45: $80
	adc  b                                           ; $5f46: $88
	add  b                                           ; $5f47: $80
	ret  nz                                          ; $5f48: $c0

	add  b                                           ; $5f49: $80
	ld   b, l                                        ; $5f4a: $45
	add  b                                           ; $5f4b: $80
	add  hl, bc                                      ; $5f4c: $09
	add  b                                           ; $5f4d: $80
	inc  hl                                          ; $5f4e: $23

jr_02e_5f4f:
	adc  [hl]                                        ; $5f4f: $8e
	nop                                              ; $5f50: $00
	add  b                                           ; $5f51: $80
	ld   hl, $0680                                   ; $5f52: $21 $80 $06
	add  b                                           ; $5f55: $80
	sub  b                                           ; $5f56: $90
	add  b                                           ; $5f57: $80
	ld   hl, $0b80                                   ; $5f58: $21 $80 $0b
	add  b                                           ; $5f5b: $80
	ld   d, b                                        ; $5f5c: $50
	add  b                                           ; $5f5d: $80
	jp   $1b80                                       ; $5f5e: $c3 $80 $1b


	sub  [hl]                                        ; $5f61: $96
	nop                                              ; $5f62: $00
	add  b                                           ; $5f63: $80
	ld   [$3c05], sp                                 ; $5f64: $08 $05 $3c
	ld   [hl+], a                                    ; $5f67: $22
	ld   h, b                                        ; $5f68: $60
	add  c                                           ; $5f69: $81
	nop                                              ; $5f6a: $00
	rst  $38                                         ; $5f6b: $ff
	adc  e                                           ; $5f6c: $8b
	nop                                              ; $5f6d: $00
	ld   [bc], a                                     ; $5f6e: $02
	ld   a, a                                        ; $5f6f: $7f
	nop                                              ; $5f70: $00
	ld   a, a                                        ; $5f71: $7f
	rst  $38                                         ; $5f72: $ff
	nop                                              ; $5f73: $00

jr_02e_5f74:
	rst  $38                                         ; $5f74: $ff
	nop                                              ; $5f75: $00
	rlc  b                                           ; $5f76: $cb $00
	adc  h                                           ; $5f78: $8c
	rst  $38                                         ; $5f79: $ff
	add  d                                           ; $5f7a: $82
	cp   $80                                         ; $5f7b: $fe $80
	rst  $38                                         ; $5f7d: $ff
	add  b                                           ; $5f7e: $80
	cp   $80                                         ; $5f7f: $fe $80
	rst  $38                                         ; $5f81: $ff
	add  b                                           ; $5f82: $80
	db   $fd                                         ; $5f83: $fd
	add  b                                           ; $5f84: $80
	cp   $80                                         ; $5f85: $fe $80
	db   $f4                                         ; $5f87: $f4
	add  b                                           ; $5f88: $80
	and  b                                           ; $5f89: $a0
	add  b                                           ; $5f8a: $80
	sub  b                                           ; $5f8b: $90
	add  b                                           ; $5f8c: $80
	ld   c, d                                        ; $5f8d: $4a
	add  b                                           ; $5f8e: $80
	or   l                                           ; $5f8f: $b5
	add  b                                           ; $5f90: $80
	ld   a, [$5580]                                  ; $5f91: $fa $80 $55
	add  b                                           ; $5f94: $80

jr_02e_5f95:
	and  b                                           ; $5f95: $a0
	add  [hl]                                        ; $5f96: $86
	nop                                              ; $5f97: $00
	add  b                                           ; $5f98: $80
	ld   b, b                                        ; $5f99: $40
	add  b                                           ; $5f9a: $80
	and  b                                           ; $5f9b: $a0
	add  b                                           ; $5f9c: $80
	ld   b, b                                        ; $5f9d: $40
	rst  $38                                         ; $5f9e: $ff
	nop                                              ; $5f9f: $00
	or   e                                           ; $5fa0: $b3
	nop                                              ; $5fa1: $00
	add  b                                           ; $5fa2: $80
	sub  b                                           ; $5fa3: $90
	adc  h                                           ; $5fa4: $8c
	nop                                              ; $5fa5: $00
	add  b                                           ; $5fa6: $80
	db   $fd                                         ; $5fa7: $fd
	adc  b                                           ; $5fa8: $88
	rst  $38                                         ; $5fa9: $ff
	add  b                                           ; $5faa: $80
	push af                                          ; $5fab: $f5
	add  b                                           ; $5fac: $80
	and  b                                           ; $5fad: $a0
	add  d                                           ; $5fae: $82
	nop                                              ; $5faf: $00
	add  b                                           ; $5fb0: $80
	push af                                          ; $5fb1: $f5
	add  b                                           ; $5fb2: $80
	ld   [$fd80], a                                  ; $5fb3: $ea $80 $fd
	add  b                                           ; $5fb6: $80
	xor  d                                           ; $5fb7: $aa
	adc  b                                           ; $5fb8: $88
	nop                                              ; $5fb9: $00
	add  b                                           ; $5fba: $80
	xor  b                                           ; $5fbb: $a8
	add  b                                           ; $5fbc: $80
	ld   d, h                                        ; $5fbd: $54
	add  b                                           ; $5fbe: $80
	and  b                                           ; $5fbf: $a0
	adc  b                                           ; $5fc0: $88
	nop                                              ; $5fc1: $00
	add  b                                           ; $5fc2: $80
	ld   b, b                                        ; $5fc3: $40
	rst  $38                                         ; $5fc4: $ff
	nop                                              ; $5fc5: $00
	add  $00                                         ; $5fc6: $c6 $00
	ld   bc, $50fe                                   ; $5fc8: $01 $fe $50
	add  b                                           ; $5fcb: $80
	ld   d, e                                        ; $5fcc: $53
	ld   bc, $53fb                                   ; $5fcd: $01 $fb $53
	add  c                                           ; $5fd0: $81
	ei                                               ; $5fd1: $fb
	add  b                                           ; $5fd2: $80
	adc  e                                           ; $5fd3: $8b
	add  c                                           ; $5fd4: $81
	cp   e                                           ; $5fd5: $bb
	adc  c                                           ; $5fd6: $89
	xor  e                                           ; $5fd7: $ab
	ld   bc, $ffed                                   ; $5fd8: $01 $ed $ff
	add  c                                           ; $5fdb: $81
	add  c                                           ; $5fdc: $81
	ld   [bc], a                                     ; $5fdd: $02
	cp   a                                           ; $5fde: $bf
	pop  bc                                          ; $5fdf: $c1
	rlca                                             ; $5fe0: $07
	add  b                                           ; $5fe1: $80
	inc  b                                           ; $5fe2: $04
	add  c                                           ; $5fe3: $81
	rlca                                             ; $5fe4: $07
	add  d                                           ; $5fe5: $82
	ld   b, $80                                      ; $5fe6: $06 $80
	nop                                              ; $5fe8: $00
	inc  bc                                          ; $5fe9: $03
	ld   bc, $0200                                   ; $5fea: $01 $00 $02
	ld   a, c                                        ; $5fed: $79
	add  b                                           ; $5fee: $80
	and  a                                           ; $5fef: $a7
	add  hl, bc                                      ; $5ff0: $09
	xor  a                                           ; $5ff1: $af
	or   a                                           ; $5ff2: $b7
	cp   a                                           ; $5ff3: $bf
	and  e                                           ; $5ff4: $a3
	cp   a                                           ; $5ff5: $bf
	pop  bc                                          ; $5ff6: $c1
	rst  $38                                         ; $5ff7: $ff
	adc  c                                           ; $5ff8: $89
	cp   e                                           ; $5ff9: $bb
	dec  sp                                          ; $5ffa: $3b
	add  b                                           ; $5ffb: $80
	ld   a, e                                        ; $5ffc: $7b
	ld   bc, $0dfb                                   ; $5ffd: $01 $fb $0d
	cp   l                                           ; $6000: $bd
	nop                                              ; $6001: $00
	ld   a, [de]                                     ; $6002: $1a
	inc  bc                                          ; $6003: $03
	dec  b                                           ; $6004: $05
	ld   bc, $030b                                   ; $6005: $01 $0b $03
	rla                                              ; $6008: $17
	rlca                                             ; $6009: $07
	cpl                                              ; $600a: $2f
	ld   c, $df                                      ; $600b: $0e $df
	dec  e                                           ; $600d: $1d
	ccf                                              ; $600e: $3f
	ld   a, [hl-]                                    ; $600f: $3a
	rst  $38                                         ; $6010: $ff
	ld   b, $ff                                      ; $6011: $06 $ff
	add  hl, de                                      ; $6013: $19
	ei                                               ; $6014: $fb
	db   $db                                         ; $6015: $db
	ei                                               ; $6016: $fb
	xor  e                                           ; $6017: $ab
	ei                                               ; $6018: $fb
	ld   e, e                                        ; $6019: $5b
	ei                                               ; $601a: $fb
	cp   e                                           ; $601b: $bb
	ei                                               ; $601c: $fb
	ld   h, e                                        ; $601d: $63
	add  c                                           ; $601e: $81
	rst  $30                                         ; $601f: $f7
	nop                                              ; $6020: $00
	add  hl, de                                      ; $6021: $19
	add  b                                           ; $6022: $80
	cp   $00                                         ; $6023: $fe $00
	rst  $38                                         ; $6025: $ff
	add  c                                           ; $6026: $81
	add  b                                           ; $6027: $80
	ld   bc, $b8b9                                   ; $6028: $01 $b9 $b8
	add  c                                           ; $602b: $81
	or   a                                           ; $602c: $b7
	inc  b                                           ; $602d: $04
	ldh  a, [$7f]                                    ; $602e: $f0 $7f
	ld   e, c                                        ; $6030: $59
	ccf                                              ; $6031: $3f
	jr   nz, @-$7e                                   ; $6032: $20 $80

	rra                                              ; $6034: $1f
	nop                                              ; $6035: $00
	rst  $38                                         ; $6036: $ff
	add  c                                           ; $6037: $81
	ld   bc, $ff03                                   ; $6038: $01 $03 $ff
	add  c                                           ; $603b: $81
	rst  $38                                         ; $603c: $ff
	jp   $fe80                                       ; $603d: $c3 $80 $fe


	inc  bc                                          ; $6040: $03
	rst  $38                                         ; $6041: $ff
	call nz, Call_02e_78ff                           ; $6042: $c4 $ff $78
	add  b                                           ; $6045: $80
	rst  ToBoot                                         ; $6046: $c7
	nop                                              ; $6047: $00
	rst  $38                                         ; $6048: $ff
	add  c                                           ; $6049: $81
	ld   de, $7f01                                   ; $604a: $11 $01 $7f
	sbc  a                                           ; $604d: $9f
	add  b                                           ; $604e: $80
	rst  $38                                         ; $604f: $ff
	add  b                                           ; $6050: $80
	rra                                              ; $6051: $1f
	inc  bc                                          ; $6052: $03
	rst  $38                                         ; $6053: $ff
	rrca                                             ; $6054: $0f
	rst  $38                                         ; $6055: $ff
	ld   bc, $ff81                                   ; $6056: $01 $81 $ff
	add  c                                           ; $6059: $81
	nop                                              ; $605a: $00
	add  hl, bc                                      ; $605b: $09
	rst  $38                                         ; $605c: $ff
	cp   $ff                                         ; $605d: $fe $ff
	db   $fd                                         ; $605f: $fd
	rst  $38                                         ; $6060: $ff
	ei                                               ; $6061: $fb
	rst  $38                                         ; $6062: $ff
	rst  $30                                         ; $6063: $f7
	db   $fc                                         ; $6064: $fc
	inc  c                                           ; $6065: $0c
	add  b                                           ; $6066: $80
	ld   hl, sp+$00                                  ; $6067: $f8 $00
	rst  $38                                         ; $6069: $ff
	add  c                                           ; $606a: $81
	nop                                              ; $606b: $00
	dec  b                                           ; $606c: $05
	rst  $38                                         ; $606d: $ff
	nop                                              ; $606e: $00
	rst  $38                                         ; $606f: $ff
	nop                                              ; $6070: $00
	rst  $38                                         ; $6071: $ff
	nop                                              ; $6072: $00
	add  b                                           ; $6073: $80
	rst  $38                                         ; $6074: $ff
	add  d                                           ; $6075: $82
	nop                                              ; $6076: $00
	nop                                              ; $6077: $00
	rst  $38                                         ; $6078: $ff
	add  c                                           ; $6079: $81
	adc  b                                           ; $607a: $88
	ld   bc, $fcfb                                   ; $607b: $01 $fb $fc
	add  b                                           ; $607e: $80
	rst  $38                                         ; $607f: $ff
	add  b                                           ; $6080: $80
	ld   hl, sp+$03                                  ; $6081: $f8 $03
	rst  $38                                         ; $6083: $ff
	ldh  a, [rIE]                                    ; $6084: $f0 $ff
	add  b                                           ; $6086: $80
	add  c                                           ; $6087: $81
	rst  $38                                         ; $6088: $ff
	add  c                                           ; $6089: $81
	ld   bc, $9d01                                   ; $608a: $01 $01 $9d
	adc  l                                           ; $608d: $8d
	add  c                                           ; $608e: $81
	ld   a, l                                        ; $608f: $7d
	inc  b                                           ; $6090: $04
	rrca                                             ; $6091: $0f
	cp   $9a                                         ; $6092: $fe $9a
	db   $fc                                         ; $6094: $fc
	inc  b                                           ; $6095: $04
	add  b                                           ; $6096: $80
	ld   hl, sp-$01                                  ; $6097: $f8 $ff
	nop                                              ; $6099: $00
	ldh  a, [rP1]                                    ; $609a: $f0 $00
	ld   bc, $00ff                                   ; $609c: $01 $ff $00
	add  [hl]                                        ; $609f: $86
	db   $db                                         ; $60a0: $db
	add  b                                           ; $60a1: $80
	nop                                              ; $60a2: $00
	nop                                              ; $60a3: $00
	rst  $38                                         ; $60a4: $ff
	add  c                                           ; $60a5: $81
	nop                                              ; $60a6: $00
	ld   bc, $00ff                                   ; $60a7: $01 $ff $00
	add  [hl]                                        ; $60aa: $86
	ld   l, l                                        ; $60ab: $6d
	add  b                                           ; $60ac: $80
	nop                                              ; $60ad: $00
	nop                                              ; $60ae: $00
	rst  $38                                         ; $60af: $ff
	add  c                                           ; $60b0: $81
	nop                                              ; $60b1: $00
	ld   bc, $00ff                                   ; $60b2: $01 $ff $00
	add  [hl]                                        ; $60b5: $86
	or   [hl]                                        ; $60b6: $b6
	add  b                                           ; $60b7: $80
	nop                                              ; $60b8: $00
	nop                                              ; $60b9: $00
	rst  $38                                         ; $60ba: $ff
	add  c                                           ; $60bb: $81
	nop                                              ; $60bc: $00
	ld   [bc], a                                     ; $60bd: $02
	rst  $38                                         ; $60be: $ff
	nop                                              ; $60bf: $00
	dec  de                                          ; $60c0: $1b
	add  l                                           ; $60c1: $85
	db   $db                                         ; $60c2: $db
	ld   [bc], a                                     ; $60c3: $02
	ret  nz                                          ; $60c4: $c0

	nop                                              ; $60c5: $00
	rst  $38                                         ; $60c6: $ff
	add  c                                           ; $60c7: $81
	nop                                              ; $60c8: $00
	ld   [bc], a                                     ; $60c9: $02
	rst  $38                                         ; $60ca: $ff
	nop                                              ; $60cb: $00
	inc  bc                                          ; $60cc: $03
	add  l                                           ; $60cd: $85
	db   $db                                         ; $60ce: $db
	ld   [bc], a                                     ; $60cf: $02
	ret  c                                           ; $60d0: $d8

jr_02e_60d1:
	nop                                              ; $60d1: $00
	rst  $38                                         ; $60d2: $ff
	add  c                                           ; $60d3: $81
	nop                                              ; $60d4: $00
	nop                                              ; $60d5: $00
	rst  $38                                         ; $60d6: $ff
	add  b                                           ; $60d7: $80
	nop                                              ; $60d8: $00
	add  [hl]                                        ; $60d9: $86
	db   $db                                         ; $60da: $db
	ld   bc, $ff00                                   ; $60db: $01 $00 $ff
	add  c                                           ; $60de: $81
	nop                                              ; $60df: $00
	ld   [bc], a                                     ; $60e0: $02
	rst  $38                                         ; $60e1: $ff
	nop                                              ; $60e2: $00
	dec  c                                           ; $60e3: $0d
	add  l                                           ; $60e4: $85
	ld   l, l                                        ; $60e5: $6d
	ld   [bc], a                                     ; $60e6: $02
	ld   h, b                                        ; $60e7: $60
	nop                                              ; $60e8: $00
	rst  $38                                         ; $60e9: $ff
	add  c                                           ; $60ea: $81
	nop                                              ; $60eb: $00
	ld   [bc], a                                     ; $60ec: $02
	rst  $38                                         ; $60ed: $ff
	nop                                              ; $60ee: $00
	ld   bc, $6d85                                   ; $60ef: $01 $85 $6d
	ld   [bc], a                                     ; $60f2: $02
	ld   l, h                                        ; $60f3: $6c
	nop                                              ; $60f4: $00
	rst  $38                                         ; $60f5: $ff
	add  c                                           ; $60f6: $81
	nop                                              ; $60f7: $00
	nop                                              ; $60f8: $00
	rst  $38                                         ; $60f9: $ff
	add  b                                           ; $60fa: $80
	nop                                              ; $60fb: $00
	add  [hl]                                        ; $60fc: $86
	ld   l, l                                        ; $60fd: $6d
	ld   bc, $ff00                                   ; $60fe: $01 $00 $ff
	add  c                                           ; $6101: $81
	nop                                              ; $6102: $00
	ld   [bc], a                                     ; $6103: $02
	rst  $38                                         ; $6104: $ff
	nop                                              ; $6105: $00
	ld   [hl], $85                                   ; $6106: $36 $85
	or   [hl]                                        ; $6108: $b6
	ld   [bc], a                                     ; $6109: $02
	add  b                                           ; $610a: $80
	nop                                              ; $610b: $00
	rst  $38                                         ; $610c: $ff
	add  c                                           ; $610d: $81
	nop                                              ; $610e: $00
	ld   [bc], a                                     ; $610f: $02
	rst  $38                                         ; $6110: $ff
	nop                                              ; $6111: $00
	ld   b, $85                                      ; $6112: $06 $85
	or   [hl]                                        ; $6114: $b6
	ld   [bc], a                                     ; $6115: $02
	or   b                                           ; $6116: $b0
	nop                                              ; $6117: $00
	rst  $38                                         ; $6118: $ff

jr_02e_6119:
	add  c                                           ; $6119: $81
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	rst  $38                                         ; $611c: $ff
	add  b                                           ; $611d: $80
	nop                                              ; $611e: $00
	add  [hl]                                        ; $611f: $86
	or   [hl]                                        ; $6120: $b6
	ld   bc, $ff00                                   ; $6121: $01 $00 $ff
	ret  nz                                          ; $6124: $c0

	nop                                              ; $6125: $00
	add  b                                           ; $6126: $80
	ld   b, h                                        ; $6127: $44
	add  b                                           ; $6128: $80
	ld   a, a                                        ; $6129: $7f
	add  b                                           ; $612a: $80
	adc  $80                                         ; $612b: $ce $80
	ld   d, l                                        ; $612d: $55
	add  b                                           ; $612e: $80
	ld   h, h                                        ; $612f: $64
	add  b                                           ; $6130: $80
	ld   l, [hl]                                     ; $6131: $6e
	add  b                                           ; $6132: $80
	ld   b, h                                        ; $6133: $44
	add  d                                           ; $6134: $82
	nop                                              ; $6135: $00
	add  b                                           ; $6136: $80
	add  b                                           ; $6137: $80
	add  d                                           ; $6138: $82
	nop                                              ; $6139: $00
	add  d                                           ; $613a: $82
	add  b                                           ; $613b: $80
	add  h                                           ; $613c: $84
	nop                                              ; $613d: $00
	add  b                                           ; $613e: $80
	inc  bc                                          ; $613f: $03
	add  [hl]                                        ; $6140: $86
	nop                                              ; $6141: $00
	add  b                                           ; $6142: $80
	inc  bc                                          ; $6143: $03
	add  b                                           ; $6144: $80
	nop                                              ; $6145: $00
	add  b                                           ; $6146: $80
	ld   b, b                                        ; $6147: $40
	add  b                                           ; $6148: $80
	db   $fc                                         ; $6149: $fc
	add  d                                           ; $614a: $82
	ld   b, h                                        ; $614b: $44
	add  d                                           ; $614c: $82
	add  h                                           ; $614d: $84
	add  b                                           ; $614e: $80
	jr   jr_02e_60d1                                 ; $614f: $18 $80

	nop                                              ; $6151: $00
	add  b                                           ; $6152: $80
	ld   b, b                                        ; $6153: $40
	add  b                                           ; $6154: $80
	ld   [hl], a                                     ; $6155: $77
	add  b                                           ; $6156: $80
	and  h                                           ; $6157: $a4
	add  b                                           ; $6158: $80
	db   $fc                                         ; $6159: $fc
	add  d                                           ; $615a: $82
	inc  h                                           ; $615b: $24
	add  b                                           ; $615c: $80
	rst  $10                                         ; $615d: $d7
	add  d                                           ; $615e: $82
	nop                                              ; $615f: $00
	adc  d                                           ; $6160: $8a
	add  b                                           ; $6161: $80
	add  b                                           ; $6162: $80
	nop                                              ; $6163: $00
	add  b                                           ; $6164: $80
	ld   a, $80                                      ; $6165: $3e $80
	rst  $38                                         ; $6167: $ff
	add  b                                           ; $6168: $80

jr_02e_6169:
	xor  d                                           ; $6169: $aa
	add  b                                           ; $616a: $80
	ld   a, $80                                      ; $616b: $3e $80
	rst  $38                                         ; $616d: $ff
	add  b                                           ; $616e: $80
	ld   d, l                                        ; $616f: $55
	add  b                                           ; $6170: $80
	rst  $38                                         ; $6171: $ff
	add  d                                           ; $6172: $82
	nop                                              ; $6173: $00
	add  d                                           ; $6174: $82
	add  b                                           ; $6175: $80
	add  b                                           ; $6176: $80
	nop                                              ; $6177: $00
	add  b                                           ; $6178: $80

jr_02e_6179:
	add  b                                           ; $6179: $80
	add  b                                           ; $617a: $80
	nop                                              ; $617b: $00
	add  b                                           ; $617c: $80
	add  b                                           ; $617d: $80
	add  b                                           ; $617e: $80
	nop                                              ; $617f: $00
	add  b                                           ; $6180: $80
	ld   a, a                                        ; $6181: $7f
	add  b                                           ; $6182: $80
	ld   e, [hl]                                     ; $6183: $5e
	add  b                                           ; $6184: $80
	add  b                                           ; $6185: $80
	add  b                                           ; $6186: $80
	ld   a, a                                        ; $6187: $7f
	add  b                                           ; $6188: $80
	ld   a, [hl+]                                    ; $6189: $2a
	add  b                                           ; $618a: $80
	ld   [de], a                                     ; $618b: $12
	add  b                                           ; $618c: $80
	ld   l, l                                        ; $618d: $6d
	add  b                                           ; $618e: $80
	nop                                              ; $618f: $00
	add  b                                           ; $6190: $80
	ld   bc, $0280                                   ; $6191: $01 $80 $02
	add  b                                           ; $6194: $80
	rlca                                             ; $6195: $07
	add  b                                           ; $6196: $80
	jr   jr_02e_6119                                 ; $6197: $18 $80

	rlca                                             ; $6199: $07
	add  b                                           ; $619a: $80
	add  h                                           ; $619b: $84
	add  b                                           ; $619c: $80
	add  a                                           ; $619d: $87
	add  b                                           ; $619e: $80
	nop                                              ; $619f: $00
	add  b                                           ; $61a0: $80

jr_02e_61a1:
	ld   bc, $8180                                   ; $61a1: $01 $80 $81
	add  b                                           ; $61a4: $80
	pop  bc                                          ; $61a5: $c1
	add  b                                           ; $61a6: $80
	ld   sp, $c180                                   ; $61a7: $31 $80 $c1
	add  b                                           ; $61aa: $80
	ld   b, c                                        ; $61ab: $41
	add  b                                           ; $61ac: $80
	pop  bc                                          ; $61ad: $c1
	add  d                                           ; $61ae: $82

jr_02e_61af:
	nop                                              ; $61af: $00
	add  b                                           ; $61b0: $80
	ld   [$0484], sp                                 ; $61b1: $08 $84 $04
	add  b                                           ; $61b4: $80
	ld   b, b                                        ; $61b5: $40
	add  b                                           ; $61b6: $80
	add  b                                           ; $61b7: $80
	add  b                                           ; $61b8: $80
	nop                                              ; $61b9: $00
	add  b                                           ; $61ba: $80
	ld   a, $80                                      ; $61bb: $3e $80
	inc  e                                           ; $61bd: $1c
	add  b                                           ; $61be: $80
	rst  $38                                         ; $61bf: $ff
	add  b                                           ; $61c0: $80
	inc  d                                           ; $61c1: $14
	add  b                                           ; $61c2: $80
	ccf                                              ; $61c3: $3f
	add  b                                           ; $61c4: $80
	ld   e, h                                        ; $61c5: $5c
	add  b                                           ; $61c6: $80
	ld   c, c                                        ; $61c7: $49
	add  b                                           ; $61c8: $80
	nop                                              ; $61c9: $00
	add  b                                           ; $61ca: $80
	rrca                                             ; $61cb: $0f
	add  b                                           ; $61cc: $80
	ld   [$8f80], sp                                 ; $61cd: $08 $80 $8f
	add  b                                           ; $61d0: $80
	ld   bc, $1f80                                   ; $61d1: $01 $80 $1f
	add  d                                           ; $61d4: $82
	ld   bc, $0080                                   ; $61d5: $01 $80 $00
	add  b                                           ; $61d8: $80
	ldh  [$80], a                                    ; $61d9: $e0 $80
	ld   hl, $e080                                   ; $61db: $21 $80 $e0
	add  b                                           ; $61de: $80
	nop                                              ; $61df: $00
	add  b                                           ; $61e0: $80
	pop  af                                          ; $61e1: $f1
	add  b                                           ; $61e2: $80
	ld   bc, $0082                                   ; $61e3: $01 $82 $00
	add  b                                           ; $61e6: $80
	jr   nz, jr_02e_6169                             ; $61e7: $20 $80

	db   $fc                                         ; $61e9: $fc
	add  b                                           ; $61ea: $80
	db   $10                                         ; $61eb: $10
	add  b                                           ; $61ec: $80
	ld   [$1880], sp                                 ; $61ed: $08 $80 $18
	add  b                                           ; $61f0: $80
	nop                                              ; $61f1: $00
	add  b                                           ; $61f2: $80
	ldh  a, [$80]                                    ; $61f3: $f0 $80
	nop                                              ; $61f5: $00
	add  b                                           ; $61f6: $80
	jr   jr_02e_6179                                 ; $61f7: $18 $80

	ld   h, $80                                      ; $61f9: $26 $80
	rst  $38                                         ; $61fb: $ff
	add  d                                           ; $61fc: $82
	ld   d, l                                        ; $61fd: $55
	add  b                                           ; $61fe: $80
	ld   [hl], a                                     ; $61ff: $77
	add  b                                           ; $6200: $80
	inc  b                                           ; $6201: $04
	add  b                                           ; $6202: $80
	nop                                              ; $6203: $00
	add  b                                           ; $6204: $80
	ld   bc, $0f80                                   ; $6205: $01 $80 $0f
	add  b                                           ; $6208: $80
	adc  c                                           ; $6209: $89
	add  b                                           ; $620a: $80
	add  hl, bc                                      ; $620b: $09
	add  b                                           ; $620c: $80
	rrca                                             ; $620d: $0f
	add  d                                           ; $620e: $82
	ld   bc, $0082                                   ; $620f: $01 $82 $00
	add  b                                           ; $6212: $80
	db   $e3                                         ; $6213: $e3
	add  b                                           ; $6214: $80
	ld   hl, $2080                                   ; $6215: $21 $80 $20
	add  b                                           ; $6218: $80
	pop  hl                                          ; $6219: $e1
	add  b                                           ; $621a: $80
	inc  bc                                          ; $621b: $03
	add  d                                           ; $621c: $82
	nop                                              ; $621d: $00
	add  b                                           ; $621e: $80
	jr   nz, jr_02e_61a1                             ; $621f: $20 $80

	cp   $80                                         ; $6221: $fe $80
	ld   h, h                                        ; $6223: $64
	add  b                                           ; $6224: $80
	ld   hl, sp-$80                                  ; $6225: $f8 $80
	inc  [hl]                                        ; $6227: $34
	add  b                                           ; $6228: $80
	cp   $80                                         ; $6229: $fe $80
	jr   nz, jr_02e_61af                             ; $622b: $20 $82

	nop                                              ; $622d: $00
	adc  c                                           ; $622e: $89
	ld   bc, $6107                                   ; $622f: $01 $07 $61
	or   b                                           ; $6232: $b0
	ret  nc                                          ; $6233: $d0

	rst  $38                                         ; $6234: $ff
	add  d                                           ; $6235: $82
	cp   [hl]                                        ; $6236: $be
	or   [hl]                                        ; $6237: $b6
	xor  [hl]                                        ; $6238: $ae
	add  b                                           ; $6239: $80
	cp   [hl]                                        ; $623a: $be
	inc  b                                           ; $623b: $04
	and  [hl]                                        ; $623c: $a6
	cp   [hl]                                        ; $623d: $be
	cp   $7e                                         ; $623e: $fe $7e
	ld   b, e                                        ; $6240: $43
	add  b                                           ; $6241: $80
	ccf                                              ; $6242: $3f
	add  b                                           ; $6243: $80
	nop                                              ; $6244: $00
	dec  bc                                          ; $6245: $0b
	cp   $82                                         ; $6246: $fe $82
	add  e                                           ; $6248: $83
	add  b                                           ; $6249: $80
	db   $fd                                         ; $624a: $fd
	add  l                                           ; $624b: $85
	cp   $82                                         ; $624c: $fe $82
	rst  $38                                         ; $624e: $ff
	ld   sp, hl                                      ; $624f: $f9
	rst  $38                                         ; $6250: $ff
	add  d                                           ; $6251: $82
	add  b                                           ; $6252: $80
	rst  $38                                         ; $6253: $ff
	add  d                                           ; $6254: $82
	nop                                              ; $6255: $00
	inc  b                                           ; $6256: $04
	ld   hl, sp+$00                                  ; $6257: $f8 $00
	db   $fc                                         ; $6259: $fc
	inc  b                                           ; $625a: $04
	rst  $38                                         ; $625b: $ff
	add  c                                           ; $625c: $81
	nop                                              ; $625d: $00
	ld   bc, $00ff                                   ; $625e: $01 $ff $00
	add  b                                           ; $6261: $80
	rst  $38                                         ; $6262: $ff
	add  [hl]                                        ; $6263: $86
	nop                                              ; $6264: $00
	nop                                              ; $6265: $00
	rst  $38                                         ; $6266: $ff
	add  c                                           ; $6267: $81
	nop                                              ; $6268: $00
	ld   bc, $00ff                                   ; $6269: $01 $ff $00
	add  b                                           ; $626c: $80
	rst  $38                                         ; $626d: $ff
	adc  [hl]                                        ; $626e: $8e
	nop                                              ; $626f: $00
	ld   b, $3f                                      ; $6270: $06 $3f
	ld   bc, $0141                                   ; $6272: $01 $41 $01
	cp   a                                           ; $6275: $bf
	or   a                                           ; $6276: $b7
	xor  a                                           ; $6277: $af
	add  b                                           ; $6278: $80
	cp   a                                           ; $6279: $bf
	inc  b                                           ; $627a: $04
	and  a                                           ; $627b: $a7
	cp   a                                           ; $627c: $bf
	cp   l                                           ; $627d: $bd
	cp   [hl]                                        ; $627e: $be
	jp   nz, $fc80                                   ; $627f: $c2 $80 $fc

	nop                                              ; $6282: $00
	rst  $38                                         ; $6283: $ff
	add  c                                           ; $6284: $81
	ld   b, b                                        ; $6285: $40
	add  c                                           ; $6286: $81
	rst  $38                                         ; $6287: $ff
	ld   [bc], a                                     ; $6288: $02
	ret  nz                                          ; $6289: $c0

	rst  $38                                         ; $628a: $ff
	ld   a, a                                        ; $628b: $7f
	add  b                                           ; $628c: $80
	add  b                                           ; $628d: $80
	add  d                                           ; $628e: $82
	nop                                              ; $628f: $00
	nop                                              ; $6290: $00
	rst  $38                                         ; $6291: $ff
	add  c                                           ; $6292: $81
	jr   z, jr_02e_6298                              ; $6293: $28 $03

	rst  $28                                         ; $6295: $ef
	add  sp, -$11                                    ; $6296: $e8 $ef

jr_02e_6298:
	ccf                                              ; $6298: $3f
	add  b                                           ; $6299: $80
	ldh  a, [$84]                                    ; $629a: $f0 $84
	nop                                              ; $629c: $00
	nop                                              ; $629d: $00
	rst  $38                                         ; $629e: $ff
	add  c                                           ; $629f: $81
	nop                                              ; $62a0: $00
	ld   bc, $00ff                                   ; $62a1: $01 $ff $00
	add  b                                           ; $62a4: $80
	rst  $38                                         ; $62a5: $ff

jr_02e_62a6:
	add  l                                           ; $62a6: $85
	nop                                              ; $62a7: $00
	nop                                              ; $62a8: $00
	ld   h, b                                        ; $62a9: $60
	adc  l                                           ; $62aa: $8d
	or   b                                           ; $62ab: $b0
	nop                                              ; $62ac: $00
	sub  [hl]                                        ; $62ad: $96
	adc  l                                           ; $62ae: $8d
	xor  e                                           ; $62af: $ab
	nop                                              ; $62b0: $00
	db   $ed                                         ; $62b1: $ed
	rst  $38                                         ; $62b2: $ff
	nop                                              ; $62b3: $00
	rst  $38                                         ; $62b4: $ff
	nop                                              ; $62b5: $00
	rst  $38                                         ; $62b6: $ff
	nop                                              ; $62b7: $00
	rst  $38                                         ; $62b8: $ff
	nop                                              ; $62b9: $00
	rst  $38                                         ; $62ba: $ff
	nop                                              ; $62bb: $00
	rst  $38                                         ; $62bc: $ff
	nop                                              ; $62bd: $00
	rst  $38                                         ; $62be: $ff
	nop                                              ; $62bf: $00
	rst  $38                                         ; $62c0: $ff
	nop                                              ; $62c1: $00
	rst  $38                                         ; $62c2: $ff
	nop                                              ; $62c3: $00
	db   $f4                                         ; $62c4: $f4
	nop                                              ; $62c5: $00
	jr   jr_02e_62c9                                 ; $62c6: $18 $01

	rst  $38                                         ; $62c8: $ff

jr_02e_62c9:
	nop                                              ; $62c9: $00
	rst  $38                                         ; $62ca: $ff
	nop                                              ; $62cb: $00
	rst  $38                                         ; $62cc: $ff
	nop                                              ; $62cd: $00
	rst  $38                                         ; $62ce: $ff
	nop                                              ; $62cf: $00
	pop  hl                                          ; $62d0: $e1
	nop                                              ; $62d1: $00
	add  b                                           ; $62d2: $80
	ld   b, b                                        ; $62d3: $40
	add  b                                           ; $62d4: $80
	ld   h, b                                        ; $62d5: $60
	add  b                                           ; $62d6: $80
	ld   [hl], b                                     ; $62d7: $70
	add  b                                           ; $62d8: $80
	ld   a, b                                        ; $62d9: $78
	add  b                                           ; $62da: $80
	ld   a, h                                        ; $62db: $7c
	add  d                                           ; $62dc: $82
	nop                                              ; $62dd: $00
	add  b                                           ; $62de: $80
	ld   bc, $0380                                   ; $62df: $01 $80 $03
	add  b                                           ; $62e2: $80
	rlca                                             ; $62e3: $07
	add  b                                           ; $62e4: $80
	rrca                                             ; $62e5: $0f
	add  b                                           ; $62e6: $80
	rra                                              ; $62e7: $1f
	add  d                                           ; $62e8: $82
	nop                                              ; $62e9: $00
	add  b                                           ; $62ea: $80
	add  b                                           ; $62eb: $80
	add  b                                           ; $62ec: $80
	ret  nz                                          ; $62ed: $c0

	add  b                                           ; $62ee: $80
	ldh  [$80], a                                    ; $62ef: $e0 $80
	ldh  a, [$80]                                    ; $62f1: $f0 $80
	ld   hl, sp-$80                                  ; $62f3: $f8 $80
	db   $fc                                         ; $62f5: $fc
	rst  $38                                         ; $62f6: $ff
	nop                                              ; $62f7: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62f8: $cf
	nop                                              ; $62f9: $00
	add  b                                           ; $62fa: $80
	ld   a, [hl]                                     ; $62fb: $7e
	add  b                                           ; $62fc: $80
	ld   a, h                                        ; $62fd: $7c
	add  b                                           ; $62fe: $80
	ld   a, b                                        ; $62ff: $78
	add  b                                           ; $6300: $80
	ld   [hl], b                                     ; $6301: $70
	add  b                                           ; $6302: $80
	ld   h, b                                        ; $6303: $60
	add  b                                           ; $6304: $80
	ld   b, b                                        ; $6305: $40
	rst  $38                                         ; $6306: $ff
	nop                                              ; $6307: $00
	rst  $38                                         ; $6308: $ff
	nop                                              ; $6309: $00
	rst  $38                                         ; $630a: $ff
	nop                                              ; $630b: $00
	rst  $38                                         ; $630c: $ff
	nop                                              ; $630d: $00
	rst  $38                                         ; $630e: $ff
	nop                                              ; $630f: $00
	adc  [hl]                                        ; $6310: $8e
	nop                                              ; $6311: $00
	db   $10                                         ; $6312: $10
	ld   h, b                                        ; $6313: $60
	nop                                              ; $6314: $00
	ldh  a, [rP1]                                    ; $6315: $f0 $00
	db   $d3                                         ; $6317: $d3
	nop                                              ; $6318: $00
	ld   h, a                                        ; $6319: $67
	nop                                              ; $631a: $00
	inc  sp                                          ; $631b: $33
	nop                                              ; $631c: $00
	add  e                                           ; $631d: $83
	nop                                              ; $631e: $00
	rst  $20                                         ; $631f: $e7
	nop                                              ; $6320: $00
	ld   [hl], e                                     ; $6321: $73
	nop                                              ; $6322: $00
	jr   nz, jr_02e_62a6                             ; $6323: $20 $81

	nop                                              ; $6325: $00
	ld   a, [bc]                                     ; $6326: $0a
	ld   b, $00                                      ; $6327: $06 $00
	adc  a                                           ; $6329: $8f
	nop                                              ; $632a: $00
	ld   b, $00                                      ; $632b: $06 $00
	ld   b, $00                                      ; $632d: $06 $00
	adc  a                                           ; $632f: $8f
	nop                                              ; $6330: $00
	ld   h, $81                                      ; $6331: $26 $81
	nop                                              ; $6333: $00
	inc  e                                           ; $6334: $1c
	ld   [bc], a                                     ; $6335: $02
	nop                                              ; $6336: $00
	dec  [hl]                                        ; $6337: $35
	nop                                              ; $6338: $00
	ld   a, l                                        ; $6339: $7d
	nop                                              ; $633a: $00
	ld   [$0800], sp                                 ; $633b: $08 $00 $08
	nop                                              ; $633e: $00
	ld   a, c                                        ; $633f: $79
	nop                                              ; $6340: $00
	inc  sp                                          ; $6341: $33
	nop                                              ; $6342: $00
	ld   h, b                                        ; $6343: $60
	nop                                              ; $6344: $00
	ldh  a, [c]                                      ; $6345: $f2
	nop                                              ; $6346: $00
	push de                                          ; $6347: $d5
	nop                                              ; $6348: $00
	ld   h, l                                        ; $6349: $65
	nop                                              ; $634a: $00
	jr   nc, jr_02e_634d                             ; $634b: $30 $00

jr_02e_634d:
	add  b                                           ; $634d: $80
	nop                                              ; $634e: $00
	pop  hl                                          ; $634f: $e1
	nop                                              ; $6350: $00
	ld   [hl], e                                     ; $6351: $73
	add  e                                           ; $6352: $83
	nop                                              ; $6353: $00
	ld   a, [bc]                                     ; $6354: $0a
	sbc  c                                           ; $6355: $99
	nop                                              ; $6356: $00
	cp   h                                           ; $6357: $bc
	nop                                              ; $6358: $00
	jr   c, jr_02e_635b                              ; $6359: $38 $00

jr_02e_635b:
	jr   c, jr_02e_635d                              ; $635b: $38 $00

jr_02e_635d:
	cp   b                                           ; $635d: $b8
	nop                                              ; $635e: $00
	sbc  l                                           ; $635f: $9d
	add  c                                           ; $6360: $81
	nop                                              ; $6361: $00
	inc  b                                           ; $6362: $04
	ld   [$d600], sp                                 ; $6363: $08 $00 $d6
	nop                                              ; $6366: $00
	sub  $83                                         ; $6367: $d6 $83
	nop                                              ; $6369: $00
	ld   [bc], a                                     ; $636a: $02
	ld   b, $00                                      ; $636b: $06 $00
	ld   c, $ff                                      ; $636d: $0e $ff
	nop                                              ; $636f: $00
	and  h                                           ; $6370: $a4
	nop                                              ; $6371: $00
	ld   [$001f], sp                                 ; $6372: $08 $1f $00
	rrca                                             ; $6375: $0f
	nop                                              ; $6376: $00
	rrca                                             ; $6377: $0f
	nop                                              ; $6378: $00
	rrca                                             ; $6379: $0f
	nop                                              ; $637a: $00
	db   $10                                         ; $637b: $10
	add  l                                           ; $637c: $85
	nop                                              ; $637d: $00
	ld   [$00c2], sp                                 ; $637e: $08 $c2 $00
	adc  l                                           ; $6381: $8d
	nop                                              ; $6382: $00
	adc  d                                           ; $6383: $8a
	nop                                              ; $6384: $00
	add  d                                           ; $6385: $82
	nop                                              ; $6386: $00
	ld   b, a                                        ; $6387: $47
	add  l                                           ; $6388: $85
	nop                                              ; $6389: $00
	ld   [$0070], sp                                 ; $638a: $08 $70 $00
	and  b                                           ; $638d: $a0
	nop                                              ; $638e: $00
	xor  c                                           ; $638f: $a9
	nop                                              ; $6390: $00
	add  hl, hl                                      ; $6391: $29
	nop                                              ; $6392: $00
	ld   d, b                                        ; $6393: $50
	add  l                                           ; $6394: $85
	nop                                              ; $6395: $00
	nop                                              ; $6396: $00
	ld   b, b                                        ; $6397: $40
	add  c                                           ; $6398: $81
	nop                                              ; $6399: $00
	inc  b                                           ; $639a: $04
	cp   h                                           ; $639b: $bc
	nop                                              ; $639c: $00
	cp   h                                           ; $639d: $bc
	nop                                              ; $639e: $00
	ld   b, b                                        ; $639f: $40
	add  l                                           ; $63a0: $85
	nop                                              ; $63a1: $00
	ld   [$0002], sp                                 ; $63a2: $08 $02 $00
	stop                                             ; $63a5: $10 $00
	jr   jr_02e_63a9                                 ; $63a7: $18 $00

jr_02e_63a9:
	ld   [$0200], sp                                 ; $63a9: $08 $00 $02
	add  a                                           ; $63ac: $87
	nop                                              ; $63ad: $00
	ld   b, $47                                      ; $63ae: $06 $47
	nop                                              ; $63b0: $00
	rst  ToBoot                                         ; $63b1: $c7
	nop                                              ; $63b2: $00
	adc  a                                           ; $63b3: $8f
	nop                                              ; $63b4: $00
	rrca                                             ; $63b5: $0f
	add  l                                           ; $63b6: $85
	nop                                              ; $63b7: $00
	ld   [$0021], sp                                 ; $63b8: $08 $21 $00
	ld   [$0800], sp                                 ; $63bb: $08 $00 $08
	nop                                              ; $63be: $00
	ret  c                                           ; $63bf: $d8

	nop                                              ; $63c0: $00
	ld   sp, hl                                      ; $63c1: $f9
	and  a                                           ; $63c2: $a7
	nop                                              ; $63c3: $00
	ld   [bc], a                                     ; $63c4: $02
	db   $fc                                         ; $63c5: $fc
	nop                                              ; $63c6: $00
	ld   hl, sp-$7f                                  ; $63c7: $f8 $81
	nop                                              ; $63c9: $00
	nop                                              ; $63ca: $00
	inc  b                                           ; $63cb: $04
	add  l                                           ; $63cc: $85
	nop                                              ; $63cd: $00
	ld   b, $07                                      ; $63ce: $06 $07
	nop                                              ; $63d0: $00
	rlca                                             ; $63d1: $07
	nop                                              ; $63d2: $00
	rlca                                             ; $63d3: $07
	nop                                              ; $63d4: $00
	rlca                                             ; $63d5: $07
	add  a                                           ; $63d6: $87
	nop                                              ; $63d7: $00
	ld   [$0044], sp                                 ; $63d8: $08 $44 $00
	ld   de, $0100                                   ; $63db: $11 $00 $01
	nop                                              ; $63de: $00
	ld   bc, $5500                                   ; $63df: $01 $00 $55
	add  l                                           ; $63e2: $85
	nop                                              ; $63e3: $00
	ld   [$0084], sp                                 ; $63e4: $08 $84 $00
	ei                                               ; $63e7: $fb
	nop                                              ; $63e8: $00
	ld   [$ca00], a                                  ; $63e9: $ea $00 $ca
	nop                                              ; $63ec: $00
	ld   e, a                                        ; $63ed: $5f
	add  l                                           ; $63ee: $85
	nop                                              ; $63ef: $00
	ld   [$007f], sp                                 ; $63f0: $08 $7f $00
	ld   a, e                                        ; $63f3: $7b
	nop                                              ; $63f4: $00
	dec  de                                          ; $63f5: $1b
	nop                                              ; $63f6: $00
	ld   c, d                                        ; $63f7: $4a
	nop                                              ; $63f8: $00
	ld   d, l                                        ; $63f9: $55
	add  l                                           ; $63fa: $85
	nop                                              ; $63fb: $00
	ld   [$00df], sp                                 ; $63fc: $08 $df $00
	db   $dd                                         ; $63ff: $dd

Call_02e_6400:
	nop                                              ; $6400: $00
	dec  e                                           ; $6401: $1d
	nop                                              ; $6402: $00
	ld   c, l                                        ; $6403: $4d
	nop                                              ; $6404: $00
	ld   d, d                                        ; $6405: $52
	add  l                                           ; $6406: $85
	nop                                              ; $6407: $00
	ld   c, $f0                                      ; $6408: $0e $f0
	nop                                              ; $640a: $00
	ldh  a, [rP1]                                    ; $640b: $f0 $00
	ldh  a, [rP1]                                    ; $640d: $f0 $00
	ld   h, b                                        ; $640f: $60
	nop                                              ; $6410: $00
	adc  a                                           ; $6411: $8f
	nop                                              ; $6412: $00
	dec  e                                           ; $6413: $1d
	nop                                              ; $6414: $00
	dec  a                                           ; $6415: $3d
	nop                                              ; $6416: $00
	dec  a                                           ; $6417: $3d
	add  c                                           ; $6418: $81
	nop                                              ; $6419: $00
	nop                                              ; $641a: $00
	ld   [bc], a                                     ; $641b: $02
	add  e                                           ; $641c: $83
	nop                                              ; $641d: $00
	ld   [$00cf], sp                                 ; $641e: $08 $cf $00
	call $e100                                       ; $6421: $cd $00 $e1
	nop                                              ; $6424: $00
	db   $ec                                         ; $6425: $ec
	nop                                              ; $6426: $00
	rrca                                             ; $6427: $0f
	add  l                                           ; $6428: $85
	nop                                              ; $6429: $00
	ld   a, [bc]                                     ; $642a: $0a
	and  b                                           ; $642b: $a0
	nop                                              ; $642c: $00
	ld   a, b                                        ; $642d: $78
	nop                                              ; $642e: $00
	jr   c, jr_02e_6431                              ; $642f: $38 $00

jr_02e_6431:
	jr   jr_02e_6433                                 ; $6431: $18 $00

jr_02e_6433:
	ld   a, b                                        ; $6433: $78
	nop                                              ; $6434: $00
	add  b                                           ; $6435: $80
	add  e                                           ; $6436: $83
	nop                                              ; $6437: $00
	ld   a, [bc]                                     ; $6438: $0a
	cp   b                                           ; $6439: $b8
	nop                                              ; $643a: $00
	ld   a, h                                        ; $643b: $7c
	nop                                              ; $643c: $00
	ld   b, b                                        ; $643d: $40
	nop                                              ; $643e: $00
	add  b                                           ; $643f: $80
	nop                                              ; $6440: $00
	ld   a, h                                        ; $6441: $7c
	nop                                              ; $6442: $00
	ld   a, b                                        ; $6443: $78
	add  e                                           ; $6444: $83
	nop                                              ; $6445: $00
	ld   [bc], a                                     ; $6446: $02
	ccf                                              ; $6447: $3f
	nop                                              ; $6448: $00
	ld   a, [hl-]                                    ; $6449: $3a
	add  c                                           ; $644a: $81
	nop                                              ; $644b: $00
	inc  b                                           ; $644c: $04
	inc  c                                           ; $644d: $0c
	nop                                              ; $644e: $00
	jr   c, jr_02e_6451                              ; $644f: $38 $00

jr_02e_6451:
	ld   sp, $0083                                   ; $6451: $31 $83 $00
	ld   [bc], a                                     ; $6454: $02
	pop  hl                                          ; $6455: $e1
	nop                                              ; $6456: $00
	db   $e4                                         ; $6457: $e4
	add  c                                           ; $6458: $81
	nop                                              ; $6459: $00
	inc  b                                           ; $645a: $04
	jr   nz, jr_02e_645d                             ; $645b: $20 $00

jr_02e_645d:
	jp   z, $ef00                                    ; $645d: $ca $00 $ef

	add  e                                           ; $6460: $83
	nop                                              ; $6461: $00
	ld   a, [bc]                                     ; $6462: $0a
	ld   hl, $8000                                   ; $6463: $21 $00 $80
	nop                                              ; $6466: $00
	or   b                                           ; $6467: $b0
	nop                                              ; $6468: $00
	ret  z                                           ; $6469: $c8

	nop                                              ; $646a: $00
	ret  nc                                          ; $646b: $d0

	nop                                              ; $646c: $00
	add  hl, bc                                      ; $646d: $09
	add  e                                           ; $646e: $83
	nop                                              ; $646f: $00
	ld   a, [bc]                                     ; $6470: $0a
	ld   bc, $0900                                   ; $6471: $01 $00 $09
	nop                                              ; $6474: $00
	jr   jr_02e_6477                                 ; $6475: $18 $00

jr_02e_6477:
	ld   [hl], b                                     ; $6477: $70
	nop                                              ; $6478: $00
	ldh  [rP1], a                                    ; $6479: $e0 $00
	add  b                                           ; $647b: $80
	add  e                                           ; $647c: $83
	nop                                              ; $647d: $00
	ld   [bc], a                                     ; $647e: $02
	db   $fc                                         ; $647f: $fc
	nop                                              ; $6480: $00
	db   $fc                                         ; $6481: $fc
	add  e                                           ; $6482: $83
	nop                                              ; $6483: $00
	ld   [bc], a                                     ; $6484: $02
	ld   bc, $0100                                   ; $6485: $01 $00 $01
	add  e                                           ; $6488: $83
	nop                                              ; $6489: $00
	ld   a, [bc]                                     ; $648a: $0a
	ld   [$1000], sp                                 ; $648b: $08 $00 $10
	nop                                              ; $648e: $00
	inc  a                                           ; $648f: $3c
	nop                                              ; $6490: $00
	ld   h, [hl]                                     ; $6491: $66
	nop                                              ; $6492: $00
	ret  nz                                          ; $6493: $c0

	nop                                              ; $6494: $00
	add  d                                           ; $6495: $82
	add  e                                           ; $6496: $83
	nop                                              ; $6497: $00
	ld   a, [bc]                                     ; $6498: $0a
	rlca                                             ; $6499: $07
	nop                                              ; $649a: $00
	rlca                                             ; $649b: $07
	nop                                              ; $649c: $00
	rlca                                             ; $649d: $07
	nop                                              ; $649e: $00
	ld   [bc], a                                     ; $649f: $02
	nop                                              ; $64a0: $00
	ld   [bc], a                                     ; $64a1: $02

jr_02e_64a2:
	nop                                              ; $64a2: $00
	rlca                                             ; $64a3: $07
	add  e                                           ; $64a4: $83
	nop                                              ; $64a5: $00
	ld   a, [bc]                                     ; $64a6: $0a
	ld   d, l                                        ; $64a7: $55
	nop                                              ; $64a8: $00
	ld   bc, $0100                                   ; $64a9: $01 $00 $01
	nop                                              ; $64ac: $00
	stop                                             ; $64ad: $10 $00
	pop  bc                                          ; $64af: $c1
	nop                                              ; $64b0: $00
	add  h                                           ; $64b1: $84
	add  e                                           ; $64b2: $83
	nop                                              ; $64b3: $00
	ld   a, [bc]                                     ; $64b4: $0a
	push de                                          ; $64b5: $d5
	nop                                              ; $64b6: $00
	ld   c, d                                        ; $64b7: $4a
	nop                                              ; $64b8: $00
	ld   e, e                                        ; $64b9: $5b
	nop                                              ; $64ba: $00
	ld   a, [bc]                                     ; $64bb: $0a
	nop                                              ; $64bc: $00
	ld   e, e                                        ; $64bd: $5b
	nop                                              ; $64be: $00
	sub  l                                           ; $64bf: $95
	add  e                                           ; $64c0: $83
	nop                                              ; $64c1: $00
	ld   a, [bc]                                     ; $64c2: $0a
	ld   e, a                                        ; $64c3: $5f
	nop                                              ; $64c4: $00
	ld   a, [bc]                                     ; $64c5: $0a
	nop                                              ; $64c6: $00
	ld   a, [bc]                                     ; $64c7: $0a
	nop                                              ; $64c8: $00
	rra                                              ; $64c9: $1f
	nop                                              ; $64ca: $00
	ccf                                              ; $64cb: $3f
	nop                                              ; $64cc: $00
	ld   a, a                                        ; $64cd: $7f
	add  e                                           ; $64ce: $83
	nop                                              ; $64cf: $00
	ld   a, [bc]                                     ; $64d0: $0a
	ld   d, e                                        ; $64d1: $53
	nop                                              ; $64d2: $00
	ld   bc, $0100                                   ; $64d3: $01 $00 $01
	nop                                              ; $64d6: $00
	ld   bc, $8d00                                   ; $64d7: $01 $00 $8d
	nop                                              ; $64da: $00
	rst  JumpTable                                         ; $64db: $df
	add  e                                           ; $64dc: $83
	nop                                              ; $64dd: $00
	nop                                              ; $64de: $00
	sub  b                                           ; $64df: $90
	add  l                                           ; $64e0: $85
	nop                                              ; $64e1: $00
	ld   [bc], a                                     ; $64e2: $02
	ld   h, b                                        ; $64e3: $60
	nop                                              ; $64e4: $00
	ldh  a, [$89]                                    ; $64e5: $f0 $89
	nop                                              ; $64e7: $00
	ld   a, [bc]                                     ; $64e8: $0a
	inc  de                                          ; $64e9: $13
	nop                                              ; $64ea: $00
	add  hl, sp                                      ; $64eb: $39
	nop                                              ; $64ec: $00
	jr   c, jr_02e_64ef                              ; $64ed: $38 $00

jr_02e_64ef:
	ld   sp, $1900                                   ; $64ef: $31 $00 $19
	nop                                              ; $64f2: $00
	ld   a, [hl-]                                    ; $64f3: $3a
	add  e                                           ; $64f4: $83
	nop                                              ; $64f5: $00
	ld   [bc], a                                     ; $64f6: $02
	jp   $8300                                       ; $64f7: $c3 $00 $83


	add  c                                           ; $64fa: $81
	nop                                              ; $64fb: $00
	inc  b                                           ; $64fc: $04
	add  b                                           ; $64fd: $80
	nop                                              ; $64fe: $00
	add  e                                           ; $64ff: $83
	nop                                              ; $6500: $00
	ld   b, e                                        ; $6501: $43
	add  e                                           ; $6502: $83
	nop                                              ; $6503: $00
	ld   a, [bc]                                     ; $6504: $0a
	add  b                                           ; $6505: $80
	nop                                              ; $6506: $00
	ld   bc, $2100                                   ; $6507: $01 $00 $21
	nop                                              ; $650a: $00
	ld   bc, $4100                                   ; $650b: $01 $00 $41
	nop                                              ; $650e: $00
	ldh  [$83], a                                    ; $650f: $e0 $83
	nop                                              ; $6511: $00
	ld   a, [bc]                                     ; $6512: $0a
	jr   jr_02e_6515                                 ; $6513: $18 $00

jr_02e_6515:
	ld   hl, sp+$00                                  ; $6515: $f8 $00
	ret  nz                                          ; $6517: $c0

	nop                                              ; $6518: $00
	call c, $dc00                                    ; $6519: $dc $00 $dc
	nop                                              ; $651c: $00
	jr   nz, jr_02e_64a2                             ; $651d: $20 $83

	nop                                              ; $651f: $00
	ld   a, [bc]                                     ; $6520: $0a
	stop                                             ; $6521: $10 $00
	ld   bc, $0100                                   ; $6523: $01 $00 $01
	nop                                              ; $6526: $00
	inc  bc                                          ; $6527: $03
	nop                                              ; $6528: $00
	rra                                              ; $6529: $1f
	nop                                              ; $652a: $00
	inc  c                                           ; $652b: $0c
	add  e                                           ; $652c: $83
	nop                                              ; $652d: $00
	ld   [$0001], sp                                 ; $652e: $08 $01 $00
	adc  [hl]                                        ; $6531: $8e
	nop                                              ; $6532: $00
	adc  [hl]                                        ; $6533: $8e
	nop                                              ; $6534: $00
	ld   c, $00                                      ; $6535: $0e $00
	rrca                                             ; $6537: $0f
	add  l                                           ; $6538: $85
	nop                                              ; $6539: $00
	ld   a, [bc]                                     ; $653a: $0a
	ld   bc, $c000                                   ; $653b: $01 $00 $c0
	nop                                              ; $653e: $00
	ret  nz                                          ; $653f: $c0

	nop                                              ; $6540: $00
	ldh  [rP1], a                                    ; $6541: $e0 $00
	ld   h, c                                        ; $6543: $61
	nop                                              ; $6544: $00
	add  b                                           ; $6545: $80
	add  l                                           ; $6546: $85
	nop                                              ; $6547: $00
	ld   [$0018], sp                                 ; $6548: $08 $18 $00
	jr   jr_02e_654d                                 ; $654b: $18 $00

jr_02e_654d:
	jr   nc, jr_02e_654f                             ; $654d: $30 $00

jr_02e_654f:
	ldh  a, [rP1]                                    ; $654f: $f0 $00
	ret  nz                                          ; $6551: $c0

	add  e                                           ; $6552: $83
	nop                                              ; $6553: $00
	ld   a, [bc]                                     ; $6554: $0a
	stop                                             ; $6555: $10 $00
	db   $ec                                         ; $6557: $ec
	nop                                              ; $6558: $00
	db   $ec                                         ; $6559: $ec
	nop                                              ; $655a: $00
	xor  $00                                         ; $655b: $ee $00
	or   $00                                         ; $655d: $f6 $00
	ld   [$008b], sp                                 ; $655f: $08 $8b $00
	ld   [bc], a                                     ; $6562: $02
	rrca                                             ; $6563: $0f
	nop                                              ; $6564: $00
	rrca                                             ; $6565: $0f
	adc  e                                           ; $6566: $8b
	nop                                              ; $6567: $00
	ld   [bc], a                                     ; $6568: $02
	ldh  a, [rP1]                                    ; $6569: $f0 $00
	ldh  a, [$81]                                    ; $656b: $f0 $81
	nop                                              ; $656d: $00
	inc  c                                           ; $656e: $0c
	ld   [bc], a                                     ; $656f: $02
	nop                                              ; $6570: $00
	stop                                             ; $6571: $10 $00
	jr   jr_02e_6575                                 ; $6573: $18 $00

jr_02e_6575:
	ld   [$3d00], sp                                 ; $6575: $08 $00 $3d
	nop                                              ; $6578: $00
	ld   a, [hl-]                                    ; $6579: $3a
	nop                                              ; $657a: $00
	dec  b                                           ; $657b: $05
	add  e                                           ; $657c: $83
	nop                                              ; $657d: $00
	inc  c                                           ; $657e: $0c
	ld   b, b                                        ; $657f: $40
	nop                                              ; $6580: $00
	ret  nz                                          ; $6581: $c0

	nop                                              ; $6582: $00
	add  b                                           ; $6583: $80
	nop                                              ; $6584: $00
	ldh  [rP1], a                                    ; $6585: $e0 $00
	ldh  [rP1], a                                    ; $6587: $e0 $00
	ld   c, $00                                      ; $6589: $0e $00
	inc  c                                           ; $658b: $0c
	add  e                                           ; $658c: $83
	nop                                              ; $658d: $00
	ld   [bc], a                                     ; $658e: $02
	dec  c                                           ; $658f: $0d
	nop                                              ; $6590: $00
	dec  de                                          ; $6591: $1b
	add  c                                           ; $6592: $81
	nop                                              ; $6593: $00
	ld   [bc], a                                     ; $6594: $02
	dec  c                                           ; $6595: $0d
	nop                                              ; $6596: $00
	add  hl, de                                      ; $6597: $19
	add  c                                           ; $6598: $81
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	add  b                                           ; $659b: $80
	add  e                                           ; $659c: $83
	nop                                              ; $659d: $00
	inc  b                                           ; $659e: $04
	ld   b, b                                        ; $659f: $40
	nop                                              ; $65a0: $00
	ld   h, b                                        ; $65a1: $60
	nop                                              ; $65a2: $00
	and  b                                           ; $65a3: $a0
	adc  a                                           ; $65a4: $8f
	nop                                              ; $65a5: $00
	ld   [bc], a                                     ; $65a6: $02
	inc  de                                          ; $65a7: $13
	nop                                              ; $65a8: $00
	add  hl, hl                                      ; $65a9: $29
	add  c                                           ; $65aa: $81
	nop                                              ; $65ab: $00
	ld   [bc], a                                     ; $65ac: $02
	dec  l                                           ; $65ad: $2d
	nop                                              ; $65ae: $00
	rla                                              ; $65af: $17
	add  l                                           ; $65b0: $85
	nop                                              ; $65b1: $00
	ld   [$00c5], sp                                 ; $65b2: $08 $c5 $00
	add  b                                           ; $65b5: $80
	nop                                              ; $65b6: $00
	inc  bc                                          ; $65b7: $03
	nop                                              ; $65b8: $00
	and  [hl]                                        ; $65b9: $a6
	nop                                              ; $65ba: $00
	ldh  [$85], a                                    ; $65bb: $e0 $85
	nop                                              ; $65bd: $00
	inc  b                                           ; $65be: $04
	inc  sp                                          ; $65bf: $33
	nop                                              ; $65c0: $00
	dec  de                                          ; $65c1: $1b
	nop                                              ; $65c2: $00
	ld   l, b                                        ; $65c3: $68
	add  c                                           ; $65c4: $81
	nop                                              ; $65c5: $00
	nop                                              ; $65c6: $00
	ld   b, b                                        ; $65c7: $40
	add  l                                           ; $65c8: $85
	nop                                              ; $65c9: $00
	ld   [bc], a                                     ; $65ca: $02
	cp   $00                                         ; $65cb: $fe $00
	sbc  $81                                         ; $65cd: $de $81
	nop                                              ; $65cf: $00
	ld   [bc], a                                     ; $65d0: $02
	ld   b, b                                        ; $65d1: $40
	nop                                              ; $65d2: $00
	ld   h, b                                        ; $65d3: $60
	add  l                                           ; $65d4: $85
	nop                                              ; $65d5: $00
	ld   [bc], a                                     ; $65d6: $02
	stop                                             ; $65d7: $10 $00
	jr   nc, @-$7d                                   ; $65d9: $30 $81

	nop                                              ; $65db: $00
	ld   [bc], a                                     ; $65dc: $02
	ccf                                              ; $65dd: $3f
	nop                                              ; $65de: $00
	rra                                              ; $65df: $1f
	add  l                                           ; $65e0: $85
	nop                                              ; $65e1: $00
	ld   [bc], a                                     ; $65e2: $02
	rlca                                             ; $65e3: $07
	nop                                              ; $65e4: $00
	rrca                                             ; $65e5: $0f
	add  c                                           ; $65e6: $81
	nop                                              ; $65e7: $00
	ld   [bc], a                                     ; $65e8: $02
	rrca                                             ; $65e9: $0f
	nop                                              ; $65ea: $00
	rlca                                             ; $65eb: $07
	add  l                                           ; $65ec: $85
	nop                                              ; $65ed: $00
	ld   [$00c1], sp                                 ; $65ee: $08 $c1 $00
	add  e                                           ; $65f1: $83
	nop                                              ; $65f2: $00
	ld   b, b                                        ; $65f3: $40
	nop                                              ; $65f4: $00
	add  e                                           ; $65f5: $83
	nop                                              ; $65f6: $00
	add  c                                           ; $65f7: $81

jr_02e_65f8:
	adc  e                                           ; $65f8: $8b
	nop                                              ; $65f9: $00
	ld   [bc], a                                     ; $65fa: $02
	ldh  a, [rP1]                                    ; $65fb: $f0 $00
	ldh  a, [$85]                                    ; $65fd: $f0 $85
	nop                                              ; $65ff: $00
	ld   [$007c], sp                                 ; $6600: $08 $7c $00
	ld   hl, sp+$00                                  ; $6603: $f8 $00
	inc  b                                           ; $6605: $04

jr_02e_6606:
	nop                                              ; $6606: $00
	ld   hl, sp+$00                                  ; $6607: $f8 $00
	ld   a, b                                        ; $6609: $78
	add  l                                           ; $660a: $85
	nop                                              ; $660b: $00
	ld   h, $08                                      ; $660c: $26 $08
	nop                                              ; $660e: $00
	rlca                                             ; $660f: $07
	nop                                              ; $6610: $00
	rlca                                             ; $6611: $07
	nop                                              ; $6612: $00
	rlca                                             ; $6613: $07
	nop                                              ; $6614: $00
	rlca                                             ; $6615: $07
	nop                                              ; $6616: $00
	rlca                                             ; $6617: $07
	nop                                              ; $6618: $00
	dec  de                                          ; $6619: $1b
	nop                                              ; $661a: $00
	inc  bc                                          ; $661b: $03
	nop                                              ; $661c: $00
	rlca                                             ; $661d: $07
	nop                                              ; $661e: $00
	ldh  [rP1], a                                    ; $661f: $e0 $00
	ld   [hl], b                                     ; $6621: $70
	nop                                              ; $6622: $00
	ld   [hl], b                                     ; $6623: $70
	nop                                              ; $6624: $00
	ld   [hl], b                                     ; $6625: $70
	nop                                              ; $6626: $00
	ld   [hl], b                                     ; $6627: $70
	nop                                              ; $6628: $00
	ldh  [rP1], a                                    ; $6629: $e0 $00
	ldh  [rP1], a                                    ; $662b: $e0 $00
	push af                                          ; $662d: $f5
	nop                                              ; $662e: $00
	inc  c                                           ; $662f: $0c
	nop                                              ; $6630: $00
	jr   c, jr_02e_6633                              ; $6631: $38 $00

jr_02e_6633:
	ld   sp, $0081                                   ; $6633: $31 $81 $00
	ld   d, $1c                                      ; $6636: $16 $1c
	nop                                              ; $6638: $00
	inc  e                                           ; $6639: $1c
	nop                                              ; $663a: $00
	ccf                                              ; $663b: $3f
	nop                                              ; $663c: $00
	ccf                                              ; $663d: $3f
	nop                                              ; $663e: $00
	jr   nz, jr_02e_6641                             ; $663f: $20 $00

jr_02e_6641:
	ret  nz                                          ; $6641: $c0

	nop                                              ; $6642: $00
	ldh  [rP1], a                                    ; $6643: $e0 $00
	add  b                                           ; $6645: $80
	nop                                              ; $6646: $00
	jr   nz, jr_02e_6649                             ; $6647: $20 $00

jr_02e_6649:
	jr   nz, jr_02e_664b                             ; $6649: $20 $00

jr_02e_664b:
	ld   h, b                                        ; $664b: $60
	nop                                              ; $664c: $00
	ldh  [c], a                                      ; $664d: $e2
	add  c                                           ; $664e: $81
	nop                                              ; $664f: $00
	inc  c                                           ; $6650: $0c
	dec  e                                           ; $6651: $1d
	nop                                              ; $6652: $00
	rra                                              ; $6653: $1f
	nop                                              ; $6654: $00
	ld   [$0c00], sp                                 ; $6655: $08 $00 $0c
	nop                                              ; $6658: $00
	ld   bc, $0400                                   ; $6659: $01 $00 $04
	nop                                              ; $665c: $00
	ld   bc, $0081                                   ; $665d: $01 $81 $00
	ld   [bc], a                                     ; $6660: $02
	ret  nz                                          ; $6661: $c0

	nop                                              ; $6662: $00
	ld   b, b                                        ; $6663: $40
	add  e                                           ; $6664: $83
	nop                                              ; $6665: $00
	nop                                              ; $6666: $00
	add  b                                           ; $6667: $80
	or   e                                           ; $6668: $b3
	nop                                              ; $6669: $00
	nop                                              ; $666a: $00
	ld   [$0081], sp                                 ; $666b: $08 $81 $00
	nop                                              ; $666e: $00
	db   $10                                         ; $666f: $10
	add  c                                           ; $6670: $81
	nop                                              ; $6671: $00
	ld   [bc], a                                     ; $6672: $02
	inc  b                                           ; $6673: $04
	nop                                              ; $6674: $00
	jr   c, jr_02e_65f8                              ; $6675: $38 $81

	nop                                              ; $6677: $00
	inc  b                                           ; $6678: $04
	inc  h                                           ; $6679: $24
	nop                                              ; $667a: $00
	jr   c, jr_02e_667d                              ; $667b: $38 $00

jr_02e_667d:
	inc  e                                           ; $667d: $1c
	add  c                                           ; $667e: $81
	nop                                              ; $667f: $00
	ld   [bc], a                                     ; $6680: $02
	jr   jr_02e_6683                                 ; $6681: $18 $00

jr_02e_6683:
	jr   jr_02e_6606                                 ; $6683: $18 $81

	nop                                              ; $6685: $00
	ld   [bc], a                                     ; $6686: $02
	jr   jr_02e_6689                                 ; $6687: $18 $00

jr_02e_6689:
	inc  a                                           ; $6689: $3c
	sub  e                                           ; $668a: $93
	nop                                              ; $668b: $00
	ld   a, [bc]                                     ; $668c: $0a
	rra                                              ; $668d: $1f
	nop                                              ; $668e: $00
	stop                                             ; $668f: $10 $00
	rlca                                             ; $6691: $07
	nop                                              ; $6692: $00
	rlca                                             ; $6693: $07
	nop                                              ; $6694: $00
	rlca                                             ; $6695: $07
	nop                                              ; $6696: $00
	ld   [$0083], sp                                 ; $6697: $08 $83 $00
	ld   a, [bc]                                     ; $669a: $0a
	di                                               ; $669b: $f3
	nop                                              ; $669c: $00
	inc  de                                          ; $669d: $13
	nop                                              ; $669e: $00
	ret  nz                                          ; $669f: $c0

	nop                                              ; $66a0: $00
	pop  bc                                          ; $66a1: $c1
	nop                                              ; $66a2: $00
	ld   h, e                                        ; $66a3: $63
	nop                                              ; $66a4: $00
	add  d                                           ; $66a5: $82
	add  e                                           ; $66a6: $83
	nop                                              ; $66a7: $00

jr_02e_66a8:
	ld   a, [bc]                                     ; $66a8: $0a
	ldh  [rP1], a                                    ; $66a9: $e0 $00
	and  b                                           ; $66ab: $a0
	nop                                              ; $66ac: $00
	ret  nz                                          ; $66ad: $c0

	nop                                              ; $66ae: $00
	ld   [hl], b                                     ; $66af: $70
	nop                                              ; $66b0: $00
	ld   hl, sp+$00                                  ; $66b1: $f8 $00
	ld   [$008f], sp                                 ; $66b3: $08 $8f $00
	ld   c, $01                                      ; $66b6: $0e $01
	nop                                              ; $66b8: $00
	inc  bc                                          ; $66b9: $03
	nop                                              ; $66ba: $00
	ld   b, $00                                      ; $66bb: $06 $00
	rra                                              ; $66bd: $1f
	nop                                              ; $66be: $00
	dec  de                                          ; $66bf: $1b
	nop                                              ; $66c0: $00
	rrca                                             ; $66c1: $0f
	nop                                              ; $66c2: $00
	rlca                                             ; $66c3: $07
	nop                                              ; $66c4: $00
	ld   [$0081], sp                                 ; $66c5: $08 $81 $00
	inc  e                                           ; $66c8: $1c
	add  b                                           ; $66c9: $80
	nop                                              ; $66ca: $00
	ret  nz                                          ; $66cb: $c0

	nop                                              ; $66cc: $00
	ldh  a, [rP1]                                    ; $66cd: $f0 $00
	or   b                                           ; $66cf: $b0
	nop                                              ; $66d0: $00
	ldh  [rP1], a                                    ; $66d1: $e0 $00
	ret  nz                                          ; $66d3: $c0

	nop                                              ; $66d4: $00
	inc  h                                           ; $66d5: $24
	nop                                              ; $66d6: $00
	ld   [de], a                                     ; $66d7: $12
	nop                                              ; $66d8: $00
	ld   [bc], a                                     ; $66d9: $02
	nop                                              ; $66da: $00
	inc  bc                                          ; $66db: $03
	nop                                              ; $66dc: $00
	dec  hl                                          ; $66dd: $2b
	nop                                              ; $66de: $00
	inc  a                                           ; $66df: $3c
	nop                                              ; $66e0: $00
	inc  de                                          ; $66e1: $13
	nop                                              ; $66e2: $00
	add  hl, sp                                      ; $66e3: $39
	nop                                              ; $66e4: $00
	xor  d                                           ; $66e5: $aa
	add  c                                           ; $66e6: $81
	nop                                              ; $66e7: $00
	ld   d, $c0                                      ; $66e8: $16 $c0
	nop                                              ; $66ea: $00
	jr   nz, jr_02e_66ed                             ; $66eb: $20 $00

jr_02e_66ed:
	ld   b, b                                        ; $66ed: $40
	nop                                              ; $66ee: $00
	jr   nz, jr_02e_66f1                             ; $66ef: $20 $00

jr_02e_66f1:
	ret  nz                                          ; $66f1: $c0

	nop                                              ; $66f2: $00
	add  b                                           ; $66f3: $80
	nop                                              ; $66f4: $00
	ld   a, a                                        ; $66f5: $7f
	nop                                              ; $66f6: $00
	ccf                                              ; $66f7: $3f
	nop                                              ; $66f8: $00
	rra                                              ; $66f9: $1f
	nop                                              ; $66fa: $00
	ld   e, $00                                      ; $66fb: $1e $00
	inc  bc                                          ; $66fd: $03
	nop                                              ; $66fe: $00
	ld   b, $83                                      ; $66ff: $06 $83
	nop                                              ; $6701: $00
	ld   b, $e4                                      ; $6702: $06 $e4
	nop                                              ; $6704: $00
	ldh  [rP1], a                                    ; $6705: $e0 $00
	ldh  [rP1], a                                    ; $6707: $e0 $00
	ldh  [$e7], a                                    ; $6709: $e0 $e7
	nop                                              ; $670b: $00
	ld   [$000f], sp                                 ; $670c: $08 $0f $00
	rlca                                             ; $670f: $07
	nop                                              ; $6710: $00
	ld   bc, $1f00                                   ; $6711: $01 $00 $1f
	nop                                              ; $6714: $00
	ld   d, $85                                      ; $6715: $16 $85
	nop                                              ; $6717: $00
	ld   [$00f4], sp                                 ; $6718: $08 $f4 $00
	ld   [hl], h                                     ; $671b: $74
	nop                                              ; $671c: $00
	pop  bc                                          ; $671d: $c1
	nop                                              ; $671e: $00
	ld   [hl], c                                     ; $671f: $71
	nop                                              ; $6720: $00
	jr   nc, jr_02e_66a8                             ; $6721: $30 $85

	nop                                              ; $6723: $00
	ld   [$0008], sp                                 ; $6724: $08 $08 $00
	ret  nz                                          ; $6727: $c0

	nop                                              ; $6728: $00
	ld   hl, sp+$00                                  ; $6729: $f8 $00
	ret  nc                                          ; $672b: $d0

	nop                                              ; $672c: $00
	ldh  [$95], a                                    ; $672d: $e0 $95
	nop                                              ; $672f: $00
	inc  b                                           ; $6730: $04
	ld   [$0700], sp                                 ; $6731: $08 $00 $07
	nop                                              ; $6734: $00
	rrca                                             ; $6735: $0f
	adc  c                                           ; $6736: $89
	nop                                              ; $6737: $00
	inc  b                                           ; $6738: $04
	jr   nz, jr_02e_673b                             ; $6739: $20 $00

jr_02e_673b:
	ret  nz                                          ; $673b: $c0

	nop                                              ; $673c: $00
	ldh  [$89], a                                    ; $673d: $e0 $89
	nop                                              ; $673f: $00
	ld   [$0012], sp                                 ; $6740: $08 $12 $00
	ld   sp, $1900                                   ; $6743: $31 $00 $19
	nop                                              ; $6746: $00
	add  hl, hl                                      ; $6747: $29
	nop                                              ; $6748: $00
	add  hl, hl                                      ; $6749: $29
	add  c                                           ; $674a: $81
	nop                                              ; $674b: $00
	inc  c                                           ; $674c: $0c
	dec  l                                           ; $674d: $2d
	nop                                              ; $674e: $00
	rla                                              ; $674f: $17
	nop                                              ; $6750: $00
	ld   b, b                                        ; $6751: $40
	nop                                              ; $6752: $00
	add  b                                           ; $6753: $80
	nop                                              ; $6754: $00
	add  b                                           ; $6755: $80
	nop                                              ; $6756: $00
	add  b                                           ; $6757: $80
	nop                                              ; $6758: $00
	add  b                                           ; $6759: $80
	add  c                                           ; $675a: $81
	nop                                              ; $675b: $00
	ld   [$00a0], sp                                 ; $675c: $08 $a0 $00
	ldh  [rP1], a                                    ; $675f: $e0 $00
	ld   [bc], a                                     ; $6761: $02

jr_02e_6762:
	nop                                              ; $6762: $00
	inc  bc                                          ; $6763: $03
	nop                                              ; $6764: $00
	ld   bc, $008b                                   ; $6765: $01 $8b $00
	ld   [bc], a                                     ; $6768: $02
	add  b                                           ; $6769: $80
	nop                                              ; $676a: $00
	add  b                                           ; $676b: $80
	or   c                                           ; $676c: $b1
	nop                                              ; $676d: $00
	ld   [$0030], sp                                 ; $676e: $08 $30 $00
	ld   a, b                                        ; $6771: $78
	nop                                              ; $6772: $00
	add  hl, bc                                      ; $6773: $09
	nop                                              ; $6774: $00
	ld   [hl], e                                     ; $6775: $73
	nop                                              ; $6776: $00
	ld   [hl-], a                                    ; $6777: $32
	adc  c                                           ; $6778: $89
	nop                                              ; $6779: $00
	inc  b                                           ; $677a: $04
	sub  d                                           ; $677b: $92
	nop                                              ; $677c: $00
	ret  nz                                          ; $677d: $c0

	nop                                              ; $677e: $00
	ld   d, d                                        ; $677f: $52
	adc  c                                           ; $6780: $89
	nop                                              ; $6781: $00
	inc  b                                           ; $6782: $04
	db   $e3                                         ; $6783: $e3
	nop                                              ; $6784: $00
	ld   [hl], a                                     ; $6785: $77
	nop                                              ; $6786: $00
	sub  h                                           ; $6787: $94
	add  l                                           ; $6788: $85
	nop                                              ; $6789: $00
	ld   [bc], a                                     ; $678a: $02
	cp   h                                           ; $678b: $bc
	nop                                              ; $678c: $00
	inc  l                                           ; $678d: $2c
	add  c                                           ; $678e: $81
	nop                                              ; $678f: $00
	ld   [bc], a                                     ; $6790: $02
	ld   bc, $9100                                   ; $6791: $01 $00 $91
	adc  c                                           ; $6794: $89
	nop                                              ; $6795: $00
	inc  b                                           ; $6796: $04
	rst  ToBoot                                         ; $6797: $c7
	nop                                              ; $6798: $00
	rst  $28                                         ; $6799: $ef
	nop                                              ; $679a: $00
	jr   z, @-$79                                    ; $679b: $28 $85

	nop                                              ; $679d: $00
	nop                                              ; $679e: $00
	jr   nz, @-$7d                                   ; $679f: $20 $81

	nop                                              ; $67a1: $00
	inc  b                                           ; $67a2: $04
	ld   e, b                                        ; $67a3: $58
	nop                                              ; $67a4: $00
	ld   e, b                                        ; $67a5: $58
	nop                                              ; $67a6: $00
	jr   nz, @+$01                                   ; $67a7: $20 $ff

	nop                                              ; $67a9: $00
	sbc  h                                           ; $67aa: $9c
	nop                                              ; $67ab: $00
	ld   b, $0a                                      ; $67ac: $06 $0a
	nop                                              ; $67ae: $00
	ld   b, b                                        ; $67af: $40
	nop                                              ; $67b0: $00
	ld   a, e                                        ; $67b1: $7b
	nop                                              ; $67b2: $00
	ld   sp, $0087                                   ; $67b3: $31 $87 $00
	nop                                              ; $67b6: $00
	ld   d, d                                        ; $67b7: $52
	add  c                                           ; $67b8: $81
	nop                                              ; $67b9: $00
	ld   [bc], a                                     ; $67ba: $02
	sbc  $00                                         ; $67bb: $de $00
	adc  h                                           ; $67bd: $8c
	add  a                                           ; $67be: $87
	nop                                              ; $67bf: $00
	nop                                              ; $67c0: $00
	sub  h                                           ; $67c1: $94
	add  c                                           ; $67c2: $81
	nop                                              ; $67c3: $00
	ld   [bc], a                                     ; $67c4: $02
	rlca                                             ; $67c5: $07
	nop                                              ; $67c6: $00
	sub  e                                           ; $67c7: $93
	add  a                                           ; $67c8: $87
	nop                                              ; $67c9: $00
	nop                                              ; $67ca: $00
	sub  c                                           ; $67cb: $91
	add  c                                           ; $67cc: $81
	nop                                              ; $67cd: $00
	ld   [bc], a                                     ; $67ce: $02
	ld   bc, $9000                                   ; $67cf: $01 $00 $90
	add  a                                           ; $67d2: $87
	nop                                              ; $67d3: $00
	ld   b, $e6                                      ; $67d4: $06 $e6
	nop                                              ; $67d6: $00
	rst  $20                                         ; $67d7: $e7
	nop                                              ; $67d8: $00
	rst  $28                                         ; $67d9: $ef
	nop                                              ; $67da: $00
	xor  $87                                         ; $67db: $ee $87
	nop                                              ; $67dd: $00
	nop                                              ; $67de: $00
	jr   nz, jr_02e_6762                             ; $67df: $20 $81

	nop                                              ; $67e1: $00
	ld   [bc], a                                     ; $67e2: $02
	stop                                             ; $67e3: $10 $00
	jr   nc, @+$01                                   ; $67e5: $30 $ff

	nop                                              ; $67e7: $00
	rst  $38                                         ; $67e8: $ff
	nop                                              ; $67e9: $00
	rst  $38                                         ; $67ea: $ff
	nop                                              ; $67eb: $00
	sub  h                                           ; $67ec: $94
	nop                                              ; $67ed: $00
	ldh  [c], a                                      ; $67ee: $e2
	ld   bc, $6001                                   ; $67ef: $01 $01 $60
	nop                                              ; $67f2: $00
	add  b                                           ; $67f3: $80
	add  b                                           ; $67f4: $80
	add  b                                           ; $67f5: $80
	nop                                              ; $67f6: $00
	add  b                                           ; $67f7: $80
	add  b                                           ; $67f8: $80
	add  [hl]                                        ; $67f9: $86
	nop                                              ; $67fa: $00
	nop                                              ; $67fb: $00
	ld   h, b                                        ; $67fc: $60
	adc  l                                           ; $67fd: $8d
	ld   bc, $d501                                   ; $67fe: $01 $01 $d5
	rst  $10                                         ; $6801: $d7
	add  b                                           ; $6802: $80
	db   $eb                                         ; $6803: $eb
	add  b                                           ; $6804: $80
	ld   [hl], a                                     ; $6805: $77
	add  b                                           ; $6806: $80
	dec  hl                                          ; $6807: $2b
	add  b                                           ; $6808: $80
	rla                                              ; $6809: $17
	rlca                                             ; $680a: $07
	adc  c                                           ; $680b: $89
	adc  e                                           ; $680c: $8b
	push bc                                          ; $680d: $c5
	rst  ToBoot                                         ; $680e: $c7
	ld   h, c                                        ; $680f: $61
	ld   h, e                                        ; $6810: $63
	ld   b, b                                        ; $6811: $40
	add  c                                           ; $6812: $81
	add  b                                           ; $6813: $80
	add  b                                           ; $6814: $80
	add  b                                           ; $6815: $80
	add  c                                           ; $6816: $81
	adc  b                                           ; $6817: $88
	add  b                                           ; $6818: $80
	inc  bc                                          ; $6819: $03
	ld   [$f9f4], sp                                 ; $681a: $08 $f4 $f9
	ld   a, [$f580]                                  ; $681d: $fa $80 $f5
	nop                                              ; $6820: $00
	ret  nz                                          ; $6821: $c0

	add  c                                           ; $6822: $81
	nop                                              ; $6823: $00
	ld   bc, $0080                                   ; $6824: $01 $80 $00
	add  b                                           ; $6827: $80
	inc  bc                                          ; $6828: $03
	ld   [bc], a                                     ; $6829: $02
	add  e                                           ; $682a: $83
	inc  bc                                          ; $682b: $03
	rst  $38                                         ; $682c: $ff
	add  c                                           ; $682d: $81
	ld   bc, $8102                                   ; $682e: $01 $02 $81
	ld   b, c                                        ; $6831: $41
	ld   hl, $0181                                   ; $6832: $21 $81 $01
	ld   [bc], a                                     ; $6835: $02
	pop  hl                                          ; $6836: $e1
	add  c                                           ; $6837: $81
	ld   bc, $8181                                   ; $6838: $01 $81 $81
	ld   bc, $f40a                                   ; $683b: $01 $0a $f4
	add  b                                           ; $683e: $80
	add  sp, -$80                                    ; $683f: $e8 $80
	call nc, $0082                                   ; $6841: $d4 $82 $00
	nop                                              ; $6844: $00
	db   $fc                                         ; $6845: $fc
	add  b                                           ; $6846: $80
	nop                                              ; $6847: $00
	nop                                              ; $6848: $00
	db   $fc                                         ; $6849: $fc
	add  b                                           ; $684a: $80
	nop                                              ; $684b: $00
	nop                                              ; $684c: $00
	cp   a                                           ; $684d: $bf
	adc  l                                           ; $684e: $8d
	add  b                                           ; $684f: $80
	nop                                              ; $6850: $00
	ccf                                              ; $6851: $3f
	xor  [hl]                                        ; $6852: $ae
	rst  $38                                         ; $6853: $ff
	dec  b                                           ; $6854: $05
	ld   hl, sp-$06                                  ; $6855: $f8 $fa
	cp   $fd                                         ; $6857: $fe $fd
	rst  $38                                         ; $6859: $ff
	cp   $87                                         ; $685a: $fe $87
	rst  $38                                         ; $685c: $ff
	cp   [hl]                                        ; $685d: $be
	nop                                              ; $685e: $00
	add  b                                           ; $685f: $80
	ld   d, l                                        ; $6860: $55
	add  b                                           ; $6861: $80
	xor  d                                           ; $6862: $aa
	add  b                                           ; $6863: $80
	ld   d, l                                        ; $6864: $55
	add  b                                           ; $6865: $80
	xor  d                                           ; $6866: $aa
	add  b                                           ; $6867: $80
	ld   d, l                                        ; $6868: $55
	add  b                                           ; $6869: $80
	xor  d                                           ; $686a: $aa
	add  b                                           ; $686b: $80
	ld   d, h                                        ; $686c: $54
	add  b                                           ; $686d: $80
	xor  b                                           ; $686e: $a8
	nop                                              ; $686f: $00
	sub  h                                           ; $6870: $94
	adc  l                                           ; $6871: $8d
	ld   a, e                                        ; $6872: $7b
	nop                                              ; $6873: $00
	push bc                                          ; $6874: $c5
	adc  l                                           ; $6875: $8d
	rst  JumpTable                                         ; $6876: $df
	nop                                              ; $6877: $00
	sbc  d                                           ; $6878: $9a
	adc  l                                           ; $6879: $8d
	sbc  h                                           ; $687a: $9c
	ld   bc, $ff0c                                   ; $687b: $01 $0c $ff
	add  b                                           ; $687e: $80
	cp   $80                                         ; $687f: $fe $80
	db   $fd                                         ; $6881: $fd
	add  b                                           ; $6882: $80
	ld   a, [$f580]                                  ; $6883: $fa $80 $f5
	add  b                                           ; $6886: $80
	ld   [$d580], a                                  ; $6887: $ea $80 $d5
	add  b                                           ; $688a: $80
	xor  d                                           ; $688b: $aa
	add  b                                           ; $688c: $80
	push de                                          ; $688d: $d5
	add  b                                           ; $688e: $80
	xor  d                                           ; $688f: $aa
	add  b                                           ; $6890: $80
	ld   d, l                                        ; $6891: $55
	add  b                                           ; $6892: $80
	xor  d                                           ; $6893: $aa
	add  b                                           ; $6894: $80
	ld   d, b                                        ; $6895: $50
	add  b                                           ; $6896: $80
	and  b                                           ; $6897: $a0
	add  b                                           ; $6898: $80
	rst  $38                                         ; $6899: $ff
	add  b                                           ; $689a: $80
	add  b                                           ; $689b: $80
	add  b                                           ; $689c: $80
	ld   d, h                                        ; $689d: $54
	add  b                                           ; $689e: $80
	and  b                                           ; $689f: $a0
	add  [hl]                                        ; $68a0: $86
	nop                                              ; $68a1: $00
	add  b                                           ; $68a2: $80
	cp   $80                                         ; $68a3: $fe $80
	ld   [bc], a                                     ; $68a5: $02
	nop                                              ; $68a6: $00
	rrca                                             ; $68a7: $0f
	adc  l                                           ; $68a8: $8d
	ld   [$f101], sp                                 ; $68a9: $08 $01 $f1
	add  hl, bc                                      ; $68ac: $09
	add  d                                           ; $68ad: $82
	dec  bc                                          ; $68ae: $0b
	add  b                                           ; $68af: $80
	inc  de                                          ; $68b0: $13
	add  d                                           ; $68b1: $82
	rla                                              ; $68b2: $17
	add  b                                           ; $68b3: $80
	ld   d, $80                                      ; $68b4: $16 $80
	ld   h, $81                                      ; $68b6: $26 $81
	rst  $20                                         ; $68b8: $e7
	nop                                              ; $68b9: $00
	db   $e4                                         ; $68ba: $e4
	add  b                                           ; $68bb: $80
	db   $ec                                         ; $68bc: $ec
	add  e                                           ; $68bd: $83
	ld   c, h                                        ; $68be: $4c
	rlca                                             ; $68bf: $07
	ld   c, b                                        ; $68c0: $48
	rst  JumpTable                                         ; $68c1: $df
	ret  c                                           ; $68c2: $d8

	rst  JumpTable                                         ; $68c3: $df
	ret  c                                           ; $68c4: $d8

	call $cfca                                       ; $68c5: $cd $ca $cf
	add  a                                           ; $68c8: $87
	nop                                              ; $68c9: $00
	dec  b                                           ; $68ca: $05
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68cb: $cf
	nop                                              ; $68cc: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $68cd: $cf
	nop                                              ; $68ce: $00
	call nc, $841b                                   ; $68cf: $d4 $1b $84
	db   $db                                         ; $68d2: $db
	add  c                                           ; $68d3: $81
	reti                                             ; $68d4: $d9


	dec  b                                           ; $68d5: $05
	ld   e, c                                        ; $68d6: $59
	db   $ed                                         ; $68d7: $ed
	ld   l, l                                        ; $68d8: $6d
	db   $ed                                         ; $68d9: $ed
	ld   l, l                                        ; $68da: $6d
	db   $10                                         ; $68db: $10
	add  c                                           ; $68dc: $81
	sub  b                                           ; $68dd: $90
	add  h                                           ; $68de: $84
	ret  z                                           ; $68df: $c8

	add  b                                           ; $68e0: $80
	ld   c, b                                        ; $68e1: $48
	add  b                                           ; $68e2: $80
	ld   l, b                                        ; $68e3: $68
	add  b                                           ; $68e4: $80
	ld   h, h                                        ; $68e5: $64
	ld   bc, $552a                                   ; $68e6: $01 $2a $55
	add  b                                           ; $68e9: $80
	ld   b, d                                        ; $68ea: $42
	adc  d                                           ; $68eb: $8a
	ld   b, b                                        ; $68ec: $40
	ld   bc, $55d5                                   ; $68ed: $01 $d5 $55
	add  b                                           ; $68f0: $80
	xor  d                                           ; $68f1: $aa
	add  b                                           ; $68f2: $80
	ld   d, l                                        ; $68f3: $55
	add  b                                           ; $68f4: $80
	ld   a, [hl+]                                    ; $68f5: $2a
	add  b                                           ; $68f6: $80
	dec  b                                           ; $68f7: $05
	add  b                                           ; $68f8: $80
	ld   [bc], a                                     ; $68f9: $02
	add  b                                           ; $68fa: $80
	ld   bc, $0080                                   ; $68fb: $01 $80 $00
	add  d                                           ; $68fe: $82
	rst  $38                                         ; $68ff: $ff
	add  b                                           ; $6900: $80
	ld   e, a                                        ; $6901: $5f
	add  b                                           ; $6902: $80
	xor  a                                           ; $6903: $af
	add  b                                           ; $6904: $80
	ld   d, a                                        ; $6905: $57
	add  b                                           ; $6906: $80
	xor  e                                           ; $6907: $ab
	add  b                                           ; $6908: $80
	ld   d, l                                        ; $6909: $55
	add  b                                           ; $690a: $80
	xor  d                                           ; $690b: $aa
	add  b                                           ; $690c: $80
	ld   d, b                                        ; $690d: $50
	add  b                                           ; $690e: $80
	and  b                                           ; $690f: $a0
	add  b                                           ; $6910: $80
	ld   d, b                                        ; $6911: $50
	add  b                                           ; $6912: $80
	and  b                                           ; $6913: $a0
	add  b                                           ; $6914: $80
	ld   b, b                                        ; $6915: $40
	add  b                                           ; $6916: $80

jr_02e_6917:
	add  b                                           ; $6917: $80
	add  b                                           ; $6918: $80
	ld   b, b                                        ; $6919: $40
	add  b                                           ; $691a: $80

jr_02e_691b:
	add  b                                           ; $691b: $80
	nop                                              ; $691c: $00
	sub  h                                           ; $691d: $94
	adc  l                                           ; $691e: $8d

jr_02e_691f:
	ld   a, e                                        ; $691f: $7b
	nop                                              ; $6920: $00
	push bc                                          ; $6921: $c5
	adc  l                                           ; $6922: $8d
	rst  JumpTable                                         ; $6923: $df
	nop                                              ; $6924: $00
	sbc  d                                           ; $6925: $9a
	add  c                                           ; $6926: $81
	sbc  h                                           ; $6927: $9c
	add  b                                           ; $6928: $80
	sbc  b                                           ; $6929: $98
	add  b                                           ; $692a: $80
	sbc  h                                           ; $692b: $9c
	add  b                                           ; $692c: $80
	sbc  b                                           ; $692d: $98
	add  b                                           ; $692e: $80
	sbc  h                                           ; $692f: $9c
	add  b                                           ; $6930: $80
	sbc  b                                           ; $6931: $98
	add  b                                           ; $6932: $80
	sbc  h                                           ; $6933: $9c
	ld   bc, $d427                                   ; $6934: $01 $27 $d4
	add  b                                           ; $6937: $80
	xor  d                                           ; $6938: $aa
	add  b                                           ; $6939: $80
	ld   d, h                                        ; $693a: $54
	add  b                                           ; $693b: $80
	xor  b                                           ; $693c: $a8
	add  b                                           ; $693d: $80
	ld   d, b                                        ; $693e: $50
	add  b                                           ; $693f: $80
	and  b                                           ; $6940: $a0
	add  b                                           ; $6941: $80
	ld   b, b                                        ; $6942: $40
	add  b                                           ; $6943: $80
	add  b                                           ; $6944: $80
	add  b                                           ; $6945: $80
	cp   a                                           ; $6946: $bf
	add  c                                           ; $6947: $81
	cp   [hl]                                        ; $6948: $be
	ld   [$a6bf], sp                                 ; $6949: $08 $bf $a6
	and  l                                           ; $694c: $a5
	cp   l                                           ; $694d: $bd
	cp   c                                           ; $694e: $b9
	or   d                                           ; $694f: $b2
	cp   e                                           ; $6950: $bb
	sub  a                                           ; $6951: $97
	and  a                                           ; $6952: $a7
	add  b                                           ; $6953: $80
	cp   a                                           ; $6954: $bf
	ld   bc, $fac5                                   ; $6955: $01 $c5 $fa
	add  b                                           ; $6958: $80
	cp   d                                           ; $6959: $ba
	dec  b                                           ; $695a: $05
	sbc  d                                           ; $695b: $9a
	ld   a, [$ba2a]                                  ; $695c: $fa $2a $ba
	and  d                                           ; $695f: $a2
	xor  d                                           ; $6960: $aa
	add  b                                           ; $6961: $80
	add  d                                           ; $6962: $82
	add  b                                           ; $6963: $80
	ld   [bc], a                                     ; $6964: $02
	add  b                                           ; $6965: $80
	ld   a, [$f701]                                  ; $6966: $fa $01 $f7
	ld   [$0980], sp                                 ; $6969: $08 $80 $09
	add  b                                           ; $696c: $80
	ld   [$0980], sp                                 ; $696d: $08 $80 $09
	add  b                                           ; $6970: $80
	ld   [$0984], sp                                 ; $6971: $08 $84 $09
	nop                                              ; $6974: $00
	sub  $81                                         ; $6975: $d6 $81
	ld   l, $80                                      ; $6977: $2e $80
	ld   c, h                                        ; $6979: $4c
	add  b                                           ; $697a: $80
	ld   e, h                                        ; $697b: $5c
	add  b                                           ; $697c: $80
	ld   e, l                                        ; $697d: $5d
	add  b                                           ; $697e: $80
	sbc  c                                           ; $697f: $99
	add  b                                           ; $6980: $80
	cp   c                                           ; $6981: $b9
	add  b                                           ; $6982: $80
	inc  sp                                          ; $6983: $33
	ld   bc, $d8df                                   ; $6984: $01 $df $d8
	add  c                                           ; $6987: $81
	cp   b                                           ; $6988: $b8
	add  e                                           ; $6989: $83
	or   b                                           ; $698a: $b0
	ld   bc, $6070                                   ; $698b: $01 $70 $60
	add  d                                           ; $698e: $82

jr_02e_698f:
	ldh  [rP1], a                                    ; $698f: $e0 $00
	ret  nc                                          ; $6991: $d0

	add  c                                           ; $6992: $81
	nop                                              ; $6993: $00
	add  b                                           ; $6994: $80
	jr   nz, jr_02e_6917                             ; $6995: $20 $80

	db   $10                                         ; $6997: $10
	add  b                                           ; $6998: $80
	jr   nz, jr_02e_691b                             ; $6999: $20 $80

	db   $10                                         ; $699b: $10
	add  b                                           ; $699c: $80
	jr   nz, jr_02e_691f                             ; $699d: $20 $80

	jr   nc, jr_02e_69a2                             ; $699f: $30 $01

	ld   [hl+], a                                    ; $69a1: $22

jr_02e_69a2:
	ld   l, l                                        ; $69a2: $6d
	add  b                                           ; $69a3: $80
	ld   l, h                                        ; $69a4: $6c
	nop                                              ; $69a5: $00
	ld   a, [hl]                                     ; $69a6: $7e
	add  c                                           ; $69a7: $81
	ld   a, $80                                      ; $69a8: $3e $80
	ld   [hl], $01                                   ; $69aa: $36 $01
	scf                                              ; $69ac: $37
	rla                                              ; $69ad: $17
	add  d                                           ; $69ae: $82
	dec  de                                          ; $69af: $1b
	nop                                              ; $69b0: $00
	ld   b, h                                        ; $69b1: $44
	add  c                                           ; $69b2: $81
	and  h                                           ; $69b3: $a4
	add  b                                           ; $69b4: $80
	or   h                                           ; $69b5: $b4
	add  d                                           ; $69b6: $82
	jp   nc, $e880                                   ; $69b7: $d2 $80 $e8

	add  b                                           ; $69ba: $80
	inc  h                                           ; $69bb: $24
	add  b                                           ; $69bc: $80
	or   h                                           ; $69bd: $b4
	nop                                              ; $69be: $00
	ccf                                              ; $69bf: $3f
	adc  l                                           ; $69c0: $8d
	ld   b, b                                        ; $69c1: $40
	nop                                              ; $69c2: $00
	add  b                                           ; $69c3: $80
	adc  l                                           ; $69c4: $8d
	nop                                              ; $69c5: $00
	add  b                                           ; $69c6: $80
	ld   d, l                                        ; $69c7: $55
	add  b                                           ; $69c8: $80
	ld   a, [hl+]                                    ; $69c9: $2a
	add  b                                           ; $69ca: $80
	dec  d                                           ; $69cb: $15
	add  b                                           ; $69cc: $80
	ld   a, [bc]                                     ; $69cd: $0a
	add  b                                           ; $69ce: $80
	dec  b                                           ; $69cf: $05

jr_02e_69d0:
	add  b                                           ; $69d0: $80
	ld   [bc], a                                     ; $69d1: $02
	add  b                                           ; $69d2: $80
	dec  b                                           ; $69d3: $05
	add  b                                           ; $69d4: $80
	ld   [bc], a                                     ; $69d5: $02
	add  b                                           ; $69d6: $80
	nop                                              ; $69d7: $00
	add  b                                           ; $69d8: $80
	add  b                                           ; $69d9: $80
	adc  d                                           ; $69da: $8a
	nop                                              ; $69db: $00
	nop                                              ; $69dc: $00
	sub  h                                           ; $69dd: $94
	adc  l                                           ; $69de: $8d
	ld   a, e                                        ; $69df: $7b
	nop                                              ; $69e0: $00
	push bc                                          ; $69e1: $c5
	add  b                                           ; $69e2: $80
	rst  JumpTable                                         ; $69e3: $df
	nop                                              ; $69e4: $00
	push de                                          ; $69e5: $d5
	add  h                                           ; $69e6: $84
	jp   c, $d581                                    ; $69e7: $da $81 $d5

	add  c                                           ; $69ea: $81
	rst  JumpTable                                         ; $69eb: $df
	ld   bc, $989e                                   ; $69ec: $01 $9e $98
	add  b                                           ; $69ef: $80
	sbc  h                                           ; $69f0: $9c
	adc  d                                           ; $69f1: $8a
	sbc  b                                           ; $69f2: $98
	ld   bc, $40b3                                   ; $69f3: $01 $b3 $40
	add  b                                           ; $69f6: $80
	add  b                                           ; $69f7: $80
	adc  d                                           ; $69f8: $8a
	nop                                              ; $69f9: $00
	nop                                              ; $69fa: $00
	add  b                                           ; $69fb: $80
	add  b                                           ; $69fc: $80
	cp   a                                           ; $69fd: $bf
	nop                                              ; $69fe: $00
	add  b                                           ; $69ff: $80
	add  b                                           ; $6a00: $80
	sbc  a                                           ; $6a01: $9f
	ld   a, [bc]                                     ; $6a02: $0a
	xor  d                                           ; $6a03: $aa
	add  b                                           ; $6a04: $80
	adc  c                                           ; $6a05: $89
	and  e                                           ; $6a06: $a3
	xor  d                                           ; $6a07: $aa
	add  b                                           ; $6a08: $80
	sub  a                                           ; $6a09: $97
	cp   l                                           ; $6a0a: $bd
	xor  d                                           ; $6a0b: $aa
	add  b                                           ; $6a0c: $80
	jr   z, jr_02e_698f                              ; $6a0d: $28 $80

	ld   a, [$0200]                                  ; $6a0f: $fa $00 $02
	add  c                                           ; $6a12: $81
	xor  d                                           ; $6a13: $aa
	ld   a, [bc]                                     ; $6a14: $0a
	ld   [bc], a                                     ; $6a15: $02
	ld   d, d                                        ; $6a16: $52
	ld   a, [$02aa]                                  ; $6a17: $fa $aa $02
	ld   c, d                                        ; $6a1a: $4a
	ldh  [c], a                                      ; $6a1b: $e2
	xor  d                                           ; $6a1c: $aa
	ld   [bc], a                                     ; $6a1d: $02
	and  [hl]                                        ; $6a1e: $a6
	add  hl, bc                                      ; $6a1f: $09
	add  [hl]                                        ; $6a20: $86
	ld   [$0982], sp                                 ; $6a21: $08 $82 $09
	add  b                                           ; $6a24: $80
	ld   [wGameResultsReturnState], sp                                 ; $6a25: $08 $01 $ca
	ld   [hl-], a                                    ; $6a28: $32
	add  b                                           ; $6a29: $80
	ld   h, [hl]                                     ; $6a2a: $66
	add  b                                           ; $6a2b: $80
	ld   l, l                                        ; $6a2c: $6d
	add  b                                           ; $6a2d: $80
	call $9b80                                       ; $6a2e: $cd $80 $9b
	rlca                                             ; $6a31: $07
	or   a                                           ; $6a32: $b7
	or   [hl]                                        ; $6a33: $b6
	ld   l, l                                        ; $6a34: $6d
	ld   l, h                                        ; $6a35: $6c
	ld   e, a                                        ; $6a36: $5f
	ld   e, b                                        ; $6a37: $58
	ld   hl, sp-$40                                  ; $6a38: $f8 $c0
	add  d                                           ; $6a3a: $82
	add  b                                           ; $6a3b: $80
	add  b                                           ; $6a3c: $80
	nop                                              ; $6a3d: $00
	nop                                              ; $6a3e: $00
	add  b                                           ; $6a3f: $80
	add  c                                           ; $6a40: $81
	nop                                              ; $6a41: $00
	dec  b                                           ; $6a42: $05
	cp   a                                           ; $6a43: $bf
	nop                                              ; $6a44: $00
	cp   a                                           ; $6a45: $bf
	nop                                              ; $6a46: $00
	ld   b, b                                        ; $6a47: $40
	jr   nc, jr_02e_69d0                             ; $6a48: $30 $86

	nop                                              ; $6a4a: $00
	add  b                                           ; $6a4b: $80
	jr   nc, @+$06                                   ; $6a4c: $30 $04

	rst  $38                                         ; $6a4e: $ff
	jr   nc, @+$01                                   ; $6a4f: $30 $ff

	jr   nc, jr_02e_6a85                             ; $6a51: $30 $32

	add  c                                           ; $6a53: $81
	dec  c                                           ; $6a54: $0d
	add  b                                           ; $6a55: $80
	ld   c, $81                                      ; $6a56: $0e $81
	ld   b, $08                                      ; $6a58: $06 $08
	ld   [bc], a                                     ; $6a5a: $02
	inc  bc                                          ; $6a5b: $03
	ld   bc, $00f6                                   ; $6a5c: $01 $f6 $00
	rst  $30                                         ; $6a5f: $f7
	nop                                              ; $6a60: $00
	ld   b, a                                        ; $6a61: $47

jr_02e_6a62:
	or   b                                           ; $6a62: $b0
	add  b                                           ; $6a63: $80
	sbc  b                                           ; $6a64: $98
	add  b                                           ; $6a65: $80
	ret  c                                           ; $6a66: $d8

	add  b                                           ; $6a67: $80
	call z, $6c80                                    ; $6a68: $cc $80 $6c
	add  b                                           ; $6a6b: $80
	ld   h, $80                                      ; $6a6c: $26 $80
	sub  b                                           ; $6a6e: $90
	ld   [bc], a                                     ; $6a6f: $02
	ret  z                                           ; $6a70: $c8

	ld   c, b                                        ; $6a71: $48
	cp   a                                           ; $6a72: $bf
	adc  l                                           ; $6a73: $8d
	ld   b, b                                        ; $6a74: $40
	nop                                              ; $6a75: $00
	add  b                                           ; $6a76: $80
	adc  l                                           ; $6a77: $8d
	nop                                              ; $6a78: $00
	add  b                                           ; $6a79: $80
	ld   bc, $0080                                   ; $6a7a: $01 $80 $00
	add  b                                           ; $6a7d: $80
	ld   bc, $0098                                   ; $6a7e: $01 $98 $00
	nop                                              ; $6a81: $00

jr_02e_6a82:
	sub  h                                           ; $6a82: $94
	adc  l                                           ; $6a83: $8d
	ld   a, e                                        ; $6a84: $7b

jr_02e_6a85:
	nop                                              ; $6a85: $00
	push bc                                          ; $6a86: $c5
	adc  l                                           ; $6a87: $8d
	rst  JumpTable                                         ; $6a88: $df
	nop                                              ; $6a89: $00
	sbc  [hl]                                        ; $6a8a: $9e
	adc  l                                           ; $6a8b: $8d
	sbc  b                                           ; $6a8c: $98
	nop                                              ; $6a8d: $00
	di                                               ; $6a8e: $f3
	adc  l                                           ; $6a8f: $8d
	nop                                              ; $6a90: $00
	add  b                                           ; $6a91: $80
	or   a                                           ; $6a92: $b7
	add  b                                           ; $6a93: $80
	add  b                                           ; $6a94: $80
	nop                                              ; $6a95: $00
	nop                                              ; $6a96: $00
	add  b                                           ; $6a97: $80
	rst  $38                                         ; $6a98: $ff
	add  a                                           ; $6a99: $87
	nop                                              ; $6a9a: $00
	add  b                                           ; $6a9b: $80
	ld   e, d                                        ; $6a9c: $5a
	add  b                                           ; $6a9d: $80
	ld   [bc], a                                     ; $6a9e: $02
	nop                                              ; $6a9f: $00
	nop                                              ; $6aa0: $00
	add  b                                           ; $6aa1: $80
	cp   $87                                         ; $6aa2: $fe $87
	nop                                              ; $6aa4: $00
	ld   bc, $080f                                   ; $6aa5: $01 $0f $08

jr_02e_6aa8:
	add  b                                           ; $6aa8: $80
	add  hl, bc                                      ; $6aa9: $09
	adc  b                                           ; $6aaa: $88
	ld   [$0a80], sp                                 ; $6aab: $08 $80 $0a
	inc  bc                                          ; $6aae: $03
	rst  ToBoot                                         ; $6aaf: $c7
	jr   nc, jr_02e_6a82                             ; $6ab0: $30 $d0

	ret  nz                                          ; $6ab2: $c0

	add  b                                           ; $6ab3: $80
	ld   h, b                                        ; $6ab4: $60
	add  d                                           ; $6ab5: $82
	nop                                              ; $6ab6: $00
	ld   bc, $7060                                   ; $6ab7: $01 $60 $70
	add  b                                           ; $6aba: $80
	or   b                                           ; $6abb: $b0
	ld   [bc], a                                     ; $6abc: $02
	cp   h                                           ; $6abd: $bc
	or   e                                           ; $6abe: $b3
	cp   a                                           ; $6abf: $bf
	adc  e                                           ; $6ac0: $8b
	nop                                              ; $6ac1: $00
	ld   [bc], a                                     ; $6ac2: $02
	add  b                                           ; $6ac3: $80
	ccf                                              ; $6ac4: $3f
	rst  $38                                         ; $6ac5: $ff
	add  e                                           ; $6ac6: $83
	jr   nc, @-$7e                                   ; $6ac7: $30 $80

	db   $10                                         ; $6ac9: $10
	add  b                                           ; $6aca: $80
	jr   nz, @-$7e                                   ; $6acb: $20 $80

	db   $10                                         ; $6acd: $10
	add  b                                           ; $6ace: $80
	nop                                              ; $6acf: $00
	ld   [bc], a                                     ; $6ad0: $02
	jr   nc, @+$01                                   ; $6ad1: $30 $ff

	rst  $30                                         ; $6ad3: $f7
	adc  e                                           ; $6ad4: $8b
	nop                                              ; $6ad5: $00
	dec  b                                           ; $6ad6: $05
	inc  bc                                          ; $6ad7: $03
	db   $f4                                         ; $6ad8: $f4
	ldh  [rAUD4LEN], a                               ; $6ad9: $e0 $20
	inc  l                                           ; $6adb: $2c
	inc  c                                           ; $6adc: $0c
	add  b                                           ; $6add: $80
	jr   jr_02e_6a62                                 ; $6ade: $18 $82

	nop                                              ; $6ae0: $00
	nop                                              ; $6ae1: $00
	inc  d                                           ; $6ae2: $14
	add  c                                           ; $6ae3: $81
	inc  [hl]                                        ; $6ae4: $34
	ld   [bc], a                                     ; $6ae5: $02
	db   $f4                                         ; $6ae6: $f4
	inc  [hl]                                        ; $6ae7: $34
	ccf                                              ; $6ae8: $3f
	adc  l                                           ; $6ae9: $8d
	ld   b, b                                        ; $6aea: $40
	nop                                              ; $6aeb: $00
	add  b                                           ; $6aec: $80
	xor  l                                           ; $6aed: $ad
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	sub  h                                           ; $6af0: $94
	add  l                                           ; $6af1: $85
	ld   a, e                                        ; $6af2: $7b
	jr   z, jr_02e_6b6d                              ; $6af3: $28 $78

	ld   a, e                                        ; $6af5: $7b
	ld   a, b                                        ; $6af6: $78
	ld   a, e                                        ; $6af7: $7b
	ld   a, [hl]                                     ; $6af8: $7e
	ld   a, a                                        ; $6af9: $7f
	ld   [hl], b                                     ; $6afa: $70
	ld   a, a                                        ; $6afb: $7f
	set  3, a                                        ; $6afc: $cb $df
	sbc  $df                                         ; $6afe: $de $df
	sbc  $df                                         ; $6b00: $de $df
	rra                                              ; $6b02: $1f
	rst  $38                                         ; $6b03: $ff
	ld   a, [de]                                     ; $6b04: $1a
	rst  $38                                         ; $6b05: $ff
	ret  z                                           ; $6b06: $c8

	rst  $38                                         ; $6b07: $ff
	ld   b, $fe                                      ; $6b08: $06 $fe
	ld   sp, $95f0                                   ; $6b0a: $31 $f0 $95
	sbc  b                                           ; $6b0d: $98

jr_02e_6b0e:
	jr   jr_02e_6aa8                                 ; $6b0e: $18 $98

	ld   e, b                                        ; $6b10: $58
	ret  c                                           ; $6b11: $d8

	jr   @-$06                                       ; $6b12: $18 $f8

	jr   jr_02e_6b0e                                 ; $6b14: $18 $f8

	ret  nz                                          ; $6b16: $c0

	ret  z                                           ; $6b17: $c8

	jr   c, jr_02e_6b1a                              ; $6b18: $38 $00

jr_02e_6b1a:
	ret  nz                                          ; $6b1a: $c0

	nop                                              ; $6b1b: $00
	inc  bc                                          ; $6b1c: $03
	xor  l                                           ; $6b1d: $ad
	nop                                              ; $6b1e: $00
	nop                                              ; $6b1f: $00
	dec  c                                           ; $6b20: $0d
	add  c                                           ; $6b21: $81
	ld   a, [bc]                                     ; $6b22: $0a
	adc  d                                           ; $6b23: $8a
	dec  bc                                          ; $6b24: $0b
	ld   bc, $b048                                   ; $6b25: $01 $48 $b0
	add  b                                           ; $6b28: $80
	or   a                                           ; $6b29: $b7
	add  b                                           ; $6b2a: $80
	or   b                                           ; $6b2b: $b0
	ld   bc, $9390                                   ; $6b2c: $01 $90 $93
	add  b                                           ; $6b2f: $80
	sbc  e                                           ; $6b30: $9b
	add  b                                           ; $6b31: $80
	sbc  d                                           ; $6b32: $9a
	add  d                                           ; $6b33: $82
	sbc  [hl]                                        ; $6b34: $9e
	ld   bc, $0003                                   ; $6b35: $01 $03 $00
	add  b                                           ; $6b38: $80
	rst  $38                                         ; $6b39: $ff
	add  c                                           ; $6b3a: $81
	nop                                              ; $6b3b: $00
	nop                                              ; $6b3c: $00
	rst  $38                                         ; $6b3d: $ff
	add  b                                           ; $6b3e: $80
	ld   d, l                                        ; $6b3f: $55
	add  b                                           ; $6b40: $80
	xor  d                                           ; $6b41: $aa
	add  d                                           ; $6b42: $82
	nop                                              ; $6b43: $00
	ld   bc, $00ff                                   ; $6b44: $01 $ff $00
	add  b                                           ; $6b47: $80
	rst  $38                                         ; $6b48: $ff
	add  c                                           ; $6b49: $81
	nop                                              ; $6b4a: $00
	nop                                              ; $6b4b: $00
	rst  $38                                         ; $6b4c: $ff
	add  b                                           ; $6b4d: $80
	ld   d, l                                        ; $6b4e: $55
	add  b                                           ; $6b4f: $80
	xor  d                                           ; $6b50: $aa
	add  d                                           ; $6b51: $82
	nop                                              ; $6b52: $00
	ld   bc, $00ff                                   ; $6b53: $01 $ff $00
	add  b                                           ; $6b56: $80
	rst  $38                                         ; $6b57: $ff
	add  c                                           ; $6b58: $81
	nop                                              ; $6b59: $00
	nop                                              ; $6b5a: $00
	rst  $38                                         ; $6b5b: $ff
	add  b                                           ; $6b5c: $80
	ld   d, l                                        ; $6b5d: $55
	add  b                                           ; $6b5e: $80
	xor  e                                           ; $6b5f: $ab
	add  d                                           ; $6b60: $82
	inc  bc                                          ; $6b61: $03
	ld   bc, $2cd3                                   ; $6b62: $01 $d3 $2c
	add  b                                           ; $6b65: $80
	ld   l, b                                        ; $6b66: $68
	add  b                                           ; $6b67: $80
	ld   l, d                                        ; $6b68: $6a
	add  b                                           ; $6b69: $80
	jp   z, $c282                                    ; $6b6a: $ca $82 $c2

jr_02e_6b6d:
	add  b                                           ; $6b6d: $80
	ld   [bc], a                                     ; $6b6e: $02
	add  b                                           ; $6b6f: $80
	nop                                              ; $6b70: $00
	nop                                              ; $6b71: $00
	ccf                                              ; $6b72: $3f
	adc  l                                           ; $6b73: $8d
	ld   b, b                                        ; $6b74: $40
	nop                                              ; $6b75: $00
	add  b                                           ; $6b76: $80
	xor  l                                           ; $6b77: $ad
	nop                                              ; $6b78: $00
	ld   [$7f90], sp                                 ; $6b79: $08 $90 $7f
	ld   l, h                                        ; $6b7c: $6c
	ld   a, h                                        ; $6b7d: $7c
	ld   h, e                                        ; $6b7e: $63
	ld   h, b                                        ; $6b7f: $60
	inc  e                                           ; $6b80: $1c
	nop                                              ; $6b81: $00
	ldh  [$85], a                                    ; $6b82: $e0 $85
	nop                                              ; $6b84: $00
	inc  b                                           ; $6b85: $04
	ld   [hl], b                                     ; $6b86: $70
	add  b                                           ; $6b87: $80
	ld   [hl], b                                     ; $6b88: $70
	nop                                              ; $6b89: $00
	add  b                                           ; $6b8a: $80
	add  l                                           ; $6b8b: $85
	nop                                              ; $6b8c: $00
	add  b                                           ; $6b8d: $80
	inc  bc                                          ; $6b8e: $03
	add  b                                           ; $6b8f: $80
	inc  c                                           ; $6b90: $0c
	nop                                              ; $6b91: $00
	inc  bc                                          ; $6b92: $03
	add  l                                           ; $6b93: $85
	nop                                              ; $6b94: $00
	ld   bc, $3f3c                                   ; $6b95: $01 $3c $3f
	add  b                                           ; $6b98: $80
	ret  nz                                          ; $6b99: $c0

	adc  d                                           ; $6b9a: $8a
	nop                                              ; $6b9b: $00
	add  b                                           ; $6b9c: $80
	add  b                                           ; $6b9d: $80
	ld   b, $6a                                      ; $6b9e: $06 $6a
	ld   a, a                                        ; $6ba0: $7f
	db   $10                                         ; $6ba1: $10
	rra                                              ; $6ba2: $1f
	ld   [$0d1f], sp                                 ; $6ba3: $08 $1f $0d
	add  a                                           ; $6ba6: $87
	nop                                              ; $6ba7: $00
	ld   b, $ab                                      ; $6ba8: $06 $ab
	rst  $38                                         ; $6baa: $ff
	ld   bc, $05ff                                   ; $6bab: $01 $ff $05
	rst  $38                                         ; $6bae: $ff
	ld   d, b                                        ; $6baf: $50
	add  a                                           ; $6bb0: $87
	nop                                              ; $6bb1: $00
	add  b                                           ; $6bb2: $80
	add  b                                           ; $6bb3: $80
	inc  b                                           ; $6bb4: $04
	ldh  [$f8], a                                    ; $6bb5: $e0 $f8
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bb7: $cf
	ld   hl, sp+$23                                  ; $6bb8: $f8 $23
	add  e                                           ; $6bba: $83
	dec  bc                                          ; $6bbb: $0b
	add  b                                           ; $6bbc: $80
	add  hl, bc                                      ; $6bbd: $09
	add  h                                           ; $6bbe: $84
	ld   [$f802], sp                                 ; $6bbf: $08 $02 $f8
	nop                                              ; $6bc2: $00
	sbc  l                                           ; $6bc3: $9d
	add  e                                           ; $6bc4: $83
	sbc  [hl]                                        ; $6bc5: $9e
	add  b                                           ; $6bc6: $80
	sbc  d                                           ; $6bc7: $9a
	add  b                                           ; $6bc8: $80
	ld   [bc], a                                     ; $6bc9: $02
	add  b                                           ; $6bca: $80
	ld   e, $80                                      ; $6bcb: $1e $80
	inc  a                                           ; $6bcd: $3c
	ld   [bc], a                                     ; $6bce: $02
	inc  bc                                          ; $6bcf: $03
	nop                                              ; $6bd0: $00
	rst  $38                                         ; $6bd1: $ff
	adc  e                                           ; $6bd2: $8b
	nop                                              ; $6bd3: $00
	ld   [bc], a                                     ; $6bd4: $02
	rst  $38                                         ; $6bd5: $ff
	nop                                              ; $6bd6: $00
	rst  $38                                         ; $6bd7: $ff
	adc  e                                           ; $6bd8: $8b
	nop                                              ; $6bd9: $00
	ld   [$00ff], sp                                 ; $6bda: $08 $ff $00
	or   $07                                         ; $6bdd: $f6 $07
	nop                                              ; $6bdf: $00
	inc  bc                                          ; $6be0: $03
	ld   [bc], a                                     ; $6be1: $02
	ld   bc, $8509                                   ; $6be2: $01 $09 $85
	nop                                              ; $6be5: $00
	ld   bc, $00f8                                   ; $6be6: $01 $f8 $00
	add  b                                           ; $6be9: $80
	db   $fd                                         ; $6bea: $fd
	inc  b                                           ; $6beb: $04
	ld   e, [hl]                                     ; $6bec: $5e
	cp   $8d                                         ; $6bed: $fe $8d
	db   $fd                                         ; $6bef: $fd
	ret  nc                                          ; $6bf0: $d0

	add  c                                           ; $6bf1: $81
	nop                                              ; $6bf2: $00
	add  b                                           ; $6bf3: $80
	jr   nz, jr_02e_6bf7                             ; $6bf4: $20 $01

	rst  JumpTable                                         ; $6bf6: $df

jr_02e_6bf7:
	rst  $38                                         ; $6bf7: $ff
	add  b                                           ; $6bf8: $80
	ldh  [rSB], a                                    ; $6bf9: $e0 $01
	dec  h                                           ; $6bfb: $25
	dec  b                                           ; $6bfc: $05
	add  b                                           ; $6bfd: $80
	ld   a, [bc]                                     ; $6bfe: $0a
	add  b                                           ; $6bff: $80
	dec  b                                           ; $6c00: $05
	add  d                                           ; $6c01: $82
	nop                                              ; $6c02: $00
	ld   bc, $407f                                   ; $6c03: $01 $7f $40
	add  b                                           ; $6c06: $80
	ret  nz                                          ; $6c07: $c0

	dec  b                                           ; $6c08: $05
	ccf                                              ; $6c09: $3f
	nop                                              ; $6c0a: $00
	ld   a, l                                        ; $6c0b: $7d
	ld   a, a                                        ; $6c0c: $7f
	db   $fd                                         ; $6c0d: $fd
	rst  $38                                         ; $6c0e: $ff
	add  b                                           ; $6c0f: $80
	ld   a, a                                        ; $6c10: $7f
	add  d                                           ; $6c11: $82
	nop                                              ; $6c12: $00
	nop                                              ; $6c13: $00
	rst  $38                                         ; $6c14: $ff
	add  c                                           ; $6c15: $81
	nop                                              ; $6c16: $00
	ld   [$00ff], sp                                 ; $6c17: $08 $ff $00
	ld   d, h                                        ; $6c1a: $54
	rst  $38                                         ; $6c1b: $ff
	ld   bc, $a8ff                                   ; $6c1c: $01 $ff $a8
	rst  $38                                         ; $6c1f: $ff
	ld   [bc], a                                     ; $6c20: $02
	add  c                                           ; $6c21: $81
	nop                                              ; $6c22: $00
	nop                                              ; $6c23: $00
	rst  $38                                         ; $6c24: $ff
	add  c                                           ; $6c25: $81
	nop                                              ; $6c26: $00
	ld   [bc], a                                     ; $6c27: $02
	rst  $38                                         ; $6c28: $ff
	nop                                              ; $6c29: $00
	rst  $38                                         ; $6c2a: $ff
	sub  a                                           ; $6c2b: $97
	nop                                              ; $6c2c: $00
	rlca                                             ; $6c2d: $07
	ld   [bc], a                                     ; $6c2e: $02
	inc  bc                                          ; $6c2f: $03
	inc  b                                           ; $6c30: $04
	rrca                                             ; $6c31: $0f

jr_02e_6c32:
	nop                                              ; $6c32: $00
	dec  e                                           ; $6c33: $1d
	rlca                                             ; $6c34: $07
	db   $10                                         ; $6c35: $10
	add  b                                           ; $6c36: $80
	ld   a, [hl-]                                    ; $6c37: $3a
	add  b                                           ; $6c38: $80
	dec  [hl]                                        ; $6c39: $35
	rlca                                             ; $6c3a: $07
	ld   c, $3e                                      ; $6c3b: $0e $3e
	ld   l, c                                        ; $6c3d: $69
	rst  $20                                         ; $6c3e: $e7
	jr   nc, jr_02e_6c32                             ; $6c3f: $30 $f1

	ld   a, [hl]                                     ; $6c41: $7e
	cp   $80                                         ; $6c42: $fe $80
	ld   d, l                                        ; $6c44: $55
	ld   bc, $00ff                                   ; $6c45: $01 $ff $00
	add  b                                           ; $6c48: $80
	ld   a, [bc]                                     ; $6c49: $0a
	add  b                                           ; $6c4a: $80
	ld   d, l                                        ; $6c4b: $55
	add  b                                           ; $6c4c: $80
	xor  a                                           ; $6c4d: $af
	ld   de, $fef9                                   ; $6c4e: $11 $f9 $fe
	nop                                              ; $6c51: $00
	ld   sp, hl                                      ; $6c52: $f9
	inc  bc                                          ; $6c53: $03
	rlca                                             ; $6c54: $07
	ld   d, b                                        ; $6c55: $50
	ld   d, l                                        ; $6c56: $55
	adc  d                                           ; $6c57: $8a
	ld   a, a                                        ; $6c58: $7f
	add  sp, -$01                                    ; $6c59: $e8 $ff
	ret  c                                           ; $6c5b: $d8

	rst  $38                                         ; $6c5c: $ff
	jr   nc, @+$01                                   ; $6c5d: $30 $ff

	jr   nz, jr_02e_6ce0                             ; $6c5f: $20 $7f

	add  d                                           ; $6c61: $82
	rst  $38                                         ; $6c62: $ff
	ld   a, [bc]                                     ; $6c63: $0a
	nop                                              ; $6c64: $00
	ld   d, l                                        ; $6c65: $55
	xor  d                                           ; $6c66: $aa
	rst  $38                                         ; $6c67: $ff
	dec  b                                           ; $6c68: $05
	rst  $38                                         ; $6c69: $ff
	dec  b                                           ; $6c6a: $05
	rst  $38                                         ; $6c6b: $ff
	ld   d, l                                        ; $6c6c: $55
	rst  $38                                         ; $6c6d: $ff
	ld   d, h                                        ; $6c6e: $54
	add  c                                           ; $6c6f: $81
	rst  $38                                         ; $6c70: $ff
	add  hl, bc                                      ; $6c71: $09
	ld   a, [$06fe]                                  ; $6c72: $fa $fe $06
	ld   d, [hl]                                     ; $6c75: $56
	sbc  b                                           ; $6c76: $98
	ei                                               ; $6c77: $fb
	ld   e, e                                        ; $6c78: $5b
	ei                                               ; $6c79: $fb
	dec  hl                                          ; $6c7a: $2b
	jp   hl                                          ; $6c7b: $e9


	add  b                                           ; $6c7c: $80
	ldh  [c], a                                      ; $6c7d: $e2
	ld   [$a4a6], sp                                 ; $6c7e: $08 $a6 $a4
	adc  l                                           ; $6c81: $8d
	adc  b                                           ; $6c82: $88
	sbc  e                                           ; $6c83: $9b
	sub  c                                           ; $6c84: $91
	ld   [hl], $23                                   ; $6c85: $36 $23
	add  hl, de                                      ; $6c87: $19
	cp   [hl]                                        ; $6c88: $be
	rst  $38                                         ; $6c89: $ff
	add  c                                           ; $6c8a: $81
	ldh  a, [$80]                                    ; $6c8b: $f0 $80
	ld   hl, sp+$01                                  ; $6c8d: $f8 $01
	ldh  a, [$f8]                                    ; $6c8f: $f0 $f8
	add  b                                           ; $6c91: $80
	db   $fc                                         ; $6c92: $fc
	ld   bc, $fcf8                                   ; $6c93: $01 $f8 $fc
	add  b                                           ; $6c96: $80
	cp   $02                                         ; $6c97: $fe $02
	db   $fc                                         ; $6c99: $fc
	rst  $38                                         ; $6c9a: $ff
	ccf                                              ; $6c9b: $3f
	add  l                                           ; $6c9c: $85
	ldh  [rDIV], a                                   ; $6c9d: $e0 $04
	ccf                                              ; $6c9f: $3f
	rra                                              ; $6ca0: $1f

jr_02e_6ca1:
	ret  nz                                          ; $6ca1: $c0

	rst  $38                                         ; $6ca2: $ff
	ccf                                              ; $6ca3: $3f
	add  b                                           ; $6ca4: $80
	rra                                              ; $6ca5: $1f
	add  b                                           ; $6ca6: $80
	cp   $85                                         ; $6ca7: $fe $85
	nop                                              ; $6ca9: $00
	ld   [$fffe], sp                                 ; $6caa: $08 $fe $ff
	dec  d                                           ; $6cad: $15
	ei                                               ; $6cae: $fb
	push bc                                          ; $6caf: $c5
	push af                                          ; $6cb0: $f5
	jp   z, $0f1a                                    ; $6cb1: $ca $1a $0f

	add  l                                           ; $6cb4: $85
	nop                                              ; $6cb5: $00
	inc  bc                                          ; $6cb6: $03
	ret                                              ; $6cb7: $c9


	rst  $38                                         ; $6cb8: $ff
	db   $ed                                         ; $6cb9: $ed
	inc  h                                           ; $6cba: $24

jr_02e_6cbb:
	add  b                                           ; $6cbb: $80
	or   [hl]                                        ; $6cbc: $b6
	add  b                                           ; $6cbd: $80
	db   $db                                         ; $6cbe: $db
	nop                                              ; $6cbf: $00
	rst  $38                                         ; $6cc0: $ff
	add  l                                           ; $6cc1: $85
	nop                                              ; $6cc2: $00
	dec  b                                           ; $6cc3: $05
	daa                                              ; $6cc4: $27
	rst  $38                                         ; $6cc5: $ff
	or   l                                           ; $6cc6: $b5
	sub  e                                           ; $6cc7: $93
	jp   c, $80db                                    ; $6cc8: $da $db $80

	ld   l, l                                        ; $6ccb: $6d
	and  h                                           ; $6ccc: $a4
	nop                                              ; $6ccd: $00
	nop                                              ; $6cce: $00
	ret  nz                                          ; $6ccf: $c0

	add  l                                           ; $6cd0: $85
	nop                                              ; $6cd1: $00
	nop                                              ; $6cd2: $00
	ret  nz                                          ; $6cd3: $c0

	sub  [hl]                                        ; $6cd4: $96
	nop                                              ; $6cd5: $00
	add  [hl]                                        ; $6cd6: $86
	ret  nz                                          ; $6cd7: $c0

	sub  l                                           ; $6cd8: $95
	nop                                              ; $6cd9: $00
	add  [hl]                                        ; $6cda: $86
	ret  nz                                          ; $6cdb: $c0

	rst  $38                                         ; $6cdc: $ff
	nop                                              ; $6cdd: $00
	rst  $38                                         ; $6cde: $ff
	nop                                              ; $6cdf: $00

jr_02e_6ce0:
	rst  $38                                         ; $6ce0: $ff
	nop                                              ; $6ce1: $00
	rst  $38                                         ; $6ce2: $ff
	nop                                              ; $6ce3: $00
	rst  $38                                         ; $6ce4: $ff
	nop                                              ; $6ce5: $00
	rst  $38                                         ; $6ce6: $ff
	nop                                              ; $6ce7: $00
	rst  $38                                         ; $6ce8: $ff
	nop                                              ; $6ce9: $00
	rst  $38                                         ; $6cea: $ff
	nop                                              ; $6ceb: $00
	rst  $38                                         ; $6cec: $ff
	nop                                              ; $6ced: $00
	rst  $38                                         ; $6cee: $ff
	nop                                              ; $6cef: $00
	rst  $38                                         ; $6cf0: $ff
	nop                                              ; $6cf1: $00
	rst  $38                                         ; $6cf2: $ff
	nop                                              ; $6cf3: $00
	rst  $38                                         ; $6cf4: $ff
	nop                                              ; $6cf5: $00
	rst  $38                                         ; $6cf6: $ff
	nop                                              ; $6cf7: $00
	rst  $38                                         ; $6cf8: $ff
	nop                                              ; $6cf9: $00
	add  c                                           ; $6cfa: $81
	nop                                              ; $6cfb: $00
	ld   l, l                                        ; $6cfc: $6d
	ld   [bc], a                                     ; $6cfd: $02
	sub  d                                           ; $6cfe: $92
	nop                                              ; $6cff: $00
	add  b                                           ; $6d00: $80
	ld   a, a                                        ; $6d01: $7f
	add  b                                           ; $6d02: $80
	ld   [bc], a                                     ; $6d03: $02
	add  b                                           ; $6d04: $80
	inc  b                                           ; $6d05: $04
	add  b                                           ; $6d06: $80

jr_02e_6d07:
	ccf                                              ; $6d07: $3f
	add  b                                           ; $6d08: $80
	nop                                              ; $6d09: $00
	add  b                                           ; $6d0a: $80
	rrca                                             ; $6d0b: $0f
	add  d                                           ; $6d0c: $82
	add  b                                           ; $6d0d: $80
	add  b                                           ; $6d0e: $80
	rst  $38                                         ; $6d0f: $ff
	add  b                                           ; $6d10: $80
	ld   [$3c80], sp                                 ; $6d11: $08 $80 $3c
	add  b                                           ; $6d14: $80
	jp   nz, $0080                                   ; $6d15: $c2 $80 $00

	add  b                                           ; $6d18: $80
	ld   hl, sp-$7e                                  ; $6d19: $f8 $82
	nop                                              ; $6d1b: $00
	add  b                                           ; $6d1c: $80
	ccf                                              ; $6d1d: $3f
	add  h                                           ; $6d1e: $84
	jr   nz, jr_02e_6ca1                             ; $6d1f: $20 $80

	ld   a, $80                                      ; $6d21: $3e $80
	ld   [hl+], a                                    ; $6d23: $22
	add  b                                           ; $6d24: $80

jr_02e_6d25:
	ld   b, h                                        ; $6d25: $44
	add  b                                           ; $6d26: $80
	ld   b, d                                        ; $6d27: $42
	add  b                                           ; $6d28: $80
	rst  $38                                         ; $6d29: $ff
	add  d                                           ; $6d2a: $82
	ld   b, b                                        ; $6d2b: $40
	add  d                                           ; $6d2c: $82
	ld   b, d                                        ; $6d2d: $42
	add  b                                           ; $6d2e: $80
	inc  h                                           ; $6d2f: $24
	add  b                                           ; $6d30: $80
	nop                                              ; $6d31: $00
	add  b                                           ; $6d32: $80
	ld   a, a                                        ; $6d33: $7f
	add  h                                           ; $6d34: $84
	nop                                              ; $6d35: $00
	add  b                                           ; $6d36: $80
	cpl                                              ; $6d37: $2f
	add  d                                           ; $6d38: $82
	jr   z, jr_02e_6cbb                              ; $6d39: $28 $80

	nop                                              ; $6d3b: $00
	add  b                                           ; $6d3c: $80
	rst  $38                                         ; $6d3d: $ff
	add  h                                           ; $6d3e: $84
	add  b                                           ; $6d3f: $80
	add  b                                           ; $6d40: $80
	ld   a, [$8a82]                                  ; $6d41: $fa $82 $8a
	add  b                                           ; $6d44: $80
	nop                                              ; $6d45: $00
	add  b                                           ; $6d46: $80
	ld   a, a                                        ; $6d47: $7f
	add  d                                           ; $6d48: $82
	nop                                              ; $6d49: $00
	add  b                                           ; $6d4a: $80
	ld   bc, $3f80                                   ; $6d4b: $01 $80 $3f
	add  d                                           ; $6d4e: $82
	ld   [hl+], a                                    ; $6d4f: $22
	add  b                                           ; $6d50: $80
	nop                                              ; $6d51: $00
	add  b                                           ; $6d52: $80
	rst  $38                                         ; $6d53: $ff
	add  d                                           ; $6d54: $82
	add  b                                           ; $6d55: $80
	add  b                                           ; $6d56: $80
	nop                                              ; $6d57: $00
	add  b                                           ; $6d58: $80
	cp   $82                                         ; $6d59: $fe $82
	ld   [hl+], a                                    ; $6d5b: $22
	add  h                                           ; $6d5c: $84

jr_02e_6d5d:
	rst  $38                                         ; $6d5d: $ff
	add  b                                           ; $6d5e: $80
	rst  $20                                         ; $6d5f: $e7
	add  b                                           ; $6d60: $80
	jp   $8180                                       ; $6d61: $c3 $80 $81


	add  h                                           ; $6d64: $84
	rst  $38                                         ; $6d65: $ff
	add  b                                           ; $6d66: $80
	ei                                               ; $6d67: $fb
	add  b                                           ; $6d68: $80
	di                                               ; $6d69: $f3
	add  d                                           ; $6d6a: $82
	db   $e3                                         ; $6d6b: $e3
	add  b                                           ; $6d6c: $80

jr_02e_6d6d:
	di                                               ; $6d6d: $f3
	add  b                                           ; $6d6e: $80
	ei                                               ; $6d6f: $fb
	add  b                                           ; $6d70: $80

jr_02e_6d71:
	rst  $38                                         ; $6d71: $ff
	add  b                                           ; $6d72: $80
	rlca                                             ; $6d73: $07
	add  b                                           ; $6d74: $80
	inc  e                                           ; $6d75: $1c
	add  b                                           ; $6d76: $80
	ld   sp, $6180                                   ; $6d77: $31 $80 $61
	add  b                                           ; $6d7a: $80
	ld   b, c                                        ; $6d7b: $41
	add  b                                           ; $6d7c: $80
	jp   $8280                                       ; $6d7d: $c3 $80 $82


	add  b                                           ; $6d80: $80
	add  [hl]                                        ; $6d81: $86
	add  b                                           ; $6d82: $80
	ldh  [$80], a                                    ; $6d83: $e0 $80
	jr   c, jr_02e_6d07                              ; $6d85: $38 $80

	call z, Call_02e_4680                            ; $6d87: $cc $80 $46
	add  b                                           ; $6d8a: $80
	ld   b, d                                        ; $6d8b: $42
	add  b                                           ; $6d8c: $80
	ld   h, e                                        ; $6d8d: $63
	add  d                                           ; $6d8e: $82
	ld   hl, $0780                                   ; $6d8f: $21 $80 $07
	add  b                                           ; $6d92: $80
	inc  e                                           ; $6d93: $1c
	add  b                                           ; $6d94: $80
	ccf                                              ; $6d95: $3f
	add  b                                           ; $6d96: $80
	ld   l, b                                        ; $6d97: $68
	add  b                                           ; $6d98: $80
	ld   c, b                                        ; $6d99: $48
	add  b                                           ; $6d9a: $80
	ret  z                                           ; $6d9b: $c8

	add  b                                           ; $6d9c: $80
	adc  b                                           ; $6d9d: $88
	add  b                                           ; $6d9e: $80
	adc  a                                           ; $6d9f: $8f
	add  b                                           ; $6da0: $80
	ldh  [$80], a                                    ; $6da1: $e0 $80
	jr   c, jr_02e_6d25                              ; $6da3: $38 $80

	db   $ec                                         ; $6da5: $ec
	add  b                                           ; $6da6: $80

jr_02e_6da7:
	ld   d, $80                                      ; $6da7: $16 $80
	ld   [de], a                                     ; $6da9: $12
	add  b                                           ; $6daa: $80
	inc  de                                          ; $6dab: $13
	add  b                                           ; $6dac: $80
	ld   hl, $c180                                   ; $6dad: $21 $80 $c1
	sbc  [hl]                                        ; $6db0: $9e
	nop                                              ; $6db1: $00
	add  b                                           ; $6db2: $80
	ld   [$0f80], sp                                 ; $6db3: $08 $80 $0f
	add  b                                           ; $6db6: $80
	ld   [$0f80], sp                                 ; $6db7: $08 $80 $0f
	add  h                                           ; $6dba: $84
	ld   [$0080], sp                                 ; $6dbb: $08 $80 $00
	add  b                                           ; $6dbe: $80
	ld   [$f880], sp                                 ; $6dbf: $08 $80 $f8
	add  b                                           ; $6dc2: $80
	ld   [$f880], sp                                 ; $6dc3: $08 $80 $f8
	add  d                                           ; $6dc6: $82
	ld   [$3880], sp                                 ; $6dc7: $08 $80 $38
	add  b                                           ; $6dca: $80
	nop                                              ; $6dcb: $00
	add  h                                           ; $6dcc: $84
	ld   [hl+], a                                    ; $6dcd: $22
	add  b                                           ; $6dce: $80
	inc  l                                           ; $6dcf: $2c
	add  b                                           ; $6dd0: $80
	ld   b, b                                        ; $6dd1: $40
	add  b                                           ; $6dd2: $80
	ld   b, c                                        ; $6dd3: $41
	add  b                                           ; $6dd4: $80
	ld   b, [hl]                                     ; $6dd5: $46
	add  b                                           ; $6dd6: $80

jr_02e_6dd7:
	nop                                              ; $6dd7: $00
	add  b                                           ; $6dd8: $80
	inc  h                                           ; $6dd9: $24
	add  b                                           ; $6dda: $80
	jr   z, jr_02e_6d5d                              ; $6ddb: $28 $80

	db   $10                                         ; $6ddd: $10
	add  b                                           ; $6dde: $80
	add  hl, hl                                      ; $6ddf: $29
	add  b                                           ; $6de0: $80
	ld   b, l                                        ; $6de1: $45
	add  b                                           ; $6de2: $80
	add  e                                           ; $6de3: $83
	add  b                                           ; $6de4: $80
	ld   bc, $0080                                   ; $6de5: $01 $80 $00
	add  b                                           ; $6de8: $80
	cpl                                              ; $6de9: $2f
	add  d                                           ; $6dea: $82
	jr   z, jr_02e_6d6d                              ; $6deb: $28 $80

	cpl                                              ; $6ded: $2f
	add  d                                           ; $6dee: $82
	jr   nz, jr_02e_6d71                             ; $6def: $20 $80

	ccf                                              ; $6df1: $3f
	add  b                                           ; $6df2: $80
	nop                                              ; $6df3: $00
	add  b                                           ; $6df4: $80
	ld   a, [$8a82]                                  ; $6df5: $fa $82 $8a
	add  b                                           ; $6df8: $80
	ld   a, [$0282]                                  ; $6df9: $fa $82 $02
	add  b                                           ; $6dfc: $80
	cp   $80                                         ; $6dfd: $fe $80
	nop                                              ; $6dff: $00
	add  b                                           ; $6e00: $80
	inc  hl                                          ; $6e01: $23
	add  d                                           ; $6e02: $82
	ld   [hl+], a                                    ; $6e03: $22
	add  b                                           ; $6e04: $80
	inc  hl                                          ; $6e05: $23
	add  d                                           ; $6e06: $82
	ld   [hl+], a                                    ; $6e07: $22
	add  b                                           ; $6e08: $80
	ccf                                              ; $6e09: $3f
	add  b                                           ; $6e0a: $80
	nop                                              ; $6e0b: $00
	add  b                                           ; $6e0c: $80
	ldh  [c], a                                      ; $6e0d: $e2
	add  d                                           ; $6e0e: $82
	ld   [hl+], a                                    ; $6e0f: $22
	add  b                                           ; $6e10: $80
	ldh  [c], a                                      ; $6e11: $e2
	add  d                                           ; $6e12: $82
	ld   [hl+], a                                    ; $6e13: $22
	add  b                                           ; $6e14: $80
	cp   $80                                         ; $6e15: $fe $80
	nop                                              ; $6e17: $00
	adc  [hl]                                        ; $6e18: $8e
	rst  $38                                         ; $6e19: $ff
	adc  [hl]                                        ; $6e1a: $8e
	nop                                              ; $6e1b: $00
	add  d                                           ; $6e1c: $82
	add  h                                           ; $6e1d: $84
	add  b                                           ; $6e1e: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e1f: $cf
	add  b                                           ; $6e20: $80
	ld   c, b                                        ; $6e21: $48
	add  b                                           ; $6e22: $80

jr_02e_6e23:
	ld   l, b                                        ; $6e23: $68
	add  b                                           ; $6e24: $80
	jr   c, jr_02e_6da7                              ; $6e25: $38 $80

	inc  e                                           ; $6e27: $1c
	add  b                                           ; $6e28: $80
	rlca                                             ; $6e29: $07
	add  b                                           ; $6e2a: $80
	ld   sp, $1180                                   ; $6e2b: $31 $80 $11
	add  b                                           ; $6e2e: $80

jr_02e_6e2f:
	ei                                               ; $6e2f: $fb
	add  b                                           ; $6e30: $80
	ld   a, [bc]                                     ; $6e31: $0a
	add  b                                           ; $6e32: $80
	ld   c, $80                                      ; $6e33: $0e $80
	inc  c                                           ; $6e35: $0c
	add  b                                           ; $6e36: $80
	jr   c, @-$7e                                    ; $6e37: $38 $80

	ldh  [$82], a                                    ; $6e39: $e0 $82
	adc  b                                           ; $6e3b: $88
	add  b                                           ; $6e3c: $80
	ret  z                                           ; $6e3d: $c8

	add  b                                           ; $6e3e: $80
	ld   c, b                                        ; $6e3f: $48
	add  b                                           ; $6e40: $80
	ld   l, b                                        ; $6e41: $68
	add  b                                           ; $6e42: $80
	ccf                                              ; $6e43: $3f
	add  b                                           ; $6e44: $80
	inc  e                                           ; $6e45: $1c
	add  b                                           ; $6e46: $80
	rlca                                             ; $6e47: $07
	add  b                                           ; $6e48: $80
	ld   sp, $0980                                   ; $6e49: $31 $80 $09
	add  b                                           ; $6e4c: $80
	dec  bc                                          ; $6e4d: $0b
	add  b                                           ; $6e4e: $80
	ld   a, [bc]                                     ; $6e4f: $0a
	add  b                                           ; $6e50: $80
	ld   c, $80                                      ; $6e51: $0e $80
	db   $fc                                         ; $6e53: $fc
	add  b                                           ; $6e54: $80
	jr   c, jr_02e_6dd7                              ; $6e55: $38 $80

	ldh  [$90], a                                    ; $6e57: $e0 $90
	nop                                              ; $6e59: $00
	add  d                                           ; $6e5a: $82
	adc  b                                           ; $6e5b: $88
	add  b                                           ; $6e5c: $80
	rst  JumpTable                                         ; $6e5d: $df
	add  b                                           ; $6e5e: $80
	ret  c                                           ; $6e5f: $d8

	add  b                                           ; $6e60: $80
	xor  e                                           ; $6e61: $ab
	add  b                                           ; $6e62: $80
	xor  h                                           ; $6e63: $ac
	add  b                                           ; $6e64: $80
	xor  e                                           ; $6e65: $ab
	add  b                                           ; $6e66: $80
	nop                                              ; $6e67: $00
	add  b                                           ; $6e68: $80
	ld   bc, $0080                                   ; $6e69: $01 $80 $00
	add  b                                           ; $6e6c: $80
	add  hl, hl                                      ; $6e6d: $29
	add  b                                           ; $6e6e: $80
	or   c                                           ; $6e6f: $b1
	add  h                                           ; $6e70: $84
	and  c                                           ; $6e71: $a1
	add  h                                           ; $6e72: $84
	nop                                              ; $6e73: $00
	add  b                                           ; $6e74: $80
	jr   c, @-$7e                                    ; $6e75: $38 $80

	inc  b                                           ; $6e77: $04
	add  b                                           ; $6e78: $80
	inc  e                                           ; $6e79: $1c
	add  b                                           ; $6e7a: $80
	inc  h                                           ; $6e7b: $24
	add  b                                           ; $6e7c: $80
	inc  e                                           ; $6e7d: $1c
	add  b                                           ; $6e7e: $80
	nop                                              ; $6e7f: $00
	add  d                                           ; $6e80: $82
	sub  b                                           ; $6e81: $90
	add  b                                           ; $6e82: $80
	and  a                                           ; $6e83: $a7
	add  b                                           ; $6e84: $80
	ret  nz                                          ; $6e85: $c0

	add  b                                           ; $6e86: $80
	and  e                                           ; $6e87: $a3
	add  b                                           ; $6e88: $80
	sub  h                                           ; $6e89: $94
	add  b                                           ; $6e8a: $80
	sub  e                                           ; $6e8b: $93
	add  h                                           ; $6e8c: $84
	nop                                              ; $6e8d: $00
	add  b                                           ; $6e8e: $80
	add  hl, sp                                      ; $6e8f: $39
	add  [hl]                                        ; $6e90: $86
	and  l                                           ; $6e91: $a5
	add  h                                           ; $6e92: $84
	nop                                              ; $6e93: $00
	add  b                                           ; $6e94: $80
	adc  $80                                         ; $6e95: $ce $80

jr_02e_6e97:
	ld   hl, $2780                                   ; $6e97: $21 $80 $27
	add  b                                           ; $6e9a: $80
	add  hl, hl                                      ; $6e9b: $29
	add  b                                           ; $6e9c: $80

jr_02e_6e9d:
	daa                                              ; $6e9d: $27
	add  b                                           ; $6e9e: $80
	nop                                              ; $6e9f: $00
	add  b                                           ; $6ea0: $80
	jr   jr_02e_6e23                                 ; $6ea1: $18 $80

	inc  h                                           ; $6ea3: $24
	add  b                                           ; $6ea4: $80
	ld   hl, $1880                                   ; $6ea5: $21 $80 $18
	add  b                                           ; $6ea8: $80
	inc  b                                           ; $6ea9: $04
	add  b                                           ; $6eaa: $80
	dec  h                                           ; $6eab: $25
	add  b                                           ; $6eac: $80

jr_02e_6ead:
	jr   jr_02e_6e2f                                 ; $6ead: $18 $80

	nop                                              ; $6eaf: $00
	add  d                                           ; $6eb0: $82
	ld   [$c980], sp                                 ; $6eb1: $08 $80 $c9
	add  b                                           ; $6eb4: $80
	ld   a, [hl+]                                    ; $6eb5: $2a
	add  b                                           ; $6eb6: $80
	xor  $80                                         ; $6eb7: $ee $80
	add  hl, hl                                      ; $6eb9: $29
	add  b                                           ; $6eba: $80
	jp   hl                                          ; $6ebb: $e9


	add  h                                           ; $6ebc: $84
	nop                                              ; $6ebd: $00
	add  b                                           ; $6ebe: $80
	ld   c, d                                        ; $6ebf: $4a
	add  b                                           ; $6ec0: $80
	ld   c, e                                        ; $6ec1: $4b
	add  d                                           ; $6ec2: $82
	ld   c, d                                        ; $6ec3: $4a
	add  b                                           ; $6ec4: $80
	ld   [hl-], a                                    ; $6ec5: $32
	add  h                                           ; $6ec6: $84

jr_02e_6ec7:
	nop                                              ; $6ec7: $00
	add  b                                           ; $6ec8: $80
	cp   b                                           ; $6ec9: $b8
	add  b                                           ; $6eca: $80
	inc  b                                           ; $6ecb: $04
	add  b                                           ; $6ecc: $80
	inc  e                                           ; $6ecd: $1c
	add  b                                           ; $6ece: $80
	inc  h                                           ; $6ecf: $24
	add  b                                           ; $6ed0: $80
	inc  e                                           ; $6ed1: $1c
	add  b                                           ; $6ed2: $80
	nop                                              ; $6ed3: $00
	add  d                                           ; $6ed4: $82
	sub  b                                           ; $6ed5: $90
	add  b                                           ; $6ed6: $80
	and  e                                           ; $6ed7: $a3
	add  b                                           ; $6ed8: $80
	call nz, $a480                                   ; $6ed9: $c4 $80 $a4
	add  b                                           ; $6edc: $80
	sub  h                                           ; $6edd: $94
	add  b                                           ; $6ede: $80
	sub  e                                           ; $6edf: $93
	add  h                                           ; $6ee0: $84
	nop                                              ; $6ee1: $00
	add  b                                           ; $6ee2: $80
	dec  hl                                          ; $6ee3: $2b
	add  b                                           ; $6ee4: $80
	or   b                                           ; $6ee5: $b0
	add  b                                           ; $6ee6: $80
	and  c                                           ; $6ee7: $a1
	add  b                                           ; $6ee8: $80
	and  d                                           ; $6ee9: $a2
	add  b                                           ; $6eea: $80

jr_02e_6eeb:
	ld   hl, $0084                                   ; $6eeb: $21 $84 $00
	add  b                                           ; $6eee: $80

jr_02e_6eef:
	sbc  h                                           ; $6eef: $9c
	add  b                                           ; $6ef0: $80
	ld   d, d                                        ; $6ef1: $52
	add  b                                           ; $6ef2: $80
	jp   nc, Jump_02e_5280                           ; $6ef3: $d2 $80 $52

	add  b                                           ; $6ef6: $80
	jp   nc, $0080                                   ; $6ef7: $d2 $80 $00

	add  d                                           ; $6efa: $82
	db   $10                                         ; $6efb: $10
	adc  b                                           ; $6efc: $88
	ld   de, $0080                                   ; $6efd: $11 $80 $00
	add  b                                           ; $6f00: $80
	ld   [$0080], sp                                 ; $6f01: $08 $80 $00
	add  b                                           ; $6f04: $80

jr_02e_6f05:
	ld   c, b                                        ; $6f05: $48
	add  b                                           ; $6f06: $80
	adc  c                                           ; $6f07: $89
	add  d                                           ; $6f08: $82
	ld   [$0980], sp                                 ; $6f09: $08 $80 $09
	add  h                                           ; $6f0c: $84
	nop                                              ; $6f0d: $00
	add  b                                           ; $6f0e: $80
	ldh  [$80], a                                    ; $6f0f: $e0 $80
	nop                                              ; $6f11: $00
	add  b                                           ; $6f12: $80
	ret  nz                                          ; $6f13: $c0

	add  b                                           ; $6f14: $80
	jr   nz, jr_02e_6e97                             ; $6f15: $20 $80

	ret  nz                                          ; $6f17: $c0

	add  b                                           ; $6f18: $80
	nop                                              ; $6f19: $00
	add  b                                           ; $6f1a: $80
	jr   jr_02e_6e9d                                 ; $6f1b: $18 $80

	inc  h                                           ; $6f1d: $24
	add  b                                           ; $6f1e: $80
	ld   hl, $1980                                   ; $6f1f: $21 $80 $19
	add  b                                           ; $6f22: $80
	dec  b                                           ; $6f23: $05
	add  b                                           ; $6f24: $80
	dec  h                                           ; $6f25: $25
	add  b                                           ; $6f26: $80
	jr   jr_02e_6ead                                 ; $6f27: $18 $84

	nop                                              ; $6f29: $00
	add  b                                           ; $6f2a: $80
	dec  l                                           ; $6f2b: $2d
	add  h                                           ; $6f2c: $84
	ld   a, [hl+]                                    ; $6f2d: $2a
	add  b                                           ; $6f2e: $80
	jp   z, $0080                                    ; $6f2f: $ca $80 $00

	add  b                                           ; $6f32: $80
	db   $10                                         ; $6f33: $10
	add  b                                           ; $6f34: $80

jr_02e_6f35:
	nop                                              ; $6f35: $00
	add  b                                           ; $6f36: $80
	ld   [de], a                                     ; $6f37: $12
	add  b                                           ; $6f38: $80

jr_02e_6f39:
	sub  e                                           ; $6f39: $93
	add  h                                           ; $6f3a: $84
	sub  d                                           ; $6f3b: $92
	add  h                                           ; $6f3c: $84
	nop                                              ; $6f3d: $00
	add  b                                           ; $6f3e: $80
	sbc  b                                           ; $6f3f: $98
	add  b                                           ; $6f40: $80
	inc  h                                           ; $6f41: $24
	add  b                                           ; $6f42: $80
	inc  a                                           ; $6f43: $3c
	add  b                                           ; $6f44: $80
	jr   nz, jr_02e_6ec7                             ; $6f45: $20 $80

	inc  e                                           ; $6f47: $1c
	add  d                                           ; $6f48: $82
	add  hl, bc                                      ; $6f49: $09
	add  b                                           ; $6f4a: $80
	rla                                              ; $6f4b: $17
	add  b                                           ; $6f4c: $80
	ld   sp, $1382                                   ; $6f4d: $31 $82 $13
	add  b                                           ; $6f50: $80
	dec  d                                           ; $6f51: $15
	add  b                                           ; $6f52: $80

jr_02e_6f53:
	add  hl, de                                      ; $6f53: $19
	add  b                                           ; $6f54: $80
	nop                                              ; $6f55: $00
	add  b                                           ; $6f56: $80
	inc  bc                                          ; $6f57: $03
	add  b                                           ; $6f58: $80
	ldh  [c], a                                      ; $6f59: $e2
	add  b                                           ; $6f5a: $80
	inc  bc                                          ; $6f5b: $03
	add  b                                           ; $6f5c: $80
	add  d                                           ; $6f5d: $82
	add  b                                           ; $6f5e: $80
	add  e                                           ; $6f5f: $83
	add  b                                           ; $6f60: $80
	ld   b, b                                        ; $6f61: $40
	add  b                                           ; $6f62: $80
	ld   a, [hl+]                                    ; $6f63: $2a
	add  b                                           ; $6f64: $80
	add  b                                           ; $6f65: $80
	add  b                                           ; $6f66: $80
	ldh  [$80], a                                    ; $6f67: $e0 $80
	jr   nz, jr_02e_6eeb                             ; $6f69: $20 $80

	ldh  [$80], a                                    ; $6f6b: $e0 $80
	jr   nz, jr_02e_6eef                             ; $6f6d: $20 $80

	ldh  [$80], a                                    ; $6f6f: $e0 $80
	sub  b                                           ; $6f71: $90
	add  b                                           ; $6f72: $80
	ld   [$0080], sp                                 ; $6f73: $08 $80 $00
	add  b                                           ; $6f76: $80
	rlca                                             ; $6f77: $07
	add  b                                           ; $6f78: $80
	nop                                              ; $6f79: $00
	add  h                                           ; $6f7a: $84
	ld   bc, $0280                                   ; $6f7b: $01 $80 $02
	add  d                                           ; $6f7e: $82
	nop                                              ; $6f7f: $00
	add  b                                           ; $6f80: $80
	ldh  [$80], a                                    ; $6f81: $e0 $80

jr_02e_6f83:
	jr   nz, jr_02e_6f05                             ; $6f83: $20 $80

	pop  bc                                          ; $6f85: $c1
	add  b                                           ; $6f86: $80
	ld   b, $86                                      ; $6f87: $06 $86
	nop                                              ; $6f89: $00
	add  b                                           ; $6f8a: $80

jr_02e_6f8b:
	ld   b, d                                        ; $6f8b: $42
	add  d                                           ; $6f8c: $82
	add  d                                           ; $6f8d: $82
	add  d                                           ; $6f8e: $82

jr_02e_6f8f:
	add  b                                           ; $6f8f: $80
	add  b                                           ; $6f90: $80
	add  e                                           ; $6f91: $83
	add  d                                           ; $6f92: $82
	nop                                              ; $6f93: $00
	add  b                                           ; $6f94: $80

jr_02e_6f95:
	ld   b, a                                        ; $6f95: $47
	add  b                                           ; $6f96: $80
	ld   b, b                                        ; $6f97: $40
	add  d                                           ; $6f98: $82
	ld   b, c                                        ; $6f99: $41
	add  b                                           ; $6f9a: $80
	add  d                                           ; $6f9b: $82
	add  b                                           ; $6f9c: $80

jr_02e_6f9d:
	inc  b                                           ; $6f9d: $04
	add  d                                           ; $6f9e: $82

jr_02e_6f9f:
	nop                                              ; $6f9f: $00
	add  d                                           ; $6fa0: $82
	add  b                                           ; $6fa1: $80
	add  b                                           ; $6fa2: $80

jr_02e_6fa3:
	nop                                              ; $6fa3: $00
	add  b                                           ; $6fa4: $80
	add  b                                           ; $6fa5: $80
	add  d                                           ; $6fa6: $82
	ld   b, b                                        ; $6fa7: $40
	jp   nz, $8200                                   ; $6fa8: $c2 $00 $82

	inc  h                                           ; $6fab: $24
	add  b                                           ; $6fac: $80
	ld   a, [hl]                                     ; $6fad: $7e
	add  d                                           ; $6fae: $82
	inc  h                                           ; $6faf: $24
	add  b                                           ; $6fb0: $80
	inc  b                                           ; $6fb1: $04
	add  b                                           ; $6fb2: $80
	jr   jr_02e_6f35                                 ; $6fb3: $18 $80

	nop                                              ; $6fb5: $00
	add  b                                           ; $6fb6: $80
	jr   nz, jr_02e_6f39                             ; $6fb7: $20 $80

	inc  a                                           ; $6fb9: $3c
	add  b                                           ; $6fba: $80
	inc  h                                           ; $6fbb: $24
	add  b                                           ; $6fbc: $80
	ld   b, h                                        ; $6fbd: $44
	add  b                                           ; $6fbe: $80
	inc  b                                           ; $6fbf: $04
	add  b                                           ; $6fc0: $80
	ld   [$3080], sp                                 ; $6fc1: $08 $80 $30
	add  b                                           ; $6fc4: $80
	nop                                              ; $6fc5: $00
	add  b                                           ; $6fc6: $80
	inc  a                                           ; $6fc7: $3c
	add  b                                           ; $6fc8: $80
	nop                                              ; $6fc9: $00
	add  b                                           ; $6fca: $80
	ld   a, [hl]                                     ; $6fcb: $7e
	add  d                                           ; $6fcc: $82
	ld   [bc], a                                     ; $6fcd: $02
	add  b                                           ; $6fce: $80
	inc  b                                           ; $6fcf: $04
	add  b                                           ; $6fd0: $80
	jr   jr_02e_6f53                                 ; $6fd1: $18 $80

	nop                                              ; $6fd3: $00
	add  d                                           ; $6fd4: $82
	db   $10                                         ; $6fd5: $10
	add  b                                           ; $6fd6: $80

jr_02e_6fd7:
	ld   a, [hl]                                     ; $6fd7: $7e
	add  d                                           ; $6fd8: $82
	ld   [de], a                                     ; $6fd9: $12
	add  b                                           ; $6fda: $80
	ld   [hl+], a                                    ; $6fdb: $22
	add  b                                           ; $6fdc: $80
	ld   c, h                                        ; $6fdd: $4c
	add  d                                           ; $6fde: $82
	nop                                              ; $6fdf: $00
	add  b                                           ; $6fe0: $80
	ld   b, b                                        ; $6fe1: $40
	add  b                                           ; $6fe2: $80
	ld   [hl+], a                                    ; $6fe3: $22
	add  b                                           ; $6fe4: $80
	ld   [bc], a                                     ; $6fe5: $02
	add  b                                           ; $6fe6: $80
	inc  b                                           ; $6fe7: $04
	add  b                                           ; $6fe8: $80
	ld   [$7080], sp                                 ; $6fe9: $08 $80 $70
	add  b                                           ; $6fec: $80
	nop                                              ; $6fed: $00
	add  d                                           ; $6fee: $82
	ld   [$7e80], sp                                 ; $6fef: $08 $80 $7e
	add  d                                           ; $6ff2: $82
	ld   [$1080], sp                                 ; $6ff3: $08 $80 $10
	add  b                                           ; $6ff6: $80
	ld   h, b                                        ; $6ff7: $60
	add  d                                           ; $6ff8: $82
	nop                                              ; $6ff9: $00
	add  b                                           ; $6ffa: $80
	ld   a, b                                        ; $6ffb: $78
	add  b                                           ; $6ffc: $80
	ld   [$1080], sp                                 ; $6ffd: $08 $80 $10
	add  b                                           ; $7000: $80

jr_02e_7001:
	jr   jr_02e_6f83                                 ; $7001: $18 $80

	inc  h                                           ; $7003: $24
	add  b                                           ; $7004: $80
	ld   b, h                                        ; $7005: $44
	add  b                                           ; $7006: $80
	nop                                              ; $7007: $00
	add  b                                           ; $7008: $80

jr_02e_7009:
	jr   nc, jr_02e_6f8b                             ; $7009: $30 $80

	inc  c                                           ; $700b: $0c
	add  b                                           ; $700c: $80

jr_02e_700d:
	jr   nc, jr_02e_6f8f                             ; $700d: $30 $80

	inc  c                                           ; $700f: $0c
	add  b                                           ; $7010: $80
	nop                                              ; $7011: $00
	add  b                                           ; $7012: $80
	jr   nc, jr_02e_6f95                             ; $7013: $30 $80

jr_02e_7015:
	inc  c                                           ; $7015: $0c
	add  b                                           ; $7016: $80
	nop                                              ; $7017: $00
	add  h                                           ; $7018: $84
	jr   nz, jr_02e_6f9d                             ; $7019: $20 $82

	inc  h                                           ; $701b: $24
	add  b                                           ; $701c: $80
	jr   z, jr_02e_6f9f                              ; $701d: $28 $80

	jr   nc, jr_02e_6fa3                             ; $701f: $30 $82

	nop                                              ; $7021: $00
	add  b                                           ; $7022: $80
	ld   a, [hl]                                     ; $7023: $7e
	add  b                                           ; $7024: $80
	ld   [bc], a                                     ; $7025: $02
	add  b                                           ; $7026: $80
	ld   [hl+], a                                    ; $7027: $22
	add  b                                           ; $7028: $80
	inc  d                                           ; $7029: $14
	add  d                                           ; $702a: $82
	ld   [$0080], sp                                 ; $702b: $08 $80 $00
	add  [hl]                                        ; $702e: $86
	inc  h                                           ; $702f: $24
	add  b                                           ; $7030: $80
	inc  b                                           ; $7031: $04
	add  b                                           ; $7032: $80
	ld   [$3080], sp                                 ; $7033: $08 $80 $30
	add  d                                           ; $7036: $82
	nop                                              ; $7037: $00
	add  b                                           ; $7038: $80
	ld   a, [hl]                                     ; $7039: $7e
	add  b                                           ; $703a: $80
	ld   [bc], a                                     ; $703b: $02
	add  b                                           ; $703c: $80
	inc  e                                           ; $703d: $1c
	add  d                                           ; $703e: $82
	db   $10                                         ; $703f: $10
	add  b                                           ; $7040: $80

jr_02e_7041:
	jr   nz, jr_02e_7001                             ; $7041: $20 $be

	nop                                              ; $7043: $00
	add  b                                           ; $7044: $80
	ld   b, b                                        ; $7045: $40
	add  b                                           ; $7046: $80
	ld   h, b                                        ; $7047: $60
	add  b                                           ; $7048: $80
	ld   a, [hl]                                     ; $7049: $7e
	add  b                                           ; $704a: $80
	ld   d, h                                        ; $704b: $54
	add  b                                           ; $704c: $80
	or   h                                           ; $704d: $b4
	add  b                                           ; $704e: $80
	db   $f4                                         ; $704f: $f4
	add  b                                           ; $7050: $80
	and  h                                           ; $7051: $a4
	add  b                                           ; $7052: $80
	ccf                                              ; $7053: $3f
	add  b                                           ; $7054: $80
	jr   z, jr_02e_6fd7                              ; $7055: $28 $80

	rst  $38                                         ; $7057: $ff
	adc  b                                           ; $7058: $88
	ld   a, [hl]                                     ; $7059: $7e
	add  b                                           ; $705a: $80
	ld   d, d                                        ; $705b: $52
	add  b                                           ; $705c: $80
	nop                                              ; $705d: $00
	add  b                                           ; $705e: $80
	ld   h, d                                        ; $705f: $62
	add  b                                           ; $7060: $80
	sub  d                                           ; $7061: $92
	add  b                                           ; $7062: $80
	add  a                                           ; $7063: $87
	add  b                                           ; $7064: $80
	ld   h, d                                        ; $7065: $62
	add  b                                           ; $7066: $80
	ld   [de], a                                     ; $7067: $12
	add  b                                           ; $7068: $80
	sub  d                                           ; $7069: $92
	add  b                                           ; $706a: $80
	ld   h, e                                        ; $706b: $63
	add  h                                           ; $706c: $84

jr_02e_706d:
	nop                                              ; $706d: $00
	add  b                                           ; $706e: $80
	cp   c                                           ; $706f: $b9
	add  b                                           ; $7070: $80
	dec  b                                           ; $7071: $05
	add  b                                           ; $7072: $80
	dec  e                                           ; $7073: $1d
	add  b                                           ; $7074: $80
	dec  h                                           ; $7075: $25
	add  b                                           ; $7076: $80

jr_02e_7077:
	dec  e                                           ; $7077: $1d
	add  b                                           ; $7078: $80
	nop                                              ; $7079: $00
	add  d                                           ; $707a: $82

jr_02e_707b:
	ld   [$5e80], sp                                 ; $707b: $08 $80 $5e
	add  b                                           ; $707e: $80
	adc  b                                           ; $707f: $88
	add  d                                           ; $7080: $82
	ld   [$0c80], sp                                 ; $7081: $08 $80 $0c
	add  b                                           ; $7084: $80
	nop                                              ; $7085: $00
	add  b                                           ; $7086: $80
	jr   jr_02e_7009                                 ; $7087: $18 $80

	inc  h                                           ; $7089: $24
	add  b                                           ; $708a: $80
	jr   nz, jr_02e_700d                             ; $708b: $20 $80

	add  hl, de                                      ; $708d: $19
	add  b                                           ; $708e: $80
	dec  b                                           ; $708f: $05
	add  b                                           ; $7090: $80

jr_02e_7091:
	dec  h                                           ; $7091: $25
	add  b                                           ; $7092: $80
	jr   jr_02e_7015                                 ; $7093: $18 $80

	nop                                              ; $7095: $00
	add  d                                           ; $7096: $82
	ld   [bc], a                                     ; $7097: $02
	add  b                                           ; $7098: $80
	jp   nz, $2280                                   ; $7099: $c2 $80 $22

	add  b                                           ; $709c: $80
	ldh  [c], a                                      ; $709d: $e2
	add  b                                           ; $709e: $80
	ld   [bc], a                                     ; $709f: $02
	add  b                                           ; $70a0: $80
	ldh  [c], a                                      ; $70a1: $e2
	add  h                                           ; $70a2: $84
	nop                                              ; $70a3: $00
	add  b                                           ; $70a4: $80
	ld   sp, $4a80                                   ; $70a5: $31 $80 $4a
	add  b                                           ; $70a8: $80
	ld   a, d                                        ; $70a9: $7a
	add  b                                           ; $70aa: $80
	ld   b, d                                        ; $70ab: $42
	add  b                                           ; $70ac: $80
	add  hl, sp                                      ; $70ad: $39
	add  b                                           ; $70ae: $80
	nop                                              ; $70af: $00
	add  d                                           ; $70b0: $82
	ld   [$9e80], sp                                 ; $70b1: $08 $80 $9e
	add  b                                           ; $70b4: $80
	ld   c, b                                        ; $70b5: $48
	add  b                                           ; $70b6: $80
	ld   [$4880], sp                                 ; $70b7: $08 $80 $48
	add  b                                           ; $70ba: $80
	adc  h                                           ; $70bb: $8c
	add  b                                           ; $70bc: $80
	nop                                              ; $70bd: $00
	add  b                                           ; $70be: $80
	jr   nc, jr_02e_7041                             ; $70bf: $30 $80

	ld   c, b                                        ; $70c1: $48
	add  b                                           ; $70c2: $80
	ld   b, c                                        ; $70c3: $41
	add  b                                           ; $70c4: $80
	ld   [hl-], a                                    ; $70c5: $32
	add  b                                           ; $70c6: $80
	ld   a, [bc]                                     ; $70c7: $0a
	add  b                                           ; $70c8: $80
	ld   c, d                                        ; $70c9: $4a
	add  b                                           ; $70ca: $80
	ld   sp, $0084                                   ; $70cb: $31 $84 $00
	add  b                                           ; $70ce: $80
	sub  d                                           ; $70cf: $92
	add  h                                           ; $70d0: $84

jr_02e_70d1:
	ld   d, d                                        ; $70d1: $52
	add  b                                           ; $70d2: $80
	adc  h                                           ; $70d3: $8c
	add  h                                           ; $70d4: $84
	nop                                              ; $70d5: $00
	add  b                                           ; $70d6: $80
	db   $e3                                         ; $70d7: $e3
	add  h                                           ; $70d8: $84
	sub  h                                           ; $70d9: $94
	add  b                                           ; $70da: $80
	sub  e                                           ; $70db: $93
	add  b                                           ; $70dc: $80
	nop                                              ; $70dd: $00
	add  b                                           ; $70de: $80
	cp   h                                           ; $70df: $bc
	add  d                                           ; $70e0: $82
	sub  b                                           ; $70e1: $90
	add  h                                           ; $70e2: $84
	sub  c                                           ; $70e3: $91
	add  b                                           ; $70e4: $80
	sub  b                                           ; $70e5: $90
	add  h                                           ; $70e6: $84
	nop                                              ; $70e7: $00
	add  b                                           ; $70e8: $80

jr_02e_70e9:
	rst  ToBoot                                         ; $70e9: $c7
	add  b                                           ; $70ea: $80
	jr   z, jr_02e_706d                              ; $70eb: $28 $80

	and  $80                                         ; $70ed: $e6 $80
	ld   bc, $ee80                                   ; $70ef: $01 $80 $ee
	add  b                                           ; $70f2: $80
	nop                                              ; $70f3: $00
	add  d                                           ; $70f4: $82
	jr   nz, jr_02e_7077                             ; $70f5: $20 $80

	ld   a, b                                        ; $70f7: $78
	add  h                                           ; $70f8: $84
	jr   nz, jr_02e_707b                             ; $70f9: $20 $80

	jr   nc, jr_02e_70d1                             ; $70fb: $30 $d4

	nop                                              ; $70fd: $00
	add  b                                           ; $70fe: $80
	rra                                              ; $70ff: $1f
	add  b                                           ; $7100: $80
	rrca                                             ; $7101: $0f
	add  b                                           ; $7102: $80
	ld   [$0f80], sp                                 ; $7103: $08 $80 $0f
	add  b                                           ; $7106: $80
	ld   [$0084], sp                                 ; $7107: $08 $84 $00
	add  b                                           ; $710a: $80
	di                                               ; $710b: $f3
	add  b                                           ; $710c: $80
	ldh  [$80], a                                    ; $710d: $e0 $80
	jr   nz, jr_02e_7091                             ; $710f: $20 $80

jr_02e_7111:
	pop  hl                                          ; $7111: $e1
	add  b                                           ; $7112: $80

jr_02e_7113:
	add  d                                           ; $7113: $82
	add  h                                           ; $7114: $84
	nop                                              ; $7115: $00
	add  b                                           ; $7116: $80
	ldh  [$80], a                                    ; $7117: $e0 $80
	ld   b, b                                        ; $7119: $40
	add  b                                           ; $711a: $80
	add  b                                           ; $711b: $80
	add  b                                           ; $711c: $80
	ldh  a, [$80]                                    ; $711d: $f0 $80
	ld   [$0082], sp                                 ; $711f: $08 $82 $00
	add  b                                           ; $7122: $80
	ld   a, [hl+]                                    ; $7123: $2a
	add  b                                           ; $7124: $80
	nop                                              ; $7125: $00
	add  b                                           ; $7126: $80
	ld   a, $80                                      ; $7127: $3e $80
	ld   a, [hl+]                                    ; $7129: $2a
	add  b                                           ; $712a: $80
	ld   a, $80                                      ; $712b: $3e $80
	ld   a, [hl+]                                    ; $712d: $2a
	add  d                                           ; $712e: $82
	nop                                              ; $712f: $00
	add  b                                           ; $7130: $80
	inc  hl                                          ; $7131: $23
	add  b                                           ; $7132: $80
	ld   a, [hl+]                                    ; $7133: $2a
	add  b                                           ; $7134: $80
	inc  hl                                          ; $7135: $23
	add  b                                           ; $7136: $80
	ld   a, [$2280]                                  ; $7137: $fa $80 $22
	add  b                                           ; $713a: $80
	ld   a, [hl+]                                    ; $713b: $2a
	add  d                                           ; $713c: $82
	nop                                              ; $713d: $00
	add  b                                           ; $713e: $80
	rst  ToBoot                                         ; $713f: $c7
	add  b                                           ; $7140: $80
	ld   b, h                                        ; $7141: $44
	add  b                                           ; $7142: $80
	rst  ToBoot                                         ; $7143: $c7
	add  b                                           ; $7144: $80
	nop                                              ; $7145: $00
	add  b                                           ; $7146: $80
	ldh  a, [c]                                      ; $7147: $f2
	add  b                                           ; $7148: $80
	rrca                                             ; $7149: $0f
	add  d                                           ; $714a: $82
	nop                                              ; $714b: $00
	add  b                                           ; $714c: $80
	cp   a                                           ; $714d: $bf
	add  d                                           ; $714e: $82
	add  c                                           ; $714f: $81
	add  b                                           ; $7150: $80
	xor  a                                           ; $7151: $af
	add  b                                           ; $7152: $80
	xor  c                                           ; $7153: $a9
	add  b                                           ; $7154: $80
	xor  a                                           ; $7155: $af
	add  d                                           ; $7156: $82
	nop                                              ; $7157: $00
	add  b                                           ; $7158: $80
	ei                                               ; $7159: $fb
	add  d                                           ; $715a: $82
	nop                                              ; $715b: $00
	add  b                                           ; $715c: $80
	db   $eb                                         ; $715d: $eb
	add  b                                           ; $715e: $80
	ld   a, [hl+]                                    ; $715f: $2a
	add  b                                           ; $7160: $80
	ld   [$0082], a                                  ; $7161: $ea $82 $00
	add  b                                           ; $7164: $80
	rst  $38                                         ; $7165: $ff
	add  d                                           ; $7166: $82
	jr   nz, jr_02e_70e9                             ; $7167: $20 $80

	rst  $38                                         ; $7169: $ff
	add  b                                           ; $716a: $80
	ld   b, h                                        ; $716b: $44
	add  b                                           ; $716c: $80
	ld   a, h                                        ; $716d: $7c
	add  d                                           ; $716e: $82
	nop                                              ; $716f: $00
	add  b                                           ; $7170: $80
	add  b                                           ; $7171: $80
	add  d                                           ; $7172: $82
	nop                                              ; $7173: $00
	add  h                                           ; $7174: $84
	add  b                                           ; $7175: $80
	sbc  $00                                         ; $7176: $de $00
	add  b                                           ; $7178: $80
	rrca                                             ; $7179: $0f
	add  b                                           ; $717a: $80
	ld   [$0980], sp                                 ; $717b: $08 $80 $09
	add  b                                           ; $717e: $80
	ld   d, $86                                      ; $717f: $16 $86
	nop                                              ; $7181: $00
	add  b                                           ; $7182: $80
	db   $f4                                         ; $7183: $f4
	add  b                                           ; $7184: $80
	add  b                                           ; $7185: $80
	add  b                                           ; $7186: $80
	ld   b, c                                        ; $7187: $41
	add  b                                           ; $7188: $80
	jr   nc, jr_02e_7111                             ; $7189: $30 $86

	nop                                              ; $718b: $00
	add  b                                           ; $718c: $80
	ld   [$c880], sp                                 ; $718d: $08 $80 $c8
	add  b                                           ; $7190: $80
	jr   nc, jr_02e_7113                             ; $7191: $30 $80

	ldh  [$86], a                                    ; $7193: $e0 $86
	nop                                              ; $7195: $00
	add  b                                           ; $7196: $80
	ld   a, $80                                      ; $7197: $3e $80
	ld   [$3e80], sp                                 ; $7199: $08 $80 $3e
	add  d                                           ; $719c: $82
	ld   [$0084], sp                                 ; $719d: $08 $84 $00
	add  b                                           ; $71a0: $80
	ld   a, [hl+]                                    ; $71a1: $2a
	add  d                                           ; $71a2: $82
	ld   [de], a                                     ; $71a3: $12
	add  b                                           ; $71a4: $80
	ld   [hl-], a                                    ; $71a5: $32
	add  b                                           ; $71a6: $80
	ld   c, d                                        ; $71a7: $4a
	add  h                                           ; $71a8: $84
	nop                                              ; $71a9: $00
	add  b                                           ; $71aa: $80
	ldh  a, [c]                                      ; $71ab: $f2
	add  b                                           ; $71ac: $80
	sub  [hl]                                        ; $71ad: $96
	add  b                                           ; $71ae: $80
	ldh  a, [c]                                      ; $71af: $f2
	add  b                                           ; $71b0: $80
	ld   d, d                                        ; $71b1: $52
	add  b                                           ; $71b2: $80
	and  $84                                         ; $71b3: $e6 $84
	nop                                              ; $71b5: $00
	add  d                                           ; $71b6: $82
	xor  c                                           ; $71b7: $a9
	add  b                                           ; $71b8: $80
	xor  a                                           ; $71b9: $af
	add  b                                           ; $71ba: $80
	and  b                                           ; $71bb: $a0
	add  b                                           ; $71bc: $80
	cp   a                                           ; $71bd: $bf
	add  h                                           ; $71be: $84
	nop                                              ; $71bf: $00
	add  d                                           ; $71c0: $82
	ld   a, [hl+]                                    ; $71c1: $2a
	add  b                                           ; $71c2: $80
	ld   [$0a80], a                                  ; $71c3: $ea $80 $0a
	add  b                                           ; $71c6: $80
	ei                                               ; $71c7: $fb
	add  h                                           ; $71c8: $84
	nop                                              ; $71c9: $00
	add  b                                           ; $71ca: $80
	ld   b, h                                        ; $71cb: $44
	add  b                                           ; $71cc: $80
	ld   a, h                                        ; $71cd: $7c
	add  d                                           ; $71ce: $82
	ld   b, h                                        ; $71cf: $44
	add  b                                           ; $71d0: $80
	rst  $38                                         ; $71d1: $ff
	add  h                                           ; $71d2: $84
	nop                                              ; $71d3: $00
	adc  b                                           ; $71d4: $88
	add  b                                           ; $71d5: $80
	and  h                                           ; $71d6: $a4
	nop                                              ; $71d7: $00
	or   d                                           ; $71d8: $b2
	ld   bc, $00ff                                   ; $71d9: $01 $ff $00
	rst  $38                                         ; $71dc: $ff
	nop                                              ; $71dd: $00
	rst  $38                                         ; $71de: $ff
	nop                                              ; $71df: $00
	rst  $38                                         ; $71e0: $ff
	nop                                              ; $71e1: $00
	rst  $38                                         ; $71e2: $ff
	nop                                              ; $71e3: $00
	rst  $38                                         ; $71e4: $ff
	nop                                              ; $71e5: $00
	rst  $38                                         ; $71e6: $ff
	nop                                              ; $71e7: $00
	rst  $30                                         ; $71e8: $f7

jr_02e_71e9:
	nop                                              ; $71e9: $00
	dec  b                                           ; $71ea: $05
	scf                                              ; $71eb: $37
	ld   hl, sp+$10                                  ; $71ec: $f8 $10
	ldh  [rLCDC], a                                  ; $71ee: $e0 $40
	add  b                                           ; $71f0: $80
	add  d                                           ; $71f1: $82
	nop                                              ; $71f2: $00
	add  b                                           ; $71f3: $80
	inc  bc                                          ; $71f4: $03
	dec  d                                           ; $71f5: $15
	ld   b, $07                                      ; $71f6: $06 $07
	inc  c                                           ; $71f8: $0c
	rrca                                             ; $71f9: $0f
	ld   b, $07                                      ; $71fa: $06 $07
	dec  bc                                          ; $71fc: $0b
	rrca                                             ; $71fd: $0f
	scf                                              ; $71fe: $37
	ccf                                              ; $71ff: $3f
	ld   e, a                                        ; $7200: $5f
	ld   a, a                                        ; $7201: $7f
	adc  a                                           ; $7202: $8f
	rst  $38                                         ; $7203: $ff
	dec  bc                                          ; $7204: $0b
	rst  $38                                         ; $7205: $ff
	inc  bc                                          ; $7206: $03
	rst  $38                                         ; $7207: $ff
	ld   [bc], a                                     ; $7208: $02
	rst  $38                                         ; $7209: $ff
	nop                                              ; $720a: $00
	ld   d, l                                        ; $720b: $55
	add  b                                           ; $720c: $80
	xor  d                                           ; $720d: $aa
	add  b                                           ; $720e: $80
	push de                                          ; $720f: $d5
	add  b                                           ; $7210: $80
	ld   [$f580], a                                  ; $7211: $ea $80 $f5
	add  b                                           ; $7214: $80
	ld   a, [$fd80]                                  ; $7215: $fa $80 $fd
	add  b                                           ; $7218: $80
	cp   $80                                         ; $7219: $fe $80
	ld   d, l                                        ; $721b: $55
	add  b                                           ; $721c: $80
	xor  d                                           ; $721d: $aa
	add  b                                           ; $721e: $80
	ld   d, l                                        ; $721f: $55
	add  b                                           ; $7220: $80
	xor  d                                           ; $7221: $aa
	add  b                                           ; $7222: $80
	ld   d, l                                        ; $7223: $55
	add  b                                           ; $7224: $80
	xor  d                                           ; $7225: $aa
	add  b                                           ; $7226: $80
	ld   d, l                                        ; $7227: $55
	add  b                                           ; $7228: $80
	xor  d                                           ; $7229: $aa
	rlca                                             ; $722a: $07
	ccf                                              ; $722b: $3f
	rst  $38                                         ; $722c: $ff
	ld   b, a                                        ; $722d: $47
	cp   a                                           ; $722e: $bf
	ld   l, h                                        ; $722f: $6c
	ld   d, a                                        ; $7230: $57
	xor  e                                           ; $7231: $ab
	xor  b                                           ; $7232: $a8
	add  b                                           ; $7233: $80
	ld   d, h                                        ; $7234: $54
	add  b                                           ; $7235: $80
	xor  d                                           ; $7236: $aa
	add  b                                           ; $7237: $80
	ld   d, h                                        ; $7238: $54
	add  b                                           ; $7239: $80
	xor  d                                           ; $723a: $aa
	dec  bc                                          ; $723b: $0b
	rst  $20                                         ; $723c: $e7
	rst  $38                                         ; $723d: $ff
	rst  ToBoot                                         ; $723e: $c7
	rst  $38                                         ; $723f: $ff
	rra                                              ; $7240: $1f
	rst  $38                                         ; $7241: $ff
	jp   $383f                                       ; $7242: $c3 $3f $38


	rlca                                             ; $7245: $07
	ld   bc, $8002                                   ; $7246: $01 $02 $80
	ld   bc, $0204                                   ; $7249: $01 $04 $02
	inc  bc                                          ; $724c: $03
	or   $ff                                         ; $724d: $f6 $ff
	rst  $20                                         ; $724f: $e7
	add  c                                           ; $7250: $81
	rst  $38                                         ; $7251: $ff
	ld   c, $cf                                      ; $7252: $0e $cf
	rst  $38                                         ; $7254: $ff
	jr   nz, @+$01                                   ; $7255: $20 $ff

	ld   b, b                                        ; $7257: $40
	rst  $38                                         ; $7258: $ff
	dec  d                                           ; $7259: $15
	push de                                          ; $725a: $d5
	ld   a, [hl+]                                    ; $725b: $2a
	xor  d                                           ; $725c: $aa
	add  b                                           ; $725d: $80
	rst  $38                                         ; $725e: $ff
	adc  b                                           ; $725f: $88
	rst  $38                                         ; $7260: $ff
	rst  $20                                         ; $7261: $e7
	add  c                                           ; $7262: $81
	rst  $38                                         ; $7263: $ff
	ld   [bc], a                                     ; $7264: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7265: $cf
	rst  $38                                         ; $7266: $ff
	jr   nz, jr_02e_71e9                             ; $7267: $20 $80

	rst  $38                                         ; $7269: $ff
	add  d                                           ; $726a: $82
	nop                                              ; $726b: $00
	ld   bc, $20ff                                   ; $726c: $01 $ff $20
	add  c                                           ; $726f: $81
	rst  $38                                         ; $7270: $ff
	nop                                              ; $7271: $00
	sbc  a                                           ; $7272: $9f
	add  c                                           ; $7273: $81
	rst  $38                                         ; $7274: $ff
	nop                                              ; $7275: $00
	ld   b, b                                        ; $7276: $40
	add  b                                           ; $7277: $80
	rst  $38                                         ; $7278: $ff
	add  d                                           ; $7279: $82
	nop                                              ; $727a: $00
	ld   bc, $40ff                                   ; $727b: $01 $ff $40
	add  c                                           ; $727e: $81
	rst  $38                                         ; $727f: $ff
	nop                                              ; $7280: $00
	ccf                                              ; $7281: $3f
	add  c                                           ; $7282: $81
	rst  $38                                         ; $7283: $ff
	nop                                              ; $7284: $00
	add  b                                           ; $7285: $80
	add  b                                           ; $7286: $80
	rst  $38                                         ; $7287: $ff
	add  d                                           ; $7288: $82
	nop                                              ; $7289: $00
	ld   bc, $81ff                                   ; $728a: $01 $ff $81
	add  e                                           ; $728d: $83
	rst  $38                                         ; $728e: $ff
	ld   [bc], a                                     ; $728f: $02
	cp   $ff                                         ; $7290: $fe $ff
	add  b                                           ; $7292: $80
	add  b                                           ; $7293: $80
	rst  $38                                         ; $7294: $ff
	add  d                                           ; $7295: $82
	nop                                              ; $7296: $00
	ld   bc, $04ff                                   ; $7297: $01 $ff $04
	add  c                                           ; $729a: $81
	rst  $38                                         ; $729b: $ff
	inc  b                                           ; $729c: $04
	ld   sp, hl                                      ; $729d: $f9
	rst  $38                                         ; $729e: $ff
	ld   a, a                                        ; $729f: $7f
	rst  $38                                         ; $72a0: $ff
	add  d                                           ; $72a1: $82
	add  b                                           ; $72a2: $80
	rst  $38                                         ; $72a3: $ff
	add  c                                           ; $72a4: $81
	nop                                              ; $72a5: $00
	ld   [bc], a                                     ; $72a6: $02
	rlca                                             ; $72a7: $07
	rst  $38                                         ; $72a8: $ff
	rrca                                             ; $72a9: $0f
	add  c                                           ; $72aa: $81
	rst  $38                                         ; $72ab: $ff
	nop                                              ; $72ac: $00
	di                                               ; $72ad: $f3
	add  c                                           ; $72ae: $81
	rst  $38                                         ; $72af: $ff
	nop                                              ; $72b0: $00
	inc  b                                           ; $72b1: $04
	add  b                                           ; $72b2: $80
	rst  $38                                         ; $72b3: $ff
	add  c                                           ; $72b4: $81
	nop                                              ; $72b5: $00
	ld   [bc], a                                     ; $72b6: $02
	rst  JumpTable                                         ; $72b7: $df
	rst  $38                                         ; $72b8: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72b9: $cf
	add  c                                           ; $72ba: $81
	rst  $38                                         ; $72bb: $ff
	ld   b, $e7                                      ; $72bc: $06 $e7
	rst  $38                                         ; $72be: $ff
	ld   hl, sp-$01                                  ; $72bf: $f8 $ff
	rlca                                             ; $72c1: $07
	db   $fc                                         ; $72c2: $fc
	db   $f4                                         ; $72c3: $f4
	add  b                                           ; $72c4: $80
	inc  b                                           ; $72c5: $04
	inc  c                                           ; $72c6: $0c
	ld   [bc], a                                     ; $72c7: $02
	ld   a, l                                        ; $72c8: $7d
	rst  $38                                         ; $72c9: $ff
	ccf                                              ; $72ca: $3f
	rst  $38                                         ; $72cb: $ff
	sbc  a                                           ; $72cc: $9f
	rst  $38                                         ; $72cd: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72ce: $cf
	rst  $38                                         ; $72cf: $ff
	db   $10                                         ; $72d0: $10
	rst  $38                                         ; $72d1: $ff
	push af                                          ; $72d2: $f5
	ld   a, [bc]                                     ; $72d3: $0a
	add  b                                           ; $72d4: $80
	dec  b                                           ; $72d5: $05
	add  b                                           ; $72d6: $80
	ld   [bc], a                                     ; $72d7: $02
	add  hl, bc                                      ; $72d8: $09
	sbc  a                                           ; $72d9: $9f
	rst  $38                                         ; $72da: $ff
	adc  a                                           ; $72db: $8f
	rst  $38                                         ; $72dc: $ff
	ldh  [rIE], a                                    ; $72dd: $e0 $ff
	dec  bc                                          ; $72df: $0b
	db   $fc                                         ; $72e0: $fc
	dec  c                                           ; $72e1: $0d
	push af                                          ; $72e2: $f5
	add  b                                           ; $72e3: $80
	xor  d                                           ; $72e4: $aa
	add  b                                           ; $72e5: $80
	ld   d, l                                        ; $72e6: $55
	add  b                                           ; $72e7: $80
	xor  d                                           ; $72e8: $aa
	ld   sp, $3fc5                                   ; $72e9: $31 $c5 $3f
	ld   [hl], b                                     ; $72ec: $70
	ld   a, a                                        ; $72ed: $7f
	ldh  [rIE], a                                    ; $72ee: $e0 $ff
	ret  nz                                          ; $72f0: $c0

	rst  $38                                         ; $72f1: $ff
	add  b                                           ; $72f2: $80
	rst  $38                                         ; $72f3: $ff
	nop                                              ; $72f4: $00
	rst  $38                                         ; $72f5: $ff
	nop                                              ; $72f6: $00
	rst  $38                                         ; $72f7: $ff
	nop                                              ; $72f8: $00
	rst  $38                                         ; $72f9: $ff
	nop                                              ; $72fa: $00
	rst  $38                                         ; $72fb: $ff
	nop                                              ; $72fc: $00
	rst  $38                                         ; $72fd: $ff
	nop                                              ; $72fe: $00
	rst  $38                                         ; $72ff: $ff
	nop                                              ; $7300: $00
	rst  $38                                         ; $7301: $ff
	nop                                              ; $7302: $00
	rst  $38                                         ; $7303: $ff
	nop                                              ; $7304: $00
	rst  $38                                         ; $7305: $ff
	nop                                              ; $7306: $00
	rst  $38                                         ; $7307: $ff
	nop                                              ; $7308: $00
	rst  $38                                         ; $7309: $ff
	xor  d                                           ; $730a: $aa
	rst  $38                                         ; $730b: $ff
	cp   a                                           ; $730c: $bf
	rst  $38                                         ; $730d: $ff
	ccf                                              ; $730e: $3f
	rst  $38                                         ; $730f: $ff
	cpl                                              ; $7310: $2f
	rst  $38                                         ; $7311: $ff
	rrca                                             ; $7312: $0f
	rst  $38                                         ; $7313: $ff
	rrca                                             ; $7314: $0f
	rst  $38                                         ; $7315: $ff
	rlca                                             ; $7316: $07
	rst  $38                                         ; $7317: $ff
	inc  bc                                          ; $7318: $03
	rst  $38                                         ; $7319: $ff
	ld   bc, $8055                                   ; $731a: $01 $55 $80
	xor  d                                           ; $731d: $aa
	add  b                                           ; $731e: $80
	push de                                          ; $731f: $d5
	add  b                                           ; $7320: $80
	ld   [$f580], a                                  ; $7321: $ea $80 $f5
	add  b                                           ; $7324: $80
	ld   a, [$fd80]                                  ; $7325: $fa $80 $fd
	add  b                                           ; $7328: $80
	cp   $80                                         ; $7329: $fe $80
	ld   d, l                                        ; $732b: $55
	add  b                                           ; $732c: $80
	xor  d                                           ; $732d: $aa
	add  b                                           ; $732e: $80
	ld   d, l                                        ; $732f: $55
	add  b                                           ; $7330: $80
	xor  d                                           ; $7331: $aa
	add  b                                           ; $7332: $80
	ld   d, l                                        ; $7333: $55
	add  b                                           ; $7334: $80
	xor  d                                           ; $7335: $aa
	add  b                                           ; $7336: $80
	ld   d, l                                        ; $7337: $55
	add  b                                           ; $7338: $80
	xor  d                                           ; $7339: $aa
	nop                                              ; $733a: $00
	nop                                              ; $733b: $00
	add  b                                           ; $733c: $80
	ld   bc, $0282                                   ; $733d: $01 $82 $02
	add  c                                           ; $7340: $81
	inc  b                                           ; $7341: $04
	ld   bc, $8884                                   ; $7342: $01 $84 $88
	add  b                                           ; $7345: $80
	ld   [$8803], sp                                 ; $7346: $08 $03 $88
	sub  b                                           ; $7349: $90
	ld   b, l                                        ; $734a: $45
	ld   d, l                                        ; $734b: $55
	add  b                                           ; $734c: $80
	xor  d                                           ; $734d: $aa
	add  b                                           ; $734e: $80
	ld   d, h                                        ; $734f: $54
	add  b                                           ; $7350: $80
	xor  b                                           ; $7351: $a8
	add  b                                           ; $7352: $80
	ld   b, b                                        ; $7353: $40
	push hl                                          ; $7354: $e5
	nop                                              ; $7355: $00
	add  b                                           ; $7356: $80
	ld   [bc], a                                     ; $7357: $02
	add  d                                           ; $7358: $82
	ld   bc, $0087                                   ; $7359: $01 $87 $00
	add  b                                           ; $735c: $80
	dec  b                                           ; $735d: $05
	add  b                                           ; $735e: $80
	ld   [bc], a                                     ; $735f: $02
	add  b                                           ; $7360: $80
	ld   bc, $0001                                   ; $7361: $01 $01 $00
	add  b                                           ; $7364: $80
	add  b                                           ; $7365: $80
	add  c                                           ; $7366: $81
	nop                                              ; $7367: $00
	add  b                                           ; $7368: $80
	add  d                                           ; $7369: $82

jr_02e_736a:
	ld   b, b                                        ; $736a: $40
	ld   [bc], a                                     ; $736b: $02
	jr   nz, jr_02e_73e3                             ; $736c: $20 $75

	ld   d, l                                        ; $736e: $55
	add  b                                           ; $736f: $80
	xor  d                                           ; $7370: $aa
	add  b                                           ; $7371: $80
	ld   d, l                                        ; $7372: $55
	add  b                                           ; $7373: $80
	xor  d                                           ; $7374: $aa
	add  b                                           ; $7375: $80
	ld   d, l                                        ; $7376: $55
	add  b                                           ; $7377: $80
	xor  d                                           ; $7378: $aa
	add  b                                           ; $7379: $80
	ld   d, l                                        ; $737a: $55
	add  b                                           ; $737b: $80
	ld   a, [hl+]                                    ; $737c: $2a
	ld   [bc], a                                     ; $737d: $02
	nop                                              ; $737e: $00
	cp   $50                                         ; $737f: $fe $50
	add  b                                           ; $7381: $80
	ld   d, e                                        ; $7382: $53
	ld   bc, $53fb                                   ; $7383: $01 $fb $53
	add  c                                           ; $7386: $81
	ei                                               ; $7387: $fb
	add  b                                           ; $7388: $80
	adc  e                                           ; $7389: $8b
	add  c                                           ; $738a: $81
	cp   e                                           ; $738b: $bb
	adc  c                                           ; $738c: $89
	xor  e                                           ; $738d: $ab
	ld   bc, $ffed                                   ; $738e: $01 $ed $ff
	add  c                                           ; $7391: $81
	add  c                                           ; $7392: $81
	ld   [bc], a                                     ; $7393: $02
	cp   a                                           ; $7394: $bf
	pop  bc                                          ; $7395: $c1
	rlca                                             ; $7396: $07
	add  b                                           ; $7397: $80
	inc  b                                           ; $7398: $04
	add  c                                           ; $7399: $81
	rlca                                             ; $739a: $07
	add  d                                           ; $739b: $82
	ld   b, $80                                      ; $739c: $06 $80
	nop                                              ; $739e: $00
	inc  bc                                          ; $739f: $03
	ld   bc, $0200                                   ; $73a0: $01 $00 $02
	ld   a, c                                        ; $73a3: $79
	add  b                                           ; $73a4: $80
	and  a                                           ; $73a5: $a7
	add  hl, bc                                      ; $73a6: $09
	xor  a                                           ; $73a7: $af
	or   a                                           ; $73a8: $b7
	cp   a                                           ; $73a9: $bf
	and  e                                           ; $73aa: $a3
	cp   a                                           ; $73ab: $bf
	pop  bc                                          ; $73ac: $c1
	rst  $38                                         ; $73ad: $ff
	adc  c                                           ; $73ae: $89
	cp   e                                           ; $73af: $bb
	dec  sp                                          ; $73b0: $3b
	add  b                                           ; $73b1: $80
	ld   a, e                                        ; $73b2: $7b
	ld   bc, $0dfb                                   ; $73b3: $01 $fb $0d
	cp   l                                           ; $73b6: $bd
	nop                                              ; $73b7: $00
	ld   a, [de]                                     ; $73b8: $1a
	inc  bc                                          ; $73b9: $03
	dec  b                                           ; $73ba: $05
	ld   bc, $030b                                   ; $73bb: $01 $0b $03
	rla                                              ; $73be: $17
	rlca                                             ; $73bf: $07
	cpl                                              ; $73c0: $2f
	ld   c, $df                                      ; $73c1: $0e $df
	dec  e                                           ; $73c3: $1d
	ccf                                              ; $73c4: $3f
	ld   a, [hl-]                                    ; $73c5: $3a
	rst  $38                                         ; $73c6: $ff
	ld   b, $ff                                      ; $73c7: $06 $ff
	add  hl, de                                      ; $73c9: $19
	ei                                               ; $73ca: $fb
	db   $db                                         ; $73cb: $db
	ei                                               ; $73cc: $fb
	xor  e                                           ; $73cd: $ab
	ei                                               ; $73ce: $fb
	ld   e, e                                        ; $73cf: $5b
	ei                                               ; $73d0: $fb
	cp   e                                           ; $73d1: $bb
	ei                                               ; $73d2: $fb
	ld   h, e                                        ; $73d3: $63
	add  c                                           ; $73d4: $81
	rst  $30                                         ; $73d5: $f7
	nop                                              ; $73d6: $00
	add  hl, de                                      ; $73d7: $19
	add  b                                           ; $73d8: $80
	cp   $00                                         ; $73d9: $fe $00
	rst  $38                                         ; $73db: $ff
	add  c                                           ; $73dc: $81
	add  b                                           ; $73dd: $80
	ld   bc, $b8b9                                   ; $73de: $01 $b9 $b8
	add  c                                           ; $73e1: $81
	or   a                                           ; $73e2: $b7

jr_02e_73e3:
	inc  b                                           ; $73e3: $04
	ldh  a, [$7f]                                    ; $73e4: $f0 $7f
	ld   e, c                                        ; $73e6: $59
	ccf                                              ; $73e7: $3f
	jr   nz, jr_02e_736a                             ; $73e8: $20 $80

	rra                                              ; $73ea: $1f
	nop                                              ; $73eb: $00
	rst  $38                                         ; $73ec: $ff
	add  c                                           ; $73ed: $81
	ld   bc, $ff03                                   ; $73ee: $01 $03 $ff
	add  c                                           ; $73f1: $81
	rst  $38                                         ; $73f2: $ff
	jp   $fe80                                       ; $73f3: $c3 $80 $fe


	inc  bc                                          ; $73f6: $03
	rst  $38                                         ; $73f7: $ff
	call nz, Call_02e_78ff                           ; $73f8: $c4 $ff $78
	add  b                                           ; $73fb: $80
	rst  ToBoot                                         ; $73fc: $c7
	nop                                              ; $73fd: $00
	rst  $38                                         ; $73fe: $ff
	add  c                                           ; $73ff: $81
	ld   de, $7f01                                   ; $7400: $11 $01 $7f
	sbc  a                                           ; $7403: $9f
	add  b                                           ; $7404: $80
	rst  $38                                         ; $7405: $ff
	add  b                                           ; $7406: $80
	rra                                              ; $7407: $1f
	inc  bc                                          ; $7408: $03
	rst  $38                                         ; $7409: $ff
	rrca                                             ; $740a: $0f
	rst  $38                                         ; $740b: $ff
	ld   bc, $ff81                                   ; $740c: $01 $81 $ff
	add  c                                           ; $740f: $81
	nop                                              ; $7410: $00
	add  hl, bc                                      ; $7411: $09
	rst  $38                                         ; $7412: $ff
	cp   $ff                                         ; $7413: $fe $ff
	db   $fd                                         ; $7415: $fd
	rst  $38                                         ; $7416: $ff
	ei                                               ; $7417: $fb
	rst  $38                                         ; $7418: $ff
	rst  $30                                         ; $7419: $f7
	db   $fc                                         ; $741a: $fc
	inc  c                                           ; $741b: $0c
	add  b                                           ; $741c: $80
	ld   hl, sp+$00                                  ; $741d: $f8 $00
	rst  $38                                         ; $741f: $ff
	add  c                                           ; $7420: $81
	nop                                              ; $7421: $00
	dec  b                                           ; $7422: $05
	rst  $38                                         ; $7423: $ff
	nop                                              ; $7424: $00
	rst  $38                                         ; $7425: $ff
	nop                                              ; $7426: $00
	rst  $38                                         ; $7427: $ff
	nop                                              ; $7428: $00
	add  b                                           ; $7429: $80
	rst  $38                                         ; $742a: $ff
	add  d                                           ; $742b: $82
	nop                                              ; $742c: $00
	nop                                              ; $742d: $00
	rst  $38                                         ; $742e: $ff
	add  c                                           ; $742f: $81
	adc  b                                           ; $7430: $88
	ld   bc, $fcfb                                   ; $7431: $01 $fb $fc
	add  b                                           ; $7434: $80
	rst  $38                                         ; $7435: $ff
	add  b                                           ; $7436: $80
	ld   hl, sp+$03                                  ; $7437: $f8 $03
	rst  $38                                         ; $7439: $ff
	ldh  a, [rIE]                                    ; $743a: $f0 $ff
	add  b                                           ; $743c: $80
	add  c                                           ; $743d: $81
	rst  $38                                         ; $743e: $ff
	add  c                                           ; $743f: $81
	ld   bc, $9d01                                   ; $7440: $01 $01 $9d
	adc  l                                           ; $7443: $8d
	add  c                                           ; $7444: $81
	ld   a, l                                        ; $7445: $7d
	inc  b                                           ; $7446: $04
	rrca                                             ; $7447: $0f
	cp   $9a                                         ; $7448: $fe $9a
	db   $fc                                         ; $744a: $fc
	inc  b                                           ; $744b: $04
	add  b                                           ; $744c: $80
	ld   hl, sp-$01                                  ; $744d: $f8 $ff
	nop                                              ; $744f: $00
	ldh  a, [rP1]                                    ; $7450: $f0 $00
	ld   bc, $00ff                                   ; $7452: $01 $ff $00
	add  [hl]                                        ; $7455: $86
	db   $db                                         ; $7456: $db
	add  b                                           ; $7457: $80
	nop                                              ; $7458: $00
	nop                                              ; $7459: $00
	rst  $38                                         ; $745a: $ff
	add  c                                           ; $745b: $81
	nop                                              ; $745c: $00
	ld   bc, $00ff                                   ; $745d: $01 $ff $00
	add  [hl]                                        ; $7460: $86
	ld   l, l                                        ; $7461: $6d
	add  b                                           ; $7462: $80
	nop                                              ; $7463: $00
	nop                                              ; $7464: $00
	rst  $38                                         ; $7465: $ff
	add  c                                           ; $7466: $81
	nop                                              ; $7467: $00
	ld   bc, $00ff                                   ; $7468: $01 $ff $00
	add  [hl]                                        ; $746b: $86
	or   [hl]                                        ; $746c: $b6
	add  b                                           ; $746d: $80
	nop                                              ; $746e: $00
	nop                                              ; $746f: $00
	rst  $38                                         ; $7470: $ff
	add  c                                           ; $7471: $81
	nop                                              ; $7472: $00
	ld   [bc], a                                     ; $7473: $02
	rst  $38                                         ; $7474: $ff
	nop                                              ; $7475: $00
	dec  de                                          ; $7476: $1b
	add  l                                           ; $7477: $85
	db   $db                                         ; $7478: $db
	ld   [bc], a                                     ; $7479: $02
	ret  nz                                          ; $747a: $c0

	nop                                              ; $747b: $00
	rst  $38                                         ; $747c: $ff
	add  c                                           ; $747d: $81
	nop                                              ; $747e: $00
	ld   [bc], a                                     ; $747f: $02
	rst  $38                                         ; $7480: $ff
	nop                                              ; $7481: $00
	inc  bc                                          ; $7482: $03
	add  l                                           ; $7483: $85
	db   $db                                         ; $7484: $db
	ld   [bc], a                                     ; $7485: $02
	ret  c                                           ; $7486: $d8

jr_02e_7487:
	nop                                              ; $7487: $00
	rst  $38                                         ; $7488: $ff
	add  c                                           ; $7489: $81
	nop                                              ; $748a: $00
	nop                                              ; $748b: $00
	rst  $38                                         ; $748c: $ff
	add  b                                           ; $748d: $80
	nop                                              ; $748e: $00
	add  [hl]                                        ; $748f: $86
	db   $db                                         ; $7490: $db
	ld   bc, $ff00                                   ; $7491: $01 $00 $ff
	add  c                                           ; $7494: $81
	nop                                              ; $7495: $00
	ld   [bc], a                                     ; $7496: $02
	rst  $38                                         ; $7497: $ff
	nop                                              ; $7498: $00
	dec  c                                           ; $7499: $0d
	add  l                                           ; $749a: $85
	ld   l, l                                        ; $749b: $6d
	ld   [bc], a                                     ; $749c: $02
	ld   h, b                                        ; $749d: $60
	nop                                              ; $749e: $00
	rst  $38                                         ; $749f: $ff
	add  c                                           ; $74a0: $81
	nop                                              ; $74a1: $00
	ld   [bc], a                                     ; $74a2: $02
	rst  $38                                         ; $74a3: $ff
	nop                                              ; $74a4: $00
	ld   bc, $6d85                                   ; $74a5: $01 $85 $6d
	ld   [bc], a                                     ; $74a8: $02
	ld   l, h                                        ; $74a9: $6c
	nop                                              ; $74aa: $00
	rst  $38                                         ; $74ab: $ff
	add  c                                           ; $74ac: $81
	nop                                              ; $74ad: $00
	nop                                              ; $74ae: $00
	rst  $38                                         ; $74af: $ff
	add  b                                           ; $74b0: $80
	nop                                              ; $74b1: $00
	add  [hl]                                        ; $74b2: $86
	ld   l, l                                        ; $74b3: $6d
	ld   bc, $ff00                                   ; $74b4: $01 $00 $ff
	add  c                                           ; $74b7: $81
	nop                                              ; $74b8: $00
	ld   [bc], a                                     ; $74b9: $02
	rst  $38                                         ; $74ba: $ff
	nop                                              ; $74bb: $00
	ld   [hl], $85                                   ; $74bc: $36 $85
	or   [hl]                                        ; $74be: $b6
	ld   [bc], a                                     ; $74bf: $02
	add  b                                           ; $74c0: $80
	nop                                              ; $74c1: $00
	rst  $38                                         ; $74c2: $ff
	add  c                                           ; $74c3: $81
	nop                                              ; $74c4: $00
	ld   [bc], a                                     ; $74c5: $02
	rst  $38                                         ; $74c6: $ff
	nop                                              ; $74c7: $00
	ld   b, $85                                      ; $74c8: $06 $85
	or   [hl]                                        ; $74ca: $b6
	ld   [bc], a                                     ; $74cb: $02
	or   b                                           ; $74cc: $b0
	nop                                              ; $74cd: $00
	rst  $38                                         ; $74ce: $ff

jr_02e_74cf:
	add  c                                           ; $74cf: $81
	nop                                              ; $74d0: $00
	nop                                              ; $74d1: $00
	rst  $38                                         ; $74d2: $ff
	add  b                                           ; $74d3: $80
	nop                                              ; $74d4: $00
	add  [hl]                                        ; $74d5: $86
	or   [hl]                                        ; $74d6: $b6
	ld   bc, $ff00                                   ; $74d7: $01 $00 $ff
	ret  nz                                          ; $74da: $c0

	nop                                              ; $74db: $00
	add  b                                           ; $74dc: $80
	ld   b, h                                        ; $74dd: $44
	add  b                                           ; $74de: $80
	ld   a, a                                        ; $74df: $7f
	add  b                                           ; $74e0: $80
	adc  $80                                         ; $74e1: $ce $80
	ld   d, l                                        ; $74e3: $55
	add  b                                           ; $74e4: $80
	ld   h, h                                        ; $74e5: $64
	add  b                                           ; $74e6: $80
	ld   l, [hl]                                     ; $74e7: $6e
	add  b                                           ; $74e8: $80
	ld   b, h                                        ; $74e9: $44
	add  d                                           ; $74ea: $82
	nop                                              ; $74eb: $00
	add  b                                           ; $74ec: $80
	add  b                                           ; $74ed: $80
	add  d                                           ; $74ee: $82
	nop                                              ; $74ef: $00
	add  d                                           ; $74f0: $82
	add  b                                           ; $74f1: $80
	add  h                                           ; $74f2: $84
	nop                                              ; $74f3: $00
	add  b                                           ; $74f4: $80
	inc  bc                                          ; $74f5: $03
	add  [hl]                                        ; $74f6: $86
	nop                                              ; $74f7: $00
	add  b                                           ; $74f8: $80
	inc  bc                                          ; $74f9: $03
	add  b                                           ; $74fa: $80
	nop                                              ; $74fb: $00
	add  b                                           ; $74fc: $80
	ld   b, b                                        ; $74fd: $40
	add  b                                           ; $74fe: $80
	db   $fc                                         ; $74ff: $fc
	add  d                                           ; $7500: $82
	ld   b, h                                        ; $7501: $44
	add  d                                           ; $7502: $82
	add  h                                           ; $7503: $84
	add  b                                           ; $7504: $80
	jr   jr_02e_7487                                 ; $7505: $18 $80

	nop                                              ; $7507: $00
	add  b                                           ; $7508: $80
	ld   b, b                                        ; $7509: $40
	add  b                                           ; $750a: $80
	ld   [hl], a                                     ; $750b: $77
	add  b                                           ; $750c: $80
	and  h                                           ; $750d: $a4
	add  b                                           ; $750e: $80
	db   $fc                                         ; $750f: $fc
	add  d                                           ; $7510: $82
	inc  h                                           ; $7511: $24
	add  b                                           ; $7512: $80
	rst  $10                                         ; $7513: $d7
	add  d                                           ; $7514: $82
	nop                                              ; $7515: $00
	adc  d                                           ; $7516: $8a
	add  b                                           ; $7517: $80
	add  b                                           ; $7518: $80
	nop                                              ; $7519: $00
	add  b                                           ; $751a: $80
	ld   a, $80                                      ; $751b: $3e $80
	rst  $38                                         ; $751d: $ff
	add  b                                           ; $751e: $80

jr_02e_751f:
	xor  d                                           ; $751f: $aa
	add  b                                           ; $7520: $80
	ld   a, $80                                      ; $7521: $3e $80
	rst  $38                                         ; $7523: $ff
	add  b                                           ; $7524: $80
	ld   d, l                                        ; $7525: $55
	add  b                                           ; $7526: $80
	rst  $38                                         ; $7527: $ff
	add  d                                           ; $7528: $82
	nop                                              ; $7529: $00
	add  d                                           ; $752a: $82
	add  b                                           ; $752b: $80
	add  b                                           ; $752c: $80
	nop                                              ; $752d: $00
	add  b                                           ; $752e: $80

jr_02e_752f:
	add  b                                           ; $752f: $80
	add  b                                           ; $7530: $80
	nop                                              ; $7531: $00
	add  b                                           ; $7532: $80
	add  b                                           ; $7533: $80
	add  b                                           ; $7534: $80
	nop                                              ; $7535: $00
	add  b                                           ; $7536: $80
	ld   a, a                                        ; $7537: $7f
	add  b                                           ; $7538: $80
	ld   e, [hl]                                     ; $7539: $5e
	add  b                                           ; $753a: $80
	add  b                                           ; $753b: $80
	add  b                                           ; $753c: $80
	ld   a, a                                        ; $753d: $7f
	add  b                                           ; $753e: $80
	ld   a, [hl+]                                    ; $753f: $2a
	add  b                                           ; $7540: $80
	ld   [de], a                                     ; $7541: $12
	add  b                                           ; $7542: $80
	ld   l, l                                        ; $7543: $6d
	add  b                                           ; $7544: $80
	nop                                              ; $7545: $00
	add  b                                           ; $7546: $80
	ld   bc, $0280                                   ; $7547: $01 $80 $02
	add  b                                           ; $754a: $80
	rlca                                             ; $754b: $07
	add  b                                           ; $754c: $80
	jr   jr_02e_74cf                                 ; $754d: $18 $80

	rlca                                             ; $754f: $07
	add  b                                           ; $7550: $80
	add  h                                           ; $7551: $84
	add  b                                           ; $7552: $80
	add  a                                           ; $7553: $87
	add  b                                           ; $7554: $80
	nop                                              ; $7555: $00
	add  b                                           ; $7556: $80

jr_02e_7557:
	ld   bc, $8180                                   ; $7557: $01 $80 $81
	add  b                                           ; $755a: $80
	pop  bc                                          ; $755b: $c1
	add  b                                           ; $755c: $80
	ld   sp, $c180                                   ; $755d: $31 $80 $c1
	add  b                                           ; $7560: $80
	ld   b, c                                        ; $7561: $41
	add  b                                           ; $7562: $80
	pop  bc                                          ; $7563: $c1
	add  d                                           ; $7564: $82

jr_02e_7565:
	nop                                              ; $7565: $00
	add  b                                           ; $7566: $80
	ld   [$0484], sp                                 ; $7567: $08 $84 $04
	add  b                                           ; $756a: $80
	ld   b, b                                        ; $756b: $40
	add  b                                           ; $756c: $80
	add  b                                           ; $756d: $80
	add  b                                           ; $756e: $80
	nop                                              ; $756f: $00
	add  b                                           ; $7570: $80
	ld   a, $80                                      ; $7571: $3e $80
	inc  e                                           ; $7573: $1c
	add  b                                           ; $7574: $80
	rst  $38                                         ; $7575: $ff
	add  b                                           ; $7576: $80
	inc  d                                           ; $7577: $14
	add  b                                           ; $7578: $80
	ccf                                              ; $7579: $3f
	add  b                                           ; $757a: $80
	ld   e, h                                        ; $757b: $5c
	add  b                                           ; $757c: $80
	ld   c, c                                        ; $757d: $49
	add  b                                           ; $757e: $80
	nop                                              ; $757f: $00
	add  b                                           ; $7580: $80
	rrca                                             ; $7581: $0f
	add  b                                           ; $7582: $80
	ld   [$8f80], sp                                 ; $7583: $08 $80 $8f
	add  b                                           ; $7586: $80
	ld   bc, $1f80                                   ; $7587: $01 $80 $1f
	add  d                                           ; $758a: $82
	ld   bc, $0080                                   ; $758b: $01 $80 $00
	add  b                                           ; $758e: $80
	ldh  [$80], a                                    ; $758f: $e0 $80
	ld   hl, $e080                                   ; $7591: $21 $80 $e0
	add  b                                           ; $7594: $80
	nop                                              ; $7595: $00
	add  b                                           ; $7596: $80
	pop  af                                          ; $7597: $f1
	add  b                                           ; $7598: $80
	ld   bc, $0082                                   ; $7599: $01 $82 $00
	add  b                                           ; $759c: $80
	jr   nz, jr_02e_751f                             ; $759d: $20 $80

	db   $fc                                         ; $759f: $fc
	add  b                                           ; $75a0: $80
	db   $10                                         ; $75a1: $10
	add  b                                           ; $75a2: $80
	ld   [$1880], sp                                 ; $75a3: $08 $80 $18
	add  b                                           ; $75a6: $80
	nop                                              ; $75a7: $00
	add  b                                           ; $75a8: $80
	ldh  a, [$80]                                    ; $75a9: $f0 $80
	nop                                              ; $75ab: $00
	add  b                                           ; $75ac: $80
	jr   jr_02e_752f                                 ; $75ad: $18 $80

	ld   h, $80                                      ; $75af: $26 $80
	rst  $38                                         ; $75b1: $ff
	add  d                                           ; $75b2: $82
	ld   d, l                                        ; $75b3: $55
	add  b                                           ; $75b4: $80
	ld   [hl], a                                     ; $75b5: $77
	add  b                                           ; $75b6: $80
	inc  b                                           ; $75b7: $04
	add  b                                           ; $75b8: $80
	nop                                              ; $75b9: $00
	add  b                                           ; $75ba: $80
	ld   bc, $0f80                                   ; $75bb: $01 $80 $0f
	add  b                                           ; $75be: $80
	adc  c                                           ; $75bf: $89
	add  b                                           ; $75c0: $80
	add  hl, bc                                      ; $75c1: $09
	add  b                                           ; $75c2: $80
	rrca                                             ; $75c3: $0f
	add  d                                           ; $75c4: $82
	ld   bc, $0082                                   ; $75c5: $01 $82 $00
	add  b                                           ; $75c8: $80
	db   $e3                                         ; $75c9: $e3
	add  b                                           ; $75ca: $80
	ld   hl, $2080                                   ; $75cb: $21 $80 $20
	add  b                                           ; $75ce: $80
	pop  hl                                          ; $75cf: $e1
	add  b                                           ; $75d0: $80
	inc  bc                                          ; $75d1: $03
	add  d                                           ; $75d2: $82
	nop                                              ; $75d3: $00
	add  b                                           ; $75d4: $80
	jr   nz, jr_02e_7557                             ; $75d5: $20 $80

	cp   $80                                         ; $75d7: $fe $80
	ld   h, h                                        ; $75d9: $64
	add  b                                           ; $75da: $80
	ld   hl, sp-$80                                  ; $75db: $f8 $80
	inc  [hl]                                        ; $75dd: $34
	add  b                                           ; $75de: $80
	cp   $80                                         ; $75df: $fe $80
	jr   nz, jr_02e_7565                             ; $75e1: $20 $82

	nop                                              ; $75e3: $00
	adc  c                                           ; $75e4: $89
	ld   bc, $6107                                   ; $75e5: $01 $07 $61
	or   b                                           ; $75e8: $b0
	ret  nc                                          ; $75e9: $d0

	rst  $38                                         ; $75ea: $ff
	add  d                                           ; $75eb: $82
	cp   [hl]                                        ; $75ec: $be
	or   [hl]                                        ; $75ed: $b6
	xor  [hl]                                        ; $75ee: $ae
	add  b                                           ; $75ef: $80
	cp   [hl]                                        ; $75f0: $be
	inc  b                                           ; $75f1: $04
	and  [hl]                                        ; $75f2: $a6
	cp   [hl]                                        ; $75f3: $be
	cp   $7e                                         ; $75f4: $fe $7e
	ld   b, e                                        ; $75f6: $43
	add  b                                           ; $75f7: $80
	ccf                                              ; $75f8: $3f
	add  b                                           ; $75f9: $80
	nop                                              ; $75fa: $00
	dec  bc                                          ; $75fb: $0b
	cp   $82                                         ; $75fc: $fe $82
	add  e                                           ; $75fe: $83
	add  b                                           ; $75ff: $80
	db   $fd                                         ; $7600: $fd
	add  l                                           ; $7601: $85
	cp   $82                                         ; $7602: $fe $82
	rst  $38                                         ; $7604: $ff
	ld   sp, hl                                      ; $7605: $f9
	rst  $38                                         ; $7606: $ff
	add  d                                           ; $7607: $82
	add  b                                           ; $7608: $80
	rst  $38                                         ; $7609: $ff
	add  d                                           ; $760a: $82
	nop                                              ; $760b: $00
	inc  b                                           ; $760c: $04
	ld   hl, sp+$00                                  ; $760d: $f8 $00
	db   $fc                                         ; $760f: $fc
	inc  b                                           ; $7610: $04
	rst  $38                                         ; $7611: $ff
	add  c                                           ; $7612: $81
	nop                                              ; $7613: $00
	ld   bc, $00ff                                   ; $7614: $01 $ff $00
	add  b                                           ; $7617: $80
	rst  $38                                         ; $7618: $ff
	add  [hl]                                        ; $7619: $86
	nop                                              ; $761a: $00
	nop                                              ; $761b: $00
	rst  $38                                         ; $761c: $ff
	add  c                                           ; $761d: $81
	nop                                              ; $761e: $00
	ld   bc, $00ff                                   ; $761f: $01 $ff $00
	add  b                                           ; $7622: $80
	rst  $38                                         ; $7623: $ff
	adc  [hl]                                        ; $7624: $8e
	nop                                              ; $7625: $00
	ld   b, $3f                                      ; $7626: $06 $3f
	ld   bc, $0141                                   ; $7628: $01 $41 $01
	cp   a                                           ; $762b: $bf
	or   a                                           ; $762c: $b7
	xor  a                                           ; $762d: $af
	add  b                                           ; $762e: $80
	cp   a                                           ; $762f: $bf
	inc  b                                           ; $7630: $04
	and  a                                           ; $7631: $a7
	cp   a                                           ; $7632: $bf
	cp   l                                           ; $7633: $bd
	cp   [hl]                                        ; $7634: $be
	jp   nz, $fc80                                   ; $7635: $c2 $80 $fc

	nop                                              ; $7638: $00
	rst  $38                                         ; $7639: $ff
	add  c                                           ; $763a: $81
	ld   b, b                                        ; $763b: $40
	add  c                                           ; $763c: $81
	rst  $38                                         ; $763d: $ff
	ld   [bc], a                                     ; $763e: $02
	ret  nz                                          ; $763f: $c0

	rst  $38                                         ; $7640: $ff
	ld   a, a                                        ; $7641: $7f
	add  b                                           ; $7642: $80
	add  b                                           ; $7643: $80
	add  d                                           ; $7644: $82
	nop                                              ; $7645: $00
	nop                                              ; $7646: $00
	rst  $38                                         ; $7647: $ff
	add  c                                           ; $7648: $81
	jr   z, jr_02e_764e                              ; $7649: $28 $03

	rst  $28                                         ; $764b: $ef
	add  sp, -$11                                    ; $764c: $e8 $ef

jr_02e_764e:
	ccf                                              ; $764e: $3f
	add  b                                           ; $764f: $80
	ldh  a, [$84]                                    ; $7650: $f0 $84
	nop                                              ; $7652: $00
	nop                                              ; $7653: $00
	rst  $38                                         ; $7654: $ff
	add  c                                           ; $7655: $81
	nop                                              ; $7656: $00
	ld   bc, $00ff                                   ; $7657: $01 $ff $00
	add  b                                           ; $765a: $80
	rst  $38                                         ; $765b: $ff
	add  l                                           ; $765c: $85
	nop                                              ; $765d: $00
	nop                                              ; $765e: $00
	ld   h, b                                        ; $765f: $60
	adc  l                                           ; $7660: $8d
	or   b                                           ; $7661: $b0
	nop                                              ; $7662: $00
	sub  [hl]                                        ; $7663: $96
	adc  l                                           ; $7664: $8d
	xor  e                                           ; $7665: $ab
	nop                                              ; $7666: $00
	db   $ed                                         ; $7667: $ed
	rst  $38                                         ; $7668: $ff
	nop                                              ; $7669: $00
	rst  $38                                         ; $766a: $ff
	nop                                              ; $766b: $00
	rst  $38                                         ; $766c: $ff
	nop                                              ; $766d: $00
	rst  $38                                         ; $766e: $ff
	nop                                              ; $766f: $00
	rst  $38                                         ; $7670: $ff
	nop                                              ; $7671: $00
	rst  $38                                         ; $7672: $ff
	nop                                              ; $7673: $00
	rst  $38                                         ; $7674: $ff
	nop                                              ; $7675: $00
	rst  $38                                         ; $7676: $ff
	nop                                              ; $7677: $00
	rst  $38                                         ; $7678: $ff
	nop                                              ; $7679: $00
	db   $f4                                         ; $767a: $f4
	nop                                              ; $767b: $00
	or   [hl]                                        ; $767c: $b6
	ld   bc, $00ff                                   ; $767d: $01 $ff $00
	rst  $38                                         ; $7680: $ff
	nop                                              ; $7681: $00
	rst  $38                                         ; $7682: $ff
	nop                                              ; $7683: $00
	rst  $38                                         ; $7684: $ff
	nop                                              ; $7685: $00
	rst  $38                                         ; $7686: $ff
	nop                                              ; $7687: $00
	rst  $38                                         ; $7688: $ff
	nop                                              ; $7689: $00
	rst  $38                                         ; $768a: $ff
	nop                                              ; $768b: $00
	rst  $38                                         ; $768c: $ff
	nop                                              ; $768d: $00
	ld   [$0001], sp                                 ; $768e: $08 $01 $00

jr_02e_7691:
	ld   b, $00                                      ; $7691: $06 $00
	dec  de                                          ; $7693: $1b
	inc  bc                                          ; $7694: $03
	ld   l, c                                        ; $7695: $69
	rrca                                             ; $7696: $0f
	ld   l, h                                        ; $7697: $6c
	add  c                                           ; $7698: $81
	ld   a, [hl+]                                    ; $7699: $2a
	add  b                                           ; $769a: $80
	nop                                              ; $769b: $00
	ld   a, [bc]                                     ; $769c: $0a
	rst  JumpTable                                         ; $769d: $df
	rra                                              ; $769e: $1f

jr_02e_769f:
	nop                                              ; $769f: $00
	jr   nz, jr_02e_7691                             ; $76a0: $20 $ef

	ldh  a, [$c0]                                    ; $76a2: $f0 $c0
	rst  $38                                         ; $76a4: $ff
	ret  nz                                          ; $76a5: $c0

	rst  $38                                         ; $76a6: $ff
	sub  l                                           ; $76a7: $95
	add  c                                           ; $76a8: $81
	xor  d                                           ; $76a9: $aa
	add  b                                           ; $76aa: $80
	nop                                              ; $76ab: $00
	add  b                                           ; $76ac: $80
	rst  $38                                         ; $76ad: $ff
	add  b                                           ; $76ae: $80
	nop                                              ; $76af: $00
	nop                                              ; $76b0: $00
	rst  $38                                         ; $76b1: $ff
	add  b                                           ; $76b2: $80
	nop                                              ; $76b3: $00
	inc  bc                                          ; $76b4: $03
	rst  $38                                         ; $76b5: $ff
	nop                                              ; $76b6: $00
	rst  $38                                         ; $76b7: $ff
	ld   d, l                                        ; $76b8: $55
	add  c                                           ; $76b9: $81
	xor  d                                           ; $76ba: $aa
	add  b                                           ; $76bb: $80
	nop                                              ; $76bc: $00
	add  b                                           ; $76bd: $80
	rst  $38                                         ; $76be: $ff
	add  b                                           ; $76bf: $80
	nop                                              ; $76c0: $00
	nop                                              ; $76c1: $00
	rst  $38                                         ; $76c2: $ff
	add  b                                           ; $76c3: $80
	nop                                              ; $76c4: $00
	inc  bc                                          ; $76c5: $03
	rst  $38                                         ; $76c6: $ff
	nop                                              ; $76c7: $00
	rst  $38                                         ; $76c8: $ff
	ld   d, l                                        ; $76c9: $55
	add  c                                           ; $76ca: $81
	xor  d                                           ; $76cb: $aa
	add  b                                           ; $76cc: $80
	nop                                              ; $76cd: $00
	add  b                                           ; $76ce: $80
	rst  $38                                         ; $76cf: $ff
	add  b                                           ; $76d0: $80
	nop                                              ; $76d1: $00
	nop                                              ; $76d2: $00
	rst  $38                                         ; $76d3: $ff
	add  b                                           ; $76d4: $80
	nop                                              ; $76d5: $00
	inc  bc                                          ; $76d6: $03
	rst  $38                                         ; $76d7: $ff
	nop                                              ; $76d8: $00
	rst  $38                                         ; $76d9: $ff
	ld   d, l                                        ; $76da: $55
	add  c                                           ; $76db: $81
	xor  d                                           ; $76dc: $aa
	add  b                                           ; $76dd: $80
	dec  b                                           ; $76de: $05
	rla                                              ; $76df: $17
	ld   a, [$04fb]                                  ; $76e0: $fa $fb $04
	ld   b, $fc                                      ; $76e3: $06 $fc
	nop                                              ; $76e5: $00
	inc  c                                           ; $76e6: $0c
	db   $fd                                         ; $76e7: $fd
	db   $10                                         ; $76e8: $10
	ldh  [c], a                                      ; $76e9: $e2
	xor  h                                           ; $76ea: $ac
	ld   h, b                                        ; $76eb: $60
	sub  a                                           ; $76ec: $97
	rst  $10                                         ; $76ed: $d7
	jr   c, jr_02e_769f                              ; $76ee: $38 $af

	ld   [hl], a                                     ; $76f0: $77
	ld   e, a                                        ; $76f1: $5f
	rst  $28                                         ; $76f2: $ef
	cp   a                                           ; $76f3: $bf
	rst  JumpTable                                         ; $76f4: $df
	ld   a, a                                        ; $76f5: $7f
	ccf                                              ; $76f6: $3f
	ld   a, a                                        ; $76f7: $7f
	add  b                                           ; $76f8: $80
	rst  $38                                         ; $76f9: $ff
	ld   bc, $007f                                   ; $76fa: $01 $7f $00
	add  b                                           ; $76fd: $80
	rst  $38                                         ; $76fe: $ff
	nop                                              ; $76ff: $00
	nop                                              ; $7700: $00
	adc  d                                           ; $7701: $8a
	rst  $38                                         ; $7702: $ff
	nop                                              ; $7703: $00
	nop                                              ; $7704: $00
	add  b                                           ; $7705: $80
	rst  $38                                         ; $7706: $ff
	nop                                              ; $7707: $00
	nop                                              ; $7708: $00
	adc  d                                           ; $7709: $8a
	rst  $38                                         ; $770a: $ff
	nop                                              ; $770b: $00
	nop                                              ; $770c: $00
	add  b                                           ; $770d: $80
	rst  $38                                         ; $770e: $ff
	nop                                              ; $770f: $00
	ld   bc, $ff89                                   ; $7710: $01 $89 $ff
	ld   bc, $00fe                                   ; $7713: $01 $fe $00
	add  b                                           ; $7716: $80
	ld   a, a                                        ; $7717: $7f
	nop                                              ; $7718: $00
	ld   b, b                                        ; $7719: $40
	adc  c                                           ; $771a: $89
	ld   a, a                                        ; $771b: $7f
	ld   bc, $003f                                   ; $771c: $01 $3f $00
	add  b                                           ; $771f: $80
	rst  $38                                         ; $7720: $ff
	nop                                              ; $7721: $00
	nop                                              ; $7722: $00
	adc  d                                           ; $7723: $8a
	rst  $38                                         ; $7724: $ff
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	add  b                                           ; $7727: $80
	rst  $38                                         ; $7728: $ff
	nop                                              ; $7729: $00
	nop                                              ; $772a: $00
	adc  c                                           ; $772b: $89
	rst  $38                                         ; $772c: $ff
	ld   a, [bc]                                     ; $772d: $0a
	push hl                                          ; $772e: $e5
	dec  e                                           ; $772f: $1d
	set  1, a                                        ; $7730: $cb $cf
	dec  b                                           ; $7732: $05
	rst  $20                                         ; $7733: $e7
	ldh  [c], a                                      ; $7734: $e2
	di                                               ; $7735: $f3
	pop  af                                          ; $7736: $f1
	ld   sp, hl                                      ; $7737: $f9
	ld   hl, sp-$80                                  ; $7738: $f8 $80
	db   $fc                                         ; $773a: $fc
	add  b                                           ; $773b: $80
	ld   sp, hl                                      ; $773c: $f9
	nop                                              ; $773d: $00
	rst  $38                                         ; $773e: $ff
	add  b                                           ; $773f: $80
	ld   l, l                                        ; $7740: $6d
	add  d                                           ; $7741: $82
	rst  $38                                         ; $7742: $ff
	inc  bc                                          ; $7743: $03
	ld   e, e                                        ; $7744: $5b
	db   $db                                         ; $7745: $db
	add  b                                           ; $7746: $80
	rst  $38                                         ; $7747: $ff
	add  b                                           ; $7748: $80
	nop                                              ; $7749: $00
	dec  b                                           ; $774a: $05
	ld   c, b                                        ; $774b: $48
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $774c: $cf
	and  e                                           ; $774d: $a3
	rst  $20                                         ; $774e: $e7
	jp   z, $82f6                                    ; $774f: $ca $f6 $82

	rst  $38                                         ; $7752: $ff
	add  b                                           ; $7753: $80
	ld   l, l                                        ; $7754: $6d
	ld   bc, $ff00                                   ; $7755: $01 $00 $ff
	add  c                                           ; $7758: $81
	nop                                              ; $7759: $00
	add  d                                           ; $775a: $82
	rst  $38                                         ; $775b: $ff
	inc  bc                                          ; $775c: $03
	rra                                              ; $775d: $1f
	ld   e, a                                        ; $775e: $5f
	ld   a, a                                        ; $775f: $7f
	ccf                                              ; $7760: $3f
	adc  c                                           ; $7761: $89
	rst  $38                                         ; $7762: $ff
	inc  b                                           ; $7763: $04
	ccf                                              ; $7764: $3f
	ret  nz                                          ; $7765: $c0

	ld   a, a                                        ; $7766: $7f
	rst  $38                                         ; $7767: $ff
	add  b                                           ; $7768: $80
	adc  d                                           ; $7769: $8a
	rst  $38                                         ; $776a: $ff
	nop                                              ; $776b: $00
	nop                                              ; $776c: $00
	add  b                                           ; $776d: $80
	rst  $38                                         ; $776e: $ff
	nop                                              ; $776f: $00
	nop                                              ; $7770: $00
	adc  d                                           ; $7771: $8a
	rst  $38                                         ; $7772: $ff
	nop                                              ; $7773: $00
	nop                                              ; $7774: $00
	add  b                                           ; $7775: $80
	rst  $38                                         ; $7776: $ff
	nop                                              ; $7777: $00
	nop                                              ; $7778: $00
	adc  d                                           ; $7779: $8a
	rst  $38                                         ; $777a: $ff
	nop                                              ; $777b: $00
	nop                                              ; $777c: $00
	add  b                                           ; $777d: $80
	rst  $38                                         ; $777e: $ff
	dec  d                                           ; $777f: $15
	ld   [bc], a                                     ; $7780: $02
	cp   $f8                                         ; $7781: $fe $f8
	db   $fc                                         ; $7783: $fc
	pop  af                                          ; $7784: $f1
	ld   sp, hl                                      ; $7785: $f9
	ldh  [c], a                                      ; $7786: $e2
	di                                               ; $7787: $f3
	push bc                                          ; $7788: $c5
	rst  $20                                         ; $7789: $e7
	adc  e                                           ; $778a: $8b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $778b: $cf
	add  [hl]                                        ; $778c: $86
	ld   bc, $3f3e                                   ; $778d: $01 $3e $3f
	ld   b, c                                        ; $7790: $41
	ld   a, a                                        ; $7791: $7f
	cp   a                                           ; $7792: $bf
	rst  $38                                         ; $7793: $ff
	ld   a, a                                        ; $7794: $7f
	rst  $38                                         ; $7795: $ff
	add  b                                           ; $7796: $80
	cp   $80                                         ; $7797: $fe $80
	db   $fd                                         ; $7799: $fd
	add  b                                           ; $779a: $80
	ld   [$ff84], a                                  ; $779b: $ea $84 $ff
	add  b                                           ; $779e: $80
	ld   a, [$d580]                                  ; $779f: $fa $80 $d5
	add  b                                           ; $77a2: $80
	xor  d                                           ; $77a3: $aa
	add  b                                           ; $77a4: $80
	ld   d, l                                        ; $77a5: $55
	add  b                                           ; $77a6: $80
	xor  d                                           ; $77a7: $aa
	add  b                                           ; $77a8: $80
	rst  $38                                         ; $77a9: $ff
	add  b                                           ; $77aa: $80
	ld   [$5580], a                                  ; $77ab: $ea $80 $55
	add  b                                           ; $77ae: $80
	xor  d                                           ; $77af: $aa
	add  b                                           ; $77b0: $80
	ld   d, l                                        ; $77b1: $55
	add  b                                           ; $77b2: $80
	xor  d                                           ; $77b3: $aa
	add  b                                           ; $77b4: $80
	ld   d, l                                        ; $77b5: $55
	add  b                                           ; $77b6: $80
	xor  d                                           ; $77b7: $aa
	add  b                                           ; $77b8: $80
	ld   d, l                                        ; $77b9: $55
	add  b                                           ; $77ba: $80
	xor  d                                           ; $77bb: $aa
	add  b                                           ; $77bc: $80
	ld   d, l                                        ; $77bd: $55
	add  b                                           ; $77be: $80
	xor  d                                           ; $77bf: $aa
	add  b                                           ; $77c0: $80
	ld   d, l                                        ; $77c1: $55
	add  b                                           ; $77c2: $80
	xor  d                                           ; $77c3: $aa
	add  b                                           ; $77c4: $80
	ld   d, l                                        ; $77c5: $55
	add  b                                           ; $77c6: $80
	xor  d                                           ; $77c7: $aa
	ld   bc, $5f5e                                   ; $77c8: $01 $5e $5f
	add  b                                           ; $77cb: $80
	xor  e                                           ; $77cc: $ab
	add  b                                           ; $77cd: $80
	ld   d, l                                        ; $77ce: $55
	add  b                                           ; $77cf: $80
	xor  e                                           ; $77d0: $ab
	add  b                                           ; $77d1: $80
	ld   d, l                                        ; $77d2: $55
	add  b                                           ; $77d3: $80
	xor  e                                           ; $77d4: $ab
	add  b                                           ; $77d5: $80
	ld   d, l                                        ; $77d6: $55
	add  b                                           ; $77d7: $80
	xor  e                                           ; $77d8: $ab
	nop                                              ; $77d9: $00
	cp   [hl]                                        ; $77da: $be
	add  l                                           ; $77db: $85
	ld   a, a                                        ; $77dc: $7f
	add  b                                           ; $77dd: $80
	ld   e, a                                        ; $77de: $5f
	add  b                                           ; $77df: $80
	ld   l, e                                        ; $77e0: $6b
	add  b                                           ; $77e1: $80
	ld   d, l                                        ; $77e2: $55
	add  b                                           ; $77e3: $80
	ld   l, d                                        ; $77e4: $6a
	nop                                              ; $77e5: $00
	ccf                                              ; $77e6: $3f
	xor  l                                           ; $77e7: $ad
	rst  $38                                         ; $77e8: $ff
	ld   a, [bc]                                     ; $77e9: $0a
	db   $ed                                         ; $77ea: $ed
	di                                               ; $77eb: $f3
	add  sp, -$07                                    ; $77ec: $e8 $f9
	db   $f4                                         ; $77ee: $f4
	db   $fc                                         ; $77ef: $fc

jr_02e_77f0:
	ld   a, [$fdfe]                                  ; $77f0: $fa $fe $fd
	rst  $38                                         ; $77f3: $ff
	cp   $87                                         ; $77f4: $fe $87
	rst  $38                                         ; $77f6: $ff
	ld   c, $7f                                      ; $77f7: $0e $7f
	rst  $38                                         ; $77f9: $ff
	ccf                                              ; $77fa: $3f
	ld   a, a                                        ; $77fb: $7f
	rra                                              ; $77fc: $1f
	ccf                                              ; $77fd: $3f
	adc  a                                           ; $77fe: $8f
	sbc  a                                           ; $77ff: $9f
	ld   b, a                                        ; $7800: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7801: $cf
	and  e                                           ; $7802: $a3
	rst  $20                                         ; $7803: $e7
	inc  a                                           ; $7804: $3c
	cp   $50                                         ; $7805: $fe $50
	add  b                                           ; $7807: $80
	ld   d, e                                        ; $7808: $53
	ld   bc, $53fb                                   ; $7809: $01 $fb $53
	add  c                                           ; $780c: $81
	ei                                               ; $780d: $fb
	add  b                                           ; $780e: $80
	adc  e                                           ; $780f: $8b
	add  c                                           ; $7810: $81
	cp   e                                           ; $7811: $bb
	adc  c                                           ; $7812: $89
	xor  e                                           ; $7813: $ab
	ld   bc, $ffed                                   ; $7814: $01 $ed $ff
	add  c                                           ; $7817: $81
	add  c                                           ; $7818: $81
	ld   [bc], a                                     ; $7819: $02
	cp   a                                           ; $781a: $bf
	pop  bc                                          ; $781b: $c1
	rlca                                             ; $781c: $07
	add  b                                           ; $781d: $80
	inc  b                                           ; $781e: $04
	add  c                                           ; $781f: $81
	rlca                                             ; $7820: $07
	add  d                                           ; $7821: $82
	ld   b, $80                                      ; $7822: $06 $80
	nop                                              ; $7824: $00
	inc  bc                                          ; $7825: $03
	ld   bc, $0200                                   ; $7826: $01 $00 $02
	ld   a, c                                        ; $7829: $79
	add  b                                           ; $782a: $80
	and  a                                           ; $782b: $a7
	add  hl, bc                                      ; $782c: $09
	xor  a                                           ; $782d: $af
	or   a                                           ; $782e: $b7
	cp   a                                           ; $782f: $bf
	and  e                                           ; $7830: $a3
	cp   a                                           ; $7831: $bf
	pop  bc                                          ; $7832: $c1
	rst  $38                                         ; $7833: $ff
	adc  c                                           ; $7834: $89
	cp   e                                           ; $7835: $bb
	dec  sp                                          ; $7836: $3b
	add  b                                           ; $7837: $80
	ld   a, e                                        ; $7838: $7b
	ld   bc, $0dfb                                   ; $7839: $01 $fb $0d
	cp   l                                           ; $783c: $bd
	nop                                              ; $783d: $00
	ld   a, [de]                                     ; $783e: $1a
	inc  bc                                          ; $783f: $03
	dec  b                                           ; $7840: $05
	ld   bc, $030b                                   ; $7841: $01 $0b $03
	rla                                              ; $7844: $17
	rlca                                             ; $7845: $07
	cpl                                              ; $7846: $2f
	ld   c, $df                                      ; $7847: $0e $df
	dec  e                                           ; $7849: $1d
	ccf                                              ; $784a: $3f
	ld   a, [hl-]                                    ; $784b: $3a
	rst  $38                                         ; $784c: $ff
	ld   b, $ff                                      ; $784d: $06 $ff
	add  hl, de                                      ; $784f: $19
	ei                                               ; $7850: $fb
	db   $db                                         ; $7851: $db
	ei                                               ; $7852: $fb
	xor  e                                           ; $7853: $ab
	ei                                               ; $7854: $fb
	ld   e, e                                        ; $7855: $5b
	ei                                               ; $7856: $fb
	cp   e                                           ; $7857: $bb
	ei                                               ; $7858: $fb
	ld   h, e                                        ; $7859: $63
	add  c                                           ; $785a: $81
	rst  $30                                         ; $785b: $f7
	nop                                              ; $785c: $00
	add  hl, de                                      ; $785d: $19
	add  b                                           ; $785e: $80
	cp   $00                                         ; $785f: $fe $00
	rst  $38                                         ; $7861: $ff
	add  c                                           ; $7862: $81
	add  b                                           ; $7863: $80
	ld   bc, $b8b9                                   ; $7864: $01 $b9 $b8
	add  c                                           ; $7867: $81
	or   a                                           ; $7868: $b7
	inc  b                                           ; $7869: $04
	ldh  a, [$7f]                                    ; $786a: $f0 $7f
	ld   e, c                                        ; $786c: $59
	ccf                                              ; $786d: $3f
	jr   nz, jr_02e_77f0                             ; $786e: $20 $80

	rra                                              ; $7870: $1f
	nop                                              ; $7871: $00
	rst  $38                                         ; $7872: $ff
	add  c                                           ; $7873: $81
	ld   bc, $ff03                                   ; $7874: $01 $03 $ff
	add  c                                           ; $7877: $81
	rst  $38                                         ; $7878: $ff
	jp   $fe80                                       ; $7879: $c3 $80 $fe


	inc  bc                                          ; $787c: $03
	rst  $38                                         ; $787d: $ff
	call nz, Call_02e_78ff                           ; $787e: $c4 $ff $78
	add  b                                           ; $7881: $80
	rst  ToBoot                                         ; $7882: $c7
	nop                                              ; $7883: $00
	rst  $38                                         ; $7884: $ff
	add  c                                           ; $7885: $81
	ld   de, $7f01                                   ; $7886: $11 $01 $7f
	sbc  a                                           ; $7889: $9f
	add  b                                           ; $788a: $80
	rst  $38                                         ; $788b: $ff
	add  b                                           ; $788c: $80
	rra                                              ; $788d: $1f
	inc  bc                                          ; $788e: $03
	rst  $38                                         ; $788f: $ff
	rrca                                             ; $7890: $0f
	rst  $38                                         ; $7891: $ff
	ld   bc, $ff81                                   ; $7892: $01 $81 $ff
	add  c                                           ; $7895: $81
	nop                                              ; $7896: $00
	add  hl, bc                                      ; $7897: $09
	rst  $38                                         ; $7898: $ff
	cp   $ff                                         ; $7899: $fe $ff
	db   $fd                                         ; $789b: $fd
	rst  $38                                         ; $789c: $ff
	ei                                               ; $789d: $fb
	rst  $38                                         ; $789e: $ff
	rst  $30                                         ; $789f: $f7
	db   $fc                                         ; $78a0: $fc
	inc  c                                           ; $78a1: $0c
	add  b                                           ; $78a2: $80
	ld   hl, sp+$00                                  ; $78a3: $f8 $00
	rst  $38                                         ; $78a5: $ff
	add  c                                           ; $78a6: $81
	nop                                              ; $78a7: $00
	dec  b                                           ; $78a8: $05
	rst  $38                                         ; $78a9: $ff
	nop                                              ; $78aa: $00
	rst  $38                                         ; $78ab: $ff
	nop                                              ; $78ac: $00
	rst  $38                                         ; $78ad: $ff
	nop                                              ; $78ae: $00
	add  b                                           ; $78af: $80
	rst  $38                                         ; $78b0: $ff
	add  d                                           ; $78b1: $82
	nop                                              ; $78b2: $00
	nop                                              ; $78b3: $00
	rst  $38                                         ; $78b4: $ff
	add  c                                           ; $78b5: $81
	adc  b                                           ; $78b6: $88
	ld   bc, $fcfb                                   ; $78b7: $01 $fb $fc
	add  b                                           ; $78ba: $80
	rst  $38                                         ; $78bb: $ff
	add  b                                           ; $78bc: $80
	ld   hl, sp+$03                                  ; $78bd: $f8 $03
	rst  $38                                         ; $78bf: $ff
	ldh  a, [rIE]                                    ; $78c0: $f0 $ff
	add  b                                           ; $78c2: $80
	add  c                                           ; $78c3: $81
	rst  $38                                         ; $78c4: $ff
	add  c                                           ; $78c5: $81
	ld   bc, $9d01                                   ; $78c6: $01 $01 $9d
	adc  l                                           ; $78c9: $8d
	add  c                                           ; $78ca: $81
	ld   a, l                                        ; $78cb: $7d
	inc  b                                           ; $78cc: $04
	rrca                                             ; $78cd: $0f
	cp   $9a                                         ; $78ce: $fe $9a
	db   $fc                                         ; $78d0: $fc
	inc  b                                           ; $78d1: $04
	add  b                                           ; $78d2: $80
	ld   hl, sp-$01                                  ; $78d3: $f8 $ff
	nop                                              ; $78d5: $00
	ldh  a, [rP1]                                    ; $78d6: $f0 $00
	ld   bc, $00ff                                   ; $78d8: $01 $ff $00
	add  [hl]                                        ; $78db: $86
	db   $db                                         ; $78dc: $db
	add  b                                           ; $78dd: $80
	nop                                              ; $78de: $00
	nop                                              ; $78df: $00
	rst  $38                                         ; $78e0: $ff
	add  c                                           ; $78e1: $81
	nop                                              ; $78e2: $00
	ld   bc, $00ff                                   ; $78e3: $01 $ff $00
	add  [hl]                                        ; $78e6: $86
	ld   l, l                                        ; $78e7: $6d
	add  b                                           ; $78e8: $80
	nop                                              ; $78e9: $00
	nop                                              ; $78ea: $00
	rst  $38                                         ; $78eb: $ff
	add  c                                           ; $78ec: $81
	nop                                              ; $78ed: $00
	ld   bc, $00ff                                   ; $78ee: $01 $ff $00
	add  [hl]                                        ; $78f1: $86
	or   [hl]                                        ; $78f2: $b6
	add  b                                           ; $78f3: $80
	nop                                              ; $78f4: $00
	nop                                              ; $78f5: $00
	rst  $38                                         ; $78f6: $ff
	add  c                                           ; $78f7: $81
	nop                                              ; $78f8: $00
	ld   [bc], a                                     ; $78f9: $02
	rst  $38                                         ; $78fa: $ff
	nop                                              ; $78fb: $00
	dec  de                                          ; $78fc: $1b
	add  l                                           ; $78fd: $85
	db   $db                                         ; $78fe: $db

Call_02e_78ff:
	ld   [bc], a                                     ; $78ff: $02
	ret  nz                                          ; $7900: $c0

	nop                                              ; $7901: $00
	rst  $38                                         ; $7902: $ff
	add  c                                           ; $7903: $81
	nop                                              ; $7904: $00
	ld   [bc], a                                     ; $7905: $02
	rst  $38                                         ; $7906: $ff
	nop                                              ; $7907: $00
	inc  bc                                          ; $7908: $03
	add  l                                           ; $7909: $85
	db   $db                                         ; $790a: $db
	ld   [bc], a                                     ; $790b: $02
	ret  c                                           ; $790c: $d8

jr_02e_790d:
	nop                                              ; $790d: $00
	rst  $38                                         ; $790e: $ff
	add  c                                           ; $790f: $81
	nop                                              ; $7910: $00
	nop                                              ; $7911: $00
	rst  $38                                         ; $7912: $ff
	add  b                                           ; $7913: $80
	nop                                              ; $7914: $00
	add  [hl]                                        ; $7915: $86
	db   $db                                         ; $7916: $db
	ld   bc, $ff00                                   ; $7917: $01 $00 $ff
	add  c                                           ; $791a: $81
	nop                                              ; $791b: $00
	ld   [bc], a                                     ; $791c: $02
	rst  $38                                         ; $791d: $ff
	nop                                              ; $791e: $00
	dec  c                                           ; $791f: $0d
	add  l                                           ; $7920: $85
	ld   l, l                                        ; $7921: $6d
	ld   [bc], a                                     ; $7922: $02
	ld   h, b                                        ; $7923: $60
	nop                                              ; $7924: $00
	rst  $38                                         ; $7925: $ff
	add  c                                           ; $7926: $81
	nop                                              ; $7927: $00
	ld   [bc], a                                     ; $7928: $02
	rst  $38                                         ; $7929: $ff
	nop                                              ; $792a: $00
	ld   bc, $6d85                                   ; $792b: $01 $85 $6d
	ld   [bc], a                                     ; $792e: $02
	ld   l, h                                        ; $792f: $6c
	nop                                              ; $7930: $00
	rst  $38                                         ; $7931: $ff
	add  c                                           ; $7932: $81
	nop                                              ; $7933: $00
	nop                                              ; $7934: $00
	rst  $38                                         ; $7935: $ff
	add  b                                           ; $7936: $80
	nop                                              ; $7937: $00
	add  [hl]                                        ; $7938: $86
	ld   l, l                                        ; $7939: $6d
	ld   bc, $ff00                                   ; $793a: $01 $00 $ff
	add  c                                           ; $793d: $81
	nop                                              ; $793e: $00
	ld   [bc], a                                     ; $793f: $02
	rst  $38                                         ; $7940: $ff
	nop                                              ; $7941: $00
	ld   [hl], $85                                   ; $7942: $36 $85
	or   [hl]                                        ; $7944: $b6
	ld   [bc], a                                     ; $7945: $02
	add  b                                           ; $7946: $80
	nop                                              ; $7947: $00
	rst  $38                                         ; $7948: $ff
	add  c                                           ; $7949: $81
	nop                                              ; $794a: $00
	ld   [bc], a                                     ; $794b: $02
	rst  $38                                         ; $794c: $ff
	nop                                              ; $794d: $00
	ld   b, $85                                      ; $794e: $06 $85
	or   [hl]                                        ; $7950: $b6
	ld   [bc], a                                     ; $7951: $02
	or   b                                           ; $7952: $b0
	nop                                              ; $7953: $00
	rst  $38                                         ; $7954: $ff

jr_02e_7955:
	add  c                                           ; $7955: $81
	nop                                              ; $7956: $00
	nop                                              ; $7957: $00
	rst  $38                                         ; $7958: $ff
	add  b                                           ; $7959: $80
	nop                                              ; $795a: $00
	add  [hl]                                        ; $795b: $86
	or   [hl]                                        ; $795c: $b6
	ld   bc, $ff00                                   ; $795d: $01 $00 $ff
	ret  nz                                          ; $7960: $c0

	nop                                              ; $7961: $00
	add  b                                           ; $7962: $80
	ld   b, h                                        ; $7963: $44
	add  b                                           ; $7964: $80
	ld   a, a                                        ; $7965: $7f
	add  b                                           ; $7966: $80
	adc  $80                                         ; $7967: $ce $80
	ld   d, l                                        ; $7969: $55
	add  b                                           ; $796a: $80
	ld   h, h                                        ; $796b: $64
	add  b                                           ; $796c: $80
	ld   l, [hl]                                     ; $796d: $6e
	add  b                                           ; $796e: $80
	ld   b, h                                        ; $796f: $44
	add  d                                           ; $7970: $82
	nop                                              ; $7971: $00
	add  b                                           ; $7972: $80
	add  b                                           ; $7973: $80
	add  d                                           ; $7974: $82
	nop                                              ; $7975: $00
	add  d                                           ; $7976: $82
	add  b                                           ; $7977: $80
	add  h                                           ; $7978: $84
	nop                                              ; $7979: $00
	add  b                                           ; $797a: $80
	inc  bc                                          ; $797b: $03
	add  [hl]                                        ; $797c: $86
	nop                                              ; $797d: $00
	add  b                                           ; $797e: $80
	inc  bc                                          ; $797f: $03
	add  b                                           ; $7980: $80
	nop                                              ; $7981: $00
	add  b                                           ; $7982: $80
	ld   b, b                                        ; $7983: $40
	add  b                                           ; $7984: $80
	db   $fc                                         ; $7985: $fc
	add  d                                           ; $7986: $82
	ld   b, h                                        ; $7987: $44
	add  d                                           ; $7988: $82
	add  h                                           ; $7989: $84
	add  b                                           ; $798a: $80
	jr   jr_02e_790d                                 ; $798b: $18 $80

	nop                                              ; $798d: $00
	add  b                                           ; $798e: $80
	ld   b, b                                        ; $798f: $40
	add  b                                           ; $7990: $80
	ld   [hl], a                                     ; $7991: $77
	add  b                                           ; $7992: $80
	and  h                                           ; $7993: $a4
	add  b                                           ; $7994: $80
	db   $fc                                         ; $7995: $fc
	add  d                                           ; $7996: $82
	inc  h                                           ; $7997: $24
	add  b                                           ; $7998: $80
	rst  $10                                         ; $7999: $d7
	add  d                                           ; $799a: $82
	nop                                              ; $799b: $00
	adc  d                                           ; $799c: $8a
	add  b                                           ; $799d: $80
	add  b                                           ; $799e: $80
	nop                                              ; $799f: $00
	add  b                                           ; $79a0: $80
	ld   a, $80                                      ; $79a1: $3e $80
	rst  $38                                         ; $79a3: $ff
	add  b                                           ; $79a4: $80

jr_02e_79a5:
	xor  d                                           ; $79a5: $aa
	add  b                                           ; $79a6: $80
	ld   a, $80                                      ; $79a7: $3e $80
	rst  $38                                         ; $79a9: $ff
	add  b                                           ; $79aa: $80
	ld   d, l                                        ; $79ab: $55
	add  b                                           ; $79ac: $80
	rst  $38                                         ; $79ad: $ff
	add  d                                           ; $79ae: $82
	nop                                              ; $79af: $00
	add  d                                           ; $79b0: $82
	add  b                                           ; $79b1: $80
	add  b                                           ; $79b2: $80
	nop                                              ; $79b3: $00
	add  b                                           ; $79b4: $80

jr_02e_79b5:
	add  b                                           ; $79b5: $80
	add  b                                           ; $79b6: $80
	nop                                              ; $79b7: $00
	add  b                                           ; $79b8: $80
	add  b                                           ; $79b9: $80
	add  b                                           ; $79ba: $80
	nop                                              ; $79bb: $00
	add  b                                           ; $79bc: $80
	ld   a, a                                        ; $79bd: $7f
	add  b                                           ; $79be: $80
	ld   e, [hl]                                     ; $79bf: $5e
	add  b                                           ; $79c0: $80
	add  b                                           ; $79c1: $80
	add  b                                           ; $79c2: $80
	ld   a, a                                        ; $79c3: $7f
	add  b                                           ; $79c4: $80
	ld   a, [hl+]                                    ; $79c5: $2a
	add  b                                           ; $79c6: $80
	ld   [de], a                                     ; $79c7: $12
	add  b                                           ; $79c8: $80
	ld   l, l                                        ; $79c9: $6d
	add  b                                           ; $79ca: $80
	nop                                              ; $79cb: $00
	add  b                                           ; $79cc: $80
	ld   bc, $0280                                   ; $79cd: $01 $80 $02
	add  b                                           ; $79d0: $80
	rlca                                             ; $79d1: $07
	add  b                                           ; $79d2: $80
	jr   jr_02e_7955                                 ; $79d3: $18 $80

	rlca                                             ; $79d5: $07
	add  b                                           ; $79d6: $80
	add  h                                           ; $79d7: $84
	add  b                                           ; $79d8: $80
	add  a                                           ; $79d9: $87
	add  b                                           ; $79da: $80
	nop                                              ; $79db: $00
	add  b                                           ; $79dc: $80

jr_02e_79dd:
	ld   bc, $8180                                   ; $79dd: $01 $80 $81
	add  b                                           ; $79e0: $80
	pop  bc                                          ; $79e1: $c1
	add  b                                           ; $79e2: $80
	ld   sp, $c180                                   ; $79e3: $31 $80 $c1
	add  b                                           ; $79e6: $80
	ld   b, c                                        ; $79e7: $41
	add  b                                           ; $79e8: $80
	pop  bc                                          ; $79e9: $c1
	add  d                                           ; $79ea: $82

jr_02e_79eb:
	nop                                              ; $79eb: $00
	add  b                                           ; $79ec: $80
	ld   [$0484], sp                                 ; $79ed: $08 $84 $04
	add  b                                           ; $79f0: $80
	ld   b, b                                        ; $79f1: $40
	add  b                                           ; $79f2: $80
	add  b                                           ; $79f3: $80
	add  b                                           ; $79f4: $80
	nop                                              ; $79f5: $00
	add  b                                           ; $79f6: $80
	ld   a, $80                                      ; $79f7: $3e $80
	inc  e                                           ; $79f9: $1c
	add  b                                           ; $79fa: $80
	rst  $38                                         ; $79fb: $ff
	add  b                                           ; $79fc: $80
	inc  d                                           ; $79fd: $14
	add  b                                           ; $79fe: $80
	ccf                                              ; $79ff: $3f
	add  b                                           ; $7a00: $80
	ld   e, h                                        ; $7a01: $5c
	add  b                                           ; $7a02: $80
	ld   c, c                                        ; $7a03: $49
	add  b                                           ; $7a04: $80
	nop                                              ; $7a05: $00
	add  b                                           ; $7a06: $80
	rrca                                             ; $7a07: $0f
	add  b                                           ; $7a08: $80
	ld   [$8f80], sp                                 ; $7a09: $08 $80 $8f
	add  b                                           ; $7a0c: $80
	ld   bc, $1f80                                   ; $7a0d: $01 $80 $1f
	add  d                                           ; $7a10: $82
	ld   bc, $0080                                   ; $7a11: $01 $80 $00
	add  b                                           ; $7a14: $80
	ldh  [$80], a                                    ; $7a15: $e0 $80
	ld   hl, $e080                                   ; $7a17: $21 $80 $e0
	add  b                                           ; $7a1a: $80
	nop                                              ; $7a1b: $00
	add  b                                           ; $7a1c: $80
	pop  af                                          ; $7a1d: $f1
	add  b                                           ; $7a1e: $80
	ld   bc, $0082                                   ; $7a1f: $01 $82 $00
	add  b                                           ; $7a22: $80
	jr   nz, jr_02e_79a5                             ; $7a23: $20 $80

	db   $fc                                         ; $7a25: $fc
	add  b                                           ; $7a26: $80
	db   $10                                         ; $7a27: $10
	add  b                                           ; $7a28: $80
	ld   [$1880], sp                                 ; $7a29: $08 $80 $18
	add  b                                           ; $7a2c: $80
	nop                                              ; $7a2d: $00
	add  b                                           ; $7a2e: $80
	ldh  a, [$80]                                    ; $7a2f: $f0 $80
	nop                                              ; $7a31: $00
	add  b                                           ; $7a32: $80
	jr   jr_02e_79b5                                 ; $7a33: $18 $80

	ld   h, $80                                      ; $7a35: $26 $80
	rst  $38                                         ; $7a37: $ff
	add  d                                           ; $7a38: $82
	ld   d, l                                        ; $7a39: $55
	add  b                                           ; $7a3a: $80
	ld   [hl], a                                     ; $7a3b: $77
	add  b                                           ; $7a3c: $80
	inc  b                                           ; $7a3d: $04
	add  b                                           ; $7a3e: $80
	nop                                              ; $7a3f: $00
	add  b                                           ; $7a40: $80
	ld   bc, $0f80                                   ; $7a41: $01 $80 $0f
	add  b                                           ; $7a44: $80
	adc  c                                           ; $7a45: $89
	add  b                                           ; $7a46: $80
	add  hl, bc                                      ; $7a47: $09
	add  b                                           ; $7a48: $80
	rrca                                             ; $7a49: $0f
	add  d                                           ; $7a4a: $82
	ld   bc, $0082                                   ; $7a4b: $01 $82 $00
	add  b                                           ; $7a4e: $80
	db   $e3                                         ; $7a4f: $e3
	add  b                                           ; $7a50: $80
	ld   hl, $2080                                   ; $7a51: $21 $80 $20
	add  b                                           ; $7a54: $80
	pop  hl                                          ; $7a55: $e1
	add  b                                           ; $7a56: $80
	inc  bc                                          ; $7a57: $03
	add  d                                           ; $7a58: $82
	nop                                              ; $7a59: $00
	add  b                                           ; $7a5a: $80
	jr   nz, jr_02e_79dd                             ; $7a5b: $20 $80

	cp   $80                                         ; $7a5d: $fe $80
	ld   h, h                                        ; $7a5f: $64
	add  b                                           ; $7a60: $80
	ld   hl, sp-$80                                  ; $7a61: $f8 $80
	inc  [hl]                                        ; $7a63: $34
	add  b                                           ; $7a64: $80
	cp   $80                                         ; $7a65: $fe $80
	jr   nz, jr_02e_79eb                             ; $7a67: $20 $82

	nop                                              ; $7a69: $00
	adc  c                                           ; $7a6a: $89
	ld   bc, $6107                                   ; $7a6b: $01 $07 $61
	or   b                                           ; $7a6e: $b0
	ret  nc                                          ; $7a6f: $d0

	rst  $38                                         ; $7a70: $ff
	add  d                                           ; $7a71: $82
	cp   [hl]                                        ; $7a72: $be
	or   [hl]                                        ; $7a73: $b6
	xor  [hl]                                        ; $7a74: $ae
	add  b                                           ; $7a75: $80
	cp   [hl]                                        ; $7a76: $be
	inc  b                                           ; $7a77: $04
	and  [hl]                                        ; $7a78: $a6
	cp   [hl]                                        ; $7a79: $be
	cp   $7e                                         ; $7a7a: $fe $7e
	ld   b, e                                        ; $7a7c: $43
	add  b                                           ; $7a7d: $80
	ccf                                              ; $7a7e: $3f
	add  b                                           ; $7a7f: $80
	nop                                              ; $7a80: $00
	dec  bc                                          ; $7a81: $0b
	cp   $82                                         ; $7a82: $fe $82
	add  e                                           ; $7a84: $83
	add  b                                           ; $7a85: $80
	db   $fd                                         ; $7a86: $fd
	add  l                                           ; $7a87: $85
	cp   $82                                         ; $7a88: $fe $82
	rst  $38                                         ; $7a8a: $ff
	ld   sp, hl                                      ; $7a8b: $f9
	rst  $38                                         ; $7a8c: $ff
	add  d                                           ; $7a8d: $82
	add  b                                           ; $7a8e: $80
	rst  $38                                         ; $7a8f: $ff
	add  d                                           ; $7a90: $82
	nop                                              ; $7a91: $00
	inc  b                                           ; $7a92: $04
	ld   hl, sp+$00                                  ; $7a93: $f8 $00
	db   $fc                                         ; $7a95: $fc
	inc  b                                           ; $7a96: $04
	rst  $38                                         ; $7a97: $ff
	add  c                                           ; $7a98: $81
	nop                                              ; $7a99: $00
	ld   bc, $00ff                                   ; $7a9a: $01 $ff $00
	add  b                                           ; $7a9d: $80
	rst  $38                                         ; $7a9e: $ff
	add  [hl]                                        ; $7a9f: $86
	nop                                              ; $7aa0: $00
	nop                                              ; $7aa1: $00
	rst  $38                                         ; $7aa2: $ff
	add  c                                           ; $7aa3: $81
	nop                                              ; $7aa4: $00
	ld   bc, $00ff                                   ; $7aa5: $01 $ff $00
	add  b                                           ; $7aa8: $80
	rst  $38                                         ; $7aa9: $ff
	adc  [hl]                                        ; $7aaa: $8e
	nop                                              ; $7aab: $00
	ld   b, $3f                                      ; $7aac: $06 $3f
	ld   bc, $0141                                   ; $7aae: $01 $41 $01
	cp   a                                           ; $7ab1: $bf
	or   a                                           ; $7ab2: $b7
	xor  a                                           ; $7ab3: $af
	add  b                                           ; $7ab4: $80
	cp   a                                           ; $7ab5: $bf
	inc  b                                           ; $7ab6: $04
	and  a                                           ; $7ab7: $a7
	cp   a                                           ; $7ab8: $bf
	cp   l                                           ; $7ab9: $bd
	cp   [hl]                                        ; $7aba: $be
	jp   nz, $fc80                                   ; $7abb: $c2 $80 $fc

	nop                                              ; $7abe: $00
	rst  $38                                         ; $7abf: $ff
	add  c                                           ; $7ac0: $81
	ld   b, b                                        ; $7ac1: $40
	add  c                                           ; $7ac2: $81
	rst  $38                                         ; $7ac3: $ff
	ld   [bc], a                                     ; $7ac4: $02
	ret  nz                                          ; $7ac5: $c0

	rst  $38                                         ; $7ac6: $ff
	ld   a, a                                        ; $7ac7: $7f
	add  b                                           ; $7ac8: $80
	add  b                                           ; $7ac9: $80
	add  d                                           ; $7aca: $82
	nop                                              ; $7acb: $00
	nop                                              ; $7acc: $00
	rst  $38                                         ; $7acd: $ff
	add  c                                           ; $7ace: $81
	jr   z, jr_02e_7ad4                              ; $7acf: $28 $03

	rst  $28                                         ; $7ad1: $ef
	add  sp, -$11                                    ; $7ad2: $e8 $ef

jr_02e_7ad4:
	ccf                                              ; $7ad4: $3f
	add  b                                           ; $7ad5: $80
	ldh  a, [$84]                                    ; $7ad6: $f0 $84
	nop                                              ; $7ad8: $00
	nop                                              ; $7ad9: $00
	rst  $38                                         ; $7ada: $ff
	add  c                                           ; $7adb: $81
	nop                                              ; $7adc: $00
	ld   bc, $00ff                                   ; $7add: $01 $ff $00
	add  b                                           ; $7ae0: $80
	rst  $38                                         ; $7ae1: $ff
	add  l                                           ; $7ae2: $85
	nop                                              ; $7ae3: $00
	nop                                              ; $7ae4: $00

jr_02e_7ae5:
	ld   h, b                                        ; $7ae5: $60
	adc  l                                           ; $7ae6: $8d
	or   b                                           ; $7ae7: $b0
	nop                                              ; $7ae8: $00
	sub  [hl]                                        ; $7ae9: $96
	adc  l                                           ; $7aea: $8d
	xor  e                                           ; $7aeb: $ab
	nop                                              ; $7aec: $00
	db   $ed                                         ; $7aed: $ed
	rst  $38                                         ; $7aee: $ff
	nop                                              ; $7aef: $00
	rst  $38                                         ; $7af0: $ff
	nop                                              ; $7af1: $00
	rst  $38                                         ; $7af2: $ff
	nop                                              ; $7af3: $00
	rst  $38                                         ; $7af4: $ff
	nop                                              ; $7af5: $00
	rst  $38                                         ; $7af6: $ff
	nop                                              ; $7af7: $00
	rst  $38                                         ; $7af8: $ff
	nop                                              ; $7af9: $00
	rst  $38                                         ; $7afa: $ff
	nop                                              ; $7afb: $00
	rst  $38                                         ; $7afc: $ff
	nop                                              ; $7afd: $00
	rst  $38                                         ; $7afe: $ff
	nop                                              ; $7aff: $00
	db   $f4                                         ; $7b00: $f4

jr_02e_7b01:
	nop                                              ; $7b01: $00
	inc  sp                                          ; $7b02: $33
	ld   [bc], a                                     ; $7b03: $02
	rst  $38                                         ; $7b04: $ff
	nop                                              ; $7b05: $00
	rst  $38                                         ; $7b06: $ff
	nop                                              ; $7b07: $00
	rst  $38                                         ; $7b08: $ff
	nop                                              ; $7b09: $00
	rst  $38                                         ; $7b0a: $ff
	nop                                              ; $7b0b: $00
	rst  $38                                         ; $7b0c: $ff
	nop                                              ; $7b0d: $00
	rst  $38                                         ; $7b0e: $ff
	nop                                              ; $7b0f: $00
	rst  $38                                         ; $7b10: $ff
	nop                                              ; $7b11: $00
	rst  $38                                         ; $7b12: $ff
	nop                                              ; $7b13: $00
	rst  $38                                         ; $7b14: $ff
	nop                                              ; $7b15: $00
	rst  $38                                         ; $7b16: $ff
	nop                                              ; $7b17: $00
	rst  $38                                         ; $7b18: $ff
	nop                                              ; $7b19: $00
	rst  $38                                         ; $7b1a: $ff
	nop                                              ; $7b1b: $00
	rst  $38                                         ; $7b1c: $ff
	nop                                              ; $7b1d: $00
	rst  $38                                         ; $7b1e: $ff
	nop                                              ; $7b1f: $00
	rst  $38                                         ; $7b20: $ff
	nop                                              ; $7b21: $00
	rst  $38                                         ; $7b22: $ff
	nop                                              ; $7b23: $00
	rst  $38                                         ; $7b24: $ff
	nop                                              ; $7b25: $00
	rst  $38                                         ; $7b26: $ff
	nop                                              ; $7b27: $00
	rst  $38                                         ; $7b28: $ff
	nop                                              ; $7b29: $00
	rst  $38                                         ; $7b2a: $ff
	nop                                              ; $7b2b: $00
	rst  $38                                         ; $7b2c: $ff
	nop                                              ; $7b2d: $00
	rst  $38                                         ; $7b2e: $ff
	nop                                              ; $7b2f: $00
	rst  $38                                         ; $7b30: $ff
	nop                                              ; $7b31: $00
	rst  $38                                         ; $7b32: $ff
	nop                                              ; $7b33: $00
	rst  $38                                         ; $7b34: $ff
	nop                                              ; $7b35: $00
	rst  $38                                         ; $7b36: $ff
	nop                                              ; $7b37: $00
	rst  $38                                         ; $7b38: $ff
	nop                                              ; $7b39: $00
	rst  $38                                         ; $7b3a: $ff
	nop                                              ; $7b3b: $00
	rst  $38                                         ; $7b3c: $ff
	nop                                              ; $7b3d: $00
	rst  $38                                         ; $7b3e: $ff
	nop                                              ; $7b3f: $00
	rst  $38                                         ; $7b40: $ff
	nop                                              ; $7b41: $00
	pop  af                                          ; $7b42: $f1
	nop                                              ; $7b43: $00
	add  b                                           ; $7b44: $80
	inc  a                                           ; $7b45: $3c
	add  b                                           ; $7b46: $80
	nop                                              ; $7b47: $00
	add  b                                           ; $7b48: $80
	ld   a, [hl]                                     ; $7b49: $7e
	add  b                                           ; $7b4a: $80
	nop                                              ; $7b4b: $00
	add  b                                           ; $7b4c: $80

jr_02e_7b4d:
	inc  a                                           ; $7b4d: $3c
	add  b                                           ; $7b4e: $80
	nop                                              ; $7b4f: $00
	add  b                                           ; $7b50: $80
	inc  a                                           ; $7b51: $3c
	add  b                                           ; $7b52: $80
	nop                                              ; $7b53: $00
	add  b                                           ; $7b54: $80
	ld   b, c                                        ; $7b55: $41
	adc  d                                           ; $7b56: $8a
	ld   c, c                                        ; $7b57: $49
	add  b                                           ; $7b58: $80
	nop                                              ; $7b59: $00
	add  b                                           ; $7b5a: $80
	db   $10                                         ; $7b5b: $10
	add  b                                           ; $7b5c: $80
	dec  h                                           ; $7b5d: $25
	add  b                                           ; $7b5e: $80
	ld   b, h                                        ; $7b5f: $44
	add  b                                           ; $7b60: $80
	jr   z, jr_02e_7ae5                              ; $7b61: $28 $82

	db   $10                                         ; $7b63: $10
	add  b                                           ; $7b64: $80
	inc  h                                           ; $7b65: $24
	add  b                                           ; $7b66: $80
	nop                                              ; $7b67: $00
	add  b                                           ; $7b68: $80
	db   $10                                         ; $7b69: $10
	add  b                                           ; $7b6a: $80

jr_02e_7b6b:
	rst  $38                                         ; $7b6b: $ff
	add  b                                           ; $7b6c: $80
	db   $10                                         ; $7b6d: $10
	add  b                                           ; $7b6e: $80
	cp   $80                                         ; $7b6f: $fe $80
	sub  d                                           ; $7b71: $92
	add  b                                           ; $7b72: $80
	cp   $80                                         ; $7b73: $fe $80
	sub  d                                           ; $7b75: $92
	add  b                                           ; $7b76: $80
	nop                                              ; $7b77: $00
	add  b                                           ; $7b78: $80
	ld   a, a                                        ; $7b79: $7f
	add  h                                           ; $7b7a: $84
	nop                                              ; $7b7b: $00
	add  b                                           ; $7b7c: $80
	cpl                                              ; $7b7d: $2f
	add  d                                           ; $7b7e: $82
	jr   z, jr_02e_7b01                              ; $7b7f: $28 $80

	nop                                              ; $7b81: $00
	add  b                                           ; $7b82: $80
	rst  $38                                         ; $7b83: $ff
	add  h                                           ; $7b84: $84
	add  b                                           ; $7b85: $80
	add  b                                           ; $7b86: $80
	ld   a, [$8a82]                                  ; $7b87: $fa $82 $8a
	add  b                                           ; $7b8a: $80
	nop                                              ; $7b8b: $00
	add  b                                           ; $7b8c: $80
	ld   a, a                                        ; $7b8d: $7f
	add  d                                           ; $7b8e: $82
	nop                                              ; $7b8f: $00
	add  b                                           ; $7b90: $80
	ld   bc, $3f80                                   ; $7b91: $01 $80 $3f
	add  d                                           ; $7b94: $82
	ld   [hl+], a                                    ; $7b95: $22
	add  b                                           ; $7b96: $80
	nop                                              ; $7b97: $00
	add  b                                           ; $7b98: $80
	cp   $82                                         ; $7b99: $fe $82
	add  b                                           ; $7b9b: $80
	add  b                                           ; $7b9c: $80

jr_02e_7b9d:
	nop                                              ; $7b9d: $00
	add  b                                           ; $7b9e: $80
	cp   $82                                         ; $7b9f: $fe $82
	ld   [hl+], a                                    ; $7ba1: $22
	add  h                                           ; $7ba2: $84
	rst  $38                                         ; $7ba3: $ff
	add  b                                           ; $7ba4: $80
	rst  $20                                         ; $7ba5: $e7
	add  b                                           ; $7ba6: $80
	jp   $8180                                       ; $7ba7: $c3 $80 $81


	add  h                                           ; $7baa: $84
	rst  $38                                         ; $7bab: $ff
	add  b                                           ; $7bac: $80

jr_02e_7bad:
	ei                                               ; $7bad: $fb
	add  b                                           ; $7bae: $80
	di                                               ; $7baf: $f3
	add  d                                           ; $7bb0: $82
	db   $e3                                         ; $7bb1: $e3
	add  b                                           ; $7bb2: $80
	di                                               ; $7bb3: $f3
	add  b                                           ; $7bb4: $80
	ei                                               ; $7bb5: $fb
	add  b                                           ; $7bb6: $80
	rst  $38                                         ; $7bb7: $ff
	add  b                                           ; $7bb8: $80
	rlca                                             ; $7bb9: $07
	add  b                                           ; $7bba: $80
	inc  e                                           ; $7bbb: $1c
	add  b                                           ; $7bbc: $80
	ld   sp, $6180                                   ; $7bbd: $31 $80 $61
	add  b                                           ; $7bc0: $80
	ld   b, c                                        ; $7bc1: $41
	add  b                                           ; $7bc2: $80
	jp   $8280                                       ; $7bc3: $c3 $80 $82


	add  b                                           ; $7bc6: $80
	add  [hl]                                        ; $7bc7: $86
	add  b                                           ; $7bc8: $80
	ldh  [$80], a                                    ; $7bc9: $e0 $80
	jr   c, jr_02e_7b4d                              ; $7bcb: $38 $80

	call z, Call_02e_4680                            ; $7bcd: $cc $80 $46
	add  b                                           ; $7bd0: $80
	ld   b, d                                        ; $7bd1: $42
	add  b                                           ; $7bd2: $80
	ld   h, e                                        ; $7bd3: $63
	add  d                                           ; $7bd4: $82
	ld   hl, $0780                                   ; $7bd5: $21 $80 $07
	add  b                                           ; $7bd8: $80
	inc  e                                           ; $7bd9: $1c
	add  b                                           ; $7bda: $80
	ccf                                              ; $7bdb: $3f
	add  b                                           ; $7bdc: $80
	ld   l, b                                        ; $7bdd: $68
	add  b                                           ; $7bde: $80
	ld   c, b                                        ; $7bdf: $48
	add  b                                           ; $7be0: $80
	ret  z                                           ; $7be1: $c8

	add  b                                           ; $7be2: $80

jr_02e_7be3:
	adc  b                                           ; $7be3: $88
	add  b                                           ; $7be4: $80
	adc  a                                           ; $7be5: $8f
	add  b                                           ; $7be6: $80
	ldh  [$80], a                                    ; $7be7: $e0 $80
	jr   c, jr_02e_7b6b                              ; $7be9: $38 $80

	db   $ec                                         ; $7beb: $ec
	add  b                                           ; $7bec: $80
	ld   d, $80                                      ; $7bed: $16 $80
	ld   [de], a                                     ; $7bef: $12
	add  b                                           ; $7bf0: $80
	inc  de                                          ; $7bf1: $13
	add  b                                           ; $7bf2: $80
	ld   hl, $c180                                   ; $7bf3: $21 $80 $c1
	and  d                                           ; $7bf6: $a2
	nop                                              ; $7bf7: $00
	add  b                                           ; $7bf8: $80
	inc  a                                           ; $7bf9: $3c
	add  h                                           ; $7bfa: $84
	inc  h                                           ; $7bfb: $24
	add  b                                           ; $7bfc: $80
	dec  a                                           ; $7bfd: $3d
	add  b                                           ; $7bfe: $80
	nop                                              ; $7bff: $00
	add  [hl]                                        ; $7c00: $86
	ld   c, c                                        ; $7c01: $49
	add  b                                           ; $7c02: $80
	adc  c                                           ; $7c03: $89
	add  b                                           ; $7c04: $80
	add  c                                           ; $7c05: $81
	add  b                                           ; $7c06: $80
	ld   bc, $0080                                   ; $7c07: $01 $80 $00
	add  b                                           ; $7c0a: $80
	ld   a, h                                        ; $7c0b: $7c
	add  b                                           ; $7c0c: $80
	db   $10                                         ; $7c0d: $10
	add  d                                           ; $7c0e: $82
	ld   d, h                                        ; $7c0f: $54
	add  b                                           ; $7c10: $80
	ld   d, b                                        ; $7c11: $50
	add  b                                           ; $7c12: $80

jr_02e_7c13:
	ld   de, $1082                                   ; $7c13: $11 $82 $10
	add  b                                           ; $7c16: $80
	sub  d                                           ; $7c17: $92
	add  b                                           ; $7c18: $80
	cp   $80                                         ; $7c19: $fe $80
	jr   c, jr_02e_7b9d                              ; $7c1b: $38 $80

	ld   d, h                                        ; $7c1d: $54
	add  b                                           ; $7c1e: $80
	sub  d                                           ; $7c1f: $92
	add  b                                           ; $7c20: $80
	ld   de, $1082                                   ; $7c21: $11 $82 $10
	add  b                                           ; $7c24: $80
	cpl                                              ; $7c25: $2f
	add  d                                           ; $7c26: $82
	jr   z, @-$7e                                    ; $7c27: $28 $80

	cpl                                              ; $7c29: $2f
	add  d                                           ; $7c2a: $82
	jr   nz, jr_02e_7bad                             ; $7c2b: $20 $80

	ccf                                              ; $7c2d: $3f
	add  b                                           ; $7c2e: $80
	nop                                              ; $7c2f: $00
	add  b                                           ; $7c30: $80
	ld   a, [$8a82]                                  ; $7c31: $fa $82 $8a
	add  b                                           ; $7c34: $80
	ld   a, [$0282]                                  ; $7c35: $fa $82 $02
	add  b                                           ; $7c38: $80
	cp   $80                                         ; $7c39: $fe $80
	nop                                              ; $7c3b: $00
	add  b                                           ; $7c3c: $80
	inc  hl                                          ; $7c3d: $23
	add  d                                           ; $7c3e: $82
	ld   [hl+], a                                    ; $7c3f: $22
	add  b                                           ; $7c40: $80
	inc  hl                                          ; $7c41: $23
	add  d                                           ; $7c42: $82
	ld   [hl+], a                                    ; $7c43: $22
	add  b                                           ; $7c44: $80
	ccf                                              ; $7c45: $3f
	add  b                                           ; $7c46: $80
	nop                                              ; $7c47: $00
	add  b                                           ; $7c48: $80
	ldh  [c], a                                      ; $7c49: $e2
	add  d                                           ; $7c4a: $82
	ld   [hl+], a                                    ; $7c4b: $22
	add  b                                           ; $7c4c: $80
	ldh  [c], a                                      ; $7c4d: $e2
	add  d                                           ; $7c4e: $82
	ld   [hl+], a                                    ; $7c4f: $22
	add  b                                           ; $7c50: $80
	cp   $80                                         ; $7c51: $fe $80
	nop                                              ; $7c53: $00
	adc  [hl]                                        ; $7c54: $8e
	rst  $38                                         ; $7c55: $ff
	adc  [hl]                                        ; $7c56: $8e
	nop                                              ; $7c57: $00
	add  d                                           ; $7c58: $82
	add  h                                           ; $7c59: $84
	add  b                                           ; $7c5a: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7c5b: $cf
	add  b                                           ; $7c5c: $80
	ld   c, b                                        ; $7c5d: $48
	add  b                                           ; $7c5e: $80

jr_02e_7c5f:
	ld   l, b                                        ; $7c5f: $68
	add  b                                           ; $7c60: $80
	jr   c, jr_02e_7be3                              ; $7c61: $38 $80

	inc  e                                           ; $7c63: $1c
	add  b                                           ; $7c64: $80
	rlca                                             ; $7c65: $07
	add  b                                           ; $7c66: $80
	ld   sp, $1180                                   ; $7c67: $31 $80 $11
	add  b                                           ; $7c6a: $80

jr_02e_7c6b:
	ei                                               ; $7c6b: $fb
	add  b                                           ; $7c6c: $80
	ld   a, [bc]                                     ; $7c6d: $0a
	add  b                                           ; $7c6e: $80
	ld   c, $80                                      ; $7c6f: $0e $80
	inc  c                                           ; $7c71: $0c
	add  b                                           ; $7c72: $80
	jr   c, @-$7e                                    ; $7c73: $38 $80

	ldh  [$82], a                                    ; $7c75: $e0 $82
	adc  b                                           ; $7c77: $88
	add  b                                           ; $7c78: $80
	ret  z                                           ; $7c79: $c8

	add  b                                           ; $7c7a: $80
	ld   c, b                                        ; $7c7b: $48
	add  b                                           ; $7c7c: $80
	ld   l, b                                        ; $7c7d: $68
	add  b                                           ; $7c7e: $80
	ccf                                              ; $7c7f: $3f
	add  b                                           ; $7c80: $80
	inc  e                                           ; $7c81: $1c
	add  b                                           ; $7c82: $80
	rlca                                             ; $7c83: $07
	add  b                                           ; $7c84: $80
	ld   sp, $0980                                   ; $7c85: $31 $80 $09
	add  b                                           ; $7c88: $80
	dec  bc                                          ; $7c89: $0b
	add  b                                           ; $7c8a: $80
	ld   a, [bc]                                     ; $7c8b: $0a
	add  b                                           ; $7c8c: $80
	ld   c, $80                                      ; $7c8d: $0e $80
	db   $fc                                         ; $7c8f: $fc
	add  b                                           ; $7c90: $80
	jr   c, jr_02e_7c13                              ; $7c91: $38 $80

	ldh  [$90], a                                    ; $7c93: $e0 $90
	nop                                              ; $7c95: $00
	add  d                                           ; $7c96: $82
	adc  b                                           ; $7c97: $88
	add  b                                           ; $7c98: $80
	rst  JumpTable                                         ; $7c99: $df
	add  b                                           ; $7c9a: $80
	ret  c                                           ; $7c9b: $d8

	add  b                                           ; $7c9c: $80
	xor  e                                           ; $7c9d: $ab
	add  b                                           ; $7c9e: $80
	xor  h                                           ; $7c9f: $ac
	add  b                                           ; $7ca0: $80
	xor  e                                           ; $7ca1: $ab
	add  b                                           ; $7ca2: $80
	nop                                              ; $7ca3: $00
	add  b                                           ; $7ca4: $80
	ld   bc, $0080                                   ; $7ca5: $01 $80 $00
	add  b                                           ; $7ca8: $80
	add  hl, hl                                      ; $7ca9: $29
	add  b                                           ; $7caa: $80
	or   c                                           ; $7cab: $b1
	add  h                                           ; $7cac: $84
	and  c                                           ; $7cad: $a1
	add  h                                           ; $7cae: $84
	nop                                              ; $7caf: $00
	add  b                                           ; $7cb0: $80
	jr   c, @-$7e                                    ; $7cb1: $38 $80

	inc  b                                           ; $7cb3: $04
	add  b                                           ; $7cb4: $80
	inc  e                                           ; $7cb5: $1c
	add  b                                           ; $7cb6: $80
	inc  h                                           ; $7cb7: $24
	add  b                                           ; $7cb8: $80
	inc  e                                           ; $7cb9: $1c
	add  b                                           ; $7cba: $80
	nop                                              ; $7cbb: $00
	add  d                                           ; $7cbc: $82
	sub  b                                           ; $7cbd: $90
	add  b                                           ; $7cbe: $80
	and  a                                           ; $7cbf: $a7
	add  b                                           ; $7cc0: $80
	ret  nz                                          ; $7cc1: $c0

	add  b                                           ; $7cc2: $80
	and  e                                           ; $7cc3: $a3
	add  b                                           ; $7cc4: $80
	sub  h                                           ; $7cc5: $94
	add  b                                           ; $7cc6: $80
	sub  e                                           ; $7cc7: $93
	add  h                                           ; $7cc8: $84
	nop                                              ; $7cc9: $00
	add  b                                           ; $7cca: $80
	add  hl, sp                                      ; $7ccb: $39
	add  [hl]                                        ; $7ccc: $86
	and  l                                           ; $7ccd: $a5
	add  h                                           ; $7cce: $84
	nop                                              ; $7ccf: $00
	add  b                                           ; $7cd0: $80
	adc  $80                                         ; $7cd1: $ce $80

jr_02e_7cd3:
	ld   hl, $2780                                   ; $7cd3: $21 $80 $27
	add  b                                           ; $7cd6: $80
	add  hl, hl                                      ; $7cd7: $29
	add  b                                           ; $7cd8: $80

jr_02e_7cd9:
	daa                                              ; $7cd9: $27
	add  b                                           ; $7cda: $80
	nop                                              ; $7cdb: $00
	add  b                                           ; $7cdc: $80
	jr   jr_02e_7c5f                                 ; $7cdd: $18 $80

	inc  h                                           ; $7cdf: $24
	add  b                                           ; $7ce0: $80
	ld   hl, $1880                                   ; $7ce1: $21 $80 $18
	add  b                                           ; $7ce4: $80
	inc  b                                           ; $7ce5: $04
	add  b                                           ; $7ce6: $80
	dec  h                                           ; $7ce7: $25
	add  b                                           ; $7ce8: $80

jr_02e_7ce9:
	jr   jr_02e_7c6b                                 ; $7ce9: $18 $80

	nop                                              ; $7ceb: $00
	add  d                                           ; $7cec: $82
	ld   [$c980], sp                                 ; $7ced: $08 $80 $c9
	add  b                                           ; $7cf0: $80
	ld   a, [hl+]                                    ; $7cf1: $2a
	add  b                                           ; $7cf2: $80
	xor  $80                                         ; $7cf3: $ee $80
	add  hl, hl                                      ; $7cf5: $29
	add  b                                           ; $7cf6: $80
	jp   hl                                          ; $7cf7: $e9


	add  h                                           ; $7cf8: $84
	nop                                              ; $7cf9: $00
	add  b                                           ; $7cfa: $80
	ld   c, d                                        ; $7cfb: $4a
	add  b                                           ; $7cfc: $80
	ld   c, e                                        ; $7cfd: $4b
	add  d                                           ; $7cfe: $82
	ld   c, d                                        ; $7cff: $4a
	add  b                                           ; $7d00: $80
	ld   [hl-], a                                    ; $7d01: $32
	add  h                                           ; $7d02: $84

jr_02e_7d03:
	nop                                              ; $7d03: $00
	add  b                                           ; $7d04: $80
	cp   b                                           ; $7d05: $b8
	add  b                                           ; $7d06: $80
	inc  b                                           ; $7d07: $04
	add  b                                           ; $7d08: $80
	inc  e                                           ; $7d09: $1c
	add  b                                           ; $7d0a: $80
	inc  h                                           ; $7d0b: $24
	add  b                                           ; $7d0c: $80
	inc  e                                           ; $7d0d: $1c
	add  b                                           ; $7d0e: $80
	nop                                              ; $7d0f: $00
	add  d                                           ; $7d10: $82
	sub  b                                           ; $7d11: $90
	add  b                                           ; $7d12: $80
	and  e                                           ; $7d13: $a3
	add  b                                           ; $7d14: $80
	call nz, $a480                                   ; $7d15: $c4 $80 $a4
	add  b                                           ; $7d18: $80
	sub  h                                           ; $7d19: $94
	add  b                                           ; $7d1a: $80
	sub  e                                           ; $7d1b: $93
	add  h                                           ; $7d1c: $84
	nop                                              ; $7d1d: $00
	add  b                                           ; $7d1e: $80
	dec  hl                                          ; $7d1f: $2b
	add  b                                           ; $7d20: $80
	or   b                                           ; $7d21: $b0
	add  b                                           ; $7d22: $80
	and  c                                           ; $7d23: $a1
	add  b                                           ; $7d24: $80
	and  d                                           ; $7d25: $a2
	add  b                                           ; $7d26: $80

jr_02e_7d27:
	ld   hl, $0084                                   ; $7d27: $21 $84 $00
	add  b                                           ; $7d2a: $80

jr_02e_7d2b:
	sbc  h                                           ; $7d2b: $9c
	add  b                                           ; $7d2c: $80
	ld   d, d                                        ; $7d2d: $52
	add  b                                           ; $7d2e: $80
	jp   nc, Jump_02e_5280                           ; $7d2f: $d2 $80 $52

	add  b                                           ; $7d32: $80
	jp   nc, $0080                                   ; $7d33: $d2 $80 $00

	add  d                                           ; $7d36: $82
	db   $10                                         ; $7d37: $10
	adc  b                                           ; $7d38: $88
	ld   de, $0080                                   ; $7d39: $11 $80 $00
	add  b                                           ; $7d3c: $80
	ld   [$0080], sp                                 ; $7d3d: $08 $80 $00
	add  b                                           ; $7d40: $80

jr_02e_7d41:
	ld   c, b                                        ; $7d41: $48
	add  b                                           ; $7d42: $80
	adc  c                                           ; $7d43: $89
	add  d                                           ; $7d44: $82
	ld   [$0980], sp                                 ; $7d45: $08 $80 $09
	add  h                                           ; $7d48: $84
	nop                                              ; $7d49: $00
	add  b                                           ; $7d4a: $80
	ldh  [$80], a                                    ; $7d4b: $e0 $80
	nop                                              ; $7d4d: $00
	add  b                                           ; $7d4e: $80
	ret  nz                                          ; $7d4f: $c0

	add  b                                           ; $7d50: $80
	jr   nz, jr_02e_7cd3                             ; $7d51: $20 $80

	ret  nz                                          ; $7d53: $c0

	add  b                                           ; $7d54: $80
	nop                                              ; $7d55: $00
	add  b                                           ; $7d56: $80
	jr   jr_02e_7cd9                                 ; $7d57: $18 $80

	inc  h                                           ; $7d59: $24
	add  b                                           ; $7d5a: $80
	ld   hl, $1980                                   ; $7d5b: $21 $80 $19
	add  b                                           ; $7d5e: $80
	dec  b                                           ; $7d5f: $05
	add  b                                           ; $7d60: $80
	dec  h                                           ; $7d61: $25
	add  b                                           ; $7d62: $80
	jr   jr_02e_7ce9                                 ; $7d63: $18 $84

	nop                                              ; $7d65: $00
	add  b                                           ; $7d66: $80
	dec  l                                           ; $7d67: $2d
	add  h                                           ; $7d68: $84
	ld   a, [hl+]                                    ; $7d69: $2a
	add  b                                           ; $7d6a: $80
	jp   z, $0080                                    ; $7d6b: $ca $80 $00

	add  b                                           ; $7d6e: $80
	db   $10                                         ; $7d6f: $10
	add  b                                           ; $7d70: $80

jr_02e_7d71:
	nop                                              ; $7d71: $00
	add  b                                           ; $7d72: $80
	ld   [de], a                                     ; $7d73: $12
	add  b                                           ; $7d74: $80

jr_02e_7d75:
	sub  e                                           ; $7d75: $93
	add  h                                           ; $7d76: $84
	sub  d                                           ; $7d77: $92
	add  h                                           ; $7d78: $84
	nop                                              ; $7d79: $00
	add  b                                           ; $7d7a: $80
	sbc  b                                           ; $7d7b: $98
	add  b                                           ; $7d7c: $80
	inc  h                                           ; $7d7d: $24
	add  b                                           ; $7d7e: $80
	inc  a                                           ; $7d7f: $3c
	add  b                                           ; $7d80: $80
	jr   nz, jr_02e_7d03                             ; $7d81: $20 $80

	inc  e                                           ; $7d83: $1c
	add  d                                           ; $7d84: $82
	add  hl, bc                                      ; $7d85: $09
	add  b                                           ; $7d86: $80
	rla                                              ; $7d87: $17
	add  b                                           ; $7d88: $80
	ld   sp, $1382                                   ; $7d89: $31 $82 $13
	add  b                                           ; $7d8c: $80
	dec  d                                           ; $7d8d: $15
	add  b                                           ; $7d8e: $80

jr_02e_7d8f:
	add  hl, de                                      ; $7d8f: $19
	add  b                                           ; $7d90: $80
	nop                                              ; $7d91: $00
	add  b                                           ; $7d92: $80
	inc  bc                                          ; $7d93: $03
	add  b                                           ; $7d94: $80
	ldh  [c], a                                      ; $7d95: $e2
	add  b                                           ; $7d96: $80
	inc  bc                                          ; $7d97: $03
	add  b                                           ; $7d98: $80
	add  d                                           ; $7d99: $82
	add  b                                           ; $7d9a: $80
	add  e                                           ; $7d9b: $83
	add  b                                           ; $7d9c: $80
	ld   b, b                                        ; $7d9d: $40
	add  b                                           ; $7d9e: $80
	ld   a, [hl+]                                    ; $7d9f: $2a
	add  b                                           ; $7da0: $80
	add  b                                           ; $7da1: $80
	add  b                                           ; $7da2: $80
	ldh  [$80], a                                    ; $7da3: $e0 $80
	jr   nz, jr_02e_7d27                             ; $7da5: $20 $80

	ldh  [$80], a                                    ; $7da7: $e0 $80
	jr   nz, jr_02e_7d2b                             ; $7da9: $20 $80

	ldh  [$80], a                                    ; $7dab: $e0 $80
	sub  b                                           ; $7dad: $90
	add  b                                           ; $7dae: $80
	ld   [$0080], sp                                 ; $7daf: $08 $80 $00
	add  b                                           ; $7db2: $80
	rlca                                             ; $7db3: $07
	add  b                                           ; $7db4: $80
	nop                                              ; $7db5: $00
	add  h                                           ; $7db6: $84
	ld   bc, $0280                                   ; $7db7: $01 $80 $02
	add  d                                           ; $7dba: $82
	nop                                              ; $7dbb: $00
	add  b                                           ; $7dbc: $80
	ldh  [$80], a                                    ; $7dbd: $e0 $80

jr_02e_7dbf:
	jr   nz, jr_02e_7d41                             ; $7dbf: $20 $80

	pop  bc                                          ; $7dc1: $c1
	add  b                                           ; $7dc2: $80
	ld   b, $86                                      ; $7dc3: $06 $86
	nop                                              ; $7dc5: $00
	add  b                                           ; $7dc6: $80

jr_02e_7dc7:
	ld   b, d                                        ; $7dc7: $42
	add  d                                           ; $7dc8: $82
	add  d                                           ; $7dc9: $82
	add  d                                           ; $7dca: $82

jr_02e_7dcb:
	add  b                                           ; $7dcb: $80
	add  b                                           ; $7dcc: $80
	add  e                                           ; $7dcd: $83
	add  d                                           ; $7dce: $82
	nop                                              ; $7dcf: $00
	add  b                                           ; $7dd0: $80

jr_02e_7dd1:
	ld   b, a                                        ; $7dd1: $47
	add  b                                           ; $7dd2: $80
	ld   b, b                                        ; $7dd3: $40
	add  d                                           ; $7dd4: $82
	ld   b, c                                        ; $7dd5: $41
	add  b                                           ; $7dd6: $80
	add  d                                           ; $7dd7: $82
	add  b                                           ; $7dd8: $80

jr_02e_7dd9:
	inc  b                                           ; $7dd9: $04
	add  d                                           ; $7dda: $82

jr_02e_7ddb:
	nop                                              ; $7ddb: $00
	add  d                                           ; $7ddc: $82
	add  b                                           ; $7ddd: $80
	add  b                                           ; $7dde: $80

jr_02e_7ddf:
	nop                                              ; $7ddf: $00
	add  b                                           ; $7de0: $80
	add  b                                           ; $7de1: $80
	add  d                                           ; $7de2: $82
	ld   b, b                                        ; $7de3: $40
	jp   nz, $8200                                   ; $7de4: $c2 $00 $82

	inc  h                                           ; $7de7: $24
	add  b                                           ; $7de8: $80
	ld   a, [hl]                                     ; $7de9: $7e
	add  d                                           ; $7dea: $82
	inc  h                                           ; $7deb: $24
	add  b                                           ; $7dec: $80
	inc  b                                           ; $7ded: $04
	add  b                                           ; $7dee: $80
	jr   jr_02e_7d71                                 ; $7def: $18 $80

	nop                                              ; $7df1: $00
	add  b                                           ; $7df2: $80
	jr   nz, jr_02e_7d75                             ; $7df3: $20 $80

	inc  a                                           ; $7df5: $3c
	add  b                                           ; $7df6: $80
	inc  h                                           ; $7df7: $24
	add  b                                           ; $7df8: $80
	ld   b, h                                        ; $7df9: $44
	add  b                                           ; $7dfa: $80
	inc  b                                           ; $7dfb: $04
	add  b                                           ; $7dfc: $80
	ld   [$3080], sp                                 ; $7dfd: $08 $80 $30
	add  b                                           ; $7e00: $80
	nop                                              ; $7e01: $00
	add  b                                           ; $7e02: $80
	inc  a                                           ; $7e03: $3c
	add  b                                           ; $7e04: $80
	nop                                              ; $7e05: $00
	add  b                                           ; $7e06: $80
	ld   a, [hl]                                     ; $7e07: $7e
	add  d                                           ; $7e08: $82
	ld   [bc], a                                     ; $7e09: $02
	add  b                                           ; $7e0a: $80
	inc  b                                           ; $7e0b: $04
	add  b                                           ; $7e0c: $80
	jr   jr_02e_7d8f                                 ; $7e0d: $18 $80

	nop                                              ; $7e0f: $00
	add  d                                           ; $7e10: $82
	db   $10                                         ; $7e11: $10
	add  b                                           ; $7e12: $80

jr_02e_7e13:
	ld   a, [hl]                                     ; $7e13: $7e
	add  d                                           ; $7e14: $82
	ld   [de], a                                     ; $7e15: $12
	add  b                                           ; $7e16: $80
	ld   [hl+], a                                    ; $7e17: $22
	add  b                                           ; $7e18: $80
	ld   c, h                                        ; $7e19: $4c
	add  d                                           ; $7e1a: $82
	nop                                              ; $7e1b: $00
	add  b                                           ; $7e1c: $80
	ld   b, b                                        ; $7e1d: $40
	add  b                                           ; $7e1e: $80
	ld   [hl+], a                                    ; $7e1f: $22
	add  b                                           ; $7e20: $80
	ld   [bc], a                                     ; $7e21: $02
	add  b                                           ; $7e22: $80
	inc  b                                           ; $7e23: $04
	add  b                                           ; $7e24: $80
	ld   [$7080], sp                                 ; $7e25: $08 $80 $70
	add  b                                           ; $7e28: $80
	nop                                              ; $7e29: $00
	add  d                                           ; $7e2a: $82
	ld   [$7e80], sp                                 ; $7e2b: $08 $80 $7e
	add  d                                           ; $7e2e: $82
	ld   [$1080], sp                                 ; $7e2f: $08 $80 $10
	add  b                                           ; $7e32: $80
	ld   h, b                                        ; $7e33: $60
	add  d                                           ; $7e34: $82
	nop                                              ; $7e35: $00
	add  b                                           ; $7e36: $80
	ld   a, b                                        ; $7e37: $78
	add  b                                           ; $7e38: $80
	ld   [$1080], sp                                 ; $7e39: $08 $80 $10
	add  b                                           ; $7e3c: $80

jr_02e_7e3d:
	jr   jr_02e_7dbf                                 ; $7e3d: $18 $80

	inc  h                                           ; $7e3f: $24
	add  b                                           ; $7e40: $80
	ld   b, h                                        ; $7e41: $44
	add  b                                           ; $7e42: $80
	nop                                              ; $7e43: $00
	add  b                                           ; $7e44: $80

jr_02e_7e45:
	jr   nc, jr_02e_7dc7                             ; $7e45: $30 $80

	inc  c                                           ; $7e47: $0c
	add  b                                           ; $7e48: $80
	jr   nc, jr_02e_7dcb                             ; $7e49: $30 $80

	inc  c                                           ; $7e4b: $0c
	add  b                                           ; $7e4c: $80
	nop                                              ; $7e4d: $00
	add  b                                           ; $7e4e: $80
	jr   nc, jr_02e_7dd1                             ; $7e4f: $30 $80

	inc  c                                           ; $7e51: $0c
	add  b                                           ; $7e52: $80
	nop                                              ; $7e53: $00
	add  h                                           ; $7e54: $84
	jr   nz, jr_02e_7dd9                             ; $7e55: $20 $82

	inc  h                                           ; $7e57: $24
	add  b                                           ; $7e58: $80
	jr   z, jr_02e_7ddb                              ; $7e59: $28 $80

	jr   nc, jr_02e_7ddf                             ; $7e5b: $30 $82

	nop                                              ; $7e5d: $00
	add  b                                           ; $7e5e: $80
	ld   a, [hl]                                     ; $7e5f: $7e
	add  b                                           ; $7e60: $80
	ld   [bc], a                                     ; $7e61: $02
	add  b                                           ; $7e62: $80
	ld   [hl+], a                                    ; $7e63: $22
	add  b                                           ; $7e64: $80
	inc  d                                           ; $7e65: $14
	add  d                                           ; $7e66: $82
	ld   [$0080], sp                                 ; $7e67: $08 $80 $00
	add  [hl]                                        ; $7e6a: $86
	inc  h                                           ; $7e6b: $24
	add  b                                           ; $7e6c: $80
	inc  b                                           ; $7e6d: $04
	add  b                                           ; $7e6e: $80
	ld   [$3080], sp                                 ; $7e6f: $08 $80 $30
	add  d                                           ; $7e72: $82
	nop                                              ; $7e73: $00
	add  b                                           ; $7e74: $80
	ld   a, [hl]                                     ; $7e75: $7e
	add  b                                           ; $7e76: $80
	ld   [bc], a                                     ; $7e77: $02
	add  b                                           ; $7e78: $80
	inc  e                                           ; $7e79: $1c
	add  d                                           ; $7e7a: $82
	db   $10                                         ; $7e7b: $10
	add  b                                           ; $7e7c: $80
	jr   nz, jr_02e_7e3d                             ; $7e7d: $20 $be

	nop                                              ; $7e7f: $00
	add  b                                           ; $7e80: $80
	ld   b, b                                        ; $7e81: $40
	add  b                                           ; $7e82: $80
	ld   h, b                                        ; $7e83: $60
	add  b                                           ; $7e84: $80
	ld   a, [hl]                                     ; $7e85: $7e
	add  b                                           ; $7e86: $80
	ld   d, h                                        ; $7e87: $54
	add  b                                           ; $7e88: $80
	or   h                                           ; $7e89: $b4
	add  b                                           ; $7e8a: $80
	db   $f4                                         ; $7e8b: $f4
	add  b                                           ; $7e8c: $80
	and  h                                           ; $7e8d: $a4
	add  b                                           ; $7e8e: $80
	ccf                                              ; $7e8f: $3f
	add  b                                           ; $7e90: $80
	jr   z, jr_02e_7e13                              ; $7e91: $28 $80

	rst  $38                                         ; $7e93: $ff
	adc  b                                           ; $7e94: $88
	ld   a, [hl]                                     ; $7e95: $7e
	add  b                                           ; $7e96: $80
	ld   d, d                                        ; $7e97: $52
	add  b                                           ; $7e98: $80
	nop                                              ; $7e99: $00
	add  b                                           ; $7e9a: $80
	ld   h, d                                        ; $7e9b: $62
	add  b                                           ; $7e9c: $80
	sub  d                                           ; $7e9d: $92
	add  b                                           ; $7e9e: $80
	add  a                                           ; $7e9f: $87
	add  b                                           ; $7ea0: $80
	ld   h, d                                        ; $7ea1: $62
	add  b                                           ; $7ea2: $80
	ld   [de], a                                     ; $7ea3: $12
	add  b                                           ; $7ea4: $80
	sub  d                                           ; $7ea5: $92
	add  b                                           ; $7ea6: $80
	ld   h, e                                        ; $7ea7: $63
	add  h                                           ; $7ea8: $84
	nop                                              ; $7ea9: $00
	add  b                                           ; $7eaa: $80
	cp   c                                           ; $7eab: $b9
	add  b                                           ; $7eac: $80
	dec  b                                           ; $7ead: $05
	add  b                                           ; $7eae: $80
	dec  e                                           ; $7eaf: $1d
	add  b                                           ; $7eb0: $80
	dec  h                                           ; $7eb1: $25
	add  b                                           ; $7eb2: $80
	dec  e                                           ; $7eb3: $1d
	add  b                                           ; $7eb4: $80
	nop                                              ; $7eb5: $00
	add  d                                           ; $7eb6: $82
	ld   [$5e80], sp                                 ; $7eb7: $08 $80 $5e
	add  b                                           ; $7eba: $80
	adc  b                                           ; $7ebb: $88
	add  d                                           ; $7ebc: $82
	ld   [$0c80], sp                                 ; $7ebd: $08 $80 $0c
	add  b                                           ; $7ec0: $80
	nop                                              ; $7ec1: $00
	add  b                                           ; $7ec2: $80
	jr   nc, jr_02e_7e45                             ; $7ec3: $30 $80

	ld   c, b                                        ; $7ec5: $48
	add  b                                           ; $7ec6: $80
	ld   b, c                                        ; $7ec7: $41
	add  b                                           ; $7ec8: $80
	ld   [hl-], a                                    ; $7ec9: $32
	add  b                                           ; $7eca: $80
	dec  bc                                          ; $7ecb: $0b
	add  b                                           ; $7ecc: $80
	ld   c, d                                        ; $7ecd: $4a
	add  b                                           ; $7ece: $80
	ld   sp, $0080                                   ; $7ecf: $31 $80 $00
	add  d                                           ; $7ed2: $82
	inc  b                                           ; $7ed3: $04
	add  b                                           ; $7ed4: $80
	add  h                                           ; $7ed5: $84
	add  b                                           ; $7ed6: $80
	ld   b, h                                        ; $7ed7: $44
	add  b                                           ; $7ed8: $80
	call nz, $0480                                   ; $7ed9: $c4 $80 $04
	add  b                                           ; $7edc: $80
	call nz, $0084                                   ; $7edd: $c4 $84 $00
	add  b                                           ; $7ee0: $80
	ld   h, e                                        ; $7ee1: $63
	add  b                                           ; $7ee2: $80
	sub  h                                           ; $7ee3: $94
	add  b                                           ; $7ee4: $80
	db   $f4                                         ; $7ee5: $f4
	add  b                                           ; $7ee6: $80
	add  h                                           ; $7ee7: $84
	add  b                                           ; $7ee8: $80
	ld   [hl], e                                     ; $7ee9: $73
	add  b                                           ; $7eea: $80

jr_02e_7eeb:
	nop                                              ; $7eeb: $00
	add  d                                           ; $7eec: $82
	db   $10                                         ; $7eed: $10
	add  b                                           ; $7eee: $80
	inc  a                                           ; $7eef: $3c
	add  b                                           ; $7ef0: $80
	sub  b                                           ; $7ef1: $90
	add  b                                           ; $7ef2: $80
	db   $10                                         ; $7ef3: $10
	add  b                                           ; $7ef4: $80
	sub  b                                           ; $7ef5: $90
	add  b                                           ; $7ef6: $80
	jr   jr_02e_7eeb                                 ; $7ef7: $18 $f2

	nop                                              ; $7ef9: $00
	add  b                                           ; $7efa: $80
	ld   [$ff80], sp                                 ; $7efb: $08 $80 $ff
	add  b                                           ; $7efe: $80
	ld   [hl+], a                                    ; $7eff: $22
	add  b                                           ; $7f00: $80
	rst  $38                                         ; $7f01: $ff
	add  b                                           ; $7f02: $80
	ld   [hl+], a                                    ; $7f03: $22
	add  b                                           ; $7f04: $80
	ld   a, $84                                      ; $7f05: $3e $84
	nop                                              ; $7f07: $00
	add  b                                           ; $7f08: $80
	add  b                                           ; $7f09: $80
	add  b                                           ; $7f0a: $80
	rra                                              ; $7f0b: $1f
	add  b                                           ; $7f0c: $80
	db   $10                                         ; $7f0d: $10
	add  b                                           ; $7f0e: $80
	inc  e                                           ; $7f0f: $1c
	add  b                                           ; $7f10: $80
	inc  d                                           ; $7f11: $14
	add  d                                           ; $7f12: $82
	nop                                              ; $7f13: $00
	add  b                                           ; $7f14: $80
	xor  a                                           ; $7f15: $af
	add  b                                           ; $7f16: $80
	add  b                                           ; $7f17: $80
	add  b                                           ; $7f18: $80
	db   $e3                                         ; $7f19: $e3
	add  b                                           ; $7f1a: $80
	adc  d                                           ; $7f1b: $8a
	add  b                                           ; $7f1c: $80
	xor  e                                           ; $7f1d: $ab
	add  b                                           ; $7f1e: $80
	xor  d                                           ; $7f1f: $aa
	add  d                                           ; $7f20: $82
	nop                                              ; $7f21: $00
	add  b                                           ; $7f22: $80
	ei                                               ; $7f23: $fb
	add  b                                           ; $7f24: $80
	add  b                                           ; $7f25: $80
	add  b                                           ; $7f26: $80
	db   $e3                                         ; $7f27: $e3
	add  b                                           ; $7f28: $80
	xor  d                                           ; $7f29: $aa
	add  b                                           ; $7f2a: $80
	ld   [$aa80], a                                  ; $7f2b: $ea $80 $aa
	add  d                                           ; $7f2e: $82
	nop                                              ; $7f2f: $00
	add  b                                           ; $7f30: $80
	cp   $80                                         ; $7f31: $fe $80
	ld   b, b                                        ; $7f33: $40
	add  b                                           ; $7f34: $80
	cp   $80                                         ; $7f35: $fe $80
	ld   d, d                                        ; $7f37: $52
	add  b                                           ; $7f38: $80
	ld   [hl], d                                     ; $7f39: $72
	add  b                                           ; $7f3a: $80
	ld   d, d                                        ; $7f3b: $52
	rst  $38                                         ; $7f3c: $ff
	nop                                              ; $7f3d: $00
	xor  l                                           ; $7f3e: $ad
	nop                                              ; $7f3f: $00
	add  b                                           ; $7f40: $80
	ld   a, $80                                      ; $7f41: $3e $80
	ld   [hl+], a                                    ; $7f43: $22
	add  b                                           ; $7f44: $80
	ld   h, $88                                      ; $7f45: $26 $88
	nop                                              ; $7f47: $00
	add  b                                           ; $7f48: $80
	inc  d                                           ; $7f49: $14
	add  b                                           ; $7f4a: $80
	dec  l                                           ; $7f4b: $2d
	add  b                                           ; $7f4c: $80
	ld   [hl+], a                                    ; $7f4d: $22
	adc  b                                           ; $7f4e: $88
	nop                                              ; $7f4f: $00
	add  b                                           ; $7f50: $80
	res  0, b                                        ; $7f51: $cb $80
	xor  b                                           ; $7f53: $a8
	add  b                                           ; $7f54: $80
	ld   l, a                                        ; $7f55: $6f
	adc  b                                           ; $7f56: $88
	nop                                              ; $7f57: $00
	add  b                                           ; $7f58: $80
	ld   [$0a80], a                                  ; $7f59: $ea $80 $0a
	add  b                                           ; $7f5c: $80
	ei                                               ; $7f5d: $fb
	adc  b                                           ; $7f5e: $88
	nop                                              ; $7f5f: $00
	add  b                                           ; $7f60: $80
	ld   [hl], d                                     ; $7f61: $72
	add  b                                           ; $7f62: $80
	ld   d, d                                        ; $7f63: $52
	add  b                                           ; $7f64: $80
	cp   $ff                                         ; $7f65: $fe $ff
	nop                                              ; $7f67: $00
	or   a                                           ; $7f68: $b7
	nop                                              ; $7f69: $00
	nop                                              ; $7f6a: $00
	nop                                              ; $7f6b: $00
	nop                                              ; $7f6c: $00
	nop                                              ; $7f6d: $00
	nop                                              ; $7f6e: $00
	nop                                              ; $7f6f: $00
	nop                                              ; $7f70: $00
	nop                                              ; $7f71: $00
	nop                                              ; $7f72: $00
	nop                                              ; $7f73: $00
	nop                                              ; $7f74: $00
	nop                                              ; $7f75: $00
	nop                                              ; $7f76: $00
	nop                                              ; $7f77: $00
	nop                                              ; $7f78: $00
	nop                                              ; $7f79: $00
	reti                                             ; $7f7a: $d9


	ld   h, a                                        ; $7f7b: $67
	ld   hl, sp+$5e                                  ; $7f7c: $f8 $5e
	ld   d, e                                        ; $7f7e: $53
	ld   c, [hl]                                     ; $7f7f: $4e
	or   b                                           ; $7f80: $b0
	dec  a                                           ; $7f81: $3d
	reti                                             ; $7f82: $d9


	ld   h, a                                        ; $7f83: $67
	sbc  a                                           ; $7f84: $9f
	ccf                                              ; $7f85: $3f
	ccf                                              ; $7f86: $3f
	ld   a, [hl-]                                    ; $7f87: $3a
	or   b                                           ; $7f88: $b0
	dec  a                                           ; $7f89: $3d
	ccf                                              ; $7f8a: $3f
	ld   a, [hl-]                                    ; $7f8b: $3a
	ld   d, e                                        ; $7f8c: $53
	ld   c, [hl]                                     ; $7f8d: $4e
	or   b                                           ; $7f8e: $b0
	dec  a                                           ; $7f8f: $3d
	rrca                                             ; $7f90: $0f
	dec  sp                                          ; $7f91: $3b
	rst  $38                                         ; $7f92: $ff
	ld   a, a                                        ; $7f93: $7f
	rst  $38                                         ; $7f94: $ff
	inc  bc                                          ; $7f95: $03
	ld   a, c                                        ; $7f96: $79
	nop                                              ; $7f97: $00
	nop                                              ; $7f98: $00
	nop                                              ; $7f99: $00
	inc  de                                          ; $7f9a: $13
	ld   a, a                                        ; $7f9b: $7f
	xor  h                                           ; $7f9c: $ac
	ld   c, l                                        ; $7f9d: $4d
	ld   h, d                                        ; $7f9e: $62
	inc  d                                           ; $7f9f: $14
	rst  $38                                         ; $7fa0: $ff
	ld   a, a                                        ; $7fa1: $7f
	inc  de                                          ; $7fa2: $13
	ld   a, a                                        ; $7fa3: $7f
	ldh  [$03], a                                    ; $7fa4: $e0 $03
	rra                                              ; $7fa6: $1f
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	nop                                              ; $7fa9: $00
	rst  $38                                         ; $7faa: $ff
	ld   e, a                                        ; $7fab: $5f
	ldh  [$03], a                                    ; $7fac: $e0 $03
	ld   [$8310], sp                                 ; $7fae: $08 $10 $83
	inc  d                                           ; $7fb1: $14
	ld   e, a                                        ; $7fb2: $5f
	ld   l, e                                        ; $7fb3: $6b
	ld   a, b                                        ; $7fb4: $78
	nop                                              ; $7fb5: $00
	ld   b, $0c                                      ; $7fb6: $06 $0c
	sbc  a                                           ; $7fb8: $9f
	ld   [hl], $f7                                   ; $7fb9: $36 $f7
	ld   a, a                                        ; $7fbb: $7f
	rst  $38                                         ; $7fbc: $ff
	ld   a, a                                        ; $7fbd: $7f
	sbc  a                                           ; $7fbe: $9f
	ld   [hl], $83                                   ; $7fbf: $36 $83
	inc  d                                           ; $7fc1: $14
	xor  l                                           ; $7fc2: $ad
	ld   e, e                                        ; $7fc3: $5b
	rst  $38                                         ; $7fc4: $ff
	ld   a, a                                        ; $7fc5: $7f
	db   $dd                                         ; $7fc6: $dd
	ld   e, $62                                      ; $7fc7: $1e $62
	inc  e                                           ; $7fc9: $1c
	cp   c                                           ; $7fca: $b9
	halt                                             ; $7fcb: $76
	ld   e, a                                        ; $7fcc: $5f
	jr   jr_02e_7fef                                 ; $7fcd: $18 $20

	ld   [hl], d                                     ; $7fcf: $72
	ld   h, d                                        ; $7fd0: $62
	ld   h, c                                        ; $7fd1: $61
	reti                                             ; $7fd2: $d9


	ld   c, d                                        ; $7fd3: $4a
	ld   [hl], e                                     ; $7fd4: $73
	ld   c, [hl]                                     ; $7fd5: $4e
	ld   l, e                                        ; $7fd6: $6b
	dec  l                                           ; $7fd7: $2d
	nop                                              ; $7fd8: $00
	nop                                              ; $7fd9: $00
	nop                                              ; $7fda: $00
	nop                                              ; $7fdb: $00
	ldh  [$03], a                                    ; $7fdc: $e0 $03
	rst  $38                                         ; $7fde: $ff
	inc  bc                                          ; $7fdf: $03
	rra                                              ; $7fe0: $1f
	nop                                              ; $7fe1: $00
	ldh  [$03], a                                    ; $7fe2: $e0 $03
	rst  $38                                         ; $7fe4: $ff
	ld   a, a                                        ; $7fe5: $7f
	db   $ec                                         ; $7fe6: $ec
	ld   h, c                                        ; $7fe7: $61
	nop                                              ; $7fe8: $00
	nop                                              ; $7fe9: $00
	ld   [$ff00], sp                                 ; $7fea: $08 $00 $ff
	nop                                              ; $7fed: $00
	rst  $38                                         ; $7fee: $ff

jr_02e_7fef:
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00
	rst  $30                                         ; $7ffa: $f7
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
