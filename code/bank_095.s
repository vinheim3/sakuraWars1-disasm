; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $095", ROMX[$4000], BANK[$95]

	db   $dd                                         ; $4000: $dd
	ld   bc, $0086                                   ; $4001: $01 $86 $00
	add  d                                           ; $4004: $82
	rrca                                             ; $4005: $0f
	inc  b                                           ; $4006: $04
	rlca                                             ; $4007: $07
	rrca                                             ; $4008: $0f
	ld   bc, $060f                                   ; $4009: $01 $0f $06
	add  l                                           ; $400c: $85
	nop                                              ; $400d: $00
	ld   [$ff03], sp                                 ; $400e: $08 $03 $ff
	inc  a                                           ; $4011: $3c
	rst  $38                                         ; $4012: $ff
	rst  ToBoot                                         ; $4013: $c7
	rst  $38                                         ; $4014: $ff
	ld   sp, hl                                      ; $4015: $f9
	rst  $38                                         ; $4016: $ff
	ld   bc, $0085                                   ; $4017: $01 $85 $00
	ld   [$ffd3], sp                                 ; $401a: $08 $d3 $ff
	sbc  h                                           ; $401d: $9c
	rst  $38                                         ; $401e: $ff
	ld   h, d                                        ; $401f: $62
	cp   $d2                                         ; $4020: $fe $d2
	cp   $ff                                         ; $4022: $fe $ff
	add  c                                           ; $4024: $81
	nop                                              ; $4025: $00
	dec  b                                           ; $4026: $05
	rlca                                             ; $4027: $07
	nop                                              ; $4028: $00
	rra                                              ; $4029: $1f
	rlca                                             ; $402a: $07
	ld   a, a                                        ; $402b: $7f
	sbc  a                                           ; $402c: $9f
	add  b                                           ; $402d: $80
	ld   a, a                                        ; $402e: $7f
	add  c                                           ; $402f: $81
	rst  $38                                         ; $4030: $ff
	ld   [$bcbf], sp                                 ; $4031: $08 $bf $bc
	nop                                              ; $4034: $00
	inc  b                                           ; $4035: $04
	nop                                              ; $4036: $00
	ret  z                                           ; $4037: $c8

	nop                                              ; $4038: $00
	pop  af                                          ; $4039: $f1
	pop  bc                                          ; $403a: $c1
	add  d                                           ; $403b: $82
	ldh  [$80], a                                    ; $403c: $e0 $80
	ldh  a, [$03]                                    ; $403e: $f0 $03
	pop  hl                                          ; $4040: $e1
	ldh  [$7e], a                                    ; $4041: $e0 $7e

Jump_095_4043:
	ld   a, a                                        ; $4043: $7f
	add  h                                           ; $4044: $84
	rst  $38                                         ; $4045: $ff
	add  b                                           ; $4046: $80
	ld   a, a                                        ; $4047: $7f
	add  b                                           ; $4048: $80
	rst  $38                                         ; $4049: $ff
	add  b                                           ; $404a: $80
	nop                                              ; $404b: $00
	nop                                              ; $404c: $00
	rst  $38                                         ; $404d: $ff
	add  b                                           ; $404e: $80
	nop                                              ; $404f: $00
	add  b                                           ; $4050: $80
	db   $fd                                         ; $4051: $fd
	add  b                                           ; $4052: $80
	cp   $81                                         ; $4053: $fe $81
	rst  $38                                         ; $4055: $ff
	jr   jr_095_40d7                                 ; $4056: $18 $7f

	ld   a, [hl]                                     ; $4058: $7e
	sbc  [hl]                                        ; $4059: $9e
	adc  a                                           ; $405a: $8f
	rst  JumpTable                                         ; $405b: $df
	push bc                                          ; $405c: $c5
	dec  c                                           ; $405d: $0d
	ld   [bc], a                                     ; $405e: $02
	cp   d                                           ; $405f: $ba
	add  b                                           ; $4060: $80
	ldh  a, [rLCDC]                                  ; $4061: $f0 $40
	ld   a, b                                        ; $4063: $78
	sub  b                                           ; $4064: $90
	sbc  h                                           ; $4065: $9c
	add  sp, -$17                                    ; $4066: $e8 $e9
	db   $d3                                         ; $4068: $d3
	push de                                          ; $4069: $d5
	ld   d, l                                        ; $406a: $55
	ld   d, h                                        ; $406b: $54
	sbc  c                                           ; $406c: $99
	sbc  d                                           ; $406d: $9a
	cp   d                                           ; $406e: $ba
	cp   e                                           ; $406f: $bb
	add  l                                           ; $4070: $85
	nop                                              ; $4071: $00
	ld   [$ff1e], sp                                 ; $4072: $08 $1e $ff
	db   $eb                                         ; $4075: $eb
	rst  $38                                         ; $4076: $ff
	ld   [hl], b                                     ; $4077: $70
	rst  $38                                         ; $4078: $ff
	db   $fd                                         ; $4079: $fd
	rst  $38                                         ; $407a: $ff
	ld   a, b                                        ; $407b: $78
	add  l                                           ; $407c: $85
	nop                                              ; $407d: $00
	ld   [bc], a                                     ; $407e: $02
	ld   bc, $feff                                   ; $407f: $01 $ff $fe
	add  h                                           ; $4082: $84
	rst  $38                                         ; $4083: $ff
	add  l                                           ; $4084: $85
	nop                                              ; $4085: $00
	ld   [bc], a                                     ; $4086: $02
	rra                                              ; $4087: $1f
	rst  $38                                         ; $4088: $ff
	ld   a, a                                        ; $4089: $7f
	add  e                                           ; $408a: $83
	rst  $38                                         ; $408b: $ff
	nop                                              ; $408c: $00
	ld   h, b                                        ; $408d: $60
	add  l                                           ; $408e: $85
	nop                                              ; $408f: $00
	ld   [bc], a                                     ; $4090: $02
	call nc, $feff                                   ; $4091: $d4 $ff $fe
	add  c                                           ; $4094: $81
	rst  $38                                         ; $4095: $ff
	ld   [bc], a                                     ; $4096: $02
	rst  $30                                         ; $4097: $f7
	rst  $38                                         ; $4098: $ff
	ld   [hl+], a                                    ; $4099: $22
	add  l                                           ; $409a: $85
	nop                                              ; $409b: $00
	ld   [$ff91], sp                                 ; $409c: $08 $91 $ff
	ld   a, h                                        ; $409f: $7c
	rst  $38                                         ; $40a0: $ff
	rst  JumpTable                                         ; $40a1: $df
	rst  $38                                         ; $40a2: $ff
	rst  $28                                         ; $40a3: $ef
	rst  $38                                         ; $40a4: $ff
	db   $dd                                         ; $40a5: $dd
	add  l                                           ; $40a6: $85
	nop                                              ; $40a7: $00
	ld   [$ff46], sp                                 ; $40a8: $08 $46 $ff
	db   $fc                                         ; $40ab: $fc
	rst  $38                                         ; $40ac: $ff
	dec  [hl]                                        ; $40ad: $35
	rst  $38                                         ; $40ae: $ff
	ei                                               ; $40af: $fb
	rst  $38                                         ; $40b0: $ff
	ld   [hl], h                                     ; $40b1: $74
	add  l                                           ; $40b2: $85
	nop                                              ; $40b3: $00
	ld   [$ff80], sp                                 ; $40b4: $08 $80 $ff
	cp   $ff                                         ; $40b7: $fe $ff
	ld   a, a                                        ; $40b9: $7f
	rst  $38                                         ; $40ba: $ff
	db   $fc                                         ; $40bb: $fc
	rst  $38                                         ; $40bc: $ff
	db   $fd                                         ; $40bd: $fd
	add  l                                           ; $40be: $85
	nop                                              ; $40bf: $00
	add  hl, de                                      ; $40c0: $19
	pop  de                                          ; $40c1: $d1
	rst  $38                                         ; $40c2: $ff
	adc  l                                           ; $40c3: $8d
	rst  $38                                         ; $40c4: $ff
	dec  de                                          ; $40c5: $1b
	rst  $38                                         ; $40c6: $ff
	scf                                              ; $40c7: $37
	rst  $38                                         ; $40c8: $ff
	ld   [hl], a                                     ; $40c9: $77
	rrca                                             ; $40ca: $0f
	inc  b                                           ; $40cb: $04
	rrca                                             ; $40cc: $0f
	nop                                              ; $40cd: $00
	rrca                                             ; $40ce: $0f
	inc  c                                           ; $40cf: $0c
	rrca                                             ; $40d0: $0f
	ld   bc, $000f                                   ; $40d1: $01 $0f $00
	rrca                                             ; $40d4: $0f
	ld   c, $0f                                      ; $40d5: $0e $0f

jr_095_40d7:
	inc  bc                                          ; $40d7: $03
	rrca                                             ; $40d8: $0f
	adc  e                                           ; $40d9: $8b
	adc  b                                           ; $40da: $88
	add  b                                           ; $40db: $80
	nop                                              ; $40dc: $00
	add  b                                           ; $40dd: $80
	ld   h, b                                        ; $40de: $60
	add  b                                           ; $40df: $80
	adc  b                                           ; $40e0: $88
	add  b                                           ; $40e1: $80
	pop  af                                          ; $40e2: $f1
	add  b                                           ; $40e3: $80
	ld   a, $80                                      ; $40e4: $3e $80
	jp   $fc80                                       ; $40e6: $c3 $80 $fc


	ld   bc, $3c3f                                   ; $40e9: $01 $3f $3c
	add  b                                           ; $40ec: $80
	nop                                              ; $40ed: $00
	ld   bc, $0105                                   ; $40ee: $01 $05 $01
	add  b                                           ; $40f1: $80
	inc  bc                                          ; $40f2: $03
	add  b                                           ; $40f3: $80
	dec  de                                          ; $40f4: $1b

jr_095_40f5:
	ld   bc, $070f                                   ; $40f5: $01 $0f $07
	add  b                                           ; $40f8: $80
	rst  ToBoot                                         ; $40f9: $c7
	ld   [bc], a                                     ; $40fa: $02
	ccf                                              ; $40fb: $3f
	cpl                                              ; $40fc: $2f
	rra                                              ; $40fd: $1f
	add  b                                           ; $40fe: $80
	ld   l, a                                        ; $40ff: $6f
	inc  c                                           ; $4100: $0c
	sbc  a                                           ; $4101: $9f
	sbc  h                                           ; $4102: $9c
	xor  h                                           ; $4103: $ac
	adc  e                                           ; $4104: $8b
	ld   e, b                                        ; $4105: $58
	ld   d, h                                        ; $4106: $54
	ld   d, b                                        ; $4107: $50
	nop                                              ; $4108: $00
	add  b                                           ; $4109: $80
	adc  b                                           ; $410a: $88
	add  b                                           ; $410b: $80
	stop                                             ; $410c: $10 $00
	add  b                                           ; $410e: $80
	add  b                                           ; $410f: $80
	ld   [bc], a                                     ; $4110: $02
	ld   h, b                                        ; $4111: $60
	nop                                              ; $4112: $00
	add  b                                           ; $4113: $80
	add  c                                           ; $4114: $81
	nop                                              ; $4115: $00
	ld   [$0001], sp                                 ; $4116: $08 $01 $00
	rrca                                             ; $4119: $0f
	ld   bc, $0d3d                                   ; $411a: $01 $3d $0d
	db   $fc                                         ; $411d: $fc
	inc  a                                           ; $411e: $3c
	rst  $38                                         ; $411f: $ff
	add  l                                           ; $4120: $85
	nop                                              ; $4121: $00
	ld   bc, $00ff                                   ; $4122: $01 $ff $00
	add  b                                           ; $4125: $80
	ld   [hl], a                                     ; $4126: $77
	add  b                                           ; $4127: $80
	cp   e                                           ; $4128: $bb
	inc  b                                           ; $4129: $04
	adc  l                                           ; $412a: $8d
	adc  c                                           ; $412b: $89
	rst  $30                                         ; $412c: $f7
	nop                                              ; $412d: $00
	ld   c, $81                                      ; $412e: $0e $81
	nop                                              ; $4130: $00
	dec  b                                           ; $4131: $05
	inc  bc                                          ; $4132: $03
	nop                                              ; $4133: $00
	ret  nz                                          ; $4134: $c0

	nop                                              ; $4135: $00
	ld   a, [hl]                                     ; $4136: $7e
	ld   b, b                                        ; $4137: $40
	add  b                                           ; $4138: $80
	sbc  [hl]                                        ; $4139: $9e
	ld   [$a3e3], sp                                 ; $413a: $08 $e3 $a3
	cp   d                                           ; $413d: $ba
	jr   c, jr_095_417f                              ; $413e: $38 $3f

	cp   l                                           ; $4140: $bd
	cp   [hl]                                        ; $4141: $be
	cp   $ff                                         ; $4142: $fe $ff
	add  c                                           ; $4144: $81
	ld   a, a                                        ; $4145: $7f
	nop                                              ; $4146: $00
	rst  $38                                         ; $4147: $ff
	add  c                                           ; $4148: $81
	ld   a, a                                        ; $4149: $7f
	add  b                                           ; $414a: $80
	ld   a, e                                        ; $414b: $7b
	inc  bc                                          ; $414c: $03
	ld   b, d                                        ; $414d: $42
	cp   l                                           ; $414e: $bd
	cp   [hl]                                        ; $414f: $be
	ld   a, $80                                      ; $4150: $3e $80
	ld   e, h                                        ; $4152: $5c
	rlca                                             ; $4153: $07
	ld   a, [hl]                                     ; $4154: $7e
	ld   a, $be                                      ; $4155: $3e $be
	sbc  [hl]                                        ; $4157: $9e
	rst  $38                                         ; $4158: $ff
	rst  $20                                         ; $4159: $e7
	rst  $38                                         ; $415a: $ff
	ld   hl, sp-$80                                  ; $415b: $f8 $80
	rst  $38                                         ; $415d: $ff
	ld   bc, $7f80                                   ; $415e: $01 $80 $7f
	add  b                                           ; $4161: $80
	cp   a                                           ; $4162: $bf
	add  b                                           ; $4163: $80
	ccf                                              ; $4164: $3f
	add  b                                           ; $4165: $80
	ld   e, a                                        ; $4166: $5f
	add  b                                           ; $4167: $80
	sbc  a                                           ; $4168: $9f
	add  b                                           ; $4169: $80
	ld   c, $80                                      ; $416a: $0e $80
	sub  [hl]                                        ; $416c: $96
	inc  bc                                          ; $416d: $03
	rst  $20                                         ; $416e: $e7
	rlca                                             ; $416f: $07
	ret  nc                                          ; $4170: $d0

	jr   nc, jr_095_40f5                             ; $4171: $30 $82

	or   b                                           ; $4173: $b0
	add  b                                           ; $4174: $80
	sub  b                                           ; $4175: $90
	add  b                                           ; $4176: $80
	ret  nc                                          ; $4177: $d0

	add  d                                           ; $4178: $82
	ret  z                                           ; $4179: $c8

	add  b                                           ; $417a: $80
	ld   l, b                                        ; $417b: $68
	adc  b                                           ; $417c: $88
	ld   [hl+], a                                    ; $417d: $22
	add  b                                           ; $417e: $80

jr_095_417f:
	ld   hl, $0182                                   ; $417f: $21 $82 $01
	add  b                                           ; $4182: $80
	db   $db                                         ; $4183: $db
	add  d                                           ; $4184: $82
	jp   c, $9580                                    ; $4185: $da $80 $95

	add  b                                           ; $4188: $80
	or   l                                           ; $4189: $b5
	add  b                                           ; $418a: $80
	or   e                                           ; $418b: $b3
	add  b                                           ; $418c: $80
	dec  hl                                          ; $418d: $2b
	add  b                                           ; $418e: $80
	inc  hl                                          ; $418f: $23
	add  b                                           ; $4190: $80
	ld   l, c                                        ; $4191: $69
	add  b                                           ; $4192: $80
	db   $eb                                         ; $4193: $eb
	add  b                                           ; $4194: $80
	db   $d3                                         ; $4195: $d3
	add  b                                           ; $4196: $80
	rst  ToBoot                                         ; $4197: $c7

jr_095_4198:
	add  b                                           ; $4198: $80
	and  a                                           ; $4199: $a7
	add  b                                           ; $419a: $80
	adc  a                                           ; $419b: $8f
	add  b                                           ; $419c: $80
	ld   e, a                                        ; $419d: $5f
	add  b                                           ; $419e: $80
	ld   e, $80                                      ; $419f: $1e $80
	ld   a, [$f480]                                  ; $41a1: $fa $80 $f4
	add  b                                           ; $41a4: $80
	jp   hl                                          ; $41a5: $e9


	add  b                                           ; $41a6: $80
	jp   $c680                                       ; $41a7: $c3 $80 $c6


	add  b                                           ; $41aa: $80
	adc  h                                           ; $41ab: $8c
	add  b                                           ; $41ac: $80
	jr   @-$7e                                       ; $41ad: $18 $80

	ld   sp, $e180                                   ; $41af: $31 $80 $e1
	add  b                                           ; $41b2: $80
	jp   nz, $8d80                                   ; $41b3: $c2 $80 $8d

	add  b                                           ; $41b6: $80
	ld   d, e                                        ; $41b7: $53
	add  b                                           ; $41b8: $80
	ld   l, $80                                      ; $41b9: $2e $80
	ld   e, b                                        ; $41bb: $58
	add  b                                           ; $41bc: $80
	or   b                                           ; $41bd: $b0
	add  b                                           ; $41be: $80
	ld   h, b                                        ; $41bf: $60
	ld   [bc], a                                     ; $41c0: $02
	inc  bc                                          ; $41c1: $03
	rrca                                             ; $41c2: $0f

Jump_095_41c3:
	inc  c                                           ; $41c3: $0c
	adc  c                                           ; $41c4: $89
	rrca                                             ; $41c5: $0f
	inc  bc                                          ; $41c6: $03
	rlca                                             ; $41c7: $07
	rrca                                             ; $41c8: $0f
	jr   c, jr_095_420a                              ; $41c9: $38 $3f

	add  b                                           ; $41cb: $80
	jp   $fc80                                       ; $41cc: $c3 $80 $fc


	add  b                                           ; $41cf: $80
	rst  $38                                         ; $41d0: $ff
	add  b                                           ; $41d1: $80
	db   $fc                                         ; $41d2: $fc
	add  h                                           ; $41d3: $84
	rst  $38                                         ; $41d4: $ff
	ld   bc, $8798                                   ; $41d5: $01 $98 $87
	add  b                                           ; $41d8: $80
	db   $e3                                         ; $41d9: $e3
	ld   bc, $3121                                   ; $41da: $01 $21 $31
	add  b                                           ; $41dd: $80
	add  b                                           ; $41de: $80
	add  b                                           ; $41df: $80
	ld   [hl], b                                     ; $41e0: $70
	ld   bc, $8880                                   ; $41e1: $01 $80 $88
	add  b                                           ; $41e4: $80
	ldh  [$80], a                                    ; $41e5: $e0 $80
	ld   hl, sp+$11                                  ; $41e7: $f8 $11
	and  $00                                         ; $41e9: $e6 $00
	inc  hl                                          ; $41eb: $23
	ld   bc, $0307                                   ; $41ec: $01 $07 $03
	ld   c, a                                        ; $41ef: $4f
	rlca                                             ; $41f0: $07
	rra                                              ; $41f1: $1f
	rrca                                             ; $41f2: $0f
	ccf                                              ; $41f3: $3f
	rra                                              ; $41f4: $1f
	ld   [hl], a                                     ; $41f5: $77
	dec  h                                           ; $41f6: $25
	ld   a, a                                        ; $41f7: $7f
	ld   c, c                                        ; $41f8: $49
	ret  z                                           ; $41f9: $c8

	db   $ec                                         ; $41fa: $ec
	add  b                                           ; $41fb: $80
	ret  c                                           ; $41fc: $d8

	add  b                                           ; $41fd: $80
	reti                                             ; $41fe: $d9


	nop                                              ; $41ff: $00
	or   h                                           ; $4200: $b4
	add  b                                           ; $4201: $80

jr_095_4202:
	or   l                                           ; $4202: $b5
	ld   de, $8995                                   ; $4203: $11 $95 $89

jr_095_4206:
	adc  e                                           ; $4206: $8b
	ld   c, d                                        ; $4207: $4a
	ld   a, [hl+]                                    ; $4208: $2a
	ld   [hl+], a                                    ; $4209: $22

jr_095_420a:
	ld   h, $81                                      ; $420a: $26 $81
	sub  h                                           ; $420c: $94
	ld   sp, $484a                                   ; $420d: $31 $4a $48
	ld   c, l                                        ; $4210: $4d
	ld   b, h                                        ; $4211: $44
	ld   b, [hl]                                     ; $4212: $46
	ld   [bc], a                                     ; $4213: $02
	ld   [hl+], a                                    ; $4214: $22
	jr   nz, jr_095_4198                             ; $4215: $20 $81

	ld   hl, sGlobalFlags1                                   ; $4217: $21 $80 $a0
	dec  bc                                          ; $421a: $0b
	ld   a, [hl]                                     ; $421b: $7e
	ld   d, c                                        ; $421c: $51
	jr   jr_095_4257                                 ; $421d: $18 $38

	inc  e                                           ; $421f: $1c

jr_095_4220:
	ld   e, h                                        ; $4220: $5c
	call z, $86ac                                    ; $4221: $cc $ac $86
	sub  [hl]                                        ; $4224: $96
	ld   [de], a                                     ; $4225: $12
	ld   a, [de]                                     ; $4226: $1a
	add  b                                           ; $4227: $80
	ld   [$1803], sp                                 ; $4228: $08 $03 $18
	sub  b                                           ; $422b: $90
	dec  c                                           ; $422c: $0d
	cp   l                                           ; $422d: $bd
	add  b                                           ; $422e: $80
	ld   a, $80                                      ; $422f: $3e $80
	ccf                                              ; $4231: $3f
	add  d                                           ; $4232: $82
	rra                                              ; $4233: $1f
	ld   b, $8f                                      ; $4234: $06 $8f
	adc  l                                           ; $4236: $8d
	add  hl, bc                                      ; $4237: $09
	adc  d                                           ; $4238: $8a
	add  h                                           ; $4239: $84
	push bc                                          ; $423a: $c5
	ccf                                              ; $423b: $3f
	add  b                                           ; $423c: $80
	jp   hl                                          ; $423d: $e9


	db   $10                                         ; $423e: $10
	di                                               ; $423f: $f3
	ld   h, e                                        ; $4240: $63
	ld   c, h                                        ; $4241: $4c
	sub  b                                           ; $4242: $90
	and  e                                           ; $4243: $a3
	reti                                             ; $4244: $d9


	ret                                              ; $4245: $c9


	db   $e4                                         ; $4246: $e4
	call nz, $e0d0                                   ; $4247: $c4 $d0 $e0
	add  sp, $10                                     ; $424a: $e8 $10
	inc  c                                           ; $424c: $0c
	db   $e3                                         ; $424d: $e3
	rst  $38                                         ; $424e: $ff
	ld   hl, sp-$80                                  ; $424f: $f8 $80
	rst  $38                                         ; $4251: $ff
	add  b                                           ; $4252: $80
	ld   a, h                                        ; $4253: $7c
	add  b                                           ; $4254: $80
	sbc  a                                           ; $4255: $9f
	add  b                                           ; $4256: $80

jr_095_4257:
	ld   b, e                                        ; $4257: $43
	add  b                                           ; $4258: $80
	jr   nc, @-$7e                                   ; $4259: $30 $80

	nop                                              ; $425b: $00
	ld   de, $609f                                   ; $425c: $11 $9f $60
	inc  h                                           ; $425f: $24
	and  h                                           ; $4260: $a4
	ld   [hl], h                                     ; $4261: $74
	inc  [hl]                                        ; $4262: $34
	ldh  a, [$d0]                                    ; $4263: $f0 $d0
	ld   [hl-], a                                    ; $4265: $32
	ld   [hl+], a                                    ; $4266: $22
	ldh  [$c0], a                                    ; $4267: $e0 $c0
	ld   hl, sp-$30                                  ; $4269: $f8 $d0
	ld   d, b                                        ; $426b: $50
	ld   b, b                                        ; $426c: $40
	jp   hl                                          ; $426d: $e9


	ld   bc, $008c                                   ; $426e: $01 $8c $00
	add  b                                           ; $4271: $80
	ld   h, [hl]                                     ; $4272: $66
	add  b                                           ; $4273: $80
	ld   d, h                                        ; $4274: $54
	add  b                                           ; $4275: $80
	ld   c, h                                        ; $4276: $4c
	add  b                                           ; $4277: $80
	ld   c, b                                        ; $4278: $48
	add  b                                           ; $4279: $80
	ld   [$9180], sp                                 ; $427a: $08 $80 $91
	add  b                                           ; $427d: $80
	sub  d                                           ; $427e: $92
	add  b                                           ; $427f: $80
	jr   nz, jr_095_4202                             ; $4280: $20 $80

	inc  [hl]                                        ; $4282: $34
	add  b                                           ; $4283: $80
	jr   z, jr_095_4206                              ; $4284: $28 $80

	ld   d, b                                        ; $4286: $50
	add  b                                           ; $4287: $80
	pop  bc                                          ; $4288: $c1
	add  b                                           ; $4289: $80
	add  d                                           ; $428a: $82
	add  b                                           ; $428b: $80
	inc  b                                           ; $428c: $04
	add  b                                           ; $428d: $80
	ld   [$1080], sp                                 ; $428e: $08 $80 $10
	add  b                                           ; $4291: $80
	ld   h, b                                        ; $4292: $60
	add  b                                           ; $4293: $80
	ld   b, c                                        ; $4294: $41
	add  b                                           ; $4295: $80
	add  d                                           ; $4296: $82
	add  b                                           ; $4297: $80
	ld   [$1080], sp                                 ; $4298: $08 $80 $10
	add  b                                           ; $429b: $80
	jr   nz, jr_095_4220                             ; $429c: $20 $82

	nop                                              ; $429e: $00
	add  b                                           ; $429f: $80
	ret  nz                                          ; $42a0: $c0

	adc  d                                           ; $42a1: $8a
	nop                                              ; $42a2: $00
	add  b                                           ; $42a3: $80
	inc  bc                                          ; $42a4: $03
	add  b                                           ; $42a5: $80
	rrca                                             ; $42a6: $0f
	nop                                              ; $42a7: $00
	nop                                              ; $42a8: $00
	add  e                                           ; $42a9: $83
	rrca                                             ; $42aa: $0f
	ld   [bc], a                                     ; $42ab: $02
	rlca                                             ; $42ac: $07

jr_095_42ad:
	rrca                                             ; $42ad: $0f
	ld   [$0f81], sp                                 ; $42ae: $08 $81 $0f
	inc  bc                                          ; $42b1: $03
	nop                                              ; $42b2: $00
	rrca                                             ; $42b3: $0f
	jr   nc, jr_095_42f5                             ; $42b4: $30 $3f

	add  b                                           ; $42b6: $80
	add  b                                           ; $42b7: $80
	add  b                                           ; $42b8: $80
	cp   $82                                         ; $42b9: $fe $82
	rst  $38                                         ; $42bb: $ff
	add  b                                           ; $42bc: $80
	rrca                                             ; $42bd: $0f
	add  b                                           ; $42be: $80
	nop                                              ; $42bf: $00
	add  b                                           ; $42c0: $80
	ld   hl, sp+$00                                  ; $42c1: $f8 $00
	rst  $38                                         ; $42c3: $ff
	add  c                                           ; $42c4: $81
	ld   hl, sp-$80                                  ; $42c5: $f8 $80
	ld   bc, $e180                                   ; $42c7: $01 $80 $e1
	add  b                                           ; $42ca: $80
	ei                                               ; $42cb: $fb
	add  b                                           ; $42cc: $80
	ld   a, [$3a80]                                  ; $42cd: $fa $80 $3a
	add  b                                           ; $42d0: $80
	ld   [bc], a                                     ; $42d1: $02
	ld   [bc], a                                     ; $42d2: $02
	dec  h                                           ; $42d3: $25
	add  l                                           ; $42d4: $85
	db   $e3                                         ; $42d5: $e3
	add  b                                           ; $42d6: $80
	xor  e                                           ; $42d7: $ab
	nop                                              ; $42d8: $00
	cp   e                                           ; $42d9: $bb
	add  h                                           ; $42da: $84
	ld   [hl], d                                     ; $42db: $72
	add  d                                           ; $42dc: $82
	ld   h, d                                        ; $42dd: $62
	ld   [bc], a                                     ; $42de: $02
	ld   b, e                                        ; $42df: $43
	ld   b, h                                        ; $42e0: $44
	ld   b, b                                        ; $42e1: $40
	add  c                                           ; $42e2: $81
	ld   c, b                                        ; $42e3: $48
	add  b                                           ; $42e4: $80
	adc  b                                           ; $42e5: $88
	ld   bc, $8808                                   ; $42e6: $01 $08 $88
	add  b                                           ; $42e9: $80
	add  b                                           ; $42ea: $80
	ld   b, $8b                                      ; $42eb: $06 $8b
	rlca                                             ; $42ed: $07
	inc  bc                                          ; $42ee: $03
	ret  nz                                          ; $42ef: $c0

	ld   l, a                                        ; $42f0: $6f
	and  b                                           ; $42f1: $a0
	sub  b                                           ; $42f2: $90
	add  e                                           ; $42f3: $83
	add  b                                           ; $42f4: $80

jr_095_42f5:
	inc  e                                           ; $42f5: $1c
	add  c                                           ; $42f6: $81
	add  b                                           ; $42f7: $80
	and  b                                           ; $42f8: $a0
	add  d                                           ; $42f9: $82
	dec  c                                           ; $42fa: $0d
	ld   [$4600], sp                                 ; $42fb: $08 $00 $46
	ld   [hl], a                                     ; $42fe: $77
	and  h                                           ; $42ff: $a4
	inc  [hl]                                        ; $4300: $34
	inc  b                                           ; $4301: $04
	xor  h                                           ; $4302: $ac
	ld   [$1018], sp                                 ; $4303: $08 $18 $10
	jr   nc, jr_095_42ad                             ; $4306: $30 $a5

	and  b                                           ; $4308: $a0
	adc  c                                           ; $4309: $89
	add  c                                           ; $430a: $81
	ret  nc                                          ; $430b: $d0

	ld   b, b                                        ; $430c: $40
	ld   b, c                                        ; $430d: $41
	jp   c, $e2e6                                    ; $430e: $da $e6 $e2

	ldh  [$e3], a                                    ; $4311: $e0 $e3
	add  b                                           ; $4313: $80
	inc  d                                           ; $4314: $14
	inc  c                                           ; $4315: $0c
	push bc                                          ; $4316: $c5
	inc  h                                           ; $4317: $24
	ld   [de], a                                     ; $4318: $12
	add  d                                           ; $4319: $82
	ld   [$8bc8], sp                                 ; $431a: $08 $c8 $8b
	add  hl, bc                                      ; $431d: $09
	dec  c                                           ; $431e: $0d
	db   $e3                                         ; $431f: $e3
	sbc  b                                           ; $4320: $98
	inc  hl                                          ; $4321: $23
	ld   h, a                                        ; $4322: $67
	add  b                                           ; $4323: $80
	inc  sp                                          ; $4324: $33
	rlca                                             ; $4325: $07
	sbc  c                                           ; $4326: $99
	add  hl, de                                      ; $4327: $19
	ld   c, [hl]                                     ; $4328: $4e
	adc  [hl]                                        ; $4329: $8e
	inc  bc                                          ; $432a: $03
	ld   b, e                                        ; $432b: $43
	ld   bc, $8081                                   ; $432c: $01 $81 $80
	sub  b                                           ; $432f: $90
	nop                                              ; $4330: $00
	add  b                                           ; $4331: $80
	add  c                                           ; $4332: $81
	nop                                              ; $4333: $00
	add  b                                           ; $4334: $80
	ret  nz                                          ; $4335: $c0

	add  b                                           ; $4336: $80
	ldh  a, [$80]                                    ; $4337: $f0 $80
	ld   a, h                                        ; $4339: $7c
	add  b                                           ; $433a: $80
	ccf                                              ; $433b: $3f
	add  b                                           ; $433c: $80
	adc  [hl]                                        ; $433d: $8e
	add  b                                           ; $433e: $80
	ld   b, a                                        ; $433f: $47
	dec  bc                                          ; $4340: $0b
	rla                                              ; $4341: $17
	ld   [$0424], sp                                 ; $4342: $08 $24 $04
	nop                                              ; $4345: $00
	ld   b, b                                        ; $4346: $40
	ld   h, b                                        ; $4347: $60
	jr   nz, jr_095_43aa                             ; $4348: $20 $60

	jr   nz, jr_095_439c                             ; $434a: $20 $50

	db   $10                                         ; $434c: $10
	add  b                                           ; $434d: $80
	add  b                                           ; $434e: $80
	add  b                                           ; $434f: $80
	nop                                              ; $4350: $00
	inc  b                                           ; $4351: $04
	ccf                                              ; $4352: $3f
	rst  $38                                         ; $4353: $ff
	cp   $ff                                         ; $4354: $fe $ff
	cp   $84                                         ; $4356: $fe $84
	rst  $38                                         ; $4358: $ff
	dec  b                                           ; $4359: $05
	db   $fc                                         ; $435a: $fc
	cp   $f2                                         ; $435b: $fe $f2
	rst  $38                                         ; $435d: $ff
	rst  $20                                         ; $435e: $e7
	rla                                              ; $435f: $17
	add  a                                           ; $4360: $87
	nop                                              ; $4361: $00
	ld   [bc], a                                     ; $4362: $02
	db   $ec                                         ; $4363: $ec
	nop                                              ; $4364: $00
	inc  de                                          ; $4365: $13
	add  b                                           ; $4366: $80
	ld   l, b                                        ; $4367: $68
	ld   [bc], a                                     ; $4368: $02
	or   l                                           ; $4369: $b5
	ld   l, b                                        ; $436a: $68
	ld   [hl+], a                                    ; $436b: $22
	add  b                                           ; $436c: $80
	ld   b, b                                        ; $436d: $40
	add  b                                           ; $436e: $80
	add  b                                           ; $436f: $80
	add  h                                           ; $4370: $84
	nop                                              ; $4371: $00
	inc  b                                           ; $4372: $04
	add  b                                           ; $4373: $80
	nop                                              ; $4374: $00
	ld   b, b                                        ; $4375: $40
	nop                                              ; $4376: $00
	ret  nz                                          ; $4377: $c0

	add  l                                           ; $4378: $85
	nop                                              ; $4379: $00
	add  b                                           ; $437a: $80
	ld   [bc], a                                     ; $437b: $02
	add  d                                           ; $437c: $82
	nop                                              ; $437d: $00
	add  b                                           ; $437e: $80
	rlca                                             ; $437f: $07
	add  b                                           ; $4380: $80
	ld   [$2480], sp                                 ; $4381: $08 $80 $24
	add  b                                           ; $4384: $80
	add  d                                           ; $4385: $82
	add  b                                           ; $4386: $80
	db   $10                                         ; $4387: $10
	add  b                                           ; $4388: $80
	ld   bc, $0e80                                   ; $4389: $01 $80 $0e
	add  b                                           ; $438c: $80
	pop  hl                                          ; $438d: $e1
	add  b                                           ; $438e: $80
	inc  e                                           ; $438f: $1c
	inc  b                                           ; $4390: $04
	nop                                              ; $4391: $00
	rrca                                             ; $4392: $0f
	nop                                              ; $4393: $00
	rrca                                             ; $4394: $0f
	nop                                              ; $4395: $00
	adc  c                                           ; $4396: $89
	rrca                                             ; $4397: $0f
	nop                                              ; $4398: $00
	ldh  a, [$81]                                    ; $4399: $f0 $81
	rst  $38                                         ; $439b: $ff

jr_095_439c:
	add  b                                           ; $439c: $80
	nop                                              ; $439d: $00
	add  d                                           ; $439e: $82
	rst  $38                                         ; $439f: $ff
	add  b                                           ; $43a0: $80
	ldh  a, [$80]                                    ; $43a1: $f0 $80
	rst  $38                                         ; $43a3: $ff
	add  b                                           ; $43a4: $80
	add  b                                           ; $43a5: $80
	nop                                              ; $43a6: $00
	ld   a, [$f581]                                  ; $43a7: $fa $81 $f5

jr_095_43aa:
	add  b                                           ; $43aa: $80
	dec  b                                           ; $43ab: $05
	ld   bc, $0818                                   ; $43ac: $01 $18 $08
	add  b                                           ; $43af: $80
	add  sp, $01                                     ; $43b0: $e8 $01
	jr   nc, jr_095_43c4                             ; $43b2: $30 $10

	add  b                                           ; $43b4: $80
	ret  nc                                          ; $43b5: $d0

	add  b                                           ; $43b6: $80
	db   $10                                         ; $43b7: $10
	ld   bc, $62a2                                   ; $43b8: $01 $a2 $62
	add  d                                           ; $43bb: $82
	dec  h                                           ; $43bc: $25
	ld   bc, $0604                                   ; $43bd: $01 $04 $06
	add  b                                           ; $43c0: $80
	add  [hl]                                        ; $43c1: $86
	ld   [bc], a                                     ; $43c2: $02
	ld   b, d                                        ; $43c3: $42

jr_095_43c4:
	ld   b, b                                        ; $43c4: $40
	nop                                              ; $43c5: $00
	add  b                                           ; $43c6: $80
	inc  bc                                          ; $43c7: $03
	add  b                                           ; $43c8: $80
	ld   bc, $8e14                                   ; $43c9: $01 $14 $8e
	add  c                                           ; $43cc: $81
	ld   hl, $5813                                   ; $43cd: $21 $13 $58
	ld   de, $4a00                                   ; $43d0: $11 $00 $4a
	ld   b, d                                        ; $43d3: $42
	ld   [bc], a                                     ; $43d4: $02
	ld   b, b                                        ; $43d5: $40
	nop                                              ; $43d6: $00
	add  b                                           ; $43d7: $80
	adc  [hl]                                        ; $43d8: $8e
	call Call_095_60e2                               ; $43d9: $cd $e2 $60
	ldh  [hScriptOpcodeParams], a                                    ; $43dc: $e0 $a0
	ret  nz                                          ; $43de: $c0

	add  b                                           ; $43df: $80
	add  b                                           ; $43e0: $80
	inc  bc                                          ; $43e1: $03
	add  b                                           ; $43e2: $80
	rrca                                             ; $43e3: $0f
	rlca                                             ; $43e4: $07
	rst  JumpTable                                         ; $43e5: $df
	sbc  a                                           ; $43e6: $9f
	ld   a, b                                        ; $43e7: $78
	inc  a                                           ; $43e8: $3c
	jp   c, $277a                                    ; $43e9: $da $7a $27

	ld   [bc], a                                     ; $43ec: $02
	add  b                                           ; $43ed: $80
	nop                                              ; $43ee: $00
	add  hl, bc                                      ; $43ef: $09
	ld   [$e70e], sp                                 ; $43f0: $08 $0e $e7
	pop  hl                                          ; $43f3: $e1
	db   $fc                                         ; $43f4: $fc
	rst  $38                                         ; $43f5: $ff
	ld   sp, hl                                      ; $43f6: $f9
	rst  $38                                         ; $43f7: $ff
	ld   a, [de]                                     ; $43f8: $1a
	ld   e, $80                                      ; $43f9: $1e $80
	nop                                              ; $43fb: $00
	inc  c                                           ; $43fc: $0c
	pop  bc                                          ; $43fd: $c1
	ld   bc, $4050                                   ; $43fe: $01 $50 $40
	inc  [hl]                                        ; $4401: $34
	nop                                              ; $4402: $00
	add  h                                           ; $4403: $84
	ldh  a, [rAUD1SWEEP]                             ; $4404: $f0 $10
	add  sp, $29                                     ; $4406: $e8 $29
	pop  de                                          ; $4408: $d1
	sub  c                                           ; $4409: $91
	add  b                                           ; $440a: $80
	ld   bc, $000c                                   ; $440b: $01 $0c $00
	or   $a8                                         ; $440e: $f6 $a8
	and  h                                           ; $4410: $a4
	sub  h                                           ; $4411: $94
	sub  d                                           ; $4412: $92
	or   d                                           ; $4413: $b2
	or   c                                           ; $4414: $b1
	ld   h, c                                        ; $4415: $61
	ld   h, b                                        ; $4416: $60
	ld   b, b                                        ; $4417: $40
	ld   b, d                                        ; $4418: $42
	ld   [bc], a                                     ; $4419: $02
	add  d                                           ; $441a: $82
	ld   [de], a                                     ; $441b: $12
	add  b                                           ; $441c: $80
	inc  hl                                          ; $441d: $23
	add  b                                           ; $441e: $80
	ld   bc, $0082                                   ; $441f: $01 $82 $00
	add  b                                           ; $4422: $80
	add  b                                           ; $4423: $80
	add  b                                           ; $4424: $80
	ld   b, b                                        ; $4425: $40
	ld   b, $b0                                      ; $4426: $06 $b0

jr_095_4428:
	jr   nz, jr_095_446a                             ; $4428: $20 $40

	db   $10                                         ; $442a: $10
	ld   a, a                                        ; $442b: $7f
	add  b                                           ; $442c: $80
	ldh  [$81], a                                    ; $442d: $e0 $81
	ret  nz                                          ; $442f: $c0

	add  b                                           ; $4430: $80
	ld   b, b                                        ; $4431: $40
	dec  bc                                          ; $4432: $0b
	inc  bc                                          ; $4433: $03
	nop                                              ; $4434: $00
	inc  l                                           ; $4435: $2c
	nop                                              ; $4436: $00
	ld   d, c                                        ; $4437: $51
	ld   bc, $0121                                   ; $4438: $01 $21 $01
	ld   d, l                                        ; $443b: $55
	push bc                                          ; $443c: $c5
	ld   sp, hl                                      ; $443d: $f9
	xor  c                                           ; $443e: $a9
	add  b                                           ; $443f: $80
	sub  e                                           ; $4440: $93
	ld   bc, $58d8                                   ; $4441: $01 $d8 $58
	add  b                                           ; $4444: $80
	ld   d, d                                        ; $4445: $52
	add  b                                           ; $4446: $80
	sub  d                                           ; $4447: $92
	add  d                                           ; $4448: $82
	ld   [de], a                                     ; $4449: $12
	add  b                                           ; $444a: $80
	ret  nz                                          ; $444b: $c0

	inc  bc                                          ; $444c: $03
	sbc  [hl]                                        ; $444d: $9e
	sub  d                                           ; $444e: $92
	inc  sp                                          ; $444f: $33
	ccf                                              ; $4450: $3f
	add  b                                           ; $4451: $80
	ld   e, h                                        ; $4452: $5c
	add  b                                           ; $4453: $80
	ld   e, b                                        ; $4454: $58
	ld   a, [bc]                                     ; $4455: $0a
	inc  b                                           ; $4456: $04
	dec  h                                           ; $4457: $25
	inc  h                                           ; $4458: $24
	db   $fc                                         ; $4459: $fc
	and  $e0                                         ; $445a: $e6 $e0
	ld   a, a                                        ; $445c: $7f
	sbc  a                                           ; $445d: $9f
	sbc  [hl]                                        ; $445e: $9e
	adc  a                                           ; $445f: $8f
	ld   c, $80                                      ; $4460: $0e $80
	daa                                              ; $4462: $27
	dec  b                                           ; $4463: $05
	nop                                              ; $4464: $00
	ld   a, e                                        ; $4465: $7b
	ld   b, b                                        ; $4466: $40
	ld   b, h                                        ; $4467: $44
	nop                                              ; $4468: $00
	add  b                                           ; $4469: $80

jr_095_446a:
	add  c                                           ; $446a: $81
	nop                                              ; $446b: $00
	inc  b                                           ; $446c: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $446d: $cf
	rst  $38                                         ; $446e: $ff
	ld   b, a                                        ; $446f: $47
	rst  $38                                         ; $4470: $ff
	ld   [hl], a                                     ; $4471: $77
	add  b                                           ; $4472: $80
	rst  $38                                         ; $4473: $ff
	dec  b                                           ; $4474: $05
	nop                                              ; $4475: $00
	rst  $38                                         ; $4476: $ff
	nop                                              ; $4477: $00
	rrca                                             ; $4478: $0f
	nop                                              ; $4479: $00
	rrca                                             ; $447a: $0f
	add  c                                           ; $447b: $81
	nop                                              ; $447c: $00
	ld   [$ff3c], sp                                 ; $447d: $08 $3c $ff
	inc  h                                           ; $4480: $24
	cp   $e7                                         ; $4481: $fe $e7
	ldh  a, [$fe]                                    ; $4483: $f0 $fe
	nop                                              ; $4485: $00
	ldh  a, [$81]                                    ; $4486: $f0 $81
	nop                                              ; $4488: $00
	inc  b                                           ; $4489: $04
	inc  c                                           ; $448a: $0c
	nop                                              ; $448b: $00
	rrca                                             ; $448c: $0f
	nop                                              ; $448d: $00
	di                                               ; $448e: $f3
	add  l                                           ; $448f: $85
	ldh  a, [$08]                                    ; $4490: $f0 $08
	di                                               ; $4492: $f3
	ldh  a, [rIE]                                    ; $4493: $f0 $ff
	db   $e3                                         ; $4495: $e3
	rst  $38                                         ; $4496: $ff
	sbc  a                                           ; $4497: $9f
	db   $fc                                         ; $4498: $fc
	ld   a, h                                        ; $4499: $7c
	rst  $38                                         ; $449a: $ff
	add  l                                           ; $449b: $85
	nop                                              ; $449c: $00
	ld   bc, $00ff                                   ; $449d: $01 $ff $00
	add  h                                           ; $44a0: $84
	cp   $01                                         ; $44a1: $fe $01
	and  b                                           ; $44a3: $a0
	jr   nz, jr_095_4428                             ; $44a4: $20 $82

	ld   hl, $c301                                   ; $44a6: $21 $01 $c3
	ld   b, e                                        ; $44a9: $43
	add  b                                           ; $44aa: $80
	ld   b, d                                        ; $44ab: $42
	add  b                                           ; $44ac: $80
	add  d                                           ; $44ad: $82
	add  d                                           ; $44ae: $82
	add  h                                           ; $44af: $84
	add  d                                           ; $44b0: $82
	add  b                                           ; $44b1: $80
	add  b                                           ; $44b2: $80
	db   $10                                         ; $44b3: $10
	add  b                                           ; $44b4: $80
	inc  d                                           ; $44b5: $14
	add  b                                           ; $44b6: $80
	inc  [hl]                                        ; $44b7: $34
	ld   [hl+], a                                    ; $44b8: $22
	ld   [hl-], a                                    ; $44b9: $32
	ld   [hl+], a                                    ; $44ba: $22

jr_095_44bb:
	ld   h, c                                        ; $44bb: $61
	ld   hl, $80a0                                   ; $44bc: $21 $a0 $80
	ld   h, b                                        ; $44bf: $60
	db   $e3                                         ; $44c0: $e3
	xor  $67                                         ; $44c1: $ee $67
	jr   nc, jr_095_4544                             ; $44c3: $30 $7f

	ld   a, [hl-]                                    ; $44c5: $3a
	jr   nc, jr_095_4500                             ; $44c6: $30 $38

	jr   jr_095_44e6                                 ; $44c8: $18 $1c

	inc  c                                           ; $44ca: $0c
	adc  c                                           ; $44cb: $89
	add  [hl]                                        ; $44cc: $86
	ld   a, b                                        ; $44cd: $78
	ld   a, c                                        ; $44ce: $79
	or   e                                           ; $44cf: $b3
	db   $eb                                         ; $44d0: $eb
	dec  l                                           ; $44d1: $2d
	call $0046                                       ; $44d2: $cd $46 $00
	jr   nz, jr_095_4507                             ; $44d5: $20 $30

	ld   [hl], b                                     ; $44d7: $70
	ld   b, b                                        ; $44d8: $40
	pop  hl                                          ; $44d9: $e1
	nop                                              ; $44da: $00
	add  $80                                         ; $44db: $c6 $80
	adc  c                                           ; $44dd: $89
	ld   [hl+], a                                    ; $44de: $22
	inc  bc                                          ; $44df: $03
	inc  b                                           ; $44e0: $04
	nop                                              ; $44e1: $00
	inc  bc                                          ; $44e2: $03
	nop                                              ; $44e3: $00
	dec  c                                           ; $44e4: $0d
	ld   [bc], a                                     ; $44e5: $02

jr_095_44e6:
	inc  [hl]                                        ; $44e6: $34
	jr   z, jr_095_451a                              ; $44e7: $28 $31

	ld   b, b                                        ; $44e9: $40
	ld   a, a                                        ; $44ea: $7f
	sub  b                                           ; $44eb: $90
	adc  [hl]                                        ; $44ec: $8e
	nop                                              ; $44ed: $00
	cp   $02                                         ; $44ee: $fe $02
	rst  $38                                         ; $44f0: $ff
	ld   [bc], a                                     ; $44f1: $02
	add  d                                           ; $44f2: $82
	ld   [bc], a                                     ; $44f3: $02
	add  $04                                         ; $44f4: $c6 $04
	ld   h, h                                        ; $44f6: $64
	inc  b                                           ; $44f7: $04
	call z, $c908                                    ; $44f8: $cc $08 $c9
	dec  b                                           ; $44fb: $05
	dec  d                                           ; $44fc: $15
	dec  c                                           ; $44fd: $0d
	ld   c, l                                        ; $44fe: $4d
	dec  e                                           ; $44ff: $1d

jr_095_4500:
	cp   c                                           ; $4500: $b9
	dec  h                                           ; $4501: $25
	add  b                                           ; $4502: $80
	rla                                              ; $4503: $17
	add  b                                           ; $4504: $80
	ld   a, $12                                      ; $4505: $3e $12

jr_095_4507:
	ld   a, b                                        ; $4507: $78
	ld   a, c                                        ; $4508: $79
	pop  af                                          ; $4509: $f1
	rst  $30                                         ; $450a: $f7
	rst  $20                                         ; $450b: $e7
	rst  $28                                         ; $450c: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $450d: $cf
	rst  JumpTable                                         ; $450e: $df
	sbc  a                                           ; $450f: $9f
	cp   a                                           ; $4510: $bf
	rst  $10                                         ; $4511: $d7
	add  sp, -$7c                                    ; $4512: $e8 $84
	add  b                                           ; $4514: $80
	jr   nc, jr_095_4557                             ; $4515: $30 $40

	ld   h, [hl]                                     ; $4517: $66
	db   $e4                                         ; $4518: $e4
	db   $ec                                         ; $4519: $ec

jr_095_451a:
	add  c                                           ; $451a: $81
	ldh  [rP1], a                                    ; $451b: $e0 $00
	pop  hl                                          ; $451d: $e1
	add  c                                           ; $451e: $81
	ldh  [rAUD1LEN], a                               ; $451f: $e0 $11
	ld   a, [$6001]                                  ; $4521: $fa $01 $60
	nop                                              ; $4524: $00
	ld   a, [de]                                     ; $4525: $1a
	ld   [bc], a                                     ; $4526: $02
	add  d                                           ; $4527: $82
	ld   [bc], a                                     ; $4528: $02
	inc  bc                                          ; $4529: $03
	ld   bc, $000d                                   ; $452a: $01 $0d $00
	jr   jr_095_452f                                 ; $452d: $18 $00

jr_095_452f:
	jr   nc, jr_095_4531                             ; $452f: $30 $00

jr_095_4531:
	adc  $5d                                         ; $4531: $ce $5d
	add  b                                           ; $4533: $80
	ld   bc, $a200                                   ; $4534: $01 $00 $a2
	add  c                                           ; $4537: $81
	jr   nz, jr_095_44bb                             ; $4538: $20 $81

	ld   hl, $0001                                   ; $453a: $21 $01 $00
	db   $10                                         ; $453d: $10
	adc  c                                           ; $453e: $89
	nop                                              ; $453f: $00
	ld   bc, $0080                                   ; $4540: $01 $80 $00
	add  c                                           ; $4543: $81

jr_095_4544:
	add  b                                           ; $4544: $80
	sbc  l                                           ; $4545: $9d
	nop                                              ; $4546: $00
	add  d                                           ; $4547: $82
	rra                                              ; $4548: $1f
	adc  b                                           ; $4549: $88
	nop                                              ; $454a: $00
	add  b                                           ; $454b: $80
	ld   a, a                                        ; $454c: $7f
	add  d                                           ; $454d: $82
	rst  $38                                         ; $454e: $ff
	dec  b                                           ; $454f: $05
	or   b                                           ; $4550: $b0
	ld   [hl], b                                     ; $4551: $70
	or   b                                           ; $4552: $b0
	ldh  a, [$7e]                                    ; $4553: $f0 $7e
	cp   $80                                         ; $4555: $fe $80

jr_095_4557:
	ldh  a, [$80]                                    ; $4557: $f0 $80
	rst  $38                                         ; $4559: $ff
	add  b                                           ; $455a: $80
	ldh  a, [$82]                                    ; $455b: $f0 $82
	rst  $38                                         ; $455d: $ff
	rlca                                             ; $455e: $07
	jp   $cd3c                                       ; $455f: $c3 $3c $cd


	dec  c                                           ; $4562: $0d
	ld   sp, $7401                                   ; $4563: $31 $01 $74
	ld   a, b                                        ; $4566: $78
	add  b                                           ; $4567: $80
	inc  b                                           ; $4568: $04
	ld   bc, $fefc                                   ; $4569: $01 $fc $fe
	add  b                                           ; $456c: $80
	ldh  a, [$80]                                    ; $456d: $f0 $80
	add  c                                           ; $456f: $81
	ld   bc, $847a                                   ; $4570: $01 $7a $84
	add  [hl]                                        ; $4573: $86
	inc  b                                           ; $4574: $04
	ld   b, $e6                                      ; $4575: $06 $e6
	ld   b, $16                                      ; $4577: $06 $16
	ld   b, $96                                      ; $4579: $06 $96
	ld   b, $90                                      ; $457b: $06 $90

jr_095_457d:
	add  b                                           ; $457d: $80
	and  b                                           ; $457e: $a0
	inc  bc                                          ; $457f: $03
	ldh  [$e1], a                                    ; $4580: $e0 $e1
	ldh  a, [c]                                      ; $4582: $f2
	ldh  a, [$81]                                    ; $4583: $f0 $81
	db   $f4                                         ; $4585: $f4
	ld   bc, $585c                                   ; $4586: $01 $5c $58
	add  b                                           ; $4589: $80
	ld   c, b                                        ; $458a: $48

jr_095_458b:
	ld   b, $26                                      ; $458b: $06 $26
	inc  h                                           ; $458d: $24
	ld   bc, $8000                                   ; $458e: $01 $00 $80
	cp   $81                                         ; $4591: $fe $81
	adc  c                                           ; $4593: $89
	nop                                              ; $4594: $00
	dec  bc                                          ; $4595: $0b
	inc  bc                                          ; $4596: $03
	add  b                                           ; $4597: $80
	ld   b, e                                        ; $4598: $43
	jr   nz, @-$64                                   ; $4599: $20 $9a

	ld   b, [hl]                                     ; $459b: $46
	ld   [hl+], a                                    ; $459c: $22
	ld   de, $0800                                   ; $459d: $11 $00 $08
	nop                                              ; $45a0: $00
	inc  b                                           ; $45a1: $04
	add  c                                           ; $45a2: $81
	ld   [bc], a                                     ; $45a3: $02
	inc  bc                                          ; $45a4: $03
	nop                                              ; $45a5: $00
	add  d                                           ; $45a6: $82
	add  b                                           ; $45a7: $80
	inc  bc                                          ; $45a8: $03
	add  b                                           ; $45a9: $80
	nop                                              ; $45aa: $00
	ld   b, $01                                      ; $45ab: $06 $01
	add  b                                           ; $45ad: $80
	add  e                                           ; $45ae: $83
	db   $dd                                         ; $45af: $dd
	jr   c, @+$21                                    ; $45b0: $38 $1f

	rlca                                             ; $45b2: $07
	add  b                                           ; $45b3: $80
	rrca                                             ; $45b4: $0f
	nop                                              ; $45b5: $00
	nop                                              ; $45b6: $00
	add  b                                           ; $45b7: $80
	or   b                                           ; $45b8: $b0
	add  b                                           ; $45b9: $80
	inc  a                                           ; $45ba: $3c
	add  b                                           ; $45bb: $80
	ld   a, l                                        ; $45bc: $7d
	inc  b                                           ; $45bd: $04
	ld   sp, hl                                      ; $45be: $f9
	db   $fd                                         ; $45bf: $fd
	push hl                                          ; $45c0: $e5
	db   $fd                                         ; $45c1: $fd
	dec  e                                           ; $45c2: $1d
	add  b                                           ; $45c3: $80
	db   $fd                                         ; $45c4: $fd
	add  b                                           ; $45c5: $80
	ld   sp, hl                                      ; $45c6: $f9
	ld   [bc], a                                     ; $45c7: $02
	rlca                                             ; $45c8: $07
	nop                                              ; $45c9: $00
	ld   b, $80                                      ; $45ca: $06 $80
	ld   a, a                                        ; $45cc: $7f
	add  l                                           ; $45cd: $85
	rst  $38                                         ; $45ce: $ff
	add  h                                           ; $45cf: $84
	cp   $00                                         ; $45d0: $fe $00
	ret  nz                                          ; $45d2: $c0

	add  b                                           ; $45d3: $80
	call nz, $c011                                   ; $45d4: $c4 $11 $c0
	add  c                                           ; $45d7: $81
	add  b                                           ; $45d8: $80
	add  e                                           ; $45d9: $83
	add  b                                           ; $45da: $80
	ld   b, $00                                      ; $45db: $06 $00
	inc  c                                           ; $45dd: $0c
	nop                                              ; $45de: $00
	jr   jr_095_45e1                                 ; $45df: $18 $00

jr_095_45e1:
	jr   nc, jr_095_45e3                             ; $45e1: $30 $00

jr_095_45e3:
	ld   h, b                                        ; $45e3: $60
	nop                                              ; $45e4: $00
	ret  nz                                          ; $45e5: $c0

	nop                                              ; $45e6: $00
	add  b                                           ; $45e7: $80
	add  a                                           ; $45e8: $87
	nop                                              ; $45e9: $00
	add  b                                           ; $45ea: $80
	inc  bc                                          ; $45eb: $03
	adc  h                                           ; $45ec: $8c
	nop                                              ; $45ed: $00
	ld   [bc], a                                     ; $45ee: $02
	ldh  a, [$30]                                    ; $45ef: $f0 $30
	ret  nz                                          ; $45f1: $c0

	adc  [hl]                                        ; $45f2: $8e
	nop                                              ; $45f3: $00
	inc  b                                           ; $45f4: $04
	inc  e                                           ; $45f5: $1c
	jr   jr_095_45ff                                 ; $45f6: $18 $07

	ld   [hl], d                                     ; $45f8: $72
	ld   [hl], c                                     ; $45f9: $71
	add  b                                           ; $45fa: $80
	jr   c, jr_095_457d                              ; $45fb: $38 $80

	inc  e                                           ; $45fd: $1c
	add  h                                           ; $45fe: $84

jr_095_45ff:
	nop                                              ; $45ff: $00
	ld   [$070f], sp                                 ; $4600: $08 $0f $07
	rrca                                             ; $4603: $0f
	ld   bc, $c007                                   ; $4604: $01 $07 $c0
	add  c                                           ; $4607: $81
	ld   h, b                                        ; $4608: $60
	jr   nz, jr_095_458b                             ; $4609: $20 $80

	db   $10                                         ; $460b: $10
	add  e                                           ; $460c: $83
	nop                                              ; $460d: $00
	nop                                              ; $460e: $00
	rst  $38                                         ; $460f: $ff
	add  b                                           ; $4610: $80
	jp   $ec80                                       ; $4611: $c3 $80 $ec


	rlca                                             ; $4614: $07
	ld   e, a                                        ; $4615: $5f
	rst  JumpTable                                         ; $4616: $df
	rlca                                             ; $4617: $07
	ld   a, a                                        ; $4618: $7f
	inc  bc                                          ; $4619: $03
	rlca                                             ; $461a: $07
	nop                                              ; $461b: $00
	inc  bc                                          ; $461c: $03
	add  c                                           ; $461d: $81
	nop                                              ; $461e: $00
	ld   [bc], a                                     ; $461f: $02
	ld   bc, $010f                                   ; $4620: $01 $0f $01
	add  c                                           ; $4623: $81
	rrca                                             ; $4624: $0f
	dec  bc                                          ; $4625: $0b
	ld   c, $0f                                      ; $4626: $0e $0f
	nop                                              ; $4628: $00
	rrca                                             ; $4629: $0f
	ld   bc, $0e0f                                   ; $462a: $01 $0f $0e
	rrca                                             ; $462d: $0f
	pop  bc                                          ; $462e: $c1
	rrca                                             ; $462f: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4630: $cf
	nop                                              ; $4631: $00
	add  b                                           ; $4632: $80
	rlca                                             ; $4633: $07
	add  b                                           ; $4634: $80
	ld   e, $14                                      ; $4635: $1e $14
	pop  hl                                          ; $4637: $e1
	ldh  [$03], a                                    ; $4638: $e0 $03
	ld   bc, $3b3f                                   ; $463a: $01 $3f $3b
	rst  $38                                         ; $463d: $ff
	rst  $30                                         ; $463e: $f7
	rst  $38                                         ; $463f: $ff
	rst  $28                                         ; $4640: $ef
	ldh  a, [c]                                      ; $4641: $f2
	jp   nc, $bafa                                   ; $4642: $d2 $fa $ba

	ld   sp, hl                                      ; $4645: $f9
	ld   a, c                                        ; $4646: $79
	ld   sp, hl                                      ; $4647: $f9
	ld   hl, sp-$0b                                  ; $4648: $f8 $f5
	ldh  a, [$e4]                                    ; $464a: $f0 $e4
	add  b                                           ; $464c: $80
	xor  $13                                         ; $464d: $ee $13
	rst  $28                                         ; $464f: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4650: $cf
	rst  JumpTable                                         ; $4651: $df
	ld   a, $20                                      ; $4652: $3e $20
	db   $10                                         ; $4654: $10
	ld   de, $ba94                                   ; $4655: $11 $94 $ba
	ld   h, c                                        ; $4658: $61
	ld   d, b                                        ; $4659: $50
	jr   nc, jr_095_46bc                             ; $465a: $30 $60

	ld   c, b                                        ; $465c: $48

jr_095_465d:
	ld   a, b                                        ; $465d: $78
	ld   a, l                                        ; $465e: $7d
	ld   a, [hl]                                     ; $465f: $7e
	ld   e, h                                        ; $4660: $5c
	ld   h, b                                        ; $4661: $60
	cp   a                                           ; $4662: $bf
	add  d                                           ; $4663: $82
	nop                                              ; $4664: $00
	ld   [$2080], sp                                 ; $4665: $08 $80 $20
	ldh  [rSTAT], a                                  ; $4668: $e0 $41
	ld   [bc], a                                     ; $466a: $02
	dec  e                                           ; $466b: $1d
	ld   hl, $1fdf                                   ; $466c: $21 $df $1f
	add  b                                           ; $466f: $80
	ld   c, $02                                      ; $4670: $0e $02
	cp   $00                                         ; $4672: $fe $00
	ld   bc, $0082                                   ; $4674: $01 $82 $00
	ld   [bc], a                                     ; $4677: $02
	ld   a, $c1                                      ; $4678: $3e $c1
	nop                                              ; $467a: $00
	add  b                                           ; $467b: $80
	rst  $38                                         ; $467c: $ff
	add  b                                           ; $467d: $80
	db   $f4                                         ; $467e: $f4
	add  b                                           ; $467f: $80
	ccf                                              ; $4680: $3f
	dec  bc                                          ; $4681: $0b
	ret  nz                                          ; $4682: $c0

	rrca                                             ; $4683: $0f
	cp   a                                           ; $4684: $bf
	inc  bc                                          ; $4685: $03
	rrca                                             ; $4686: $0f
	nop                                              ; $4687: $00
	jp   $8000                                       ; $4688: $c3 $00 $80


	nop                                              ; $468b: $00
	rst  $38                                         ; $468c: $ff
	ret  nz                                          ; $468d: $c0

	add  b                                           ; $468e: $80
	nop                                              ; $468f: $00
	add  b                                           ; $4690: $80
	rst  $38                                         ; $4691: $ff
	inc  h                                           ; $4692: $24
	ld   a, [hl]                                     ; $4693: $7e
	add  b                                           ; $4694: $80
	push bc                                          ; $4695: $c5
	call nz, Call_095_66e6                           ; $4696: $c4 $e6 $66
	rst  $20                                         ; $4699: $e7
	rlca                                             ; $469a: $07
	ld   h, a                                        ; $469b: $67
	rlca                                             ; $469c: $07
	inc  bc                                          ; $469d: $03
	jp   $0830                                       ; $469e: $c3 $30 $08


	rst  $30                                         ; $46a1: $f7
	ldh  a, [$03]                                    ; $46a2: $f0 $03
	db   $fc                                         ; $46a4: $fc
	ld   hl, sp+$70                                  ; $46a5: $f8 $70
	ld   a, c                                        ; $46a7: $79
	jr   nz, jr_095_465d                             ; $46a8: $20 $b3

	nop                                              ; $46aa: $00
	and  $80                                         ; $46ab: $e6 $80
	adc  h                                           ; $46ad: $8c
	add  b                                           ; $46ae: $80
	ld   a, b                                        ; $46af: $78
	nop                                              ; $46b0: $00
	ldh  [$60], a                                    ; $46b1: $e0 $60
	or   b                                           ; $46b3: $b0
	nop                                              ; $46b4: $00
	ret  nz                                          ; $46b5: $c0

	nop                                              ; $46b6: $00
	add  b                                           ; $46b7: $80
	adc  c                                           ; $46b8: $89
	nop                                              ; $46b9: $00
	add  b                                           ; $46ba: $80
	rlca                                             ; $46bb: $07

jr_095_46bc:
	add  b                                           ; $46bc: $80
	rrca                                             ; $46bd: $0f
	add  d                                           ; $46be: $82
	rra                                              ; $46bf: $1f
	add  h                                           ; $46c0: $84
	ccf                                              ; $46c1: $3f
	add  b                                           ; $46c2: $80
	ld   a, a                                        ; $46c3: $7f
	ld   [bc], a                                     ; $46c4: $02
	cp   $de                                         ; $46c5: $fe $de
	rst  JumpTable                                         ; $46c7: $df
	add  b                                           ; $46c8: $80
	rst  $28                                         ; $46c9: $ef
	add  b                                           ; $46ca: $80
	rst  $30                                         ; $46cb: $f7
	add  b                                           ; $46cc: $80
	ei                                               ; $46cd: $fb
	add  b                                           ; $46ce: $80
	db   $fd                                         ; $46cf: $fd
	ld   bc, $f9f8                                   ; $46d0: $01 $f8 $f9
	add  b                                           ; $46d3: $80
	pop  af                                          ; $46d4: $f1
	ld   [bc], a                                     ; $46d5: $02

jr_095_46d6:
	pop  hl                                          ; $46d6: $e1
	rra                                              ; $46d7: $1f
	nop                                              ; $46d8: $00
	add  b                                           ; $46d9: $80
	add  c                                           ; $46da: $81
	ld   c, $c3                                      ; $46db: $0e $c3
	jp   nz, $e1e2                                   ; $46dd: $c2 $e2 $e1

	ldh  [c], a                                      ; $46e0: $e2
	ldh  [$f0], a                                    ; $46e1: $e0 $f0
	ld   [hl], b                                     ; $46e3: $70
	ldh  a, [$90]                                    ; $46e4: $f0 $90
	ret  c                                           ; $46e6: $d8

	ret  z                                           ; $46e7: $c8

	db   $10                                         ; $46e8: $10
	ldh  [rIE], a                                    ; $46e9: $e0 $ff
	add  b                                           ; $46eb: $80
	cp   $03                                         ; $46ec: $fe $03
	rra                                              ; $46ee: $1f
	rst  JumpTable                                         ; $46ef: $df
	jr   nz, jr_095_46f2                             ; $46f0: $20 $00

jr_095_46f2:
	add  b                                           ; $46f2: $80
	rra                                              ; $46f3: $1f
	ld   b, $1a                                      ; $46f4: $06 $1a
	ld   a, e                                        ; $46f6: $7b
	add  hl, bc                                      ; $46f7: $09
	ld   l, e                                        ; $46f8: $6b
	inc  de                                          ; $46f9: $13
	rrca                                             ; $46fa: $0f
	nop                                              ; $46fb: $00
	add  b                                           ; $46fc: $80
	ldh  a, [rTAC]                                   ; $46fd: $f0 $07
	cp   $3e                                         ; $46ff: $fe $3e
	ccf                                              ; $4701: $3f
	rlca                                             ; $4702: $07
	ld   a, a                                        ; $4703: $7f
	ld   a, c                                        ; $4704: $79
	rst  $38                                         ; $4705: $ff
	cp   $83                                         ; $4706: $fe $83
	rst  $38                                         ; $4708: $ff
	add  e                                           ; $4709: $83
	nop                                              ; $470a: $00
	add  b                                           ; $470b: $80
	add  b                                           ; $470c: $80
	add  b                                           ; $470d: $80
	ret  nz                                          ; $470e: $c0

	dec  b                                           ; $470f: $05
	ldh  a, [rSVBK]                                  ; $4710: $f0 $70
	ld   hl, sp-$48                                  ; $4712: $f8 $b8
	cp   $ce                                         ; $4714: $fe $ce
	ld   a, a                                        ; $4716: $7f
	ld   bc, $009b                                   ; $4717: $01 $9b $00
	add  b                                           ; $471a: $80
	inc  bc                                          ; $471b: $03
	add  b                                           ; $471c: $80
	rlca                                             ; $471d: $07
	add  [hl]                                        ; $471e: $86
	nop                                              ; $471f: $00
	add  b                                           ; $4720: $80
	ccf                                              ; $4721: $3f
	add  b                                           ; $4722: $80
	rst  $38                                         ; $4723: $ff
	ld   [bc], a                                     ; $4724: $02
	ret  nz                                          ; $4725: $c0

	rst  $38                                         ; $4726: $ff
	ccf                                              ; $4727: $3f
	add  a                                           ; $4728: $87
	nop                                              ; $4729: $00
	add  b                                           ; $472a: $80
	rrca                                             ; $472b: $0f
	add  b                                           ; $472c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $472d: $cf
	add  b                                           ; $472e: $80
	ld   hl, sp-$80                                  ; $472f: $f8 $80
	ld   a, [hl-]                                    ; $4731: $3a
	add  [hl]                                        ; $4732: $86
	nop                                              ; $4733: $00
	add  b                                           ; $4734: $80
	ret  nz                                          ; $4735: $c0

	add  d                                           ; $4736: $82
	rst  $38                                         ; $4737: $ff
	add  e                                           ; $4738: $83
	nop                                              ; $4739: $00
	add  hl, de                                      ; $473a: $19
	ld   bc, $7000                                   ; $473b: $01 $00 $70
	nop                                              ; $473e: $00
	ld   sp, hl                                      ; $473f: $f9
	ld   [hl], b                                     ; $4740: $70
	ld   [hl], h                                     ; $4741: $74
	ld   a, b                                        ; $4742: $78
	cp   d                                           ; $4743: $ba
	jr   c, jr_095_4786                              ; $4744: $38 $40

	jr   jr_095_4776                                 ; $4746: $18 $2e

	nop                                              ; $4748: $00
	ldh  [rP1], a                                    ; $4749: $e0 $00
	ld   hl, sp-$20                                  ; $474b: $f8 $e0
	db   $fc                                         ; $474d: $fc
	ld   hl, sp+$7a                                  ; $474e: $f8 $7a
	ld   a, b                                        ; $4750: $78
	sbc  b                                           ; $4751: $98
	jr   jr_095_47ac                                 ; $4752: $18 $58

	jr   jr_095_46d6                                 ; $4754: $18 $80

	inc  e                                           ; $4756: $1c
	nop                                              ; $4757: $00
	ld   a, $81                                      ; $4758: $3e $81
	nop                                              ; $475a: $00
	nop                                              ; $475b: $00
	ld   bc, $0087                                   ; $475c: $01 $87 $00
	nop                                              ; $475f: $00
	ld   bc, $0083                                   ; $4760: $01 $83 $00
	ld   [bc], a                                     ; $4763: $02

jr_095_4764:
	ld   hl, sp+$00                                  ; $4764: $f8 $00
	db   $f4                                         ; $4766: $f4
	add  e                                           ; $4767: $83
	ldh  a, [$0a]                                    ; $4768: $f0 $0a
	jr   c, jr_095_4764                              ; $476a: $38 $f8

	add  d                                           ; $476c: $82
	ld   a, b                                        ; $476d: $78
	add  $0e                                         ; $476e: $c6 $0e
	rrca                                             ; $4770: $0f
	dec  e                                           ; $4771: $1d
	rra                                              ; $4772: $1f
	dec  sp                                          ; $4773: $3b
	ccf                                              ; $4774: $3f
	add  b                                           ; $4775: $80

jr_095_4776:
	scf                                              ; $4776: $37
	ld   bc, $7f77                                   ; $4777: $01 $77 $7f
	add  d                                           ; $477a: $82
	ld   l, a                                        ; $477b: $6f
	ld   [$10ef], sp                                 ; $477c: $08 $ef $10
	rst  $38                                         ; $477f: $ff

Jump_095_4780:
	rst  $28                                         ; $4780: $ef
	ldh  a, [$df]                                    ; $4781: $f0 $df
	ldh  [$b7], a                                    ; $4783: $e0 $b7
	rst  ToBoot                                         ; $4785: $c7

jr_095_4786:
	add  b                                           ; $4786: $80
	ret                                              ; $4787: $c9


	ld   [bc], a                                     ; $4788: $02
	ld   h, e                                        ; $4789: $63
	add  b                                           ; $478a: $80
	sub  h                                           ; $478b: $94
	add  c                                           ; $478c: $81
	sub  b                                           ; $478d: $90
	inc  c                                           ; $478e: $0c
	ld   a, b                                        ; $478f: $78
	jp   z, $f338                                    ; $4790: $ca $38 $f3

	rst  JumpTable                                         ; $4793: $df
	ccf                                              ; $4794: $3f
	ld   l, a                                        ; $4795: $6f
	adc  a                                           ; $4796: $8f
	sub  $e7                                         ; $4797: $d6 $e7
	ld   [hl], e                                     ; $4799: $73
	ld   a, e                                        ; $479a: $7b
	ld   sp, hl                                      ; $479b: $f9
	add  b                                           ; $479c: $80
	dec  a                                           ; $479d: $3d
	add  hl, bc                                      ; $479e: $09
	dec  e                                           ; $479f: $1d
	inc  hl                                          ; $47a0: $23
	ccf                                              ; $47a1: $3f
	ld   c, a                                        ; $47a2: $4f
	rrca                                             ; $47a3: $0f
	rla                                              ; $47a4: $17
	daa                                              ; $47a5: $27
	ld   d, a                                        ; $47a6: $57
	rla                                              ; $47a7: $17
	inc  de                                          ; $47a8: $13
	add  e                                           ; $47a9: $83
	sbc  e                                           ; $47aa: $9b
	ld   [bc], a                                     ; $47ab: $02

jr_095_47ac:
	dec  hl                                          ; $47ac: $2b
	bit  3, b                                        ; $47ad: $cb $58
	add  c                                           ; $47af: $81
	nop                                              ; $47b0: $00
	inc  bc                                          ; $47b1: $03
	ld   c, $00                                      ; $47b2: $0e $00
	rra                                              ; $47b4: $1f
	ld   c, $80                                      ; $47b5: $0e $80
	rrca                                             ; $47b7: $0f
	add  hl, bc                                      ; $47b8: $09
	rla                                              ; $47b9: $17
	rlca                                             ; $47ba: $07
	dec  bc                                          ; $47bb: $0b
	inc  bc                                          ; $47bc: $03
	inc  b                                           ; $47bd: $04
	nop                                              ; $47be: $00
	ld   hl, $2d1c                                   ; $47bf: $21 $1c $2d
	inc  c                                           ; $47c2: $0c
	add  b                                           ; $47c3: $80
	ld   c, $01                                      ; $47c4: $0e $01
	rst  $28                                         ; $47c6: $ef
	rrca                                             ; $47c7: $0f
	add  b                                           ; $47c8: $80
	rst  $38                                         ; $47c9: $ff
	add  b                                           ; $47ca: $80
	cp   $80                                         ; $47cb: $fe $80
	add  [hl]                                        ; $47cd: $86
	add  b                                           ; $47ce: $80
	ld   b, $00                                      ; $47cf: $06 $00
	db   $ec                                         ; $47d1: $ec
	add  c                                           ; $47d2: $81
	inc  c                                           ; $47d3: $0c
	ld   bc, $1efe                                   ; $47d4: $01 $fe $1e
	add  b                                           ; $47d7: $80
	rst  $38                                         ; $47d8: $ff
	inc  de                                          ; $47d9: $13
	cp   $ff                                         ; $47da: $fe $ff
	dec  b                                           ; $47dc: $05
	ld   b, $02                                      ; $47dd: $06 $02
	ld   b, $74                                      ; $47df: $06 $74
	ld   b, $8b                                      ; $47e1: $06 $8b
	nop                                              ; $47e3: $00
	jr   nc, jr_095_47e6                             ; $47e4: $30 $00

jr_095_47e6:
	call c, $1e30                                    ; $47e6: $dc $30 $1e
	db   $fc                                         ; $47e9: $fc
	cp   a                                           ; $47ea: $bf
	cp   $8d                                         ; $47eb: $fe $8d
	dec  c                                           ; $47ed: $0d
	add  b                                           ; $47ee: $80
	inc  bc                                          ; $47ef: $03
	ld   [bc], a                                     ; $47f0: $02
	ld   a, c                                        ; $47f1: $79
	ld   bc, $8587                                   ; $47f2: $01 $87 $85
	nop                                              ; $47f5: $00
	ld   [$0081], sp                                 ; $47f6: $08 $81 $00
	ret  nz                                          ; $47f9: $c0

	add  b                                           ; $47fa: $80
	rst  $20                                         ; $47fb: $e7
	ret  nz                                          ; $47fc: $c0

	sbc  a                                           ; $47fd: $9f
	add  [hl]                                        ; $47fe: $86
	rst  $38                                         ; $47ff: $ff
	add  e                                           ; $4800: $83
	nop                                              ; $4801: $00
	dec  c                                           ; $4802: $0d
	ret  nz                                          ; $4803: $c0

	nop                                              ; $4804: $00
	ld   a, a                                        ; $4805: $7f
	ret  nz                                          ; $4806: $c0

	xor  a                                           ; $4807: $af
	rst  $38                                         ; $4808: $ff
	rst  ToBoot                                         ; $4809: $c7
	ld   a, a                                        ; $480a: $7f
	add  sp, $00                                     ; $480b: $e8 $00
	ld   a, a                                        ; $480d: $7f
	nop                                              ; $480e: $00
	rlca                                             ; $480f: $07
	nop                                              ; $4810: $00
	add  b                                           ; $4811: $80
	inc  bc                                          ; $4812: $03
	inc  bc                                          ; $4813: $03
	ld   [hl], e                                     ; $4814: $73
	inc  bc                                          ; $4815: $03
	ei                                               ; $4816: $fb
	ld   [hl], e                                     ; $4817: $73
	add  b                                           ; $4818: $80
	ld   sp, hl                                      ; $4819: $f9
	add  b                                           ; $481a: $80
	ld   hl, sp+$05                                  ; $481b: $f8 $05
	ld   bc, $fe00                                   ; $481d: $01 $00 $fe
	nop                                              ; $4820: $00
	rst  $38                                         ; $4821: $ff
	nop                                              ; $4822: $00
	add  h                                           ; $4823: $84
	rst  $38                                         ; $4824: $ff
	nop                                              ; $4825: $00
	nop                                              ; $4826: $00
	add  b                                           ; $4827: $80
	rst  $38                                         ; $4828: $ff
	add  c                                           ; $4829: $81
	nop                                              ; $482a: $00
	inc  b                                           ; $482b: $04
	add  hl, sp                                      ; $482c: $39
	ld   a, b                                        ; $482d: $78
	ld   bc, $c778                                   ; $482e: $01 $78 $c7
	add  e                                           ; $4831: $83
	rst  $38                                         ; $4832: $ff
	inc  c                                           ; $4833: $0c
	ld   a, a                                        ; $4834: $7f
	rst  $38                                         ; $4835: $ff
	cp   h                                           ; $4836: $bc
	ld   a, h                                        ; $4837: $7c
	ld   b, d                                        ; $4838: $42
	ld   a, [hl]                                     ; $4839: $7e
	add  e                                           ; $483a: $83
	nop                                              ; $483b: $00
	cp   $00                                         ; $483c: $fe $00
	pop  hl                                          ; $483e: $e1
	cp   $ee                                         ; $483f: $fe $ee
	add  c                                           ; $4841: $81
	rst  $38                                         ; $4842: $ff
	ld   [bc], a                                     ; $4843: $02
	rst  $28                                         ; $4844: $ef
	rst  $38                                         ; $4845: $ff
	rra                                              ; $4846: $1f
	add  c                                           ; $4847: $81
	nop                                              ; $4848: $00
	inc  h                                           ; $4849: $24
	sub  c                                           ; $484a: $91
	nop                                              ; $484b: $00
	sub  c                                           ; $484c: $91
	ld   l, [hl]                                     ; $484d: $6e
	xor  c                                           ; $484e: $a9
	rst  $38                                         ; $484f: $ff
	db   $db                                         ; $4850: $db
	rst  $38                                         ; $4851: $ff
	ld   e, e                                        ; $4852: $5b
	rst  $38                                         ; $4853: $ff
	cp   a                                           ; $4854: $bf
	or   a                                           ; $4855: $b7
	or   c                                           ; $4856: $b1
	ld   a, a                                        ; $4857: $7f
	ld   a, [hl]                                     ; $4858: $7e
	ld   a, a                                        ; $4859: $7f
	rst  $30                                         ; $485a: $f7
	nop                                              ; $485b: $00
	adc  h                                           ; $485c: $8c
	ld   [hl], a                                     ; $485d: $77
	inc  [hl]                                        ; $485e: $34
	ld   a, a                                        ; $485f: $7f
	cp   e                                           ; $4860: $bb
	rst  $38                                         ; $4861: $ff
	sbc  l                                           ; $4862: $9d
	rst  $30                                         ; $4863: $f7
	halt                                             ; $4864: $76
	ld   h, a                                        ; $4865: $67
	rst  $30                                         ; $4866: $f7
	di                                               ; $4867: $f3
	inc  bc                                          ; $4868: $03
	rst  $38                                         ; $4869: $ff

jr_095_486a:
	rst  JumpTable                                         ; $486a: $df
	db   $10                                         ; $486b: $10
	sub  b                                           ; $486c: $90
	add  b                                           ; $486d: $80
	and  b                                           ; $486e: $a0
	add  e                                           ; $486f: $83
	add  b                                           ; $4870: $80
	nop                                              ; $4871: $00
	nop                                              ; $4872: $00
	add  c                                           ; $4873: $81
	add  c                                           ; $4874: $81
	add  b                                           ; $4875: $80
	adc  l                                           ; $4876: $8d
	ld   bc, $9056                                   ; $4877: $01 $56 $90
	add  h                                           ; $487a: $84
	db   $10                                         ; $487b: $10
	add  d                                           ; $487c: $82
	sub  b                                           ; $487d: $90
	inc  b                                           ; $487e: $04
	sbc  b                                           ; $487f: $98
	sbc  a                                           ; $4880: $9f
	cpl                                              ; $4881: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4882: $cf
	ld   e, a                                        ; $4883: $5f
	add  b                                           ; $4884: $80
	ld   c, $80                                      ; $4885: $0e $80
	ld   b, $80                                      ; $4887: $06 $80
	rlca                                             ; $4889: $07
	add  b                                           ; $488a: $80
	inc  bc                                          ; $488b: $03
	add  d                                           ; $488c: $82
	ld   bc, $ff81                                   ; $488d: $01 $81 $ff
	nop                                              ; $4890: $00
	ld   l, [hl]                                     ; $4891: $6e
	add  c                                           ; $4892: $81
	call $1d01                                       ; $4893: $cd $01 $1d
	ld   l, l                                        ; $4896: $6d
	add  b                                           ; $4897: $80
	ld   h, l                                        ; $4898: $65
	nop                                              ; $4899: $00
	inc  h                                           ; $489a: $24
	add  b                                           ; $489b: $80
	and  [hl]                                        ; $489c: $a6
	ld   [bc], a                                     ; $489d: $02
	add  [hl]                                        ; $489e: $86
	or   [hl]                                        ; $489f: $b6
	add  $80                                         ; $48a0: $c6 $80
	cp   $02                                         ; $48a2: $fe $02
	rst  $38                                         ; $48a4: $ff
	nop                                              ; $48a5: $00
	ld   bc, $008b                                   ; $48a6: $01 $8b $00
	ld   [bc], a                                     ; $48a9: $02
	ret                                              ; $48aa: $c9


	ld   b, $c7                                      ; $48ab: $06 $c7
	add  e                                           ; $48ad: $83
	rlca                                             ; $48ae: $07
	ld   [$030b], sp                                 ; $48af: $08 $0b $03
	inc  b                                           ; $48b2: $04
	nop                                              ; $48b3: $00

jr_095_48b4:
	ld   [bc], a                                     ; $48b4: $02
	nop                                              ; $48b5: $00
	ld   bc, $8900                                   ; $48b6: $01 $00 $89
	add  c                                           ; $48b9: $81
	ld   b, $0e                                      ; $48ba: $06 $0e
	ld   b, [hl]                                     ; $48bc: $46
	ld   b, $02                                      ; $48bd: $06 $02
	ld   b, $04                                      ; $48bf: $06 $04
	ld   b, $02                                      ; $48c1: $06 $02
	ld   b, $44                                      ; $48c3: $06 $44
	ld   b, $86                                      ; $48c5: $06 $86
	ld   b, $8d                                      ; $48c7: $06 $8d

jr_095_48c9:
	ld   bc, $8107                                   ; $48c9: $01 $07 $81
	inc  bc                                          ; $48cc: $03
	nop                                              ; $48cd: $00
	ld   c, $81                                      ; $48ce: $0e $81
	ld   b, $06                                      ; $48d0: $06 $06
	inc  e                                           ; $48d2: $1c
	inc  c                                           ; $48d3: $0c
	jr   c, jr_095_48ee                              ; $48d4: $38 $18

	ld   de, $bf10                                   ; $48d6: $11 $10 $bf
	add  c                                           ; $48d9: $81
	cp   $80                                         ; $48da: $fe $80
	ld   b, $80                                      ; $48dc: $06 $80
	ld   c, $09                                      ; $48de: $0e $09
	ld   l, h                                        ; $48e0: $6c
	inc  c                                           ; $48e1: $0c
	inc  a                                           ; $48e2: $3c
	inc  e                                           ; $48e3: $1c
	sbc  b                                           ; $48e4: $98
	jr   jr_095_4960                                 ; $48e5: $18 $79

	jr   c, jr_095_486a                              ; $48e7: $38 $81

	nop                                              ; $48e9: $00
	add  b                                           ; $48ea: $80
	ret  nz                                          ; $48eb: $c0

	db   $10                                         ; $48ec: $10
	rst  $20                                         ; $48ed: $e7

jr_095_48ee:
	rst  $38                                         ; $48ee: $ff
	ld   l, e                                        ; $48ef: $6b
	ld   a, a                                        ; $48f0: $7f
	inc  a                                           ; $48f1: $3c
	jr   nc, jr_095_48b4                             ; $48f2: $30 $c0

	nop                                              ; $48f4: $00
	daa                                              ; $48f5: $27
	nop                                              ; $48f6: $00
	jr   jr_095_48f9                                 ; $48f7: $18 $00

jr_095_48f9:
	db   $fc                                         ; $48f9: $fc
	nop                                              ; $48fa: $00
	ld   c, $0c                                      ; $48fb: $0e $0c
	rst  $38                                         ; $48fd: $ff
	add  c                                           ; $48fe: $81
	cp   $80                                         ; $48ff: $fe $80
	ld   c, $80                                      ; $4901: $0e $80
	inc  e                                           ; $4903: $1c
	inc  b                                           ; $4904: $04
	call c, $781c                                    ; $4905: $dc $1c $78
	jr   c, jr_095_4989                              ; $4908: $38 $7f

	add  c                                           ; $490a: $81
	nop                                              ; $490b: $00
	ld   [bc], a                                     ; $490c: $02
	ld   bc, $8000                                   ; $490d: $01 $00 $80
	add  c                                           ; $4910: $81
	nop                                              ; $4911: $00
	ld   b, $02                                      ; $4912: $06 $02
	ld   bc, $0180                                   ; $4914: $01 $80 $01
	inc  b                                           ; $4917: $04
	inc  bc                                          ; $4918: $03
	ei                                               ; $4919: $fb
	add  b                                           ; $491a: $80
	ld   a, [hl]                                     ; $491b: $7e
	inc  bc                                          ; $491c: $03
	ld   a, a                                        ; $491d: $7f
	nop                                              ; $491e: $00
	rst  $38                                         ; $491f: $ff
	add  b                                           ; $4920: $80
	add  b                                           ; $4921: $80
	rst  $38                                         ; $4922: $ff
	add  b                                           ; $4923: $80
	rst  $30                                         ; $4924: $f7
	dec  b                                           ; $4925: $05
	di                                               ; $4926: $f3
	ld   [hl], e                                     ; $4927: $73
	pop  hl                                          ; $4928: $e1
	ld   h, a                                        ; $4929: $67
	ldh  [$99], a                                    ; $492a: $e0 $99
	add  c                                           ; $492c: $81
	nop                                              ; $492d: $00
	nop                                              ; $492e: $00
	ld   b, b                                        ; $492f: $40
	add  b                                           ; $4930: $80
	nop                                              ; $4931: $00
	inc  de                                          ; $4932: $13
	add  b                                           ; $4933: $80
	and  b                                           ; $4934: $a0
	ret  nz                                          ; $4935: $c0

	ret  nc                                          ; $4936: $d0

	ldh  [$e8], a                                    ; $4937: $e0 $e8
	ldh  a, [$f4]                                    ; $4939: $f0 $f4
	ld   hl, sp-$15                                  ; $493b: $f8 $eb
	ld   [hl], a                                     ; $493d: $77
	ld   l, b                                        ; $493e: $68
	ld   a, a                                        ; $493f: $7f
	nop                                              ; $4940: $00
	ld   a, a                                        ; $4941: $7f
	or   b                                           ; $4942: $b0
	ccf                                              ; $4943: $3f
	dec  bc                                          ; $4944: $0b
	dec  sp                                          ; $4945: $3b
	jr   nc, jr_095_48c9                             ; $4946: $30 $81

	ccf                                              ; $4948: $3f
	inc  bc                                          ; $4949: $03
	ld   a, a                                        ; $494a: $7f
	inc  bc                                          ; $494b: $03
	jp   $807f                                       ; $494c: $c3 $7f $80


	rst  $38                                         ; $494f: $ff
	ld   [$fb0c], sp                                 ; $4950: $08 $0c $fb
	ld   [$c3fb], sp                                 ; $4953: $08 $fb $c3
	cp   e                                           ; $4956: $bb
	nop                                              ; $4957: $00
	ei                                               ; $4958: $fb
	ld   hl, sp-$80                                  ; $4959: $f8 $80
	ld   sp, hl                                      ; $495b: $f9
	add  b                                           ; $495c: $80
	pop  bc                                          ; $495d: $c1
	add  c                                           ; $495e: $81
	db   $fd                                         ; $495f: $fd

jr_095_4960:
	inc  c                                           ; $4960: $0c
	dec  a                                           ; $4961: $3d
	pop  bc                                          ; $4962: $c1
	ld   bc, $0ccc                                   ; $4963: $01 $cc $0c
	sbc  $1e                                         ; $4966: $de $1e
	cp   $f8                                         ; $4968: $fe $f8
	cp   $44                                         ; $496a: $fe $44
	db   $fd                                         ; $496c: $fd
	ld   l, $83                                      ; $496d: $2e $83
	adc  $00                                         ; $496f: $ce $00
	sub  [hl]                                        ; $4971: $96
	add  e                                           ; $4972: $83
	rst  $20                                         ; $4973: $e7
	add  b                                           ; $4974: $80
	and  $03                                         ; $4975: $e6 $03
	jp   z, $17f2                                    ; $4977: $ca $f2 $17

	nop                                              ; $497a: $00
	add  b                                           ; $497b: $80
	rst  $38                                         ; $497c: $ff
	add  b                                           ; $497d: $80
	rra                                              ; $497e: $1f
	dec  b                                           ; $497f: $05
	rst  $20                                         ; $4980: $e7
	rlca                                             ; $4981: $07
	db   $eb                                         ; $4982: $eb
	di                                               ; $4983: $f3
	ld   sp, hl                                      ; $4984: $f9
	db   $fd                                         ; $4985: $fd
	add  b                                           ; $4986: $80
	dec  e                                           ; $4987: $1d
	nop                                              ; $4988: $00

jr_095_4989:
	db   $fc                                         ; $4989: $fc
	add  b                                           ; $498a: $80
	ld   c, $00                                      ; $498b: $0e $00
	nop                                              ; $498d: $00
	add  b                                           ; $498e: $80
	rst  $38                                         ; $498f: $ff
	dec  b                                           ; $4990: $05

jr_095_4991:
	ld   hl, sp-$02                                  ; $4991: $f8 $fe
	rst  $30                                         ; $4993: $f7
	db   $fc                                         ; $4994: $fc
	cp   $f8                                         ; $4995: $fe $f8
	add  h                                           ; $4997: $84
	ld   sp, hl                                      ; $4998: $f9
	add  hl, bc                                      ; $4999: $09
	ld   [de], a                                     ; $499a: $12
	ld   c, $0a                                      ; $499b: $0e $0a
	ld   c, $04                                      ; $499d: $0e $04
	inc  c                                           ; $499f: $0c
	ld   [$3c0c], sp                                 ; $49a0: $08 $0c $3c
	inc  e                                           ; $49a3: $1c
	add  b                                           ; $49a4: $80
	jr   @+$13                                       ; $49a5: $18 $11

	add  hl, bc                                      ; $49a7: $09
	jr   jr_095_4a0a                                 ; $49a8: $18 $60

	jr   c, @-$14                                    ; $49aa: $38 $ea

	nop                                              ; $49ac: $00
	inc  d                                           ; $49ad: $14
	nop                                              ; $49ae: $00
	ld   [$8100], sp                                 ; $49af: $08 $00 $81
	nop                                              ; $49b2: $00
	inc  bc                                          ; $49b3: $03
	ld   bc, $0307                                   ; $49b4: $01 $07 $03
	ld   c, $06                                      ; $49b7: $0e $06
	add  b                                           ; $49b9: $80
	nop                                              ; $49ba: $00
	inc  bc                                          ; $49bb: $03
	ld   b, c                                        ; $49bc: $41
	jr   nc, @-$0c                                   ; $49bd: $30 $f2

	ld   [hl], b                                     ; $49bf: $70
	add  b                                           ; $49c0: $80
	ld   h, b                                        ; $49c1: $60
	ld   a, [bc]                                     ; $49c2: $0a
	call nz, $88c0                                   ; $49c3: $c4 $c0 $88
	add  b                                           ; $49c6: $80
	stop                                             ; $49c7: $10 $00
	jr   nz, jr_095_49cb                             ; $49c9: $20 $00

jr_095_49cb:
	ld   b, b                                        ; $49cb: $40

Call_095_49cc:
	nop                                              ; $49cc: $00
	add  b                                           ; $49cd: $80
	add  c                                           ; $49ce: $81
	nop                                              ; $49cf: $00
	add  hl, bc                                      ; $49d0: $09
	ld   bc, $0300                                   ; $49d1: $01 $00 $03
	ld   bc, $0307                                   ; $49d4: $01 $07 $03
	rrca                                             ; $49d7: $0f
	rlca                                             ; $49d8: $07
	inc  e                                           ; $49d9: $1c
	inc  c                                           ; $49da: $0c
	add  b                                           ; $49db: $80
	nop                                              ; $49dc: $00
	rla                                              ; $49dd: $17
	ld   e, c                                        ; $49de: $59
	jr   c, jr_095_4991                              ; $49df: $38 $b0

	ld   [hl], b                                     ; $49e1: $70
	ld   b, d                                        ; $49e2: $42
	ldh  [$64], a                                    ; $49e3: $e0 $64
	ret  nz                                          ; $49e5: $c0

	ret  z                                           ; $49e6: $c8

	add  b                                           ; $49e7: $80
	stop                                             ; $49e8: $10 $00
	jr   nz, jr_095_49ec                             ; $49ea: $20 $00

jr_095_49ec:
	ld   b, b                                        ; $49ec: $40
	nop                                              ; $49ed: $00
	adc  c                                           ; $49ee: $89
	rlca                                             ; $49ef: $07
	jr   jr_095_4a01                                 ; $49f0: $18 $0f

	ld   a, b                                        ; $49f2: $78
	rra                                              ; $49f3: $1f
	cp   $7f                                         ; $49f4: $fe $7f
	add  b                                           ; $49f6: $80
	ld   a, [hl]                                     ; $49f7: $7e
	add  b                                           ; $49f8: $80
	ld   a, h                                        ; $49f9: $7c
	ld   b, $b8                                      ; $49fa: $06 $b8
	jr   c, @+$43                                    ; $49fc: $38 $41

	nop                                              ; $49fe: $00
	add  $c0                                         ; $49ff: $c6 $c0

jr_095_4a01:
	ret  z                                           ; $4a01: $c8

	add  b                                           ; $4a02: $80
	ret  nz                                          ; $4a03: $c0

	rlca                                             ; $4a04: $07
	add  b                                           ; $4a05: $80
	sub  b                                           ; $4a06: $90
	nop                                              ; $4a07: $00
	jr   nz, jr_095_4a0a                             ; $4a08: $20 $00

jr_095_4a0a:
	ld   b, b                                        ; $4a0a: $40
	nop                                              ; $4a0b: $00
	add  b                                           ; $4a0c: $80
	add  c                                           ; $4a0d: $81
	nop                                              ; $4a0e: $00
	ld   [de], a                                     ; $4a0f: $12
	rst  $38                                         ; $4a10: $ff
	ld   a, h                                        ; $4a11: $7c
	db   $fc                                         ; $4a12: $fc
	ccf                                              ; $4a13: $3f
	ld   h, a                                        ; $4a14: $67
	rra                                              ; $4a15: $1f
	ld   hl, $190f                                   ; $4a16: $21 $0f $19
	rlca                                             ; $4a19: $07
	rrca                                             ; $4a1a: $0f
	ld   bc, $0005                                   ; $4a1b: $01 $05 $00
	inc  bc                                          ; $4a1e: $03
	nop                                              ; $4a1f: $00
	ld   a, a                                        ; $4a20: $7f
	ccf                                              ; $4a21: $3f
	cp   a                                           ; $4a22: $bf
	add  b                                           ; $4a23: $80
	ccf                                              ; $4a24: $3f
	add  b                                           ; $4a25: $80
	cp   a                                           ; $4a26: $bf
	add  b                                           ; $4a27: $80
	pop  hl                                          ; $4a28: $e1
	ld   bc, $f3f1                                   ; $4a29: $01 $f1 $f3
	add  b                                           ; $4a2c: $80
	ldh  a, [rIF]                                    ; $4a2d: $f0 $0f
	ld   h, b                                        ; $4a2f: $60
	ld   h, h                                        ; $4a30: $64
	nop                                              ; $4a31: $00
	rlca                                             ; $4a32: $07
	db   $fd                                         ; $4a33: $fd
	ei                                               ; $4a34: $fb
	rst  $38                                         ; $4a35: $ff
	ei                                               ; $4a36: $fb
	rst  $38                                         ; $4a37: $ff
	ld   sp, hl                                      ; $4a38: $f9
	rst  ToBoot                                         ; $4a39: $c7
	ret  nz                                          ; $4a3a: $c0

	rst  $28                                         ; $4a3b: $ef
	db   $ec                                         ; $4a3c: $ec
	rst  $28                                         ; $4a3d: $ef
	xor  $80                                         ; $4a3e: $ee $80
	rst  $20                                         ; $4a40: $e7
	inc  b                                           ; $4a41: $04
	nop                                              ; $4a42: $00
	ld   a, b                                        ; $4a43: $78
	ld   hl, sp+$7b                                  ; $4a44: $f8 $7b

Call_095_4a46:
	ei                                               ; $4a46: $fb
	add  h                                           ; $4a47: $84
	rst  $38                                         ; $4a48: $ff
	ld   a, [bc]                                     ; $4a49: $0a
	rra                                              ; $4a4a: $1f
	sbc  a                                           ; $4a4b: $9f
	add  a                                           ; $4a4c: $87
	rlca                                             ; $4a4d: $07
	jr   nc, jr_095_4a50                             ; $4a4e: $30 $00

jr_095_4a50:
	ld   a, [hl+]                                    ; $4a50: $2a
	ldh  a, [c]                                      ; $4a51: $f2
	di                                               ; $4a52: $f3
	ld   [hl], e                                     ; $4a53: $73
	push hl                                          ; $4a54: $e5
	add  c                                           ; $4a55: $81
	cp   c                                           ; $4a56: $b9
	nop                                              ; $4a57: $00
	or   d                                           ; $4a58: $b2
	add  c                                           ; $4a59: $81
	cp   h                                           ; $4a5a: $bc
	ld   bc, $beb9                                   ; $4a5b: $01 $b9 $be
	add  b                                           ; $4a5e: $80
	ld   a, [hl]                                     ; $4a5f: $7e
	nop                                              ; $4a60: $00
	jp   nz, $0681                                   ; $4a61: $c2 $81 $06

	dec  b                                           ; $4a64: $05
	add  [hl]                                        ; $4a65: $86
	rlca                                             ; $4a66: $07
	add  a                                           ; $4a67: $87
	add  e                                           ; $4a68: $83
	jp   $8083                                       ; $4a69: $c3 $83 $80


jr_095_4a6c:
	jp   Jump_095_6307                               ; $4a6c: $c3 $07 $63


	ld   b, e                                        ; $4a6f: $43
	ld   h, e                                        ; $4a70: $63
	ld   h, c                                        ; $4a71: $61
	inc  de                                          ; $4a72: $13
	ld   sp, hl                                      ; $4a73: $f9
	ldh  a, [c]                                      ; $4a74: $f2
	db   $fc                                         ; $4a75: $fc
	add  h                                           ; $4a76: $84
	ld   a, h                                        ; $4a77: $7c
	ld   [bc], a                                     ; $4a78: $02
	ld   a, c                                        ; $4a79: $79
	ld   a, [hl]                                     ; $4a7a: $7e
	ld   a, $81                                      ; $4a7b: $3e $81
	cp   [hl]                                        ; $4a7d: $be
	nop                                              ; $4a7e: $00
	add  d                                           ; $4a7f: $82
	add  l                                           ; $4a80: $85
	nop                                              ; $4a81: $00
	nop                                              ; $4a82: $00
	ld   bc, $0085                                   ; $4a83: $01 $85 $00
	rlca                                             ; $4a86: $07
	ld   c, a                                        ; $4a87: $4f
	jr   nc, jr_095_4abc                             ; $4a88: $30 $32

	jr   nc, jr_095_4a6c                             ; $4a8a: $30 $e0

	ld   h, b                                        ; $4a8c: $60
	ld   h, h                                        ; $4a8d: $64
	ld   h, b                                        ; $4a8e: $60
	add  b                                           ; $4a8f: $80
	ret  nz                                          ; $4a90: $c0

	ld   bc, $c0c8                                   ; $4a91: $01 $c8 $c0
	add  b                                           ; $4a94: $80
	add  c                                           ; $4a95: $81
	inc  b                                           ; $4a96: $04
	ld   d, $06                                      ; $4a97: $16 $06
	rst  $20                                         ; $4a99: $e7
	nop                                              ; $4a9a: $00
	rlca                                             ; $4a9b: $07
	add  a                                           ; $4a9c: $87
	nop                                              ; $4a9d: $00
	add  d                                           ; $4a9e: $82
	rst  $38                                         ; $4a9f: $ff
	add  h                                           ; $4aa0: $84
	nop                                              ; $4aa1: $00
	nop                                              ; $4aa2: $00
	dec  d                                           ; $4aa3: $15
	add  b                                           ; $4aa4: $80
	dec  e                                           ; $4aa5: $1d
	add  hl, bc                                      ; $4aa6: $09
	rla                                              ; $4aa7: $17
	ld   de, $d413                                   ; $4aa8: $11 $13 $d4
	or   $57                                         ; $4aab: $f6 $57
	push af                                          ; $4aad: $f5
	adc  [hl]                                        ; $4aae: $8e
	nop                                              ; $4aaf: $00
	ld   c, $81                                      ; $4ab0: $0e $81
	nop                                              ; $4ab2: $00
	ld   a, [bc]                                     ; $4ab3: $0a
	ld   d, b                                        ; $4ab4: $50
	ret  c                                           ; $4ab5: $d8

	and  b                                           ; $4ab6: $a0
	ld   a, h                                        ; $4ab7: $7c
	ld   [de], a                                     ; $4ab8: $12
	ld   h, h                                        ; $4ab9: $64
	add  hl, bc                                      ; $4aba: $09
	cpl                                              ; $4abb: $2f

jr_095_4abc:
	dec  b                                           ; $4abc: $05
	xor  e                                           ; $4abd: $ab
	xor  d                                           ; $4abe: $aa
	adc  c                                           ; $4abf: $89
	nop                                              ; $4ac0: $00
	add  b                                           ; $4ac1: $80
	rst  $38                                         ; $4ac2: $ff
	inc  b                                           ; $4ac3: $04
	ld   de, $f2ff                                   ; $4ac4: $11 $ff $f2
	nop                                              ; $4ac7: $00
	inc  e                                           ; $4ac8: $1c
	add  a                                           ; $4ac9: $87
	nop                                              ; $4aca: $00
	ld   [bc], a                                     ; $4acb: $02
	call nc, $2bff                                   ; $4acc: $d4 $ff $2b
	add  b                                           ; $4acf: $80
	rst  $38                                         ; $4ad0: $ff
	adc  c                                           ; $4ad1: $89
	nop                                              ; $4ad2: $00
	add  b                                           ; $4ad3: $80
	rst  $38                                         ; $4ad4: $ff
	ld   [bc], a                                     ; $4ad5: $02
	ld   [hl], a                                     ; $4ad6: $77
	rst  $38                                         ; $4ad7: $ff
	adc  b                                           ; $4ad8: $88
	adc  c                                           ; $4ad9: $89
	nop                                              ; $4ada: $00
	add  b                                           ; $4adb: $80
	rst  $38                                         ; $4adc: $ff
	inc  b                                           ; $4add: $04
	xor  d                                           ; $4ade: $aa
	rst  $38                                         ; $4adf: $ff
	ld   h, l                                        ; $4ae0: $65
	nop                                              ; $4ae1: $00
	jr   nc, @-$77                                   ; $4ae2: $30 $87

	nop                                              ; $4ae4: $00
	add  b                                           ; $4ae5: $80
	rst  $38                                         ; $4ae6: $ff
	dec  b                                           ; $4ae7: $05
	adc  b                                           ; $4ae8: $88
	rst  $38                                         ; $4ae9: $ff
	add  h                                           ; $4aea: $84
	nop                                              ; $4aeb: $00
	di                                               ; $4aec: $f3
	nop                                              ; $4aed: $00
	add  d                                           ; $4aee: $82
	ld   bc, $0f80                                   ; $4aef: $01 $80 $0f
	add  b                                           ; $4af2: $80
	ld   [$f81c], sp                                 ; $4af3: $08 $1c $f8
	db   $fc                                         ; $4af6: $fc
	inc  b                                           ; $4af7: $04
	rst  $38                                         ; $4af8: $ff
	ld   a, a                                        ; $4af9: $7f
	inc  bc                                          ; $4afa: $03
	inc  hl                                          ; $4afb: $23
	pop  bc                                          ; $4afc: $c1
	ld   d, c                                        ; $4afd: $51
	add  b                                           ; $4afe: $80
	xor  b                                           ; $4aff: $a8
	nop                                              ; $4b00: $00
	inc  b                                           ; $4b01: $04
	nop                                              ; $4b02: $00
	ld   e, $a0                                      ; $4b03: $1e $a0
	and  c                                           ; $4b05: $a1
	ld   b, h                                        ; $4b06: $44
	ld   b, a                                        ; $4b07: $47
	rst  $38                                         ; $4b08: $ff
	pop  hl                                          ; $4b09: $e1
	cp   a                                           ; $4b0a: $bf
	xor  [hl]                                        ; $4b0b: $ae
	rst  JumpTable                                         ; $4b0c: $df
	rst  $10                                         ; $4b0d: $d7
	rst  $28                                         ; $4b0e: $ef
	db   $eb                                         ; $4b0f: $eb
	ld   [hl], a                                     ; $4b10: $77
	ld   [hl], h                                     ; $4b11: $74
	add  b                                           ; $4b12: $80
	dec  sp                                          ; $4b13: $3b
	add  hl, de                                      ; $4b14: $19
	inc  e                                           ; $4b15: $1c
	dec  e                                           ; $4b16: $1d
	ld   c, $cb                                      ; $4b17: $0e $cb
	inc  bc                                          ; $4b19: $03
	add  a                                           ; $4b1a: $87
	ld   sp, $9951                                   ; $4b1b: $31 $51 $99
	add  hl, hl                                      ; $4b1e: $29
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b1f: $cf
	sub  a                                           ; $4b20: $97
	rst  $20                                         ; $4b21: $e7
	db   $dd                                         ; $4b22: $dd
	pop  af                                          ; $4b23: $f1
	rra                                              ; $4b24: $1f
	db   $fc                                         ; $4b25: $fc
	ldh  [$1f], a                                    ; $4b26: $e0 $1f
	ld   a, a                                        ; $4b28: $7f
	add  b                                           ; $4b29: $80
	call c, $bcbe                                    ; $4b2a: $dc $be $bc
	cp   a                                           ; $4b2d: $bf
	sbc  a                                           ; $4b2e: $9f
	add  c                                           ; $4b2f: $81
	rst  JumpTable                                         ; $4b30: $df
	dec  bc                                          ; $4b31: $0b
	db   $dd                                         ; $4b32: $dd
	rst  JumpTable                                         ; $4b33: $df
	di                                               ; $4b34: $f3
	inc  a                                           ; $4b35: $3c
	rrca                                             ; $4b36: $0f
	ldh  a, [$fd]                                    ; $4b37: $f0 $fd
	ld   bc, $09c6                                   ; $4b39: $01 $c6 $09
	rrc  e                                           ; $4b3c: $cb $0b
	add  b                                           ; $4b3e: $80
	rla                                              ; $4b3f: $17
	add  b                                           ; $4b40: $80
	ld   d, $03                                      ; $4b41: $16 $03
	inc  c                                           ; $4b43: $0c
	inc  e                                           ; $4b44: $1c
	inc  c                                           ; $4b45: $0c
	inc  e                                           ; $4b46: $1c
	add  b                                           ; $4b47: $80
	ld   [hl+], a                                    ; $4b48: $22
	inc  bc                                          ; $4b49: $03
	ld   de, $e031                                   ; $4b4a: $11 $31 $e0
	ret  nz                                          ; $4b4d: $c0

	add  h                                           ; $4b4e: $84
	rst  $38                                         ; $4b4f: $ff
	add  d                                           ; $4b50: $82
	ld   a, a                                        ; $4b51: $7f
	add  b                                           ; $4b52: $80
	adc  a                                           ; $4b53: $8f
	add  b                                           ; $4b54: $80
	rra                                              ; $4b55: $1f
	add  b                                           ; $4b56: $80
	nop                                              ; $4b57: $00
	ld   l, $65                                      ; $4b58: $2e $65
	push hl                                          ; $4b5a: $e5
	ld   b, h                                        ; $4b5b: $44
	db   $e4                                         ; $4b5c: $e4
	ld   h, d                                        ; $4b5d: $62
	jp   z, $c840                                    ; $4b5e: $ca $40 $c8

	inc  h                                           ; $4b61: $24
	xor  h                                           ; $4b62: $ac
	ld   b, l                                        ; $4b63: $45
	db   $ed                                         ; $4b64: $ed
	ld   b, e                                        ; $4b65: $43
	db   $eb                                         ; $4b66: $eb
	adc  b                                           ; $4b67: $88
	ld   bc, $9310                                   ; $4b68: $01 $10 $93
	add  b                                           ; $4b6b: $80
	rla                                              ; $4b6c: $17
	ld   d, b                                        ; $4b6d: $50
	rst  ToBoot                                         ; $4b6e: $c7
	adc  b                                           ; $4b6f: $88
	rrca                                             ; $4b70: $0f
	ld   b, b                                        ; $4b71: $40
	ld   c, a                                        ; $4b72: $4f
	ld   [$0407], sp                                 ; $4b73: $08 $07 $04
	inc  hl                                          ; $4b76: $23

jr_095_4b77:
	ld   h, [hl]                                     ; $4b77: $66
	db   $fd                                         ; $4b78: $fd
	xor  c                                           ; $4b79: $a9
	ldh  a, [hScriptOpcodeParams+4]                                    ; $4b7a: $f0 $a4
	db   $fd                                         ; $4b7c: $fd
	xor  b                                           ; $4b7d: $a8
	ld   sp, hl                                      ; $4b7e: $f9
	add  sp, $3b                                     ; $4b7f: $e8 $3b
	ld   a, [hl+]                                    ; $4b81: $2a
	inc  sp                                          ; $4b82: $33
	ld   h, d                                        ; $4b83: $62

jr_095_4b84:
	ei                                               ; $4b84: $fb
	xor  d                                           ; $4b85: $aa
	ei                                               ; $4b86: $fb
	ld   [$be80], a                                  ; $4b87: $ea $80 $be
	add  b                                           ; $4b8a: $80
	dec  c                                           ; $4b8b: $0d
	add  b                                           ; $4b8c: $80
	cp   [hl]                                        ; $4b8d: $be
	add  b                                           ; $4b8e: $80
	ld   a, l                                        ; $4b8f: $7d
	add  b                                           ; $4b90: $80
	inc  e                                           ; $4b91: $1c
	add  b                                           ; $4b92: $80
	ld   a, [hl]                                     ; $4b93: $7e
	add  b                                           ; $4b94: $80
	ld   l, h                                        ; $4b95: $6c
	ld   sp, $d30e                                   ; $4b96: $31 $0e $d3
	rst  $38                                         ; $4b99: $ff
	ld   h, l                                        ; $4b9a: $65
	ld   b, a                                        ; $4b9b: $47
	push de                                          ; $4b9c: $d5
	rst  $10                                         ; $4b9d: $d7
	ld   b, l                                        ; $4b9e: $45
	ld   b, a                                        ; $4b9f: $47
	ld   d, l                                        ; $4ba0: $55
	ld   d, a                                        ; $4ba1: $57
	ld   b, l                                        ; $4ba2: $45
	rst  ToBoot                                         ; $4ba3: $c7
	push de                                          ; $4ba4: $d5

jr_095_4ba5:
	ld   d, a                                        ; $4ba5: $57
	ld   bc, $c583                                   ; $4ba6: $01 $83 $c5
	rst  $28                                         ; $4ba9: $ef
	jr   nz, @-$6f                                   ; $4baa: $20 $8f

	ld   b, b                                        ; $4bac: $40
	rst  $28                                         ; $4bad: $ef
	jr   z, jr_095_4b77                              ; $4bae: $28 $c7

	db   $10                                         ; $4bb0: $10
	rst  $10                                         ; $4bb1: $d7
	nop                                              ; $4bb2: $00
	sub  e                                           ; $4bb3: $93
	nop                                              ; $4bb4: $00

jr_095_4bb5:
	cp   c                                           ; $4bb5: $b9
	add  b                                           ; $4bb6: $80
	ld   a, l                                        ; $4bb7: $7d
	ld   d, a                                        ; $4bb8: $57
	adc  d                                           ; $4bb9: $8a
	ld   [$20a0], sp                                 ; $4bba: $08 $a0 $20
	sbc  c                                           ; $4bbd: $99
	add  hl, de                                      ; $4bbe: $19
	and  l                                           ; $4bbf: $a5
	rlca                                             ; $4bc0: $07
	xor  d                                           ; $4bc1: $aa
	ld   [$3694], sp                                 ; $4bc2: $08 $94 $36
	or   d                                           ; $4bc5: $b2
	jr   jr_095_4b84                                 ; $4bc6: $18 $bc

	inc  [hl]                                        ; $4bc8: $34
	add  b                                           ; $4bc9: $80
	xor  $80                                         ; $4bca: $ee $80
	ld   l, h                                        ; $4bcc: $6c
	add  b                                           ; $4bcd: $80
	db   $ec                                         ; $4bce: $ec
	add  b                                           ; $4bcf: $80
	ld   l, a                                        ; $4bd0: $6f
	add  b                                           ; $4bd1: $80
	rst  $28                                         ; $4bd2: $ef
	add  b                                           ; $4bd3: $80
	ld   l, a                                        ; $4bd4: $6f
	add  b                                           ; $4bd5: $80
	rst  $38                                         ; $4bd6: $ff
	add  b                                           ; $4bd7: $80
	rst  $28                                         ; $4bd8: $ef
	add  b                                           ; $4bd9: $80
	ld   c, a                                        ; $4bda: $4f
	add  b                                           ; $4bdb: $80
	ld   b, a                                        ; $4bdc: $47
	add  b                                           ; $4bdd: $80
	rst  $20                                         ; $4bde: $e7
	add  a                                           ; $4bdf: $87
	rst  $38                                         ; $4be0: $ff
	inc  bc                                          ; $4be1: $03
	sbc  $c0                                         ; $4be2: $de $c0
	pop  de                                          ; $4be4: $d1
	ret  nz                                          ; $4be5: $c0

	add  b                                           ; $4be6: $80
	ldh  [rP1], a                                    ; $4be7: $e0 $00
	add  sp, -$7d                                    ; $4be9: $e8 $83
	ldh  [$80], a                                    ; $4beb: $e0 $80
	ret  nz                                          ; $4bed: $c0

	ld   [$c0c8], sp                                 ; $4bee: $08 $c8 $c0
	rst  $38                                         ; $4bf1: $ff
	ldh  a, [$bf]                                    ; $4bf2: $f0 $bf
	ccf                                              ; $4bf4: $3f
	ld   h, b                                        ; $4bf5: $60
	nop                                              ; $4bf6: $00
	rra                                              ; $4bf7: $1f
	add  a                                           ; $4bf8: $87
	nop                                              ; $4bf9: $00
	ld   bc, $06f9                                   ; $4bfa: $01 $f9 $06
	add  b                                           ; $4bfd: $80
	ld   hl, sp+$02                                  ; $4bfe: $f8 $02
	inc  bc                                          ; $4c00: $03
	nop                                              ; $4c01: $00
	db   $fc                                         ; $4c02: $fc
	add  a                                           ; $4c03: $87
	nop                                              ; $4c04: $00
	inc  c                                           ; $4c05: $0c
	rra                                              ; $4c06: $1f
	rrca                                             ; $4c07: $0f
	add  hl, de                                      ; $4c08: $19
	add  hl, bc                                      ; $4c09: $09
	ld   de, $1210                                   ; $4c0a: $11 $10 $12
	db   $10                                         ; $4c0d: $10
	inc  c                                           ; $4c0e: $0c
	db   $10                                         ; $4c0f: $10
	ld   de, $0e00                                   ; $4c10: $11 $00 $0e
	add  c                                           ; $4c13: $81
	nop                                              ; $4c14: $00
	add  b                                           ; $4c15: $80
	rst  $38                                         ; $4c16: $ff
	ld   a, [bc]                                     ; $4c17: $0a
	ccf                                              ; $4c18: $3f
	nop                                              ; $4c19: $00
	jr   nz, jr_095_4c1c                             ; $4c1a: $20 $00

jr_095_4c1c:
	add  a                                           ; $4c1c: $87
	nop                                              ; $4c1d: $00
	ldh  [rP1], a                                    ; $4c1e: $e0 $00
	ld   c, b                                        ; $4c20: $48
	nop                                              ; $4c21: $00
	jr   nc, jr_095_4ba5                             ; $4c22: $30 $81

	nop                                              ; $4c24: $00
	ld   a, [bc]                                     ; $4c25: $0a
	call nc, $c6f4                                   ; $4c26: $d4 $f4 $c6
	ld   a, [hl+]                                    ; $4c29: $2a
	inc  de                                          ; $4c2a: $13
	jr   nc, @-$2c                                   ; $4c2b: $30 $d2

	nop                                              ; $4c2d: $00
	dec  h                                           ; $4c2e: $25
	nop                                              ; $4c2f: $00
	jr   jr_095_4bb5                                 ; $4c30: $18 $83

	nop                                              ; $4c32: $00
	ld   a, [bc]                                     ; $4c33: $0a
	ld   [hl+], a                                    ; $4c34: $22
	ld   [hl], a                                     ; $4c35: $77
	ld   [hl+], a                                    ; $4c36: $22
	call c, $0854                                    ; $4c37: $dc $54 $08
	add  hl, de                                      ; $4c3a: $19
	nop                                              ; $4c3b: $00
	ld   [$0400], a                                  ; $4c3c: $ea $00 $04
	add  e                                           ; $4c3f: $83
	nop                                              ; $4c40: $00
	ld   [bc], a                                     ; $4c41: $02
	ld   b, h                                        ; $4c42: $44
	rst  $38                                         ; $4c43: $ff
	ld   b, h                                        ; $4c44: $44
	add  c                                           ; $4c45: $81
	nop                                              ; $4c46: $00
	nop                                              ; $4c47: $00
	rst  $38                                         ; $4c48: $ff
	adc  b                                           ; $4c49: $88
	nop                                              ; $4c4a: $00
	nop                                              ; $4c4b: $00
	rst  $38                                         ; $4c4c: $ff
	add  d                                           ; $4c4d: $82
	nop                                              ; $4c4e: $00
	nop                                              ; $4c4f: $00
	rst  $38                                         ; $4c50: $ff
	add  a                                           ; $4c51: $87
	nop                                              ; $4c52: $00
	ld   [bc], a                                     ; $4c53: $02
	db   $dd                                         ; $4c54: $dd
	rst  $38                                         ; $4c55: $ff
	db   $dd                                         ; $4c56: $dd
	add  c                                           ; $4c57: $81
	nop                                              ; $4c58: $00
	nop                                              ; $4c59: $00
	rst  $38                                         ; $4c5a: $ff
	add  a                                           ; $4c5b: $87
	nop                                              ; $4c5c: $00
	ld   [bc], a                                     ; $4c5d: $02
	ld   d, l                                        ; $4c5e: $55
	rst  $38                                         ; $4c5f: $ff
	ld   d, l                                        ; $4c60: $55
	add  c                                           ; $4c61: $81
	nop                                              ; $4c62: $00
	nop                                              ; $4c63: $00
	rst  $38                                         ; $4c64: $ff
	add  a                                           ; $4c65: $87
	nop                                              ; $4c66: $00
	ld   b, $f0                                      ; $4c67: $06 $f0
	nop                                              ; $4c69: $00
	stop                                             ; $4c6a: $10 $00
	ld   h, b                                        ; $4c6c: $60
	nop                                              ; $4c6d: $00
	add  b                                           ; $4c6e: $80
	sub  d                                           ; $4c6f: $92
	nop                                              ; $4c70: $00
	add  d                                           ; $4c71: $82
	rst  $38                                         ; $4c72: $ff
	adc  d                                           ; $4c73: $8a
	nop                                              ; $4c74: $00
	add  b                                           ; $4c75: $80
	ldh  [$0b], a                                    ; $4c76: $e0 $0b
	db   $fc                                         ; $4c78: $fc
	db   $ec                                         ; $4c79: $ec
	rrca                                             ; $4c7a: $0f
	ldh  [rIE], a                                    ; $4c7b: $e0 $ff
	pop  hl                                          ; $4c7d: $e1
	rst  $38                                         ; $4c7e: $ff
	adc  $f0                                         ; $4c7f: $ce $f0
	rst  $28                                         ; $4c81: $ef
	ldh  [$cb], a                                    ; $4c82: $e0 $cb

jr_095_4c84:
	add  l                                           ; $4c84: $85
	di                                               ; $4c85: $f3
	ld   a, [bc]                                     ; $4c86: $0a
	push af                                          ; $4c87: $f5
	pop  hl                                          ; $4c88: $e1
	ei                                               ; $4c89: $fb
	db   $fc                                         ; $4c8a: $fc
	ld   a, d                                        ; $4c8b: $7a
	ld   a, a                                        ; $4c8c: $7f
	cp   [hl]                                        ; $4c8d: $be
	ccf                                              ; $4c8e: $3f
	sbc  a                                           ; $4c8f: $9f
	rst  JumpTable                                         ; $4c90: $df
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4c91: $cf
	add  c                                           ; $4c92: $81
	rst  $28                                         ; $4c93: $ef
	ld   [de], a                                     ; $4c94: $12
	rst  $20                                         ; $4c95: $e7
	rst  $30                                         ; $4c96: $f7
	ldh  a, [$c0]                                    ; $4c97: $f0 $c0
	ld   b, b                                        ; $4c99: $40
	ld   h, b                                        ; $4c9a: $60
	and  b                                           ; $4c9b: $a0
	jr   nc, jr_095_4cee                             ; $4c9c: $30 $50

	sbc  b                                           ; $4c9e: $98
	inc  l                                           ; $4c9f: $2c
	ret  z                                           ; $4ca0: $c8

	sub  h                                           ; $4ca1: $94
	db   $e4                                         ; $4ca2: $e4
	and  $e4                                         ; $4ca3: $e6 $e4
	jp   z, $e4f2                                    ; $4ca5: $ca $f2 $e4

	add  l                                           ; $4ca8: $85
	ld   sp, hl                                      ; $4ca9: $f9
	nop                                              ; $4caa: $00
	ldh  a, [c]                                      ; $4cab: $f2
	add  l                                           ; $4cac: $85
	db   $fc                                         ; $4cad: $fc
	nop                                              ; $4cae: $00
	ld   [bc], a                                     ; $4caf: $02
	add  c                                           ; $4cb0: $81
	rst  $30                                         ; $4cb1: $f7
	nop                                              ; $4cb2: $00
	di                                               ; $4cb3: $f3
	add  d                                           ; $4cb4: $82
	ei                                               ; $4cb5: $fb
	add  b                                           ; $4cb6: $80
	ld   sp, hl                                      ; $4cb7: $f9
	add  c                                           ; $4cb8: $81
	ld   hl, sp+$02                                  ; $4cb9: $f8 $02
	db   $fc                                         ; $4cbb: $fc
	ldh  a, [rAUD1ENV]                               ; $4cbc: $f0 $12
	add  [hl]                                        ; $4cbe: $86
	ldh  a, [c]                                      ; $4cbf: $f2
	add  b                                           ; $4cc0: $80
	or   d                                           ; $4cc1: $b2
	ld   [bc], a                                     ; $4cc2: $02
	ld   [de], a                                     ; $4cc3: $12
	ld   a, [de]                                     ; $4cc4: $1a
	ld   [bc], a                                     ; $4cc5: $02
	add  b                                           ; $4cc6: $80
	ld   b, $04                                      ; $4cc7: $06 $04
	sub  a                                           ; $4cc9: $97
	ld   a, [hl]                                     ; $4cca: $7e
	ld   sp, hl                                      ; $4ccb: $f9
	rst  $38                                         ; $4ccc: $ff
	ld   a, h                                        ; $4ccd: $7c
	add  c                                           ; $4cce: $81
	ld   a, [hl]                                     ; $4ccf: $7e
	ld   [bc], a                                     ; $4cd0: $02
	cp   l                                           ; $4cd1: $bd
	jr   nc, jr_095_4c84                             ; $4cd2: $30 $b0

	add  b                                           ; $4cd4: $80
	and  b                                           ; $4cd5: $a0
	add  b                                           ; $4cd6: $80
	or   b                                           ; $4cd7: $b0
	ld   [bc], a                                     ; $4cd8: $02
	cp   b                                           ; $4cd9: $b8
	adc  b                                           ; $4cda: $88
	ld   [$f880], sp                                 ; $4cdb: $08 $80 $f8
	add  b                                           ; $4cde: $80
	ld   [$f404], sp                                 ; $4cdf: $08 $04 $f4
	nop                                              ; $4ce2: $00
	or   [hl]                                        ; $4ce3: $b6
	jr   c, jr_095_4d23                              ; $4ce4: $38 $3d

	add  b                                           ; $4ce6: $80
	ld   a, $81                                      ; $4ce7: $3e $81
	ccf                                              ; $4ce9: $3f
	db   $10                                         ; $4cea: $10
	and  h                                           ; $4ceb: $a4
	inc  b                                           ; $4cec: $04
	db   $ed                                         ; $4ced: $ed

jr_095_4cee:
	inc  c                                           ; $4cee: $0c
	or   $06                                         ; $4cef: $f6 $06
	ld   a, [hl+]                                    ; $4cf1: $2a
	inc  de                                          ; $4cf2: $13
	dec  b                                           ; $4cf3: $05
	add  hl, de                                      ; $4cf4: $19
	ld   [de], a                                     ; $4cf5: $12
	inc  e                                           ; $4cf6: $1c
	sbc  e                                           ; $4cf7: $9b

jr_095_4cf8:
	jr   nc, @+$33                                   ; $4cf8: $30 $31

	ld   h, b                                        ; $4cfa: $60
	rra                                              ; $4cfb: $1f
	add  [hl]                                        ; $4cfc: $86
	nop                                              ; $4cfd: $00
	add  b                                           ; $4cfe: $80

Jump_095_4cff:
	add  b                                           ; $4cff: $80
	dec  b                                           ; $4d00: $05
	ret  nz                                          ; $4d01: $c0

	ld   b, b                                        ; $4d02: $40
	ld   h, b                                        ; $4d03: $60
	or   b                                           ; $4d04: $b0
	jr   nz, jr_095_4d76                             ; $4d05: $20 $6f

	add  b                                           ; $4d07: $80
	ret  nz                                          ; $4d08: $c0

	add  b                                           ; $4d09: $80
	ret  nc                                          ; $4d0a: $d0

	add  b                                           ; $4d0b: $80

jr_095_4d0c:
	ret  c                                           ; $4d0c: $d8

	ld   [bc], a                                     ; $4d0d: $02
	sbc  $ce                                         ; $4d0e: $de $ce
	rst  $28                                         ; $4d10: $ef
	add  c                                           ; $4d11: $81
	ld   l, a                                        ; $4d12: $6f
	add  c                                           ; $4d13: $81
	ld   l, [hl]                                     ; $4d14: $6e
	nop                                              ; $4d15: $00
	ld   b, c                                        ; $4d16: $41
	add  l                                           ; $4d17: $85
	rra                                              ; $4d18: $1f
	ld   [bc], a                                     ; $4d19: $02
	cpl                                              ; $4d1a: $2f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d1b: $cf
	adc  a                                           ; $4d1c: $8f
	add  e                                           ; $4d1d: $83
	rrca                                             ; $4d1e: $0f
	nop                                              ; $4d1f: $00
	ldh  [$82], a                                    ; $4d20: $e0 $82
	add  b                                           ; $4d22: $80

jr_095_4d23:
	ld   bc, $80a0                                   ; $4d23: $01 $a0 $80
	add  b                                           ; $4d26: $80
	ret  c                                           ; $4d27: $d8

	add  b                                           ; $4d28: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4d29: $cf
	ld   bc, $d3c3                                   ; $4d2a: $01 $c3 $d3
	add  b                                           ; $4d2d: $80
	pop  hl                                          ; $4d2e: $e1
	inc  b                                           ; $4d2f: $04
	ldh  [$af], a                                    ; $4d30: $e0 $af
	jr   nc, jr_095_4d0c                             ; $4d32: $30 $d8

	db   $10                                         ; $4d34: $10
	add  b                                           ; $4d35: $80
	jr   @+$04                                       ; $4d36: $18 $02

	ld   l, h                                        ; $4d38: $6c
	ld   [$8548], sp                                 ; $4d39: $08 $48 $85
	ret  z                                           ; $4d3c: $c8

	ld   [bc], a                                     ; $4d3d: $02
	db   $db                                         ; $4d3e: $db
	ld   [hl], h                                     ; $4d3f: $74
	or   h                                           ; $4d40: $b4
	add  c                                           ; $4d41: $81
	inc  [hl]                                        ; $4d42: $34
	ld   a, [bc]                                     ; $4d43: $0a
	jr   nc, jr_095_4d79                             ; $4d44: $30 $33

	scf                                              ; $4d46: $37
	rlca                                             ; $4d47: $07
	add  b                                           ; $4d48: $80
	rra                                              ; $4d49: $1f
	ld   e, a                                        ; $4d4a: $5f
	ld   b, b                                        ; $4d4b: $40
	rst  JumpTable                                         ; $4d4c: $df
	ldh  [rAUD2ENV], a                               ; $4d4d: $e0 $17
	add  e                                           ; $4d4f: $83
	rlca                                             ; $4d50: $07
	inc  b                                           ; $4d51: $04
	rra                                              ; $4d52: $1f
	nop                                              ; $4d53: $00
	rrca                                             ; $4d54: $0f
	ccf                                              ; $4d55: $3f
	ret  nz                                          ; $4d56: $c0

	add  b                                           ; $4d57: $80
	rst  $38                                         ; $4d58: $ff
	inc  bc                                          ; $4d59: $03
	nop                                              ; $4d5a: $00
	rst  $38                                         ; $4d5b: $ff
	nop                                              ; $4d5c: $00
	ldh  a, [$81]                                    ; $4d5d: $f0 $81
	ldh  [$15], a                                    ; $4d5f: $e0 $15
	ldh  a, [$c0]                                    ; $4d61: $f0 $c0
	ldh  [$30], a                                    ; $4d63: $e0 $30
	ei                                               ; $4d65: $fb
	ld   hl, sp+$0f                                  ; $4d66: $f8 $0f
	ldh  a, [$fd]                                    ; $4d68: $f0 $fd
	ld   bc, $06f6                                   ; $4d6a: $01 $f6 $06
	ld   l, e                                        ; $4d6d: $6b
	ret  z                                           ; $4d6e: $c8

	ldh  [rP1], a                                    ; $4d6f: $e0 $00
	inc  d                                           ; $4d71: $14
	db   $10                                         ; $4d72: $10
	ret  nz                                          ; $4d73: $c0

	nop                                              ; $4d74: $00
	xor  b                                           ; $4d75: $a8

jr_095_4d76:
	jr   nz, jr_095_4cf8                             ; $4d76: $20 $80

	ld   b, b                                        ; $4d78: $40

jr_095_4d79:
	ld   [$8090], sp                                 ; $4d79: $08 $90 $80
	jr   nz, jr_095_4d7e                             ; $4d7c: $20 $00

jr_095_4d7e:
	ret  nz                                          ; $4d7e: $c0

	rst  $38                                         ; $4d7f: $ff
	add  b                                           ; $4d80: $80
	nop                                              ; $4d81: $00
	ld   a, a                                        ; $4d82: $7f
	adc  d                                           ; $4d83: $8a
	nop                                              ; $4d84: $00
	nop                                              ; $4d85: $00
	rst  $38                                         ; $4d86: $ff
	add  b                                           ; $4d87: $80
	nop                                              ; $4d88: $00
	nop                                              ; $4d89: $00
	rst  $38                                         ; $4d8a: $ff
	adc  c                                           ; $4d8b: $89
	nop                                              ; $4d8c: $00
	ld   a, [bc]                                     ; $4d8d: $0a
	rlca                                             ; $4d8e: $07
	ld   hl, sp+$03                                  ; $4d8f: $f8 $03
	nop                                              ; $4d91: $00
	db   $fc                                         ; $4d92: $fc
	nop                                              ; $4d93: $00
	ei                                               ; $4d94: $fb
	nop                                              ; $4d95: $00
	ret  c                                           ; $4d96: $d8

	nop                                              ; $4d97: $00
	ld   bc, $0081                                   ; $4d98: $01 $81 $00
	ld   a, a                                        ; $4d9b: $7f
	ld   [hl+], a                                    ; $4d9c: $22
	nop                                              ; $4d9d: $00
	or   c                                           ; $4d9e: $b1
	pop  af                                          ; $4d9f: $f1
	sbc  d                                           ; $4da0: $9a
	cp   $c7                                         ; $4da1: $fe $c7
	and  e                                           ; $4da3: $a3
	xor  c                                           ; $4da4: $a9
	rst  $38                                         ; $4da5: $ff
	ld   b, [hl]                                     ; $4da6: $46
	db   $fc                                         ; $4da7: $fc
	add  c                                           ; $4da8: $81
	rst  $38                                         ; $4da9: $ff
	xor  b                                           ; $4daa: $a8
	db   $dd                                         ; $4dab: $dd
	ld   [hl], d                                     ; $4dac: $72
	xor  a                                           ; $4dad: $af
	xor  h                                           ; $4dae: $ac
	rst  $38                                         ; $4daf: $ff
	ld   b, h                                        ; $4db0: $44
	db   $fd                                         ; $4db1: $fd
	ld   h, $fe                                      ; $4db2: $26 $fe
	xor  c                                           ; $4db4: $a9
	db   $fd                                         ; $4db5: $fd
	ld   c, b                                        ; $4db6: $48

jr_095_4db7:
	ld   e, [hl]                                     ; $4db7: $5e
	and  d                                           ; $4db8: $a2
	xor  a                                           ; $4db9: $af
	jp   c, $7cdf                                    ; $4dba: $da $df $7c

	cp   $3f                                         ; $4dbd: $fe $3f
	rst  $38                                         ; $4dbf: $ff
	dec  c                                           ; $4dc0: $0d
	db   $fd                                         ; $4dc1: $fd
	ld   l, l                                        ; $4dc2: $6d
	rst  $28                                         ; $4dc3: $ef
	ld   d, b                                        ; $4dc4: $50
	ld   a, [hl]                                     ; $4dc5: $7e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4dc6: $cf
	db   $fd                                         ; $4dc7: $fd
	and  c                                           ; $4dc8: $a1
	rst  $38                                         ; $4dc9: $ff
	xor  l                                           ; $4dca: $ad
	ld   a, [$b5fd]                                  ; $4dcb: $fa $fd $b5
	add  hl, bc                                      ; $4dce: $09
	rst  $30                                         ; $4dcf: $f7
	ld   a, e                                        ; $4dd0: $7b
	ei                                               ; $4dd1: $fb
	ld   l, h                                        ; $4dd2: $6c
	cp   l                                           ; $4dd3: $bd
	sub  a                                           ; $4dd4: $97
	rst  $30                                         ; $4dd5: $f7
	inc  bc                                          ; $4dd6: $03
	ld   a, [$ff0e]                                  ; $4dd7: $fa $0e $ff
	add  [hl]                                        ; $4dda: $86
	rst  $30                                         ; $4ddb: $f7
	ld   b, h                                        ; $4ddc: $44
	ld   h, d                                        ; $4ddd: $62
	jp   $5473                               ; $4dde: $c3 $73 $54


	ld   sp, hl                                      ; $4de1: $f9
	add  $7b                                         ; $4de2: $c6 $7b
	ld   c, $fe                                      ; $4de4: $0e $fe
	adc  c                                           ; $4de6: $89
	ld   a, a                                        ; $4de7: $7f
	ret  nz                                          ; $4de8: $c0

	rst  $38                                         ; $4de9: $ff
	db   $fd                                         ; $4dea: $fd
	rst  $28                                         ; $4deb: $ef
	call Call_095_4a46                               ; $4dec: $cd $46 $4a
	push af                                          ; $4def: $f5
	adc  d                                           ; $4df0: $8a
	jp   c, Jump_095_77e1                            ; $4df1: $da $e1 $77

	ld   l, e                                        ; $4df4: $6b
	rst  $38                                         ; $4df5: $ff
	ld   b, h                                        ; $4df6: $44
	rst  $38                                         ; $4df7: $ff
	ld   e, b                                        ; $4df8: $58
	cp   $55                                         ; $4df9: $fe $55
	rst  $38                                         ; $4dfb: $ff
	ld   d, b                                        ; $4dfc: $50
	cpl                                              ; $4dfd: $2f
	and  [hl]                                        ; $4dfe: $a6
	di                                               ; $4dff: $f3
	ld   [hl], b                                     ; $4e00: $70
	ld   sp, hl                                      ; $4e01: $f9
	add  sp, -$03                                    ; $4e02: $e8 $fd
	ld   d, h                                        ; $4e04: $54
	cp   $13                                         ; $4e05: $fe $13
	ld   a, a                                        ; $4e07: $7f
	add  h                                           ; $4e08: $84
	cp   a                                           ; $4e09: $bf
	ld   h, l                                        ; $4e0a: $65
	ld   a, a                                        ; $4e0b: $7f
	push hl                                          ; $4e0c: $e5
	cp   $5a                                         ; $4e0d: $fe $5a
	jr   z, jr_095_4db7                              ; $4e0f: $28 $a6

	cp   h                                           ; $4e11: $bc
	ld   e, e                                        ; $4e12: $5b
	sbc  a                                           ; $4e13: $9f
	ld   a, d                                        ; $4e14: $7a
	call nc, $dca3                                   ; $4e15: $d4 $a3 $dc
	ld   e, [hl]                                     ; $4e18: $5e
	sbc  a                                           ; $4e19: $9f
	xor  d                                           ; $4e1a: $aa
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e1b: $cf
	ld   bc, $fb63                                   ; $4e1c: $01 $63 $fb


RleXorTileData_TitleScreenBank0_8800::
	db $7f, $01, $9b, $00, $80, $03, $80, $07, $86, $00, $80, $3f, $80, $ff, $02, $c0, $ff, $3f, $87, $00, $80, $0f, $80, $cf, $80, $f8, $80, $3a, $86, $00, $80, $c0
	db $82, $ff, $83, $00, $19, $01, $00, $70, $00, $f9, $70, $74, $78, $ba, $38, $40, $18, $2e, $00, $e0, $00, $f8, $e0, $fc, $f8, $7a, $78, $98, $18, $58, $18, $80
	db $1c, $00, $3e, $81, $00, $00, $01, $87, $00, $00, $01, $83, $00, $02, $f8, $00, $f4, $83, $f0, $0a, $38, $f8, $82, $78, $c6, $0e, $0f, $1d, $1f, $3b, $3f, $80
	db $37, $01, $77, $7f, $82, $6f, $08, $ef, $10, $ff, $ef, $f0, $df, $e0, $b7, $c7, $80, $c9, $02, $63, $80, $94, $81, $90, $0c, $78, $ca, $38, $f3, $df, $3f, $6f
	db $8f, $d6, $e7, $73, $7b, $f9, $80, $3d, $09, $1d, $23, $3f, $4f, $0f, $17, $27, $57, $17, $13, $83, $9b, $02, $2b, $cb, $58, $81, $00, $03, $0e, $00, $1f, $0e
	db $80, $0f, $09, $17, $07, $0b, $03, $04, $00, $21, $1c, $2d, $0c, $80, $0e, $01, $ef, $0f, $80, $ff, $80, $fe, $80, $86, $80, $06, $00, $ec, $81, $0c, $01, $fe
	db $1e, $80, $ff, $13, $fe, $ff, $05, $06, $02, $06, $74, $06, $8b, $00, $30, $00, $dc, $30, $1e, $fc, $bf, $fe, $8d, $0d, $80, $03, $02, $79, $01, $87, $85, $00
	db $08, $81, $00, $c0, $80, $e7, $c0, $9f, $86, $ff, $83, $00, $0d, $c0, $00, $7f, $c0, $af, $ff, $c7, $7f, $e8, $00, $7f, $00, $07, $00, $80, $03, $03, $73, $03
	db $fb, $73, $80, $f9, $80, $f8, $05, $01, $00, $fe, $00, $ff, $00, $84, $ff, $00, $00, $80, $ff, $81, $00, $04, $39, $78, $01, $78, $c7, $83, $ff, $0c, $7f, $ff
	db $bc, $7c, $42, $7e, $83, $00, $fe, $00, $e1, $fe, $ee, $81, $ff, $02, $ef, $ff, $1f, $81, $00, $24, $91, $00, $91, $6e, $a9, $ff, $db, $ff, $5b, $ff, $bf, $b7
	db $b1, $7f, $7e, $7f, $f7, $00, $8c, $77, $34, $7f, $bb, $ff, $9d, $f7, $76, $67, $f7, $f3, $03, $ff, $df, $10, $90, $80, $a0, $83, $80, $00, $00, $81, $81, $80
	db $8d, $01, $56, $90, $84, $10, $82, $90, $04, $98, $9f, $2f, $cf, $5f, $80, $0e, $80, $06, $80, $07, $80, $03, $82, $01, $81, $ff, $00, $6e, $81, $cd, $01, $1d
	db $6d, $80, $65, $00, $24, $80, $a6, $02, $86, $b6, $c6, $80, $fe, $02, $ff, $00, $01, $8b, $00, $02, $c9, $06, $c7, $83, $07, $08, $0b, $03, $04, $00, $02, $00
	db $01, $00, $89, $81, $06, $0e, $46, $06, $02, $06, $04, $06, $02, $06, $44, $06, $86, $06, $8d, $01, $07, $81, $03, $00, $0e, $81, $06, $06, $1c, $0c, $38, $18
	db $11, $10, $bf, $81, $fe, $80, $06, $80, $0e, $09, $6c, $0c, $3c, $1c, $98, $18, $79, $38, $81, $00, $80, $c0, $10, $e7, $ff, $6b, $7f, $3c, $30, $c0, $00, $27
	db $00, $18, $00, $fc, $00, $0e, $0c, $ff, $81, $fe, $80, $0e, $80, $1c, $04, $dc, $1c, $78, $38, $7f, $81, $00, $02, $01, $00, $80, $81, $00, $06, $02, $01, $80
	db $01, $04, $03, $fb, $80, $7e, $03, $7f, $00, $ff, $80, $80, $ff, $80, $f7, $05, $f3, $73, $e1, $67, $e0, $99, $81, $00, $00, $40, $80, $00, $13, $80, $a0, $c0
	db $d0, $e0, $e8, $f0, $f4, $f8, $eb, $77, $68, $7f, $00, $7f, $b0, $3f, $0b, $3b, $30, $81, $3f, $03, $7f, $03, $c3, $7f, $80, $ff, $08, $0c, $fb, $08, $fb, $c3
	db $bb, $00, $fb, $f8, $80, $f9, $80, $c1, $81, $fd, $0c, $3d, $c1, $01, $cc, $0c, $de, $1e, $fe, $f8, $fe, $44, $fd, $2e, $83, $ce, $00, $96, $83, $e7, $80, $e6
	db $03, $ca, $f2, $17, $00, $80, $ff, $80, $1f, $05, $e7, $07, $eb, $f3, $f9, $fd, $80, $1d, $00, $fc, $80, $0e, $00, $00, $80, $ff, $05, $f8, $fe, $f7, $fc, $fe
	db $f8, $84, $f9, $09, $12, $0e, $0a, $0e, $04, $0c, $08, $0c, $3c, $1c, $80, $18, $11, $09, $18, $60, $38, $ea, $00, $14, $00, $08, $00, $81, $00, $03, $01, $07
	db $03, $0e, $06, $80, $00, $03, $41, $30, $f2, $70, $80, $60, $0a, $c4, $c0, $88, $80, $10, $00, $20, $00, $40, $00, $80, $81, $00, $09, $01, $00, $03, $01, $07
	db $03, $0f, $07, $1c, $0c, $80, $00, $17, $59, $38, $b0, $70, $42, $e0, $64, $c0, $c8, $80, $10, $00, $20, $00, $40, $00, $89, $07, $18, $0f, $78, $1f, $fe, $7f
	db $80, $7e, $80, $7c, $06, $b8, $38, $41, $00, $c6, $c0, $c8, $80, $c0, $07, $80, $90, $00, $20, $00, $40, $00, $80, $81, $00, $12, $ff, $7c, $fc, $3f, $67, $1f
	db $21, $0f, $19, $07, $0f, $01, $05, $00, $03, $00, $7f, $3f, $bf, $80, $3f, $80, $bf, $80, $e1, $01, $f1, $f3, $80, $f0, $0f, $60, $64, $00, $07, $fd, $fb, $ff
	db $fb, $ff, $f9, $c7, $c0, $ef, $ec, $ef, $ee, $80, $e7, $04, $00, $78, $f8, $7b, $fb, $84, $ff, $0a, $1f, $9f, $87, $07, $30, $00, $2a, $f2, $f3, $73, $e5, $81
	db $b9, $00, $b2, $81, $bc, $01, $b9, $be, $80, $7e, $00, $c2, $81, $06, $05, $86, $07, $87, $83, $c3, $83, $80, $c3, $07, $63, $43, $63, $61, $13, $f9, $f2, $fc
	db $84, $7c, $02, $79, $7e, $3e, $81, $be, $00, $82, $85, $00, $00, $01, $85, $00, $07, $4f, $30, $32, $30, $e0, $60, $64, $60, $80, $c0, $01, $c8, $c0, $80, $81
	db $04, $16, $06, $e7, $00, $07, $87, $00, $82, $ff, $84, $00, $00, $15, $80, $1d, $09, $17, $11, $13, $d4, $f6, $57, $f5, $8e, $00, $0e, $81, $00, $0a, $50, $d8
	db $a0, $7c, $12, $64, $09, $2f, $05, $ab, $aa, $89, $00, $80, $ff, $04, $11, $ff, $f2, $00, $1c, $87, $00, $02, $d4, $ff, $2b, $80, $ff, $89, $00, $80, $ff, $02
	db $77, $ff, $88, $89, $00, $80, $ff, $04, $aa, $ff, $65, $00, $30, $87, $00, $80, $ff, $05, $88, $ff, $84, $00, $f3, $00, $82, $01, $80, $0f, $80, $08, $1c, $f8
	db $fc, $04, $ff, $7f, $03, $23, $c1, $51, $80, $a8, $00, $04, $00, $1e, $a0, $a1, $44, $47, $ff, $e1, $bf, $ae, $df, $d7, $ef, $eb, $77, $74, $80, $3b, $19, $1c
	db $1d, $0e, $cb, $03, $87, $31, $51, $99, $29, $cf, $97, $e7, $dd, $f1, $1f, $fc, $e0, $1f, $7f, $80, $dc, $be, $bc, $bf, $9f, $81, $df, $0b, $dd, $df, $f3, $3c
	db $0f, $f0, $fd, $01, $c6, $09, $cb, $0b, $80, $17, $80, $16, $03, $0c, $1c, $0c, $1c, $80, $22, $03, $11, $31, $e0, $c0, $84, $ff, $82, $7f, $80, $8f, $80, $1f
	db $80, $00, $2e, $65, $e5, $44, $e4, $62, $ca, $40, $c8, $24, $ac, $45, $ed, $43, $eb, $88, $01, $10, $93, $80, $17, $50, $c7, $88, $0f, $40, $4f, $08, $07, $04
	db $23, $66, $fd, $a9, $f0, $a4, $fd, $a8, $f9, $e8, $3b, $2a, $33, $62, $fb, $aa, $fb, $ea, $80, $be, $80, $0d, $80, $be, $80, $7d, $80, $1c, $80, $7e, $80, $6c
	db $31, $0e, $d3, $ff, $65, $47, $d5, $d7, $45, $47, $55, $57, $45, $c7, $d5, $57, $01, $83, $c5, $ef, $20, $8f, $40, $ef, $28, $c7, $10, $d7, $00, $93, $00, $b9
	db $80, $7d, $57, $8a, $08, $a0, $20, $99, $19, $a5, $07, $aa, $08, $94, $36, $b2, $18, $bc, $34, $80, $ee, $80, $6c, $80, $ec, $80, $6f, $80, $ef, $80, $6f, $80
	db $ff, $80, $ef, $80, $4f, $80, $47, $80, $e7, $87, $ff, $03, $de, $c0, $d1, $c0, $80, $e0, $00, $e8, $83, $e0, $80, $c0, $08, $c8, $c0, $ff, $f0, $bf, $3f, $60
	db $00, $1f, $87, $00, $01, $f9, $06, $80, $f8, $02, $03, $00, $fc, $87, $00, $0c, $1f, $0f, $19, $09, $11, $10, $12, $10, $0c, $10, $11, $00, $0e, $81, $00, $80
	db $ff, $0a, $3f, $00, $20, $00, $87, $00, $e0, $00, $48, $00, $30, $81, $00, $0a, $d4, $f4, $c6, $2a, $13, $30, $d2, $00, $25, $00, $18, $83, $00, $0a, $22, $77
	db $22, $dc, $54, $08, $19, $00, $ea, $00, $04, $83, $00, $02, $44, $ff, $44, $81, $00, $00, $ff, $88, $00, $00, $ff, $82, $00, $00, $ff, $87, $00, $02, $dd, $ff
	db $dd, $81, $00, $00, $ff, $87, $00, $02, $55, $ff, $55, $81, $00, $00, $ff, $87, $00, $06, $f0, $00, $10, $00, $60, $00, $80, $92, $00, $82, $ff, $8a, $00, $80
	db $e0, $0b, $fc, $ec, $0f, $e0, $ff, $e1, $ff, $ce, $f0, $ef, $e0, $cb, $85, $f3, $0a, $f5, $e1, $fb, $fc, $7a, $7f, $be, $3f, $9f, $df, $cf, $81, $ef, $12, $e7
	db $f7, $f0, $c0, $40, $60, $a0, $30, $50, $98, $2c, $c8, $94, $e4, $e6, $e4, $ca, $f2, $e4, $85, $f9, $00, $f2, $85, $fc, $00, $02, $81, $f7, $00, $f3, $82, $fb
	db $80, $f9, $81, $f8, $02, $fc, $f0, $12, $86, $f2, $80, $b2, $02, $12, $1a, $02, $80, $06, $04, $97, $7e, $f9, $ff, $7c, $81, $7e, $02, $bd, $30, $b0, $80, $a0
	db $80, $b0, $02, $b8, $88, $08, $80, $f8, $80, $08, $04, $f4, $00, $b6, $38, $3d, $80, $3e, $81, $3f, $10, $a4, $04, $ed, $0c, $f6, $06, $2a, $13, $05, $19, $12
	db $1c, $9b, $30, $31, $60, $1f, $86, $00, $80, $80, $05, $c0, $40, $60, $b0, $20, $6f, $80, $c0, $80, $d0, $80, $d8, $02, $de, $ce, $ef, $81, $6f, $81, $6e, $00
	db $41, $85, $1f, $02, $2f, $cf, $8f, $83, $0f, $00, $e0, $82, $80, $01, $a0, $80, $80, $d8, $80, $cf, $01, $c3, $d3, $80, $e1, $04, $e0, $af, $30, $d8, $10, $80
	db $18, $02, $6c, $08, $48, $85, $c8, $02, $db, $74, $b4, $81, $34, $0a, $30, $33, $37, $07, $80, $1f, $5f, $40, $df, $e0, $17, $83, $07, $04, $1f, $00, $0f, $3f
	db $c0, $80, $ff, $03, $00, $ff, $00, $f0, $81, $e0, $15, $f0, $c0, $e0, $30, $fb, $f8, $0f, $f0, $fd, $01, $f6, $06, $6b, $c8, $e0, $00, $14, $10, $c0, $00, $a8
	db $20, $80, $40, $08, $90, $80, $20, $00, $c0, $ff, $80, $00, $7f, $8a, $00, $00, $ff, $80, $00, $00, $ff, $89, $00, $0a, $07, $f8, $03, $00, $fc, $00, $fb, $00
	db $d8, $00, $01, $81, $00, $7f, $22, $00, $b1, $f1, $9a, $fe, $c7, $a3, $a9, $ff, $46, $fc, $81, $ff, $a8, $dd, $72, $af, $ac, $ff, $44, $fd, $26, $fe, $a9, $fd
	db $48, $5e, $a2, $af, $da, $df, $7c, $fe, $3f, $ff, $0d, $fd, $6d, $ef, $50, $7e, $cf, $fd, $a1, $ff, $ad, $fa, $fd, $b5, $09, $f7, $7b, $fb, $6c, $bd, $97, $f7
	db $03, $fa, $0e, $ff, $86, $f7, $44, $62, $c3, $73, $54, $f9, $c6, $7b, $0e, $fe, $89, $7f, $c0, $ff, $fd, $ef, $cd, $46, $4a, $f5, $8a, $da, $e1, $77, $6b, $ff
	db $44, $ff, $58, $fe, $55, $ff, $50, $2f, $a6, $f3, $70, $f9, $e8, $fd, $54, $fe, $13, $7f, $84, $bf, $65, $7f, $e5, $fe, $5a, $28, $a6, $bc, $5b, $9f, $7a, $d4
	db $a3, $dc, $5e, $9f, $aa, $cf, $01, $63, $fb

	
	add  b                                           ; $5528: $80
	rst  $38                                         ; $5529: $ff
	db   $10                                         ; $552a: $10
	rst  $38                                         ; $552b: $ff
	ld   h, b                                        ; $552c: $60
	rst  $30                                         ; $552d: $f7
	ret  nz                                          ; $552e: $c0

	xor  $80                                         ; $552f: $ee $80
	ret                                              ; $5531: $c9


	add  b                                           ; $5532: $80
	add  e                                           ; $5533: $83
	add  c                                           ; $5534: $81
	sub  e                                           ; $5535: $93
	add  e                                           ; $5536: $83
	or   [hl]                                        ; $5537: $b6
	nop                                              ; $5538: $00
	rst  $38                                         ; $5539: $ff
	nop                                              ; $553a: $00
	cp   $10                                         ; $553b: $fe $10
	cp   $20                                         ; $553d: $fe $20
	rst  $38                                         ; $553f: $ff
	ld   h, b                                        ; $5540: $60
	rst  $38                                         ; $5541: $ff
	ret  z                                           ; $5542: $c8

	rst  $38                                         ; $5543: $ff
	ret  z                                           ; $5544: $c8

	rst  $38                                         ; $5545: $ff
	ret                                              ; $5546: $c9


	rst  $38                                         ; $5547: $ff
	nop                                              ; $5548: $00
	rst  $38                                         ; $5549: $ff
	nop                                              ; $554a: $00
	rst  $38                                         ; $554b: $ff
	nop                                              ; $554c: $00
	db   $fd                                         ; $554d: $fd
	nop                                              ; $554e: $00
	ld   l, [hl]                                     ; $554f: $6e
	nop                                              ; $5550: $00
	scf                                              ; $5551: $37
	ld   bc, $0183                                   ; $5552: $01 $83 $01
	add  l                                           ; $5555: $85
	nop                                              ; $5556: $00
	adc  $0a                                         ; $5557: $ce $0a
	cp   $06                                         ; $5559: $fe $06
	cp   $02                                         ; $555b: $fe $02
	sbc  $02                                         ; $555d: $de $02
	ld   l, [hl]                                     ; $555f: $6e
	ld   [bc], a                                     ; $5560: $02
	ld   b, $02                                      ; $5561: $06 $02
	or   [hl]                                        ; $5563: $b6
	add  d                                           ; $5564: $82
	jp   c, $eeca                                    ; $5565: $da $ca $ee

	rlca                                             ; $5568: $07
	dec  h                                           ; $5569: $25
	rlca                                             ; $556a: $07
	ld   l, l                                        ; $556b: $6d
	rrca                                             ; $556c: $0f
	ld   l, l                                        ; $556d: $6d
	rrca                                             ; $556e: $0f
	ld   a, [$fa0f]                                  ; $556f: $fa $0f $fa
	cpl                                              ; $5572: $2f
	ld   a, [$fa2f]                                  ; $5573: $fa $2f $fa
	ld   a, a                                        ; $5576: $7f
	cp   $cd                                         ; $5577: $fe $cd
	ld   a, a                                        ; $5579: $7f
	call z, $ee7f                                    ; $557a: $cc $7f $ee
	ccf                                              ; $557d: $3f
	ld   l, [hl]                                     ; $557e: $6e
	ccf                                              ; $557f: $3f
	ld   l, a                                        ; $5580: $6f
	dec  sp                                          ; $5581: $3b
	ccf                                              ; $5582: $3f
	add  hl, de                                      ; $5583: $19
	scf                                              ; $5584: $37
	inc  e                                           ; $5585: $1c
	rra                                              ; $5586: $1f
	dec  c                                           ; $5587: $0d
	nop                                              ; $5588: $00
	rst  $20                                         ; $5589: $e7
	add  e                                           ; $558a: $83
	rst  $30                                         ; $558b: $f7
	add  c                                           ; $558c: $81
	ei                                               ; $558d: $fb
	sub  b                                           ; $558e: $90
	rst  $38                                         ; $558f: $ff
	ld   c, b                                        ; $5590: $48
	rst  $38                                         ; $5591: $ff
	ld   l, h                                        ; $5592: $6c
	rst  $38                                         ; $5593: $ff
	or   [hl]                                        ; $5594: $b6
	rst  $38                                         ; $5595: $ff
	rst  $38                                         ; $5596: $ff
	rst  $38                                         ; $5597: $ff
	ld   h, [hl]                                     ; $5598: $66
	cp   $66                                         ; $5599: $fe $66
	cp   $b2                                         ; $559b: $fe $b2
	cp   $b2                                         ; $559d: $fe $b2
	cp   $d2                                         ; $559f: $fe $d2
	cp   $d2                                         ; $55a1: $fe $d2
	cp   $52                                         ; $55a3: $fe $52
	cp   $fe                                         ; $55a5: $fe $fe
	cp   $3f                                         ; $55a7: $fe $3f
	pop  hl                                          ; $55a9: $e1
	rst  $38                                         ; $55aa: $ff
	call c, $b6f6                                    ; $55ab: $dc $f6 $b6
	xor  $af                                         ; $55ae: $ee $af
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $55b0: $cf
	adc  [hl]                                        ; $55b1: $8e
	adc  $8a                                         ; $55b2: $ce $8a
	xor  $aa                                         ; $55b4: $ee $aa
	ld   a, [hl]                                     ; $55b6: $7e
	sbc  $0f                                         ; $55b7: $de $0f
	ld   b, $01                                      ; $55b9: $06 $01
	nop                                              ; $55bb: $00
	inc  bc                                          ; $55bc: $03
	nop                                              ; $55bd: $00
	inc  bc                                          ; $55be: $03
	ld   bc, $0000                                   ; $55bf: $01 $00 $00
	nop                                              ; $55c2: $00
	nop                                              ; $55c3: $00
	nop                                              ; $55c4: $00
	nop                                              ; $55c5: $00
	nop                                              ; $55c6: $00
	nop                                              ; $55c7: $00
	rst  $38                                         ; $55c8: $ff
	inc  sp                                          ; $55c9: $33
	rst  $38                                         ; $55ca: $ff
	ld   a, h                                        ; $55cb: $7c
	sbc  a                                           ; $55cc: $9f
	sbc  $3d                                         ; $55cd: $de $3d
	ccf                                              ; $55cf: $3f
	dec  a                                           ; $55d0: $3d
	inc  a                                           ; $55d1: $3c

jr_095_55d2:
	dec  a                                           ; $55d2: $3d
	inc  [hl]                                        ; $55d3: $34

jr_095_55d4:
	ccf                                              ; $55d4: $3f
	ld   h, $3f                                      ; $55d5: $26 $3f
	ld   a, h                                        ; $55d7: $7c
	cp   $7e                                         ; $55d8: $fe $7e
	cp   $fa                                         ; $55da: $fe $fa
	cp   $7e                                         ; $55dc: $fe $7e
	sbc  $7a                                         ; $55de: $de $7a
	sbc  $7a                                         ; $55e0: $de $7a
	sbc  $7a                                         ; $55e2: $de $7a
	sbc  $7a                                         ; $55e4: $de $7a
	sbc  $7e                                         ; $55e6: $de $7e
	ld   h, b                                        ; $55e8: $60
	ret  nz                                          ; $55e9: $c0

	ld   h, b                                        ; $55ea: $60
	ret  nz                                          ; $55eb: $c0

	ld   h, b                                        ; $55ec: $60
	ret  nz                                          ; $55ed: $c0

	ld   h, b                                        ; $55ee: $60
	ret  nz                                          ; $55ef: $c0

	jr   nz, jr_095_55d2                             ; $55f0: $20 $e0

	jr   nz, jr_095_55d4                             ; $55f2: $20 $e0

	jr   nz, @-$1e                                   ; $55f4: $20 $e0

	jr   nc, @+$72                                   ; $55f6: $30 $70

	nop                                              ; $55f8: $00
	nop                                              ; $55f9: $00
	nop                                              ; $55fa: $00
	nop                                              ; $55fb: $00
	jr   nz, jr_095_55fe                             ; $55fc: $20 $00

jr_095_55fe:
	jr   nc, jr_095_5640                             ; $55fe: $30 $40

	ld   [hl], b                                     ; $5600: $70
	ld   b, b                                        ; $5601: $40
	nop                                              ; $5602: $00
	nop                                              ; $5603: $00
	ld   l, $24                                      ; $5604: $2e $24
	inc  c                                           ; $5606: $0c
	nop                                              ; $5607: $00
	ld   bc, $0100                                   ; $5608: $01 $00 $01
	nop                                              ; $560b: $00
	ld   bc, $0100                                   ; $560c: $01 $00 $01
	nop                                              ; $560f: $00
	inc  bc                                          ; $5610: $03
	nop                                              ; $5611: $00
	inc  bc                                          ; $5612: $03
	nop                                              ; $5613: $00
	rlca                                             ; $5614: $07
	ld   bc, $0207                                   ; $5615: $01 $07 $02
	jp   c, $ce7a                                    ; $5618: $da $7a $ce

	ld   a, d                                        ; $561b: $7a
	adc  $7e                                         ; $561c: $ce $7e
	adc  $7e                                         ; $561e: $ce $7e
	ld   c, [hl]                                     ; $5620: $4e
	sbc  $ce                                         ; $5621: $de $ce
	sbc  $ce                                         ; $5623: $de $ce
	sbc  $8e                                         ; $5625: $de $8e
	sbc  $38                                         ; $5627: $de $38
	ld   a, b                                        ; $5629: $78

jr_095_562a:
	ld   [hl], $76                                   ; $562a: $36 $76
	ld   de, $1071                                   ; $562c: $11 $71 $10
	ld   [hl], b                                     ; $562f: $70
	db   $10                                         ; $5630: $10
	ld   d, b                                        ; $5631: $50
	db   $10                                         ; $5632: $10
	ld   d, b                                        ; $5633: $50
	db   $10                                         ; $5634: $10
	db   $10                                         ; $5635: $10
	db   $10                                         ; $5636: $10
	stop                                             ; $5637: $10 $00
	nop                                              ; $5639: $00
	nop                                              ; $563a: $00
	nop                                              ; $563b: $00
	add  b                                           ; $563c: $80
	nop                                              ; $563d: $00
	pop  hl                                          ; $563e: $e1
	ret  nz                                          ; $563f: $c0

jr_095_5640:
	scf                                              ; $5640: $37
	inc  sp                                          ; $5641: $33
	ccf                                              ; $5642: $3f
	inc  l                                           ; $5643: $2c
	cpl                                              ; $5644: $2f
	jr   nz, jr_095_562a                             ; $5645: $20 $e3

	ldh  [rIF], a                                    ; $5647: $e0 $0f
	inc  b                                           ; $5649: $04
	rra                                              ; $564a: $1f
	ld   [$307f], sp                                 ; $564b: $08 $7f $30
	rst  $38                                         ; $564e: $ff
	ret  nz                                          ; $564f: $c0

	rst  $38                                         ; $5650: $ff
	ld   bc, $03ff                                   ; $5651: $01 $ff $03
	db   $fd                                         ; $5654: $fd
	dec  b                                           ; $5655: $05
	ei                                               ; $5656: $fb
	dec  bc                                          ; $5657: $0b
	adc  [hl]                                        ; $5658: $8e
	sbc  [hl]                                        ; $5659: $9e
	adc  d                                           ; $565a: $8a
	sbc  [hl]                                        ; $565b: $9e
	adc  d                                           ; $565c: $8a
	sbc  [hl]                                        ; $565d: $9e
	adc  d                                           ; $565e: $8a
	cp   [hl]                                        ; $565f: $be
	sbc  d                                           ; $5660: $9a
	cp   [hl]                                        ; $5661: $be
	sbc  d                                           ; $5662: $9a
	cp   [hl]                                        ; $5663: $be
	ld   a, [de]                                     ; $5664: $1a
	ld   a, $1e                                      ; $5665: $3e $1e
	ld   [hl], $11                                   ; $5667: $36 $11
	ld   sp, $3213                                   ; $5669: $31 $13 $32
	rla                                              ; $566c: $17
	inc  [hl]                                        ; $566d: $34
	rra                                              ; $566e: $1f
	ld   a, c                                        ; $566f: $79
	rra                                              ; $5670: $1f
	ld   a, c                                        ; $5671: $79
	rra                                              ; $5672: $1f
	pop  af                                          ; $5673: $f1
	rra                                              ; $5674: $1f
	pop  af                                          ; $5675: $f1
	rra                                              ; $5676: $1f
	pop  af                                          ; $5677: $f1
	ldh  [$60], a                                    ; $5678: $e0 $60
	ldh  [$e0], a                                    ; $567a: $e0 $e0
	and  b                                           ; $567c: $a0
	and  b                                           ; $567d: $a0
	ld   h, e                                        ; $567e: $63
	ld   h, e                                        ; $567f: $63
	ld   l, h                                        ; $5680: $6c
	ld   b, h                                        ; $5681: $44
	ld   a, e                                        ; $5682: $7b
	ld   e, e                                        ; $5683: $5b
	ld   [hl], a                                     ; $5684: $77
	ld   [hl], h                                     ; $5685: $74
	ld   c, a                                        ; $5686: $4f
	ld   c, b                                        ; $5687: $48
	scf                                              ; $5688: $37
	dec  [hl]                                        ; $5689: $35
	ld   c, a                                        ; $568a: $4f
	ld   c, c                                        ; $568b: $49
	cp   a                                           ; $568c: $bf
	or   c                                           ; $568d: $b1
	ld   a, a                                        ; $568e: $7f
	ld   b, c                                        ; $568f: $41
	rst  $38                                         ; $5690: $ff
	add  c                                           ; $5691: $81
	rst  $38                                         ; $5692: $ff
	ld   bc, $01ff                                   ; $5693: $01 $ff $01
	rst  $38                                         ; $5696: $ff
	ld   bc, $761e                                   ; $5697: $01 $1e $76
	ld   e, $72                                      ; $569a: $1e $72
	ld   a, $76                                      ; $569c: $3e $76
	ld   a, $fa                                      ; $569e: $3e $fa
	ld   a, $f2                                      ; $56a0: $3e $f2
	ld   a, $e2                                      ; $56a2: $3e $e2
	ld   a, $e2                                      ; $56a4: $3e $e2
	ld   a, $e2                                      ; $56a6: $3e $e2
	ccf                                              ; $56a8: $3f
	pop  hl                                          ; $56a9: $e1
	di                                               ; $56aa: $f3
	ret  nz                                          ; $56ab: $c0

	ldh  [$80], a                                    ; $56ac: $e0 $80
	ldh  [$80], a                                    ; $56ae: $e0 $80
	db   $fc                                         ; $56b0: $fc
	adc  h                                           ; $56b1: $8c
	cp   $9e                                         ; $56b2: $fe $9e
	pop  af                                          ; $56b4: $f1
	or   c                                           ; $56b5: $b1
	ld   h, b                                        ; $56b6: $60
	ret  nz                                          ; $56b7: $c0

	rrca                                             ; $56b8: $0f
	ld   b, $03                                      ; $56b9: $06 $03
	nop                                              ; $56bb: $00
	nop                                              ; $56bc: $00
	nop                                              ; $56bd: $00
	nop                                              ; $56be: $00
	nop                                              ; $56bf: $00
	nop                                              ; $56c0: $00
	nop                                              ; $56c1: $00
	nop                                              ; $56c2: $00
	nop                                              ; $56c3: $00
	ld   bc, $0001                                   ; $56c4: $01 $01 $00
	nop                                              ; $56c7: $00
	rst  $38                                         ; $56c8: $ff
	inc  sp                                          ; $56c9: $33
	sub  e                                           ; $56ca: $93
	db   $10                                         ; $56cb: $10
	ld   bc, $0000                                   ; $56cc: $01 $00 $00
	nop                                              ; $56cf: $00
	dec  a                                           ; $56d0: $3d
	jr   c, @+$01                                    ; $56d1: $38 $ff

	db   $fc                                         ; $56d3: $fc
	rlca                                             ; $56d4: $07
	ld   b, $03                                      ; $56d5: $06 $03
	nop                                              ; $56d7: $00
	nop                                              ; $56d8: $00
	nop                                              ; $56d9: $00
	nop                                              ; $56da: $00
	nop                                              ; $56db: $00
	jr   nz, jr_095_56de                             ; $56dc: $20 $00

jr_095_56de:
	jr   nc, jr_095_5720                             ; $56de: $30 $40

	ld   [hl], b                                     ; $56e0: $70
	ld   b, b                                        ; $56e1: $40
	nop                                              ; $56e2: $00
	nop                                              ; $56e3: $00
	ld   l, $24                                      ; $56e4: $2e $24
	nop                                              ; $56e6: $00
	nop                                              ; $56e7: $00
	rlca                                             ; $56e8: $07
	dec  h                                           ; $56e9: $25
	rlca                                             ; $56ea: $07
	ld   l, l                                        ; $56eb: $6d
	rrca                                             ; $56ec: $0f
	ld   l, l                                        ; $56ed: $6d
	rrca                                             ; $56ee: $0f
	ld   a, [$fa0f]                                  ; $56ef: $fa $0f $fa
	cpl                                              ; $56f2: $2f
	ld   a, [$fa2f]                                  ; $56f3: $fa $2f $fa
	ld   a, a                                        ; $56f6: $7f
	ld   a, [$7fcd]                                  ; $56f7: $fa $cd $7f
	call z, $ee7f                                    ; $56fa: $cc $7f $ee
	ccf                                              ; $56fd: $3f
	ld   l, [hl]                                     ; $56fe: $6e
	ccf                                              ; $56ff: $3f
	ld   l, a                                        ; $5700: $6f
	dec  sp                                          ; $5701: $3b
	ccf                                              ; $5702: $3f
	add  hl, de                                      ; $5703: $19
	scf                                              ; $5704: $37
	inc  e                                           ; $5705: $1c
	rra                                              ; $5706: $1f
	inc  c                                           ; $5707: $0c
	nop                                              ; $5708: $00
	rst  $20                                         ; $5709: $e7
	add  e                                           ; $570a: $83
	rst  $30                                         ; $570b: $f7
	add  c                                           ; $570c: $81
	ei                                               ; $570d: $fb
	sub  b                                           ; $570e: $90
	rst  $38                                         ; $570f: $ff
	ld   c, b                                        ; $5710: $48
	rst  $38                                         ; $5711: $ff
	ld   l, h                                        ; $5712: $6c
	rst  $38                                         ; $5713: $ff
	or   [hl]                                        ; $5714: $b6
	rst  $38                                         ; $5715: $ff
	rst  $38                                         ; $5716: $ff
	ld   a, a                                        ; $5717: $7f
	ccf                                              ; $5718: $3f
	and  $ff                                         ; $5719: $e6 $ff
	db   $dd                                         ; $571b: $dd
	rst  $30                                         ; $571c: $f7
	or   [hl]                                        ; $571d: $b6
	xor  $af                                         ; $571e: $ee $af

jr_095_5720:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5720: $cf
	adc  [hl]                                        ; $5721: $8e
	adc  $8a                                         ; $5722: $ce $8a
	xor  $aa                                         ; $5724: $ee $aa
	ld   a, [hl]                                     ; $5726: $7e
	sbc  $0f                                         ; $5727: $de $0f
	inc  b                                           ; $5729: $04
	inc  bc                                          ; $572a: $03
	inc  bc                                          ; $572b: $03
	add  e                                           ; $572c: $83
	nop                                              ; $572d: $00
	add  e                                           ; $572e: $83
	ld   bc, $0000                                   ; $572f: $01 $00 $00
	nop                                              ; $5732: $00
	nop                                              ; $5733: $00
	nop                                              ; $5734: $00
	nop                                              ; $5735: $00
	nop                                              ; $5736: $00
	nop                                              ; $5737: $00
	rst  $38                                         ; $5738: $ff
	or   d                                           ; $5739: $b2
	rst  $38                                         ; $573a: $ff
	ld   a, h                                        ; $573b: $7c
	sbc  a                                           ; $573c: $9f
	sbc  $3d                                         ; $573d: $de $3d
	ccf                                              ; $573f: $3f
	dec  a                                           ; $5740: $3d
	inc  a                                           ; $5741: $3c
	dec  a                                           ; $5742: $3d
	inc  [hl]                                        ; $5743: $34
	ccf                                              ; $5744: $3f
	ld   h, $3f                                      ; $5745: $26 $3f
	ld   a, h                                        ; $5747: $7c
	cp   $7e                                         ; $5748: $fe $7e
	cp   $7a                                         ; $574a: $fe $7a
	cp   $7e                                         ; $574c: $fe $7e
	sbc  $7a                                         ; $574e: $de $7a
	sbc  $7a                                         ; $5750: $de $7a
	sbc  $7a                                         ; $5752: $de $7a
	sbc  $7a                                         ; $5754: $de $7a
	sbc  $7e                                         ; $5756: $de $7e
	nop                                              ; $5758: $00
	nop                                              ; $5759: $00
	nop                                              ; $575a: $00
	nop                                              ; $575b: $00
	jr   nz, jr_095_575e                             ; $575c: $20 $00

jr_095_575e:
	jr   nc, jr_095_57a0                             ; $575e: $30 $40

	ld   [hl], b                                     ; $5760: $70
	ld   b, b                                        ; $5761: $40
	nop                                              ; $5762: $00
	nop                                              ; $5763: $00
	ld   a, [hl]                                     ; $5764: $7e
	inc  h                                           ; $5765: $24
	ld   b, $00                                      ; $5766: $06 $00
	rlca                                             ; $5768: $07
	dec  h                                           ; $5769: $25
	rlca                                             ; $576a: $07
	ld   l, l                                        ; $576b: $6d
	rrca                                             ; $576c: $0f
	ld   l, l                                        ; $576d: $6d
	rrca                                             ; $576e: $0f
	ld   a, [$fa0f]                                  ; $576f: $fa $0f $fa
	cpl                                              ; $5772: $2f
	ld   a, [$fe2f]                                  ; $5773: $fa $2f $fe
	ld   a, a                                        ; $5776: $7f
	ei                                               ; $5777: $fb
	call wDormRoomDaySpritesX                                       ; $5778: $cd $7f $cc
	ld   a, a                                        ; $577b: $7f
	xor  $3f                                         ; $577c: $ee $3f
	ld   l, [hl]                                     ; $577e: $6e
	ccf                                              ; $577f: $3f
	ld   l, a                                        ; $5780: $6f
	dec  sp                                          ; $5781: $3b
	ccf                                              ; $5782: $3f
	add  hl, de                                      ; $5783: $19
	scf                                              ; $5784: $37
	dec  e                                           ; $5785: $1d
	rra                                              ; $5786: $1f
	ld   c, $3f                                      ; $5787: $0e $3f
	ldh  [$fd], a                                    ; $5789: $e0 $fd
	sbc  $f2                                         ; $578b: $de $f2
	or   e                                           ; $578d: $b3
	rst  $20                                         ; $578e: $e7
	and  a                                           ; $578f: $a7
	jp   nz, $c682                                   ; $5790: $c2 $82 $c6

	add  [hl]                                        ; $5793: $86
	add  $86                                         ; $5794: $c6 $86
	ld   h, b                                        ; $5796: $60
	ldh  [rIF], a                                    ; $5797: $e0 $0f
	inc  b                                           ; $5799: $04
	ld   bc, $0300                                   ; $579a: $01 $00 $03
	ld   bc, $0103                                   ; $579d: $01 $03 $01

jr_095_57a0:
	nop                                              ; $57a0: $00
	nop                                              ; $57a1: $00
	nop                                              ; $57a2: $00
	nop                                              ; $57a3: $00
	nop                                              ; $57a4: $00
	nop                                              ; $57a5: $00
	nop                                              ; $57a6: $00
	nop                                              ; $57a7: $00
	rst  $38                                         ; $57a8: $ff
	ld   [hl-], a                                    ; $57a9: $32
	rst  $38                                         ; $57aa: $ff
	db   $fc                                         ; $57ab: $fc
	adc  a                                           ; $57ac: $8f
	add  [hl]                                        ; $57ad: $86
	scf                                              ; $57ae: $37
	inc  sp                                          ; $57af: $33
	inc  de                                          ; $57b0: $13
	ld   de, $3031                                   ; $57b1: $11 $31 $30

jr_095_57b4:
	ld   sp, $0330                                   ; $57b4: $31 $30 $03
	ld   [bc], a                                     ; $57b7: $02
	cp   $7e                                         ; $57b8: $fe $7e
	cp   $7a                                         ; $57ba: $fe $7a
	cp   $7e                                         ; $57bc: $fe $7e
	sbc  $7a                                         ; $57be: $de $7a
	sbc  $7a                                         ; $57c0: $de $7a
	sbc  $7a                                         ; $57c2: $de $7a
	sbc  $7a                                         ; $57c4: $de $7a
	sbc  $7e                                         ; $57c6: $de $7e
	ld   a, [hl]                                     ; $57c8: $7e
	call c, $c060                                    ; $57c9: $dc $60 $c0
	ld   h, b                                        ; $57cc: $60
	ret  nz                                          ; $57cd: $c0

	ld   h, b                                        ; $57ce: $60
	ret  nz                                          ; $57cf: $c0

	jr   nz, @-$1e                                   ; $57d0: $20 $e0

	jr   nz, jr_095_57b4                             ; $57d2: $20 $e0

	jr   nz, @-$1e                                   ; $57d4: $20 $e0

	jr   nc, jr_095_5848                             ; $57d6: $30 $70

	nop                                              ; $57d8: $00
	nop                                              ; $57d9: $00
	nop                                              ; $57da: $00
	nop                                              ; $57db: $00
	jr   nz, jr_095_57de                             ; $57dc: $20 $00

jr_095_57de:
	jr   nc, jr_095_5820                             ; $57de: $30 $40

	ld   [hl], b                                     ; $57e0: $70
	ld   b, b                                        ; $57e1: $40
	nop                                              ; $57e2: $00
	nop                                              ; $57e3: $00
	inc  a                                           ; $57e4: $3c
	jr   z, @+$26                                    ; $57e5: $28 $24

	inc  h                                           ; $57e7: $24
	ld   a, a                                        ; $57e8: $7f
	inc  a                                           ; $57e9: $3c
	ld   bc, $0100                                   ; $57ea: $01 $00 $01
	nop                                              ; $57ed: $00
	ld   bc, $0300                                   ; $57ee: $01 $00 $03
	nop                                              ; $57f1: $00
	inc  bc                                          ; $57f2: $03
	nop                                              ; $57f3: $00
	rlca                                             ; $57f4: $07
	ld   bc, $0207                                   ; $57f5: $01 $07 $02
	rlca                                             ; $57f8: $07
	dec  h                                           ; $57f9: $25
	rlca                                             ; $57fa: $07
	ld   l, l                                        ; $57fb: $6d
	rrca                                             ; $57fc: $0f
	ld   l, l                                        ; $57fd: $6d
	rrca                                             ; $57fe: $0f
	ld   a, [$fa0f]                                  ; $57ff: $fa $0f $fa
	cpl                                              ; $5802: $2f
	ld   a, [$fb2f]                                  ; $5803: $fa $2f $fb
	ld   a, a                                        ; $5806: $7f
	cp   $cd                                         ; $5807: $fe $cd
	ld   a, a                                        ; $5809: $7f
	call z, $ee7f                                    ; $580a: $cc $7f $ee
	ccf                                              ; $580d: $3f
	ld   l, [hl]                                     ; $580e: $6e
	ccf                                              ; $580f: $3f
	ld   l, a                                        ; $5810: $6f
	dec  sp                                          ; $5811: $3b
	ccf                                              ; $5812: $3f
	add  hl, de                                      ; $5813: $19
	scf                                              ; $5814: $37
	ld   e, $1f                                      ; $5815: $1e $1f
	dec  c                                           ; $5817: $0d
	ccf                                              ; $5818: $3f
	ld   hl, sp-$01                                  ; $5819: $f8 $ff
	ldh  [$fc], a                                    ; $581b: $e0 $fc
	sbc  [hl]                                        ; $581d: $9e
	or   $b7                                         ; $581e: $f6 $b7

jr_095_5820:
	xor  $af                                         ; $5820: $ee $af
	adc  $8a                                         ; $5822: $ce $8a
	xor  $aa                                         ; $5824: $ee $aa
	ld   a, [hl]                                     ; $5826: $7e
	sbc  $0f                                         ; $5827: $de $0f
	inc  b                                           ; $5829: $04
	ld   bc, $0300                                   ; $582a: $01 $00 $03
	nop                                              ; $582d: $00
	inc  bc                                          ; $582e: $03
	ld   bc, $0100                                   ; $582f: $01 $00 $01
	nop                                              ; $5832: $00
	nop                                              ; $5833: $00
	nop                                              ; $5834: $00
	nop                                              ; $5835: $00
	nop                                              ; $5836: $00
	nop                                              ; $5837: $00
	rst  $38                                         ; $5838: $ff
	ld   a, $ff                                      ; $5839: $3e $ff
	ld   bc, $fcff                                   ; $583b: $01 $ff $fc
	sbc  l                                           ; $583e: $9d
	sbc  [hl]                                        ; $583f: $9e
	ccf                                              ; $5840: $3f
	ld   a, $3d                                      ; $5841: $3e $3d
	inc  [hl]                                        ; $5843: $34

jr_095_5844:
	ccf                                              ; $5844: $3f
	ld   h, $7f                                      ; $5845: $26 $7f
	ld   a, h                                        ; $5847: $7c

jr_095_5848:
	nop                                              ; $5848: $00
	nop                                              ; $5849: $00
	nop                                              ; $584a: $00
	nop                                              ; $584b: $00
	jr   nz, jr_095_584e                             ; $584c: $20 $00

jr_095_584e:
	jr   nc, jr_095_5890                             ; $584e: $30 $40

	ld   [hl], b                                     ; $5850: $70
	ld   b, b                                        ; $5851: $40
	nop                                              ; $5852: $00
	nop                                              ; $5853: $00
	jr   c, jr_095_5886                              ; $5854: $38 $30

	jr   jr_095_5858                                 ; $5856: $18 $00

jr_095_5858:
	ld   h, b                                        ; $5858: $60
	ret  nz                                          ; $5859: $c0

	ld   l, d                                        ; $585a: $6a
	ret  nz                                          ; $585b: $c0

	ld   [hl], h                                     ; $585c: $74
	ret  nz                                          ; $585d: $c0

	ld   h, b                                        ; $585e: $60
	ret  nz                                          ; $585f: $c0

	jr   nz, @-$1e                                   ; $5860: $20 $e0

	jr   nz, jr_095_5844                             ; $5862: $20 $e0

	jr   nz, @-$1e                                   ; $5864: $20 $e0

	jr   nc, jr_095_58d8                             ; $5866: $30 $70

	ld   bc, $ab00                                   ; $5868: $01 $00 $ab
	nop                                              ; $586b: $00
	ld   d, l                                        ; $586c: $55
	nop                                              ; $586d: $00
	ld   bc, $0300                                   ; $586e: $01 $00 $03
	nop                                              ; $5871: $00
	inc  bc                                          ; $5872: $03
	nop                                              ; $5873: $00
	rlca                                             ; $5874: $07
	ld   bc, $0207                                   ; $5875: $01 $07 $02
	rlca                                             ; $5878: $07
	dec  h                                           ; $5879: $25
	rlca                                             ; $587a: $07
	ld   l, l                                        ; $587b: $6d
	rrca                                             ; $587c: $0f
	ld   l, l                                        ; $587d: $6d
	rrca                                             ; $587e: $0f
	ld   a, [$fa0f]                                  ; $587f: $fa $0f $fa
	cpl                                              ; $5882: $2f
	ld   a, [$fa2f]                                  ; $5883: $fa $2f $fa

jr_095_5886:
	ld   a, a                                        ; $5886: $7f
	or   $cd                                         ; $5887: $f6 $cd
	ld   a, a                                        ; $5889: $7f
	call z, $ee7f                                    ; $588a: $cc $7f $ee
	ccf                                              ; $588d: $3f
	ld   l, [hl]                                     ; $588e: $6e
	ccf                                              ; $588f: $3f

jr_095_5890:
	ld   l, a                                        ; $5890: $6f
	dec  sp                                          ; $5891: $3b
	ccf                                              ; $5892: $3f
	add  hl, de                                      ; $5893: $19
	scf                                              ; $5894: $37
	inc  e                                           ; $5895: $1c
	rra                                              ; $5896: $1f
	rrca                                             ; $5897: $0f
	ccf                                              ; $5898: $3f
	ld   sp, hl                                      ; $5899: $f9
	rst  $38                                         ; $589a: $ff
	ret  nz                                          ; $589b: $c0

	cp   $9c                                         ; $589c: $fe $9c
	rst  $38                                         ; $589e: $ff
	cp   [hl]                                        ; $589f: $be
	db   $ed                                         ; $58a0: $ed
	xor  l                                           ; $58a1: $ad
	adc  $8e                                         ; $58a2: $ce $8e
	xor  $aa                                         ; $58a4: $ee $aa
	ld   a, [hl]                                     ; $58a6: $7e
	sbc  $0f                                         ; $58a7: $de $0f
	ld   b, $01                                      ; $58a9: $06 $01
	nop                                              ; $58ab: $00
	inc  bc                                          ; $58ac: $03
	nop                                              ; $58ad: $00
	inc  bc                                          ; $58ae: $03
	ld   bc, $0000                                   ; $58af: $01 $00 $00
	nop                                              ; $58b2: $00
	nop                                              ; $58b3: $00
	nop                                              ; $58b4: $00
	nop                                              ; $58b5: $00
	nop                                              ; $58b6: $00
	nop                                              ; $58b7: $00
	rst  $38                                         ; $58b8: $ff
	rst  $38                                         ; $58b9: $ff
	rst  $38                                         ; $58ba: $ff
	jr   nc, @+$01                                   ; $58bb: $30 $ff

	db   $fc                                         ; $58bd: $fc
	db   $fd                                         ; $58be: $fd
	cp   [hl]                                        ; $58bf: $be
	dec  sp                                          ; $58c0: $3b
	dec  sp                                          ; $58c1: $3b
	dec  a                                           ; $58c2: $3d
	inc  l                                           ; $58c3: $2c
	ccf                                              ; $58c4: $3f
	ld   h, $3f                                      ; $58c5: $26 $3f
	ld   a, h                                        ; $58c7: $7c
	nop                                              ; $58c8: $00
	nop                                              ; $58c9: $00
	nop                                              ; $58ca: $00
	nop                                              ; $58cb: $00
	jr   nz, jr_095_58ce                             ; $58cc: $20 $00

jr_095_58ce:
	jr   nc, jr_095_5910                             ; $58ce: $30 $40

	ld   [hl], b                                     ; $58d0: $70
	ld   b, b                                        ; $58d1: $40
	nop                                              ; $58d2: $00
	nop                                              ; $58d3: $00
	ld   l, $24                                      ; $58d4: $2e $24
	ld   b, $00                                      ; $58d6: $06 $00

jr_095_58d8:
	rlca                                             ; $58d8: $07
	dec  h                                           ; $58d9: $25
	rlca                                             ; $58da: $07
	ld   l, l                                        ; $58db: $6d
	rrca                                             ; $58dc: $0f
	ld   l, l                                        ; $58dd: $6d
	rrca                                             ; $58de: $0f
	ld   a, [$fa0f]                                  ; $58df: $fa $0f $fa
	cpl                                              ; $58e2: $2f
	ld   a, [$fa2f]                                  ; $58e3: $fa $2f $fa
	ld   a, a                                        ; $58e6: $7f
	ld   a, [$7fcd]                                  ; $58e7: $fa $cd $7f
	call z, $ee7f                                    ; $58ea: $cc $7f $ee
	ccf                                              ; $58ed: $3f
	ld   l, [hl]                                     ; $58ee: $6e
	ccf                                              ; $58ef: $3f
	ld   l, a                                        ; $58f0: $6f
	dec  sp                                          ; $58f1: $3b
	ccf                                              ; $58f2: $3f
	add  hl, de                                      ; $58f3: $19
	scf                                              ; $58f4: $37
	inc  e                                           ; $58f5: $1c
	rra                                              ; $58f6: $1f
	inc  c                                           ; $58f7: $0c
	nop                                              ; $58f8: $00
	rst  $20                                         ; $58f9: $e7
	add  e                                           ; $58fa: $83
	rst  $30                                         ; $58fb: $f7
	add  c                                           ; $58fc: $81
	ei                                               ; $58fd: $fb
	sub  b                                           ; $58fe: $90
	rst  $38                                         ; $58ff: $ff
	ld   c, b                                        ; $5900: $48
	rst  $38                                         ; $5901: $ff
	ld   l, h                                        ; $5902: $6c
	rst  $38                                         ; $5903: $ff
	or   [hl]                                        ; $5904: $b6
	rst  $38                                         ; $5905: $ff
	rst  $38                                         ; $5906: $ff
	ld   a, a                                        ; $5907: $7f
	ccf                                              ; $5908: $3f
	db   $fc                                         ; $5909: $fc
	db   $e3                                         ; $590a: $e3
	jp   $befe                                       ; $590b: $c3 $fe $be


	add  $87                                         ; $590e: $c6 $87

jr_095_5910:
	add  $84                                         ; $5910: $c6 $84
	ret  nz                                          ; $5912: $c0

	add  b                                           ; $5913: $80
	ldh  [c], a                                      ; $5914: $e2
	and  d                                           ; $5915: $a2
	ld   a, h                                        ; $5916: $7c
	call c, $040f                                    ; $5917: $dc $0f $04
	ld   bc, $0701                                   ; $591a: $01 $01 $07
	ld   b, $03                                      ; $591d: $06 $03
	ld   bc, $0000                                   ; $591f: $01 $00 $00
	nop                                              ; $5922: $00
	nop                                              ; $5923: $00
	nop                                              ; $5924: $00
	nop                                              ; $5925: $00
	nop                                              ; $5926: $00
	nop                                              ; $5927: $00
	rst  $38                                         ; $5928: $ff
	cp   $ff                                         ; $5929: $fe $ff
	ld   de, $febf                                   ; $592b: $11 $bf $fe
	add  hl, de                                      ; $592e: $19
	add  hl, de                                      ; $592f: $19
	add  hl, de                                      ; $5930: $19
	db   $10                                         ; $5931: $10

jr_095_5932:
	ld   bc, $8300                                   ; $5932: $01 $00 $83
	add  d                                           ; $5935: $82

jr_095_5936:
	ld   a, a                                        ; $5936: $7f
	ld   a, h                                        ; $5937: $7c
	cp   $7e                                         ; $5938: $fe $7e
	cp   $7a                                         ; $593a: $fe $7a
	cp   $7e                                         ; $593c: $fe $7e
	sbc  $7a                                         ; $593e: $de $7a
	sbc  $7a                                         ; $5940: $de $7a
	sbc  $7a                                         ; $5942: $de $7a
	sbc  $7a                                         ; $5944: $de $7a
	sbc  $7e                                         ; $5946: $de $7e
	ld   l, c                                        ; $5948: $69
	ret  nz                                          ; $5949: $c0

	ld   [hl], d                                     ; $594a: $72
	ret  nz                                          ; $594b: $c0

	ld   h, b                                        ; $594c: $60
	ret  nz                                          ; $594d: $c0

	ld   h, b                                        ; $594e: $60
	ret  nz                                          ; $594f: $c0

	jr   nz, jr_095_5932                             ; $5950: $20 $e0

	jr   nz, @-$1e                                   ; $5952: $20 $e0

	jr   nz, jr_095_5936                             ; $5954: $20 $e0

	jr   nc, jr_095_59c8                             ; $5956: $30 $70

	nop                                              ; $5958: $00
	nop                                              ; $5959: $00
	ld   bc, $2000                                   ; $595a: $01 $00 $20
	nop                                              ; $595d: $00
	jr   nc, jr_095_59a0                             ; $595e: $30 $40

	ld   [hl], b                                     ; $5960: $70
	ld   b, b                                        ; $5961: $40
	nop                                              ; $5962: $00
	nop                                              ; $5963: $00
	jr   c, jr_095_5996                              ; $5964: $38 $30

	jr   jr_095_5968                                 ; $5966: $18 $00

jr_095_5968:
	sub  c                                           ; $5968: $91
	nop                                              ; $5969: $00
	ld   hl, $0100                                   ; $596a: $21 $00 $01
	nop                                              ; $596d: $00
	ld   bc, $0300                                   ; $596e: $01 $00 $03
	nop                                              ; $5971: $00
	inc  bc                                          ; $5972: $03
	nop                                              ; $5973: $00
	rlca                                             ; $5974: $07
	ld   bc, $0207                                   ; $5975: $01 $07 $02
	ld   a, [bc]                                     ; $5978: $0a
	cp   $06                                         ; $5979: $fe $06
	cp   $02                                         ; $597b: $fe $02
	sbc  $02                                         ; $597d: $de $02
	ld   l, [hl]                                     ; $597f: $6e
	ld   [bc], a                                     ; $5980: $02
	ld   b, $02                                      ; $5981: $06 $02
	or   [hl]                                        ; $5983: $b6
	add  d                                           ; $5984: $82
	jp   c, $eeca                                    ; $5985: $da $ca $ee

	cp   $7e                                         ; $5988: $fe $7e
	cp   $fa                                         ; $598a: $fe $fa
	cp   $7e                                         ; $598c: $fe $7e
	sbc  $7a                                         ; $598e: $de $7a
	sbc  $7a                                         ; $5990: $de $7a
	sbc  $7a                                         ; $5992: $de $7a
	sbc  $7a                                         ; $5994: $de $7a

jr_095_5996:
	sbc  $7e                                         ; $5996: $de $7e
	jp   c, $ce7a                                    ; $5998: $da $7a $ce

	ld   a, d                                        ; $599b: $7a
	adc  $7e                                         ; $599c: $ce $7e
	adc  $7e                                         ; $599e: $ce $7e

jr_095_59a0:
	ld   c, [hl]                                     ; $59a0: $4e
	sbc  $ce                                         ; $59a1: $de $ce
	sbc  $ce                                         ; $59a3: $de $ce
	sbc  $8e                                         ; $59a5: $de $8e
	sbc  $38                                         ; $59a7: $de $38
	ld   a, b                                        ; $59a9: $78
	ld   [hl], $76                                   ; $59aa: $36 $76
	inc  de                                          ; $59ac: $13
	ld   [hl], e                                     ; $59ad: $73
	ld   [de], a                                     ; $59ae: $12
	ld   [hl], e                                     ; $59af: $73
	ld   [de], a                                     ; $59b0: $12
	ld   d, e                                        ; $59b1: $53
	ld   a, [de]                                     ; $59b2: $1a
	ld   e, e                                        ; $59b3: $5b
	dec  e                                           ; $59b4: $1d
	dec  d                                           ; $59b5: $15
	rra                                              ; $59b6: $1f
	rra                                              ; $59b7: $1f
	nop                                              ; $59b8: $00
	nop                                              ; $59b9: $00
	nop                                              ; $59ba: $00
	nop                                              ; $59bb: $00
	add  b                                           ; $59bc: $80
	nop                                              ; $59bd: $00
	pop  hl                                          ; $59be: $e1
	ret  nz                                          ; $59bf: $c0

	rst  $30                                         ; $59c0: $f7
	di                                               ; $59c1: $f3
	rst  $38                                         ; $59c2: $ff
	db   $ec                                         ; $59c3: $ec
	ld   a, a                                        ; $59c4: $7f
	ldh  [rIE], a                                    ; $59c5: $e0 $ff
	and  b                                           ; $59c7: $a0

jr_095_59c8:
	rrca                                             ; $59c8: $0f
	inc  b                                           ; $59c9: $04
	rra                                              ; $59ca: $1f
	ld   [$307f], sp                                 ; $59cb: $08 $7f $30
	rst  $38                                         ; $59ce: $ff
	ret  nz                                          ; $59cf: $c0

	rst  $38                                         ; $59d0: $ff
	nop                                              ; $59d1: $00
	rst  $38                                         ; $59d2: $ff
	nop                                              ; $59d3: $00
	ei                                               ; $59d4: $fb
	ld   bc, $01e1                                   ; $59d5: $01 $e1 $01
	adc  d                                           ; $59d8: $8a
	sbc  [hl]                                        ; $59d9: $9e
	adc  d                                           ; $59da: $8a
	sbc  [hl]                                        ; $59db: $9e
	adc  d                                           ; $59dc: $8a
	sbc  [hl]                                        ; $59dd: $9e
	adc  [hl]                                        ; $59de: $8e
	cp   [hl]                                        ; $59df: $be
	sbc  d                                           ; $59e0: $9a
	cp   d                                           ; $59e1: $ba
	sbc  d                                           ; $59e2: $9a
	cp   d                                           ; $59e3: $ba
	ld   a, [de]                                     ; $59e4: $1a
	ld   a, [hl-]                                    ; $59e5: $3a
	ld   a, [de]                                     ; $59e6: $1a
	ld   a, [hl-]                                    ; $59e7: $3a
	db   $10                                         ; $59e8: $10
	jr   nc, jr_095_59fb                             ; $59e9: $30 $10

	jr   nc, jr_095_5a09                             ; $59eb: $30 $1c

	inc  a                                           ; $59ed: $3c
	ld   [de], a                                     ; $59ee: $12
	ld   [hl], d                                     ; $59ef: $72
	ld   de, $1c71                                   ; $59f0: $11 $71 $1c
	db   $fc                                         ; $59f3: $fc
	ld   [de], a                                     ; $59f4: $12
	ldh  a, [c]                                      ; $59f5: $f2
	rla                                              ; $59f6: $17
	di                                               ; $59f7: $f3
	daa                                              ; $59f8: $27
	jr   nz, jr_095_5a1b                             ; $59f9: $20 $20

jr_095_59fb:
	jr   nz, @+$42                                   ; $59fb: $20 $40

	ld   b, b                                        ; $59fd: $40
	ld   bc, $8700                                   ; $59fe: $01 $00 $87
	add  b                                           ; $5a01: $80
	ld   c, [hl]                                     ; $5a02: $4e
	ld   b, b                                        ; $5a03: $40
	dec  c                                           ; $5a04: $0d
	ld   bc, $8080                                   ; $5a05: $01 $80 $80
	pop  bc                                          ; $5a08: $c1

jr_095_5a09:
	ld   bc, $0101                                   ; $5a09: $01 $01 $01
	ld   bc, $0101                                   ; $5a0c: $01 $01 $01
	ld   bc, $0101                                   ; $5a0f: $01 $01 $01
	ld   bc, $f901                                   ; $5a12: $01 $01 $f9
	ld   sp, hl                                      ; $5a15: $f9
	ld   bc, $1a01                                   ; $5a16: $01 $01 $1a
	ld   a, d                                        ; $5a19: $7a
	ld   a, [de]                                     ; $5a1a: $1a

jr_095_5a1b:
	ld   a, d                                        ; $5a1b: $7a
	ld   a, $76                                      ; $5a1c: $3e $76
	ld   a, $f2                                      ; $5a1e: $3e $f2
	ld   [hl], $f2                                   ; $5a20: $36 $f2
	ld   [hl+], a                                    ; $5a22: $22
	ldh  [c], a                                      ; $5a23: $e2
	ld   [hl+], a                                    ; $5a24: $22
	ldh  [c], a                                      ; $5a25: $e2
	ld   [hl+], a                                    ; $5a26: $22
	ldh  [c], a                                      ; $5a27: $e2
	cp   $7e                                         ; $5a28: $fe $7e
	cp   $7a                                         ; $5a2a: $fe $7a
	cp   $7e                                         ; $5a2c: $fe $7e
	sbc  $7a                                         ; $5a2e: $de $7a
	sbc  $7a                                         ; $5a30: $de $7a
	sbc  $7a                                         ; $5a32: $de $7a
	sbc  $7a                                         ; $5a34: $de $7a
	sbc  $7e                                         ; $5a36: $de $7e
	jr   c, jr_095_5ab2                              ; $5a38: $38 $78

	ld   [hl], $76                                   ; $5a3a: $36 $76
	ld   de, $1071                                   ; $5a3c: $11 $71 $10
	ld   [hl], b                                     ; $5a3f: $70
	db   $10                                         ; $5a40: $10
	ld   d, b                                        ; $5a41: $50
	db   $10                                         ; $5a42: $10
	db   $10                                         ; $5a43: $10
	db   $10                                         ; $5a44: $10
	db   $10                                         ; $5a45: $10
	db   $10                                         ; $5a46: $10
	jr   nc, jr_095_5a49                             ; $5a47: $30 $00

jr_095_5a49:
	nop                                              ; $5a49: $00
	nop                                              ; $5a4a: $00
	nop                                              ; $5a4b: $00
	add  b                                           ; $5a4c: $80
	nop                                              ; $5a4d: $00
	pop  hl                                          ; $5a4e: $e1
	ret  nz                                          ; $5a4f: $c0

	scf                                              ; $5a50: $37
	inc  sp                                          ; $5a51: $33
	inc  e                                           ; $5a52: $1c
	inc  e                                           ; $5a53: $1c
	ld   sp, $5e31                                   ; $5a54: $31 $31 $5e
	ld   e, [hl]                                     ; $5a57: $5e
	rrca                                             ; $5a58: $0f
	inc  b                                           ; $5a59: $04
	rra                                              ; $5a5a: $1f
	ld   [$307f], sp                                 ; $5a5b: $08 $7f $30
	rst  $38                                         ; $5a5e: $ff
	pop  bc                                          ; $5a5f: $c1
	rst  $38                                         ; $5a60: $ff
	rlca                                             ; $5a61: $07
	ld   a, c                                        ; $5a62: $79
	add  hl, sp                                      ; $5a63: $39
	pop  bc                                          ; $5a64: $c1
	pop  bc                                          ; $5a65: $c1
	ld   bc, $8e01                                   ; $5a66: $01 $01 $8e
	sbc  [hl]                                        ; $5a69: $9e
	adc  d                                           ; $5a6a: $8a
	sbc  [hl]                                        ; $5a6b: $9e
	adc  d                                           ; $5a6c: $8a
	sbc  [hl]                                        ; $5a6d: $9e
	adc  d                                           ; $5a6e: $8a
	cp   [hl]                                        ; $5a6f: $be
	sbc  d                                           ; $5a70: $9a
	cp   [hl]                                        ; $5a71: $be
	sbc  [hl]                                        ; $5a72: $9e
	cp   [hl]                                        ; $5a73: $be
	ld   d, $36                                      ; $5a74: $16 $36
	ld   d, $76                                      ; $5a76: $16 $76
	inc  de                                          ; $5a78: $13
	inc  sp                                          ; $5a79: $33
	rra                                              ; $5a7a: $1f
	inc  a                                           ; $5a7b: $3c

jr_095_5a7c:
	rra                                              ; $5a7c: $1f
	ld   [hl], b                                     ; $5a7d: $70
	rra                                              ; $5a7e: $1f
	ld   [hl], c                                     ; $5a7f: $71
	ld   e, $f6                                      ; $5a80: $1e $f6
	jr   jr_095_5a7c                                 ; $5a82: $18 $f8

	db   $10                                         ; $5a84: $10
	ldh  a, [rAUD1LEN]                               ; $5a85: $f0 $11
	pop  af                                          ; $5a87: $f1
	ret  nz                                          ; $5a88: $c0

	ret  nz                                          ; $5a89: $c0

	ret  nz                                          ; $5a8a: $c0

	ld   b, b                                        ; $5a8b: $40
	bit  1, a                                        ; $5a8c: $cb $4f
	ldh  [$e0], a                                    ; $5a8e: $e0 $e0
	inc  l                                           ; $5a90: $2c
	inc  l                                           ; $5a91: $2c
	ld   [hl], e                                     ; $5a92: $73
	ld   [hl], e                                     ; $5a93: $73
	jp   nc, $25d2                                   ; $5a94: $d2 $d2 $25

	dec  h                                           ; $5a97: $25
	add  hl, de                                      ; $5a98: $19
	add  hl, de                                      ; $5a99: $19
	pop  hl                                          ; $5a9a: $e1
	pop  hl                                          ; $5a9b: $e1
	inc  bc                                          ; $5a9c: $03
	inc  bc                                          ; $5a9d: $03
	rlca                                             ; $5a9e: $07
	dec  b                                           ; $5a9f: $05
	ld   a, a                                        ; $5aa0: $7f
	ld   a, c                                        ; $5aa1: $79
	sbc  l                                           ; $5aa2: $9d
	sub  c                                           ; $5aa3: $91
	ld   a, c                                        ; $5aa4: $79
	ld   h, c                                        ; $5aa5: $61
	di                                               ; $5aa6: $f3
	pop  bc                                          ; $5aa7: $c1
	ld   e, $7e                                      ; $5aa8: $1e $7e
	ld   [de], a                                     ; $5aaa: $12
	ldh  a, [c]                                      ; $5aab: $f2
	ld   [hl], $f2                                   ; $5aac: $36 $f2
	ld   a, $f2                                      ; $5aae: $3e $f2
	ld   a, $f2                                      ; $5ab0: $3e $f2

jr_095_5ab2:
	ld   a, $e2                                      ; $5ab2: $3e $e2
	ld   a, $e2                                      ; $5ab4: $3e $e2
	ld   a, $e2                                      ; $5ab6: $3e $e2
	rlca                                             ; $5ab8: $07
	dec  h                                           ; $5ab9: $25
	rlca                                             ; $5aba: $07
	ld   l, l                                        ; $5abb: $6d
	rrca                                             ; $5abc: $0f
	ld   l, l                                        ; $5abd: $6d
	rrca                                             ; $5abe: $0f
	ld   a, [$fa0f]                                  ; $5abf: $fa $0f $fa
	cpl                                              ; $5ac2: $2f
	ld   a, [$fa2e]                                  ; $5ac3: $fa $2e $fa
	ld   a, a                                        ; $5ac6: $7f
	ld   sp, hl                                      ; $5ac7: $f9
	call wDormRoomDaySpritesX                                       ; $5ac8: $cd $7f $cc
	ld   a, a                                        ; $5acb: $7f
	xor  $3f                                         ; $5acc: $ee $3f
	ld   l, [hl]                                     ; $5ace: $6e
	ccf                                              ; $5acf: $3f
	ld   l, a                                        ; $5ad0: $6f
	dec  sp                                          ; $5ad1: $3b
	ccf                                              ; $5ad2: $3f
	add  hl, de                                      ; $5ad3: $19
	scf                                              ; $5ad4: $37
	inc  e                                           ; $5ad5: $1c
	rra                                              ; $5ad6: $1f
	inc  c                                           ; $5ad7: $0c
	nop                                              ; $5ad8: $00
	rst  $20                                         ; $5ad9: $e7
	add  e                                           ; $5ada: $83
	rst  $30                                         ; $5adb: $f7
	add  c                                           ; $5adc: $81
	ei                                               ; $5add: $fb
	sub  b                                           ; $5ade: $90
	rst  $38                                         ; $5adf: $ff
	ld   c, b                                        ; $5ae0: $48
	rst  $38                                         ; $5ae1: $ff
	ld   l, h                                        ; $5ae2: $6c
	rst  $38                                         ; $5ae3: $ff
	or   [hl]                                        ; $5ae4: $b6
	rst  $38                                         ; $5ae5: $ff
	rst  $38                                         ; $5ae6: $ff
	ld   a, a                                        ; $5ae7: $7f
	ccf                                              ; $5ae8: $3f
	xor  $fe                                         ; $5ae9: $ee $fe
	ret  nz                                          ; $5aeb: $c0

	ld   hl, sp-$80                                  ; $5aec: $f8 $80
	ldh  a, [$80]                                    ; $5aee: $f0 $80
	db   $fc                                         ; $5af0: $fc
	sbc  h                                           ; $5af1: $9c
	rst  $38                                         ; $5af2: $ff
	cp   [hl]                                        ; $5af3: $be
	rst  $30                                         ; $5af4: $f7
	add  e                                           ; $5af5: $83
	ld   h, b                                        ; $5af6: $60
	ret  nz                                          ; $5af7: $c0

	rrca                                             ; $5af8: $0f
	rlca                                             ; $5af9: $07
	ld   bc, $0000                                   ; $5afa: $01 $00 $00
	nop                                              ; $5afd: $00
	nop                                              ; $5afe: $00
	nop                                              ; $5aff: $00
	ld   bc, $0100                                   ; $5b00: $01 $00 $01
	ld   bc, $0000                                   ; $5b03: $01 $00 $00
	nop                                              ; $5b06: $00
	nop                                              ; $5b07: $00
	rst  $38                                         ; $5b08: $ff
	scf                                              ; $5b09: $37
	rst  $38                                         ; $5b0a: $ff
	ld   hl, sp+$7f                                  ; $5b0b: $f8 $7f
	nop                                              ; $5b0d: $00
	rst  $38                                         ; $5b0e: $ff
	ld   a, h                                        ; $5b0f: $7c
	sbc  a                                           ; $5b10: $9f
	sbc  [hl]                                        ; $5b11: $9e
	dec  a                                           ; $5b12: $3d
	ccf                                              ; $5b13: $3f
	dec  a                                           ; $5b14: $3d
	inc  [hl]                                        ; $5b15: $34
	ld   a, a                                        ; $5b16: $7f
	ld   a, d                                        ; $5b17: $7a
	ld   a, [hl]                                     ; $5b18: $7e
	cp   $fe                                         ; $5b19: $fe $fe
	ld   a, [$7efe]                                  ; $5b1b: $fa $fe $7e
	sbc  $7a                                         ; $5b1e: $de $7a
	sbc  $7a                                         ; $5b20: $de $7a
	sbc  $7a                                         ; $5b22: $de $7a
	sbc  $7a                                         ; $5b24: $de $7a
	sbc  $7e                                         ; $5b26: $de $7e
	nop                                              ; $5b28: $00
	nop                                              ; $5b29: $00
	nop                                              ; $5b2a: $00
	nop                                              ; $5b2b: $00
	jr   nz, jr_095_5b2e                             ; $5b2c: $20 $00

jr_095_5b2e:
	jr   nc, jr_095_5b70                             ; $5b2e: $30 $40

	ld   [hl], b                                     ; $5b30: $70
	ld   b, b                                        ; $5b31: $40
	rlca                                             ; $5b32: $07
	rrca                                             ; $5b33: $0f
	ld   sp, $4160                                   ; $5b34: $31 $60 $41
	jr   nz, jr_095_5b3a                             ; $5b37: $20 $01

	nop                                              ; $5b39: $00

jr_095_5b3a:
	ld   bc, $0100                                   ; $5b3a: $01 $00 $01
	nop                                              ; $5b3d: $00
	ld   bc, $0300                                   ; $5b3e: $01 $00 $03
	nop                                              ; $5b41: $00
	inc  bc                                          ; $5b42: $03
	nop                                              ; $5b43: $00
	add  a                                           ; $5b44: $87
	add  c                                           ; $5b45: $81
	add  a                                           ; $5b46: $87
	add  d                                           ; $5b47: $82
	cpl                                              ; $5b48: $2f
	rra                                              ; $5b49: $1f
	nop                                              ; $5b4a: $00
	nop                                              ; $5b4b: $00
	add  b                                           ; $5b4c: $80
	nop                                              ; $5b4d: $00
	pop  hl                                          ; $5b4e: $e1
	ret  nz                                          ; $5b4f: $c0

	scf                                              ; $5b50: $37
	inc  sp                                          ; $5b51: $33
	ccf                                              ; $5b52: $3f
	inc  l                                           ; $5b53: $2c
	cpl                                              ; $5b54: $2f
	jr   nz, jr_095_5b3a                             ; $5b55: $20 $e3

	ldh  [$38], a                                    ; $5b57: $e0 $38
	ld   a, b                                        ; $5b59: $78
	ld   [hl], $76                                   ; $5b5a: $36 $76
	inc  de                                          ; $5b5c: $13

jr_095_5b5d:
	ld   [hl], e                                     ; $5b5d: $73
	inc  de                                          ; $5b5e: $13
	ld   [hl], e                                     ; $5b5f: $73
	inc  de                                          ; $5b60: $13
	ld   d, e                                        ; $5b61: $53
	inc  de                                          ; $5b62: $13
	ld   d, e                                        ; $5b63: $53
	ld   [de], a                                     ; $5b64: $12
	inc  de                                          ; $5b65: $13
	ld   d, $17                                      ; $5b66: $16 $17
	nop                                              ; $5b68: $00
	nop                                              ; $5b69: $00
	nop                                              ; $5b6a: $00
	nop                                              ; $5b6b: $00
	add  b                                           ; $5b6c: $80

jr_095_5b6d:
	nop                                              ; $5b6d: $00
	pop  hl                                          ; $5b6e: $e1
	ret  nz                                          ; $5b6f: $c0

jr_095_5b70:
	ld   [hl], a                                     ; $5b70: $77
	di                                               ; $5b71: $f3
	ld   a, a                                        ; $5b72: $7f
	db   $ec                                         ; $5b73: $ec
	rst  $28                                         ; $5b74: $ef
	ldh  [$e3], a                                    ; $5b75: $e0 $e3
	ldh  [rIF], a                                    ; $5b77: $e0 $0f
	inc  b                                           ; $5b79: $04
	rra                                              ; $5b7a: $1f
	ld   [$307f], sp                                 ; $5b7b: $08 $7f $30
	rst  $38                                         ; $5b7e: $ff
	ret  nz                                          ; $5b7f: $c0

	rst  $38                                         ; $5b80: $ff
	ld   bc, $01fd                                   ; $5b81: $01 $fd $01
	ld   sp, hl                                      ; $5b84: $f9
	ld   bc, $01f1                                   ; $5b85: $01 $f1 $01
	adc  [hl]                                        ; $5b88: $8e
	sbc  [hl]                                        ; $5b89: $9e
	adc  d                                           ; $5b8a: $8a
	sbc  [hl]                                        ; $5b8b: $9e
	adc  d                                           ; $5b8c: $8a

jr_095_5b8d:
	sbc  [hl]                                        ; $5b8d: $9e
	adc  d                                           ; $5b8e: $8a
	cp   [hl]                                        ; $5b8f: $be
	sbc  d                                           ; $5b90: $9a
	cp   [hl]                                        ; $5b91: $be
	sbc  d                                           ; $5b92: $9a
	cp   [hl]                                        ; $5b93: $be
	ld   a, [de]                                     ; $5b94: $1a
	ld   a, $1e                                      ; $5b95: $3e $1e
	ld   a, $17                                      ; $5b97: $3e $17
	scf                                              ; $5b99: $37
	rla                                              ; $5b9a: $17
	scf                                              ; $5b9b: $37
	ld   e, $3c                                      ; $5b9c: $1e $3c
	db   $10                                         ; $5b9e: $10
	ld   [hl], b                                     ; $5b9f: $70
	db   $10                                         ; $5ba0: $10
	ld   [hl], b                                     ; $5ba1: $70
	inc  de                                          ; $5ba2: $13
	ldh  a, [rAUD1LEN]                               ; $5ba3: $f0 $11
	ldh  a, [rAUD1SWEEP]                             ; $5ba5: $f0 $10
	ldh  a, [$e0]                                    ; $5ba7: $f0 $e0
	ldh  [$e0], a                                    ; $5ba9: $e0 $e0
	and  b                                           ; $5bab: $a0
	jr   nz, jr_095_5bce                             ; $5bac: $20 $20

	jr   nz, jr_095_5bb0                             ; $5bae: $20 $00

jr_095_5bb0:
	nop                                              ; $5bb0: $00
	nop                                              ; $5bb1: $00
	nop                                              ; $5bb2: $00
	nop                                              ; $5bb3: $00
	ret  nz                                          ; $5bb4: $c0

	nop                                              ; $5bb5: $00
	ldh  [rP1], a                                    ; $5bb6: $e0 $00
	ld   bc, $0101                                   ; $5bb8: $01 $01 $01
	ld   bc, $0103                                   ; $5bbb: $01 $03 $01
	inc  bc                                          ; $5bbe: $03
	ld   bc, $0107                                   ; $5bbf: $01 $07 $01
	rlca                                             ; $5bc2: $07
	ld   bc, $010f                                   ; $5bc3: $01 $0f $01
	ccf                                              ; $5bc6: $3f
	ld   bc, $7e1e                                   ; $5bc7: $01 $1e $7e

jr_095_5bca:
	ld   e, $7e                                      ; $5bca: $1e $7e
	ld   a, $6e                                      ; $5bcc: $3e $6e

jr_095_5bce:
	ld   l, $e6                                      ; $5bce: $2e $e6
	ld   [hl+], a                                    ; $5bd0: $22
	ldh  [c], a                                      ; $5bd1: $e2
	ld   [hl+], a                                    ; $5bd2: $22
	ldh  [c], a                                      ; $5bd3: $e2
	ld   [hl+], a                                    ; $5bd4: $22
	ldh  [c], a                                      ; $5bd5: $e2
	ld   a, [hl-]                                    ; $5bd6: $3a
	ldh  [c], a                                      ; $5bd7: $e2
	inc  h                                           ; $5bd8: $24
	inc  b                                           ; $5bd9: $04
	inc  e                                           ; $5bda: $1c
	jr   jr_095_5b5d                                 ; $5bdb: $18 $80

	nop                                              ; $5bdd: $00
	pop  hl                                          ; $5bde: $e1
	ret  nz                                          ; $5bdf: $c0

	scf                                              ; $5be0: $37
	inc  sp                                          ; $5be1: $33
	ccf                                              ; $5be2: $3f
	inc  l                                           ; $5be3: $2c
	cpl                                              ; $5be4: $2f
	jr   nz, jr_095_5bca                             ; $5be5: $20 $e3

	ldh  [rAUDVOL], a                                ; $5be7: $e0 $24
	inc  b                                           ; $5be9: $04
	inc  e                                           ; $5bea: $1c
	jr   jr_095_5b6d                                 ; $5beb: $18 $80

	nop                                              ; $5bed: $00
	pop  hl                                          ; $5bee: $e1
	ret  nz                                          ; $5bef: $c0

	rst  $30                                         ; $5bf0: $f7
	di                                               ; $5bf1: $f3
	rst  $38                                         ; $5bf2: $ff
	db   $ec                                         ; $5bf3: $ec
	ld   a, a                                        ; $5bf4: $7f
	ldh  [rIE], a                                    ; $5bf5: $e0 $ff
	and  b                                           ; $5bf7: $a0
	inc  h                                           ; $5bf8: $24
	inc  b                                           ; $5bf9: $04
	inc  e                                           ; $5bfa: $1c
	jr   @-$7e                                       ; $5bfb: $18 $80

	nop                                              ; $5bfd: $00
	pop  hl                                          ; $5bfe: $e1
	ret  nz                                          ; $5bff: $c0

	scf                                              ; $5c00: $37
	inc  sp                                          ; $5c01: $33
	inc  e                                           ; $5c02: $1c
	inc  e                                           ; $5c03: $1c
	ld   sp, $5e31                                   ; $5c04: $31 $31 $5e
	ld   e, [hl]                                     ; $5c07: $5e
	inc  h                                           ; $5c08: $24
	inc  b                                           ; $5c09: $04
	inc  e                                           ; $5c0a: $1c
	jr   jr_095_5b8d                                 ; $5c0b: $18 $80

	nop                                              ; $5c0d: $00
	pop  hl                                          ; $5c0e: $e1
	ret  nz                                          ; $5c0f: $c0

	ld   [hl], a                                     ; $5c10: $77
	di                                               ; $5c11: $f3
	ld   a, a                                        ; $5c12: $7f
	db   $ec                                         ; $5c13: $ec
	rst  $28                                         ; $5c14: $ef
	ldh  [$e3], a                                    ; $5c15: $e0 $e3
	ldh  [rP1], a                                    ; $5c17: $e0 $00
	nop                                              ; $5c19: $00
	nop                                              ; $5c1a: $00
	nop                                              ; $5c1b: $00
	nop                                              ; $5c1c: $00
	nop                                              ; $5c1d: $00
	nop                                              ; $5c1e: $00
	nop                                              ; $5c1f: $00
	nop                                              ; $5c20: $00
	nop                                              ; $5c21: $00
	nop                                              ; $5c22: $00
	nop                                              ; $5c23: $00
	nop                                              ; $5c24: $00
	nop                                              ; $5c25: $00
	nop                                              ; $5c26: $00
	nop                                              ; $5c27: $00
	nop                                              ; $5c28: $00
	db   $fd                                         ; $5c29: $fd
	ld   [de], a                                     ; $5c2a: $12
	cp   $5a                                         ; $5c2b: $fe $5a
	rst  $38                                         ; $5c2d: $ff
	ld   e, a                                        ; $5c2e: $5f
	rst  $38                                         ; $5c2f: $ff
	scf                                              ; $5c30: $37
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5c31: $cf
	add  $83                                         ; $5c32: $c6 $83
	ret  nz                                          ; $5c34: $c0

	add  b                                           ; $5c35: $80
	ret  nz                                          ; $5c36: $c0

	add  b                                           ; $5c37: $80
	nop                                              ; $5c38: $00
	inc  d                                           ; $5c39: $14
	nop                                              ; $5c3a: $00
	ret                                              ; $5c3b: $c9


	sub  b                                           ; $5c3c: $90
	ei                                               ; $5c3d: $fb
	or   c                                           ; $5c3e: $b1
	rst  $38                                         ; $5c3f: $ff
	cp   d                                           ; $5c40: $ba
	rst  $38                                         ; $5c41: $ff
	rst  JumpTable                                         ; $5c42: $df
	rst  $38                                         ; $5c43: $ff
	ld   a, $5c                                      ; $5c44: $3e $5c
	inc  c                                           ; $5c46: $0c
	ld   [$7f12], sp                                 ; $5c47: $08 $12 $7f
	ld   [hl], $7f                                   ; $5c4a: $36 $7f
	ccf                                              ; $5c4c: $3f
	rst  $38                                         ; $5c4d: $ff
	ld   [hl], d                                     ; $5c4e: $72
	rst  $38                                         ; $5c4f: $ff
	xor  a                                           ; $5c50: $af
	ldh  a, [rAUD4GO]                                ; $5c51: $f0 $23
	add  b                                           ; $5c53: $80
	ld   bc, $0000                                   ; $5c54: $01 $00 $00
	nop                                              ; $5c57: $00
	ld   a, [$fefe]                                  ; $5c58: $fa $fe $fe
	cp   $be                                         ; $5c5b: $fe $be
	cp   $de                                         ; $5c5d: $fe $de
	ld   a, $fe                                      ; $5c5f: $3e $fe
	ld   a, $fe                                      ; $5c61: $3e $fe
	ld   e, $fe                                      ; $5c63: $1e $fe
	ld   a, $fe                                      ; $5c65: $3e $fe
	ld   e, $c0                                      ; $5c67: $1e $c0
	add  b                                           ; $5c69: $80
	ret  nz                                          ; $5c6a: $c0

	add  b                                           ; $5c6b: $80
	ret  nz                                          ; $5c6c: $c0

	add  b                                           ; $5c6d: $80
	ret  nz                                          ; $5c6e: $c0

	add  b                                           ; $5c6f: $80
	ret  nz                                          ; $5c70: $c0

	add  b                                           ; $5c71: $80
	ret  nz                                          ; $5c72: $c0

	add  b                                           ; $5c73: $80
	ret  nz                                          ; $5c74: $c0

	add  b                                           ; $5c75: $80
	db   $fc                                         ; $5c76: $fc
	ldh  a, [rP1]                                    ; $5c77: $f0 $00
	nop                                              ; $5c79: $00
	nop                                              ; $5c7a: $00
	nop                                              ; $5c7b: $00
	nop                                              ; $5c7c: $00
	nop                                              ; $5c7d: $00
	nop                                              ; $5c7e: $00
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	nop                                              ; $5c81: $00
	nop                                              ; $5c82: $00
	nop                                              ; $5c83: $00
	nop                                              ; $5c84: $00
	nop                                              ; $5c85: $00
	nop                                              ; $5c86: $00
	nop                                              ; $5c87: $00
	nop                                              ; $5c88: $00
	nop                                              ; $5c89: $00
	nop                                              ; $5c8a: $00
	nop                                              ; $5c8b: $00
	nop                                              ; $5c8c: $00
	nop                                              ; $5c8d: $00
	nop                                              ; $5c8e: $00
	nop                                              ; $5c8f: $00
	nop                                              ; $5c90: $00
	nop                                              ; $5c91: $00
	ld   bc, $0500                                   ; $5c92: $01 $00 $05
	inc  bc                                          ; $5c95: $03
	cpl                                              ; $5c96: $2f
	rra                                              ; $5c97: $1f
	ld   a, [$fe3e]                                  ; $5c98: $fa $3e $fe
	ld   a, $fe                                      ; $5c9b: $3e $fe
	ld   a, $fe                                      ; $5c9d: $3e $fe
	ld   e, $fe                                      ; $5c9f: $1e $fe
	ld   e, $fe                                      ; $5ca1: $1e $fe
	ld   c, $fe                                      ; $5ca3: $0e $fe
	xor  $fe                                         ; $5ca5: $ee $fe
	ld   c, $ff                                      ; $5ca7: $0e $ff
	adc  a                                           ; $5ca9: $8f
	rst  JumpTable                                         ; $5caa: $df
	add  a                                           ; $5cab: $87
	sbc  a                                           ; $5cac: $9f
	db   $db                                         ; $5cad: $db
	jp   $c141                                       ; $5cae: $c3 $41 $c1


	ret  nz                                          ; $5cb1: $c0

	db   $e3                                         ; $5cb2: $e3
	jp   $a0e0                                       ; $5cb3: $c3 $e0 $a0


	ldh  [$60], a                                    ; $5cb6: $e0 $60
	ret  nz                                          ; $5cb8: $c0

	nop                                              ; $5cb9: $00
	ldh  [$c0], a                                    ; $5cba: $e0 $c0
	ld   [hl], c                                     ; $5cbc: $71
	ld   h, b                                        ; $5cbd: $60
	pop  af                                          ; $5cbe: $f1
	add  b                                           ; $5cbf: $80
	add  b                                           ; $5cc0: $80
	nop                                              ; $5cc1: $00
	add  b                                           ; $5cc2: $80
	add  b                                           ; $5cc3: $80
	nop                                              ; $5cc4: $00
	nop                                              ; $5cc5: $00
	ld   bc, $bf00                                   ; $5cc6: $01 $00 $bf
	ld   a, a                                        ; $5cc9: $7f
	db   $f4                                         ; $5cca: $f4
	db   $dd                                         ; $5ccb: $dd
	db   $fc                                         ; $5ccc: $fc
	ld   l, $0c                                      ; $5ccd: $2e $0c
	nop                                              ; $5ccf: $00
	ld   bc, $0007                                   ; $5cd0: $01 $07 $00
	nop                                              ; $5cd3: $00
	nop                                              ; $5cd4: $00
	nop                                              ; $5cd5: $00
	nop                                              ; $5cd6: $00
	nop                                              ; $5cd7: $00
	cp   $8e                                         ; $5cd8: $fe $8e
	ld   a, [hl]                                     ; $5cda: $7e
	xor  $7e                                         ; $5cdb: $ee $7e
	ld   c, $7e                                      ; $5cdd: $0e $7e
	ld   c, $fe                                      ; $5cdf: $0e $fe
	ld   a, [bc]                                     ; $5ce1: $0a
	ld   a, $06                                      ; $5ce2: $3e $06
	ld   a, [hl]                                     ; $5ce4: $7e
	ld   b, $7e                                      ; $5ce5: $06 $7e
	ld   [bc], a                                     ; $5ce7: $02
	ldh  a, [hScriptOpcodeParams]                                    ; $5ce8: $f0 $a0
	ld   [hl], b                                     ; $5cea: $70
	ld   d, b                                        ; $5ceb: $50
	jr   nc, jr_095_5d1e                             ; $5cec: $30 $30

	jr   jr_095_5d00                                 ; $5cee: $18 $10

	ld   [$0c08], sp                                 ; $5cf0: $08 $08 $0c
	ld   [$0404], sp                                 ; $5cf3: $08 $04 $04
	ld   [bc], a                                     ; $5cf6: $02
	ld   [bc], a                                     ; $5cf7: $02
	ld   [bc], a                                     ; $5cf8: $02
	ld   bc, $0103                                   ; $5cf9: $01 $03 $01
	ld   bc, $0103                                   ; $5cfc: $01 $03 $01
	inc  bc                                          ; $5cff: $03

jr_095_5d00:
	nop                                              ; $5d00: $00
	inc  bc                                          ; $5d01: $03
	nop                                              ; $5d02: $00
	nop                                              ; $5d03: $00
	ld   bc, $000c                                   ; $5d04: $01 $0c $00
	nop                                              ; $5d07: $00
	nop                                              ; $5d08: $00
	nop                                              ; $5d09: $00
	nop                                              ; $5d0a: $00
	nop                                              ; $5d0b: $00
	nop                                              ; $5d0c: $00
	add  b                                           ; $5d0d: $80
	nop                                              ; $5d0e: $00
	add  b                                           ; $5d0f: $80
	nop                                              ; $5d10: $00
	nop                                              ; $5d11: $00
	nop                                              ; $5d12: $00
	nop                                              ; $5d13: $00
	pop  af                                          ; $5d14: $f1
	ldh  [rSB], a                                    ; $5d15: $e0 $01
	nop                                              ; $5d17: $00
	cp   $0e                                         ; $5d18: $fe $0e
	cp   $02                                         ; $5d1a: $fe $02
	cp   $06                                         ; $5d1c: $fe $06

jr_095_5d1e:
	cp   $1e                                         ; $5d1e: $fe $1e
	ldh  a, [c]                                      ; $5d20: $f2
	ld   [de], a                                     ; $5d21: $12
	ldh  a, [c]                                      ; $5d22: $f2
	ld   [hl-], a                                    ; $5d23: $32
	ldh  a, [c]                                      ; $5d24: $f2
	ld   [hl-], a                                    ; $5d25: $32
	ldh  a, [c]                                      ; $5d26: $f2
	ld   [hl], d                                     ; $5d27: $72
	ld   bc, $0001                                   ; $5d28: $01 $01 $00
	nop                                              ; $5d2b: $00
	nop                                              ; $5d2c: $00
	nop                                              ; $5d2d: $00
	nop                                              ; $5d2e: $00
	nop                                              ; $5d2f: $00
	ld   bc, $0101                                   ; $5d30: $01 $01 $01
	ld   bc, $0202                                   ; $5d33: $01 $02 $02
	ld   [bc], a                                     ; $5d36: $02
	ld   [bc], a                                     ; $5d37: $02
	inc  bc                                          ; $5d38: $03
	ld   bc, $8081                                   ; $5d39: $01 $81 $80
	ldh  [$c0], a                                    ; $5d3c: $e0 $c0
	ldh  a, [$e0]                                    ; $5d3e: $f0 $e0
	ld   hl, sp-$70                                  ; $5d40: $f8 $90
	adc  $8c                                         ; $5d42: $ce $8c
	rst  ToBoot                                         ; $5d44: $c7
	jp   Jump_095_4043                               ; $5d45: $c3 $43 $40


	jp   $8300                                       ; $5d48: $c3 $00 $83


	ld   bc, $0307                                   ; $5d4b: $01 $07 $03
	rrca                                             ; $5d4e: $0f
	ld   b, $1e                                      ; $5d4f: $06 $1e
	inc  c                                           ; $5d51: $0c
	ld   a, h                                        ; $5d52: $7c
	jr   @-$06                                       ; $5d53: $18 $f8

	ldh  [$f3], a                                    ; $5d55: $e0 $f3
	inc  bc                                          ; $5d57: $03
	jp   nc, $92d2                                   ; $5d58: $d2 $d2 $92

	sub  d                                           ; $5d5b: $92
	ld   a, [de]                                     ; $5d5c: $1a
	ld   a, [de]                                     ; $5d5d: $1a
	ld   e, $1e                                      ; $5d5e: $1e $1e
	ld   d, $3e                                      ; $5d60: $16 $3e
	ld   h, [hl]                                     ; $5d62: $66
	ld   a, [hl]                                     ; $5d63: $7e
	add  d                                           ; $5d64: $82
	cp   $02                                         ; $5d65: $fe $02
	cp   $04                                         ; $5d67: $fe $04
	inc  b                                           ; $5d69: $04
	inc  c                                           ; $5d6a: $0c
	inc  c                                           ; $5d6b: $0c
	ld   a, b                                        ; $5d6c: $78
	ld   a, b                                        ; $5d6d: $78
	add  sp, -$18                                    ; $5d6e: $e8 $e8
	ret  z                                           ; $5d70: $c8

	ld   c, b                                        ; $5d71: $48
	ret  z                                           ; $5d72: $c8

	ld   c, b                                        ; $5d73: $48
	adc  b                                           ; $5d74: $88
	adc  b                                           ; $5d75: $88
	adc  b                                           ; $5d76: $88
	adc  b                                           ; $5d77: $88
	jr   nz, jr_095_5dda                             ; $5d78: $20 $60

	db   $10                                         ; $5d7a: $10
	jr   nc, jr_095_5d85                             ; $5d7b: $30 $08

	jr   @+$21                                       ; $5d7d: $18 $1f

	rra                                              ; $5d7f: $1f
	rra                                              ; $5d80: $1f
	ld   de, $203f                                   ; $5d81: $11 $3f $20
	ccf                                              ; $5d84: $3f

jr_095_5d85:
	jr   nz, jr_095_5e06                             ; $5d85: $20 $7f

	ld   h, c                                        ; $5d87: $61
	inc  c                                           ; $5d88: $0c
	inc  c                                           ; $5d89: $0c
	jr   nc, jr_095_5dbd                             ; $5d8a: $30 $31

	ret  nz                                          ; $5d8c: $c0

	pop  bc                                          ; $5d8d: $c1
	nop                                              ; $5d8e: $00
	ld   bc, $8300                                   ; $5d8f: $01 $00 $83
	add  b                                           ; $5d92: $80
	add  e                                           ; $5d93: $83
	add  b                                           ; $5d94: $80
	add  e                                           ; $5d95: $83
	add  b                                           ; $5d96: $80
	ret  nz                                          ; $5d97: $c0

	ld   [bc], a                                     ; $5d98: $02
	cp   $02                                         ; $5d99: $fe $02
	cp   $02                                         ; $5d9b: $fe $02
	cp   $06                                         ; $5d9d: $fe $06
	cp   $0e                                         ; $5d9f: $fe $0e
	xor  $1a                                         ; $5da1: $ee $1a
	sbc  $36                                         ; $5da3: $de $36
	ld   a, $2a                                      ; $5da5: $3e $2a
	ld   l, $c0                                      ; $5da7: $2e $c0
	add  b                                           ; $5da9: $80
	ret  nz                                          ; $5daa: $c0

	add  b                                           ; $5dab: $80
	ret  nz                                          ; $5dac: $c0

	add  b                                           ; $5dad: $80
	ret  nz                                          ; $5dae: $c0

	add  b                                           ; $5daf: $80
	ret  nz                                          ; $5db0: $c0

	add  b                                           ; $5db1: $80
	ret  nz                                          ; $5db2: $c0

	add  b                                           ; $5db3: $80
	ret  nz                                          ; $5db4: $c0

	add  b                                           ; $5db5: $80
	db   $fc                                         ; $5db6: $fc
	add  b                                           ; $5db7: $80
	nop                                              ; $5db8: $00
	nop                                              ; $5db9: $00
	nop                                              ; $5dba: $00
	nop                                              ; $5dbb: $00
	nop                                              ; $5dbc: $00

jr_095_5dbd:
	nop                                              ; $5dbd: $00
	nop                                              ; $5dbe: $00
	nop                                              ; $5dbf: $00
	nop                                              ; $5dc0: $00
	nop                                              ; $5dc1: $00
	ld   bc, $0700                                   ; $5dc2: $01 $00 $07
	nop                                              ; $5dc5: $00
	cpl                                              ; $5dc6: $2f
	rra                                              ; $5dc7: $1f
	ld   a, [$fe3e]                                  ; $5dc8: $fa $3e $fe
	ld   a, $fe                                      ; $5dcb: $3e $fe
	ld   a, $fe                                      ; $5dcd: $3e $fe
	ld   e, $fe                                      ; $5dcf: $1e $fe
	ld   e, $fe                                      ; $5dd1: $1e $fe
	ld   c, $fe                                      ; $5dd3: $0e $fe
	ld   c, $fe                                      ; $5dd5: $0e $fe
	xor  $ff                                         ; $5dd7: $ee $ff
	rst  $38                                         ; $5dd9: $ff

jr_095_5dda:
	rst  $38                                         ; $5dda: $ff
	add  a                                           ; $5ddb: $87
	sbc  [hl]                                        ; $5ddc: $9e
	jp   c, Jump_095_41c3                            ; $5ddd: $da $c3 $41

	rst  ToBoot                                         ; $5de0: $c7
	jp   $c0e0                                       ; $5de1: $c3 $e0 $c0


	ldh  [hScriptOpcodeParams], a                                    ; $5de4: $e0 $a0
	ldh  [$60], a                                    ; $5de6: $e0 $60
	ret  nz                                          ; $5de8: $c0

	add  b                                           ; $5de9: $80
	ldh  [$e0], a                                    ; $5dea: $e0 $e0
	pop  af                                          ; $5dec: $f1
	ldh  [$f1], a                                    ; $5ded: $e0 $f1
	add  b                                           ; $5def: $80
	add  b                                           ; $5df0: $80
	add  b                                           ; $5df1: $80
	nop                                              ; $5df2: $00
	nop                                              ; $5df3: $00
	nop                                              ; $5df4: $00
	nop                                              ; $5df5: $00
	ld   bc, $bf00                                   ; $5df6: $01 $00 $bf
	ld   a, a                                        ; $5df9: $7f
	ldh  a, [c]                                      ; $5dfa: $f2
	rla                                              ; $5dfb: $17
	db   $fc                                         ; $5dfc: $fc
	ld   l, $09                                      ; $5dfd: $2e $09
	rlca                                             ; $5dff: $07
	nop                                              ; $5e00: $00
	nop                                              ; $5e01: $00
	nop                                              ; $5e02: $00
	nop                                              ; $5e03: $00
	nop                                              ; $5e04: $00
	nop                                              ; $5e05: $00

jr_095_5e06:
	nop                                              ; $5e06: $00
	nop                                              ; $5e07: $00
	ld   a, [hl]                                     ; $5e08: $7e
	adc  [hl]                                        ; $5e09: $8e
	ld   a, [hl]                                     ; $5e0a: $7e
	xor  $7e                                         ; $5e0b: $ee $7e
	ld   c, $fe                                      ; $5e0d: $0e $fe
	ld   c, $7e                                      ; $5e0f: $0e $7e
	ld   a, [bc]                                     ; $5e11: $0a
	ld   a, $06                                      ; $5e12: $3e $06
	ld   a, [hl]                                     ; $5e14: $7e
	ld   b, $7e                                      ; $5e15: $06 $7e
	ld   [bc], a                                     ; $5e17: $02
	ld   [bc], a                                     ; $5e18: $02
	ld   bc, $0103                                   ; $5e19: $01 $03 $01
	ld   bc, $0103                                   ; $5e1c: $01 $03 $01
	inc  bc                                          ; $5e1f: $03
	nop                                              ; $5e20: $00
	inc  bc                                          ; $5e21: $03
	stop                                             ; $5e22: $10 $00
	dec  d                                           ; $5e24: $15
	jr   jr_095_5e27                                 ; $5e25: $18 $00

jr_095_5e27:
	nop                                              ; $5e27: $00
	nop                                              ; $5e28: $00
	nop                                              ; $5e29: $00
	nop                                              ; $5e2a: $00
	nop                                              ; $5e2b: $00
	nop                                              ; $5e2c: $00
	add  b                                           ; $5e2d: $80
	nop                                              ; $5e2e: $00
	add  b                                           ; $5e2f: $80
	nop                                              ; $5e30: $00
	nop                                              ; $5e31: $00
	nop                                              ; $5e32: $00
	db   $10                                         ; $5e33: $10
	ld   [hl], c                                     ; $5e34: $71
	ldh  [rSB], a                                    ; $5e35: $e0 $01
	nop                                              ; $5e37: $00
	ret  nz                                          ; $5e38: $c0

	add  b                                           ; $5e39: $80
	ret  nz                                          ; $5e3a: $c0

	add  b                                           ; $5e3b: $80
	ret  nz                                          ; $5e3c: $c0

	add  b                                           ; $5e3d: $80
	ret  nz                                          ; $5e3e: $c0

	add  b                                           ; $5e3f: $80
	ret  nz                                          ; $5e40: $c0

	add  b                                           ; $5e41: $80
	ret  nz                                          ; $5e42: $c0

	add  b                                           ; $5e43: $80
	ldh  [$e0], a                                    ; $5e44: $e0 $e0
	db   $f4                                         ; $5e46: $f4
	sbc  b                                           ; $5e47: $98
	nop                                              ; $5e48: $00
	nop                                              ; $5e49: $00
	nop                                              ; $5e4a: $00
	nop                                              ; $5e4b: $00
	nop                                              ; $5e4c: $00
	nop                                              ; $5e4d: $00
	nop                                              ; $5e4e: $00
	nop                                              ; $5e4f: $00
	nop                                              ; $5e50: $00
	nop                                              ; $5e51: $00
	ld   bc, $0500                                   ; $5e52: $01 $00 $05
	inc  bc                                          ; $5e55: $03
	rrca                                             ; $5e56: $0f
	ld   e, $fa                                      ; $5e57: $1e $fa
	ld   a, $fe                                      ; $5e59: $3e $fe
	ld   a, $fe                                      ; $5e5b: $3e $fe
	ld   a, $fe                                      ; $5e5d: $3e $fe
	ld   e, $fe                                      ; $5e5f: $1e $fe
	ld   e, $fe                                      ; $5e61: $1e $fe
	xor  $fe                                         ; $5e63: $ee $fe
	adc  [hl]                                        ; $5e65: $8e
	cp   $0e                                         ; $5e66: $fe $0e
	rst  $38                                         ; $5e68: $ff
	add  a                                           ; $5e69: $87
	rst  JumpTable                                         ; $5e6a: $df
	add  a                                           ; $5e6b: $87
	sbc  a                                           ; $5e6c: $9f
	db   $db                                         ; $5e6d: $db
	jp   $c141                                       ; $5e6e: $c3 $41 $c1


	ret  nz                                          ; $5e71: $c0

	db   $e3                                         ; $5e72: $e3
	jp   $a0e0                                       ; $5e73: $c3 $e0 $a0


	ldh  [$60], a                                    ; $5e76: $e0 $60
	ret  nz                                          ; $5e78: $c0

	nop                                              ; $5e79: $00
	ldh  [$c0], a                                    ; $5e7a: $e0 $c0
	ld   [hl], c                                     ; $5e7c: $71
	ld   h, b                                        ; $5e7d: $60
	pop  af                                          ; $5e7e: $f1
	add  b                                           ; $5e7f: $80
	add  b                                           ; $5e80: $80
	nop                                              ; $5e81: $00
	add  b                                           ; $5e82: $80
	add  b                                           ; $5e83: $80
	nop                                              ; $5e84: $00
	nop                                              ; $5e85: $00
	ld   bc, $ff00                                   ; $5e86: $01 $00 $ff
	ccf                                              ; $5e89: $3f
	call nc, $fcfd                                   ; $5e8a: $d4 $fd $fc
	ld   l, $0c                                      ; $5e8d: $2e $0c
	nop                                              ; $5e8f: $00
	ld   bc, $0007                                   ; $5e90: $01 $07 $00
	nop                                              ; $5e93: $00
	nop                                              ; $5e94: $00
	nop                                              ; $5e95: $00
	nop                                              ; $5e96: $00
	nop                                              ; $5e97: $00
	ld   [bc], a                                     ; $5e98: $02
	ld   bc, $0103                                   ; $5e99: $01 $03 $01
	ld   bc, $0103                                   ; $5e9c: $01 $03 $01
	inc  bc                                          ; $5e9f: $03
	nop                                              ; $5ea0: $00
	inc  bc                                          ; $5ea1: $03
	nop                                              ; $5ea2: $00
	nop                                              ; $5ea3: $00
	ld   [bc], a                                     ; $5ea4: $02
	inc  c                                           ; $5ea5: $0c
	nop                                              ; $5ea6: $00
	nop                                              ; $5ea7: $00
	nop                                              ; $5ea8: $00
	nop                                              ; $5ea9: $00
	nop                                              ; $5eaa: $00
	nop                                              ; $5eab: $00
	nop                                              ; $5eac: $00
	add  b                                           ; $5ead: $80
	nop                                              ; $5eae: $00
	add  b                                           ; $5eaf: $80
	nop                                              ; $5eb0: $00
	nop                                              ; $5eb1: $00
	nop                                              ; $5eb2: $00
	nop                                              ; $5eb3: $00
	pop  af                                          ; $5eb4: $f1
	ldh  a, [$31]                                    ; $5eb5: $f0 $31
	nop                                              ; $5eb7: $00
	ret  nz                                          ; $5eb8: $c0

	add  b                                           ; $5eb9: $80
	ret  nz                                          ; $5eba: $c0

	add  b                                           ; $5ebb: $80
	ret  nz                                          ; $5ebc: $c0

	add  b                                           ; $5ebd: $80
	ret  nz                                          ; $5ebe: $c0

	add  b                                           ; $5ebf: $80
	ret  nz                                          ; $5ec0: $c0

	add  b                                           ; $5ec1: $80
	ret  nz                                          ; $5ec2: $c0

	add  b                                           ; $5ec3: $80
	ret  nz                                          ; $5ec4: $c0

	add  b                                           ; $5ec5: $80
	rst  JumpTable                                         ; $5ec6: $df
	sbc  a                                           ; $5ec7: $9f
	nop                                              ; $5ec8: $00
	nop                                              ; $5ec9: $00
	nop                                              ; $5eca: $00
	nop                                              ; $5ecb: $00
	nop                                              ; $5ecc: $00
	nop                                              ; $5ecd: $00
	nop                                              ; $5ece: $00
	nop                                              ; $5ecf: $00
	nop                                              ; $5ed0: $00
	nop                                              ; $5ed1: $00
	ld   bc, $1f00                                   ; $5ed2: $01 $00 $1f
	rrca                                             ; $5ed5: $0f
	dec  hl                                          ; $5ed6: $2b
	inc  a                                           ; $5ed7: $3c
	rst  $38                                         ; $5ed8: $ff
	pop  hl                                          ; $5ed9: $e1
	rst  JumpTable                                         ; $5eda: $df
	add  a                                           ; $5edb: $87
	sbc  [hl]                                        ; $5edc: $9e
	jp   z, $4bcb                                    ; $5edd: $ca $cb $4b

	jp   $e3c1                                       ; $5ee0: $c3 $c1 $e3


	jp   $a0ea                                       ; $5ee3: $c3 $ea $a0


	push af                                          ; $5ee6: $f5
	ld   h, b                                        ; $5ee7: $60
	ret  nz                                          ; $5ee8: $c0

	ret  nz                                          ; $5ee9: $c0

	ldh  [rAUD4LEN], a                               ; $5eea: $e0 $20
	pop  af                                          ; $5eec: $f1
	ret  nz                                          ; $5eed: $c0

	pop  af                                          ; $5eee: $f1
	and  b                                           ; $5eef: $a0
	add  b                                           ; $5ef0: $80
	add  b                                           ; $5ef1: $80
	add  b                                           ; $5ef2: $80
	nop                                              ; $5ef3: $00
	add  b                                           ; $5ef4: $80
	nop                                              ; $5ef5: $00
	ld   bc, $f700                                   ; $5ef6: $01 $00 $f7
	ld   l, a                                        ; $5ef9: $6f
	db   $fc                                         ; $5efa: $fc
	sbc  l                                           ; $5efb: $9d
	or   $2e                                         ; $5efc: $f6 $2e
	ld   c, $06                                      ; $5efe: $0e $06
	ld   bc, $0007                                   ; $5f00: $01 $07 $00
	nop                                              ; $5f03: $00
	ld   a, [bc]                                     ; $5f04: $0a
	nop                                              ; $5f05: $00
	dec  d                                           ; $5f06: $15
	nop                                              ; $5f07: $00
	cp   $8e                                         ; $5f08: $fe $8e
	ld   a, [hl]                                     ; $5f0a: $7e
	adc  $7e                                         ; $5f0b: $ce $7e
	ld   c, [hl]                                     ; $5f0d: $4e
	ld   a, [hl]                                     ; $5f0e: $7e
	ld   c, $fe                                      ; $5f0f: $0e $fe
	ld   a, [bc]                                     ; $5f11: $0a
	ld   a, $06                                      ; $5f12: $3e $06
	cp   $06                                         ; $5f14: $fe $06
	ld   a, [hl]                                     ; $5f16: $7e
	ld   [bc], a                                     ; $5f17: $02
	ld   [bc], a                                     ; $5f18: $02
	ld   bc, $0103                                   ; $5f19: $01 $03 $01
	ld   bc, $0103                                   ; $5f1c: $01 $03 $01
	inc  bc                                          ; $5f1f: $03
	nop                                              ; $5f20: $00
	inc  bc                                          ; $5f21: $03
	nop                                              ; $5f22: $00
	nop                                              ; $5f23: $00
	ld   b, $09                                      ; $5f24: $06 $09
	nop                                              ; $5f26: $00
	nop                                              ; $5f27: $00
	nop                                              ; $5f28: $00
	nop                                              ; $5f29: $00
	nop                                              ; $5f2a: $00
	nop                                              ; $5f2b: $00
	nop                                              ; $5f2c: $00
	add  b                                           ; $5f2d: $80
	nop                                              ; $5f2e: $00
	add  b                                           ; $5f2f: $80
	nop                                              ; $5f30: $00
	nop                                              ; $5f31: $00
	nop                                              ; $5f32: $00
	nop                                              ; $5f33: $00
	ld   hl, $01e0                                   ; $5f34: $21 $e0 $01
	nop                                              ; $5f37: $00
	ret  nz                                          ; $5f38: $c0

	add  b                                           ; $5f39: $80
	ret  nz                                          ; $5f3a: $c0

	add  b                                           ; $5f3b: $80
	ret  nz                                          ; $5f3c: $c0

	add  b                                           ; $5f3d: $80
	ret  nz                                          ; $5f3e: $c0

	add  b                                           ; $5f3f: $80
	ret  nz                                          ; $5f40: $c0

	add  b                                           ; $5f41: $80
	ret  nz                                          ; $5f42: $c0

	add  b                                           ; $5f43: $80
	ret  nz                                          ; $5f44: $c0

	add  b                                           ; $5f45: $80
	jp   nz, $0081                                   ; $5f46: $c2 $81 $00

	nop                                              ; $5f49: $00
	nop                                              ; $5f4a: $00
	nop                                              ; $5f4b: $00
	nop                                              ; $5f4c: $00
	nop                                              ; $5f4d: $00
	nop                                              ; $5f4e: $00
	nop                                              ; $5f4f: $00
	nop                                              ; $5f50: $00
	nop                                              ; $5f51: $00
	nop                                              ; $5f52: $00
	nop                                              ; $5f53: $00
	nop                                              ; $5f54: $00
	nop                                              ; $5f55: $00
	ldh  [$e0], a                                    ; $5f56: $e0 $e0
	nop                                              ; $5f58: $00
	nop                                              ; $5f59: $00
	nop                                              ; $5f5a: $00
	nop                                              ; $5f5b: $00
	nop                                              ; $5f5c: $00
	nop                                              ; $5f5d: $00
	nop                                              ; $5f5e: $00
	nop                                              ; $5f5f: $00
	nop                                              ; $5f60: $00
	nop                                              ; $5f61: $00
	ld   bc, $0700                                   ; $5f62: $01 $00 $07
	nop                                              ; $5f65: $00
	xor  $f1                                         ; $5f66: $ee $f1
	ld   a, [$fe3e]                                  ; $5f68: $fa $3e $fe
	ld   a, $fe                                      ; $5f6b: $3e $fe
	ld   a, $fe                                      ; $5f6d: $3e $fe
	ld   e, $fe                                      ; $5f6f: $1e $fe
	ld   e, $fe                                      ; $5f71: $1e $fe
	ld   c, $fe                                      ; $5f73: $0e $fe
	ld   c, $fe                                      ; $5f75: $0e $fe
	xor  $ff                                         ; $5f77: $ee $ff
	rst  $38                                         ; $5f79: $ff
	rst  JumpTable                                         ; $5f7a: $df
	add  a                                           ; $5f7b: $87
	sbc  a                                           ; $5f7c: $9f
	db   $db                                         ; $5f7d: $db
	jp   $c141                                       ; $5f7e: $c3 $41 $c1


	ret  nz                                          ; $5f81: $c0

	db   $e3                                         ; $5f82: $e3
	jp   $a0e0                                       ; $5f83: $c3 $e0 $a0


	ldh  [$60], a                                    ; $5f86: $e0 $60
	ret  nz                                          ; $5f88: $c0

	nop                                              ; $5f89: $00
	ldh  [$c0], a                                    ; $5f8a: $e0 $c0
	ld   [hl], c                                     ; $5f8c: $71
	ld   h, b                                        ; $5f8d: $60
	pop  af                                          ; $5f8e: $f1
	add  b                                           ; $5f8f: $80
	add  b                                           ; $5f90: $80
	nop                                              ; $5f91: $00
	add  b                                           ; $5f92: $80
	add  b                                           ; $5f93: $80
	nop                                              ; $5f94: $00
	nop                                              ; $5f95: $00
	ld   bc, $df00                                   ; $5f96: $01 $00 $df
	ccf                                              ; $5f99: $3f
	db   $f4                                         ; $5f9a: $f4
	dec  e                                           ; $5f9b: $1d
	db   $fc                                         ; $5f9c: $fc
	ld   l, $0c                                      ; $5f9d: $2e $0c
	nop                                              ; $5f9f: $00
	ld   bc, $0007                                   ; $5fa0: $01 $07 $00
	nop                                              ; $5fa3: $00
	nop                                              ; $5fa4: $00
	nop                                              ; $5fa5: $00
	nop                                              ; $5fa6: $00
	nop                                              ; $5fa7: $00
	ld   [bc], a                                     ; $5fa8: $02
	ld   bc, $0103                                   ; $5fa9: $01 $03 $01
	ld   bc, $0103                                   ; $5fac: $01 $03 $01
	inc  bc                                          ; $5faf: $03
	nop                                              ; $5fb0: $00
	inc  bc                                          ; $5fb1: $03
	nop                                              ; $5fb2: $00
	nop                                              ; $5fb3: $00
	dec  bc                                          ; $5fb4: $0b
	rla                                              ; $5fb5: $17
	nop                                              ; $5fb6: $00
	nop                                              ; $5fb7: $00
	ld   bc, $0001                                   ; $5fb8: $01 $01 $00
	nop                                              ; $5fbb: $00
	nop                                              ; $5fbc: $00
	nop                                              ; $5fbd: $00
	nop                                              ; $5fbe: $00
	nop                                              ; $5fbf: $00
	nop                                              ; $5fc0: $00
	nop                                              ; $5fc1: $00
	nop                                              ; $5fc2: $00
	nop                                              ; $5fc3: $00
	nop                                              ; $5fc4: $00
	nop                                              ; $5fc5: $00
	nop                                              ; $5fc6: $00
	nop                                              ; $5fc7: $00
	inc  bc                                          ; $5fc8: $03
	ld   bc, $8081                                   ; $5fc9: $01 $81 $80
	ldh  [$c0], a                                    ; $5fcc: $e0 $c0
	ldh  a, [$e0]                                    ; $5fce: $f0 $e0
	ld   hl, sp-$70                                  ; $5fd0: $f8 $90
	cp   $8c                                         ; $5fd2: $fe $8c
	sbc  a                                           ; $5fd4: $9f
	jp   $c08f                                       ; $5fd5: $c3 $8f $c0


	jp   $8300                                       ; $5fd8: $c3 $00 $83


	ld   bc, $0307                                   ; $5fdb: $01 $07 $03
	rrca                                             ; $5fde: $0f
	ld   b, $1f                                      ; $5fdf: $06 $1f

jr_095_5fe1:
	inc  c                                           ; $5fe1: $0c
	ld   a, a                                        ; $5fe2: $7f
	jr   jr_095_5fe1                                 ; $5fe3: $18 $fc

	ldh  [$f8], a                                    ; $5fe5: $e0 $f8
	nop                                              ; $5fe7: $00
	ldh  a, [c]                                      ; $5fe8: $f2
	jp   nc, $92f2                                   ; $5fe9: $d2 $f2 $92

	ldh  a, [c]                                      ; $5fec: $f2
	ld   [de], a                                     ; $5fed: $12
	ldh  a, [c]                                      ; $5fee: $f2
	ld   [de], a                                     ; $5fef: $12
	ldh  a, [c]                                      ; $5ff0: $f2
	ld   [de], a                                     ; $5ff1: $12
	ldh  a, [c]                                      ; $5ff2: $f2
	ld   [de], a                                     ; $5ff3: $12
	ldh  a, [c]                                      ; $5ff4: $f2
	ld   [de], a                                     ; $5ff5: $12
	ldh  a, [c]                                      ; $5ff6: $f2
	ld   [de], a                                     ; $5ff7: $12
	ld   bc, $1f01                                   ; $5ff8: $01 $01 $1f
	ld   e, $ff                                      ; $5ffb: $1e $ff
	ldh  [$03], a                                    ; $5ffd: $e0 $03
	nop                                              ; $5fff: $00
	nop                                              ; $6000: $00
	nop                                              ; $6001: $00
	nop                                              ; $6002: $00
	nop                                              ; $6003: $00
	nop                                              ; $6004: $00
	nop                                              ; $6005: $00
	nop                                              ; $6006: $00
	nop                                              ; $6007: $00
	rst  ToBoot                                         ; $6008: $c7
	ld   b, b                                        ; $6009: $40
	ret  nz                                          ; $600a: $c0

	ld   b, b                                        ; $600b: $40
	ldh  [rLCDC], a                                  ; $600c: $e0 $40
	ldh  [rLCDC], a                                  ; $600e: $e0 $40
	ldh  [rP1], a                                    ; $6010: $e0 $00
	ld   l, b                                        ; $6012: $68
	nop                                              ; $6013: $00
	inc  c                                           ; $6014: $0c
	nop                                              ; $6015: $00
	inc  e                                           ; $6016: $1c
	nop                                              ; $6017: $00
	ldh  a, [rP1]                                    ; $6018: $f0 $00
	nop                                              ; $601a: $00
	nop                                              ; $601b: $00
	nop                                              ; $601c: $00
	nop                                              ; $601d: $00
	nop                                              ; $601e: $00
	nop                                              ; $601f: $00
	ld   bc, $0100                                   ; $6020: $01 $00 $01
	nop                                              ; $6023: $00
	inc  bc                                          ; $6024: $03
	nop                                              ; $6025: $00
	rlca                                             ; $6026: $07
	nop                                              ; $6027: $00
	ld   a, [$fe1a]                                  ; $6028: $fa $1a $fe
	ld   d, $fe                                      ; $602b: $16 $fe
	ld   [de], a                                     ; $602d: $12
	ldh  a, [c]                                      ; $602e: $f2
	ld   [bc], a                                     ; $602f: $02
	ldh  [c], a                                      ; $6030: $e2
	ld   [bc], a                                     ; $6031: $02
	ldh  [c], a                                      ; $6032: $e2
	ld   [bc], a                                     ; $6033: $02
	ldh  a, [c]                                      ; $6034: $f2
	ld   [bc], a                                     ; $6035: $02
	cp   $02                                         ; $6036: $fe $02
	ret  nz                                          ; $6038: $c0

	add  b                                           ; $6039: $80
	ret  nz                                          ; $603a: $c0

	add  b                                           ; $603b: $80
	ret  nz                                          ; $603c: $c0

	add  b                                           ; $603d: $80
	ret  nz                                          ; $603e: $c0

	add  b                                           ; $603f: $80
	ret  nz                                          ; $6040: $c0

	add  b                                           ; $6041: $80
	ret  nz                                          ; $6042: $c0

	add  b                                           ; $6043: $80
	ret  nz                                          ; $6044: $c0

	add  b                                           ; $6045: $80
	rst  $38                                         ; $6046: $ff
	cp   h                                           ; $6047: $bc
	nop                                              ; $6048: $00
	nop                                              ; $6049: $00
	nop                                              ; $604a: $00
	nop                                              ; $604b: $00
	nop                                              ; $604c: $00
	nop                                              ; $604d: $00
	nop                                              ; $604e: $00
	nop                                              ; $604f: $00
	nop                                              ; $6050: $00
	nop                                              ; $6051: $00
	nop                                              ; $6052: $00
	nop                                              ; $6053: $00
	nop                                              ; $6054: $00
	nop                                              ; $6055: $00
	ld   [hl], c                                     ; $6056: $71
	ld   sp, $0000                                   ; $6057: $31 $00 $00
	nop                                              ; $605a: $00
	nop                                              ; $605b: $00
	nop                                              ; $605c: $00
	nop                                              ; $605d: $00
	nop                                              ; $605e: $00
	nop                                              ; $605f: $00
	nop                                              ; $6060: $00
	nop                                              ; $6061: $00
	ld   bc, $0500                                   ; $6062: $01 $00 $05
	inc  bc                                          ; $6065: $03
	cp   a                                           ; $6066: $bf
	adc  $fa                                         ; $6067: $ce $fa
	ld   a, $fe                                      ; $6069: $3e $fe
	ld   a, $fe                                      ; $606b: $3e $fe
	ld   a, $fe                                      ; $606d: $3e $fe
	ld   e, $fe                                      ; $606f: $1e $fe
	ld   e, $fe                                      ; $6071: $1e $fe
	ld   c, $de                                      ; $6073: $0e $de
	xor  $fe                                         ; $6075: $ee $fe
	ld   c, $ff                                      ; $6077: $0e $ff
	add  e                                           ; $6079: $83
	rst  JumpTable                                         ; $607a: $df
	add  a                                           ; $607b: $87
	rst  JumpTable                                         ; $607c: $df
	sbc  e                                           ; $607d: $9b
	jp   $c141                                       ; $607e: $c3 $41 $c1


	ret  nz                                          ; $6081: $c0

	db   $e3                                         ; $6082: $e3
	jp   $a0e0                                       ; $6083: $c3 $e0 $a0


	ldh  [$60], a                                    ; $6086: $e0 $60
	pop  af                                          ; $6088: $f1
	ret  nz                                          ; $6089: $c0

	ldh  [$c0], a                                    ; $608a: $e0 $c0
	ld   [hl], c                                     ; $608c: $71
	ld   h, b                                        ; $608d: $60
	pop  af                                          ; $608e: $f1
	add  b                                           ; $608f: $80
	add  b                                           ; $6090: $80
	nop                                              ; $6091: $00
	add  b                                           ; $6092: $80
	add  b                                           ; $6093: $80
	nop                                              ; $6094: $00
	nop                                              ; $6095: $00
	ld   bc, $7f00                                   ; $6096: $01 $00 $7f
	rst  $38                                         ; $6099: $ff
	db   $f4                                         ; $609a: $f4
	dec  e                                           ; $609b: $1d
	db   $fc                                         ; $609c: $fc
	ld   l, $0c                                      ; $609d: $2e $0c
	nop                                              ; $609f: $00
	ld   bc, $0007                                   ; $60a0: $01 $07 $00
	nop                                              ; $60a3: $00
	nop                                              ; $60a4: $00
	nop                                              ; $60a5: $00
	nop                                              ; $60a6: $00
	nop                                              ; $60a7: $00
	cp   $8e                                         ; $60a8: $fe $8e
	ld   a, [hl]                                     ; $60aa: $7e
	xor  $7e                                         ; $60ab: $ee $7e
	ld   c, $7e                                      ; $60ad: $0e $7e
	ld   c, $fe                                      ; $60af: $0e $fe
	ld   a, [bc]                                     ; $60b1: $0a
	ld   a, $06                                      ; $60b2: $3e $06
	ld   a, [hl]                                     ; $60b4: $7e
	ld   b, $7e                                      ; $60b5: $06 $7e
	ld   [bc], a                                     ; $60b7: $02
	ld   [bc], a                                     ; $60b8: $02
	ld   bc, $0103                                   ; $60b9: $01 $03 $01
	ld   bc, $0103                                   ; $60bc: $01 $03 $01
	inc  bc                                          ; $60bf: $03
	nop                                              ; $60c0: $00
	inc  bc                                          ; $60c1: $03
	nop                                              ; $60c2: $00
	nop                                              ; $60c3: $00
	ld   [bc], a                                     ; $60c4: $02
	inc  c                                           ; $60c5: $0c
	nop                                              ; $60c6: $00
	nop                                              ; $60c7: $00
	nop                                              ; $60c8: $00
	nop                                              ; $60c9: $00
	nop                                              ; $60ca: $00
	nop                                              ; $60cb: $00
	nop                                              ; $60cc: $00
	add  b                                           ; $60cd: $80
	nop                                              ; $60ce: $00

jr_095_60cf:
	add  b                                           ; $60cf: $80
	nop                                              ; $60d0: $00
	nop                                              ; $60d1: $00
	nop                                              ; $60d2: $00
	nop                                              ; $60d3: $00
	or   c                                           ; $60d4: $b1
	ld   [hl], b                                     ; $60d5: $70
	ld   bc, $0300                                   ; $60d6: $01 $00 $03
	nop                                              ; $60d9: $00
	add  b                                           ; $60da: $80
	add  b                                           ; $60db: $80
	ldh  [$c0], a                                    ; $60dc: $e0 $c0
	ldh  a, [$e0]                                    ; $60de: $f0 $e0
	ld   hl, sp-$70                                  ; $60e0: $f8 $90

Call_095_60e2:
	adc  $8c                                         ; $60e2: $ce $8c
	rst  ToBoot                                         ; $60e4: $c7
	jp   Jump_095_4043                               ; $60e5: $c3 $43 $40


	add  e                                           ; $60e8: $83
	nop                                              ; $60e9: $00
	inc  bc                                          ; $60ea: $03
	ld   bc, $0307                                   ; $60eb: $01 $07 $03
	rrca                                             ; $60ee: $0f
	ld   b, $1e                                      ; $60ef: $06 $1e
	inc  c                                           ; $60f1: $0c
	ld   a, h                                        ; $60f2: $7c
	jr   @-$06                                       ; $60f3: $18 $f8

	ldh  [$f3], a                                    ; $60f5: $e0 $f3
	inc  bc                                          ; $60f7: $03
	ret  nz                                          ; $60f8: $c0

	add  b                                           ; $60f9: $80
	ret  nz                                          ; $60fa: $c0

	add  b                                           ; $60fb: $80
	ret  nz                                          ; $60fc: $c0

	add  b                                           ; $60fd: $80
	ret  nz                                          ; $60fe: $c0

	add  b                                           ; $60ff: $80
	ret  nz                                          ; $6100: $c0

	add  b                                           ; $6101: $80
	rst  JumpTable                                         ; $6102: $df
	sbc  a                                           ; $6103: $9f
	ldh  a, [c]                                      ; $6104: $f2
	pop  hl                                          ; $6105: $e1
	pop  hl                                          ; $6106: $e1
	add  b                                           ; $6107: $80
	nop                                              ; $6108: $00
	nop                                              ; $6109: $00
	nop                                              ; $610a: $00
	nop                                              ; $610b: $00
	nop                                              ; $610c: $00
	nop                                              ; $610d: $00
	nop                                              ; $610e: $00
	nop                                              ; $610f: $00
	nop                                              ; $6110: $00
	nop                                              ; $6111: $00
	nop                                              ; $6112: $00
	nop                                              ; $6113: $00
	ret  nz                                          ; $6114: $c0

	ret  nz                                          ; $6115: $c0

	or   c                                           ; $6116: $b1
	ld   h, b                                        ; $6117: $60
	nop                                              ; $6118: $00
	nop                                              ; $6119: $00
	nop                                              ; $611a: $00
	nop                                              ; $611b: $00
	nop                                              ; $611c: $00
	nop                                              ; $611d: $00
	nop                                              ; $611e: $00
	nop                                              ; $611f: $00
	rrca                                             ; $6120: $0f
	rra                                              ; $6121: $1f
	add  hl, sp                                      ; $6122: $39
	ld   [hl], b                                     ; $6123: $70
	and  b                                           ; $6124: $a0
	ret  nz                                          ; $6125: $c0

	rst  $28                                         ; $6126: $ef
	rra                                              ; $6127: $1f
	ld   a, [$fe3e]                                  ; $6128: $fa $3e $fe
	ld   a, $fe                                      ; $612b: $3e $fe
	ld   a, $fe                                      ; $612d: $3e $fe
	ld   e, $fe                                      ; $612f: $1e $fe
	sbc  [hl]                                        ; $6131: $9e
	ld   e, $ee                                      ; $6132: $1e $ee
	cp   $0e                                         ; $6134: $fe $0e
	cp   $8e                                         ; $6136: $fe $8e
	rst  JumpTable                                         ; $6138: $df
	adc  a                                           ; $6139: $8f
	db   $dd                                         ; $613a: $dd
	sbc  b                                           ; $613b: $98
	reti                                             ; $613c: $d9


	sub  c                                           ; $613d: $91
	pop  bc                                          ; $613e: $c1
	ld   b, c                                        ; $613f: $41
	pop  bc                                          ; $6140: $c1
	pop  bc                                          ; $6141: $c1
	ldh  [$c0], a                                    ; $6142: $e0 $c0
	rst  $20                                         ; $6144: $e7
	and  e                                           ; $6145: $a3
	ldh  [$60], a                                    ; $6146: $e0 $60
	ldh  a, [$c0]                                    ; $6148: $f0 $c0
	ldh  a, [$60]                                    ; $614a: $f0 $60
	ld   h, b                                        ; $614c: $60
	jr   nz, jr_095_60cf                             ; $614d: $20 $80

	add  b                                           ; $614f: $80
	add  b                                           ; $6150: $80
	nop                                              ; $6151: $00
	nop                                              ; $6152: $00
	nop                                              ; $6153: $00
	add  b                                           ; $6154: $80
	add  b                                           ; $6155: $80
	ld   bc, $5900                                   ; $6156: $01 $00 $59
	jr   nc, jr_095_618d                             ; $6159: $30 $32

	ld   [hl+], a                                    ; $615b: $22
	ld   b, $06                                      ; $615c: $06 $06
	ld   b, $02                                      ; $615e: $06 $02
	nop                                              ; $6160: $00
	nop                                              ; $6161: $00
	ld   bc, $0007                                   ; $6162: $01 $07 $00
	nop                                              ; $6165: $00
	nop                                              ; $6166: $00
	nop                                              ; $6167: $00
	cp   $ce                                         ; $6168: $fe $ce
	cp   $6e                                         ; $616a: $fe $6e
	ld   a, $0e                                      ; $616c: $3e $0e
	ld   a, $0e                                      ; $616e: $3e $0e
	ld   a, [hl]                                     ; $6170: $7e
	ld   a, [bc]                                     ; $6171: $0a
	cp   $06                                         ; $6172: $fe $06
	ld   a, [hl]                                     ; $6174: $7e
	ld   b, $fe                                      ; $6175: $06 $fe
	ld   [bc], a                                     ; $6177: $02
	ld   [bc], a                                     ; $6178: $02
	ld   bc, $0103                                   ; $6179: $01 $03 $01
	ld   bc, $0103                                   ; $617c: $01 $03 $01
	inc  bc                                          ; $617f: $03
	nop                                              ; $6180: $00
	inc  bc                                          ; $6181: $03
	nop                                              ; $6182: $00
	nop                                              ; $6183: $00
	inc  bc                                          ; $6184: $03
	rrca                                             ; $6185: $0f
	rlca                                             ; $6186: $07
	inc  c                                           ; $6187: $0c
	nop                                              ; $6188: $00
	nop                                              ; $6189: $00
	nop                                              ; $618a: $00
	nop                                              ; $618b: $00
	nop                                              ; $618c: $00

jr_095_618d:
	add  b                                           ; $618d: $80
	nop                                              ; $618e: $00
	add  b                                           ; $618f: $80
	nop                                              ; $6190: $00
	nop                                              ; $6191: $00
	nop                                              ; $6192: $00
	nop                                              ; $6193: $00
	sub  c                                           ; $6194: $91
	ldh  [rAUD4ENV], a                               ; $6195: $e0 $21
	db   $10                                         ; $6197: $10
	ld   a, [bc]                                     ; $6198: $0a
	inc  b                                           ; $6199: $04
	add  l                                           ; $619a: $85
	add  e                                           ; $619b: $83
	ldh  [$c0], a                                    ; $619c: $e0 $c0
	pop  af                                          ; $619e: $f1
	ldh  [$f8], a                                    ; $619f: $e0 $f8
	sub  b                                           ; $61a1: $90
	adc  $8c                                         ; $61a2: $ce $8c
	rst  ToBoot                                         ; $61a4: $c7
	jp   Jump_095_4043                               ; $61a5: $c3 $43 $40


	inc  hl                                          ; $61a8: $23
	db   $10                                         ; $61a9: $10
	add  e                                           ; $61aa: $83
	pop  hl                                          ; $61ab: $e1
	rlca                                             ; $61ac: $07

jr_095_61ad:
	inc  bc                                          ; $61ad: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61ae: $cf
	ld   b, $1e                                      ; $61af: $06 $1e
	inc  c                                           ; $61b1: $0c
	ld   a, h                                        ; $61b2: $7c
	jr   jr_095_61ad                                 ; $61b3: $18 $f8

	ldh  [$f3], a                                    ; $61b5: $e0 $f3
	inc  bc                                          ; $61b7: $03
	inc  bc                                          ; $61b8: $03
	nop                                              ; $61b9: $00
	add  b                                           ; $61ba: $80
	add  b                                           ; $61bb: $80
	ldh  [$c0], a                                    ; $61bc: $e0 $c0
	ldh  a, [$e0]                                    ; $61be: $f0 $e0
	ld   hl, sp-$70                                  ; $61c0: $f8 $90
	cp   $8c                                         ; $61c2: $fe $8c
	sbc  a                                           ; $61c4: $9f
	jp   $c08f                                       ; $61c5: $c3 $8f $c0


	add  e                                           ; $61c8: $83
	nop                                              ; $61c9: $00
	inc  bc                                          ; $61ca: $03
	ld   bc, $0307                                   ; $61cb: $01 $07 $03
	rrca                                             ; $61ce: $0f
	ld   b, $1f                                      ; $61cf: $06 $1f

jr_095_61d1:
	inc  c                                           ; $61d1: $0c
	ld   a, a                                        ; $61d2: $7f
	jr   jr_095_61d1                                 ; $61d3: $18 $fc

	ldh  [$f8], a                                    ; $61d5: $e0 $f8
	nop                                              ; $61d7: $00
	ld   a, [bc]                                     ; $61d8: $0a
	inc  b                                           ; $61d9: $04
	add  l                                           ; $61da: $85
	add  e                                           ; $61db: $83
	ldh  [$c0], a                                    ; $61dc: $e0 $c0
	pop  af                                          ; $61de: $f1
	ldh  [$f8], a                                    ; $61df: $e0 $f8
	sub  b                                           ; $61e1: $90
	cp   $8c                                         ; $61e2: $fe $8c
	sbc  a                                           ; $61e4: $9f
	jp   $c08f                                       ; $61e5: $c3 $8f $c0


	inc  hl                                          ; $61e8: $23
	db   $10                                         ; $61e9: $10
	add  e                                           ; $61ea: $83
	pop  hl                                          ; $61eb: $e1
	rlca                                             ; $61ec: $07
	inc  bc                                          ; $61ed: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $61ee: $cf
	ld   b, $1f                                      ; $61ef: $06 $1f

jr_095_61f1:
	inc  c                                           ; $61f1: $0c
	ld   a, a                                        ; $61f2: $7f
	jr   jr_095_61f1                                 ; $61f3: $18 $fc

	ldh  [$f8], a                                    ; $61f5: $e0 $f8
	nop                                              ; $61f7: $00
	cp   $0e                                         ; $61f8: $fe $0e
	cp   $02                                         ; $61fa: $fe $02
	cp   $06                                         ; $61fc: $fe $06
	cp   $1e                                         ; $61fe: $fe $1e
	ldh  a, [c]                                      ; $6200: $f2
	ld   [de], a                                     ; $6201: $12
	ldh  a, [c]                                      ; $6202: $f2
	ld   [hl-], a                                    ; $6203: $32
	cp   $3e                                         ; $6204: $fe $3e
	cp   $72                                         ; $6206: $fe $72
	inc  bc                                          ; $6208: $03
	inc  bc                                          ; $6209: $03
	rrca                                             ; $620a: $0f
	inc  c                                           ; $620b: $0c
	rra                                              ; $620c: $1f
	inc  de                                          ; $620d: $13
	ccf                                              ; $620e: $3f
	cpl                                              ; $620f: $2f
	ld   a, $2e                                      ; $6210: $3e $2e
	ld   e, $16                                      ; $6212: $1e $16
	rra                                              ; $6214: $1f
	rla                                              ; $6215: $17
	rra                                              ; $6216: $1f
	rla                                              ; $6217: $17
	inc  bc                                          ; $6218: $03
	ld   bc, $8081                                   ; $6219: $01 $81 $80
	ldh  [$c0], a                                    ; $621c: $e0 $c0
	or   b                                           ; $621e: $b0
	and  b                                           ; $621f: $a0
	sbc  b                                           ; $6220: $98
	sub  b                                           ; $6221: $90
	ld   a, [hl]                                     ; $6222: $7e
	ld   l, h                                        ; $6223: $6c
	inc  de                                          ; $6224: $13
	inc  de                                          ; $6225: $13
	inc  h                                           ; $6226: $24
	inc  h                                           ; $6227: $24
	jp   $8300                                       ; $6228: $c3 $00 $83


	ld   bc, $0307                                   ; $622b: $01 $07 $03
	rrca                                             ; $622e: $0f
	ld   b, $1f                                      ; $622f: $06 $1f
	inc  c                                           ; $6231: $0c
	ld   a, a                                        ; $6232: $7f
	dec  de                                          ; $6233: $1b
	rst  $28                                         ; $6234: $ef
	rst  $28                                         ; $6235: $ef
	or   h                                           ; $6236: $b4
	or   h                                           ; $6237: $b4
	cp   $de                                         ; $6238: $fe $de
	cp   $9e                                         ; $623a: $fe $9e
	or   $16                                         ; $623c: $f6 $16
	and  $26                                         ; $623e: $e6 $26
	sbc  $de                                         ; $6240: $de $de
	cp   $e2                                         ; $6242: $fe $e2
	ld   a, $1e                                      ; $6244: $3e $1e
	cp   $fe                                         ; $6246: $fe $fe
	ccf                                              ; $6248: $3f
	scf                                              ; $6249: $37
	rst  $38                                         ; $624a: $ff
	rst  $10                                         ; $624b: $d7
	db   $fd                                         ; $624c: $fd
	or   l                                           ; $624d: $b5
	db   $fd                                         ; $624e: $fd
	ld   [hl], l                                     ; $624f: $75
	db   $fc                                         ; $6250: $fc
	db   $f4                                         ; $6251: $f4
	db   $fd                                         ; $6252: $fd
	push af                                          ; $6253: $f5
	db   $fd                                         ; $6254: $fd
	push af                                          ; $6255: $f5
	db   $dd                                         ; $6256: $dd
	push de                                          ; $6257: $d5
	jr   z, jr_095_6282                              ; $6258: $28 $28

	ld   c, b                                        ; $625a: $48
	ld   c, b                                        ; $625b: $48
	ld   d, c                                        ; $625c: $51
	ld   d, c                                        ; $625d: $51
	sub  c                                           ; $625e: $91
	sub  c                                           ; $625f: $91
	sub  c                                           ; $6260: $91
	sub  c                                           ; $6261: $91
	ld   [de], a                                     ; $6262: $12
	ld   [de], a                                     ; $6263: $12
	ld   [bc], a                                     ; $6264: $02
	ld   [bc], a                                     ; $6265: $02
	ld   [bc], a                                     ; $6266: $02
	ld   [bc], a                                     ; $6267: $02
	xor  a                                           ; $6268: $af
	xor  e                                           ; $6269: $ab
	cp   h                                           ; $626a: $bc
	or   a                                           ; $626b: $b7
	inc  a                                           ; $626c: $3c
	scf                                              ; $626d: $37
	inc  a                                           ; $626e: $3c
	scf                                              ; $626f: $37
	inc  a                                           ; $6270: $3c
	scf                                              ; $6271: $37
	inc  e                                           ; $6272: $1c
	rla                                              ; $6273: $17
	inc  e                                           ; $6274: $1c
	rla                                              ; $6275: $17
	dec  e                                           ; $6276: $1d
	rla                                              ; $6277: $17
	ld   e, $fe                                      ; $6278: $1e $fe
	ld   e, $fe                                      ; $627a: $1e $fe
	ld   e, $fe                                      ; $627c: $1e $fe
	ld   e, $fe                                      ; $627e: $1e $fe
	ld   a, $fe                                      ; $6280: $3e $fe

jr_095_6282:
	ld   a, $fe                                      ; $6282: $3e $fe
	ld   [hl], d                                     ; $6284: $72
	cp   $82                                         ; $6285: $fe $82
	cp   $03                                         ; $6287: $fe $03
	nop                                              ; $6289: $00
	add  b                                           ; $628a: $80
	add  b                                           ; $628b: $80
	ldh  [$c0], a                                    ; $628c: $e0 $c0
	or   b                                           ; $628e: $b0
	and  b                                           ; $628f: $a0
	sbc  b                                           ; $6290: $98
	sub  b                                           ; $6291: $90
	ld   a, [hl]                                     ; $6292: $7e
	ld   l, h                                        ; $6293: $6c
	inc  de                                          ; $6294: $13
	inc  de                                          ; $6295: $13
	inc  h                                           ; $6296: $24
	inc  h                                           ; $6297: $24
	add  e                                           ; $6298: $83
	nop                                              ; $6299: $00
	inc  bc                                          ; $629a: $03
	ld   bc, $0307                                   ; $629b: $01 $07 $03
	rrca                                             ; $629e: $0f
	ld   b, $1f                                      ; $629f: $06 $1f
	inc  c                                           ; $62a1: $0c
	ld   a, a                                        ; $62a2: $7f
	dec  de                                          ; $62a3: $1b
	rst  $28                                         ; $62a4: $ef
	rst  $28                                         ; $62a5: $ef
	or   h                                           ; $62a6: $b4
	or   h                                           ; $62a7: $b4
	ld   a, [bc]                                     ; $62a8: $0a
	inc  b                                           ; $62a9: $04
	add  l                                           ; $62aa: $85
	add  e                                           ; $62ab: $83
	ldh  [$c0], a                                    ; $62ac: $e0 $c0
	or   c                                           ; $62ae: $b1
	and  b                                           ; $62af: $a0
	sbc  b                                           ; $62b0: $98
	sub  b                                           ; $62b1: $90
	ld   a, [hl]                                     ; $62b2: $7e
	ld   l, h                                        ; $62b3: $6c
	inc  de                                          ; $62b4: $13
	inc  de                                          ; $62b5: $13
	inc  h                                           ; $62b6: $24
	inc  h                                           ; $62b7: $24
	inc  hl                                          ; $62b8: $23
	db   $10                                         ; $62b9: $10
	add  e                                           ; $62ba: $83
	pop  hl                                          ; $62bb: $e1
	rlca                                             ; $62bc: $07
	inc  bc                                          ; $62bd: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $62be: $cf
	ld   b, $1f                                      ; $62bf: $06 $1f
	inc  c                                           ; $62c1: $0c
	ld   a, a                                        ; $62c2: $7f
	dec  de                                          ; $62c3: $1b
	rst  $28                                         ; $62c4: $ef
	rst  $28                                         ; $62c5: $ef
	or   h                                           ; $62c6: $b4
	or   h                                           ; $62c7: $b4
	nop                                              ; $62c8: $00
	nop                                              ; $62c9: $00
	nop                                              ; $62ca: $00
	nop                                              ; $62cb: $00
	nop                                              ; $62cc: $00
	nop                                              ; $62cd: $00
	nop                                              ; $62ce: $00
	nop                                              ; $62cf: $00
	nop                                              ; $62d0: $00
	nop                                              ; $62d1: $00
	nop                                              ; $62d2: $00
	nop                                              ; $62d3: $00
	nop                                              ; $62d4: $00
	nop                                              ; $62d5: $00
	add  b                                           ; $62d6: $80
	nop                                              ; $62d7: $00
	nop                                              ; $62d8: $00
	nop                                              ; $62d9: $00
	nop                                              ; $62da: $00
	nop                                              ; $62db: $00
	nop                                              ; $62dc: $00
	nop                                              ; $62dd: $00
	nop                                              ; $62de: $00
	nop                                              ; $62df: $00
	nop                                              ; $62e0: $00
	nop                                              ; $62e1: $00
	nop                                              ; $62e2: $00
	nop                                              ; $62e3: $00
	nop                                              ; $62e4: $00
	nop                                              ; $62e5: $00
	nop                                              ; $62e6: $00
	nop                                              ; $62e7: $00
	nop                                              ; $62e8: $00
	nop                                              ; $62e9: $00
	nop                                              ; $62ea: $00
	nop                                              ; $62eb: $00
	nop                                              ; $62ec: $00
	nop                                              ; $62ed: $00
	nop                                              ; $62ee: $00
	nop                                              ; $62ef: $00
	nop                                              ; $62f0: $00
	nop                                              ; $62f1: $00
	nop                                              ; $62f2: $00
	nop                                              ; $62f3: $00
	nop                                              ; $62f4: $00
	nop                                              ; $62f5: $00
	nop                                              ; $62f6: $00
	nop                                              ; $62f7: $00
	nop                                              ; $62f8: $00
	nop                                              ; $62f9: $00
	nop                                              ; $62fa: $00
	nop                                              ; $62fb: $00
	nop                                              ; $62fc: $00
	nop                                              ; $62fd: $00
	nop                                              ; $62fe: $00
	nop                                              ; $62ff: $00
	nop                                              ; $6300: $00
	nop                                              ; $6301: $00
	nop                                              ; $6302: $00
	nop                                              ; $6303: $00
	nop                                              ; $6304: $00
	nop                                              ; $6305: $00
	nop                                              ; $6306: $00

Jump_095_6307:
	nop                                              ; $6307: $00
	nop                                              ; $6308: $00
	nop                                              ; $6309: $00
	nop                                              ; $630a: $00
	nop                                              ; $630b: $00
	nop                                              ; $630c: $00
	nop                                              ; $630d: $00
	nop                                              ; $630e: $00
	nop                                              ; $630f: $00
	nop                                              ; $6310: $00
	nop                                              ; $6311: $00
	nop                                              ; $6312: $00
	nop                                              ; $6313: $00
	nop                                              ; $6314: $00
	nop                                              ; $6315: $00
	nop                                              ; $6316: $00
	nop                                              ; $6317: $00
	nop                                              ; $6318: $00
	nop                                              ; $6319: $00
	nop                                              ; $631a: $00
	nop                                              ; $631b: $00
	nop                                              ; $631c: $00
	nop                                              ; $631d: $00
	nop                                              ; $631e: $00
	nop                                              ; $631f: $00
	nop                                              ; $6320: $00
	nop                                              ; $6321: $00
	nop                                              ; $6322: $00
	nop                                              ; $6323: $00
	nop                                              ; $6324: $00
	nop                                              ; $6325: $00
	nop                                              ; $6326: $00
	nop                                              ; $6327: $00
	ld   e, d                                        ; $6328: $5a
	ld   bc, $0000                                   ; $6329: $01 $00 $00
	add  l                                           ; $632c: $85
	rst  $38                                         ; $632d: $ff
	ld   [bc], a                                     ; $632e: $02
	db   $fc                                         ; $632f: $fc
	ldh  a, [$f3]                                    ; $6330: $f0 $f3
	add  c                                           ; $6332: $81
	ldh  a, [rSB]                                    ; $6333: $f0 $01
	rst  $38                                         ; $6335: $ff
	ldh  a, [$86]                                    ; $6336: $f0 $86
	rst  $38                                         ; $6338: $ff
	add  b                                           ; $6339: $80
	nop                                              ; $633a: $00
	nop                                              ; $633b: $00
	rst  $38                                         ; $633c: $ff
	add  h                                           ; $633d: $84
	nop                                              ; $633e: $00
	add  l                                           ; $633f: $85
	rst  $38                                         ; $6340: $ff
	ld   [$1fe7], sp                                 ; $6341: $08 $e7 $1f
	rla                                              ; $6344: $17
	rra                                              ; $6345: $1f
	cpl                                              ; $6346: $2f
	ccf                                              ; $6347: $3f
	ld   e, a                                        ; $6348: $5f
	ld   a, a                                        ; $6349: $7f
	ccf                                              ; $634a: $3f
	adc  l                                           ; $634b: $8d
	nop                                              ; $634c: $00
	nop                                              ; $634d: $00
	rst  $38                                         ; $634e: $ff
	adc  b                                           ; $634f: $88
	nop                                              ; $6350: $00
	dec  b                                           ; $6351: $05
	ld   bc, $0200                                   ; $6352: $01 $00 $02
	nop                                              ; $6355: $00
	inc  b                                           ; $6356: $04
	rlca                                             ; $6357: $07
	add  l                                           ; $6358: $85
	nop                                              ; $6359: $00
	inc  b                                           ; $635a: $04
	ld   [hl], c                                     ; $635b: $71
	ret  nz                                          ; $635c: $c0

	ld   e, a                                        ; $635d: $5f
	nop                                              ; $635e: $00
	ld   de, $0081                                   ; $635f: $11 $81 $00
	nop                                              ; $6362: $00
	rst  $38                                         ; $6363: $ff
	add  l                                           ; $6364: $85
	nop                                              ; $6365: $00
	ld   [$0063], sp                                 ; $6366: $08 $63 $00
	ld   h, h                                        ; $6369: $64
	inc  bc                                          ; $636a: $03
	db   $db                                         ; $636b: $db
	rra                                              ; $636c: $1f
	ccf                                              ; $636d: $3f
	ld   a, a                                        ; $636e: $7f
	add  b                                           ; $636f: $80
	add  l                                           ; $6370: $85
	nop                                              ; $6371: $00
	rlca                                             ; $6372: $07
	rst  $28                                         ; $6373: $ef
	ld   e, $06                                      ; $6374: $1e $06
	db   $ec                                         ; $6376: $ec
	ldh  [$fe], a                                    ; $6377: $e0 $fe
	ld   a, [$86ff]                                  ; $6379: $fa $ff $86
	nop                                              ; $637c: $00
	ld   [$38ff], sp                                 ; $637d: $08 $ff $38
	ccf                                              ; $6380: $3f
	ld   b, a                                        ; $6381: $47
	ld   e, a                                        ; $6382: $5f
	jr   c, jr_095_63c4                              ; $6383: $38 $3f

	rst  $30                                         ; $6385: $f7
	db   $10                                         ; $6386: $10
	add  l                                           ; $6387: $85
	nop                                              ; $6388: $00
	ld   [$00e2], sp                                 ; $6389: $08 $e2 $00
	cp   $f0                                         ; $638c: $fe $f0
	db   $e3                                         ; $638e: $e3
	ld   e, $f4                                      ; $638f: $1e $f4
	rst  $28                                         ; $6391: $ef
	ld   a, [bc]                                     ; $6392: $0a
	add  l                                           ; $6393: $85
	nop                                              ; $6394: $00
	ld   [bc], a                                     ; $6395: $02
	ld   h, b                                        ; $6396: $60
	stop                                             ; $6397: $10 $00
	add  b                                           ; $6399: $80
	jr   jr_095_639f                                 ; $639a: $18 $03

	ld   [$0888], sp                                 ; $639c: $08 $88 $08

jr_095_639f:
	rlca                                             ; $639f: $07
	sub  l                                           ; $63a0: $95
	rst  $38                                         ; $63a1: $ff
	inc  b                                           ; $63a2: $04
	db   $fc                                         ; $63a3: $fc
	cp   $fc                                         ; $63a4: $fe $fc
	rst  $38                                         ; $63a6: $ff
	cp   $89                                         ; $63a7: $fe $89
	rst  $38                                         ; $63a9: $ff
	ld   [$007f], sp                                 ; $63aa: $08 $7f $00
	ld   b, b                                        ; $63ad: $40
	nop                                              ; $63ae: $00
	jr   nz, @-$7e                                   ; $63af: $20 $80

	nop                                              ; $63b1: $00
	ret  nz                                          ; $63b2: $c0

	and  b                                           ; $63b3: $a0
	add  l                                           ; $63b4: $85
	rst  $38                                         ; $63b5: $ff
	ld   [bc], a                                     ; $63b6: $02
	ldh  [rDIV], a                                   ; $63b7: $e0 $04
	inc  d                                           ; $63b9: $14
	add  b                                           ; $63ba: $80
	inc  b                                           ; $63bb: $04
	nop                                              ; $63bc: $00
	ld   [$1080], sp                                 ; $63bd: $08 $80 $10
	nop                                              ; $63c0: $00
	rlca                                             ; $63c1: $07
	add  l                                           ; $63c2: $85
	rst  $38                                         ; $63c3: $ff

jr_095_63c4:
	ld   [de], a                                     ; $63c4: $12
	ld   a, a                                        ; $63c5: $7f
	add  b                                           ; $63c6: $80
	ldh  [$60], a                                    ; $63c7: $e0 $60
	ld   [hl], b                                     ; $63c9: $70
	db   $10                                         ; $63ca: $10
	jr   @+$0a                                       ; $63cb: $18 $08

	rst  $38                                         ; $63cd: $ff
	ldh  a, [$f7]                                    ; $63ce: $f0 $f7
	ldh  a, [$f8]                                    ; $63d0: $f0 $f8
	ldh  a, [$f1]                                    ; $63d2: $f0 $f1
	ldh  a, [$fe]                                    ; $63d4: $f0 $fe
	ldh  a, [$fc]                                    ; $63d6: $f0 $fc
	add  c                                           ; $63d8: $81
	ldh  a, [$0c]                                    ; $63d9: $f0 $0c
	ldh  a, [c]                                      ; $63db: $f2
	ldh  a, [$f1]                                    ; $63dc: $f0 $f1
	nop                                              ; $63de: $00
	dec  e                                           ; $63df: $1d
	ld   bc, $0123                                   ; $63e0: $01 $23 $01
	pop  bc                                          ; $63e3: $c1
	inc  bc                                          ; $63e4: $03
	ld   [bc], a                                     ; $63e5: $02
	inc  bc                                          ; $63e6: $03
	ld   bc, $0783                                   ; $63e7: $01 $83 $07
	ld   b, $c4                                      ; $63ea: $06 $c4
	ret  nz                                          ; $63ec: $c0

	inc  b                                           ; $63ed: $04
	add  a                                           ; $63ee: $87
	add  e                                           ; $63ef: $83
	ld   [$800b], sp                                 ; $63f0: $08 $0b $80
	jr   jr_095_63f8                                 ; $63f3: $18 $03

	stop                                             ; $63f5: $10 $00
	db   $10                                         ; $63f7: $10

jr_095_63f8:
	inc  d                                           ; $63f8: $14
	add  b                                           ; $63f9: $80
	jr   nc, jr_095_6405                             ; $63fa: $30 $09

	jr   nz, jr_095_6435                             ; $63fc: $20 $37

	nop                                              ; $63fe: $00
	jr   nc, @-$0e                                   ; $63ff: $30 $f0

	ldh  [$3f], a                                    ; $6401: $e0 $3f
	rst  $38                                         ; $6403: $ff
	nop                                              ; $6404: $00

jr_095_6405:
	rra                                              ; $6405: $1f
	add  c                                           ; $6406: $81
	nop                                              ; $6407: $00
	ld   b, $01                                      ; $6408: $06 $01
	inc  bc                                          ; $640a: $03
	ld   [bc], a                                     ; $640b: $02
	ld   b, $fe                                      ; $640c: $06 $fe
	inc  c                                           ; $640e: $0c
	inc  b                                           ; $640f: $04
	add  b                                           ; $6410: $80
	jr   jr_095_6417                                 ; $6411: $18 $04

	ldh  a, [hScriptOpcodeParams]                                    ; $6413: $f0 $a0
	jr   nz, @-$3e                                   ; $6415: $20 $c0

jr_095_6417:
	ld   b, b                                        ; $6417: $40
	add  b                                           ; $6418: $80
	add  b                                           ; $6419: $80

jr_095_641a:
	inc  b                                           ; $641a: $04
	nop                                              ; $641b: $00
	ld   bc, $0703                                   ; $641c: $01 $03 $07
	dec  b                                           ; $641f: $05
	add  b                                           ; $6420: $80
	ld   bc, $0780                                   ; $6421: $01 $80 $07
	add  b                                           ; $6424: $80
	rrca                                             ; $6425: $0f
	rlca                                             ; $6426: $07
	ccf                                              ; $6427: $3f
	add  hl, sp                                      ; $6428: $39
	ld   a, a                                        ; $6429: $7f
	ld   l, c                                        ; $642a: $69
	ld   hl, sp+$28                                  ; $642b: $f8 $28
	ldh  [rAUD4LEN], a                               ; $642d: $e0 $20
	add  b                                           ; $642f: $80
	nop                                              ; $6430: $00
	ld   a, [bc]                                     ; $6431: $0a
	rst  $38                                         ; $6432: $ff
	db   $fc                                         ; $6433: $fc
	rst  $38                                         ; $6434: $ff

jr_095_6435:
	rst  $20                                         ; $6435: $e7
	db   $fc                                         ; $6436: $fc
	ld   e, e                                        ; $6437: $5b
	ret  nz                                          ; $6438: $c0

	add  h                                           ; $6439: $84
	nop                                              ; $643a: $00
	call nz, $8000                                   ; $643b: $c4 $00 $80
	rlca                                             ; $643e: $07
	ld   b, $24                                      ; $643f: $06 $24
	ccf                                              ; $6441: $3f
	jr   z, @+$01                                    ; $6442: $28 $ff

	nop                                              ; $6444: $00
	ld   hl, sp+$08                                  ; $6445: $f8 $08
	add  e                                           ; $6447: $83
	nop                                              ; $6448: $00
	ld   [$7f1f], sp                                 ; $6449: $08 $1f $7f
	ldh  [rIE], a                                    ; $644c: $e0 $ff
	ld   a, b                                        ; $644e: $78
	rst  $38                                         ; $644f: $ff
	rlca                                             ; $6450: $07
	rst  $38                                         ; $6451: $ff
	nop                                              ; $6452: $00
	add  b                                           ; $6453: $80
	rlca                                             ; $6454: $07
	add  e                                           ; $6455: $83
	nop                                              ; $6456: $00
	add  b                                           ; $6457: $80
	rst  $38                                         ; $6458: $ff
	db   $10                                         ; $6459: $10

jr_095_645a:
	ld   [hl], b                                     ; $645a: $70
	cp   $8e                                         ; $645b: $fe $8e
	add  b                                           ; $645d: $80
	adc  l                                           ; $645e: $8d
	rst  $30                                         ; $645f: $f7

jr_095_6460:
	inc  a                                           ; $6460: $3c
	ld   a, [$7b02]                                  ; $6461: $fa $02 $7b
	ld   c, e                                        ; $6464: $4b
	rra                                              ; $6465: $1f
	rla                                              ; $6466: $17
	rlca                                             ; $6467: $07
	ld   [bc], a                                     ; $6468: $02
	ei                                               ; $6469: $fb
	ld   hl, sp-$7f                                  ; $646a: $f8 $81
	nop                                              ; $646c: $00
	dec  b                                           ; $646d: $05
	rrca                                             ; $646e: $0f
	sbc  b                                           ; $646f: $98
	ld   [$10d0], sp                                 ; $6470: $08 $d0 $10
	ld   d, b                                        ; $6473: $50
	add  b                                           ; $6474: $80
	ld   d, h                                        ; $6475: $54
	ld   [$de4a], sp                                 ; $6476: $08 $4a $de
	inc  b                                           ; $6479: $04
	db   $fc                                         ; $647a: $fc
	ld   c, b                                        ; $647b: $48
	ld   a, h                                        ; $647c: $7c
	ld   d, [hl]                                     ; $647d: $56
	ld   b, $07                                      ; $647e: $06 $07
	sbc  l                                           ; $6480: $9d
	rst  $38                                         ; $6481: $ff
	ld   b, $cf                                      ; $6482: $06 $cf
	ldh  [$c8], a                                    ; $6484: $e0 $c8
	ldh  a, [$e0]                                    ; $6486: $f0 $e0
	ld   hl, sp-$0c                                  ; $6488: $f8 $f4
	add  c                                           ; $648a: $81
	db   $fc                                         ; $648b: $fc
	ld   bc, $fefa                                   ; $648c: $01 $fa $fe
	add  d                                           ; $648f: $82
	rst  $38                                         ; $6490: $ff
	inc  b                                           ; $6491: $04
	rst  JumpTable                                         ; $6492: $df
	jr   nz, @+$24                                   ; $6493: $20 $22

	jr   nz, jr_095_64b8                             ; $6495: $20 $21

	add  c                                           ; $6497: $81
	jr   nz, jr_095_641a                             ; $6498: $20 $80

	db   $10                                         ; $649a: $10
	add  b                                           ; $649b: $80
	jr   @-$7e                                       ; $649c: $18 $80

	ld   c, $02                                      ; $649e: $0e $02
	rrca                                             ; $64a0: $0f
	add  hl, bc                                      ; $64a1: $09
	ld   a, [$0481]                                  ; $64a2: $fa $81 $04
	inc  c                                           ; $64a5: $0c
	add  [hl]                                        ; $64a6: $86
	ld   [bc], a                                     ; $64a7: $02
	ld   b, e                                        ; $64a8: $43
	ld   bc, $0021                                   ; $64a9: $01 $21 $00
	jr   jr_095_64ae                                 ; $64ac: $18 $00

jr_095_64ae:
	inc  b                                           ; $64ae: $04
	nop                                              ; $64af: $00
	add  d                                           ; $64b0: $82
	add  b                                           ; $64b1: $80
	ld   bc, $f083                                   ; $64b2: $01 $83 $f0
	ld   bc, $f0f8                                   ; $64b5: $01 $f8 $f0

jr_095_64b8:
	add  b                                           ; $64b8: $80
	db   $f4                                         ; $64b9: $f4
	ld   [bc], a                                     ; $64ba: $02
	or   $f2                                         ; $64bb: $f6 $f2
	di                                               ; $64bd: $f3
	add  c                                           ; $64be: $81
	pop  af                                          ; $64bf: $f1
	ld   b, $02                                      ; $64c0: $06 $02
	rlca                                             ; $64c2: $07
	add  e                                           ; $64c3: $83
	rrca                                             ; $64c4: $0f
	ld   c, a                                        ; $64c5: $4f
	rrca                                             ; $64c6: $0f
	daa                                              ; $64c7: $27
	add  a                                           ; $64c8: $87
	rra                                              ; $64c9: $1f
	nop                                              ; $64ca: $00
	jp   $2081                                       ; $64cb: $c3 $81 $20


	rlca                                             ; $64ce: $07
	jr   z, jr_095_64f1                              ; $64cf: $28 $20

	ld   b, $20                                      ; $64d1: $06 $20
	ld   hl, $0220                                   ; $64d3: $21 $20 $02
	jr   nc, jr_095_645a                             ; $64d6: $30 $82

	db   $10                                         ; $64d8: $10
	ld   [bc], a                                     ; $64d9: $02
	ld   sp, hl                                      ; $64da: $f9
	inc  c                                           ; $64db: $0c
	inc  b                                           ; $64dc: $04

jr_095_64dd:
	add  b                                           ; $64dd: $80
	jr   nc, jr_095_6460                             ; $64de: $30 $80

	ld   b, b                                        ; $64e0: $40
	add  c                                           ; $64e1: $81
	nop                                              ; $64e2: $00
	nop                                              ; $64e3: $00
	add  b                                           ; $64e4: $80
	add  c                                           ; $64e5: $81
	nop                                              ; $64e6: $00
	inc  b                                           ; $64e7: $04
	ld   b, b                                        ; $64e8: $40
	nop                                              ; $64e9: $00
	ret  z                                           ; $64ea: $c8

	jr   jr_095_64fd                                 ; $64eb: $18 $10

	add  b                                           ; $64ed: $80

jr_095_64ee:
	ld   h, b                                        ; $64ee: $60
	add  l                                           ; $64ef: $85
	nop                                              ; $64f0: $00

jr_095_64f1:
	jr   nz, jr_095_64f4                             ; $64f1: $20 $01

	inc  bc                                          ; $64f3: $03

jr_095_64f4:
	inc  c                                           ; $64f4: $0c
	rra                                              ; $64f5: $1f
	ld   de, $0100                                   ; $64f6: $11 $00 $01
	inc  bc                                          ; $64f9: $03
	ld   b, $0f                                      ; $64fa: $06 $0f
	dec  hl                                          ; $64fc: $2b

jr_095_64fd:
	ld   a, a                                        ; $64fd: $7f
	ld   e, l                                        ; $64fe: $5d
	rst  $38                                         ; $64ff: $ff
	adc  $78                                         ; $6500: $ce $78
	set  0, b                                        ; $6502: $cb $c0
	ld   b, b                                        ; $6504: $40
	nop                                              ; $6505: $00
	ld   b, b                                        ; $6506: $40
	rst  $38                                         ; $6507: $ff
	cp   h                                           ; $6508: $bc
	rst  $38                                         ; $6509: $ff
	rst  $20                                         ; $650a: $e7
	db   $fc                                         ; $650b: $fc
	jr   c, jr_095_64ee                              ; $650c: $38 $e0

	ret  z                                           ; $650e: $c8

	nop                                              ; $650f: $00
	jr   nc, jr_095_6512                             ; $6510: $30 $00

jr_095_6512:
	call nz, $0081                                   ; $6512: $c4 $81 $00
	db   $10                                         ; $6515: $10
	ld   [hl], e                                     ; $6516: $73
	ld   hl, sp-$78                                  ; $6517: $f8 $88
	add  b                                           ; $6519: $80
	ld   b, b                                        ; $651a: $40
	nop                                              ; $651b: $00
	rst  ToBoot                                         ; $651c: $c7
	nop                                              ; $651d: $00
	db   $db                                         ; $651e: $db
	nop                                              ; $651f: $00
	inc  h                                           ; $6520: $24
	ld   bc, $0779                                   ; $6521: $01 $79 $07
	add  [hl]                                        ; $6524: $86
	cpl                                              ; $6525: $2f
	ld   l, $82                                      ; $6526: $2e $82
	nop                                              ; $6528: $00

jr_095_6529:
	dec  l                                           ; $6529: $2d
	inc  bc                                          ; $652a: $03
	ld   [bc], a                                     ; $652b: $02
	rrca                                             ; $652c: $0f
	ld   [$273f], sp                                 ; $652d: $08 $3f $27
	rst  $38                                         ; $6530: $ff
	add  a                                           ; $6531: $87
	rst  $38                                         ; $6532: $ff
	ld   e, a                                        ; $6533: $5f
	rst  $38                                         ; $6534: $ff
	add  hl, sp                                      ; $6535: $39
	rra                                              ; $6536: $1f
	db   $10                                         ; $6537: $10
	rst  $38                                         ; $6538: $ff
	add  h                                           ; $6539: $84
	db   $f4                                         ; $653a: $f4
	ld   [bc], a                                     ; $653b: $02
	jp   nz, $f931                                   ; $653c: $c2 $31 $f9

	ld   h, h                                        ; $653f: $64
	inc  e                                           ; $6540: $1c
	ld   a, [bc]                                     ; $6541: $0a
	ld   b, $01                                      ; $6542: $06 $01
	inc  bc                                          ; $6544: $03
	cp   $c1                                         ; $6545: $fe $c1
	ld   hl, $02fc                                   ; $6547: $21 $fc $02
	ccf                                              ; $654a: $3f
	jr   z, jr_095_6558                              ; $654b: $28 $0b

	ld   b, $2c                                      ; $654d: $06 $2c
	xor  b                                           ; $654f: $a8
	sub  h                                           ; $6550: $94
	ld   d, [hl]                                     ; $6551: $56
	ld   d, d                                        ; $6552: $52
	jr   nc, @+$2c                                   ; $6553: $30 $2a

	ld   [hl], l                                     ; $6555: $75
	add  b                                           ; $6556: $80
	ret  nz                                          ; $6557: $c0

jr_095_6558:
	add  b                                           ; $6558: $80
	ld   b, b                                        ; $6559: $40
	dec  bc                                          ; $655a: $0b
	jr   nz, jr_095_64dd                             ; $655b: $20 $80

	ret  nc                                          ; $655d: $d0

	nop                                              ; $655e: $00
	ld   hl, sp+$10                                  ; $655f: $f8 $10
	ld   l, h                                        ; $6561: $6c
	jr   jr_095_6598                                 ; $6562: $18 $34

	add  hl, de                                      ; $6564: $19
	dec  c                                           ; $6565: $0d
	di                                               ; $6566: $f3
	adc  e                                           ; $6567: $8b
	nop                                              ; $6568: $00
	ld   [bc], a                                     ; $6569: $02
	ldh  a, [$f8]                                    ; $656a: $f0 $f8
	rrca                                             ; $656c: $0f
	add  c                                           ; $656d: $81
	db   $fc                                         ; $656e: $fc
	inc  b                                           ; $656f: $04
	cp   $fc                                         ; $6570: $fe $fc
	rst  $38                                         ; $6572: $ff
	db   $fc                                         ; $6573: $fc
	db   $fd                                         ; $6574: $fd
	add  l                                           ; $6575: $85
	db   $fc                                         ; $6576: $fc
	jr   nz, jr_095_65ed                             ; $6577: $20 $74

	adc  b                                           ; $6579: $88
	ret  z                                           ; $657a: $c8

	ld   c, [hl]                                     ; $657b: $4e
	ld   l, b                                        ; $657c: $68
	add  hl, hl                                      ; $657d: $29
	jr   nc, jr_095_6590                             ; $657e: $30 $10

	sbc  b                                           ; $6580: $98
	jr   z, jr_095_65eb                              ; $6581: $28 $68

	jr   nz, jr_095_6529                             ; $6583: $20 $a4

	inc  h                                           ; $6585: $24
	ld   [hl], a                                     ; $6586: $77
	ld   hl, $400e                                   ; $6587: $21 $0e $40
	ld   h, b                                        ; $658a: $60
	jr   nz, jr_095_65bd                             ; $658b: $20 $30

	db   $10                                         ; $658d: $10
	jr   @-$76                                       ; $658e: $18 $88

jr_095_6590:
	inc  c                                           ; $6590: $0c
	ld   b, h                                        ; $6591: $44
	inc  b                                           ; $6592: $04
	jr   nz, jr_095_6597                             ; $6593: $20 $02

	ld   [de], a                                     ; $6595: $12
	add  e                                           ; $6596: $83

jr_095_6597:
	adc  c                                           ; $6597: $89

jr_095_6598:
	add  hl, bc                                      ; $6598: $09
	add  b                                           ; $6599: $80
	pop  af                                          ; $659a: $f1
	adc  e                                           ; $659b: $8b
	ldh  a, [rSC]                                    ; $659c: $f0 $02
	ld   l, a                                        ; $659e: $6f
	sbc  a                                           ; $659f: $9f
	xor  a                                           ; $65a0: $af
	add  c                                           ; $65a1: $81
	cp   a                                           ; $65a2: $bf
	add  c                                           ; $65a3: $81
	rst  $38                                         ; $65a4: $ff
	add  c                                           ; $65a5: $81
	ld   a, a                                        ; $65a6: $7f
	nop                                              ; $65a7: $00
	ld   e, a                                        ; $65a8: $5f
	add  c                                           ; $65a9: $81
	ld   a, a                                        ; $65aa: $7f
	add  hl, bc                                      ; $65ab: $09
	ld   e, a                                        ; $65ac: $5f
	jr   jr_095_65af                                 ; $65ad: $18 $00

jr_095_65af:
	ld   [$0c04], sp                                 ; $65af: $08 $04 $0c
	nop                                              ; $65b2: $00
	ld   b, $04                                      ; $65b3: $06 $04
	rlca                                             ; $65b5: $07
	add  b                                           ; $65b6: $80
	dec  e                                           ; $65b7: $1d
	ld   [bc], a                                     ; $65b8: $02
	ld   e, l                                        ; $65b9: $5d
	ld   [hl], b                                     ; $65ba: $70
	ret  nc                                          ; $65bb: $d0

	add  b                                           ; $65bc: $80

jr_095_65bd:
	ret  nz                                          ; $65bd: $c0

	add  c                                           ; $65be: $81
	nop                                              ; $65bf: $00
	ld   c, $20                                      ; $65c0: $0e $20
	ld   [hl], b                                     ; $65c2: $70
	ld   e, $7f                                      ; $65c3: $1e $7f
	ld   de, $173f                                   ; $65c5: $11 $3f $17
	adc  [hl]                                        ; $65c8: $8e
	jp   nz, $a2e7                                   ; $65c9: $c2 $e7 $a2

	ld   hl, $f040                                   ; $65cc: $21 $40 $f0
	sub  b                                           ; $65cf: $90
	add  c                                           ; $65d0: $81
	nop                                              ; $65d1: $00
	ld   a, [bc]                                     ; $65d2: $0a
	add  b                                           ; $65d3: $80
	ret  nz                                          ; $65d4: $c0

	scf                                              ; $65d5: $37
	rst  $38                                         ; $65d6: $ff
	ld   [$47fd], sp                                 ; $65d7: $08 $fd $47
	cp   [hl]                                        ; $65da: $be
	add  e                                           ; $65db: $83
	rst  $20                                         ; $65dc: $e7
	ldh  [$84], a                                    ; $65dd: $e0 $84
	nop                                              ; $65df: $00
	inc  de                                          ; $65e0: $13
	rrca                                             ; $65e1: $0f
	ldh  a, [rIE]                                    ; $65e2: $f0 $ff
	ret  nz                                          ; $65e4: $c0

	rst  $38                                         ; $65e5: $ff
	rrca                                             ; $65e6: $0f
	ld   a, a                                        ; $65e7: $7f
	jp   $2fdf                                       ; $65e8: $c3 $df $2f


jr_095_65eb:
	nop                                              ; $65eb: $00
	ld   a, h                                        ; $65ec: $7c

jr_095_65ed:
	nop                                              ; $65ed: $00
	inc  bc                                          ; $65ee: $03
	rra                                              ; $65ef: $1f
	ldh  [c], a                                      ; $65f0: $e2
	rst  $38                                         ; $65f1: $ff
	pop  bc                                          ; $65f2: $c1
	rst  $38                                         ; $65f3: $ff
	ccf                                              ; $65f4: $3f
	add  e                                           ; $65f5: $83
	rst  $38                                         ; $65f6: $ff
	ld   [$3ff9], sp                                 ; $65f7: $08 $f9 $3f
	dec  b                                           ; $65fa: $05
	rst  $38                                         ; $65fb: $ff
	dec  de                                          ; $65fc: $1b
	rst  $38                                         ; $65fd: $ff
	ccf                                              ; $65fe: $3f
	rst  $38                                         ; $65ff: $ff
	rst  $10                                         ; $6600: $d7
	add  c                                           ; $6601: $81
	rst  $38                                         ; $6602: $ff
	nop                                              ; $6603: $00
	rst  $28                                         ; $6604: $ef
	add  c                                           ; $6605: $81
	rst  $38                                         ; $6606: $ff
	inc  bc                                          ; $6607: $03
	ret  z                                           ; $6608: $c8

	xor  $c4                                         ; $6609: $ee $c4
	adc  $80                                         ; $660b: $ce $80
	sbc  $0b                                         ; $660d: $de $0b
	inc  c                                           ; $660f: $0c
	inc  e                                           ; $6610: $1c
	ld   a, b                                        ; $6611: $78
	ld   a, h                                        ; $6612: $7c
	call c, $30fc                                    ; $6613: $dc $fc $30
	ld   a, b                                        ; $6616: $78
	ld   l, b                                        ; $6617: $68
	ld   a, b                                        ; $6618: $78
	ld   h, c                                        ; $6619: $61
	ld   bc, $0086                                   ; $661a: $01 $86 $00
	add  b                                           ; $661d: $80
	add  hl, bc                                      ; $661e: $09
	jr   nc, jr_095_6627                             ; $661f: $30 $06

	rrca                                             ; $6621: $0f
	nop                                              ; $6622: $00
	rrca                                             ; $6623: $0f
	ld   a, b                                        ; $6624: $78
	xor  l                                           ; $6625: $ad
	cp   l                                           ; $6626: $bd

jr_095_6627:
	rst  $10                                         ; $6627: $d7
	rlca                                             ; $6628: $07
	rst  $10                                         ; $6629: $d7
	rst  JumpTable                                         ; $662a: $df
	rst  $28                                         ; $662b: $ef
	rlca                                             ; $662c: $07
	db   $eb                                         ; $662d: $eb
	sbc  a                                           ; $662e: $9f
	or   a                                           ; $662f: $b7
	dec  bc                                          ; $6630: $0b
	sbc  c                                           ; $6631: $99
	add  hl, de                                      ; $6632: $19
	inc  e                                           ; $6633: $1c
	ldh  a, [c]                                      ; $6634: $f2
	rrca                                             ; $6635: $0f
	nop                                              ; $6636: $00
	rra                                              ; $6637: $1f
	jr   nc, @+$3e                                   ; $6638: $30 $3c

	ld   d, l                                        ; $663a: $55
	ld   [hl], e                                     ; $663b: $73
	dec  h                                           ; $663c: $25
	rst  $28                                         ; $663d: $ef
	ld   b, a                                        ; $663e: $47
	db   $dd                                         ; $663f: $dd
	call $9ada                                       ; $6640: $cd $da $9a
	or   l                                           ; $6643: $b5
	ld   e, e                                        ; $6644: $5b
	rst  $38                                         ; $6645: $ff
	ld   bc, $f1ff                                   ; $6646: $01 $ff $f1
	rlca                                             ; $6649: $07
	cp   $fd                                         ; $664a: $fe $fd
	ld   sp, hl                                      ; $664c: $f9
	cp   $fc                                         ; $664d: $fe $fc
	ld   e, a                                        ; $664f: $5f
	ld   e, [hl]                                     ; $6650: $5e
	add  b                                           ; $6651: $80
	xor  a                                           ; $6652: $af
	add  hl, bc                                      ; $6653: $09
	ld   d, l                                        ; $6654: $55
	ld   d, [hl]                                     ; $6655: $56
	nop                                              ; $6656: $00
	add  d                                           ; $6657: $82
	add  b                                           ; $6658: $80
	ld   b, b                                        ; $6659: $40
	ret  nz                                          ; $665a: $c0

	and  b                                           ; $665b: $a0

jr_095_665c:
	ldh  [rHDMA1], a                                 ; $665c: $e0 $51
	add  b                                           ; $665e: $80
	ldh  a, [$29]                                    ; $665f: $f0 $29
	ld   [hl], b                                     ; $6661: $70
	jr   z, jr_095_665c                              ; $6662: $28 $f8

	ld   a, b                                        ; $6664: $78
	ld   hl, sp+$53                                  ; $6665: $f8 $53
	ld   b, b                                        ; $6667: $40
	ld   b, d                                        ; $6668: $42
	ld   b, b                                        ; $6669: $40
	ld   d, b                                        ; $666a: $50
	jr   nz, jr_095_6696                             ; $666b: $20 $29

	jr   nz, @+$26                                   ; $666d: $20 $24

	sub  b                                           ; $666f: $90
	inc  de                                          ; $6670: $13
	db   $ec                                         ; $6671: $ec
	xor  h                                           ; $6672: $ac
	ldh  a, [c]                                      ; $6673: $f2
	jp   nz, $30fc                                   ; $6674: $c2 $fc $30

	ld   b, c                                        ; $6677: $41
	ld   [hl], d                                     ; $6678: $72
	jr   nc, jr_095_66b3                             ; $6679: $30 $38

	ld   [$040c], sp                                 ; $667b: $08 $0c $04
	add  [hl]                                        ; $667e: $86
	ld   [bc], a                                     ; $667f: $02
	ld   b, e                                        ; $6680: $43
	ld   bc, $00e1                                   ; $6681: $01 $e1 $00
	jr   nz, jr_095_6686                             ; $6684: $20 $00

jr_095_6686:
	di                                               ; $6686: $f3
	inc  bc                                          ; $6687: $03
	ld   bc, $0809                                   ; $6688: $01 $09 $08
	add  h                                           ; $668b: $84
	ld   c, $80                                      ; $668c: $0e $80
	rrca                                             ; $668e: $0f
	add  b                                           ; $668f: $80
	nop                                              ; $6690: $00
	dec  b                                           ; $6691: $05
	ld   c, $fe                                      ; $6692: $0e $fe
	add  c                                           ; $6694: $81
	add  b                                           ; $6695: $80

jr_095_6696:
	add  e                                           ; $6696: $83
	add  c                                           ; $6697: $81
	add  b                                           ; $6698: $80
	add  d                                           ; $6699: $82
	ld   bc, $8084                                   ; $669a: $01 $84 $80
	add  b                                           ; $669d: $80
	add  h                                           ; $669e: $84
	add  b                                           ; $669f: $80
	call nz, $e411                                   ; $66a0: $c4 $11 $e4
	db   $ec                                         ; $66a3: $ec
	cp   $0e                                         ; $66a4: $fe $0e
	add  b                                           ; $66a6: $80

jr_095_66a7:
	ret  nz                                          ; $66a7: $c0

	nop                                              ; $66a8: $00
	and  b                                           ; $66a9: $a0
	nop                                              ; $66aa: $00
	sbc  b                                           ; $66ab: $98
	nop                                              ; $66ac: $00
	ld   a, b                                        ; $66ad: $78
	nop                                              ; $66ae: $00
	ld   bc, $0003                                   ; $66af: $01 $03 $00
	rlca                                             ; $66b2: $07

jr_095_66b3:
	dec  b                                           ; $66b3: $05
	add  b                                           ; $66b4: $80
	rlca                                             ; $66b5: $07
	dec  l                                           ; $66b6: $2d
	nop                                              ; $66b7: $00
	ld   bc, $0a03                                   ; $66b8: $01 $03 $0a
	rra                                              ; $66bb: $1f
	scf                                              ; $66bc: $37
	ld   a, [hl]                                     ; $66bd: $7e
	call c, Call_095_70fb                            ; $66be: $dc $fb $70
	db   $ed                                         ; $66c1: $ed
	ret  nz                                          ; $66c2: $c0

	ld   [hl], a                                     ; $66c3: $77
	ld   e, e                                        ; $66c4: $5b
	db   $fd                                         ; $66c5: $fd
	xor  $3b                                         ; $66c6: $ee $3b
	and  e                                           ; $66c8: $a3
	rst  $38                                         ; $66c9: $ff
	ld   l, d                                        ; $66ca: $6a
	rst  $38                                         ; $66cb: $ff
	ld   h, c                                        ; $66cc: $61
	rst  JumpTable                                         ; $66cd: $df
	dec  de                                          ; $66ce: $1b
	ld   a, a                                        ; $66cf: $7f
	dec  sp                                          ; $66d0: $3b
	rst  JumpTable                                         ; $66d1: $df
	rst  ToBoot                                         ; $66d2: $c7
	ld   a, a                                        ; $66d3: $7f
	ld   d, b                                        ; $66d4: $50
	rst  $38                                         ; $66d5: $ff
	and  e                                           ; $66d6: $a3
	rst  $30                                         ; $66d7: $f7
	add  l                                           ; $66d8: $85
	ld   sp, hl                                      ; $66d9: $f9
	ldh  [$fc], a                                    ; $66da: $e0 $fc
	ldh  a, [$fe]                                    ; $66dc: $f0 $fe
	ld   sp, hl                                      ; $66de: $f9
	rst  $38                                         ; $66df: $ff
	db   $fc                                         ; $66e0: $fc
	rst  $38                                         ; $66e1: $ff
	add  e                                           ; $66e2: $83
	rst  $38                                         ; $66e3: $ff
	add  b                                           ; $66e4: $80
	add  b                                           ; $66e5: $80

Call_095_66e6:
	inc  bc                                          ; $66e6: $03
	nop                                              ; $66e7: $00
	db   $fc                                         ; $66e8: $fc
	add  c                                           ; $66e9: $81
	add  b                                           ; $66ea: $80
	ld   c, $60                                      ; $66eb: $0e $60
	nop                                              ; $66ed: $00
	jr   c, jr_095_6714                              ; $66ee: $38 $24

	rlca                                             ; $66f0: $07
	add  h                                           ; $66f1: $84
	ret  nz                                          ; $66f2: $c0

	ld   [hl], b                                     ; $66f3: $70
	ld   hl, sp+$4f                                  ; $66f4: $f8 $4f
	rst  $38                                         ; $66f6: $ff
	adc  b                                           ; $66f7: $88
	cpl                                              ; $66f8: $2f
	inc  hl                                          ; $66f9: $23
	inc  bc                                          ; $66fa: $03
	add  d                                           ; $66fb: $82
	nop                                              ; $66fc: $00
	add  b                                           ; $66fd: $80
	add  c                                           ; $66fe: $81
	rlca                                             ; $66ff: $07
	rlca                                             ; $6700: $07
	cp   $07                                         ; $6701: $fe $07
	ld   bc, $fffc                                   ; $6703: $01 $fc $ff
	xor  h                                           ; $6706: $ac
	ld   e, b                                        ; $6707: $58
	add  c                                           ; $6708: $81
	jr   jr_095_670b                                 ; $6709: $18 $00

jr_095_670b:
	db   $10                                         ; $670b: $10
	add  b                                           ; $670c: $80
	jr   nz, jr_095_6713                             ; $670d: $20 $04

	ret  nz                                          ; $670f: $c0

	ldh  [hScriptOpcodeParams], a                                    ; $6710: $e0 $a0
	ret  nz                                          ; $6712: $c0

jr_095_6713:
	ld   b, b                                        ; $6713: $40

jr_095_6714:
	add  b                                           ; $6714: $80
	add  b                                           ; $6715: $80
	adc  e                                           ; $6716: $8b
	nop                                              ; $6717: $00
	add  b                                           ; $6718: $80
	db   $10                                         ; $6719: $10
	inc  b                                           ; $671a: $04
	nop                                              ; $671b: $00
	db   $10                                         ; $671c: $10
	ld   [bc], a                                     ; $671d: $02
	rra                                              ; $671e: $1f
	inc  e                                           ; $671f: $1c
	add  b                                           ; $6720: $80
	dec  de                                          ; $6721: $1b
	add  l                                           ; $6722: $85
	add  hl, de                                      ; $6723: $19
	add  b                                           ; $6724: $80
	jr   jr_095_66a7                                 ; $6725: $18 $80

	jr   c, jr_095_6729                              ; $6727: $38 $00

jr_095_6729:
	or   a                                           ; $6729: $b7
	add  b                                           ; $672a: $80
	xor  d                                           ; $672b: $aa
	add  b                                           ; $672c: $80
	sub  l                                           ; $672d: $95
	add  b                                           ; $672e: $80
	xor  d                                           ; $672f: $aa
	add  b                                           ; $6730: $80
	or   l                                           ; $6731: $b5
	rlca                                             ; $6732: $07
	db   $eb                                         ; $6733: $eb
	adc  d                                           ; $6734: $8a
	or   $41                                         ; $6735: $f6 $41
	rst  $38                                         ; $6737: $ff
	dec  [hl]                                        ; $6738: $35
	rst  $30                                         ; $6739: $f7
	xor  e                                           ; $673a: $ab
	add  b                                           ; $673b: $80
	xor  d                                           ; $673c: $aa
	rlca                                             ; $673d: $07
	ld   d, l                                        ; $673e: $55
	ld   d, [hl]                                     ; $673f: $56
	xor  l                                           ; $6740: $ad

jr_095_6741:
	sub  d                                           ; $6741: $92
	ld   l, a                                        ; $6742: $6f
	or   e                                           ; $6743: $b3
	cp   a                                           ; $6744: $bf
	ld   e, a                                        ; $6745: $5f
	add  b                                           ; $6746: $80
	rst  $38                                         ; $6747: $ff
	add  b                                           ; $6748: $80
	ld   [$d505], a                                  ; $6749: $ea $05 $d5
	sbc  d                                           ; $674c: $9a
	rst  $38                                         ; $674d: $ff
	db   $fc                                         ; $674e: $fc
	ld   a, h                                        ; $674f: $7c
	ld   hl, sp-$7f                                  ; $6750: $f8 $81
	or   a                                           ; $6752: $b7
	ld   [bc], a                                     ; $6753: $02
	rrca                                             ; $6754: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6755: $cf
	cp   a                                           ; $6756: $bf
	add  d                                           ; $6757: $82
	rst  $38                                         ; $6758: $ff
	inc  b                                           ; $6759: $04
	ld   a, a                                        ; $675a: $7f
	ld   a, h                                        ; $675b: $7c
	nop                                              ; $675c: $00
	jp   nz, $80c0                                   ; $675d: $c2 $c0 $80

	jr   nc, @+$0b                                   ; $6760: $30 $09

	inc  c                                           ; $6762: $0c
	call z, $f6c6                                    ; $6763: $cc $c6 $f6
	ldh  a, [c]                                      ; $6766: $f2
	rst  $38                                         ; $6767: $ff
	db   $fd                                         ; $6768: $fd
	rst  $38                                         ; $6769: $ff
	cp   $ff                                         ; $676a: $fe $ff
	add  c                                           ; $676c: $81
	nop                                              ; $676d: $00
	add  b                                           ; $676e: $80
	add  b                                           ; $676f: $80
	add  b                                           ; $6770: $80
	ld   h, b                                        ; $6771: $60
	add  b                                           ; $6772: $80
	db   $10                                         ; $6773: $10
	add  b                                           ; $6774: $80
	ld   e, $80                                      ; $6775: $1e $80
	pop  hl                                          ; $6777: $e1
	add  b                                           ; $6778: $80
	add  b                                           ; $6779: $80
	dec  b                                           ; $677a: $05
	add  e                                           ; $677b: $83
	ld   a, h                                        ; $677c: $7c
	rrca                                             ; $677d: $0f
	inc  c                                           ; $677e: $0c
	rrca                                             ; $677f: $0f

Call_095_6780:
	inc  bc                                          ; $6780: $03
	add  [hl]                                        ; $6781: $86
	rrca                                             ; $6782: $0f
	inc  bc                                          ; $6783: $03
	ld   [$0f0b], sp                                 ; $6784: $08 $0b $0f
	ei                                               ; $6787: $fb
	add  b                                           ; $6788: $80
	rst  ToBoot                                         ; $6789: $c7
	add  b                                           ; $678a: $80
	rst  $20                                         ; $678b: $e7
	add  b                                           ; $678c: $80
	rst  $30                                         ; $678d: $f7
	add  b                                           ; $678e: $80
	rst  $20                                         ; $678f: $e7
	add  c                                           ; $6790: $81
	rst  $30                                         ; $6791: $f7
	ld   b, $f3                                      ; $6792: $06 $f3
	inc  bc                                          ; $6794: $03
	pop  af                                          ; $6795: $f1
	ld   sp, hl                                      ; $6796: $f9
	ldh  a, [rIF]                                    ; $6797: $f0 $0f
	ld   [$0680], sp                                 ; $6799: $08 $80 $06
	add  b                                           ; $679c: $80
	or   b                                           ; $679d: $b0
	add  b                                           ; $679e: $80
	sbc  [hl]                                        ; $679f: $9e
	add  b                                           ; $67a0: $80
	rst  $28                                         ; $67a1: $ef
	add  c                                           ; $67a2: $81
	rst  $38                                         ; $67a3: $ff
	inc  b                                           ; $67a4: $04
	jp   Jump_095_4cff                               ; $67a5: $c3 $ff $4c


	rst  $38                                         ; $67a8: $ff
	ld   [hl], b                                     ; $67a9: $70
	add  b                                           ; $67aa: $80
	jr   nc, jr_095_67bc                             ; $67ab: $30 $0f

	nop                                              ; $67ad: $00
	ld   [$1218], sp                                 ; $67ae: $08 $18 $12
	adc  [hl]                                        ; $67b1: $8e
	adc  l                                           ; $67b2: $8d
	jp   $e1e2                                       ; $67b3: $c3 $e2 $e1


	pop  bc                                          ; $67b6: $c1
	ldh  [rAUD4LEN], a                               ; $67b7: $e0 $20
	ldh  a, [$37]                                    ; $67b9: $f0 $37
	ccf                                              ; $67bb: $3f

jr_095_67bc:
	jr   c, jr_095_6741                              ; $67bc: $38 $83

	nop                                              ; $67be: $00
	rra                                              ; $67bf: $1f
	adc  a                                           ; $67c0: $8f
	add  b                                           ; $67c1: $80
	ld   c, h                                        ; $67c2: $4c
	ldh  [$93], a                                    ; $67c3: $e0 $93
	ld   a, b                                        ; $67c5: $78
	cp   b                                           ; $67c6: $b8
	ld   hl, sp-$35                                  ; $67c7: $f8 $cb
	rst  $38                                         ; $67c9: $ff
	inc  c                                           ; $67ca: $0c
	ld   a, a                                        ; $67cb: $7f
	add  e                                           ; $67cc: $83
	rrca                                             ; $67cd: $0f
	ld   sp, $0407                                   ; $67ce: $31 $07 $04
	ld   bc, $0010                                   ; $67d1: $01 $10 $00
	ld   hl, sp+$60                                  ; $67d4: $f8 $60
	jr   jr_095_6857                                 ; $67d6: $18 $7f

	dec  c                                           ; $67d8: $0d
	rra                                              ; $67d9: $1f
	jp   $35cf                                       ; $67da: $c3 $cf $35


	rst  $30                                         ; $67dd: $f7
	ret                                              ; $67de: $c9


	ei                                               ; $67df: $fb
	add  b                                           ; $67e0: $80
	rst  $38                                         ; $67e1: $ff
	rlca                                             ; $67e2: $07
	ld   a, b                                        ; $67e3: $78
	rst  $38                                         ; $67e4: $ff
	ccf                                              ; $67e5: $3f
	ld   a, a                                        ; $67e6: $7f
	or   c                                           ; $67e7: $b1
	ld   hl, sp+$40                                  ; $67e8: $f8 $40
	ret  nz                                          ; $67ea: $c0

	add  b                                           ; $67eb: $80
	ret  nc                                          ; $67ec: $d0

	ld   bc, $9c94                                   ; $67ed: $01 $94 $9c
	add  b                                           ; $67f0: $80
	inc  e                                           ; $67f1: $1c
	ld   bc, $9c98                                   ; $67f2: $01 $98 $9c
	add  b                                           ; $67f5: $80
	call c, $fe80                                    ; $67f6: $dc $80 $fe
	ld   b, $6c                                      ; $67f9: $06 $6c
	ld   h, b                                        ; $67fb: $60
	ld   hl, $2939                                   ; $67fc: $21 $39 $29
	ccf                                              ; $67ff: $3f
	ld   de, $1f83                                   ; $6800: $11 $83 $1f
	add  b                                           ; $6803: $80
	ccf                                              ; $6804: $3f
	add  b                                           ; $6805: $80
	rst  $38                                         ; $6806: $ff
	add  b                                           ; $6807: $80
	db   $10                                         ; $6808: $10
	add  b                                           ; $6809: $80
	and  a                                           ; $680a: $a7
	inc  h                                           ; $680b: $24
	rst  JumpTable                                         ; $680c: $df
	rst  $38                                         ; $680d: $ff
	cp   a                                           ; $680e: $bf
	rst  $38                                         ; $680f: $ff
	sbc  a                                           ; $6810: $9f
	rst  $38                                         ; $6811: $ff
	cp   $ff                                         ; $6812: $fe $ff
	db   $fd                                         ; $6814: $fd
	rst  $38                                         ; $6815: $ff
	ei                                               ; $6816: $fb
	cp   $f9                                         ; $6817: $fe $f9
	ldh  a, [$e1]                                    ; $6819: $f0 $e1
	ldh  [$d6], a                                    ; $681b: $e0 $d6
	ret  nz                                          ; $681d: $c0

	and  [hl]                                        ; $681e: $a6
	add  c                                           ; $681f: $81
	ld   b, e                                        ; $6820: $43
	inc  bc                                          ; $6821: $03
	sub  e                                           ; $6822: $93
	ld   bc, $0534                                   ; $6823: $01 $34 $05
	ld   h, l                                        ; $6826: $65
	inc  bc                                          ; $6827: $03
	dec  l                                           ; $6828: $2d
	cp   a                                           ; $6829: $bf
	daa                                              ; $682a: $27
	rra                                              ; $682b: $1f
	cpl                                              ; $682c: $2f
	ld   a, [hl]                                     ; $682d: $7e
	ld   a, $ff                                      ; $682e: $3e $ff
	ld   a, a                                        ; $6830: $7f
	add  b                                           ; $6831: $80
	cp   $84                                         ; $6832: $fe $84
	rst  $38                                         ; $6834: $ff
	add  b                                           ; $6835: $80
	xor  d                                           ; $6836: $aa
	add  b                                           ; $6837: $80
	ld   d, l                                        ; $6838: $55
	add  b                                           ; $6839: $80
	xor  d                                           ; $683a: $aa
	add  b                                           ; $683b: $80
	ld   d, l                                        ; $683c: $55
	add  b                                           ; $683d: $80
	xor  d                                           ; $683e: $aa
	add  b                                           ; $683f: $80
	ld   d, l                                        ; $6840: $55
	add  b                                           ; $6841: $80
	xor  d                                           ; $6842: $aa
	add  b                                           ; $6843: $80
	push de                                          ; $6844: $d5
	add  b                                           ; $6845: $80
	cp   a                                           ; $6846: $bf
	add  b                                           ; $6847: $80
	ld   e, a                                        ; $6848: $5f
	add  b                                           ; $6849: $80
	cp   a                                           ; $684a: $bf
	add  b                                           ; $684b: $80
	ld   e, a                                        ; $684c: $5f
	add  b                                           ; $684d: $80
	cp   a                                           ; $684e: $bf
	add  b                                           ; $684f: $80
	ld   a, a                                        ; $6850: $7f
	sub  c                                           ; $6851: $91
	rst  $38                                         ; $6852: $ff
	add  b                                           ; $6853: $80
	add  b                                           ; $6854: $80
	ld   b, $c0                                      ; $6855: $06 $c0

jr_095_6857:
	add  $ce                                         ; $6857: $c6 $ce
	ldh  [c], a                                      ; $6859: $e2
	jp   nz, $efe2                                   ; $685a: $c2 $e2 $ef

	add  c                                           ; $685d: $81
	pop  af                                          ; $685e: $f1
	inc  b                                           ; $685f: $04
	ldh  [c], a                                      ; $6860: $e2
	ldh  a, [$f4]                                    ; $6861: $f0 $f4
	ld   hl, sp-$0b                                  ; $6863: $f8 $f5
	adc  c                                           ; $6865: $89
	rrca                                             ; $6866: $0f
	nop                                              ; $6867: $00
	nop                                              ; $6868: $00
	add  b                                           ; $6869: $80
	rrca                                             ; $686a: $0f
	ld   bc, $060e                                   ; $686b: $01 $0e $06
	add  b                                           ; $686e: $80
	cp   $01                                         ; $686f: $fe $01
	db   $fd                                         ; $6871: $fd
	push af                                          ; $6872: $f5
	add  b                                           ; $6873: $80
	ld   hl, sp+$0f                                  ; $6874: $f8 $0f
	ld   a, [$fffb]                                  ; $6876: $fa $fb $ff
	pop  af                                          ; $6879: $f1
	rst  $38                                         ; $687a: $ff
	ld   a, a                                        ; $687b: $7f
	rst  $38                                         ; $687c: $ff
	sbc  a                                           ; $687d: $9f
	ccf                                              ; $687e: $3f
	jr   nz, jr_095_68b9                             ; $687f: $20 $38

	nop                                              ; $6881: $00
	cp   $b8                                         ; $6882: $fe $b8
	rst  $38                                         ; $6884: $ff
	ld   a, a                                        ; $6885: $7f
	add  l                                           ; $6886: $85
	rst  $38                                         ; $6887: $ff
	inc  c                                           ; $6888: $0c
	pop  af                                          ; $6889: $f1
	db   $fc                                         ; $688a: $fc
	db   $e3                                         ; $688b: $e3
	ldh  a, [$78]                                    ; $688c: $f0 $78
	ldh  a, [$e0]                                    ; $688e: $f0 $e0
	ld   hl, sp-$04                                  ; $6890: $f8 $fc
	ld   hl, sp-$48                                  ; $6892: $f8 $b8
	ld   hl, sp-$2e                                  ; $6894: $f8 $d2
	add  c                                           ; $6896: $81
	db   $fc                                         ; $6897: $fc
	inc  c                                           ; $6898: $0c
	db   $ec                                         ; $6899: $ec
	db   $fc                                         ; $689a: $fc
	ld   [hl+], a                                    ; $689b: $22
	ld   a, h                                        ; $689c: $7c
	ld   b, d                                        ; $689d: $42
	ld   a, $21                                      ; $689e: $3e $21
	rra                                              ; $68a0: $1f
	ld   d, $0f                                      ; $68a1: $16 $0f
	dec  bc                                          ; $68a3: $0b
	add  a                                           ; $68a4: $87
	add  e                                           ; $68a5: $83
	add  b                                           ; $68a6: $80
	db   $e3                                         ; $68a7: $e3
	add  b                                           ; $68a8: $80
	ld   [hl], c                                     ; $68a9: $71
	add  b                                           ; $68aa: $80
	inc  a                                           ; $68ab: $3c
	add  b                                           ; $68ac: $80
	jr   c, @-$7e                                    ; $68ad: $38 $80

	inc  c                                           ; $68af: $0c
	ld   c, $8f                                      ; $68b0: $0e $8f
	ld   c, a                                        ; $68b2: $4f
	jp   $f123                                       ; $68b3: $c3 $23 $f1


	xor  c                                           ; $68b6: $a9
	cp   $79                                         ; $68b7: $fe $79

jr_095_68b9:
	add  a                                           ; $68b9: $87
	ld   h, a                                        ; $68ba: $67
	ldh  [$d7], a                                    ; $68bb: $e0 $d7
	ccf                                              ; $68bd: $3f
	cpl                                              ; $68be: $2f
	ccf                                              ; $68bf: $3f
	add  b                                           ; $68c0: $80
	rra                                              ; $68c1: $1f
	ld   a, [bc]                                     ; $68c2: $0a
	rrca                                             ; $68c3: $0f
	adc  a                                           ; $68c4: $8f
	add  e                                           ; $68c5: $83
	rst  ToBoot                                         ; $68c6: $c7
	ret  nz                                          ; $68c7: $c0

	db   $e3                                         ; $68c8: $e3
	inc  e                                           ; $68c9: $1c
	rst  $38                                         ; $68ca: $ff
	add  h                                           ; $68cb: $84
	ld   a, b                                        ; $68cc: $78
	ld   h, a                                        ; $68cd: $67
	add  c                                           ; $68ce: $81
	rst  $38                                         ; $68cf: $ff
	ld   d, $5f                                      ; $68d0: $16 $5f
	rst  $38                                         ; $68d2: $ff
	or   a                                           ; $68d3: $b7
	rst  $38                                         ; $68d4: $ff
	rst  $28                                         ; $68d5: $ef
	rst  $38                                         ; $68d6: $ff
	ld   h, c                                        ; $68d7: $61
	rst  $38                                         ; $68d8: $ff
	ldh  [c], a                                      ; $68d9: $e2
	rra                                              ; $68da: $1f
	inc  bc                                          ; $68db: $03
	nop                                              ; $68dc: $00
	ld   hl, sp-$01                                  ; $68dd: $f8 $ff
	ld   sp, hl                                      ; $68df: $f9
	rst  $38                                         ; $68e0: $ff
	cp   $ff                                         ; $68e1: $fe $ff
	rst  $20                                         ; $68e3: $e7
	rst  $38                                         ; $68e4: $ff
	jp   c, $35f7                                    ; $68e5: $da $f7 $35

	add  b                                           ; $68e8: $80
	rst  $28                                         ; $68e9: $ef
	add  b                                           ; $68ea: $80
	ld   c, d                                        ; $68eb: $4a
	dec  c                                           ; $68ec: $0d
	call c, $fc24                                    ; $68ed: $dc $24 $fc
	ld   h, h                                        ; $68f0: $64
	rst  $38                                         ; $68f1: $ff
	ccf                                              ; $68f2: $3f
	ld   [hl], b                                     ; $68f3: $70
	ld   d, b                                        ; $68f4: $50
	ld   l, b                                        ; $68f5: $68
	xor  b                                           ; $68f6: $a8
	and  h                                           ; $68f7: $a4
	inc  h                                           ; $68f8: $24
	add  hl, sp                                      ; $68f9: $39
	ld   sp, hl                                      ; $68fa: $f9
	add  b                                           ; $68fb: $80
	and  $0c                                         ; $68fc: $e6 $0c
	ld   e, b                                        ; $68fe: $58
	inc  hl                                          ; $68ff: $23
	rst  $38                                         ; $6900: $ff
	ld   [hl], e                                     ; $6901: $73
	rst  $38                                         ; $6902: $ff
	adc  a                                           ; $6903: $8f
	rst  $38                                         ; $6904: $ff
	rrca                                             ; $6905: $0f
	rst  $38                                         ; $6906: $ff
	rrca                                             ; $6907: $0f
	rst  $38                                         ; $6908: $ff
	rrca                                             ; $6909: $0f
	adc  a                                           ; $690a: $8f
	add  b                                           ; $690b: $80
	rrca                                             ; $690c: $0f
	add  b                                           ; $690d: $80
	rra                                              ; $690e: $1f
	nop                                              ; $690f: $00
	rlca                                             ; $6910: $07
	sub  l                                           ; $6911: $95
	rst  $38                                         ; $6912: $ff
	nop                                              ; $6913: $00
	cp   $80                                         ; $6914: $fe $80
	rst  $38                                         ; $6916: $ff
	ld   bc, $fcfe                                   ; $6917: $01 $fe $fc
	add  c                                           ; $691a: $81
	cp   $00                                         ; $691b: $fe $00
	db   $fd                                         ; $691d: $fd
	add  l                                           ; $691e: $85
	rst  $38                                         ; $691f: $ff
	ld   [$1f0f], sp                                 ; $6920: $08 $0f $1f
	rst  JumpTable                                         ; $6923: $df
	rrca                                             ; $6924: $0f
	rst  ToBoot                                         ; $6925: $c7
	rrca                                             ; $6926: $0f
	ld   c, $0f                                      ; $6927: $0e $0f
	or   $85                                         ; $6929: $f6 $85
	rst  $38                                         ; $692b: $ff
	ld   [$ffc0], sp                                 ; $692c: $08 $c0 $ff
	add  b                                           ; $692f: $80
	pop  hl                                          ; $6930: $e1
	ld   hl, $40c0                                   ; $6931: $21 $c0 $40
	add  b                                           ; $6934: $80
	adc  h                                           ; $6935: $8c
	add  l                                           ; $6936: $85
	ld   hl, sp+$08                                  ; $6937: $f8 $08
	add  sp, -$10                                    ; $6939: $e8 $f0
	ld   a, d                                        ; $693b: $7a
	ldh  [$87], a                                    ; $693c: $e0 $87
	ldh  [$61], a                                    ; $693e: $e0 $61
	jr   nz, jr_095_69a1                             ; $6940: $20 $5f

	adc  d                                           ; $6942: $8a

jr_095_6943:
	rrca                                             ; $6943: $0f
	add  b                                           ; $6944: $80
	ld   [$0111], sp                                 ; $6945: $08 $11 $01
	cp   $cf                                         ; $6948: $fe $cf
	rst  ToBoot                                         ; $694a: $c7
	rst  $20                                         ; $694b: $e7
	db   $e3                                         ; $694c: $e3
	di                                               ; $694d: $f3
	pop  af                                          ; $694e: $f1
	ld   sp, hl                                      ; $694f: $f9
	ld   hl, sp-$01                                  ; $6950: $f8 $ff
	db   $fd                                         ; $6952: $fd
	or   $f3                                         ; $6953: $f6 $f3
	ld   l, a                                        ; $6955: $6f
	ld   h, b                                        ; $6956: $60
	rra                                              ; $6957: $1f
	rst  $30                                         ; $6958: $f7
	add  b                                           ; $6959: $80
	di                                               ; $695a: $f3
	add  hl, bc                                      ; $695b: $09
	db   $ed                                         ; $695c: $ed
	adc  $ef                                         ; $695d: $ce $ef
	ret  nc                                          ; $695f: $d0

	rst  $38                                         ; $6960: $ff
	db   $e3                                         ; $6961: $e3
	ld   hl, sp-$68                                  ; $6962: $f8 $98
	rst  $20                                         ; $6964: $e7
	ld   h, a                                        ; $6965: $67
	add  b                                           ; $6966: $80
	ld   e, a                                        ; $6967: $5f
	rlca                                             ; $6968: $07
	ccf                                              ; $6969: $3f
	inc  a                                           ; $696a: $3c
	ldh  [$9a], a                                    ; $696b: $e0 $9a
	ld   hl, sp+$40                                  ; $696d: $f8 $40
	db   $fc                                         ; $696f: $fc
	dec  a                                           ; $6970: $3d
	add  b                                           ; $6971: $80
	db   $fc                                         ; $6972: $fc
	add  b                                           ; $6973: $80
	ld   b, $80                                      ; $6974: $06 $80
	ldh  a, [c]                                      ; $6976: $f2
	add  b                                           ; $6977: $80
	db   $fc                                         ; $6978: $fc
	ld   hl, $01fe                                   ; $6979: $21 $fe $01
	ld   a, a                                        ; $697c: $7f
	ld   a, [hl]                                     ; $697d: $7e
	ld   a, a                                        ; $697e: $7f
	ld   a, c                                        ; $697f: $79
	ld   a, h                                        ; $6980: $7c
	ld   [hl], h                                     ; $6981: $74
	jr   c, jr_095_69a4                              ; $6982: $38 $20

	jr   c, jr_095_6943                              ; $6984: $38 $bd

	sbc  l                                           ; $6986: $9d
	rst  ToBoot                                         ; $6987: $c7
	rst  JumpTable                                         ; $6988: $df
	add  sp, -$01                                    ; $6989: $e8 $ff
	db   $d3                                         ; $698b: $d3
	db   $fc                                         ; $698c: $fc
	add  $9e                                         ; $698d: $c6 $9e
	rra                                              ; $698f: $1f
	sbc  a                                           ; $6990: $9f
	ld   l, b                                        ; $6991: $68
	ld   a, a                                        ; $6992: $7f
	ld   c, h                                        ; $6993: $4c
	ld   l, a                                        ; $6994: $6f
	sub  c                                           ; $6995: $91
	db   $dd                                         ; $6996: $dd
	ld   l, c                                        ; $6997: $69
	ld   sp, hl                                      ; $6998: $f9
	add  $e7                                         ; $6999: $c6 $e7
	pop  bc                                          ; $699b: $c1
	add  c                                           ; $699c: $81
	nop                                              ; $699d: $00
	add  b                                           ; $699e: $80
	rst  $38                                         ; $699f: $ff
	ld   a, [bc]                                     ; $69a0: $0a

jr_095_69a1:
	jp   nz, $02fe                                   ; $69a1: $c2 $fe $02

jr_095_69a4:
	cp   $bf                                         ; $69a4: $fe $bf
	rst  $38                                         ; $69a6: $ff
	pop  af                                          ; $69a7: $f1
	rst  $38                                         ; $69a8: $ff
	add  $f9                                         ; $69a9: $c6 $f9
	or   c                                           ; $69ab: $b1
	add  l                                           ; $69ac: $85
	nop                                              ; $69ad: $00
	add  b                                           ; $69ae: $80
	ld   bc, $8380                                   ; $69af: $01 $80 $83
	add  b                                           ; $69b2: $80
	rst  $38                                         ; $69b3: $ff
	inc  b                                           ; $69b4: $04
	cp   $ff                                         ; $69b5: $fe $ff
	pop  hl                                          ; $69b7: $e1
	or   $e6                                         ; $69b8: $f6 $e6
	add  b                                           ; $69ba: $80
	db   $fd                                         ; $69bb: $fd
	add  e                                           ; $69bc: $83
	ld   hl, sp+$02                                  ; $69bd: $f8 $02
	ret  z                                           ; $69bf: $c8

	ldh  a, [$30]                                    ; $69c0: $f0 $30
	add  b                                           ; $69c2: $80
	ret  nc                                          ; $69c3: $d0

	ld   de, $8e50                                   ; $69c4: $11 $50 $8e
	nop                                              ; $69c7: $00
	inc  sp                                          ; $69c8: $33

Jump_095_69c9:
	ld   bc, $039e                                   ; $69c9: $01 $9e $03
	ret                                              ; $69cc: $c9


	inc  bc                                          ; $69cd: $03
	ld   h, e                                        ; $69ce: $63
	inc  bc                                          ; $69cf: $03
	inc  sp                                          ; $69d0: $33
	ld   bc, $0119                                   ; $69d1: $01 $19 $01
	add  hl, bc                                      ; $69d4: $09
	ld   bc, $80fa                                   ; $69d5: $01 $fa $80
	rlca                                             ; $69d8: $07
	dec  c                                           ; $69d9: $0d
	rst  $30                                         ; $69da: $f7
	push af                                          ; $69db: $f5
	add  a                                           ; $69dc: $87
	add  [hl]                                        ; $69dd: $86
	rst  $30                                         ; $69de: $f7
	scf                                              ; $69df: $37
	di                                               ; $69e0: $f3
	db   $d3                                         ; $69e1: $d3
	ei                                               ; $69e2: $fb
	db   $eb                                         ; $69e3: $eb
	ld   sp, hl                                      ; $69e4: $f9
	ld   a, c                                        ; $69e5: $79
	cp   l                                           ; $69e6: $bd
	ld   [hl-], a                                    ; $69e7: $32
	add  a                                           ; $69e8: $87
	rst  $38                                         ; $69e9: $ff
	ld   b, $7f                                      ; $69ea: $06 $7f
	rst  $38                                         ; $69ec: $ff
	cp   a                                           ; $69ed: $bf
	rst  $38                                         ; $69ee: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $69ef: $cf
	rst  $38                                         ; $69f0: $ff
	ld   c, $80                                      ; $69f1: $0e $80
	cp   $01                                         ; $69f3: $fe $01
	rst  $38                                         ; $69f5: $ff
	cp   $87                                         ; $69f6: $fe $87
	rst  $38                                         ; $69f8: $ff
	db   $10                                         ; $69f9: $10
	cp   $ff                                         ; $69fa: $fe $ff
	inc  b                                           ; $69fc: $04
	rrca                                             ; $69fd: $0f
	ld   bc, $021e                                   ; $69fe: $01 $1e $02
	db   $fc                                         ; $6a01: $fc
	inc  b                                           ; $6a02: $04
	ld   hl, sp-$38                                  ; $6a03: $f8 $c8
	ldh  a, [$90]                                    ; $6a05: $f0 $90
	ldh  [rAUD4LEN], a                               ; $6a07: $e0 $20
	ret  nz                                          ; $6a09: $c0

	ld   b, b                                        ; $6a0a: $40
	add  b                                           ; $6a0b: $80
	add  b                                           ; $6a0c: $80
	adc  d                                           ; $6a0d: $8a
	nop                                              ; $6a0e: $00
	add  b                                           ; $6a0f: $80
	ld   c, $01                                      ; $6a10: $0e $01
	ccf                                              ; $6a12: $3f
	rrca                                             ; $6a13: $0f
	add  b                                           ; $6a14: $80
	ld   b, b                                        ; $6a15: $40
	inc  bc                                          ; $6a16: $03
	nop                                              ; $6a17: $00
	inc  b                                           ; $6a18: $04
	jr   nz, jr_095_6a1c                             ; $6a19: $20 $01

	add  c                                           ; $6a1b: $81

jr_095_6a1c:
	jr   nz, jr_095_6a23                             ; $6a1c: $20 $05

	dec  hl                                          ; $6a1e: $2b
	nop                                              ; $6a1f: $00
	add  hl, bc                                      ; $6a20: $09
	nop                                              ; $6a21: $00
	inc  b                                           ; $6a22: $04

jr_095_6a23:
	nop                                              ; $6a23: $00
	ld   l, [hl]                                     ; $6a24: $6e
	ld   [bc], a                                     ; $6a25: $02
	add  [hl]                                        ; $6a26: $86
	nop                                              ; $6a27: $00
	ld   bc, $639c                                   ; $6a28: $01 $9c $63
	add  b                                           ; $6a2b: $80
	rst  ToBoot                                         ; $6a2c: $c7
	add  b                                           ; $6a2d: $80
	sbc  a                                           ; $6a2e: $9f
	add  b                                           ; $6a2f: $80
	ld   a, h                                        ; $6a30: $7c
	nop                                              ; $6a31: $00
	rst  $38                                         ; $6a32: $ff
	add  l                                           ; $6a33: $85
	nop                                              ; $6a34: $00
	ld   bc, $f807                                   ; $6a35: $01 $07 $f8
	add  b                                           ; $6a38: $80
	ldh  [$80], a                                    ; $6a39: $e0 $80
	inc  b                                           ; $6a3b: $04

jr_095_6a3c:
	add  b                                           ; $6a3c: $80
	inc  de                                          ; $6a3d: $13
	nop                                              ; $6a3e: $00
	rst  $38                                         ; $6a3f: $ff
	add  l                                           ; $6a40: $85
	nop                                              ; $6a41: $00
	ld   bc, $39c6                                   ; $6a42: $01 $c6 $39
	add  b                                           ; $6a45: $80
	cp   $80                                         ; $6a46: $fe $80
	ld   a, a                                        ; $6a48: $7f
	add  b                                           ; $6a49: $80
	sbc  a                                           ; $6a4a: $9f
	nop                                              ; $6a4b: $00
	rst  $38                                         ; $6a4c: $ff
	add  l                                           ; $6a4d: $85
	nop                                              ; $6a4e: $00
	ld   bc, $8976                                   ; $6a4f: $01 $76 $89
	add  b                                           ; $6a52: $80
	ld   h, [hl]                                     ; $6a53: $66
	add  b                                           ; $6a54: $80
	xor  c                                           ; $6a55: $a9
	add  b                                           ; $6a56: $80
	xor  [hl]                                        ; $6a57: $ae
	nop                                              ; $6a58: $00
	rst  $38                                         ; $6a59: $ff
	add  [hl]                                        ; $6a5a: $86
	nop                                              ; $6a5b: $00
	nop                                              ; $6a5c: $00
	rst  $38                                         ; $6a5d: $ff
	add  b                                           ; $6a5e: $80
	nop                                              ; $6a5f: $00
	add  b                                           ; $6a60: $80
	sbc  a                                           ; $6a61: $9f
	add  b                                           ; $6a62: $80
	cpl                                              ; $6a63: $2f
	nop                                              ; $6a64: $00
	rst  $38                                         ; $6a65: $ff
	add  l                                           ; $6a66: $85
	nop                                              ; $6a67: $00
	ld   bc, $de21                                   ; $6a68: $01 $21 $de
	add  b                                           ; $6a6b: $80
	db   $dd                                         ; $6a6c: $dd
	add  b                                           ; $6a6d: $80
	dec  de                                          ; $6a6e: $1b
	ld   [bc], a                                     ; $6a6f: $02
	db   $ec                                         ; $6a70: $ec
	db   $e4                                         ; $6a71: $e4
	rst  $30                                         ; $6a72: $f7
	add  l                                           ; $6a73: $85
	nop                                              ; $6a74: $00
	ld   bc, $f30c                                   ; $6a75: $01 $0c $f3
	add  b                                           ; $6a78: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a79: $cf
	add  b                                           ; $6a7a: $80
	inc  a                                           ; $6a7b: $3c
	add  b                                           ; $6a7c: $80
	jp   $ff00                                       ; $6a7d: $c3 $00 $ff


	add  l                                           ; $6a80: $85
	nop                                              ; $6a81: $00
	ld   bc, $fe01                                   ; $6a82: $01 $01 $fe
	add  b                                           ; $6a85: $80
	ldh  [$80], a                                    ; $6a86: $e0 $80
	ld   de, $cf80                                   ; $6a88: $11 $80 $cf
	nop                                              ; $6a8b: $00
	rst  $38                                         ; $6a8c: $ff
	add  l                                           ; $6a8d: $85
	nop                                              ; $6a8e: $00
	ld   bc, $0ff0                                   ; $6a8f: $01 $f0 $0f
	add  b                                           ; $6a92: $80
	rlca                                             ; $6a93: $07
	add  b                                           ; $6a94: $80
	db   $f4                                         ; $6a95: $f4
	ld   [bc], a                                     ; $6a96: $02
	di                                               ; $6a97: $f3
	ld   [hl], e                                     ; $6a98: $73
	ld   a, a                                        ; $6a99: $7f
	add  l                                           ; $6a9a: $85
	nop                                              ; $6a9b: $00
	ld   bc, $c738                                   ; $6a9c: $01 $38 $c7
	add  b                                           ; $6a9f: $80
	cpl                                              ; $6aa0: $2f
	add  b                                           ; $6aa1: $80
	rst  JumpTable                                         ; $6aa2: $df
	add  b                                           ; $6aa3: $80
	cp   h                                           ; $6aa4: $bc
	nop                                              ; $6aa5: $00
	rst  $38                                         ; $6aa6: $ff
	add  l                                           ; $6aa7: $85
	nop                                              ; $6aa8: $00
	ld   bc, $d12e                                   ; $6aa9: $01 $2e $d1
	add  b                                           ; $6aac: $80
	pop  af                                          ; $6aad: $f1
	add  b                                           ; $6aae: $80
	sub  c                                           ; $6aaf: $91
	add  b                                           ; $6ab0: $80
	ld   [hl], c                                     ; $6ab1: $71
	nop                                              ; $6ab2: $00
	rst  $38                                         ; $6ab3: $ff
	add  l                                           ; $6ab4: $85
	nop                                              ; $6ab5: $00
	ld   bc, $07f8                                   ; $6ab6: $01 $f8 $07
	add  b                                           ; $6ab9: $80
	jr   jr_095_6a3c                                 ; $6aba: $18 $80

	rrca                                             ; $6abc: $0f
	add  b                                           ; $6abd: $80
	inc  de                                          ; $6abe: $13
	add  b                                           ; $6abf: $80
	ldh  [rTIMA], a                                  ; $6ac0: $e0 $05
	add  e                                           ; $6ac2: $83
	add  b                                           ; $6ac3: $80
	inc  c                                           ; $6ac4: $0c
	nop                                              ; $6ac5: $00
	jr   nc, jr_095_6ac8                             ; $6ac6: $30 $00

jr_095_6ac8:
	add  b                                           ; $6ac8: $80
	jr   nc, jr_095_6ad3                             ; $6ac9: $30 $08

	ccf                                              ; $6acb: $3f
	rrca                                             ; $6acc: $0f
	ld   c, $07                                      ; $6acd: $0e $07
	ld   b, $1a                                      ; $6acf: $06 $1a
	and  $0c                                         ; $6ad1: $e6 $0c

jr_095_6ad3:
	rrca                                             ; $6ad3: $0f
	add  b                                           ; $6ad4: $80
	inc  bc                                          ; $6ad5: $03
	add  l                                           ; $6ad6: $85
	nop                                              ; $6ad7: $00
	add  b                                           ; $6ad8: $80
	ldh  [$03], a                                    ; $6ad9: $e0 $03
	call c, $f83c                                    ; $6adb: $dc $3c $f8
	rst  $20                                         ; $6ade: $e7
	add  b                                           ; $6adf: $80
	jr   @+$06                                       ; $6ae0: $18 $04

	rst  $20                                         ; $6ae2: $e7
	ld   h, a                                        ; $6ae3: $67
	ld   a, b                                        ; $6ae4: $78
	jr   jr_095_6b06                                 ; $6ae5: $18 $1f

	add  b                                           ; $6ae7: $80
	inc  bc                                          ; $6ae8: $03
	nop                                              ; $6ae9: $00
	nop                                              ; $6aea: $00
	add  b                                           ; $6aeb: $80
	ld   bc, $0e80                                   ; $6aec: $01 $80 $0e
	ld   bc, $a956                                   ; $6aef: $01 $56 $a9
	add  b                                           ; $6af2: $80
	xor  d                                           ; $6af3: $aa
	add  b                                           ; $6af4: $80
	dec  hl                                          ; $6af5: $2b

jr_095_6af6:
	add  b                                           ; $6af6: $80
	db   $eb                                         ; $6af7: $eb
	add  b                                           ; $6af8: $80
	ld   [$e607], sp                                 ; $6af9: $08 $07 $e6
	ld   h, [hl]                                     ; $6afc: $66
	ld   hl, sp-$68                                  ; $6afd: $f8 $98
	cp   $e2                                         ; $6aff: $fe $e2
	adc  h                                           ; $6b01: $8c
	ld   [hl], b                                     ; $6b02: $70
	add  b                                           ; $6b03: $80
	ld   a, a                                        ; $6b04: $7f
	rlca                                             ; $6b05: $07

jr_095_6b06:
	ld   a, [hl]                                     ; $6b06: $7e
	ld   l, [hl]                                     ; $6b07: $6e
	ld   l, h                                        ; $6b08: $6c
	ld   c, h                                        ; $6b09: $4c
	jp   $efd3                                       ; $6b0a: $c3 $d3 $ef


	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b0d: $cf
	add  b                                           ; $6b0e: $80
	cp   a                                           ; $6b0f: $bf
	add  b                                           ; $6b10: $80
	ld   a, a                                        ; $6b11: $7f
	add  b                                           ; $6b12: $80
	ldh  a, [$80]                                    ; $6b13: $f0 $80
	inc  bc                                          ; $6b15: $03
	add  b                                           ; $6b16: $80
	db   $fd                                         ; $6b17: $fd
	add  b                                           ; $6b18: $80
	ld   c, $80                                      ; $6b19: $0e $80
	di                                               ; $6b1b: $f3
	add  b                                           ; $6b1c: $80
	db   $fd                                         ; $6b1d: $fd
	add  b                                           ; $6b1e: $80
	cp   $80                                         ; $6b1f: $fe $80
	rst  $38                                         ; $6b21: $ff
	add  b                                           ; $6b22: $80
	dec  sp                                          ; $6b23: $3b
	add  b                                           ; $6b24: $80
	ret  nz                                          ; $6b25: $c0

	add  b                                           ; $6b26: $80
	ccf                                              ; $6b27: $3f
	add  b                                           ; $6b28: $80
	adc  a                                           ; $6b29: $8f

jr_095_6b2a:
	add  b                                           ; $6b2a: $80
	rlca                                             ; $6b2b: $07
	add  b                                           ; $6b2c: $80
	ccf                                              ; $6b2d: $3f
	add  d                                           ; $6b2e: $82
	rst  $38                                         ; $6b2f: $ff
	add  b                                           ; $6b30: $80
	cp   a                                           ; $6b31: $bf
	add  b                                           ; $6b32: $80
	ld   a, a                                        ; $6b33: $7f
	add  b                                           ; $6b34: $80
	sbc  a                                           ; $6b35: $9f
	add  b                                           ; $6b36: $80
	rst  $20                                         ; $6b37: $e7
	add  b                                           ; $6b38: $80
	ei                                               ; $6b39: $fb
	add  b                                           ; $6b3a: $80
	db   $fd                                         ; $6b3b: $fd
	add  b                                           ; $6b3c: $80
	cp   $80                                         ; $6b3d: $fe $80
	rst  $38                                         ; $6b3f: $ff
	ld   bc, $b7f7                                   ; $6b40: $01 $f7 $b7
	add  b                                           ; $6b43: $80
	or   [hl]                                        ; $6b44: $b6
	inc  b                                           ; $6b45: $04
	cp   b                                           ; $6b46: $b8
	jr   jr_095_6b62                                 ; $6b47: $18 $19

	ret                                              ; $6b49: $c9


	call $ed82                                       ; $6b4a: $cd $82 $ed
	inc  b                                           ; $6b4d: $04
	db   $dd                                         ; $6b4e: $dd
	ld   e, b                                        ; $6b4f: $58
	jr   c, jr_095_6b79                              ; $6b50: $38 $27

	ld   h, a                                        ; $6b52: $67
	add  b                                           ; $6b53: $80
	rra                                              ; $6b54: $1f
	add  b                                           ; $6b55: $80
	db   $fc                                         ; $6b56: $fc
	add  b                                           ; $6b57: $80
	ei                                               ; $6b58: $fb
	add  b                                           ; $6b59: $80
	rst  $20                                         ; $6b5a: $e7
	add  b                                           ; $6b5b: $80
	sbc  [hl]                                        ; $6b5c: $9e
	add  b                                           ; $6b5d: $80
	ld   a, b                                        ; $6b5e: $78
	add  b                                           ; $6b5f: $80
	push hl                                          ; $6b60: $e5
	add  b                                           ; $6b61: $80

jr_095_6b62:
	sub  c                                           ; $6b62: $91
	add  b                                           ; $6b63: $80
	ld   [hl], c                                     ; $6b64: $71
	add  d                                           ; $6b65: $82
	pop  de                                          ; $6b66: $d1
	add  b                                           ; $6b67: $80
	sub  c                                           ; $6b68: $91
	add  b                                           ; $6b69: $80
	ld   sp, $f180                                   ; $6b6a: $31 $80 $f1
	add  b                                           ; $6b6d: $80
	pop  de                                          ; $6b6e: $d1
	add  b                                           ; $6b6f: $80
	inc  c                                           ; $6b70: $0c
	add  b                                           ; $6b71: $80
	rlca                                             ; $6b72: $07
	add  b                                           ; $6b73: $80
	jr   jr_095_6af6                                 ; $6b74: $18 $80

	rra                                              ; $6b76: $1f
	add  b                                           ; $6b77: $80
	rrca                                             ; $6b78: $0f

jr_095_6b79:
	add  b                                           ; $6b79: $80
	inc  de                                          ; $6b7a: $13
	add  b                                           ; $6b7b: $80
	db   $10                                         ; $6b7c: $10
	add  b                                           ; $6b7d: $80
	inc  de                                          ; $6b7e: $13
	inc  bc                                          ; $6b7f: $03
	jr   nz, jr_095_6b84                             ; $6b80: $20 $02

	jr   nz, jr_095_6b84                             ; $6b82: $20 $00

jr_095_6b84:
	add  b                                           ; $6b84: $80
	ld   [bc], a                                     ; $6b85: $02
	ld   b, $20                                      ; $6b86: $06 $20
	nop                                              ; $6b88: $00
	dec  e                                           ; $6b89: $1d
	jr   nz, jr_095_6ba8                             ; $6b8a: $20 $1c

	ld   [bc], a                                     ; $6b8c: $02
	ld   bc, $0082                                   ; $6b8d: $01 $82 $00
	add  b                                           ; $6b90: $80
	inc  bc                                          ; $6b91: $03
	add  b                                           ; $6b92: $80
	ld   b, $80                                      ; $6b93: $06 $80
	ld   a, [hl-]                                    ; $6b95: $3a
	add  b                                           ; $6b96: $80
	jp   nz, $020b                                   ; $6b97: $c2 $0b $02

	ldh  [c], a                                      ; $6b9a: $e2
	inc  bc                                          ; $6b9b: $03
	jp   $1c3e                                       ; $6b9c: $c3 $3e $1c


	inc  bc                                          ; $6b9f: $03
	ld   c, l                                        ; $6ba0: $4d
	or   e                                           ; $6ba1: $b3
	ld   a, h                                        ; $6ba2: $7c
	db   $fc                                         ; $6ba3: $fc
	ld   a, a                                        ; $6ba4: $7f
	add  b                                           ; $6ba5: $80
	rrca                                             ; $6ba6: $0f
	add  b                                           ; $6ba7: $80

jr_095_6ba8:
	jr   jr_095_6b2a                                 ; $6ba8: $18 $80

	ld   l, b                                        ; $6baa: $68
	add  b                                           ; $6bab: $80
	adc  b                                           ; $6bac: $88
	add  b                                           ; $6bad: $80
	dec  bc                                          ; $6bae: $0b
	rlca                                             ; $6baf: $07
	db   $ec                                         ; $6bb0: $ec
	inc  d                                           ; $6bb1: $14
	ld   b, $1b                                      ; $6bb2: $06 $1b
	jr   jr_095_6c1c                                 ; $6bb4: $18 $66

	ld   h, c                                        ; $6bb6: $61
	db   $fd                                         ; $6bb7: $fd
	add  b                                           ; $6bb8: $80
	pop  af                                          ; $6bb9: $f1
	rlca                                             ; $6bba: $07
	ld   [hl-], a                                    ; $6bbb: $32
	ld   a, [hl-]                                    ; $6bbc: $3a
	ret  nz                                          ; $6bbd: $c0

	call nz, $1101                                   ; $6bbe: $c4 $01 $11
	ld   [$81ec], sp                                 ; $6bc1: $08 $ec $81
	rst  $38                                         ; $6bc4: $ff
	inc  bc                                          ; $6bc5: $03

jr_095_6bc6:
	rst  $30                                         ; $6bc6: $f7
	or   a                                           ; $6bc7: $b7

jr_095_6bc8:
	xor  a                                           ; $6bc8: $af
	ld   l, a                                        ; $6bc9: $6f
	add  b                                           ; $6bca: $80
	ld   e, l                                        ; $6bcb: $5d
	ld   b, $33                                      ; $6bcc: $06 $33
	sub  d                                           ; $6bce: $92
	add  [hl]                                        ; $6bcf: $86
	add  l                                           ; $6bd0: $85
	ld   c, l                                        ; $6bd1: $4d
	add  hl, hl                                      ; $6bd2: $29
	cp   c                                           ; $6bd3: $b9
	add  a                                           ; $6bd4: $87
	rst  $38                                         ; $6bd5: $ff
	add  b                                           ; $6bd6: $80
	db   $fd                                         ; $6bd7: $fd
	inc  b                                           ; $6bd8: $04
	ei                                               ; $6bd9: $fb
	db   $db                                         ; $6bda: $db
	db   $d3                                         ; $6bdb: $d3
	inc  sp                                          ; $6bdc: $33
	ccf                                              ; $6bdd: $3f
	add  [hl]                                        ; $6bde: $86
	rst  $38                                         ; $6bdf: $ff
	add  d                                           ; $6be0: $82
	rst  JumpTable                                         ; $6be1: $df
	add  b                                           ; $6be2: $80
	db   $ed                                         ; $6be3: $ed
	add  b                                           ; $6be4: $80
	and  $00                                         ; $6be5: $e6 $00
	rst  $38                                         ; $6be7: $ff
	add  b                                           ; $6be8: $80
	ei                                               ; $6be9: $fb
	add  b                                           ; $6bea: $80
	db   $fd                                         ; $6beb: $fd
	add  b                                           ; $6bec: $80
	cp   $81                                         ; $6bed: $fe $81
	rst  $38                                         ; $6bef: $ff
	add  b                                           ; $6bf0: $80
	cp   e                                           ; $6bf1: $bb
	add  b                                           ; $6bf2: $80
	call $e002                                       ; $6bf3: $cd $02 $e0
	and  h                                           ; $6bf6: $a4
	cp   e                                           ; $6bf7: $bb
	add  b                                           ; $6bf8: $80
	ret  nc                                          ; $6bf9: $d0

	add  b                                           ; $6bfa: $80
	sub  $80                                         ; $6bfb: $d6 $80
	rst  $20                                         ; $6bfd: $e7
	add  b                                           ; $6bfe: $80
	ld   l, a                                        ; $6bff: $6f
	add  d                                           ; $6c00: $82
	or   a                                           ; $6c01: $b7
	add  b                                           ; $6c02: $80
	db   $db                                         ; $6c03: $db
	add  b                                           ; $6c04: $80
	dec  de                                          ; $6c05: $1b
	add  b                                           ; $6c06: $80
	or   $80                                         ; $6c07: $f6 $80
	ld   l, b                                        ; $6c09: $68
	ld   b, $96                                      ; $6c0a: $06 $96
	ld   d, $65                                      ; $6c0c: $16 $65
	add  l                                           ; $6c0e: $85
	sbc  e                                           ; $6c0f: $9b
	db   $e3                                         ; $6c10: $e3
	push hl                                          ; $6c11: $e5
	add  b                                           ; $6c12: $80
	ld   sp, hl                                      ; $6c13: $f9
	nop                                              ; $6c14: $00
	db   $fd                                         ; $6c15: $fd
	add  b                                           ; $6c16: $80
	or   c                                           ; $6c17: $b1
	add  b                                           ; $6c18: $80
	ld   sp, $5182                                   ; $6c19: $31 $82 $51

jr_095_6c1c:
	add  [hl]                                        ; $6c1c: $86
	ld   [hl], c                                     ; $6c1d: $71
	add  b                                           ; $6c1e: $80
	dec  d                                           ; $6c1f: $15
	add  b                                           ; $6c20: $80
	ld   d, $82                                      ; $6c21: $16 $82
	rla                                              ; $6c23: $17
	add  b                                           ; $6c24: $80
	ld   b, $80                                      ; $6c25: $06 $80
	dec  b                                           ; $6c27: $05
	add  b                                           ; $6c28: $80
	dec  d                                           ; $6c29: $15
	add  b                                           ; $6c2a: $80
	inc  de                                          ; $6c2b: $13
	add  h                                           ; $6c2c: $84
	nop                                              ; $6c2d: $00
	add  b                                           ; $6c2e: $80
	rra                                              ; $6c2f: $1f
	add  b                                           ; $6c30: $80
	inc  de                                          ; $6c31: $13
	add  b                                           ; $6c32: $80
	dec  d                                           ; $6c33: $15
	nop                                              ; $6c34: $00
	ccf                                              ; $6c35: $3f
	add  b                                           ; $6c36: $80
	rra                                              ; $6c37: $1f
	ld   [bc], a                                     ; $6c38: $02
	add  hl, de                                      ; $6c39: $19
	ld   h, $18                                      ; $6c3a: $26 $18
	add  b                                           ; $6c3c: $80
	nop                                              ; $6c3d: $00
	ld   bc, $0018                                   ; $6c3e: $01 $18 $00
	add  b                                           ; $6c41: $80
	rst  $38                                         ; $6c42: $ff
	add  b                                           ; $6c43: $80
	jr   jr_095_6bc6                                 ; $6c44: $18 $80

	jr   z, jr_095_6bc8                              ; $6c46: $28 $80

	ret  z                                           ; $6c48: $c8

	rlca                                             ; $6c49: $07
	rst  $38                                         ; $6c4a: $ff
	cp   a                                           ; $6c4b: $bf
	ld   h, b                                        ; $6c4c: $60
	ld   a, $1c                                      ; $6c4d: $3e $1c
	inc  bc                                          ; $6c4f: $03
	ld   bc, $800c                                   ; $6c50: $01 $0c $80
	di                                               ; $6c53: $f3
	ld   bc, $ccc0                                   ; $6c54: $01 $c0 $cc
	add  b                                           ; $6c57: $80
	xor  d                                           ; $6c58: $aa
	add  b                                           ; $6c59: $80
	sbc  c                                           ; $6c5a: $99
	add  b                                           ; $6c5b: $80
	adc  c                                           ; $6c5c: $89
	nop                                              ; $6c5d: $00
	rla                                              ; $6c5e: $17
	add  b                                           ; $6c5f: $80
	nop                                              ; $6c60: $00
	inc  b                                           ; $6c61: $04
	db   $d3                                         ; $6c62: $d3
	ld   [$aa2a], a                                  ; $6c63: $ea $2a $aa
	and  [hl]                                        ; $6c66: $a6
	add  c                                           ; $6c67: $81
	inc  b                                           ; $6c68: $04
	nop                                              ; $6c69: $00
	inc  c                                           ; $6c6a: $0c
	add  d                                           ; $6c6b: $82
	inc  b                                           ; $6c6c: $04
	ld   [bc], a                                     ; $6c6d: $02
	ld   l, a                                        ; $6c6e: $6f
	nop                                              ; $6c6f: $00
	and  b                                           ; $6c70: $a0
	add  b                                           ; $6c71: $80
	ld   [bc], a                                     ; $6c72: $02
	ld   bc, $1646                                   ; $6c73: $01 $46 $16
	add  b                                           ; $6c76: $80
	inc  b                                           ; $6c77: $04
	nop                                              ; $6c78: $00
	adc  l                                           ; $6c79: $8d
	add  c                                           ; $6c7a: $81
	inc  c                                           ; $6c7b: $0c
	nop                                              ; $6c7c: $00
	ld   e, $80                                      ; $6c7d: $1e $80
	sbc  [hl]                                        ; $6c7f: $9e
	ld   bc, $66e6                                   ; $6c80: $01 $e6 $66
	add  b                                           ; $6c83: $80
	ld   b, [hl]                                     ; $6c84: $46
	ld   [bc], a                                     ; $6c85: $02
	ld   b, $a6                                      ; $6c86: $06 $a6
	ld   h, $81                                      ; $6c88: $26 $81
	ld   d, [hl]                                     ; $6c8a: $56
	ld   [bc], a                                     ; $6c8b: $02
	ld   d, d                                        ; $6c8c: $52
	ld   e, d                                        ; $6c8d: $5a
	ld   c, d                                        ; $6c8e: $4a
	add  c                                           ; $6c8f: $81
	xor  d                                           ; $6c90: $aa
	nop                                              ; $6c91: $00
	ld   b, a                                        ; $6c92: $47
	add  c                                           ; $6c93: $81
	ldh  a, [rTAC]                                   ; $6c94: $f0 $07
	ret  nc                                          ; $6c96: $d0

	reti                                             ; $6c97: $d9


	ld   e, c                                        ; $6c98: $59
	ld   e, h                                        ; $6c99: $5c
	ld   l, h                                        ; $6c9a: $6c
	ld   l, [hl]                                     ; $6c9b: $6e
	ld   l, $2f                                      ; $6c9c: $2e $2f
	add  b                                           ; $6c9e: $80
	dec  l                                           ; $6c9f: $2d
	add  hl, bc                                      ; $6ca0: $09
	ld   d, $96                                      ; $6ca1: $16 $96
	ld   e, a                                        ; $6ca3: $5f
	ld   d, [hl]                                     ; $6ca4: $56
	ld   b, [hl]                                     ; $6ca5: $46
	adc  e                                           ; $6ca6: $8b
	and  d                                           ; $6ca7: $a2
	call nz, $f3d1                                   ; $6ca8: $c4 $d1 $f3
	add  b                                           ; $6cab: $80
	sub  e                                           ; $6cac: $93
	inc  bc                                          ; $6cad: $03
	ret                                              ; $6cae: $c9


	ld   c, c                                        ; $6caf: $49
	ld   l, c                                        ; $6cb0: $69
	jp   hl                                          ; $6cb1: $e9


	add  b                                           ; $6cb2: $80
	push hl                                          ; $6cb3: $e5
	add  b                                           ; $6cb4: $80
	db   $db                                         ; $6cb5: $db
	inc  bc                                          ; $6cb6: $03
	add  sp, $68                                     ; $6cb7: $e8 $68
	ld   l, e                                        ; $6cb9: $6b
	db   $eb                                         ; $6cba: $eb
	add  b                                           ; $6cbb: $80
	ld   l, e                                        ; $6cbc: $6b
	add  b                                           ; $6cbd: $80
	ld   [hl], l                                     ; $6cbe: $75
	add  d                                           ; $6cbf: $82
	or   l                                           ; $6cc0: $b5
	add  b                                           ; $6cc1: $80
	push bc                                          ; $6cc2: $c5
	add  b                                           ; $6cc3: $80
	ei                                               ; $6cc4: $fb
	add  b                                           ; $6cc5: $80
	ldh  a, [$80]                                    ; $6cc6: $f0 $80
	daa                                              ; $6cc8: $27
	add  b                                           ; $6cc9: $80
	rst  ToBoot                                         ; $6cca: $c7
	add  b                                           ; $6ccb: $80
	ldh  a, [c]                                      ; $6ccc: $f2
	add  b                                           ; $6ccd: $80
	db   $fc                                         ; $6cce: $fc
	dec  b                                           ; $6ccf: $05
	cp   $1e                                         ; $6cd0: $fe $1e
	inc  e                                           ; $6cd2: $1c
	inc  c                                           ; $6cd3: $0c
	sub  c                                           ; $6cd4: $91
	ld   [hl], c                                     ; $6cd5: $71
	add  b                                           ; $6cd6: $80
	ld   de, $9180                                   ; $6cd7: $11 $80 $91
	ld   bc, $5554                                   ; $6cda: $01 $54 $55
	add  d                                           ; $6cdd: $82
	rst  $10                                         ; $6cde: $d7
	add  b                                           ; $6cdf: $80
	rla                                              ; $6ce0: $17
	inc  bc                                          ; $6ce1: $03
	db   $d3                                         ; $6ce2: $d3
	rst  $10                                         ; $6ce3: $d7
	dec  d                                           ; $6ce4: $15
	nop                                              ; $6ce5: $00
	add  b                                           ; $6ce6: $80
	rla                                              ; $6ce7: $17
	add  b                                           ; $6ce8: $80
	dec  de                                          ; $6ce9: $1b
	add  b                                           ; $6cea: $80
	dec  e                                           ; $6ceb: $1d
	add  b                                           ; $6cec: $80
	ld   c, $80                                      ; $6ced: $0e $80
	db   $10                                         ; $6cef: $10
	add  d                                           ; $6cf0: $82
	rra                                              ; $6cf1: $1f
	ld   b, $24                                      ; $6cf2: $06 $24
	sub  b                                           ; $6cf4: $90
	sub  a                                           ; $6cf5: $97
	sub  b                                           ; $6cf6: $90
	or   d                                           ; $6cf7: $b2
	sub  d                                           ; $6cf8: $92
	sub  e                                           ; $6cf9: $93
	add  c                                           ; $6cfa: $81
	sub  b                                           ; $6cfb: $90
	add  b                                           ; $6cfc: $80
	or   a                                           ; $6cfd: $b7
	add  b                                           ; $6cfe: $80
	sub  b                                           ; $6cff: $90
	add  b                                           ; $6d00: $80
	or   a                                           ; $6d01: $b7
	nop                                              ; $6d02: $00
	ld   l, d                                        ; $6d03: $6a
	add  e                                           ; $6d04: $83
	dec  b                                           ; $6d05: $05
	inc  bc                                          ; $6d06: $03
	db   $fd                                         ; $6d07: $fd
	inc  bc                                          ; $6d08: $03
	ld   bc, $8000                                   ; $6d09: $01 $00 $80
	ldh  [$80], a                                    ; $6d0c: $e0 $80

jr_095_6d0e:
	rra                                              ; $6d0e: $1f
	add  b                                           ; $6d0f: $80
	ldh  [$03], a                                    ; $6d10: $e0 $03
	add  b                                           ; $6d12: $80
	ld   a, [hl]                                     ; $6d13: $7e
	ld   a, [bc]                                     ; $6d14: $0a
	dec  bc                                          ; $6d15: $0b
	add  d                                           ; $6d16: $82
	ld   a, [bc]                                     ; $6d17: $0a
	ld   bc, $03fc                                   ; $6d18: $01 $fc $03
	add  b                                           ; $6d1b: $80
	nop                                              ; $6d1c: $00
	add  b                                           ; $6d1d: $80
	ldh  a, [$80]                                    ; $6d1e: $f0 $80
	rlca                                             ; $6d20: $07
	ld   bc, $8404                                   ; $6d21: $01 $04 $84
	add  b                                           ; $6d24: $80
	add  b                                           ; $6d25: $80
	nop                                              ; $6d26: $00
	db   $10                                         ; $6d27: $10
	add  c                                           ; $6d28: $81
	ld   b, b                                        ; $6d29: $40
	dec  b                                           ; $6d2a: $05
	ld   b, d                                        ; $6d2b: $42
	ld   b, b                                        ; $6d2c: $40
	pop  de                                          ; $6d2d: $d1
	ld   b, d                                        ; $6d2e: $42
	ld   b, c                                        ; $6d2f: $41
	ld   b, b                                        ; $6d30: $40
	add  b                                           ; $6d31: $80
	ret  c                                           ; $6d32: $d8

	nop                                              ; $6d33: $00
	ld   a, [$ba81]                                  ; $6d34: $fa $81 $ba
	add  b                                           ; $6d37: $80
	ret  nc                                          ; $6d38: $d0

	dec  bc                                          ; $6d39: $0b
	ld   e, b                                        ; $6d3a: $58
	ld   e, e                                        ; $6d3b: $5b
	inc  hl                                          ; $6d3c: $23
	inc  h                                           ; $6d3d: $24
	dec  b                                           ; $6d3e: $05
	ld   [$480b], sp                                 ; $6d3f: $08 $0b $48
	ld   c, h                                        ; $6d42: $4c
	ld   c, b                                        ; $6d43: $48
	ld   d, [hl]                                     ; $6d44: $56
	and  h                                           ; $6d45: $a4
	add  b                                           ; $6d46: $80
	and  l                                           ; $6d47: $a5
	ld   b, $a0                                      ; $6d48: $06 $a0
	ld   [hl+], a                                    ; $6d4a: $22
	jr   nz, jr_095_6d0e                             ; $6d4b: $20 $c1

	ret  nz                                          ; $6d4d: $c0

	ld   h, b                                        ; $6d4e: $60
	ld   b, b                                        ; $6d4f: $40
	add  b                                           ; $6d50: $80
	nop                                              ; $6d51: $00
	rlca                                             ; $6d52: $07
	jr   nz, jr_095_6d55                             ; $6d53: $20 $00

jr_095_6d55:
	jr   nz, jr_095_6d84                             ; $6d55: $20 $2d

	jp   nc, Jump_095_69c9                           ; $6d57: $d2 $c9 $69

	ld   h, b                                        ; $6d5a: $60
	add  b                                           ; $6d5b: $80
	ld   b, b                                        ; $6d5c: $40
	ld   a, [bc]                                     ; $6d5d: $0a
	add  hl, sp                                      ; $6d5e: $39
	ld   sp, hl                                      ; $6d5f: $f9
	jr   nc, jr_095_6dde                             ; $6d60: $30 $7c

	ld   l, b                                        ; $6d62: $68
	ld   a, h                                        ; $6d63: $7c
	ld   b, b                                        ; $6d64: $40
	jr   nz, jr_095_6d67                             ; $6d65: $20 $00

jr_095_6d67:
	sbc  l                                           ; $6d67: $9d
	ld   h, l                                        ; $6d68: $65
	add  b                                           ; $6d69: $80
	dec  [hl]                                        ; $6d6a: $35
	add  c                                           ; $6d6b: $81
	nop                                              ; $6d6c: $00
	add  b                                           ; $6d6d: $80
	sub  b                                           ; $6d6e: $90
	add  b                                           ; $6d6f: $80
	ld   h, b                                        ; $6d70: $60
	ld   bc, $7430                                   ; $6d71: $01 $30 $74
	add  b                                           ; $6d74: $80
	ld   d, h                                        ; $6d75: $54
	ld   [bc], a                                     ; $6d76: $02
	inc  [hl]                                        ; $6d77: $34
	cp   l                                           ; $6d78: $bd
	call $8b80                                       ; $6d79: $cd $80 $8b
	add  b                                           ; $6d7c: $80
	dec  bc                                          ; $6d7d: $0b
	add  b                                           ; $6d7e: $80
	rla                                              ; $6d7f: $17
	dec  b                                           ; $6d80: $05
	ld   d, a                                        ; $6d81: $57
	sub  a                                           ; $6d82: $97
	rst  $20                                         ; $6d83: $e7

jr_095_6d84:
	ld   b, a                                        ; $6d84: $47
	ld   b, e                                        ; $6d85: $43
	add  e                                           ; $6d86: $83
	add  b                                           ; $6d87: $80
	add  c                                           ; $6d88: $81
	nop                                              ; $6d89: $00
	ld   e, d                                        ; $6d8a: $5a
	add  c                                           ; $6d8b: $81
	add  d                                           ; $6d8c: $82
	ld   bc, $c48d                                   ; $6d8d: $01 $8d $c4
	add  b                                           ; $6d90: $80
	push bc                                          ; $6d91: $c5
	ld   [$ebdb], sp                                 ; $6d92: $08 $db $eb
	db   $e3                                         ; $6d95: $e3
	rst  $20                                         ; $6d96: $e7
	push af                                          ; $6d97: $f5
	rst  $30                                         ; $6d98: $f7
	pop  af                                          ; $6d99: $f1
	rst  $30                                         ; $6d9a: $f7
	rlca                                             ; $6d9b: $07
	add  c                                           ; $6d9c: $81
	rla                                              ; $6d9d: $17
	inc  bc                                          ; $6d9e: $03
	sub  c                                           ; $6d9f: $91
	ld   de, $1777                                   ; $6da0: $11 $77 $17
	add  b                                           ; $6da3: $80
	rst  $10                                         ; $6da4: $d7
	add  h                                           ; $6da5: $84
	rst  $30                                         ; $6da6: $f7
	nop                                              ; $6da7: $00
	xor  $81                                         ; $6da8: $ee $81
	rra                                              ; $6daa: $1f
	add  b                                           ; $6dab: $80
	ld   e, $80                                      ; $6dac: $1e $80
	db   $10                                         ; $6dae: $10
	add  b                                           ; $6daf: $80
	inc  de                                          ; $6db0: $13
	add  b                                           ; $6db1: $80
	db   $10                                         ; $6db2: $10
	dec  b                                           ; $6db3: $05
	inc  de                                          ; $6db4: $13
	inc  bc                                          ; $6db5: $03
	inc  de                                          ; $6db6: $13
	db   $10                                         ; $6db7: $10
	inc  sp                                          ; $6db8: $33
	or   b                                           ; $6db9: $b0
	add  e                                           ; $6dba: $83
	or   d                                           ; $6dbb: $b2
	add  c                                           ; $6dbc: $81
	ld   [hl-], a                                    ; $6dbd: $32
	add  d                                           ; $6dbe: $82
	ld   [hl], $80                                   ; $6dbf: $36 $80
	jr   nc, jr_095_6dc5                             ; $6dc1: $30 $02

	rst  $28                                         ; $6dc3: $ef
	rst  $38                                         ; $6dc4: $ff

jr_095_6dc5:
	db   $ed                                         ; $6dc5: $ed
	add  c                                           ; $6dc6: $81
	pop  de                                          ; $6dc7: $d1
	add  c                                           ; $6dc8: $81
	db   $fd                                         ; $6dc9: $fd
	nop                                              ; $6dca: $00
	pop  bc                                          ; $6dcb: $c1
	add  h                                           ; $6dcc: $84
	rst  $38                                         ; $6dcd: $ff
	add  b                                           ; $6dce: $80
	ld   hl, sp+$00                                  ; $6dcf: $f8 $00
	or   [hl]                                        ; $6dd1: $b6
	add  c                                           ; $6dd2: $81
	ld   b, l                                        ; $6dd3: $45
	add  c                                           ; $6dd4: $81
	rst  $30                                         ; $6dd5: $f7
	nop                                              ; $6dd6: $00
	inc  b                                           ; $6dd7: $04
	add  e                                           ; $6dd8: $83
	rst  $38                                         ; $6dd9: $ff
	inc  bc                                          ; $6dda: $03
	rlca                                             ; $6ddb: $07
	ld   sp, hl                                      ; $6ddc: $f9
	ld   b, c                                        ; $6ddd: $41

jr_095_6dde:
	db   $dd                                         ; $6dde: $dd
	add  c                                           ; $6ddf: $81
	ld   d, l                                        ; $6de0: $55
	add  b                                           ; $6de1: $80
	push de                                          ; $6de2: $d5
	inc  bc                                          ; $6de3: $03
	db   $dd                                         ; $6de4: $dd
	ld   e, l                                        ; $6de5: $5d
	reti                                             ; $6de6: $d9


	pop  de                                          ; $6de7: $d1
	add  d                                           ; $6de8: $82
	db   $dd                                         ; $6de9: $dd
	ld   b, $46                                      ; $6dea: $06 $46
	ld   c, b                                        ; $6dec: $48
	ld   c, h                                        ; $6ded: $4c
	ld   c, b                                        ; $6dee: $48
	ld   e, d                                        ; $6def: $5a
	ld   d, h                                        ; $6df0: $54
	ld   d, a                                        ; $6df1: $57
	add  b                                           ; $6df2: $80
	inc  d                                           ; $6df3: $14
	add  b                                           ; $6df4: $80
	ld   d, h                                        ; $6df5: $54
	add  c                                           ; $6df6: $81
	inc  d                                           ; $6df7: $14
	ld   [bc], a                                     ; $6df8: $02
	inc  e                                           ; $6df9: $1c
	jr   jr_095_6e38                                 ; $6dfa: $18 $3c

	add  d                                           ; $6dfc: $82
	add  b                                           ; $6dfd: $80
	ld   bc, $c000                                   ; $6dfe: $01 $00 $c0
	add  c                                           ; $6e01: $81
	nop                                              ; $6e02: $00
	add  b                                           ; $6e03: $80
	inc  b                                           ; $6e04: $04
	ld   bc, $0e06                                   ; $6e05: $01 $06 $0e
	add  b                                           ; $6e08: $80
	ld   b, $00                                      ; $6e09: $06 $00
	rrca                                             ; $6e0b: $0f
	add  b                                           ; $6e0c: $80
	ld   bc, $0380                                   ; $6e0d: $01 $80 $03
	ld   bc, $0f08                                   ; $6e10: $01 $08 $0f
	add  a                                           ; $6e13: $87
	nop                                              ; $6e14: $00
	ld   [bc], a                                     ; $6e15: $02
	cp   e                                           ; $6e16: $bb
	inc  [hl]                                        ; $6e17: $34
	ld   [hl], h                                     ; $6e18: $74
	add  b                                           ; $6e19: $80
	inc  [hl]                                        ; $6e1a: $34
	ld   [bc], a                                     ; $6e1b: $02
	ld   [hl], h                                     ; $6e1c: $74
	or   h                                           ; $6e1d: $b4
	inc  [hl]                                        ; $6e1e: $34
	add  h                                           ; $6e1f: $84
	ld   [hl], $03                                   ; $6e20: $36 $03
	ld   h, [hl]                                     ; $6e22: $66
	ld   [hl], d                                     ; $6e23: $72
	db   $e4                                         ; $6e24: $e4
	and  b                                           ; $6e25: $a0
	add  b                                           ; $6e26: $80
	and  h                                           ; $6e27: $a4
	ld   b, $e4                                      ; $6e28: $06 $e4
	inc  b                                           ; $6e2a: $04
	add  $46                                         ; $6e2b: $c6 $46
	jp   nz, $8b82                                   ; $6e2d: $c2 $82 $8b

	add  c                                           ; $6e30: $81
	dec  bc                                          ; $6e31: $0b
	add  b                                           ; $6e32: $80
	ld   c, e                                        ; $6e33: $4b
	add  b                                           ; $6e34: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e35: $cf
	add  b                                           ; $6e36: $80
	cp   a                                           ; $6e37: $bf

jr_095_6e38:
	dec  b                                           ; $6e38: $05
	ld   [de], a                                     ; $6e39: $12
	ld   a, [hl+]                                    ; $6e3a: $2a
	ld   c, e                                        ; $6e3b: $4b
	ld   a, d                                        ; $6e3c: $7a
	add  hl, bc                                      ; $6e3d: $09
	ld   a, e                                        ; $6e3e: $7b
	add  b                                           ; $6e3f: $80
	ld   a, [hl-]                                    ; $6e40: $3a
	inc  b                                           ; $6e41: $04
	ld   e, e                                        ; $6e42: $5b
	dec  sp                                          ; $6e43: $3b
	ld   a, [de]                                     ; $6e44: $1a
	ld   a, [hl-]                                    ; $6e45: $3a
	dec  a                                           ; $6e46: $3d
	add  e                                           ; $6e47: $83
	rla                                              ; $6e48: $17
	nop                                              ; $6e49: $00
	rst  $30                                         ; $6e4a: $f7
	add  e                                           ; $6e4b: $83
	rla                                              ; $6e4c: $17
	add  b                                           ; $6e4d: $80
	ld   [hl], a                                     ; $6e4e: $77
	add  b                                           ; $6e4f: $80
	scf                                              ; $6e50: $37
	nop                                              ; $6e51: $00
	push af                                          ; $6e52: $f5
	add  c                                           ; $6e53: $81
	rra                                              ; $6e54: $1f
	rlca                                             ; $6e55: $07
	rrca                                             ; $6e56: $0f
	rra                                              ; $6e57: $1f
	inc  e                                           ; $6e58: $1c
	rra                                              ; $6e59: $1f
	inc  e                                           ; $6e5a: $1c
	rra                                              ; $6e5b: $1f
	inc  e                                           ; $6e5c: $1c
	inc  c                                           ; $6e5d: $0c
	add  b                                           ; $6e5e: $80
	rra                                              ; $6e5f: $1f
	add  b                                           ; $6e60: $80
	ld   c, $00                                      ; $6e61: $0e $00
	add  hl, sp                                      ; $6e63: $39
	add  l                                           ; $6e64: $85
	ld   [hl-], a                                    ; $6e65: $32
	nop                                              ; $6e66: $00
	db   $10                                         ; $6e67: $10
	add  d                                           ; $6e68: $82
	scf                                              ; $6e69: $37
	add  c                                           ; $6e6a: $81
	ccf                                              ; $6e6b: $3f
	nop                                              ; $6e6c: $00
	ret  nz                                          ; $6e6d: $c0

	add  l                                           ; $6e6e: $85
	rst  $38                                         ; $6e6f: $ff
	nop                                              ; $6e70: $00
	nop                                              ; $6e71: $00
	add  l                                           ; $6e72: $85
	rst  $38                                         ; $6e73: $ff
	nop                                              ; $6e74: $00
	nop                                              ; $6e75: $00
	add  l                                           ; $6e76: $85
	rst  $38                                         ; $6e77: $ff
	nop                                              ; $6e78: $00
	nop                                              ; $6e79: $00

jr_095_6e7a:
	add  e                                           ; $6e7a: $83
	rst  $38                                         ; $6e7b: $ff
	add  b                                           ; $6e7c: $80
	db   $fc                                         ; $6e7d: $fc
	nop                                              ; $6e7e: $00
	ld   h, d                                        ; $6e7f: $62
	add  e                                           ; $6e80: $83
	db   $dd                                         ; $6e81: $dd
	ld   [bc], a                                     ; $6e82: $02
	ret  nz                                          ; $6e83: $c0

	rst  JumpTable                                         ; $6e84: $df
	ld   e, a                                        ; $6e85: $5f
	add  e                                           ; $6e86: $83
	rst  JumpTable                                         ; $6e87: $df
	add  b                                           ; $6e88: $80
	ld   b, b                                        ; $6e89: $40
	nop                                              ; $6e8a: $00
	call nz, $1881                                   ; $6e8b: $c4 $81 $18
	ld   [bc], a                                     ; $6e8e: $02
	ld   a, [de]                                     ; $6e8f: $1a
	ld   [$8009], sp                                 ; $6e90: $08 $09 $80

jr_095_6e93:
	ret  z                                           ; $6e93: $c8

	nop                                              ; $6e94: $00
	ret                                              ; $6e95: $c9


	add  b                                           ; $6e96: $80
	call $cc80                                       ; $6e97: $cd $80 $cc
	rlca                                             ; $6e9a: $07
	inc  c                                           ; $6e9b: $0c
	ld   [$002a], sp                                 ; $6e9c: $08 $2a $00
	dec  b                                           ; $6e9f: $05
	ld   bc, $0105                                   ; $6ea0: $01 $05 $01
	add  b                                           ; $6ea3: $80
	nop                                              ; $6ea4: $00
	dec  c                                           ; $6ea5: $0d
	ret  nz                                          ; $6ea6: $c0

	nop                                              ; $6ea7: $00
	jr   nc, jr_095_6e7a                             ; $6ea8: $30 $d0

	inc  a                                           ; $6eaa: $3c
	inc  b                                           ; $6eab: $04
	ld   e, $00                                      ; $6eac: $1e $00
	ld   b, $00                                      ; $6eae: $06 $00
	ret  nz                                          ; $6eb0: $c0

	ld   b, b                                        ; $6eb1: $40
	nop                                              ; $6eb2: $00
	add  b                                           ; $6eb3: $80
	add  b                                           ; $6eb4: $80
	ld   bc, $030c                                   ; $6eb5: $01 $0c $03
	ld   [bc], a                                     ; $6eb8: $02
	ld   c, $09                                      ; $6eb9: $0e $09
	add  hl, sp                                      ; $6ebb: $39
	daa                                              ; $6ebc: $27
	rst  $20                                         ; $6ebd: $e7
	sbc  a                                           ; $6ebe: $9f
	add  hl, de                                      ; $6ebf: $19
	ld   h, d                                        ; $6ec0: $62
	ldh  [c], a                                      ; $6ec1: $e2
	jp   nz, $80ca                                   ; $6ec2: $c2 $ca $80

	xor  d                                           ; $6ec5: $aa
	add  b                                           ; $6ec6: $80
	ld   h, d                                        ; $6ec7: $62
	add  d                                           ; $6ec8: $82
	ldh  [c], a                                      ; $6ec9: $e2
	inc  bc                                          ; $6eca: $03
	and  $e4                                         ; $6ecb: $e6 $e4
	call nz, $839d                                   ; $6ecd: $c4 $9d $83
	ld   d, l                                        ; $6ed0: $55
	add  b                                           ; $6ed1: $80
	ld   e, [hl]                                     ; $6ed2: $5e
	add  b                                           ; $6ed3: $80
	sbc  $83                                         ; $6ed4: $de $83
	xor  a                                           ; $6ed6: $af
	dec  bc                                          ; $6ed7: $0b
	xor  [hl]                                        ; $6ed8: $ae
	add  c                                           ; $6ed9: $81
	cp   e                                           ; $6eda: $bb
	ld   [$cbda], a                                  ; $6edb: $ea $da $cb
	ld   e, e                                        ; $6ede: $5b
	ld   e, d                                        ; $6edf: $5a
	ld   e, [hl]                                     ; $6ee0: $5e
	ld   [hl], b                                     ; $6ee1: $70
	jr   nz, jr_095_6e93                             ; $6ee2: $20 $af

	add  b                                           ; $6ee4: $80
	cpl                                              ; $6ee5: $2f
	inc  bc                                          ; $6ee6: $03
	ld   l, $3e                                      ; $6ee7: $2e $3e
	ld   de, $8187                                   ; $6ee9: $11 $87 $81
	rla                                              ; $6eec: $17
	add  b                                           ; $6eed: $80
	rst  $30                                         ; $6eee: $f7
	add  d                                           ; $6eef: $82
	rla                                              ; $6ef0: $17
	add  c                                           ; $6ef1: $81
	rst  $30                                         ; $6ef2: $f7
	add  b                                           ; $6ef3: $80
	rla                                              ; $6ef4: $17
	add  b                                           ; $6ef5: $80
	rst  $30                                         ; $6ef6: $f7
	nop                                              ; $6ef7: $00
	dec  e                                           ; $6ef8: $1d
	add  b                                           ; $6ef9: $80
	rra                                              ; $6efa: $1f
	add  d                                           ; $6efb: $82
	inc  c                                           ; $6efc: $0c
	inc  b                                           ; $6efd: $04
	rrca                                             ; $6efe: $0f
	inc  e                                           ; $6eff: $1c
	rrca                                             ; $6f00: $0f
	inc  c                                           ; $6f01: $0c

Jump_095_6f02:
	inc  d                                           ; $6f02: $14
	add  c                                           ; $6f03: $81
	nop                                              ; $6f04: $00
	ld   bc, $3e1e                                   ; $6f05: $01 $1e $3e
	add  d                                           ; $6f08: $82
	nop                                              ; $6f09: $00
	add  b                                           ; $6f0a: $80
	ld   bc, $3f81                                   ; $6f0b: $01 $81 $3f
	add  b                                           ; $6f0e: $80
	ld   a, [hl+]                                    ; $6f0f: $2a
	add  b                                           ; $6f10: $80
	dec  d                                           ; $6f11: $15
	ld   bc, $d52a                                   ; $6f12: $01 $2a $d5
	add  e                                           ; $6f15: $83
	nop                                              ; $6f16: $00
	add  c                                           ; $6f17: $81
	rst  $38                                         ; $6f18: $ff
	add  b                                           ; $6f19: $80
	ld   d, l                                        ; $6f1a: $55
	add  b                                           ; $6f1b: $80
	xor  d                                           ; $6f1c: $aa
	add  b                                           ; $6f1d: $80
	ld   d, l                                        ; $6f1e: $55
	ld   bc, $5fa0                                   ; $6f1f: $01 $a0 $5f
	add  c                                           ; $6f22: $81
	nop                                              ; $6f23: $00
	add  b                                           ; $6f24: $80
	ccf                                              ; $6f25: $3f
	nop                                              ; $6f26: $00
	rst  $38                                         ; $6f27: $ff
	add  b                                           ; $6f28: $80
	ld   [$5580], a                                  ; $6f29: $ea $80 $55
	add  b                                           ; $6f2c: $80
	xor  d                                           ; $6f2d: $aa
	add  b                                           ; $6f2e: $80
	ld   d, b                                        ; $6f2f: $50
	dec  b                                           ; $6f30: $05
	nop                                              ; $6f31: $00
	sbc  a                                           ; $6f32: $9f
	ld   b, b                                        ; $6f33: $40
	daa                                              ; $6f34: $27
	rlca                                             ; $6f35: $07
	rst  $38                                         ; $6f36: $ff
	add  b                                           ; $6f37: $80
	db   $fd                                         ; $6f38: $fd
	add  b                                           ; $6f39: $80
	xor  d                                           ; $6f3a: $aa
	add  b                                           ; $6f3b: $80
	ld   d, l                                        ; $6f3c: $55
	add  b                                           ; $6f3d: $80
	and  b                                           ; $6f3e: $a0
	dec  b                                           ; $6f3f: $05
	nop                                              ; $6f40: $00
	rlca                                             ; $6f41: $07
	nop                                              ; $6f42: $00
	jp   c, $c908                                    ; $6f43: $da $08 $c9

	add  b                                           ; $6f46: $80
	pop  bc                                          ; $6f47: $c1
	add  b                                           ; $6f48: $80
	ld   b, c                                        ; $6f49: $41
	add  b                                           ; $6f4a: $80
	add  h                                           ; $6f4b: $84

jr_095_6f4c:
	add  b                                           ; $6f4c: $80
	ld   b, h                                        ; $6f4d: $44
	add  b                                           ; $6f4e: $80
	inc  b                                           ; $6f4f: $04
	rlca                                             ; $6f50: $07
	inc  c                                           ; $6f51: $0c
	adc  h                                           ; $6f52: $8c
	inc  c                                           ; $6f53: $0c
	sub  b                                           ; $6f54: $90
	ld   a, [$a9f8]                                  ; $6f55: $fa $f8 $a9
	xor  b                                           ; $6f58: $a8
	add  b                                           ; $6f59: $80
	ld   b, b                                        ; $6f5a: $40
	add  b                                           ; $6f5b: $80
	sub  b                                           ; $6f5c: $90
	rlca                                             ; $6f5d: $07
	jr   nz, jr_095_6f88                             ; $6f5e: $20 $28

	ld   h, b                                        ; $6f60: $60
	ld   a, b                                        ; $6f61: $78
	ret  nz                                          ; $6f62: $c0

	pop  bc                                          ; $6f63: $c1
	push bc                                          ; $6f64: $c5
	rst  $10                                         ; $6f65: $d7
	add  b                                           ; $6f66: $80
	ld   a, a                                        ; $6f67: $7f
	jr   nz, @+$01                                   ; $6f68: $20 $ff

	ld   a, a                                        ; $6f6a: $7f
	ld   a, [hl]                                     ; $6f6b: $7e
	rlca                                             ; $6f6c: $07
	nop                                              ; $6f6d: $00
	rrca                                             ; $6f6e: $0f
	nop                                              ; $6f6f: $00
	ld   e, $01                                      ; $6f70: $1e $01
	ld   a, c                                        ; $6f72: $79
	rlca                                             ; $6f73: $07
	rst  $30                                         ; $6f74: $f7
	rrca                                             ; $6f75: $0f
	ld   h, e                                        ; $6f76: $63
	add  h                                           ; $6f77: $84
	call nc, $c504                                   ; $6f78: $d4 $04 $c5
	dec  b                                           ; $6f7b: $05
	add  l                                           ; $6f7c: $85
	ld   c, l                                        ; $6f7d: $4d
	dec  c                                           ; $6f7e: $0d
	call $c9c8                                       ; $6f7f: $cd $c8 $c9
	ld   c, c                                        ; $6f82: $49
	ret  c                                           ; $6f83: $d8

	sbc  b                                           ; $6f84: $98
	reti                                             ; $6f85: $d9


	or   $b6                                         ; $6f86: $f6 $b6

jr_095_6f88:
	sub  $d5                                         ; $6f88: $d6 $d5
	add  b                                           ; $6f8a: $80
	ld   d, l                                        ; $6f8b: $55
	ld   [bc], a                                     ; $6f8c: $02
	ld   e, c                                        ; $6f8d: $59
	ld   e, d                                        ; $6f8e: $5a
	ld   a, [bc]                                     ; $6f8f: $0a
	add  b                                           ; $6f90: $80
	adc  d                                           ; $6f91: $8a
	ld   c, $6b                                      ; $6f92: $0e $6b
	ld   h, l                                        ; $6f94: $65
	push af                                          ; $6f95: $f5
	or   c                                           ; $6f96: $b1
	cp   c                                           ; $6f97: $b9
	ld   c, c                                        ; $6f98: $49
	sub  [hl]                                        ; $6f99: $96
	sub  b                                           ; $6f9a: $90
	db   $10                                         ; $6f9b: $10
	inc  e                                           ; $6f9c: $1c
	ld   [$4b6b], sp                                 ; $6f9d: $08 $6b $4b
	ld   c, [hl]                                     ; $6fa0: $4e
	sub  h                                           ; $6fa1: $94
	add  b                                           ; $6fa2: $80
	and  h                                           ; $6fa3: $a4
	inc  b                                           ; $6fa4: $04
	and  a                                           ; $6fa5: $a7
	adc  $d6                                         ; $6fa6: $ce $d6
	or   $e6                                         ; $6fa8: $f6 $e6
	add  e                                           ; $6faa: $83
	rla                                              ; $6fab: $17
	add  b                                           ; $6fac: $80
	rst  $30                                         ; $6fad: $f7
	add  d                                           ; $6fae: $82
	rla                                              ; $6faf: $17
	add  b                                           ; $6fb0: $80
	ld   de, $1780                                   ; $6fb1: $11 $80 $17
	nop                                              ; $6fb4: $00
	xor  $83                                         ; $6fb5: $ee $83
	nop                                              ; $6fb7: $00
	add  b                                           ; $6fb8: $80
	inc  bc                                          ; $6fb9: $03
	add  b                                           ; $6fba: $80
	rrca                                             ; $6fbb: $0f
	add  l                                           ; $6fbc: $85
	rra                                              ; $6fbd: $1f
	add  b                                           ; $6fbe: $80
	db   $10                                         ; $6fbf: $10
	add  c                                           ; $6fc0: $81
	nop                                              ; $6fc1: $00
	inc  bc                                          ; $6fc2: $03
	rra                                              ; $6fc3: $1f
	nop                                              ; $6fc4: $00
	jr   nz, jr_095_6fc7                             ; $6fc5: $20 $00

jr_095_6fc7:
	add  b                                           ; $6fc7: $80
	ld   a, [de]                                     ; $6fc8: $1a
	add  b                                           ; $6fc9: $80
	jr   nz, jr_095_6f4c                             ; $6fca: $20 $80

	nop                                              ; $6fcc: $00
	nop                                              ; $6fcd: $00
	ccf                                              ; $6fce: $3f
	add  c                                           ; $6fcf: $81
	nop                                              ; $6fd0: $00
	inc  bc                                          ; $6fd1: $03
	ccf                                              ; $6fd2: $3f
	nop                                              ; $6fd3: $00
	jp   $8003                                       ; $6fd4: $c3 $03 $80


	ld   l, h                                        ; $6fd7: $6c
	add  b                                           ; $6fd8: $80
	add  b                                           ; $6fd9: $80
	add  d                                           ; $6fda: $82
	nop                                              ; $6fdb: $00
	inc  bc                                          ; $6fdc: $03
	db   $fc                                         ; $6fdd: $fc
	nop                                              ; $6fde: $00
	db   $fc                                         ; $6fdf: $fc
	nop                                              ; $6fe0: $00
	add  b                                           ; $6fe1: $80
	dec  e                                           ; $6fe2: $1d
	add  b                                           ; $6fe3: $80
	ldh  [$86], a                                    ; $6fe4: $e0 $86
	nop                                              ; $6fe6: $00
	ld   b, $03                                      ; $6fe7: $06 $03
	ld   [bc], a                                     ; $6fe9: $02
	ld   a, [hl]                                     ; $6fea: $7e
	ld   a, l                                        ; $6feb: $7d
	add  l                                           ; $6fec: $85
	add  e                                           ; $6fed: $83
	dec  bc                                          ; $6fee: $0b
	add  b                                           ; $6fef: $80
	rlca                                             ; $6ff0: $07
	ld   bc, $1606                                   ; $6ff1: $01 $06 $16
	add  e                                           ; $6ff4: $83
	ld   c, $00                                      ; $6ff5: $0e $00
	ldh  a, [c]                                      ; $6ff7: $f2
	add  b                                           ; $6ff8: $80
	ld   e, l                                        ; $6ff9: $5d
	add  c                                           ; $6ffa: $81
	db   $dd                                         ; $6ffb: $dd
	add  d                                           ; $6ffc: $82
	push de                                          ; $6ffd: $d5
	nop                                              ; $6ffe: $00
	push af                                          ; $6fff: $f5
	add  e                                           ; $7000: $83
	or   l                                           ; $7001: $b5
	ld   [de], a                                     ; $7002: $12
	pop  de                                          ; $7003: $d1
	call nz, $c0c5                                   ; $7004: $c4 $c5 $c0
	rst  ToBoot                                         ; $7007: $c7
	ret  nz                                          ; $7008: $c0

	sbc  $c1                                         ; $7009: $de $c1
	reti                                             ; $700b: $d9


	rst  ToBoot                                         ; $700c: $c7
	rst  $10                                         ; $700d: $d7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $700e: $cf
	adc  $de                                         ; $700f: $ce $de
	sbc  h                                           ; $7011: $9c
	cp   h                                           ; $7012: $bc
	ld   a, $1f                                      ; $7013: $3e $1f
	sbc  [hl]                                        ; $7015: $9e
	add  b                                           ; $7016: $80
	ld   a, a                                        ; $7017: $7f
	add  c                                           ; $7018: $81
	rst  $38                                         ; $7019: $ff
	add  b                                           ; $701a: $80
	rst  $28                                         ; $701b: $ef
	add  b                                           ; $701c: $80
	sbc  e                                           ; $701d: $9b
	inc  b                                           ; $701e: $04
	rlca                                             ; $701f: $07
	ld   b, $0e                                      ; $7020: $06 $0e
	dec  c                                           ; $7022: $0d
	push hl                                          ; $7023: $e5
	add  l                                           ; $7024: $85
	db   $db                                         ; $7025: $db
	nop                                              ; $7026: $00
	ei                                               ; $7027: $fb
	add  b                                           ; $7028: $80
	cp   e                                           ; $7029: $bb
	add  b                                           ; $702a: $80
	dec  sp                                          ; $702b: $3b
	add  c                                           ; $702c: $81
	cp   e                                           ; $702d: $bb
	inc  bc                                          ; $702e: $03
	or   e                                           ; $702f: $b3
	call z, $e3e0                                    ; $7030: $cc $e0 $e3
	add  b                                           ; $7033: $80
	cp   $01                                         ; $7034: $fe $01
	ld   a, [$80fe]                                  ; $7036: $fa $fe $80
	ei                                               ; $7039: $fb
	nop                                              ; $703a: $00
	di                                               ; $703b: $f3
	add  c                                           ; $703c: $81
	db   $db                                         ; $703d: $db
	inc  bc                                          ; $703e: $03
	ei                                               ; $703f: $fb
	cp   e                                           ; $7040: $bb
	ld   h, h                                        ; $7041: $64
	rst  $30                                         ; $7042: $f7
	add  b                                           ; $7043: $80
	dec  sp                                          ; $7044: $3b
	rlca                                             ; $7045: $07
	dec  bc                                          ; $7046: $0b
	rlc  l                                           ; $7047: $cb $05
	dec  [hl]                                        ; $7049: $35
	ld   de, $8919                                   ; $704a: $11 $19 $89
	adc  l                                           ; $704d: $8d
	add  b                                           ; $704e: $80
	adc  h                                           ; $704f: $8c
	add  b                                           ; $7050: $80
	call z, $9a02                                    ; $7051: $cc $02 $9a
	rla                                              ; $7054: $17
	rst  $30                                         ; $7055: $f7
	add  c                                           ; $7056: $81
	or   a                                           ; $7057: $b7
	inc  bc                                          ; $7058: $03
	rst  $30                                         ; $7059: $f7
	rst  $10                                         ; $705a: $d7
	ld   [hl], a                                     ; $705b: $77
	ld   h, a                                        ; $705c: $67
	add  b                                           ; $705d: $80
	and  a                                           ; $705e: $a7
	add  b                                           ; $705f: $80
	or   a                                           ; $7060: $b7
	add  b                                           ; $7061: $80
	rst  $10                                         ; $7062: $d7
	nop                                              ; $7063: $00
	ld   bc, $1f88                                   ; $7064: $01 $88 $1f
	add  b                                           ; $7067: $80
	dec  e                                           ; $7068: $1d
	add  b                                           ; $7069: $80
	rla                                              ; $706a: $17
	inc  b                                           ; $706b: $04
	dec  e                                           ; $706c: $1d
	ld   [hl+], a                                    ; $706d: $22
	nop                                              ; $706e: $00
	ret  nz                                          ; $706f: $c0

	ldh  [$80], a                                    ; $7070: $e0 $80
	db   $fc                                         ; $7072: $fc
	ld   bc, $ff1f                                   ; $7073: $01 $1f $ff
	add  b                                           ; $7076: $80
	rra                                              ; $7077: $1f
	add  b                                           ; $7078: $80
	ld   bc, $0088                                   ; $7079: $01 $88 $00
	add  b                                           ; $707c: $80
	ret  nz                                          ; $707d: $c0

	add  b                                           ; $707e: $80
	db   $fc                                         ; $707f: $fc
	add  b                                           ; $7080: $80
	rst  $38                                         ; $7081: $ff
	add  b                                           ; $7082: $80
	rra                                              ; $7083: $1f
	add  b                                           ; $7084: $80
	ld   bc, $0088                                   ; $7085: $01 $88 $00
	add  b                                           ; $7088: $80
	ret  nz                                          ; $7089: $c0

	add  b                                           ; $708a: $80
	db   $fc                                         ; $708b: $fc
	add  b                                           ; $708c: $80
	rst  $38                                         ; $708d: $ff
	nop                                              ; $708e: $00
	ccf                                              ; $708f: $3f
	add  b                                           ; $7090: $80
	ld   e, $81                                      ; $7091: $1e $81
	dec  e                                           ; $7093: $1d
	nop                                              ; $7094: $00
	ld   e, l                                        ; $7095: $5d
	add  d                                           ; $7096: $82
	dec  sp                                          ; $7097: $3b
	ld   bc, $b737                                   ; $7098: $01 $37 $b7
	add  c                                           ; $709b: $81
	ld   [hl], a                                     ; $709c: $77
	nop                                              ; $709d: $00
	ld   e, a                                        ; $709e: $5f
	add  b                                           ; $709f: $80
	xor  e                                           ; $70a0: $ab
	ld   bc, $b2aa                                   ; $70a1: $01 $aa $b2
	add  b                                           ; $70a4: $80
	or   c                                           ; $70a5: $b1
	add  b                                           ; $70a6: $80
	or   e                                           ; $70a7: $b3
	add  e                                           ; $70a8: $83
	or   a                                           ; $70a9: $b7
	dec  b                                           ; $70aa: $05
	sub  a                                           ; $70ab: $97
	rst  $10                                         ; $70ac: $d7
	ret  nz                                          ; $70ad: $c0

	ld   a, b                                        ; $70ae: $78
	ld   [hl], b                                     ; $70af: $70
	ldh  a, [$80]                                    ; $70b0: $f0 $80
	ldh  [$80], a                                    ; $70b2: $e0 $80
	db   $fc                                         ; $70b4: $fc
	add  b                                           ; $70b5: $80
	rst  $38                                         ; $70b6: $ff
	ld   d, $fe                                      ; $70b7: $16 $fe
	rst  $38                                         ; $70b9: $ff
	ld   hl, sp-$02                                  ; $70ba: $f8 $fe
	dec  b                                           ; $70bc: $05
	db   $fd                                         ; $70bd: $fd
	ldh  [rAUD3LEN], a                               ; $70be: $e0 $1b
	dec  sp                                          ; $70c0: $3b
	scf                                              ; $70c1: $37
	ld   [hl], l                                     ; $70c2: $75
	ld   l, l                                        ; $70c3: $6d
	db   $e3                                         ; $70c4: $e3
	db   $d3                                         ; $70c5: $d3
	jp   $a6a2                                       ; $70c6: $c3 $a2 $a6


	ld   h, [hl]                                     ; $70c9: $66
	ld   a, [hl]                                     ; $70ca: $7e
	cp   $3e                                         ; $70cb: $fe $3e
	cp   $06                                         ; $70cd: $fe $06
	add  c                                           ; $70cf: $81
	cp   e                                           ; $70d0: $bb
	nop                                              ; $70d1: $00
	di                                               ; $70d2: $f3
	add  c                                           ; $70d3: $81
	ld   [hl], a                                     ; $70d4: $77
	nop                                              ; $70d5: $00
	rst  $20                                         ; $70d6: $e7
	add  b                                           ; $70d7: $80
	rst  $28                                         ; $70d8: $ef
	ld   bc, $ceee                                   ; $70d9: $01 $ee $ce
	add  c                                           ; $70dc: $81
	sbc  $0b                                         ; $70dd: $de $0b
	ld   c, $b7                                      ; $70df: $0e $b7
	rst  $30                                         ; $70e1: $f7
	ld   [hl], a                                     ; $70e2: $77
	ld   d, [hl]                                     ; $70e3: $56
	ld   [hl], a                                     ; $70e4: $77
	ld   h, a                                        ; $70e5: $67
	ld   l, a                                        ; $70e6: $6f
	ld   l, h                                        ; $70e7: $6c
	ld   l, [hl]                                     ; $70e8: $6e
	jp   z, $80de                                    ; $70e9: $ca $de $80

	call c, $9402                                    ; $70ec: $dc $02 $94
	cp   l                                           ; $70ef: $bd
	ld   sp, $fe82                                   ; $70f0: $31 $82 $fe
	add  b                                           ; $70f3: $80
	ld   a, [hl]                                     ; $70f4: $7e
	add  b                                           ; $70f5: $80
	ld   a, a                                        ; $70f6: $7f
	add  b                                           ; $70f7: $80
	db   $e3                                         ; $70f8: $e3
	add  b                                           ; $70f9: $80
	sbc  l                                           ; $70fa: $9d

Call_095_70fb:
	add  b                                           ; $70fb: $80
	ld   a, [hl]                                     ; $70fc: $7e
	ld   [bc], a                                     ; $70fd: $02
	db   $fd                                         ; $70fe: $fd
	dec  hl                                          ; $70ff: $2b
	rst  $10                                         ; $7100: $d7
	add  d                                           ; $7101: $82
	ld   l, e                                        ; $7102: $6b
	add  b                                           ; $7103: $80
	dec  hl                                          ; $7104: $2b
	add  [hl]                                        ; $7105: $86
	dec  [hl]                                        ; $7106: $35
	nop                                              ; $7107: $00
	ld   bc, $0a80                                   ; $7108: $01 $80 $0a
	add  b                                           ; $710b: $80
	dec  d                                           ; $710c: $15
	add  b                                           ; $710d: $80
	ld   a, [bc]                                     ; $710e: $0a
	add  b                                           ; $710f: $80
	dec  d                                           ; $7110: $15
	add  b                                           ; $7111: $80
	ld   a, [bc]                                     ; $7112: $0a
	add  b                                           ; $7113: $80
	dec  d                                           ; $7114: $15
	add  b                                           ; $7115: $80
	ld   a, [bc]                                     ; $7116: $0a
	ld   bc, $ea15                                   ; $7117: $01 $15 $ea
	db   $fd                                         ; $711a: $fd
	nop                                              ; $711b: $00
	ld   d, e                                        ; $711c: $53
	ld   [bc], a                                     ; $711d: $02
	add  [hl]                                        ; $711e: $86
	nop                                              ; $711f: $00
	ld   bc, $639c                                   ; $7120: $01 $9c $63
	add  b                                           ; $7123: $80
	rst  ToBoot                                         ; $7124: $c7
	add  b                                           ; $7125: $80
	sbc  a                                           ; $7126: $9f
	add  b                                           ; $7127: $80
	ld   a, h                                        ; $7128: $7c
	nop                                              ; $7129: $00
	rst  $38                                         ; $712a: $ff
	add  l                                           ; $712b: $85
	nop                                              ; $712c: $00
	ld   bc, $f807                                   ; $712d: $01 $07 $f8
	add  b                                           ; $7130: $80
	ldh  [$80], a                                    ; $7131: $e0 $80
	inc  b                                           ; $7133: $04

jr_095_7134:
	add  b                                           ; $7134: $80
	inc  de                                          ; $7135: $13
	nop                                              ; $7136: $00
	rst  $38                                         ; $7137: $ff
	add  l                                           ; $7138: $85
	nop                                              ; $7139: $00
	ld   bc, $39c6                                   ; $713a: $01 $c6 $39
	add  b                                           ; $713d: $80
	cp   $80                                         ; $713e: $fe $80
	ld   a, a                                        ; $7140: $7f
	add  b                                           ; $7141: $80
	sbc  a                                           ; $7142: $9f
	nop                                              ; $7143: $00
	rst  $38                                         ; $7144: $ff
	add  l                                           ; $7145: $85
	nop                                              ; $7146: $00
	ld   bc, $8976                                   ; $7147: $01 $76 $89
	add  b                                           ; $714a: $80
	ld   h, [hl]                                     ; $714b: $66
	add  b                                           ; $714c: $80
	xor  c                                           ; $714d: $a9
	add  b                                           ; $714e: $80
	xor  h                                           ; $714f: $ac
	nop                                              ; $7150: $00
	rst  $38                                         ; $7151: $ff
	add  [hl]                                        ; $7152: $86
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	rst  $38                                         ; $7155: $ff
	add  b                                           ; $7156: $80
	ld   a, a                                        ; $7157: $7f
	add  b                                           ; $7158: $80
	add  e                                           ; $7159: $83
	add  b                                           ; $715a: $80
	ld   a, h                                        ; $715b: $7c
	nop                                              ; $715c: $00
	rst  $38                                         ; $715d: $ff
	add  l                                           ; $715e: $85
	nop                                              ; $715f: $00
	ld   bc, $1ee1                                   ; $7160: $01 $e1 $1e
	add  b                                           ; $7163: $80
	sbc  l                                           ; $7164: $9d
	add  b                                           ; $7165: $80
	rlc  d                                           ; $7166: $cb $02
	db   $e4                                         ; $7168: $e4
	inc  b                                           ; $7169: $04
	rra                                              ; $716a: $1f
	add  l                                           ; $716b: $85
	nop                                              ; $716c: $00
	ld   bc, $f30c                                   ; $716d: $01 $0c $f3
	add  b                                           ; $7170: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7171: $cf
	add  b                                           ; $7172: $80
	inc  a                                           ; $7173: $3c
	add  b                                           ; $7174: $80
	jp   $ff00                                       ; $7175: $c3 $00 $ff


	add  l                                           ; $7178: $85
	nop                                              ; $7179: $00
	ld   bc, $fe01                                   ; $717a: $01 $01 $fe
	add  b                                           ; $717d: $80
	ldh  [$80], a                                    ; $717e: $e0 $80
	dec  e                                           ; $7180: $1d
	add  b                                           ; $7181: $80
	ei                                               ; $7182: $fb
	nop                                              ; $7183: $00
	rst  $38                                         ; $7184: $ff
	add  l                                           ; $7185: $85
	nop                                              ; $7186: $00
	ld   bc, $0ff0                                   ; $7187: $01 $f0 $0f
	add  b                                           ; $718a: $80
	rst  $38                                         ; $718b: $ff
	add  b                                           ; $718c: $80
	db   $fc                                         ; $718d: $fc
	add  b                                           ; $718e: $80
	ei                                               ; $718f: $fb
	nop                                              ; $7190: $00
	rst  $38                                         ; $7191: $ff
	add  l                                           ; $7192: $85
	nop                                              ; $7193: $00
	ld   bc, $c738                                   ; $7194: $01 $38 $c7
	add  b                                           ; $7197: $80
	cpl                                              ; $7198: $2f
	add  b                                           ; $7199: $80
	rst  JumpTable                                         ; $719a: $df
	add  b                                           ; $719b: $80
	cp   h                                           ; $719c: $bc
	nop                                              ; $719d: $00
	rst  $38                                         ; $719e: $ff
	add  l                                           ; $719f: $85
	nop                                              ; $71a0: $00
	ld   bc, $d12e                                   ; $71a1: $01 $2e $d1
	add  b                                           ; $71a4: $80
	pop  af                                          ; $71a5: $f1
	add  b                                           ; $71a6: $80
	sub  c                                           ; $71a7: $91
	add  b                                           ; $71a8: $80
	ld   [hl], c                                     ; $71a9: $71
	nop                                              ; $71aa: $00
	rst  $38                                         ; $71ab: $ff
	add  l                                           ; $71ac: $85
	nop                                              ; $71ad: $00
	ld   bc, $07f8                                   ; $71ae: $01 $f8 $07
	add  b                                           ; $71b1: $80
	jr   jr_095_7134                                 ; $71b2: $18 $80

	rrca                                             ; $71b4: $0f
	add  b                                           ; $71b5: $80
	inc  de                                          ; $71b6: $13
	add  b                                           ; $71b7: $80
	ldh  [rTIMA], a                                  ; $71b8: $e0 $05
	add  e                                           ; $71ba: $83
	add  b                                           ; $71bb: $80
	inc  c                                           ; $71bc: $0c
	nop                                              ; $71bd: $00
	jr   nc, jr_095_71c0                             ; $71be: $30 $00

jr_095_71c0:
	add  b                                           ; $71c0: $80
	jr   nc, jr_095_71cb                             ; $71c1: $30 $08

	ccf                                              ; $71c3: $3f
	rrca                                             ; $71c4: $0f
	ld   c, $07                                      ; $71c5: $0e $07
	ld   b, $1a                                      ; $71c7: $06 $1a
	and  $0c                                         ; $71c9: $e6 $0c

jr_095_71cb:
	rrca                                             ; $71cb: $0f
	add  b                                           ; $71cc: $80
	inc  bc                                          ; $71cd: $03
	add  l                                           ; $71ce: $85
	nop                                              ; $71cf: $00
	add  b                                           ; $71d0: $80
	ldh  [$03], a                                    ; $71d1: $e0 $03
	call c, $f83c                                    ; $71d3: $dc $3c $f8
	rst  $20                                         ; $71d6: $e7
	add  b                                           ; $71d7: $80
	jr   @+$06                                       ; $71d8: $18 $04

	rst  $20                                         ; $71da: $e7
	ld   h, a                                        ; $71db: $67
	ld   a, b                                        ; $71dc: $78
	jr   jr_095_71fe                                 ; $71dd: $18 $1f

	add  b                                           ; $71df: $80
	inc  bc                                          ; $71e0: $03
	nop                                              ; $71e1: $00
	nop                                              ; $71e2: $00
	add  b                                           ; $71e3: $80
	ld   bc, $0e80                                   ; $71e4: $01 $80 $0e
	ld   bc, $a05f                                   ; $71e7: $01 $5f $a0
	add  b                                           ; $71ea: $80
	xor  d                                           ; $71eb: $aa
	add  b                                           ; $71ec: $80
	ld   a, [hl+]                                    ; $71ed: $2a
	add  b                                           ; $71ee: $80

jr_095_71ef:
	jp   hl                                          ; $71ef: $e9


	add  b                                           ; $71f0: $80
	inc  bc                                          ; $71f1: $03
	rlca                                             ; $71f2: $07
	ldh  [$60], a                                    ; $71f3: $e0 $60
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $71f5: $cf
	adc  a                                           ; $71f6: $8f
	rst  $38                                         ; $71f7: $ff
	cp   a                                           ; $71f8: $bf
	adc  [hl]                                        ; $71f9: $8e
	ld   c, $80                                      ; $71fa: $0e $80
	ld   h, a                                        ; $71fc: $67
	add  b                                           ; $71fd: $80

jr_095_71fe:
	inc  bc                                          ; $71fe: $03
	nop                                              ; $71ff: $00
	rst  $38                                         ; $7200: $ff
	add  b                                           ; $7201: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7202: $cf
	ld   [bc], a                                     ; $7203: $02
	sbc  a                                           ; $7204: $9f
	ld   a, a                                        ; $7205: $7f
	rra                                              ; $7206: $1f
	add  d                                           ; $7207: $82
	rst  $38                                         ; $7208: $ff
	inc  bc                                          ; $7209: $03
	ld   l, b                                        ; $720a: $68
	ld   [$aaca], sp                                 ; $720b: $08 $ca $aa
	add  b                                           ; $720e: $80
	adc  c                                           ; $720f: $89
	add  b                                           ; $7210: $80
	res  0, b                                        ; $7211: $cb $80
	ld   sp, hl                                      ; $7213: $f9
	add  b                                           ; $7214: $80
	ld   hl, sp-$7e                                  ; $7215: $f8 $82
	rst  $38                                         ; $7217: $ff
	add  b                                           ; $7218: $80
	dec  sp                                          ; $7219: $3b
	add  b                                           ; $721a: $80
	dec  bc                                          ; $721b: $0b
	add  b                                           ; $721c: $80
	di                                               ; $721d: $f3
	ld   [bc], a                                     ; $721e: $02
	db   $fc                                         ; $721f: $fc
	cp   h                                           ; $7220: $bc
	cp   a                                           ; $7221: $bf
	add  b                                           ; $7222: $80
	rra                                              ; $7223: $1f
	add  b                                           ; $7224: $80
	rst  ToBoot                                         ; $7225: $c7
	add  b                                           ; $7226: $80
	sbc  a                                           ; $7227: $9f
	ld   [bc], a                                     ; $7228: $02
	rst  $28                                         ; $7229: $ef
	rst  $20                                         ; $722a: $e7
	rst  $30                                         ; $722b: $f7
	add  b                                           ; $722c: $80
	rst  $28                                         ; $722d: $ef
	add  b                                           ; $722e: $80
	rst  JumpTable                                         ; $722f: $df
	add  b                                           ; $7230: $80
	cp   h                                           ; $7231: $bc
	add  b                                           ; $7232: $80
	ld   [hl-], a                                    ; $7233: $32
	add  b                                           ; $7234: $80
	pop  bc                                          ; $7235: $c1
	add  b                                           ; $7236: $80
	xor  $80                                         ; $7237: $ee $80
	or   $80                                         ; $7239: $f6 $80
	rst  $20                                         ; $723b: $e7
	add  b                                           ; $723c: $80
	sbc  [hl]                                        ; $723d: $9e
	add  b                                           ; $723e: $80
	ld   a, b                                        ; $723f: $78
	add  b                                           ; $7240: $80
	push bc                                          ; $7241: $c5
	add  b                                           ; $7242: $80
	dec  sp                                          ; $7243: $3b
	add  b                                           ; $7244: $80
	rst  $30                                         ; $7245: $f7
	add  b                                           ; $7246: $80
	rst  $28                                         ; $7247: $ef
	add  b                                           ; $7248: $80
	call c, Call_095_6780                            ; $7249: $dc $80 $67
	add  b                                           ; $724c: $80
	rra                                              ; $724d: $1f
	add  b                                           ; $724e: $80
	db   $fc                                         ; $724f: $fc
	add  b                                           ; $7250: $80
	ei                                               ; $7251: $fb
	add  b                                           ; $7252: $80
	rst  $20                                         ; $7253: $e7
	add  b                                           ; $7254: $80
	sbc  [hl]                                        ; $7255: $9e
	add  b                                           ; $7256: $80
	ld   a, b                                        ; $7257: $78
	add  b                                           ; $7258: $80
	push hl                                          ; $7259: $e5
	add  b                                           ; $725a: $80
	sub  c                                           ; $725b: $91
	add  b                                           ; $725c: $80
	ld   [hl], c                                     ; $725d: $71
	add  d                                           ; $725e: $82
	pop  de                                          ; $725f: $d1
	add  b                                           ; $7260: $80
	sub  c                                           ; $7261: $91
	add  b                                           ; $7262: $80
	ld   sp, $f180                                   ; $7263: $31 $80 $f1
	add  b                                           ; $7266: $80
	pop  de                                          ; $7267: $d1
	add  b                                           ; $7268: $80
	inc  c                                           ; $7269: $0c
	add  b                                           ; $726a: $80
	rlca                                             ; $726b: $07
	add  b                                           ; $726c: $80
	jr   jr_095_71ef                                 ; $726d: $18 $80

	rra                                              ; $726f: $1f
	add  b                                           ; $7270: $80
	rrca                                             ; $7271: $0f
	add  b                                           ; $7272: $80
	inc  de                                          ; $7273: $13
	add  b                                           ; $7274: $80
	db   $10                                         ; $7275: $10
	add  b                                           ; $7276: $80
	inc  de                                          ; $7277: $13
	inc  bc                                          ; $7278: $03
	jr   nz, jr_095_727d                             ; $7279: $20 $02

	jr   nz, jr_095_727d                             ; $727b: $20 $00

jr_095_727d:
	add  b                                           ; $727d: $80
	ld   [bc], a                                     ; $727e: $02
	ld   b, $20                                      ; $727f: $06 $20
	nop                                              ; $7281: $00
	dec  e                                           ; $7282: $1d
	jr   nz, @+$1e                                   ; $7283: $20 $1c

jr_095_7285:
	ld   [bc], a                                     ; $7285: $02
	ld   bc, $0082                                   ; $7286: $01 $82 $00
	add  b                                           ; $7289: $80
	inc  bc                                          ; $728a: $03
	add  b                                           ; $728b: $80
	ld   b, $80                                      ; $728c: $06 $80
	ld   a, [hl-]                                    ; $728e: $3a
	add  b                                           ; $728f: $80
	jp   nz, $020b                                   ; $7290: $c2 $0b $02

	ldh  [c], a                                      ; $7293: $e2
	inc  bc                                          ; $7294: $03
	jp   $1c3e                                       ; $7295: $c3 $3e $1c


	inc  bc                                          ; $7298: $03
	ld   c, l                                        ; $7299: $4d
	or   e                                           ; $729a: $b3
	ld   a, l                                        ; $729b: $7d
	db   $fc                                         ; $729c: $fc
	ld   a, a                                        ; $729d: $7f
	add  b                                           ; $729e: $80
	inc  c                                           ; $729f: $0c
	ld   bc, $1a18                                   ; $72a0: $01 $18 $1a
	add  b                                           ; $72a3: $80
	ld   l, c                                        ; $72a4: $69
	ld   bc, $8d89                                   ; $72a5: $01 $89 $8d
	add  b                                           ; $72a8: $80
	inc  bc                                          ; $72a9: $03
	inc  bc                                          ; $72aa: $03
	ldh  [$98], a                                    ; $72ab: $e0 $98
	ld   a, a                                        ; $72ad: $7f
	rst  $38                                         ; $72ae: $ff
	add  b                                           ; $72af: $80
	ld   a, a                                        ; $72b0: $7f
	nop                                              ; $72b1: $00
	rst  $38                                         ; $72b2: $ff
	add  b                                           ; $72b3: $80
	ei                                               ; $72b4: $fb
	add  b                                           ; $72b5: $80
	rst  $30                                         ; $72b6: $f7
	add  c                                           ; $72b7: $81
	rst  $28                                         ; $72b8: $ef
	ld   [bc], a                                     ; $72b9: $02
	ld   l, a                                        ; $72ba: $6f
	sbc  $5e                                         ; $72bb: $de $5e
	adc  b                                           ; $72bd: $88
	rst  $38                                         ; $72be: $ff

jr_095_72bf:
	add  b                                           ; $72bf: $80
	cp   $80                                         ; $72c0: $fe $80
	db   $fc                                         ; $72c2: $fc
	add  b                                           ; $72c3: $80
	db   $f4                                         ; $72c4: $f4
	add  b                                           ; $72c5: $80
	rst  $38                                         ; $72c6: $ff
	add  b                                           ; $72c7: $80
	rst  JumpTable                                         ; $72c8: $df
	add  b                                           ; $72c9: $80
	cp   a                                           ; $72ca: $bf
	add  d                                           ; $72cb: $82
	ld   a, a                                        ; $72cc: $7f
	add  b                                           ; $72cd: $80
	rst  $38                                         ; $72ce: $ff
	add  b                                           ; $72cf: $80
	ei                                               ; $72d0: $fb
	add  b                                           ; $72d1: $80
	ld   a, [$ff86]                                  ; $72d2: $fa $86 $ff
	add  b                                           ; $72d5: $80
	cp   $80                                         ; $72d6: $fe $80
	rst  $38                                         ; $72d8: $ff
	add  b                                           ; $72d9: $80
	cp   $80                                         ; $72da: $fe $80
	rst  $38                                         ; $72dc: $ff
	add  b                                           ; $72dd: $80
	ld   a, [$fd02]                                  ; $72de: $fa $02 $fd
	db   $fc                                         ; $72e1: $fc
	rst  $38                                         ; $72e2: $ff
	add  c                                           ; $72e3: $81
	cp   $80                                         ; $72e4: $fe $80
	ccf                                              ; $72e6: $3f
	add  b                                           ; $72e7: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72e8: $cf
	add  b                                           ; $72e9: $80
	ld   [hl], e                                     ; $72ea: $73
	add  b                                           ; $72eb: $80
	sbc  l                                           ; $72ec: $9d
	add  b                                           ; $72ed: $80
	cp   e                                           ; $72ee: $bb
	inc  bc                                          ; $72ef: $03
	and  h                                           ; $72f0: $a4
	inc  h                                           ; $72f1: $24
	ld   b, e                                        ; $72f2: $43
	jp   $1d80                                       ; $72f3: $c3 $80 $1d


	add  b                                           ; $72f6: $80
	ld   a, l                                        ; $72f7: $7d
	dec  b                                           ; $72f8: $05
	ccf                                              ; $72f9: $3f
	jr   c, jr_095_7285                              ; $72fa: $38 $89

	adc  h                                           ; $72fc: $8c
	sub  e                                           ; $72fd: $93
	sub  c                                           ; $72fe: $91
	add  b                                           ; $72ff: $80
	dec  de                                          ; $7300: $1b
	add  b                                           ; $7301: $80
	or   $80                                         ; $7302: $f6 $80
	add  sp, -$80                                    ; $7304: $e8 $80
	sub  $80                                         ; $7306: $d6 $80
	call $9b80                                       ; $7308: $cd $80 $9b
	add  b                                           ; $730b: $80
	ld   d, a                                        ; $730c: $57
	add  b                                           ; $730d: $80
	adc  a                                           ; $730e: $8f
	add  b                                           ; $730f: $80
	or   c                                           ; $7310: $b1
	add  b                                           ; $7311: $80
	ld   sp, $5182                                   ; $7312: $31 $82 $51
	add  [hl]                                        ; $7315: $86
	ld   [hl], c                                     ; $7316: $71
	add  b                                           ; $7317: $80
	dec  d                                           ; $7318: $15

jr_095_7319:
	add  b                                           ; $7319: $80
	ld   d, $82                                      ; $731a: $16 $82
	rla                                              ; $731c: $17
	add  b                                           ; $731d: $80
	ld   b, $80                                      ; $731e: $06 $80
	dec  b                                           ; $7320: $05
	add  b                                           ; $7321: $80
	dec  d                                           ; $7322: $15
	add  b                                           ; $7323: $80
	inc  de                                          ; $7324: $13
	add  h                                           ; $7325: $84
	nop                                              ; $7326: $00
	add  b                                           ; $7327: $80
	rra                                              ; $7328: $1f
	add  b                                           ; $7329: $80
	inc  de                                          ; $732a: $13
	add  b                                           ; $732b: $80
	dec  d                                           ; $732c: $15
	nop                                              ; $732d: $00
	ccf                                              ; $732e: $3f
	add  b                                           ; $732f: $80
	rra                                              ; $7330: $1f
	ld   [bc], a                                     ; $7331: $02
	add  hl, de                                      ; $7332: $19
	ld   h, $18                                      ; $7333: $26 $18
	add  b                                           ; $7335: $80
	nop                                              ; $7336: $00
	ld   bc, $0018                                   ; $7337: $01 $18 $00
	add  b                                           ; $733a: $80
	rst  $38                                         ; $733b: $ff
	add  b                                           ; $733c: $80
	jr   jr_095_72bf                                 ; $733d: $18 $80

	jr   z, @-$7e                                    ; $733f: $28 $80

	ret  z                                           ; $7341: $c8

	inc  b                                           ; $7342: $04
	rst  $38                                         ; $7343: $ff
	cp   a                                           ; $7344: $bf
	ld   h, [hl]                                     ; $7345: $66
	jr   nc, jr_095_7360                             ; $7346: $30 $18

	add  b                                           ; $7348: $80
	inc  b                                           ; $7349: $04
	nop                                              ; $734a: $00
	ld   b, $80                                      ; $734b: $06 $80
	push hl                                          ; $734d: $e5
	ld   bc, $cdc5                                   ; $734e: $01 $c5 $cd
	add  b                                           ; $7351: $80
	xor  l                                           ; $7352: $ad
	add  b                                           ; $7353: $80
	sub  l                                           ; $7354: $95
	add  b                                           ; $7355: $80
	add  c                                           ; $7356: $81
	add  b                                           ; $7357: $80
	db   $dd                                         ; $7358: $dd
	add  b                                           ; $7359: $80
	cp   l                                           ; $735a: $bd
	add  b                                           ; $735b: $80
	cp   e                                           ; $735c: $bb
	nop                                              ; $735d: $00
	ld   a, e                                        ; $735e: $7b
	add  b                                           ; $735f: $80

jr_095_7360:
	dec  sp                                          ; $7360: $3b
	inc  bc                                          ; $7361: $03
	add  hl, hl                                      ; $7362: $29
	dec  h                                           ; $7363: $25
	inc  d                                           ; $7364: $14
	inc  b                                           ; $7365: $04
	add  b                                           ; $7366: $80
	ld   b, d                                        ; $7367: $42
	ld   bc, $ec63                                   ; $7368: $01 $63 $ec
	add  b                                           ; $736b: $80
	add  sp, $00                                     ; $736c: $e8 $00
	ld   [$d280], a                                  ; $736e: $ea $80 $d2
	nop                                              ; $7371: $00
	ret  nc                                          ; $7372: $d0

	add  c                                           ; $7373: $81
	ld   d, h                                        ; $7374: $54
	nop                                              ; $7375: $00
	nop                                              ; $7376: $00
	add  c                                           ; $7377: $81
	adc  b                                           ; $7378: $88
	inc  bc                                          ; $7379: $03
	ld   [$b549], sp                                 ; $737a: $08 $49 $b5
	ld   a, [$f281]                                  ; $737d: $fa $81 $f2
	ld   bc, $6272                                   ; $7380: $01 $72 $62
	add  c                                           ; $7383: $81
	ld   [hl+], a                                    ; $7384: $22
	nop                                              ; $7385: $00
	ld   hl, $8580                                   ; $7386: $21 $80 $85
	inc  bc                                          ; $7389: $03
	and  l                                           ; $738a: $a5
	inc  h                                           ; $738b: $24
	ld   b, [hl]                                     ; $738c: $46
	sbc  c                                           ; $738d: $99
	add  c                                           ; $738e: $81
	cp   a                                           ; $738f: $bf
	add  b                                           ; $7390: $80
	ld   e, l                                        ; $7391: $5d
	inc  b                                           ; $7392: $04
	ld   e, [hl]                                     ; $7393: $5e
	ld   d, h                                        ; $7394: $54
	ld   b, l                                        ; $7395: $45
	ld   c, b                                        ; $7396: $48
	jr   nz, jr_095_7319                             ; $7397: $20 $80

	dec  h                                           ; $7399: $25
	inc  d                                           ; $739a: $14
	daa                                              ; $739b: $27
	inc  bc                                          ; $739c: $03
	ld   c, e                                        ; $739d: $4b
	and  [hl]                                        ; $739e: $a6
	db   $ec                                         ; $739f: $ec
	push af                                          ; $73a0: $f5
	or   $fa                                         ; $73a1: $f6 $fa
	ld   hl, sp+$7e                                  ; $73a3: $f8 $7e
	ld   d, h                                        ; $73a5: $54
	inc  d                                           ; $73a6: $14
	dec  h                                           ; $73a7: $25
	and  [hl]                                        ; $73a8: $a6
	ld   [hl-], a                                    ; $73a9: $32
	ld   [de], a                                     ; $73aa: $12
	sbc  d                                           ; $73ab: $9a
	jp   z, $a1cc                                    ; $73ac: $ca $cc $a1

	and  e                                           ; $73af: $a3
	add  d                                           ; $73b0: $82
	ld   d, b                                        ; $73b1: $50
	add  b                                           ; $73b2: $80
	sub  e                                           ; $73b3: $93
	add  b                                           ; $73b4: $80
	add  e                                           ; $73b5: $83
	add  b                                           ; $73b6: $80
	and  b                                           ; $73b7: $a0
	add  b                                           ; $73b8: $80
	and  d                                           ; $73b9: $a2
	inc  bc                                          ; $73ba: $03
	ld   hl, $d628                                   ; $73bb: $21 $28 $d6
	rst  JumpTable                                         ; $73be: $df
	add  b                                           ; $73bf: $80
	nop                                              ; $73c0: $00
	add  b                                           ; $73c1: $80
	ld   h, a                                        ; $73c2: $67
	add  b                                           ; $73c3: $80
	rst  ToBoot                                         ; $73c4: $c7
	add  b                                           ; $73c5: $80
	or   d                                           ; $73c6: $b2
	add  b                                           ; $73c7: $80
	ld   [hl], h                                     ; $73c8: $74
	add  b                                           ; $73c9: $80
	inc  de                                          ; $73ca: $13
	inc  bc                                          ; $73cb: $03
	nop                                              ; $73cc: $00
	ldh  [$81], a                                    ; $73cd: $e0 $81
	ld   [hl], c                                     ; $73cf: $71
	add  b                                           ; $73d0: $80
	ld   de, $9180                                   ; $73d1: $11 $80 $91
	ld   bc, $5554                                   ; $73d4: $01 $54 $55
	add  d                                           ; $73d7: $82
	rst  $10                                         ; $73d8: $d7
	add  b                                           ; $73d9: $80
	rla                                              ; $73da: $17
	inc  bc                                          ; $73db: $03
	db   $d3                                         ; $73dc: $d3
	rst  $10                                         ; $73dd: $d7
	dec  d                                           ; $73de: $15
	nop                                              ; $73df: $00
	add  b                                           ; $73e0: $80
	rla                                              ; $73e1: $17
	add  b                                           ; $73e2: $80
	dec  de                                          ; $73e3: $1b
	add  b                                           ; $73e4: $80
	dec  e                                           ; $73e5: $1d
	add  b                                           ; $73e6: $80
	ld   c, $80                                      ; $73e7: $0e $80
	db   $10                                         ; $73e9: $10
	add  d                                           ; $73ea: $82
	rra                                              ; $73eb: $1f
	ld   b, $24                                      ; $73ec: $06 $24
	sub  b                                           ; $73ee: $90
	sub  a                                           ; $73ef: $97
	sub  b                                           ; $73f0: $90
	or   d                                           ; $73f1: $b2
	sub  d                                           ; $73f2: $92
	sub  e                                           ; $73f3: $93
	add  c                                           ; $73f4: $81
	sub  b                                           ; $73f5: $90
	add  b                                           ; $73f6: $80
	or   a                                           ; $73f7: $b7
	add  b                                           ; $73f8: $80
	sub  b                                           ; $73f9: $90
	add  b                                           ; $73fa: $80
	or   a                                           ; $73fb: $b7
	nop                                              ; $73fc: $00
	ld   l, d                                        ; $73fd: $6a
	add  e                                           ; $73fe: $83
	dec  b                                           ; $73ff: $05
	inc  bc                                          ; $7400: $03
	db   $fd                                         ; $7401: $fd
	inc  bc                                          ; $7402: $03
	ld   bc, $8000                                   ; $7403: $01 $00 $80
	ldh  [$80], a                                    ; $7406: $e0 $80
	rra                                              ; $7408: $1f
	add  b                                           ; $7409: $80
	ldh  [rSB], a                                    ; $740a: $e0 $01
	add  c                                           ; $740c: $81
	ld   [hl], c                                     ; $740d: $71
	add  b                                           ; $740e: $80
	ld   bc, $0000                                   ; $740f: $01 $00 $00
	add  c                                           ; $7412: $81
	ld   [$f800], sp                                 ; $7413: $08 $00 $f8
	add  c                                           ; $7416: $81
	nop                                              ; $7417: $00
	add  b                                           ; $7418: $80
	ldh  a, [$80]                                    ; $7419: $f0 $80
	rlca                                             ; $741b: $07
	add  b                                           ; $741c: $80
	ld   l, a                                        ; $741d: $6f
	add  d                                           ; $741e: $82
	ld   c, [hl]                                     ; $741f: $4e
	nop                                              ; $7420: $00
	adc  [hl]                                        ; $7421: $8e
	add  c                                           ; $7422: $81
	ld   c, $01                                      ; $7423: $0e $01
	adc  [hl]                                        ; $7425: $8e
	ld   c, [hl]                                     ; $7426: $4e
	add  b                                           ; $7427: $80
	ld   b, [hl]                                     ; $7428: $46
	add  b                                           ; $7429: $80
	ld   d, [hl]                                     ; $742a: $56
	add  c                                           ; $742b: $81
	ld   b, b                                        ; $742c: $40
	inc  bc                                          ; $742d: $03
	ld   c, $2e                                      ; $742e: $0e $2e
	ld   c, a                                        ; $7430: $4f
	rrca                                             ; $7431: $0f
	add  b                                           ; $7432: $80
	ld   [$8003], sp                                 ; $7433: $08 $03 $80
	and  d                                           ; $7436: $a2
	and  h                                           ; $7437: $a4
	or   [hl]                                        ; $7438: $b6
	add  b                                           ; $7439: $80
	add  b                                           ; $743a: $80
	inc  de                                          ; $743b: $13
	add  h                                           ; $743c: $84
	or   [hl]                                        ; $743d: $b6
	ld   h, h                                        ; $743e: $64
	ld   h, [hl]                                     ; $743f: $66
	ld   h, h                                        ; $7440: $64
	dec  h                                           ; $7441: $25
	inc  h                                           ; $7442: $24
	ld   [hl], $b0                                   ; $7443: $36 $b0
	sub  b                                           ; $7445: $90
	ld   d, b                                        ; $7446: $50
	ld   a, [bc]                                     ; $7447: $0a
	ld   [$0494], sp                                 ; $7448: $08 $94 $04
	add  hl, bc                                      ; $744b: $09
	nop                                              ; $744c: $00
	reti                                             ; $744d: $d9


	ld   bc, $8000                                   ; $744e: $01 $00 $80
	ld   [hl], h                                     ; $7451: $74
	add  b                                           ; $7452: $80
	halt                                             ; $7453: $76
	add  b                                           ; $7454: $80
	rst  ToBoot                                         ; $7455: $c7
	inc  bc                                          ; $7456: $03
	add  e                                           ; $7457: $83
	inc  de                                          ; $7458: $13
	add  hl, bc                                      ; $7459: $09
	ld   e, e                                        ; $745a: $5b
	add  b                                           ; $745b: $80
	nop                                              ; $745c: $00
	ld   [bc], a                                     ; $745d: $02
	db   $10                                         ; $745e: $10
	inc  e                                           ; $745f: $1c
	adc  $80                                         ; $7460: $ce $80

jr_095_7462:
	and  $80                                         ; $7462: $e6 $80
	ld   h, [hl]                                     ; $7464: $66
	add  d                                           ; $7465: $82
	ld   [hl-], a                                    ; $7466: $32
	ld   [bc], a                                     ; $7467: $02
	ld   [de], a                                     ; $7468: $12
	sub  d                                           ; $7469: $92
	add  b                                           ; $746a: $80
	add  d                                           ; $746b: $82
	add  h                                           ; $746c: $84
	add  b                                           ; $746d: $80
	dec  bc                                          ; $746e: $0b
	ld   bc, $0908                                   ; $746f: $01 $08 $09
	add  c                                           ; $7472: $81
	dec  de                                          ; $7473: $1b
	jr   jr_095_74b0                                 ; $7474: $18 $3a

	dec  sp                                          ; $7476: $3b
	add  hl, hl                                      ; $7477: $29
	dec  sp                                          ; $7478: $3b
	ld   a, [hl-]                                    ; $7479: $3a
	ld   a, e                                        ; $747a: $7b
	dec  de                                          ; $747b: $1b
	ld   e, e                                        ; $747c: $5b
	inc  b                                           ; $747d: $04
	inc  c                                           ; $747e: $0c
	ld   a, a                                        ; $747f: $7f
	add  e                                           ; $7480: $83
	ld   [hl], e                                     ; $7481: $73
	ldh  a, [$7f]                                    ; $7482: $f0 $7f
	rst  JumpTable                                         ; $7484: $df
	ld   a, l                                        ; $7485: $7d
	rst  $30                                         ; $7486: $f7
	ld   e, a                                        ; $7487: $5f
	rst  $38                                         ; $7488: $ff
	dec  d                                           ; $7489: $15
	rst  $38                                         ; $748a: $ff
	pop  hl                                          ; $748b: $e1
	rst  $38                                         ; $748c: $ff
	rlca                                             ; $748d: $07
	add  c                                           ; $748e: $81
	rla                                              ; $748f: $17
	inc  bc                                          ; $7490: $03
	sub  c                                           ; $7491: $91
	ld   de, $1777                                   ; $7492: $11 $77 $17
	add  b                                           ; $7495: $80
	rst  $10                                         ; $7496: $d7
	add  h                                           ; $7497: $84
	rst  $30                                         ; $7498: $f7
	nop                                              ; $7499: $00
	xor  $81                                         ; $749a: $ee $81
	rra                                              ; $749c: $1f
	add  b                                           ; $749d: $80
	ld   e, $80                                      ; $749e: $1e $80
	db   $10                                         ; $74a0: $10
	add  b                                           ; $74a1: $80
	inc  de                                          ; $74a2: $13
	add  b                                           ; $74a3: $80
	db   $10                                         ; $74a4: $10
	dec  b                                           ; $74a5: $05
	inc  de                                          ; $74a6: $13
	inc  bc                                          ; $74a7: $03
	inc  de                                          ; $74a8: $13
	db   $10                                         ; $74a9: $10
	inc  sp                                          ; $74aa: $33
	or   b                                           ; $74ab: $b0
	add  e                                           ; $74ac: $83
	or   d                                           ; $74ad: $b2
	add  c                                           ; $74ae: $81
	ld   [hl-], a                                    ; $74af: $32

jr_095_74b0:
	add  d                                           ; $74b0: $82
	ld   [hl], $80                                   ; $74b1: $36 $80
	jr   nc, jr_095_74b7                             ; $74b3: $30 $02

	rst  $28                                         ; $74b5: $ef
	rst  $38                                         ; $74b6: $ff

jr_095_74b7:
	db   $ed                                         ; $74b7: $ed
	add  c                                           ; $74b8: $81
	pop  de                                          ; $74b9: $d1
	add  c                                           ; $74ba: $81
	db   $fd                                         ; $74bb: $fd
	nop                                              ; $74bc: $00
	pop  bc                                          ; $74bd: $c1
	add  h                                           ; $74be: $84
	rst  $38                                         ; $74bf: $ff
	add  b                                           ; $74c0: $80
	ld   hl, sp+$00                                  ; $74c1: $f8 $00
	or   [hl]                                        ; $74c3: $b6
	add  c                                           ; $74c4: $81
	ld   b, l                                        ; $74c5: $45
	add  c                                           ; $74c6: $81
	rst  $30                                         ; $74c7: $f7
	nop                                              ; $74c8: $00
	inc  b                                           ; $74c9: $04
	add  e                                           ; $74ca: $83
	rst  $38                                         ; $74cb: $ff
	inc  b                                           ; $74cc: $04
	rlca                                             ; $74cd: $07
	ld   a, [$da42]                                  ; $74ce: $fa $42 $da
	ld   d, d                                        ; $74d1: $52
	add  b                                           ; $74d2: $80
	ld   d, h                                        ; $74d3: $54
	add  b                                           ; $74d4: $80
	call nc, $dc03                                   ; $74d5: $d4 $03 $dc
	ld   e, h                                        ; $74d8: $5c
	ret  c                                           ; $74d9: $d8

	ret  nc                                          ; $74da: $d0

	add  b                                           ; $74db: $80
	call nc, $d680                                   ; $74dc: $d4 $80 $d6
	nop                                              ; $74df: $00
	jr   nc, jr_095_7462                             ; $74e0: $30 $80

	add  [hl]                                        ; $74e2: $86
	dec  c                                           ; $74e3: $0d
	nop                                              ; $74e4: $00
	ld   c, a                                        ; $74e5: $4f
	ld   b, b                                        ; $74e6: $40
	ldh  [hScriptOpcodeParams], a                                    ; $74e7: $e0 $a0
	cp   a                                           ; $74e9: $bf
	add  b                                           ; $74ea: $80
	sbc  e                                           ; $74eb: $9b
	and  b                                           ; $74ec: $a0
	inc  [hl]                                        ; $74ed: $34
	jr   nz, jr_095_7522                             ; $74ee: $20 $32

	jr   nz, @-$19                                   ; $74f0: $20 $e5

	add  b                                           ; $74f2: $80
	ld   [bc], a                                     ; $74f3: $02
	rlca                                             ; $74f4: $07
	inc  bc                                          ; $74f5: $03
	ld   h, a                                        ; $74f6: $67
	ld   bc, $00c3                                   ; $74f7: $01 $c3 $00
	adc  c                                           ; $74fa: $89
	ld   [$8138], sp                                 ; $74fb: $08 $38 $81
	jr   jr_095_7502                                 ; $74fe: $18 $02

	jr   nz, jr_095_7502                             ; $7500: $20 $00

jr_095_7502:
	cp   h                                           ; $7502: $bc
	add  b                                           ; $7503: $80
	jr   jr_095_7513                                 ; $7504: $18 $0d

	add  b                                           ; $7506: $80
	dec  a                                           ; $7507: $3d
	nop                                              ; $7508: $00
	add  d                                           ; $7509: $82
	add  c                                           ; $750a: $81
	rst  $38                                         ; $750b: $ff
	ld   bc, $016d                                   ; $750c: $01 $6d $01
	sub  l                                           ; $750f: $95
	ld   bc, $0125                                   ; $7510: $01 $25 $01

jr_095_7513:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7513: $cf
	add  b                                           ; $7514: $80
	sub  h                                           ; $7515: $94
	add  b                                           ; $7516: $80
	ld   e, h                                        ; $7517: $5c
	add  b                                           ; $7518: $80
	call c, $d804                                    ; $7519: $dc $04 $d8
	sbc  $d6                                         ; $751c: $de $d6
	call z, $808c                                    ; $751e: $cc $8c $80
	add  b                                           ; $7521: $80

jr_095_7522:
	rlca                                             ; $7522: $07
	adc  [hl]                                        ; $7523: $8e
	ld   c, $73                                      ; $7524: $0e $73
	dec  sp                                          ; $7526: $3b
	dec  de                                          ; $7527: $1b
	ld   l, b                                        ; $7528: $68
	ld   [$803b], sp                                 ; $7529: $08 $3b $80
	cp   e                                           ; $752c: $bb
	ld   bc, $dbc8                                   ; $752d: $01 $c8 $db
	add  b                                           ; $7530: $80
	reti                                             ; $7531: $d9


	inc  b                                           ; $7532: $04
	ret  c                                           ; $7533: $d8

	sbc  e                                           ; $7534: $9b
	sbc  b                                           ; $7535: $98
	adc  e                                           ; $7536: $8b
	or   h                                           ; $7537: $b4
	add  b                                           ; $7538: $80
	rst  $38                                         ; $7539: $ff
	ld   b, $7f                                      ; $753a: $06 $7f
	ld   [de], a                                     ; $753c: $12
	ld   [$fa8b], a                                  ; $753d: $ea $8b $fa
	add  hl, bc                                      ; $7540: $09
	ei                                               ; $7541: $fb
	add  b                                           ; $7542: $80
	cp   d                                           ; $7543: $ba
	inc  b                                           ; $7544: $04
	sbc  e                                           ; $7545: $9b
	ei                                               ; $7546: $fb
	sbc  d                                           ; $7547: $9a
	ld   a, [$83fd]                                  ; $7548: $fa $fd $83
	rla                                              ; $754b: $17
	nop                                              ; $754c: $00
	rst  $30                                         ; $754d: $f7
	add  e                                           ; $754e: $83
	rla                                              ; $754f: $17
	add  b                                           ; $7550: $80
	ld   [hl], a                                     ; $7551: $77
	add  b                                           ; $7552: $80
	scf                                              ; $7553: $37
	nop                                              ; $7554: $00
	push af                                          ; $7555: $f5
	add  c                                           ; $7556: $81
	rra                                              ; $7557: $1f
	rlca                                             ; $7558: $07
	rrca                                             ; $7559: $0f
	rra                                              ; $755a: $1f
	inc  e                                           ; $755b: $1c
	rra                                              ; $755c: $1f
	inc  e                                           ; $755d: $1c
	rra                                              ; $755e: $1f
	inc  e                                           ; $755f: $1c
	inc  c                                           ; $7560: $0c
	add  b                                           ; $7561: $80
	rra                                              ; $7562: $1f
	add  b                                           ; $7563: $80
	ld   c, $00                                      ; $7564: $0e $00
	add  hl, sp                                      ; $7566: $39
	add  l                                           ; $7567: $85
	ld   [hl-], a                                    ; $7568: $32
	nop                                              ; $7569: $00
	db   $10                                         ; $756a: $10
	add  d                                           ; $756b: $82
	scf                                              ; $756c: $37
	add  c                                           ; $756d: $81
	ccf                                              ; $756e: $3f
	nop                                              ; $756f: $00
	ret  nz                                          ; $7570: $c0

	add  l                                           ; $7571: $85
	rst  $38                                         ; $7572: $ff
	nop                                              ; $7573: $00
	nop                                              ; $7574: $00
	add  l                                           ; $7575: $85
	rst  $38                                         ; $7576: $ff
	nop                                              ; $7577: $00
	nop                                              ; $7578: $00
	add  l                                           ; $7579: $85
	rst  $38                                         ; $757a: $ff
	nop                                              ; $757b: $00
	nop                                              ; $757c: $00
	add  e                                           ; $757d: $83
	rst  $38                                         ; $757e: $ff
	add  b                                           ; $757f: $80
	db   $fc                                         ; $7580: $fc
	ld   bc, $d669                                   ; $7581: $01 $69 $d6
	add  b                                           ; $7584: $80
	push de                                          ; $7585: $d5
	add  b                                           ; $7586: $80
	ret                                              ; $7587: $c9


	inc  de                                          ; $7588: $13
	call c, Call_095_49cc                            ; $7589: $dc $cc $49
	ret                                              ; $758c: $c9


	set  3, c                                        ; $758d: $cb $d9
	push hl                                          ; $758f: $e5
	and  e                                           ; $7590: $a3
	inc  [hl]                                        ; $7591: $34
	jr   nc, @+$21                                   ; $7592: $30 $1f

	add  b                                           ; $7594: $80
	ret  nc                                          ; $7595: $d0

	ret  nz                                          ; $7596: $c0

	adc  b                                           ; $7597: $88
	add  b                                           ; $7598: $80
	ld   b, $08                                      ; $7599: $06 $08
	ret                                              ; $759b: $c9


	call c, $9c80                                    ; $759c: $dc $80 $9c
	rlca                                             ; $759f: $07
	dec  e                                           ; $75a0: $1d
	inc  a                                           ; $75a1: $3c
	ld   b, b                                        ; $75a2: $40
	nop                                              ; $75a3: $00
	cp   h                                           ; $75a4: $bc
	jr   jr_095_75d1                                 ; $75a5: $18 $2a

	inc  c                                           ; $75a7: $0c
	add  d                                           ; $75a8: $82
	nop                                              ; $75a9: $00
	add  b                                           ; $75aa: $80
	add  b                                           ; $75ab: $80
	rla                                              ; $75ac: $17
	ldh  [rAUD4LEN], a                               ; $75ad: $e0 $20
	ccf                                              ; $75af: $3f
	ld   c, $8e                                      ; $75b0: $0e $8e
	jr   nc, jr_095_7602                             ; $75b2: $30 $4e

	ld   bc, $0203                                   ; $75b4: $01 $03 $02
	ld   b, $05                                      ; $75b7: $06 $05
	dec  c                                           ; $75b9: $0d
	ld   [$2538], sp                                 ; $75ba: $08 $38 $25
	push hl                                          ; $75bd: $e5
	sbc  b                                           ; $75be: $98
	sbc  [hl]                                        ; $75bf: $9e
	ld   bc, $047f                                   ; $75c0: $01 $7f $04
	ld   [hl], e                                     ; $75c3: $73
	rrca                                             ; $75c4: $0f
	add  b                                           ; $75c5: $80
	adc  a                                           ; $75c6: $8f
	dec  b                                           ; $75c7: $05
	rlca                                             ; $75c8: $07
	rst  $20                                         ; $75c9: $e7
	ldh  [rSVBK], a                                  ; $75ca: $e0 $70
	ldh  a, [$b8]                                    ; $75cc: $f0 $b8
	add  b                                           ; $75ce: $80
	add  c                                           ; $75cf: $81
	add  hl, bc                                      ; $75d0: $09

jr_095_75d1:
	dec  b                                           ; $75d1: $05
	ld   bc, $bebc                                   ; $75d2: $01 $bc $be
	ld   l, [hl]                                     ; $75d5: $6e
	ld   d, e                                        ; $75d6: $53
	ld   e, b                                        ; $75d7: $58
	ld   e, e                                        ; $75d8: $5b
	ld   hl, sp-$0d                                  ; $75d9: $f8 $f3
	add  b                                           ; $75db: $80
	inc  sp                                          ; $75dc: $33
	rrca                                             ; $75dd: $0f
	ret  nc                                          ; $75de: $d0

	sbc  b                                           ; $75df: $98
	cp   d                                           ; $75e0: $ba
	ret  c                                           ; $75e1: $d8

	db   $db                                         ; $75e2: $db
	ld   a, [$0e0f]                                  ; $75e3: $fa $0f $0e
	ld   bc, $0afb                                   ; $75e6: $01 $fb $0a
	ld   a, [$fb0b]                                  ; $75e9: $fa $0b $fb
	ld   a, [$80fe]                                  ; $75ec: $fa $fe $80
	nop                                              ; $75ef: $00
	add  b                                           ; $75f0: $80
	ld   a, a                                        ; $75f1: $7f
	nop                                              ; $75f2: $00
	rst  $38                                         ; $75f3: $ff
	add  b                                           ; $75f4: $80
	cp   $01                                         ; $75f5: $fe $01
	ld   bc, $81e7                                   ; $75f7: $01 $e7 $81
	rla                                              ; $75fa: $17
	add  b                                           ; $75fb: $80
	rst  $30                                         ; $75fc: $f7
	add  d                                           ; $75fd: $82
	rla                                              ; $75fe: $17
	add  c                                           ; $75ff: $81
	rst  $30                                         ; $7600: $f7
	add  b                                           ; $7601: $80

jr_095_7602:
	rla                                              ; $7602: $17
	add  b                                           ; $7603: $80
	rst  $30                                         ; $7604: $f7
	nop                                              ; $7605: $00
	dec  e                                           ; $7606: $1d
	add  b                                           ; $7607: $80
	rra                                              ; $7608: $1f
	add  d                                           ; $7609: $82
	inc  c                                           ; $760a: $0c
	inc  b                                           ; $760b: $04
	rrca                                             ; $760c: $0f
	inc  e                                           ; $760d: $1c
	rrca                                             ; $760e: $0f
	inc  c                                           ; $760f: $0c
	inc  d                                           ; $7610: $14
	add  c                                           ; $7611: $81
	nop                                              ; $7612: $00
	ld   bc, $3e1e                                   ; $7613: $01 $1e $3e
	add  d                                           ; $7616: $82
	nop                                              ; $7617: $00
	add  b                                           ; $7618: $80
	ld   bc, $3f81                                   ; $7619: $01 $81 $3f
	add  b                                           ; $761c: $80
	ld   a, [hl+]                                    ; $761d: $2a
	add  b                                           ; $761e: $80
	dec  d                                           ; $761f: $15
	ld   bc, $d52a                                   ; $7620: $01 $2a $d5
	add  e                                           ; $7623: $83
	nop                                              ; $7624: $00
	add  c                                           ; $7625: $81
	rst  $38                                         ; $7626: $ff
	add  b                                           ; $7627: $80
	ld   d, l                                        ; $7628: $55
	add  b                                           ; $7629: $80
	xor  d                                           ; $762a: $aa
	add  b                                           ; $762b: $80
	ld   d, l                                        ; $762c: $55
	ld   bc, $5fa0                                   ; $762d: $01 $a0 $5f
	add  c                                           ; $7630: $81
	nop                                              ; $7631: $00
	add  b                                           ; $7632: $80
	ccf                                              ; $7633: $3f
	ld   [bc], a                                     ; $7634: $02
	rst  $38                                         ; $7635: $ff
	ld   [$80eb], a                                  ; $7636: $ea $eb $80
	ld   d, l                                        ; $7639: $55
	ld   bc, $a8a9                                   ; $763a: $01 $a9 $a8
	add  b                                           ; $763d: $80
	ld   d, b                                        ; $763e: $50
	ld   c, $02                                      ; $763f: $0e $02
	ld   l, h                                        ; $7641: $6c
	ld   h, $16                                      ; $7642: $26 $16
	ld   c, [hl]                                     ; $7644: $4e
	inc  c                                           ; $7645: $0c
	dec  e                                           ; $7646: $1d
	add  c                                           ; $7647: $81
	ld   [bc], a                                     ; $7648: $02
	ld   [hl-], a                                    ; $7649: $32
	sub  b                                           ; $764a: $90
	ld   b, e                                        ; $764b: $43
	inc  hl                                          ; $764c: $23
	adc  a                                           ; $764d: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $764e: $cf
	add  b                                           ; $764f: $80
	ccf                                              ; $7650: $3f
	ld   bc, $00fc                                   ; $7651: $01 $fc $00
	add  c                                           ; $7654: $81
	db   $fd                                         ; $7655: $fd
	add  b                                           ; $7656: $80
	ld   d, c                                        ; $7657: $51
	ld   [bc], a                                     ; $7658: $02
	and  c                                           ; $7659: $a1

jr_095_765a:
	xor  a                                           ; $765a: $af
	rrca                                             ; $765b: $0f
	add  b                                           ; $765c: $80
	db   $fd                                         ; $765d: $fd
	add  b                                           ; $765e: $80
	db   $fc                                         ; $765f: $fc
	add  b                                           ; $7660: $80
	ld   hl, sp+$13                                  ; $7661: $f8 $13
	dec  e                                           ; $7663: $1d
	ret  nz                                          ; $7664: $c0

	rst  ToBoot                                         ; $7665: $c7
	ld   b, c                                        ; $7666: $41
	ld   e, e                                        ; $7667: $5b
	ld   h, [hl]                                     ; $7668: $66
	rst  $20                                         ; $7669: $e7
	xor  l                                           ; $766a: $ad
	xor  a                                           ; $766b: $af
	adc  e                                           ; $766c: $8b
	adc  b                                           ; $766d: $88
	sbc  b                                           ; $766e: $98
	sbc  a                                           ; $766f: $9f
	sub  a                                           ; $7670: $97
	jr   jr_095_769b                                 ; $7671: $18 $28

	and  e                                           ; $7673: $a3
	ld   b, e                                        ; $7674: $43
	rst  $38                                         ; $7675: $ff
	ccf                                              ; $7676: $3f
	add  d                                           ; $7677: $82
	rst  $38                                         ; $7678: $ff
	add  b                                           ; $7679: $80
	cp   $80                                         ; $767a: $fe $80
	ld   sp, hl                                      ; $767c: $f9
	add  b                                           ; $767d: $80
	cp   a                                           ; $767e: $bf
	add  b                                           ; $767f: $80
	ld   a, [hl]                                     ; $7680: $7e
	nop                                              ; $7681: $00
	add  b                                           ; $7682: $80
	add  b                                           ; $7683: $80
	cp   a                                           ; $7684: $bf
	ld   [bc], a                                     ; $7685: $02
	and  b                                           ; $7686: $a0
	xor  a                                           ; $7687: $af
	add  b                                           ; $7688: $80
	add  b                                           ; $7689: $80
	nop                                              ; $768a: $00
	inc  bc                                          ; $768b: $03
	ld   a, h                                        ; $768c: $7c
	ld   [hl], b                                     ; $768d: $70
	cp   a                                           ; $768e: $bf
	cp   h                                           ; $768f: $bc
	add  b                                           ; $7690: $80
	ld   a, a                                        ; $7691: $7f
	add  b                                           ; $7692: $80
	rst  $38                                         ; $7693: $ff
	ld   de, $3637                                   ; $7694: $11 $37 $36
	ld   a, d                                        ; $7697: $7a
	ld   [hl], e                                     ; $7698: $73
	or   l                                           ; $7699: $b5
	dec  a                                           ; $769a: $3d

jr_095_769b:
	ld   b, c                                        ; $769b: $41
	ld   bc, $0222                                   ; $769c: $01 $22 $02
	add  a                                           ; $769f: $87
	rlca                                             ; $76a0: $07
	rst  $30                                         ; $76a1: $f7
	add  a                                           ; $76a2: $87
	ldh  a, [rAUD4LEN]                               ; $76a3: $f0 $20
	pop  bc                                          ; $76a5: $c1
	ld   a, [hl]                                     ; $76a6: $7e
	add  b                                           ; $76a7: $80
	nop                                              ; $76a8: $00
	inc  bc                                          ; $76a9: $03
	ld   a, h                                        ; $76aa: $7c
	inc  a                                           ; $76ab: $3c
	ld   h, e                                        ; $76ac: $63
	ld   b, e                                        ; $76ad: $43
	add  b                                           ; $76ae: $80
	ret  nz                                          ; $76af: $c0

	add  b                                           ; $76b0: $80
	ld   b, b                                        ; $76b1: $40
	add  b                                           ; $76b2: $80
	add  b                                           ; $76b3: $80
	ld   [bc], a                                     ; $76b4: $02
	nop                                              ; $76b5: $00
	ld   b, b                                        ; $76b6: $40
	cp   c                                           ; $76b7: $b9
	add  e                                           ; $76b8: $83
	rla                                              ; $76b9: $17
	add  b                                           ; $76ba: $80
	rst  $30                                         ; $76bb: $f7
	add  d                                           ; $76bc: $82
	rla                                              ; $76bd: $17
	add  b                                           ; $76be: $80
	ld   de, $1780                                   ; $76bf: $11 $80 $17
	nop                                              ; $76c2: $00
	xor  $83                                         ; $76c3: $ee $83
	nop                                              ; $76c5: $00
	add  b                                           ; $76c6: $80
	inc  bc                                          ; $76c7: $03
	add  b                                           ; $76c8: $80
	rrca                                             ; $76c9: $0f
	add  l                                           ; $76ca: $85
	rra                                              ; $76cb: $1f
	add  b                                           ; $76cc: $80
	db   $10                                         ; $76cd: $10
	add  c                                           ; $76ce: $81
	nop                                              ; $76cf: $00
	inc  bc                                          ; $76d0: $03
	rra                                              ; $76d1: $1f
	nop                                              ; $76d2: $00
	jr   nz, jr_095_76d5                             ; $76d3: $20 $00

jr_095_76d5:
	add  b                                           ; $76d5: $80
	ld   a, [de]                                     ; $76d6: $1a
	add  b                                           ; $76d7: $80
	jr   nz, jr_095_765a                             ; $76d8: $20 $80

	nop                                              ; $76da: $00
	nop                                              ; $76db: $00
	ccf                                              ; $76dc: $3f
	add  c                                           ; $76dd: $81
	nop                                              ; $76de: $00
	inc  de                                          ; $76df: $13
	ccf                                              ; $76e0: $3f
	nop                                              ; $76e1: $00
	jp   Jump_095_6f02                               ; $76e2: $c3 $02 $6f


	ld   l, l                                        ; $76e5: $6d
	add  a                                           ; $76e6: $87
	add  e                                           ; $76e7: $83
	ld   [bc], a                                     ; $76e8: $02
	nop                                              ; $76e9: $00
	rrca                                             ; $76ea: $0f
	ld   bc, $04f4                                   ; $76eb: $01 $f4 $04
	db   $e4                                         ; $76ee: $e4
	dec  b                                           ; $76ef: $05
	ld   a, l                                        ; $76f0: $7d
	add  hl, de                                      ; $76f1: $19
	db   $fd                                         ; $76f2: $fd
	ld   a, l                                        ; $76f3: $7d
	add  b                                           ; $76f4: $80
	db   $fd                                         ; $76f5: $fd
	add  b                                           ; $76f6: $80
	ld   a, l                                        ; $76f7: $7d
	add  b                                           ; $76f8: $80
	db   $fd                                         ; $76f9: $fd
	add  b                                           ; $76fa: $80
	cp   l                                           ; $76fb: $bd
	nop                                              ; $76fc: $00
	ld   a, $83                                      ; $76fd: $3e $83
	cp   a                                           ; $76ff: $bf
	add  d                                           ; $7700: $82
	cp   e                                           ; $7701: $bb
	add  c                                           ; $7702: $81
	or   b                                           ; $7703: $b0
	add  b                                           ; $7704: $80
	or   l                                           ; $7705: $b5
	ld   bc, $7ab2                                   ; $7706: $01 $b2 $7a
	add  b                                           ; $7709: $80
	ld   a, [$f980]                                  ; $770a: $fa $80 $f9
	ld   [de], a                                     ; $770d: $12
	ld   hl, sp-$20                                  ; $770e: $f8 $e0
	and  $87                                         ; $7710: $e6 $87
	sbc  c                                           ; $7712: $99
	rra                                              ; $7713: $1f
	ld   h, a                                        ; $7714: $67
	ld   a, a                                        ; $7715: $7f
	sbc  a                                           ; $7716: $9f
	rst  $38                                         ; $7717: $ff
	ld   a, a                                        ; $7718: $7f
	rra                                              ; $7719: $1f
	ld   e, a                                        ; $771a: $5f
	ld   c, a                                        ; $771b: $4f
	adc  a                                           ; $771c: $8f
	add  a                                           ; $771d: $87
	scf                                              ; $771e: $37
	rst  $30                                         ; $771f: $f7
	rst  ToBoot                                         ; $7720: $c7
	sbc  [hl]                                        ; $7721: $9e
	rst  $38                                         ; $7722: $ff
	add  b                                           ; $7723: $80
	ld   a, a                                        ; $7724: $7f
	add  b                                           ; $7725: $80
	ld   l, a                                        ; $7726: $6f
	add  b                                           ; $7727: $80
	ld   e, a                                        ; $7728: $5f
	add  b                                           ; $7729: $80
	ld   e, [hl]                                     ; $772a: $5e
	rrca                                             ; $772b: $0f
	ld   hl, sp-$37                                  ; $772c: $f8 $c9
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $772e: $cf
	and  $e7                                         ; $772f: $e6 $e7
	ei                                               ; $7731: $fb
	db   $f4                                         ; $7732: $f4
	ldh  a, [$c0]                                    ; $7733: $f0 $c0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7735: $cf
	cp   a                                           ; $7736: $bf
	adc  h                                           ; $7737: $8c
	ld   e, h                                        ; $7738: $5c
	ld   [de], a                                     ; $7739: $12
	ld   [hl-], a                                    ; $773a: $32
	xor  a                                           ; $773b: $af
	add  b                                           ; $773c: $80
	ldh  [$03], a                                    ; $773d: $e0 $03
	xor  $c0                                         ; $773f: $ee $c0
	rst  JumpTable                                         ; $7741: $df
	ld   e, $80                                      ; $7742: $1e $80
	ccf                                              ; $7744: $3f
	add  hl, bc                                      ; $7745: $09
	dec  de                                          ; $7746: $1b
	sbc  e                                           ; $7747: $9b
	sbc  l                                           ; $7748: $9d
	ld   e, l                                        ; $7749: $5d
	ld   e, [hl]                                     ; $774a: $5e
	sbc  [hl]                                        ; $774b: $9e
	sbc  a                                           ; $774c: $9f
	ld   e, a                                        ; $774d: $5f
	and  [hl]                                        ; $774e: $a6
	rla                                              ; $774f: $17
	add  b                                           ; $7750: $80
	ld   [hl], a                                     ; $7751: $77
	inc  c                                           ; $7752: $0c
	rst  $30                                         ; $7753: $f7
	ld   [hl], a                                     ; $7754: $77
	rst  $30                                         ; $7755: $f7
	rla                                              ; $7756: $17
	ld   [hl], a                                     ; $7757: $77
	and  a                                           ; $7758: $a7
	or   a                                           ; $7759: $b7
	ld   d, a                                        ; $775a: $57
	ld   a, e                                        ; $775b: $7b
	sbc  e                                           ; $775c: $9b
	dec  h                                           ; $775d: $25
	ld   h, l                                        ; $775e: $65
	ld   bc, $1f88                                   ; $775f: $01 $88 $1f
	add  b                                           ; $7762: $80
	dec  e                                           ; $7763: $1d
	add  b                                           ; $7764: $80
	rla                                              ; $7765: $17
	inc  b                                           ; $7766: $04
	dec  e                                           ; $7767: $1d
	ld   [hl+], a                                    ; $7768: $22
	nop                                              ; $7769: $00
	ret  nz                                          ; $776a: $c0

	ldh  [$80], a                                    ; $776b: $e0 $80
	db   $fc                                         ; $776d: $fc
	ld   bc, $ff1f                                   ; $776e: $01 $1f $ff
	add  b                                           ; $7771: $80
	rra                                              ; $7772: $1f
	add  b                                           ; $7773: $80
	ld   bc, $0082                                   ; $7774: $01 $82 $00
	dec  b                                           ; $7777: $05
	ld   c, $00                                      ; $7778: $0e $00
	ld   a, [de]                                     ; $777a: $1a
	ld   bc, $061c                                   ; $777b: $01 $1c $06
	add  b                                           ; $777e: $80
	call nz, $f000                                   ; $777f: $c4 $00 $f0
	add  b                                           ; $7782: $80
	ld   hl, sp+$00                                  ; $7783: $f8 $00
	db   $fc                                         ; $7785: $fc
	add  b                                           ; $7786: $80
	inc  e                                           ; $7787: $1c
	ld   [bc], a                                     ; $7788: $02
	ld   [bc], a                                     ; $7789: $02
	nop                                              ; $778a: $00
	add  d                                           ; $778b: $82
	add  b                                           ; $778c: $80
	ld   d, h                                        ; $778d: $54
	ld   bc, $8d04                                   ; $778e: $01 $04 $8d
	add  b                                           ; $7791: $80
	and  h                                           ; $7792: $a4
	nop                                              ; $7793: $00
	db   $f4                                         ; $7794: $f4
	add  b                                           ; $7795: $80
	db   $ec                                         ; $7796: $ec
	nop                                              ; $7797: $00
	db   $ed                                         ; $7798: $ed
	add  c                                           ; $7799: $81
	db   $ec                                         ; $779a: $ec
	add  b                                           ; $779b: $80
	ld   e, h                                        ; $779c: $5c
	ld   [$d010], sp                                 ; $779d: $08 $10 $d0
	ret  z                                           ; $77a0: $c8

	jp   z, $50da                            ; $77a1: $ca $da $50

	ld   [hl], a                                     ; $77a4: $77
	inc  hl                                          ; $77a5: $23
	ld   h, e                                        ; $77a6: $63
	add  b                                           ; $77a7: $80
	ld   b, c                                        ; $77a8: $41
	nop                                              ; $77a9: $00
	ld   bc, $8183                                   ; $77aa: $01 $83 $81
	sbc  d                                           ; $77ad: $9a
	rst  $38                                         ; $77ae: $ff
	add  b                                           ; $77af: $80
	cp   $80                                         ; $77b0: $fe $80
	db   $fc                                         ; $77b2: $fc
	add  [hl]                                        ; $77b3: $86
	rst  $38                                         ; $77b4: $ff
	add  b                                           ; $77b5: $80
	sbc  a                                           ; $77b6: $9f
	add  e                                           ; $77b7: $83
	rra                                              ; $77b8: $1f
	rla                                              ; $77b9: $17
	ld   e, h                                        ; $77ba: $5c
	cp   l                                           ; $77bb: $bd
	cp   c                                           ; $77bc: $b9
	cp   e                                           ; $77bd: $bb
	or   e                                           ; $77be: $b3
	or   a                                           ; $77bf: $b7
	and  a                                           ; $77c0: $a7
	xor  [hl]                                        ; $77c1: $ae
	adc  [hl]                                        ; $77c2: $8e
	sbc  l                                           ; $77c3: $9d
	sbc  h                                           ; $77c4: $9c
	sbc  d                                           ; $77c5: $9a
	sbc  b                                           ; $77c6: $98
	or   h                                           ; $77c7: $b4
	or   b                                           ; $77c8: $b0
	and  b                                           ; $77c9: $a0
	and  a                                           ; $77ca: $a7
	ld   e, a                                        ; $77cb: $5f
	rst  JumpTable                                         ; $77cc: $df
	cp   a                                           ; $77cd: $bf
	and  a                                           ; $77ce: $a7
	ld   h, a                                        ; $77cf: $67
	ld   b, a                                        ; $77d0: $47
	rst  ToBoot                                         ; $77d1: $c7
	add  [hl]                                        ; $77d2: $86
	rlca                                             ; $77d3: $07
	nop                                              ; $77d4: $00
	and  b                                           ; $77d5: $a0
	add  b                                           ; $77d6: $80
	ld   a, [de]                                     ; $77d7: $1a
	add  c                                           ; $77d8: $81
	dec  e                                           ; $77d9: $1d
	inc  bc                                          ; $77da: $03
	inc  e                                           ; $77db: $1c
	ld   e, $6e                                      ; $77dc: $1e $6e
	ld   l, $82                                      ; $77de: $2e $82
	cpl                                              ; $77e0: $2f

Jump_095_77e1:
	add  b                                           ; $77e1: $80
	inc  b                                           ; $77e2: $04
	rlca                                             ; $77e3: $07
	or   b                                           ; $77e4: $b0
	or   c                                           ; $77e5: $b1
	or   l                                           ; $77e6: $b5
	inc  [hl]                                        ; $77e7: $34
	ld   e, d                                        ; $77e8: $5a
	jp   c, $cbca                                    ; $77e9: $da $ca $cb

	add  b                                           ; $77ec: $80
	jp   Jump_095_4780                               ; $77ed: $c3 $80 $47


	nop                                              ; $77f0: $00
	rlca                                             ; $77f1: $07
	add  b                                           ; $77f2: $80
	rla                                              ; $77f3: $17
	ld   bc, $5157                                   ; $77f4: $01 $57 $51
	add  b                                           ; $77f7: $80
	ld   a, [bc]                                     ; $77f8: $0a
	add  b                                           ; $77f9: $80
	dec  d                                           ; $77fa: $15
	add  b                                           ; $77fb: $80
	ld   a, [bc]                                     ; $77fc: $0a
	add  b                                           ; $77fd: $80
	dec  d                                           ; $77fe: $15
	add  b                                           ; $77ff: $80
	ld   a, [bc]                                     ; $7800: $0a
	add  b                                           ; $7801: $80
	dec  d                                           ; $7802: $15
	add  b                                           ; $7803: $80
	ld   a, [bc]                                     ; $7804: $0a
	ld   bc, $ea15                                   ; $7805: $01 $15 $ea
	db   $fd                                         ; $7808: $fd
	nop                                              ; $7809: $00
	ld   e, h                                        ; $780a: $5c
	ld   [bc], a                                     ; $780b: $02
	add  [hl]                                        ; $780c: $86
	nop                                              ; $780d: $00
	ld   bc, $639c                                   ; $780e: $01 $9c $63
	add  b                                           ; $7811: $80
	rst  ToBoot                                         ; $7812: $c7
	add  b                                           ; $7813: $80
	sbc  a                                           ; $7814: $9f
	add  b                                           ; $7815: $80
	ld   a, h                                        ; $7816: $7c
	nop                                              ; $7817: $00
	rst  $38                                         ; $7818: $ff
	add  l                                           ; $7819: $85
	nop                                              ; $781a: $00
	ld   bc, $f807                                   ; $781b: $01 $07 $f8
	add  b                                           ; $781e: $80
	ldh  [$80], a                                    ; $781f: $e0 $80
	inc  b                                           ; $7821: $04

jr_095_7822:
	add  b                                           ; $7822: $80
	inc  de                                          ; $7823: $13
	nop                                              ; $7824: $00
	rst  $38                                         ; $7825: $ff
	add  l                                           ; $7826: $85
	nop                                              ; $7827: $00
	ld   bc, $39c6                                   ; $7828: $01 $c6 $39
	add  b                                           ; $782b: $80
	cp   $80                                         ; $782c: $fe $80
	ld   a, a                                        ; $782e: $7f
	add  b                                           ; $782f: $80
	sbc  a                                           ; $7830: $9f
	nop                                              ; $7831: $00
	rst  $38                                         ; $7832: $ff
	add  l                                           ; $7833: $85
	nop                                              ; $7834: $00
	ld   bc, $8976                                   ; $7835: $01 $76 $89
	add  b                                           ; $7838: $80
	ld   h, [hl]                                     ; $7839: $66
	add  b                                           ; $783a: $80
	xor  c                                           ; $783b: $a9
	add  b                                           ; $783c: $80
	xor  [hl]                                        ; $783d: $ae
	nop                                              ; $783e: $00
	rst  $38                                         ; $783f: $ff
	add  [hl]                                        ; $7840: $86
	nop                                              ; $7841: $00
	nop                                              ; $7842: $00
	rst  $38                                         ; $7843: $ff
	add  b                                           ; $7844: $80
	ld   a, a                                        ; $7845: $7f
	add  b                                           ; $7846: $80
	sbc  a                                           ; $7847: $9f
	add  b                                           ; $7848: $80
	ld   b, b                                        ; $7849: $40
	nop                                              ; $784a: $00
	rst  $38                                         ; $784b: $ff
	add  l                                           ; $784c: $85
	nop                                              ; $784d: $00
	ld   bc, $de21                                   ; $784e: $01 $21 $de
	add  b                                           ; $7851: $80
	reti                                             ; $7852: $d9


	add  b                                           ; $7853: $80
	rst  ToBoot                                         ; $7854: $c7
	ld   [bc], a                                     ; $7855: $02
	ccf                                              ; $7856: $3f
	inc  a                                           ; $7857: $3c
	db   $fc                                         ; $7858: $fc
	add  l                                           ; $7859: $85
	nop                                              ; $785a: $00
	ld   bc, $738c                                   ; $785b: $01 $8c $73
	add  b                                           ; $785e: $80
	add  e                                           ; $785f: $83
	add  b                                           ; $7860: $80
	adc  h                                           ; $7861: $8c
	add  b                                           ; $7862: $80
	sbc  $00                                         ; $7863: $de $00
	rst  $38                                         ; $7865: $ff
	add  l                                           ; $7866: $85
	nop                                              ; $7867: $00
	ld   bc, $fe01                                   ; $7868: $01 $01 $fe
	add  b                                           ; $786b: $80
	ldh  [$80], a                                    ; $786c: $e0 $80
	dec  e                                           ; $786e: $1d
	add  b                                           ; $786f: $80
	ei                                               ; $7870: $fb
	nop                                              ; $7871: $00
	rst  $38                                         ; $7872: $ff
	add  l                                           ; $7873: $85
	nop                                              ; $7874: $00
	ld   bc, $0ff0                                   ; $7875: $01 $f0 $0f
	add  b                                           ; $7878: $80
	rst  $38                                         ; $7879: $ff
	add  b                                           ; $787a: $80
	db   $fc                                         ; $787b: $fc
	add  b                                           ; $787c: $80
	ei                                               ; $787d: $fb
	nop                                              ; $787e: $00
	rst  $38                                         ; $787f: $ff
	add  l                                           ; $7880: $85
	nop                                              ; $7881: $00
	ld   bc, $c738                                   ; $7882: $01 $38 $c7
	add  b                                           ; $7885: $80
	cpl                                              ; $7886: $2f
	add  b                                           ; $7887: $80
	rst  JumpTable                                         ; $7888: $df
	add  b                                           ; $7889: $80
	cp   h                                           ; $788a: $bc
	nop                                              ; $788b: $00
	rst  $38                                         ; $788c: $ff
	add  l                                           ; $788d: $85
	nop                                              ; $788e: $00
	ld   bc, $d12e                                   ; $788f: $01 $2e $d1
	add  b                                           ; $7892: $80
	pop  af                                          ; $7893: $f1
	add  b                                           ; $7894: $80
	sub  c                                           ; $7895: $91
	add  b                                           ; $7896: $80
	ld   [hl], c                                     ; $7897: $71
	nop                                              ; $7898: $00
	rst  $38                                         ; $7899: $ff
	add  l                                           ; $789a: $85
	nop                                              ; $789b: $00
	ld   bc, $07f8                                   ; $789c: $01 $f8 $07
	add  b                                           ; $789f: $80
	jr   jr_095_7822                                 ; $78a0: $18 $80

	rrca                                             ; $78a2: $0f
	add  b                                           ; $78a3: $80
	inc  de                                          ; $78a4: $13
	add  b                                           ; $78a5: $80
	ldh  [rTIMA], a                                  ; $78a6: $e0 $05
	add  e                                           ; $78a8: $83
	add  b                                           ; $78a9: $80
	inc  c                                           ; $78aa: $0c
	nop                                              ; $78ab: $00
	jr   nc, jr_095_78ae                             ; $78ac: $30 $00

jr_095_78ae:
	add  b                                           ; $78ae: $80
	jr   nc, jr_095_78b9                             ; $78af: $30 $08

	ccf                                              ; $78b1: $3f
	rrca                                             ; $78b2: $0f
	ld   c, $07                                      ; $78b3: $0e $07
	ld   b, $1a                                      ; $78b5: $06 $1a
	and  $0c                                         ; $78b7: $e6 $0c

jr_095_78b9:
	rrca                                             ; $78b9: $0f
	add  b                                           ; $78ba: $80
	inc  bc                                          ; $78bb: $03
	add  l                                           ; $78bc: $85
	nop                                              ; $78bd: $00
	add  b                                           ; $78be: $80
	ldh  [$03], a                                    ; $78bf: $e0 $03
	call c, $f83c                                    ; $78c1: $dc $3c $f8
	rst  $20                                         ; $78c4: $e7
	add  b                                           ; $78c5: $80
	jr   @+$06                                       ; $78c6: $18 $04

	rst  $20                                         ; $78c8: $e7
	ld   h, a                                        ; $78c9: $67
	ld   a, b                                        ; $78ca: $78
	jr   jr_095_78ec                                 ; $78cb: $18 $1f

	add  b                                           ; $78cd: $80
	inc  bc                                          ; $78ce: $03
	nop                                              ; $78cf: $00
	nop                                              ; $78d0: $00
	add  b                                           ; $78d1: $80
	ld   bc, $0e80                                   ; $78d2: $01 $80 $0e
	ld   bc, $a956                                   ; $78d5: $01 $56 $a9

jr_095_78d8:
	add  b                                           ; $78d8: $80
	xor  d                                           ; $78d9: $aa
	add  b                                           ; $78da: $80
	dec  hl                                          ; $78db: $2b
	add  b                                           ; $78dc: $80
	ld   [$0880], a                                  ; $78dd: $ea $80 $08
	ld   [$65e5], sp                                 ; $78e0: $08 $e5 $65
	ei                                               ; $78e3: $fb
	sbc  d                                           ; $78e4: $9a
	and  $e4                                         ; $78e5: $e6 $e4
	ld   e, h                                        ; $78e7: $5c
	cp   a                                           ; $78e8: $bf
	ld   a, a                                        ; $78e9: $7f
	add  b                                           ; $78ea: $80
	ld   c, a                                        ; $78eb: $4f

jr_095_78ec:
	ld   bc, $df5f                                   ; $78ec: $01 $5f $df
	add  b                                           ; $78ef: $80
	sbc  a                                           ; $78f0: $9f
	add  b                                           ; $78f1: $80
	adc  a                                           ; $78f2: $8f
	add  b                                           ; $78f3: $80
	rra                                              ; $78f4: $1f
	add  b                                           ; $78f5: $80
	ccf                                              ; $78f6: $3f
	add  b                                           ; $78f7: $80
	cp   a                                           ; $78f8: $bf
	add  b                                           ; $78f9: $80
	di                                               ; $78fa: $f3
	add  b                                           ; $78fb: $80
	ei                                               ; $78fc: $fb
	ld   [bc], a                                     ; $78fd: $02
	rst  $30                                         ; $78fe: $f7
	db   $f4                                         ; $78ff: $f4
	db   $fc                                         ; $7900: $fc
	add  b                                           ; $7901: $80
	ei                                               ; $7902: $fb
	add  b                                           ; $7903: $80
	rst  $30                                         ; $7904: $f7
	add  h                                           ; $7905: $84
	rst  $38                                         ; $7906: $ff
	add  b                                           ; $7907: $80
	adc  $80                                         ; $7908: $ce $80
	scf                                              ; $790a: $37
	add  d                                           ; $790b: $82
	di                                               ; $790c: $f3
	add  b                                           ; $790d: $80
	rst  $30                                         ; $790e: $f7
	add  d                                           ; $790f: $82
	rst  $38                                         ; $7910: $ff
	add  b                                           ; $7911: $80
	ld   [hl], a                                     ; $7912: $77
	add  b                                           ; $7913: $80
	cpl                                              ; $7914: $2f
	add  b                                           ; $7915: $80
	rst  ToBoot                                         ; $7916: $c7
	add  b                                           ; $7917: $80
	ld   hl, sp+$02                                  ; $7918: $f8 $02
	cp   $f2                                         ; $791a: $fe $f2
	di                                               ; $791c: $f3
	add  b                                           ; $791d: $80
	db   $fd                                         ; $791e: $fd
	add  b                                           ; $791f: $80
	di                                               ; $7920: $f3
	ld   [bc], a                                     ; $7921: $02
	ei                                               ; $7922: $fb
	db   $e3                                         ; $7923: $e3
	rst  $20                                         ; $7924: $e7
	add  b                                           ; $7925: $80
	sbc  [hl]                                        ; $7926: $9e
	add  b                                           ; $7927: $80
	ld   a, b                                        ; $7928: $78
	add  b                                           ; $7929: $80
	push bc                                          ; $792a: $c5
	add  b                                           ; $792b: $80
	dec  sp                                          ; $792c: $3b
	add  b                                           ; $792d: $80
	ld   [hl], a                                     ; $792e: $77
	add  b                                           ; $792f: $80
	ld   l, a                                        ; $7930: $6f
	add  b                                           ; $7931: $80
	ld   e, h                                        ; $7932: $5c
	add  b                                           ; $7933: $80
	ld   h, a                                        ; $7934: $67
	add  b                                           ; $7935: $80
	rra                                              ; $7936: $1f
	add  b                                           ; $7937: $80
	db   $fc                                         ; $7938: $fc
	add  b                                           ; $7939: $80
	ei                                               ; $793a: $fb
	add  b                                           ; $793b: $80
	rst  $20                                         ; $793c: $e7
	add  b                                           ; $793d: $80
	sbc  [hl]                                        ; $793e: $9e
	add  b                                           ; $793f: $80
	ld   a, b                                        ; $7940: $78
	add  b                                           ; $7941: $80
	push hl                                          ; $7942: $e5
	add  b                                           ; $7943: $80
	sub  c                                           ; $7944: $91
	add  b                                           ; $7945: $80
	ld   [hl], c                                     ; $7946: $71
	add  d                                           ; $7947: $82
	pop  de                                          ; $7948: $d1
	add  b                                           ; $7949: $80
	sub  c                                           ; $794a: $91
	add  b                                           ; $794b: $80
	ld   sp, $f180                                   ; $794c: $31 $80 $f1
	add  b                                           ; $794f: $80
	pop  de                                          ; $7950: $d1
	add  b                                           ; $7951: $80
	inc  c                                           ; $7952: $0c
	add  b                                           ; $7953: $80
	rlca                                             ; $7954: $07
	add  b                                           ; $7955: $80
	jr   jr_095_78d8                                 ; $7956: $18 $80

	rra                                              ; $7958: $1f
	add  b                                           ; $7959: $80
	rrca                                             ; $795a: $0f
	add  b                                           ; $795b: $80
	inc  de                                          ; $795c: $13
	add  b                                           ; $795d: $80
	db   $10                                         ; $795e: $10
	add  b                                           ; $795f: $80
	inc  de                                          ; $7960: $13
	inc  bc                                          ; $7961: $03
	jr   nz, jr_095_7966                             ; $7962: $20 $02

	jr   nz, jr_095_7966                             ; $7964: $20 $00

jr_095_7966:
	add  b                                           ; $7966: $80
	ld   [bc], a                                     ; $7967: $02
	ld   b, $20                                      ; $7968: $06 $20
	nop                                              ; $796a: $00
	dec  e                                           ; $796b: $1d
	jr   nz, jr_095_798a                             ; $796c: $20 $1c

	ld   [bc], a                                     ; $796e: $02
	ld   bc, $0082                                   ; $796f: $01 $82 $00
	add  b                                           ; $7972: $80
	inc  bc                                          ; $7973: $03
	add  b                                           ; $7974: $80
	ld   b, $80                                      ; $7975: $06 $80
	ld   a, [hl-]                                    ; $7977: $3a
	add  b                                           ; $7978: $80
	jp   nz, $020f                                   ; $7979: $c2 $0f $02

	ldh  [c], a                                      ; $797c: $e2
	inc  bc                                          ; $797d: $03
	jp   $1c3e                                       ; $797e: $c3 $3e $1c


	inc  bc                                          ; $7981: $03
	ld   c, l                                        ; $7982: $4d
	or   e                                           ; $7983: $b3
	ld   a, l                                        ; $7984: $7d
	db   $fc                                         ; $7985: $fc
	ld   a, a                                        ; $7986: $7f
	ld   bc, $1303                                   ; $7987: $01 $03 $13

jr_095_798a:
	db   $10                                         ; $798a: $10
	add  b                                           ; $798b: $80
	ld   l, b                                        ; $798c: $68
	add  b                                           ; $798d: $80
	adc  b                                           ; $798e: $88
	add  b                                           ; $798f: $80
	dec  bc                                          ; $7990: $0b
	ld   [$33ec], sp                                 ; $7991: $08 $ec $33
	rra                                              ; $7994: $1f
	rst  $38                                         ; $7995: $ff
	ccf                                              ; $7996: $3f
	rst  $30                                         ; $7997: $f7
	or   $0e                                         ; $7998: $f6 $0e
	rrca                                             ; $799a: $0f
	add  b                                           ; $799b: $80
	rra                                              ; $799c: $1f
	inc  bc                                          ; $799d: $03
	dec  a                                           ; $799e: $3d
	cp   l                                           ; $799f: $bd
	ei                                               ; $79a0: $fb
	ld   a, e                                        ; $79a1: $7b
	add  b                                           ; $79a2: $80
	or   $00                                         ; $79a3: $f6 $00
	rst  $38                                         ; $79a5: $ff
	add  b                                           ; $79a6: $80
	sbc  a                                           ; $79a7: $9f
	add  b                                           ; $79a8: $80
	ccf                                              ; $79a9: $3f
	inc  bc                                          ; $79aa: $03
	ld   a, a                                        ; $79ab: $7f
	ld   a, l                                        ; $79ac: $7d
	call nc, $80d2                                   ; $79ad: $d4 $d2 $80
	and  b                                           ; $79b0: $a0
	inc  c                                           ; $79b1: $0c
	jp   hl                                          ; $79b2: $e9


	ld   h, l                                        ; $79b3: $65
	ld   d, c                                        ; $79b4: $51
	pop  bc                                          ; $79b5: $c1
	ret  nz                                          ; $79b6: $c0

	jp   c, $fbfd                                    ; $79b7: $da $fd $fb

	cp   e                                           ; $79ba: $bb

jr_095_79bb:
	or   d                                           ; $79bb: $b2
	ld   [hl], d                                     ; $79bc: $72
	ld   h, [hl]                                     ; $79bd: $66
	and  $80                                         ; $79be: $e6 $80
	call nz, $cd07                                   ; $79c0: $c4 $07 $cd
	adc  h                                           ; $79c3: $8c
	db   $ec                                         ; $79c4: $ec
	inc  c                                           ; $79c5: $0c
	ld   a, [bc]                                     ; $79c6: $0a
	ld   [$bf1c], sp                                 ; $79c7: $08 $1c $bf
	add  b                                           ; $79ca: $80
	rla                                              ; $79cb: $17
	add  b                                           ; $79cc: $80
	ld   b, e                                        ; $79cd: $43
	add  b                                           ; $79ce: $80
	xor  c                                           ; $79cf: $a9
	add  b                                           ; $79d0: $80
	nop                                              ; $79d1: $00
	ld   [bc], a                                     ; $79d2: $02
	cp   $00                                         ; $79d3: $fe $00
	ld   bc, $0082                                   ; $79d5: $01 $82 $00
	db   $10                                         ; $79d8: $10
	rst  $38                                         ; $79d9: $ff
	db   $fc                                         ; $79da: $fc
	db   $f4                                         ; $79db: $f4
	or   $fa                                         ; $79dc: $f6 $fa
	cp   e                                           ; $79de: $bb
	cp   a                                           ; $79df: $bf
	call $e2c9                                       ; $79e0: $cd $c9 $e2
	db   $e4                                         ; $79e3: $e4
	ld   [hl], c                                     ; $79e4: $71
	ld   [hl], d                                     ; $79e5: $72
	ld   a, b                                        ; $79e6: $78
	ld   [hl], c                                     ; $79e7: $71
	inc  sp                                          ; $79e8: $33
	dec  sp                                          ; $79e9: $3b
	add  b                                           ; $79ea: $80
	inc  h                                           ; $79eb: $24
	add  b                                           ; $79ec: $80
	ld   b, e                                        ; $79ed: $43
	add  b                                           ; $79ee: $80
	dec  e                                           ; $79ef: $1d
	add  b                                           ; $79f0: $80
	cp   l                                           ; $79f1: $bd
	dec  b                                           ; $79f2: $05
	ld   c, a                                        ; $79f3: $4f
	ld   c, b                                        ; $79f4: $48
	dec  d                                           ; $79f5: $15
	db   $10                                         ; $79f6: $10
	add  d                                           ; $79f7: $82
	add  b                                           ; $79f8: $80
	add  b                                           ; $79f9: $80
	dec  de                                          ; $79fa: $1b
	add  b                                           ; $79fb: $80
	or   $80                                         ; $79fc: $f6 $80
	add  sp, -$80                                    ; $79fe: $e8 $80
	sub  $80                                         ; $7a00: $d6 $80
	call $9b80                                       ; $7a02: $cd $80 $9b
	add  b                                           ; $7a05: $80
	ld   d, a                                        ; $7a06: $57
	add  b                                           ; $7a07: $80
	adc  a                                           ; $7a08: $8f
	add  b                                           ; $7a09: $80
	or   c                                           ; $7a0a: $b1
	add  b                                           ; $7a0b: $80
	ld   sp, $5182                                   ; $7a0c: $31 $82 $51
	add  [hl]                                        ; $7a0f: $86
	ld   [hl], c                                     ; $7a10: $71
	add  b                                           ; $7a11: $80
	dec  d                                           ; $7a12: $15
	add  b                                           ; $7a13: $80
	ld   d, $82                                      ; $7a14: $16 $82
	rla                                              ; $7a16: $17
	add  b                                           ; $7a17: $80
	ld   b, $80                                      ; $7a18: $06 $80

Jump_095_7a1a:
	dec  b                                           ; $7a1a: $05
	add  b                                           ; $7a1b: $80
	dec  d                                           ; $7a1c: $15
	add  b                                           ; $7a1d: $80
	inc  de                                          ; $7a1e: $13
	add  h                                           ; $7a1f: $84
	nop                                              ; $7a20: $00
	add  b                                           ; $7a21: $80
	rra                                              ; $7a22: $1f
	add  b                                           ; $7a23: $80
	inc  de                                          ; $7a24: $13
	add  b                                           ; $7a25: $80
	dec  d                                           ; $7a26: $15
	nop                                              ; $7a27: $00
	ccf                                              ; $7a28: $3f
	add  b                                           ; $7a29: $80
	rra                                              ; $7a2a: $1f
	ld   [bc], a                                     ; $7a2b: $02
	add  hl, de                                      ; $7a2c: $19
	ld   h, $18                                      ; $7a2d: $26 $18
	add  b                                           ; $7a2f: $80
	nop                                              ; $7a30: $00

jr_095_7a31:
	ld   bc, $0018                                   ; $7a31: $01 $18 $00
	add  b                                           ; $7a34: $80
	rst  $38                                         ; $7a35: $ff
	add  b                                           ; $7a36: $80
	jr   @-$7e                                       ; $7a37: $18 $80

	jr   z, jr_095_79bb                              ; $7a39: $28 $80

	ret  z                                           ; $7a3b: $c8

	dec  b                                           ; $7a3c: $05
	rst  $38                                         ; $7a3d: $ff
	cp   a                                           ; $7a3e: $bf
	ld   h, c                                        ; $7a3f: $61
	dec  a                                           ; $7a40: $3d
	rra                                              ; $7a41: $1f
	inc  bc                                          ; $7a42: $03
	add  b                                           ; $7a43: $80
	rlca                                             ; $7a44: $07
	add  b                                           ; $7a45: $80
	xor  $80                                         ; $7a46: $ee $80
	ret  c                                           ; $7a48: $d8

	add  b                                           ; $7a49: $80
	ld   [bc], a                                     ; $7a4a: $02
	add  b                                           ; $7a4b: $80
	sbc  b                                           ; $7a4c: $98
	add  b                                           ; $7a4d: $80
	adc  c                                           ; $7a4e: $89
	add  b                                           ; $7a4f: $80
	and  $80                                         ; $7a50: $e6 $80
	call $8980                                       ; $7a52: $cd $80 $89
	add  b                                           ; $7a55: $80
	dec  de                                          ; $7a56: $1b
	add  b                                           ; $7a57: $80
	inc  de                                          ; $7a58: $13
	add  d                                           ; $7a59: $82
	daa                                              ; $7a5a: $27
	add  b                                           ; $7a5b: $80
	ld   c, a                                        ; $7a5c: $4f
	dec  b                                           ; $7a5d: $05
	rst  $28                                         ; $7a5e: $ef
	ldh  [c], a                                      ; $7a5f: $e2
	jp   nz, $d7c6                                   ; $7a60: $c2 $c6 $d7

	call c, $9c80                                    ; $7a63: $dc $80 $9c
	nop                                              ; $7a66: $00
	cp   [hl]                                        ; $7a67: $be
	add  b                                           ; $7a68: $80
	cp   l                                           ; $7a69: $bd
	ld   a, [bc]                                     ; $7a6a: $0a
	cp   h                                           ; $7a6b: $bc
	jr   c, jr_095_7aa9                              ; $7a6c: $38 $3b

	ld   a, e                                        ; $7a6e: $7b
	ld   a, b                                        ; $7a6f: $78
	ld   l, b                                        ; $7a70: $68
	ld   [$0063], sp                                 ; $7a71: $08 $63 $00
	jr   nz, @-$3a                                   ; $7a74: $20 $c4

	add  c                                           ; $7a76: $81
	add  h                                           ; $7a77: $84
	ld   bc, $e88c                                   ; $7a78: $01 $8c $e8
	add  b                                           ; $7a7b: $80
	ld   [$e005], sp                                 ; $7a7c: $08 $05 $e0
	db   $e4                                         ; $7a7f: $e4
	ld   [$000a], sp                                 ; $7a80: $08 $0a $00
	rst  $38                                         ; $7a83: $ff
	add  b                                           ; $7a84: $80
	nop                                              ; $7a85: $00
	nop                                              ; $7a86: $00
	ld   bc, $0082                                   ; $7a87: $01 $82 $00
	ld   a, [bc]                                     ; $7a8a: $0a
	rlca                                             ; $7a8b: $07
	ld   [$0f18], sp                                 ; $7a8c: $08 $18 $0f
	daa                                              ; $7a8f: $27
	jr   jr_095_7af7                                 ; $7a90: $18 $65

	ld   de, $2890                                   ; $7a92: $11 $90 $28
	ld   a, [bc]                                     ; $7a95: $0a
	add  b                                           ; $7a96: $80
	sub  h                                           ; $7a97: $94
	ld   bc, $cddc                                   ; $7a98: $01 $dc $cd
	add  b                                           ; $7a9b: $80
	rst  $28                                         ; $7a9c: $ef
	ld   bc, $170f                                   ; $7a9d: $01 $0f $17
	add  b                                           ; $7aa0: $80
	rst  $30                                         ; $7aa1: $f7
	ld   [bc], a                                     ; $7aa2: $02
	scf                                              ; $7aa3: $37
	add  e                                           ; $7aa4: $83
	and  e                                           ; $7aa5: $a3
	add  b                                           ; $7aa6: $80
	ret  nc                                          ; $7aa7: $d0

	add  b                                           ; $7aa8: $80

jr_095_7aa9:
	ld   d, b                                        ; $7aa9: $50
	add  b                                           ; $7aaa: $80
	ld   h, e                                        ; $7aab: $63
	add  b                                           ; $7aac: $80
	inc  hl                                          ; $7aad: $23
	add  b                                           ; $7aae: $80
	jr   nc, jr_095_7a31                             ; $7aaf: $30 $80

	ld   [de], a                                     ; $7ab1: $12
	inc  bc                                          ; $7ab2: $03
	sbc  c                                           ; $7ab3: $99
	sbc  b                                           ; $7ab4: $98
	sbc  $df                                         ; $7ab5: $de $df
	add  b                                           ; $7ab7: $80
	nop                                              ; $7ab8: $00
	add  b                                           ; $7ab9: $80
	ld   h, a                                        ; $7aba: $67
	add  b                                           ; $7abb: $80
	rst  ToBoot                                         ; $7abc: $c7
	add  b                                           ; $7abd: $80
	or   d                                           ; $7abe: $b2
	add  b                                           ; $7abf: $80
	ld   [hl], h                                     ; $7ac0: $74
	add  b                                           ; $7ac1: $80
	inc  de                                          ; $7ac2: $13
	inc  bc                                          ; $7ac3: $03
	nop                                              ; $7ac4: $00
	ldh  [$81], a                                    ; $7ac5: $e0 $81
	ld   [hl], c                                     ; $7ac7: $71
	add  b                                           ; $7ac8: $80
	ld   de, $9180                                   ; $7ac9: $11 $80 $91
	ld   bc, $5554                                   ; $7acc: $01 $54 $55
	add  d                                           ; $7acf: $82
	rst  $10                                         ; $7ad0: $d7
	add  b                                           ; $7ad1: $80
	rla                                              ; $7ad2: $17
	inc  bc                                          ; $7ad3: $03
	db   $d3                                         ; $7ad4: $d3
	rst  $10                                         ; $7ad5: $d7
	dec  d                                           ; $7ad6: $15
	nop                                              ; $7ad7: $00
	add  b                                           ; $7ad8: $80
	rla                                              ; $7ad9: $17
	add  b                                           ; $7ada: $80
	dec  de                                          ; $7adb: $1b
	add  b                                           ; $7adc: $80
	dec  e                                           ; $7add: $1d
	add  b                                           ; $7ade: $80
	ld   c, $80                                      ; $7adf: $0e $80
	db   $10                                         ; $7ae1: $10
	add  d                                           ; $7ae2: $82
	rra                                              ; $7ae3: $1f
	ld   b, $24                                      ; $7ae4: $06 $24
	sub  b                                           ; $7ae6: $90
	sub  a                                           ; $7ae7: $97
	sub  b                                           ; $7ae8: $90
	or   d                                           ; $7ae9: $b2
	sub  d                                           ; $7aea: $92
	sub  e                                           ; $7aeb: $93
	add  c                                           ; $7aec: $81
	sub  b                                           ; $7aed: $90
	add  b                                           ; $7aee: $80
	or   a                                           ; $7aef: $b7
	add  b                                           ; $7af0: $80
	sub  b                                           ; $7af1: $90
	add  b                                           ; $7af2: $80
	or   a                                           ; $7af3: $b7
	nop                                              ; $7af4: $00
	ld   l, d                                        ; $7af5: $6a
	add  e                                           ; $7af6: $83

jr_095_7af7:
	dec  b                                           ; $7af7: $05
	inc  bc                                          ; $7af8: $03
	db   $fd                                         ; $7af9: $fd
	inc  bc                                          ; $7afa: $03
	ld   bc, $8000                                   ; $7afb: $01 $00 $80
	ldh  [$80], a                                    ; $7afe: $e0 $80
	rra                                              ; $7b00: $1f
	add  b                                           ; $7b01: $80
	ldh  [rSC], a                                    ; $7b02: $e0 $02
	add  b                                           ; $7b04: $80
	ld   a, h                                        ; $7b05: $7c
	inc  c                                           ; $7b06: $0c
	add  b                                           ; $7b07: $80
	dec  bc                                          ; $7b08: $0b
	inc  b                                           ; $7b09: $04
	ld   a, [bc]                                     ; $7b0a: $0a
	ld   c, $0a                                      ; $7b0b: $0e $0a
	db   $fc                                         ; $7b0d: $fc
	ld   [bc], a                                     ; $7b0e: $02
	add  b                                           ; $7b0f: $80
	nop                                              ; $7b10: $00
	add  b                                           ; $7b11: $80
	ldh  a, [$80]                                    ; $7b12: $f0 $80
	rlca                                             ; $7b14: $07
	add  b                                           ; $7b15: $80
	ld   c, [hl]                                     ; $7b16: $4e
	add  b                                           ; $7b17: $80
	ld   c, $00                                      ; $7b18: $0e $00
	inc  e                                           ; $7b1a: $1c
	add  c                                           ; $7b1b: $81
	ld   e, h                                        ; $7b1c: $5c
	add  b                                           ; $7b1d: $80
	ld   e, b                                        ; $7b1e: $58
	ld   bc, $3979                                   ; $7b1f: $01 $79 $39
	add  b                                           ; $7b22: $80
	ld   sp, $b180                                   ; $7b23: $31 $80 $b1
	dec  bc                                          ; $7b26: $0b
	ld   [hl], c                                     ; $7b27: $71
	ld   [hl], b                                     ; $7b28: $70
	ld   [hl], d                                     ; $7b29: $72
	ld   [hl], b                                     ; $7b2a: $70
	ldh  [$e4], a                                    ; $7b2b: $e0 $e4
	and  $ec                                         ; $7b2d: $e6 $ec
	call $dece                                       ; $7b2f: $cd $ce $de
	rst  JumpTable                                         ; $7b32: $df
	add  d                                           ; $7b33: $82
	sbc  [hl]                                        ; $7b34: $9e
	ld   a, [bc]                                     ; $7b35: $0a
	adc  [hl]                                        ; $7b36: $8e
	ld   b, $b6                                      ; $7b37: $06 $b6
	ld   h, $68                                      ; $7b39: $26 $68
	ld   h, b                                        ; $7b3b: $60
	ldh  [rP1], a                                    ; $7b3c: $e0 $00
	ret  nz                                          ; $7b3e: $c0

	nop                                              ; $7b3f: $00
	ret  nz                                          ; $7b40: $c0

	add  c                                           ; $7b41: $81
	nop                                              ; $7b42: $00
	add  b                                           ; $7b43: $80
	ld   bc, $3f0a                                   ; $7b44: $01 $0a $3f
	jr   nc, jr_095_7b7e                             ; $7b47: $30 $35

	ld   sp, $030f                                   ; $7b49: $31 $0f $03
	rlca                                             ; $7b4c: $07
	nop                                              ; $7b4d: $00
	inc  bc                                          ; $7b4e: $03
	nop                                              ; $7b4f: $00
	inc  bc                                          ; $7b50: $03
	add  e                                           ; $7b51: $83
	nop                                              ; $7b52: $00
	inc  c                                           ; $7b53: $0c
	ld   l, h                                        ; $7b54: $6c
	inc  de                                          ; $7b55: $13
	ld   b, e                                        ; $7b56: $43
	inc  bc                                          ; $7b57: $03
	ld   de, $7131                                   ; $7b58: $11 $31 $71
	dec  [hl]                                        ; $7b5b: $35
	or   l                                           ; $7b5c: $b5
	ld   [hl], l                                     ; $7b5d: $75
	or   h                                           ; $7b5e: $b4
	inc  [hl]                                        ; $7b5f: $34
	ld   [hl], $81                                   ; $7b60: $36 $81
	ld   [hl-], a                                    ; $7b62: $32
	inc  bc                                          ; $7b63: $03
	ld   l, b                                        ; $7b64: $68
	adc  e                                           ; $7b65: $8b
	xor  e                                           ; $7b66: $ab
	xor  b                                           ; $7b67: $a8
	add  b                                           ; $7b68: $80
	and  l                                           ; $7b69: $a5
	rlca                                             ; $7b6a: $07
	add  l                                           ; $7b6b: $85
	or   l                                           ; $7b6c: $b5
	sub  h                                           ; $7b6d: $94
	or   l                                           ; $7b6e: $b5
	and  c                                           ; $7b6f: $a1
	cp   c                                           ; $7b70: $b9
	cp   b                                           ; $7b71: $b8
	cp   c                                           ; $7b72: $b9
	add  b                                           ; $7b73: $80
	ld   e, c                                        ; $7b74: $59
	db   $10                                         ; $7b75: $10
	inc  b                                           ; $7b76: $04
	inc  c                                           ; $7b77: $0c
	ld   a, a                                        ; $7b78: $7f
	add  e                                           ; $7b79: $83
	ld   [hl], e                                     ; $7b7a: $73
	ldh  a, [$7f]                                    ; $7b7b: $f0 $7f
	rst  JumpTable                                         ; $7b7d: $df

jr_095_7b7e:
	ld   a, l                                        ; $7b7e: $7d
	rst  $30                                         ; $7b7f: $f7
	ld   e, a                                        ; $7b80: $5f
	rst  $38                                         ; $7b81: $ff
	dec  d                                           ; $7b82: $15
	rst  $38                                         ; $7b83: $ff
	pop  hl                                          ; $7b84: $e1
	rst  $38                                         ; $7b85: $ff

jr_095_7b86:
	rlca                                             ; $7b86: $07
	add  c                                           ; $7b87: $81
	rla                                              ; $7b88: $17
	inc  bc                                          ; $7b89: $03
	sub  c                                           ; $7b8a: $91
	ld   de, $1777                                   ; $7b8b: $11 $77 $17
	add  b                                           ; $7b8e: $80
	rst  $10                                         ; $7b8f: $d7
	add  h                                           ; $7b90: $84
	rst  $30                                         ; $7b91: $f7
	nop                                              ; $7b92: $00
	xor  $81                                         ; $7b93: $ee $81
	rra                                              ; $7b95: $1f
	add  b                                           ; $7b96: $80
	ld   e, $80                                      ; $7b97: $1e $80
	db   $10                                         ; $7b99: $10
	add  b                                           ; $7b9a: $80
	inc  de                                          ; $7b9b: $13
	add  b                                           ; $7b9c: $80
	db   $10                                         ; $7b9d: $10
	dec  b                                           ; $7b9e: $05
	inc  de                                          ; $7b9f: $13
	inc  bc                                          ; $7ba0: $03
	inc  de                                          ; $7ba1: $13
	db   $10                                         ; $7ba2: $10
	inc  sp                                          ; $7ba3: $33
	or   b                                           ; $7ba4: $b0
	add  e                                           ; $7ba5: $83
	or   d                                           ; $7ba6: $b2
	add  c                                           ; $7ba7: $81
	ld   [hl-], a                                    ; $7ba8: $32
	add  d                                           ; $7ba9: $82
	ld   [hl], $80                                   ; $7baa: $36 $80
	jr   nc, jr_095_7bb0                             ; $7bac: $30 $02

	rst  $28                                         ; $7bae: $ef
	rst  $38                                         ; $7baf: $ff

jr_095_7bb0:
	db   $ed                                         ; $7bb0: $ed
	add  c                                           ; $7bb1: $81
	pop  de                                          ; $7bb2: $d1
	add  c                                           ; $7bb3: $81
	db   $fd                                         ; $7bb4: $fd
	nop                                              ; $7bb5: $00
	pop  bc                                          ; $7bb6: $c1
	add  h                                           ; $7bb7: $84
	rst  $38                                         ; $7bb8: $ff
	add  b                                           ; $7bb9: $80
	ld   hl, sp+$00                                  ; $7bba: $f8 $00
	or   [hl]                                        ; $7bbc: $b6
	add  c                                           ; $7bbd: $81
	ld   b, l                                        ; $7bbe: $45
	add  c                                           ; $7bbf: $81
	rst  $30                                         ; $7bc0: $f7
	nop                                              ; $7bc1: $00
	inc  b                                           ; $7bc2: $04
	add  e                                           ; $7bc3: $83
	rst  $38                                         ; $7bc4: $ff
	inc  b                                           ; $7bc5: $04
	rlca                                             ; $7bc6: $07
	reti                                             ; $7bc7: $d9


	ld   hl, $25ad                                   ; $7bc8: $21 $ad $25
	add  b                                           ; $7bcb: $80
	inc  h                                           ; $7bcc: $24
	add  b                                           ; $7bcd: $80
	sub  h                                           ; $7bce: $94
	dec  b                                           ; $7bcf: $05
	sbc  l                                           ; $7bd0: $9d
	dec  e                                           ; $7bd1: $1d
	sbc  c                                           ; $7bd2: $99
	sub  c                                           ; $7bd3: $91
	sub  b                                           ; $7bd4: $90
	ret  nc                                          ; $7bd5: $d0

	add  b                                           ; $7bd6: $80
	call z, $5100                            ; $7bd7: $cc $00 $51
	add  b                                           ; $7bda: $80
	ld   e, $00                                      ; $7bdb: $1e $00
	ld   e, [hl]                                     ; $7bdd: $5e
	add  b                                           ; $7bde: $80
	ld   c, [hl]                                     ; $7bdf: $4e
	ld   bc, $4e46                                   ; $7be0: $01 $46 $4e
	add  b                                           ; $7be3: $80
	ld   d, a                                        ; $7be4: $57
	nop                                              ; $7be5: $00
	ld   [hl], a                                     ; $7be6: $77
	add  b                                           ; $7be7: $80
	inc  sp                                          ; $7be8: $33
	inc  bc                                          ; $7be9: $03
	ld   sp, $2221                                   ; $7bea: $31 $21 $22
	cp   $84                                         ; $7bed: $fe $84
	ld   [bc], a                                     ; $7bef: $02
	nop                                              ; $7bf0: $00
	inc  bc                                          ; $7bf1: $03
	add  b                                           ; $7bf2: $80
	inc  c                                           ; $7bf3: $0c
	inc  bc                                          ; $7bf4: $03
	dec  c                                           ; $7bf5: $0d
	dec  bc                                          ; $7bf6: $0b
	add  [hl]                                        ; $7bf7: $86
	add  b                                           ; $7bf8: $80
	add  b                                           ; $7bf9: $80
	add  c                                           ; $7bfa: $81
	add  b                                           ; $7bfb: $80
	nop                                              ; $7bfc: $00
	add  h                                           ; $7bfd: $84
	add  b                                           ; $7bfe: $80
	add  b                                           ; $7bff: $80
	jr   nz, @+$08                                   ; $7c00: $20 $06

	ld   h, b                                        ; $7c02: $60
	jr   nz, jr_095_7b86                             ; $7c03: $20 $81

	pop  bc                                          ; $7c05: $c1
	jp   $3bc2                                       ; $7c06: $c3 $c2 $3b


	add  b                                           ; $7c09: $80
	inc  h                                           ; $7c0a: $24
	add  c                                           ; $7c0b: $81
	dec  h                                           ; $7c0c: $25
	ld   bc, $4564                                   ; $7c0d: $01 $64 $45
	add  b                                           ; $7c10: $80
	ld   d, h                                        ; $7c11: $54
	ld   [bc], a                                     ; $7c12: $02
	call nc, $a594                                   ; $7c13: $d4 $94 $a5
	add  b                                           ; $7c16: $80
	inc  l                                           ; $7c17: $2c
	ld   a, [bc]                                     ; $7c18: $0a
	dec  l                                           ; $7c19: $2d
	ld   a, b                                        ; $7c1a: $78
	add  hl, sp                                      ; $7c1b: $39
	dec  de                                          ; $7c1c: $1b
	ld   l, b                                        ; $7c1d: $68
	ret  z                                           ; $7c1e: $c8

	ei                                               ; $7c1f: $fb
	dec  sp                                          ; $7c20: $3b
	ei                                               ; $7c21: $fb
	adc  b                                           ; $7c22: $88
	cp   e                                           ; $7c23: $bb
	add  b                                           ; $7c24: $80
	cp   c                                           ; $7c25: $b9
	inc  b                                           ; $7c26: $04
	ret  c                                           ; $7c27: $d8

	cp   e                                           ; $7c28: $bb
	sbc  b                                           ; $7c29: $98
	ei                                               ; $7c2a: $fb
	inc  b                                           ; $7c2b: $04
	add  b                                           ; $7c2c: $80
	rst  $38                                         ; $7c2d: $ff
	ld   b, $7f                                      ; $7c2e: $06 $7f
	ld   [de], a                                     ; $7c30: $12
	ld   [$fa8b], a                                  ; $7c31: $ea $8b $fa
	add  hl, bc                                      ; $7c34: $09
	ei                                               ; $7c35: $fb
	add  b                                           ; $7c36: $80
	cp   d                                           ; $7c37: $ba
	inc  b                                           ; $7c38: $04
	sbc  e                                           ; $7c39: $9b
	ei                                               ; $7c3a: $fb
	sbc  d                                           ; $7c3b: $9a
	ld   a, [$83fd]                                  ; $7c3c: $fa $fd $83
	rla                                              ; $7c3f: $17
	nop                                              ; $7c40: $00
	rst  $30                                         ; $7c41: $f7
	add  e                                           ; $7c42: $83
	rla                                              ; $7c43: $17
	add  b                                           ; $7c44: $80
	ld   [hl], a                                     ; $7c45: $77
	add  b                                           ; $7c46: $80
	scf                                              ; $7c47: $37
	nop                                              ; $7c48: $00
	push af                                          ; $7c49: $f5
	add  c                                           ; $7c4a: $81
	rra                                              ; $7c4b: $1f
	rlca                                             ; $7c4c: $07
	rrca                                             ; $7c4d: $0f
	rra                                              ; $7c4e: $1f
	inc  e                                           ; $7c4f: $1c
	rra                                              ; $7c50: $1f
	inc  e                                           ; $7c51: $1c
	rra                                              ; $7c52: $1f
	inc  e                                           ; $7c53: $1c
	inc  c                                           ; $7c54: $0c
	add  b                                           ; $7c55: $80
	rra                                              ; $7c56: $1f
	add  b                                           ; $7c57: $80
	ld   c, $00                                      ; $7c58: $0e $00
	add  hl, sp                                      ; $7c5a: $39
	add  l                                           ; $7c5b: $85
	ld   [hl-], a                                    ; $7c5c: $32
	nop                                              ; $7c5d: $00
	db   $10                                         ; $7c5e: $10
	add  d                                           ; $7c5f: $82
	scf                                              ; $7c60: $37
	add  c                                           ; $7c61: $81
	ccf                                              ; $7c62: $3f
	nop                                              ; $7c63: $00
	ret  nz                                          ; $7c64: $c0

	add  l                                           ; $7c65: $85
	rst  $38                                         ; $7c66: $ff
	nop                                              ; $7c67: $00
	nop                                              ; $7c68: $00
	add  l                                           ; $7c69: $85
	rst  $38                                         ; $7c6a: $ff
	ld   bc, $ff00                                   ; $7c6b: $01 $00 $ff
	add  b                                           ; $7c6e: $80
	db   $fc                                         ; $7c6f: $fc
	ld   b, $fa                                      ; $7c70: $06 $fa
	ld   sp, hl                                      ; $7c72: $f9
	db   $f4                                         ; $7c73: $f4
	ldh  a, [$08]                                    ; $7c74: $f0 $08
	ldh  [$f1], a                                    ; $7c76: $e0 $f1
	add  c                                           ; $7c78: $81
	ret  nz                                          ; $7c79: $c0

	ld   [$80e3], sp                                 ; $7c7a: $08 $e3 $80
	adc  h                                           ; $7c7d: $8c
	ld   sp, $ed6d                                   ; $7c7e: $31 $6d $ed
	sbc  l                                           ; $7c81: $9d
	db   $dd                                         ; $7c82: $dd
	ret  nz                                          ; $7c83: $c0

	add  b                                           ; $7c84: $80
	sbc  a                                           ; $7c85: $9f
	add  b                                           ; $7c86: $80
	ld   e, a                                        ; $7c87: $5f
	add  b                                           ; $7c88: $80
	rst  JumpTable                                         ; $7c89: $df
	inc  b                                           ; $7c8a: $04
	pop  bc                                          ; $7c8b: $c1
	ld   d, a                                        ; $7c8c: $57
	ld   d, [hl]                                     ; $7c8d: $56
	xor  b                                           ; $7c8e: $a8
	ld   l, e                                        ; $7c8f: $6b
	add  b                                           ; $7c90: $80
	ld   c, e                                        ; $7c91: $4b
	add  b                                           ; $7c92: $80
	inc  bc                                          ; $7c93: $03
	ld   [de], a                                     ; $7c94: $12
	dec  bc                                          ; $7c95: $0b
	ld   h, e                                        ; $7c96: $63
	ld   a, e                                        ; $7c97: $7b
	set  7, e                                        ; $7c98: $cb $fb
	sbc  e                                           ; $7c9a: $9b
	jp   c, Jump_095_7a1a                            ; $7c9b: $da $1a $7a

	ld   a, [hl-]                                    ; $7c9e: $3a
	inc  b                                           ; $7c9f: $04
	ld   b, b                                        ; $7ca0: $40
	ld   h, b                                        ; $7ca1: $60
	and  b                                           ; $7ca2: $a0
	or   b                                           ; $7ca3: $b0
	ret  nc                                          ; $7ca4: $d0

	call c, $efec                                    ; $7ca5: $dc $ec $ef
	add  b                                           ; $7ca8: $80
	di                                               ; $7ca9: $f3
	add  b                                           ; $7caa: $80
	db   $fc                                         ; $7cab: $fc
	nop                                              ; $7cac: $00
	rst  $38                                         ; $7cad: $ff
	add  b                                           ; $7cae: $80
	ld   a, a                                        ; $7caf: $7f
	dec  c                                           ; $7cb0: $0d
	rlca                                             ; $7cb1: $07
	inc  b                                           ; $7cb2: $04
	inc  c                                           ; $7cb3: $0c
	ld   a, [bc]                                     ; $7cb4: $0a
	ld   a, [de]                                     ; $7cb5: $1a
	ld   d, $36                                      ; $7cb6: $16 $36
	ld   l, $ea                                      ; $7cb8: $2e $ea
	jp   c, $32d2                                    ; $7cba: $da $d2 $32

	ld   [hl+], a                                    ; $7cbd: $22
	ldh  [c], a                                      ; $7cbe: $e2
	add  b                                           ; $7cbf: $80
	jp   nz, $9a04                                   ; $7cc0: $c2 $04 $9a

	ld   l, l                                        ; $7cc3: $6d
	inc  h                                           ; $7cc4: $24
	dec  l                                           ; $7cc5: $2d
	inc  b                                           ; $7cc6: $04
	add  b                                           ; $7cc7: $80
	ld   c, l                                        ; $7cc8: $4d
	add  b                                           ; $7cc9: $80
	ld   l, l                                        ; $7cca: $6d
	nop                                              ; $7ccb: $00
	db   $fd                                         ; $7ccc: $fd
	add  b                                           ; $7ccd: $80
	inc  b                                           ; $7cce: $04
	ld   bc, $0107                                   ; $7ccf: $01 $07 $01
	add  c                                           ; $7cd2: $81
	rst  $38                                         ; $7cd3: $ff
	inc  bc                                          ; $7cd4: $03
	ei                                               ; $7cd5: $fb
	ld   [$08fb], sp                                 ; $7cd6: $08 $fb $08
	add  c                                           ; $7cd9: $81
	ei                                               ; $7cda: $fb
	add  b                                           ; $7cdb: $80
	ld   hl, sp-$80                                  ; $7cdc: $f8 $80
	ld   [$fb84], sp                                 ; $7cde: $08 $84 $fb
	dec  b                                           ; $7ce1: $05
	ld   a, [bc]                                     ; $7ce2: $0a
	ld   a, [$fb0b]                                  ; $7ce3: $fa $0b $fb
	ld   a, [$80fe]                                  ; $7ce6: $fa $fe $80
	nop                                              ; $7ce9: $00

jr_095_7cea:
	add  b                                           ; $7cea: $80
	ld   a, a                                        ; $7ceb: $7f
	nop                                              ; $7cec: $00
	rst  $38                                         ; $7ced: $ff
	add  b                                           ; $7cee: $80
	cp   $01                                         ; $7cef: $fe $01
	add  c                                           ; $7cf1: $81
	ld   h, a                                        ; $7cf2: $67
	add  c                                           ; $7cf3: $81
	rla                                              ; $7cf4: $17
	add  b                                           ; $7cf5: $80
	rst  $30                                         ; $7cf6: $f7
	add  d                                           ; $7cf7: $82
	rla                                              ; $7cf8: $17
	add  c                                           ; $7cf9: $81
	rst  $30                                         ; $7cfa: $f7
	add  b                                           ; $7cfb: $80
	rla                                              ; $7cfc: $17
	add  b                                           ; $7cfd: $80
	rst  $30                                         ; $7cfe: $f7
	nop                                              ; $7cff: $00
	dec  e                                           ; $7d00: $1d
	add  b                                           ; $7d01: $80
	rra                                              ; $7d02: $1f
	add  d                                           ; $7d03: $82
	inc  c                                           ; $7d04: $0c
	inc  b                                           ; $7d05: $04
	rrca                                             ; $7d06: $0f
	inc  e                                           ; $7d07: $1c
	rrca                                             ; $7d08: $0f
	inc  c                                           ; $7d09: $0c
	inc  d                                           ; $7d0a: $14
	add  c                                           ; $7d0b: $81
	nop                                              ; $7d0c: $00
	ld   bc, $3e1e                                   ; $7d0d: $01 $1e $3e
	add  d                                           ; $7d10: $82
	nop                                              ; $7d11: $00
	add  b                                           ; $7d12: $80
	ld   bc, $3f81                                   ; $7d13: $01 $81 $3f
	add  b                                           ; $7d16: $80
	ld   a, [hl+]                                    ; $7d17: $2a
	add  b                                           ; $7d18: $80
	dec  d                                           ; $7d19: $15
	ld   bc, $d52a                                   ; $7d1a: $01 $2a $d5
	add  e                                           ; $7d1d: $83
	nop                                              ; $7d1e: $00
	nop                                              ; $7d1f: $00
	rst  $38                                         ; $7d20: $ff
	add  b                                           ; $7d21: $80
	cp   $80                                         ; $7d22: $fe $80
	ld   d, h                                        ; $7d24: $54
	add  b                                           ; $7d25: $80
	xor  d                                           ; $7d26: $aa
	add  b                                           ; $7d27: $80
	ld   b, c                                        ; $7d28: $41
	dec  bc                                          ; $7d29: $0b
	ccf                                              ; $7d2a: $3f
	add  d                                           ; $7d2b: $82
	nop                                              ; $7d2c: $00
	add  $00                                         ; $7d2d: $c6 $00
	inc  bc                                          ; $7d2f: $03
	ld   [bc], a                                     ; $7d30: $02
	add  d                                           ; $7d31: $82
	nop                                              ; $7d32: $00
	jr   c, jr_095_7d3c                              ; $7d33: $38 $07

	rst  ToBoot                                         ; $7d35: $c7
	add  b                                           ; $7d36: $80
	ccf                                              ; $7d37: $3f
	add  c                                           ; $7d38: $81
	rst  $38                                         ; $7d39: $ff
	dec  b                                           ; $7d3a: $05
	ld   c, [hl]                                     ; $7d3b: $4e

jr_095_7d3c:
	add  hl, sp                                      ; $7d3c: $39
	ldh  a, [$7e]                                    ; $7d3d: $f0 $7e
	ld   a, [$80ff]                                  ; $7d3f: $fa $ff $80
	ld   a, a                                        ; $7d42: $7f
	ld   bc, $bfbd                                   ; $7d43: $01 $bd $bf
	add  b                                           ; $7d46: $80
	rst  JumpTable                                         ; $7d47: $df
	dec  b                                           ; $7d48: $05
	ld   l, [hl]                                     ; $7d49: $6e
	rst  $28                                         ; $7d4a: $ef
	or   a                                           ; $7d4b: $b7
	rst  $30                                         ; $7d4c: $f7
	rlca                                             ; $7d4d: $07
	ret  nz                                          ; $7d4e: $c0

	add  b                                           ; $7d4f: $80
	ldh  [rSC], a                                    ; $7d50: $e0 $02
	ld   c, b                                        ; $7d52: $48
	ld   b, b                                        ; $7d53: $40
	db   $10                                         ; $7d54: $10
	add  b                                           ; $7d55: $80
	add  b                                           ; $7d56: $80
	ld   bc, $d0c0                                   ; $7d57: $01 $c0 $d0
	add  c                                           ; $7d5a: $81
	ldh  [$03], a                                    ; $7d5b: $e0 $03
	add  sp, -$10                                    ; $7d5d: $e8 $f0
	ld   [hl], a                                     ; $7d5f: $77
	ld   a, a                                        ; $7d60: $7f
	add  b                                           ; $7d61: $80
	ld   h, [hl]                                     ; $7d62: $66
	add  d                                           ; $7d63: $82
	jr   nc, jr_095_7cea                             ; $7d64: $30 $84

	jr   c, @-$7e                                    ; $7d66: $38 $80

	ld   a, h                                        ; $7d68: $7c
	ld   bc, $8283                                   ; $7d69: $01 $83 $82
	add  e                                           ; $7d6c: $83
	ld   [bc], a                                     ; $7d6d: $02
	add  e                                           ; $7d6e: $83
	inc  bc                                          ; $7d6f: $03
	add  d                                           ; $7d70: $82
	rlca                                             ; $7d71: $07
	inc  c                                           ; $7d72: $0c
	rst  $38                                         ; $7d73: $ff
	add  a                                           ; $7d74: $87
	rst  $30                                         ; $7d75: $f7
	ld   [hl], b                                     ; $7d76: $70
	ld   sp, hl                                      ; $7d77: $f9
	ld   hl, sp+$3d                                  ; $7d78: $f8 $3d
	inc  a                                           ; $7d7a: $3c
	dec  c                                           ; $7d7b: $0d
	call $f1c1                                       ; $7d7c: $cd $c1 $f1
	ldh  a, [$82]                                    ; $7d7f: $f0 $82
	cp   $0b                                         ; $7d81: $fe $0b
	ld   [$0b38], sp                                 ; $7d83: $08 $38 $0b
	db   $db                                         ; $7d86: $db
	dec  e                                           ; $7d87: $1d
	ld   [bc], a                                     ; $7d88: $02
	nop                                              ; $7d89: $00
	add  b                                           ; $7d8a: $80
	nop                                              ; $7d8b: $00
	ld   h, b                                        ; $7d8c: $60
	add  b                                           ; $7d8d: $80
	sbc  a                                           ; $7d8e: $9f
	add  b                                           ; $7d8f: $80
	ldh  [rDIV], a                                   ; $7d90: $e0 $04
	rst  $30                                         ; $7d92: $f7
	or   $7e                                         ; $7d93: $f6 $7e
	nop                                              ; $7d95: $00
	add  b                                           ; $7d96: $80
	add  b                                           ; $7d97: $80
	db   $fc                                         ; $7d98: $fc
	add  b                                           ; $7d99: $80
	inc  bc                                          ; $7d9a: $03
	add  d                                           ; $7d9b: $82
	nop                                              ; $7d9c: $00
	inc  b                                           ; $7d9d: $04
	ldh  [rP1], a                                    ; $7d9e: $e0 $00
	jr   @-$1e                                       ; $7da0: $18 $e0

	ld   bc, $1783                                   ; $7da2: $01 $83 $17
	add  b                                           ; $7da5: $80
	rst  $30                                         ; $7da6: $f7
	add  d                                           ; $7da7: $82
	rla                                              ; $7da8: $17
	add  b                                           ; $7da9: $80
	ld   de, $1780                                   ; $7daa: $11 $80 $17
	nop                                              ; $7dad: $00
	xor  $83                                         ; $7dae: $ee $83
	nop                                              ; $7db0: $00
	add  b                                           ; $7db1: $80
	inc  bc                                          ; $7db2: $03
	add  b                                           ; $7db3: $80
	rrca                                             ; $7db4: $0f
	add  l                                           ; $7db5: $85
	rra                                              ; $7db6: $1f
	add  b                                           ; $7db7: $80
	db   $10                                         ; $7db8: $10
	add  c                                           ; $7db9: $81
	ld   bc, $1905                                   ; $7dba: $01 $05 $19
	inc  bc                                          ; $7dbd: $03
	inc  hl                                          ; $7dbe: $23
	inc  bc                                          ; $7dbf: $03
	dec  de                                          ; $7dc0: $1b
	rla                                              ; $7dc1: $17
	add  b                                           ; $7dc2: $80
	ld   h, $03                                      ; $7dc3: $26 $03
	ld   d, $0e                                      ; $7dc5: $16 $0e
	cpl                                              ; $7dc7: $2f
	rst  $38                                         ; $7dc8: $ff
	add  b                                           ; $7dc9: $80
	rst  ToBoot                                         ; $7dca: $c7
	add  b                                           ; $7dcb: $80
	add  a                                           ; $7dcc: $87
	add  b                                           ; $7dcd: $80
	rlca                                             ; $7dce: $07
	add  b                                           ; $7dcf: $80
	rra                                              ; $7dd0: $1f
	add  b                                           ; $7dd1: $80
	ccf                                              ; $7dd2: $3f
	add  b                                           ; $7dd3: $80
	ld   a, a                                        ; $7dd4: $7f
	adc  a                                           ; $7dd5: $8f
	rst  $38                                         ; $7dd6: $ff
	dec  b                                           ; $7dd7: $05
	rst  $28                                         ; $7dd8: $ef
	db   $e4                                         ; $7dd9: $e4
	ei                                               ; $7dda: $fb
	pop  af                                          ; $7ddb: $f1
	ei                                               ; $7ddc: $fb
	cp   $81                                         ; $7ddd: $fe $81
	db   $fd                                         ; $7ddf: $fd
	inc  b                                           ; $7de0: $04
	push af                                          ; $7de1: $f5
	db   $fd                                         ; $7de2: $fd
	rst  $38                                         ; $7de3: $ff
	cp   $f6                                         ; $7de4: $fe $f6
	add  c                                           ; $7de6: $81
	sbc  $02                                         ; $7de7: $de $02
	ld   e, b                                        ; $7de9: $58
	ldh  a, [$f3]                                    ; $7dea: $f0 $f3
	add  c                                           ; $7dec: $81
	ld   hl, sp+$00                                  ; $7ded: $f8 $00
	ld   a, d                                        ; $7def: $7a
	add  c                                           ; $7df0: $81
	db   $fc                                         ; $7df1: $fc
	nop                                              ; $7df2: $00
	db   $fd                                         ; $7df3: $fd
	add  c                                           ; $7df4: $81
	cp   $01                                         ; $7df5: $fe $01
	or   $f7                                         ; $7df7: $f6 $f7
	add  b                                           ; $7df9: $80
	db   $fc                                         ; $7dfa: $fc
	dec  b                                           ; $7dfb: $05
	cp   $0e                                         ; $7dfc: $fe $0e
	rst  $28                                         ; $7dfe: $ef
	inc  de                                          ; $7dff: $13
	rrca                                             ; $7e00: $0f
	inc  bc                                          ; $7e01: $03
	add  h                                           ; $7e02: $84
	nop                                              ; $7e03: $00
	inc  bc                                          ; $7e04: $03
	add  b                                           ; $7e05: $80
	nop                                              ; $7e06: $00
	adc  a                                           ; $7e07: $8f
	rrca                                             ; $7e08: $0f
	add  b                                           ; $7e09: $80
	rra                                              ; $7e0a: $1f
	dec  b                                           ; $7e0b: $05
	ccf                                              ; $7e0c: $3f
	jr   c, @+$01                                    ; $7e0d: $38 $ff

	ldh  a, [rOCPD]                                  ; $7e0f: $f0 $6b
	ld   h, e                                        ; $7e11: $63
	add  d                                           ; $7e12: $82
	rlca                                             ; $7e13: $07
	add  b                                           ; $7e14: $80
	inc  b                                           ; $7e15: $04
	rlca                                             ; $7e16: $07
	rst  $38                                         ; $7e17: $ff
	cp   $86                                         ; $7e18: $fe $86
	add  a                                           ; $7e1a: $87
	pop  hl                                          ; $7e1b: $e1
	ld   bc, $01e1                                   ; $7e1c: $01 $e1 $01
	add  b                                           ; $7e1f: $80
	ldh  [$80], a                                    ; $7e20: $e0 $80
	ret  nz                                          ; $7e22: $c0

	add  d                                           ; $7e23: $82
	nop                                              ; $7e24: $00
	nop                                              ; $7e25: $00
	rst  $38                                         ; $7e26: $ff
	add  b                                           ; $7e27: $80
	rst  $30                                         ; $7e28: $f7
	add  e                                           ; $7e29: $83
	ld   a, e                                        ; $7e2a: $7b
	nop                                              ; $7e2b: $00
	ei                                               ; $7e2c: $fb
	add  h                                           ; $7e2d: $84
	dec  a                                           ; $7e2e: $3d
	dec  b                                           ; $7e2f: $05
	dec  e                                           ; $7e30: $1d
	sbc  [hl]                                        ; $7e31: $9e
	ld   hl, sp-$06                                  ; $7e32: $f8 $fa
	db   $fc                                         ; $7e34: $fc
	db   $fd                                         ; $7e35: $fd
	add  d                                           ; $7e36: $82
	cp   $81                                         ; $7e37: $fe $81
	rst  $38                                         ; $7e39: $ff
	ld   bc, $fff9                                   ; $7e3a: $01 $f9 $ff
	add  b                                           ; $7e3d: $80
	ei                                               ; $7e3e: $fb
	ld   bc, $171f                                   ; $7e3f: $01 $1f $17
	add  b                                           ; $7e42: $80

jr_095_7e43:
	ld   [hl], a                                     ; $7e43: $77
	add  e                                           ; $7e44: $83
	rst  $30                                         ; $7e45: $f7
	add  b                                           ; $7e46: $80
	ld   [hl], a                                     ; $7e47: $77
	add  b                                           ; $7e48: $80
	or   a                                           ; $7e49: $b7
	add  b                                           ; $7e4a: $80
	rst  $10                                         ; $7e4b: $d7
	ld   bc, $e1e7                                   ; $7e4c: $01 $e7 $e1
	adc  b                                           ; $7e4f: $88
	rra                                              ; $7e50: $1f
	add  b                                           ; $7e51: $80
	dec  e                                           ; $7e52: $1d
	add  b                                           ; $7e53: $80
	rla                                              ; $7e54: $17
	inc  bc                                          ; $7e55: $03
	dec  e                                           ; $7e56: $1d
	dec  a                                           ; $7e57: $3d
	rrca                                             ; $7e58: $0f
	rst  $28                                         ; $7e59: $ef
	add  c                                           ; $7e5a: $81
	rst  JumpTable                                         ; $7e5b: $df
	inc  b                                           ; $7e5c: $04
	dec  e                                           ; $7e5d: $1d
	cp   a                                           ; $7e5e: $bf
	dec  sp                                          ; $7e5f: $3b
	ccf                                              ; $7e60: $3f
	rst  ToBoot                                         ; $7e61: $c7
	add  c                                           ; $7e62: $81
	ld   a, a                                        ; $7e63: $7f
	ld   [bc], a                                     ; $7e64: $02
	ld   a, c                                        ; $7e65: $79
	ld   a, a                                        ; $7e66: $7f
	rlca                                             ; $7e67: $07
	add  l                                           ; $7e68: $85
	rst  $38                                         ; $7e69: $ff
	nop                                              ; $7e6a: $00
	cp   $85                                         ; $7e6b: $fe $85
	rst  $38                                         ; $7e6d: $ff
	ld   [bc], a                                     ; $7e6e: $02
	or   $ef                                         ; $7e6f: $f6 $ef
	db   $e3                                         ; $7e71: $e3
	add  c                                           ; $7e72: $81
	rst  $20                                         ; $7e73: $e7
	nop                                              ; $7e74: $00
	jp   hl                                          ; $7e75: $e9


	add  c                                           ; $7e76: $81
	db   $eb                                         ; $7e77: $eb
	ld   b, $6c                                      ; $7e78: $06 $6c
	db   $ed                                         ; $7e7a: $ed
	push hl                                          ; $7e7b: $e5
	push af                                          ; $7e7c: $f5
	or   l                                           ; $7e7d: $b5
	push af                                          ; $7e7e: $f5
	inc  de                                          ; $7e7f: $13
	add  e                                           ; $7e80: $83
	rst  $28                                         ; $7e81: $ef
	inc  b                                           ; $7e82: $04
	rst  $38                                         ; $7e83: $ff
	rst  $30                                         ; $7e84: $f7
	push af                                          ; $7e85: $f5
	rst  $30                                         ; $7e86: $f7
	or   a                                           ; $7e87: $b7
	add  c                                           ; $7e88: $81
	rst  $30                                         ; $7e89: $f7
	inc  bc                                          ; $7e8a: $03
	or   $f7                                         ; $7e8b: $f6 $f7
	add  e                                           ; $7e8d: $83
	ld   a, e                                        ; $7e8e: $7b
	add  e                                           ; $7e8f: $83
	ld   a, c                                        ; $7e90: $79
	nop                                              ; $7e91: $00
	cp   c                                           ; $7e92: $b9
	add  e                                           ; $7e93: $83
	cp   h                                           ; $7e94: $bc
	add  c                                           ; $7e95: $81
	call c, $a000                                    ; $7e96: $dc $00 $a0
	add  c                                           ; $7e99: $81
	nop                                              ; $7e9a: $00
	nop                                              ; $7e9b: $00
	ld   b, b                                        ; $7e9c: $40
	add  e                                           ; $7e9d: $83
	add  b                                           ; $7e9e: $80
	nop                                              ; $7e9f: $00
	and  b                                           ; $7ea0: $a0
	add  e                                           ; $7ea1: $83
	ret  nz                                          ; $7ea2: $c0

	nop                                              ; $7ea3: $00
	jr   nz, jr_095_7e43                             ; $7ea4: $20 $9d

	nop                                              ; $7ea6: $00
	nop                                              ; $7ea7: $00
	ld   a, a                                        ; $7ea8: $7f
	add  c                                           ; $7ea9: $81
	ld   e, $00                                      ; $7eaa: $1e $00
	ld   a, $83                                      ; $7eac: $3e $83
	ld   l, $02                                      ; $7eae: $2e $02
	ld   a, $36                                      ; $7eb0: $3e $36
	or   $81                                         ; $7eb2: $f6 $81
	halt                                             ; $7eb4: $76
	ld   bc, $fb85                                   ; $7eb5: $01 $85 $fb
	add  b                                           ; $7eb8: $80
	ld   sp, hl                                      ; $7eb9: $f9
	ld   bc, $f9c9                                   ; $7eba: $01 $c9 $f9
	add  b                                           ; $7ebd: $80
	ld   [wIsGBC], a                                  ; $7ebe: $ea $00 $c2
	add  c                                           ; $7ec1: $81
	ld   [$6900], a                                  ; $7ec2: $ea $00 $69
	add  c                                           ; $7ec5: $81
	ld   l, l                                        ; $7ec6: $6d
	ld   b, $62                                      ; $7ec7: $06 $62
	rst  $30                                         ; $7ec9: $f7
	di                                               ; $7eca: $f3
	ei                                               ; $7ecb: $fb
	ld   sp, hl                                      ; $7ecc: $f9
	db   $fd                                         ; $7ecd: $fd
	ld   a, l                                        ; $7ece: $7d
	add  b                                           ; $7ecf: $80
	db   $fd                                         ; $7ed0: $fd
	rlca                                             ; $7ed1: $07
	cp   $f6                                         ; $7ed2: $fe $f6
	cp   $6e                                         ; $7ed4: $fe $6e
	ld   a, [hl]                                     ; $7ed6: $7e
	ld   d, $7e                                      ; $7ed7: $16 $7e
	ld   c, $80                                      ; $7ed9: $0e $80
	ld   a, [bc]                                     ; $7edb: $0a
	add  b                                           ; $7edc: $80
	dec  d                                           ; $7edd: $15
	add  b                                           ; $7ede: $80
	ld   a, [bc]                                     ; $7edf: $0a
	add  b                                           ; $7ee0: $80
	dec  d                                           ; $7ee1: $15
	add  b                                           ; $7ee2: $80
	ld   a, [bc]                                     ; $7ee3: $0a
	add  b                                           ; $7ee4: $80
	dec  d                                           ; $7ee5: $15
	add  b                                           ; $7ee6: $80
	ld   a, [bc]                                     ; $7ee7: $0a
	ld   bc, $ea15                                   ; $7ee8: $01 $15 $ea
	db   $fd                                         ; $7eeb: $fd
	nop                                              ; $7eec: $00
	ld   [hl], l                                     ; $7eed: $75
	nop                                              ; $7eee: $00
	add  b                                           ; $7eef: $80
	cp   a                                           ; $7ef0: $bf
	add  b                                           ; $7ef1: $80
	ccf                                              ; $7ef2: $3f
	add  b                                           ; $7ef3: $80
	rlca                                             ; $7ef4: $07
	add  b                                           ; $7ef5: $80
	ld   a, a                                        ; $7ef6: $7f

jr_095_7ef7:
	add  d                                           ; $7ef7: $82
	rst  $38                                         ; $7ef8: $ff
	add  b                                           ; $7ef9: $80
	rst  $30                                         ; $7efa: $f7
	add  b                                           ; $7efb: $80
	ld   a, [$e000]                                  ; $7efc: $fa $00 $e0
	add  e                                           ; $7eff: $83
	rst  $28                                         ; $7f00: $ef
	nop                                              ; $7f01: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f02: $cf
	add  c                                           ; $7f03: $81
	rst  JumpTable                                         ; $7f04: $df
	ld   bc, $bf9f                                   ; $7f05: $01 $9f $bf
	add  c                                           ; $7f08: $81
	ccf                                              ; $7f09: $3f
	ld   bc, $505f                                   ; $7f0a: $01 $5f $50
	add  b                                           ; $7f0d: $80
	pop  hl                                          ; $7f0e: $e1
	add  b                                           ; $7f0f: $80
	push hl                                          ; $7f10: $e5
	ld   bc, $fcec                                   ; $7f11: $01 $ec $fc
	add  b                                           ; $7f14: $80
	adc  $80                                         ; $7f15: $ce $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f17: $cf
	ld   bc, $ffdf                                   ; $7f18: $01 $df $ff
	add  c                                           ; $7f1b: $81
	sbc  a                                           ; $7f1c: $9f
	nop                                              ; $7f1d: $00
	ld   e, h                                        ; $7f1e: $5c
	add  c                                           ; $7f1f: $81
	rst  $38                                         ; $7f20: $ff
	nop                                              ; $7f21: $00
	ei                                               ; $7f22: $fb
	add  l                                           ; $7f23: $85
	rst  $38                                         ; $7f24: $ff
	nop                                              ; $7f25: $00
	rst  $30                                         ; $7f26: $f7
	add  c                                           ; $7f27: $81
	rst  $38                                         ; $7f28: $ff
	nop                                              ; $7f29: $00
	rrca                                             ; $7f2a: $0f
	add  h                                           ; $7f2b: $84
	rst  $38                                         ; $7f2c: $ff
	add  b                                           ; $7f2d: $80
	cp   $80                                         ; $7f2e: $fe $80
	rst  JumpTable                                         ; $7f30: $df
	adc  b                                           ; $7f31: $88
	rst  $38                                         ; $7f32: $ff
	add  b                                           ; $7f33: $80
	db   $dd                                         ; $7f34: $dd
	add  d                                           ; $7f35: $82
	rst  $38                                         ; $7f36: $ff
	add  b                                           ; $7f37: $80
	rst  $30                                         ; $7f38: $f7
	add  b                                           ; $7f39: $80
	rst  $38                                         ; $7f3a: $ff
	add  b                                           ; $7f3b: $80
	ld   a, a                                        ; $7f3c: $7f
	add  b                                           ; $7f3d: $80
	rst  $30                                         ; $7f3e: $f7
	add  b                                           ; $7f3f: $80
	rst  $38                                         ; $7f40: $ff
	add  b                                           ; $7f41: $80
	db   $dd                                         ; $7f42: $dd
	add  d                                           ; $7f43: $82
	rst  $38                                         ; $7f44: $ff
	add  b                                           ; $7f45: $80
	rst  $28                                         ; $7f46: $ef
	adc  h                                           ; $7f47: $8c
	rst  $38                                         ; $7f48: $ff
	add  b                                           ; $7f49: $80
	rst  $28                                         ; $7f4a: $ef
	add  b                                           ; $7f4b: $80
	rst  $38                                         ; $7f4c: $ff
	ld   bc, $c2fd                                   ; $7f4d: $01 $fd $c2
	add  d                                           ; $7f50: $82
	add  c                                           ; $7f51: $81
	add  c                                           ; $7f52: $81
	add  b                                           ; $7f53: $80
	nop                                              ; $7f54: $00
	ret  nz                                          ; $7f55: $c0

	add  l                                           ; $7f56: $85
	nop                                              ; $7f57: $00
	rlca                                             ; $7f58: $07
	sbc  b                                           ; $7f59: $98
	rlca                                             ; $7f5a: $07
	rla                                              ; $7f5b: $17
	add  a                                           ; $7f5c: $87
	sbc  e                                           ; $7f5d: $9b
	add  e                                           ; $7f5e: $83
	add  l                                           ; $7f5f: $85
	dec  c                                           ; $7f60: $0d
	add  b                                           ; $7f61: $80
	ld   c, $00                                      ; $7f62: $0e $00
	ccf                                              ; $7f64: $3f
	add  b                                           ; $7f65: $80
	rrca                                             ; $7f66: $0f
	add  c                                           ; $7f67: $81
	rra                                              ; $7f68: $1f
	nop                                              ; $7f69: $00
	inc  a                                           ; $7f6a: $3c
	add  c                                           ; $7f6b: $81
	db   $fc                                         ; $7f6c: $fc
	add  d                                           ; $7f6d: $82
	ld   hl, sp-$7e                                  ; $7f6e: $f8 $82
	ld   a, [$f682]                                  ; $7f70: $fa $82 $f6
	nop                                              ; $7f73: $00
	jr   nz, jr_095_7ef7                             ; $7f74: $20 $81

	rst  JumpTable                                         ; $7f76: $df
	add  e                                           ; $7f77: $83
	rst  $28                                         ; $7f78: $ef
	inc  bc                                          ; $7f79: $03
	xor  $ed                                         ; $7f7a: $ee $ed
	xor  $f6                                         ; $7f7c: $ee $f6
	add  c                                           ; $7f7e: $81
	rst  $30                                         ; $7f7f: $f7
	nop                                              ; $7f80: $00
	jp   $9f80                                       ; $7f81: $c3 $80 $9f


	ld   bc, $ffbf                                   ; $7f84: $01 $bf $ff
	add  b                                           ; $7f87: $80
	ld   e, a                                        ; $7f88: $5f
	add  hl, bc                                      ; $7f89: $09
	ld   a, a                                        ; $7f8a: $7f
	ccf                                              ; $7f8b: $3f
	ld   a, a                                        ; $7f8c: $7f
	rst  JumpTable                                         ; $7f8d: $df
	ccf                                              ; $7f8e: $3f
	ld   h, a                                        ; $7f8f: $67
	rra                                              ; $7f90: $1f
	add  hl, sp                                      ; $7f91: $39
	rst  $28                                         ; $7f92: $ef
	pop  af                                          ; $7f93: $f1
	add  h                                           ; $7f94: $84
	nop                                              ; $7f95: $00
	nop                                              ; $7f96: $00
	rst  $38                                         ; $7f97: $ff
	add  h                                           ; $7f98: $84
	nop                                              ; $7f99: $00
	add  b                                           ; $7f9a: $80
	rst  $38                                         ; $7f9b: $ff
	nop                                              ; $7f9c: $00
	adc  c                                           ; $7f9d: $89
	adc  l                                           ; $7f9e: $8d
	adc  [hl]                                        ; $7f9f: $8e
	ld   bc, $fff8                                   ; $7fa0: $01 $f8 $ff
	add  h                                           ; $7fa3: $84
	nop                                              ; $7fa4: $00
	add  b                                           ; $7fa5: $80
	rst  $38                                         ; $7fa6: $ff
	nop                                              ; $7fa7: $00
	nop                                              ; $7fa8: $00
	add  c                                           ; $7fa9: $81
	rst  $38                                         ; $7faa: $ff
	add  b                                           ; $7fab: $80
	nop                                              ; $7fac: $00
	nop                                              ; $7fad: $00
	ld   c, $8d                                      ; $7fae: $0e $8d
	ld   de, $6901                                   ; $7fb0: $11 $01 $69
	adc  [hl]                                        ; $7fb3: $8e
	add  h                                           ; $7fb4: $84
	ld   c, $80                                      ; $7fb5: $0e $80
	cp   $00                                         ; $7fb7: $fe $00
	ld   b, $81                                      ; $7fb9: $06 $81
	cp   $87                                         ; $7fbb: $fe $87
	nop                                              ; $7fbd: $00
	nop                                              ; $7fbe: $00
	rra                                              ; $7fbf: $1f
	add  h                                           ; $7fc0: $84
	db   $10                                         ; $7fc1: $10
	add  b                                           ; $7fc2: $80
	ld   de, $1f00                                   ; $7fc3: $11 $00 $1f
	add  h                                           ; $7fc6: $84
	nop                                              ; $7fc7: $00
	nop                                              ; $7fc8: $00
	rst  $38                                         ; $7fc9: $ff
	add  h                                           ; $7fca: $84
	nop                                              ; $7fcb: $00
	add  c                                           ; $7fcc: $81
	rst  $38                                         ; $7fcd: $ff
	add  h                                           ; $7fce: $84
	nop                                              ; $7fcf: $00
	nop                                              ; $7fd0: $00
	ld   hl, sp-$7c                                  ; $7fd1: $f8 $84
	ld   [$8880], sp                                 ; $7fd3: $08 $80 $88
	nop                                              ; $7fd6: $00
	rlca                                             ; $7fd7: $07
	rst  $38                                         ; $7fd8: $ff
	nop                                              ; $7fd9: $00
	rst  $38                                         ; $7fda: $ff
	nop                                              ; $7fdb: $00
	rst  $38                                         ; $7fdc: $ff
	nop                                              ; $7fdd: $00
	rst  $38                                         ; $7fde: $ff
	nop                                              ; $7fdf: $00
	rst  $38                                         ; $7fe0: $ff
	nop                                              ; $7fe1: $00
	rst  $38                                         ; $7fe2: $ff
	nop                                              ; $7fe3: $00
	rst  $38                                         ; $7fe4: $ff
	nop                                              ; $7fe5: $00
	rst  $38                                         ; $7fe6: $ff
	nop                                              ; $7fe7: $00
	rst  $38                                         ; $7fe8: $ff
	nop                                              ; $7fe9: $00
	rst  $38                                         ; $7fea: $ff
	nop                                              ; $7feb: $00
	rst  $38                                         ; $7fec: $ff
	nop                                              ; $7fed: $00
	rst  $38                                         ; $7fee: $ff
	nop                                              ; $7fef: $00
	rst  $38                                         ; $7ff0: $ff
	nop                                              ; $7ff1: $00
	and  b                                           ; $7ff2: $a0
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	xor  c                                           ; $7ff5: $a9
	ld   bc, $00a4                                   ; $7ff6: $01 $a4 $00
	ret                                              ; $7ff9: $c9


	ld   bc, $ffa5                                   ; $7ffa: $01 $a5 $ff
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
