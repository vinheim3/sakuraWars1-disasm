; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $073", ROMX[$4000], BANK[$73]

	call nz, $8601                                   ; $4000: $c4 $01 $86
	nop                                              ; $4003: $00
	nop                                              ; $4004: $00
	inc  c                                           ; $4005: $0c
	add  l                                           ; $4006: $85
	inc  bc                                          ; $4007: $03
	nop                                              ; $4008: $00
	rrca                                             ; $4009: $0f
	add  l                                           ; $400a: $85
	nop                                              ; $400b: $00
	ld   bc, $01fe                                   ; $400c: $01 $fe $01
	add  b                                           ; $400f: $80

jr_073_4010:
	ld   de, $0180                                   ; $4010: $11 $80 $01
	add  b                                           ; $4013: $80
	ld   de, $ff00                                   ; $4014: $11 $00 $ff
	add  l                                           ; $4017: $85
	nop                                              ; $4018: $00
	ld   [$bf78], sp                                 ; $4019: $08 $78 $bf
	cp   c                                           ; $401c: $b9
	adc  a                                           ; $401d: $8f
	add  [hl]                                        ; $401e: $86
	adc  c                                           ; $401f: $89
	add  b                                           ; $4020: $80
	add  c                                           ; $4021: $81
	rst  $38                                         ; $4022: $ff
	add  l                                           ; $4023: $85
	nop                                              ; $4024: $00
	add  b                                           ; $4025: $80
	rst  $38                                         ; $4026: $ff
	ld   b, $3f                                      ; $4027: $06 $3f
	rst  $38                                         ; $4029: $ff
	rrca                                             ; $402a: $0f
	rst  $38                                         ; $402b: $ff
	jp   $8c7f                                       ; $402c: $c3 $7f $8c


	add  l                                           ; $402f: $85
	nop                                              ; $4030: $00
	ld   [bc], a                                     ; $4031: $02
	cp   $ff                                         ; $4032: $fe $ff
	cp   $83                                         ; $4034: $fe $83
	rst  $38                                         ; $4036: $ff
	add  [hl]                                        ; $4037: $86
	nop                                              ; $4038: $00
	ld   [$fffe], sp                                 ; $4039: $08 $fe $ff
	ld   a, $ff                                      ; $403c: $3e $ff
	rra                                              ; $403e: $1f
	rst  $38                                         ; $403f: $ff
	ret  nc                                          ; $4040: $d0

	rst  $38                                         ; $4041: $ff
	rrca                                             ; $4042: $0f
	add  l                                           ; $4043: $85
	nop                                              ; $4044: $00
	ld   [bc], a                                     ; $4045: $02
	xor  d                                           ; $4046: $aa
	rst  $38                                         ; $4047: $ff
	xor  d                                           ; $4048: $aa
	add  c                                           ; $4049: $81
	rst  $38                                         ; $404a: $ff
	nop                                              ; $404b: $00
	nop                                              ; $404c: $00
	add  b                                           ; $404d: $80
	rst  $38                                         ; $404e: $ff
	add  l                                           ; $404f: $85
	nop                                              ; $4050: $00
	ld   b, $aa                                      ; $4051: $06 $aa
	rst  $38                                         ; $4053: $ff
	dec  b                                           ; $4054: $05
	rst  $38                                         ; $4055: $ff
	ld   d, c                                        ; $4056: $51
	rst  $38                                         ; $4057: $ff
	ld   bc, $ff80                                   ; $4058: $01 $80 $ff
	add  l                                           ; $405b: $85
	nop                                              ; $405c: $00
	ld   [$ff80], sp                                 ; $405d: $08 $80 $ff
	ld   e, a                                        ; $4060: $5f
	rst  $20                                         ; $4061: $e7
	and  l                                           ; $4062: $a5
	ei                                               ; $4063: $fb
	ld   l, d                                        ; $4064: $6a
	rst  $38                                         ; $4065: $ff
	inc  c                                           ; $4066: $0c
	add  l                                           ; $4067: $85
	nop                                              ; $4068: $00
	ld   [$fc10], sp                                 ; $4069: $08 $10 $fc
	call z, $9cfc                                    ; $406c: $cc $fc $9c
	db   $fc                                         ; $406f: $fc
	ld   h, e                                        ; $4070: $63
	rst  $38                                         ; $4071: $ff
	db   $20, $85                                    ; $4072: $20 $85
	nop                                              ; $4074: $00
	ld   [$7f44], sp                                 ; $4075: $08 $44 $7f
	add  hl, sp                                      ; $4078: $39
	ccf                                              ; $4079: $3f
	inc  a                                           ; $407a: $3c
	ccf                                              ; $407b: $3f
	ret  nz                                          ; $407c: $c0

	rst  $38                                         ; $407d: $ff
	ld   bc, $0086                                   ; $407e: $01 $86 $00
	rlca                                             ; $4081: $07
	rst  $38                                         ; $4082: $ff
	db   $fd                                         ; $4083: $fd
	di                                               ; $4084: $f3
	db   $d3                                         ; $4085: $d3
	rst  $28                                         ; $4086: $ef
	ld   a, [bc]                                     ; $4087: $0a
	rst  $38                                         ; $4088: $ff
	jr   c, jr_073_4010                              ; $4089: $38 $85

	nop                                              ; $408b: $00
	ld   b, $2a                                      ; $408c: $06 $2a
	rst  $38                                         ; $408e: $ff
	ret  nc                                          ; $408f: $d0

	rst  $38                                         ; $4090: $ff
	push hl                                          ; $4091: $e5
	rst  $38                                         ; $4092: $ff
	ldh  [$80], a                                    ; $4093: $e0 $80
	rst  $38                                         ; $4095: $ff
	add  l                                           ; $4096: $85
	nop                                              ; $4097: $00
	ld   b, $aa                                      ; $4098: $06 $aa
	rst  $38                                         ; $409a: $ff
	ld   [bc], a                                     ; $409b: $02
	rst  $38                                         ; $409c: $ff
	ld   d, a                                        ; $409d: $57
	rst  $38                                         ; $409e: $ff
	nop                                              ; $409f: $00
	add  b                                           ; $40a0: $80
	rst  $38                                         ; $40a1: $ff
	add  l                                           ; $40a2: $85
	nop                                              ; $40a3: $00
	ld   [bc], a                                     ; $40a4: $02
	xor  d                                           ; $40a5: $aa
	rst  $38                                         ; $40a6: $ff
	xor  d                                           ; $40a7: $aa
	add  c                                           ; $40a8: $81
	rst  $38                                         ; $40a9: $ff
	nop                                              ; $40aa: $00
	nop                                              ; $40ab: $00
	add  b                                           ; $40ac: $80
	rst  $38                                         ; $40ad: $ff
	add  l                                           ; $40ae: $85
	nop                                              ; $40af: $00
	ld   [$fffc], sp                                 ; $40b0: $08 $fc $ff
	ld   a, [$e1ff]                                  ; $40b3: $fa $ff $e1
	rst  $38                                         ; $40b6: $ff
	ld   h, a                                        ; $40b7: $67
	rst  $38                                         ; $40b8: $ff
	adc  h                                           ; $40b9: $8c
	adc  l                                           ; $40ba: $8d
	inc  bc                                          ; $40bb: $03
	ld   bc, $01f1                                   ; $40bc: $01 $f1 $01
	add  b                                           ; $40bf: $80
	ld   de, $0180                                   ; $40c0: $11 $80 $01
	add  b                                           ; $40c3: $80
	ld   de, $0180                                   ; $40c4: $11 $80 $01
	add  b                                           ; $40c7: $80
	ld   de, $0180                                   ; $40c8: $11 $80 $01
	add  b                                           ; $40cb: $80
	ld   de, $8980                                   ; $40cc: $11 $80 $89
	add  b                                           ; $40cf: $80
	add  c                                           ; $40d0: $81
	add  b                                           ; $40d1: $80
	adc  c                                           ; $40d2: $89
	add  b                                           ; $40d3: $80
	add  c                                           ; $40d4: $81
	add  b                                           ; $40d5: $80
	adc  c                                           ; $40d6: $89
	add  b                                           ; $40d7: $80
	add  c                                           ; $40d8: $81
	add  b                                           ; $40d9: $80
	adc  c                                           ; $40da: $89
	add  b                                           ; $40db: $80
	add  c                                           ; $40dc: $81
	rlca                                             ; $40dd: $07
	inc  hl                                          ; $40de: $23
	ccf                                              ; $40df: $3f
	inc  e                                           ; $40e0: $1c
	rlca                                             ; $40e1: $07
	inc  hl                                          ; $40e2: $23
	dec  h                                           ; $40e3: $25
	dec  b                                           ; $40e4: $05
	inc  b                                           ; $40e5: $04
	add  b                                           ; $40e6: $80
	inc  h                                           ; $40e7: $24
	add  b                                           ; $40e8: $80
	inc  b                                           ; $40e9: $04
	add  b                                           ; $40ea: $80
	inc  h                                           ; $40eb: $24
	add  b                                           ; $40ec: $80
	inc  b                                           ; $40ed: $04
	ld   d, $00                                      ; $40ee: $16 $00
	rst  $38                                         ; $40f0: $ff
	ccf                                              ; $40f1: $3f
	rst  $38                                         ; $40f2: $ff
	rrca                                             ; $40f3: $0f
	rst  $38                                         ; $40f4: $ff
	jp   $d07f                                       ; $40f5: $c3 $7f $d0


	cp   a                                           ; $40f8: $bf
	inc  a                                           ; $40f9: $3c
	daa                                              ; $40fa: $27
	and  a                                           ; $40fb: $a7
	and  c                                           ; $40fc: $a1
	dec  h                                           ; $40fd: $25
	inc  h                                           ; $40fe: $24
	nop                                              ; $40ff: $00
	rst  $38                                         ; $4100: $ff
	ldh  [rIE], a                                    ; $4101: $e0 $ff
	rst  JumpTable                                         ; $4103: $df
	rst  $38                                         ; $4104: $ff
	ret  nz                                          ; $4105: $c0

	add  c                                           ; $4106: $81
	rst  $38                                         ; $4107: $ff
	ld   [$ff00], sp                                 ; $4108: $08 $00 $ff
	nop                                              ; $410b: $00
	rst  $38                                         ; $410c: $ff
	xor  l                                           ; $410d: $ad
	jp   nc, $ff80                                   ; $410e: $d2 $80 $ff

	nop                                              ; $4111: $00
	add  c                                           ; $4112: $81
	rst  $38                                         ; $4113: $ff
	nop                                              ; $4114: $00
	nop                                              ; $4115: $00
	add  c                                           ; $4116: $81
	rst  $38                                         ; $4117: $ff
	inc  c                                           ; $4118: $0c
	nop                                              ; $4119: $00
	rst  $38                                         ; $411a: $ff
	nop                                              ; $411b: $00
	rst  $38                                         ; $411c: $ff
	rst  $28                                         ; $411d: $ef
	stop                                             ; $411e: $10 $00
	rst  $38                                         ; $4120: $ff
	nop                                              ; $4121: $00
	rst  $38                                         ; $4122: $ff
	db   $fc                                         ; $4123: $fc
	rst  $38                                         ; $4124: $ff
	ld   [bc], a                                     ; $4125: $02
	add  c                                           ; $4126: $81
	rst  $38                                         ; $4127: $ff
	rla                                              ; $4128: $17
	inc  bc                                          ; $4129: $03
	rst  $38                                         ; $412a: $ff
	ld   bc, $77ff                                   ; $412b: $01 $ff $77
	add  a                                           ; $412e: $87
	ld   l, h                                        ; $412f: $6c
	sbc  a                                           ; $4130: $9f
	ld   bc, $010f                                   ; $4131: $01 $0f $01
	rrca                                             ; $4134: $0f
	ld   [bc], a                                     ; $4135: $02
	dec  c                                           ; $4136: $0d
	db   $fd                                         ; $4137: $fd
	ld   a, l                                        ; $4138: $7d
	adc  l                                           ; $4139: $8d
	dec  c                                           ; $413a: $0d
	ld   sp, hl                                      ; $413b: $f9
	db   $fd                                         ; $413c: $fd
	call $9bbd                                       ; $413d: $cd $bd $9b
	ldh  [$80], a                                    ; $4140: $e0 $80
	inc  bc                                          ; $4142: $03
	ld   bc, $8000                                   ; $4143: $01 $00 $80
	add  b                                           ; $4146: $80
	ret  nz                                          ; $4147: $c0

	inc  bc                                          ; $4148: $03
	ldh  a, [$e0]                                    ; $4149: $f0 $e0
	db   $e3                                         ; $414b: $e3
	rst  $28                                         ; $414c: $ef
	add  b                                           ; $414d: $80
	db   $ec                                         ; $414e: $ec
	add  b                                           ; $414f: $80
	rst  $28                                         ; $4150: $ef
	ld   bc, $23bf                                   ; $4151: $01 $bf $23
	add  b                                           ; $4154: $80
	ldh  [$80], a                                    ; $4155: $e0 $80
	ld   bc, $0205                                   ; $4157: $01 $05 $02
	inc  bc                                          ; $415a: $03
	rlca                                             ; $415b: $07
	dec  b                                           ; $415c: $05
	push hl                                          ; $415d: $e5
	db   $fd                                         ; $415e: $fd
	add  b                                           ; $415f: $80
	dec  e                                           ; $4160: $1d
	add  b                                           ; $4161: $80
	db   $fd                                         ; $4162: $fd
	dec  bc                                          ; $4163: $0b
	ldh  [c], a                                      ; $4164: $e2
	ld   sp, hl                                      ; $4165: $f9
	ld   b, b                                        ; $4166: $40
	ld   [hl], b                                     ; $4167: $70
	ret  nz                                          ; $4168: $c0

	ldh  a, [rAUD1SWEEP]                             ; $4169: $f0 $10
	ldh  [$cf], a                                    ; $416b: $e0 $cf
	rst  $20                                         ; $416d: $e7
	add  sp, -$20                                    ; $416e: $e8 $e0
	add  b                                           ; $4170: $80
	rst  $28                                         ; $4171: $ef
	inc  b                                           ; $4172: $04
	pop  hl                                          ; $4173: $e1
	rst  $28                                         ; $4174: $ef
	ld   hl, $00ff                                   ; $4175: $21 $ff $00
	add  c                                           ; $4178: $81
	rst  $38                                         ; $4179: $ff
	nop                                              ; $417a: $00
	nop                                              ; $417b: $00
	add  c                                           ; $417c: $81
	rst  $38                                         ; $417d: $ff
	ld   [$ff00], sp                                 ; $417e: $08 $00 $ff
	nop                                              ; $4181: $00
	rst  $38                                         ; $4182: $ff
	rra                                              ; $4183: $1f
	nop                                              ; $4184: $00
	ldh  [rIE], a                                    ; $4185: $e0 $ff
	nop                                              ; $4187: $00
	add  c                                           ; $4188: $81
	rst  $38                                         ; $4189: $ff
	nop                                              ; $418a: $00
	nop                                              ; $418b: $00
	add  c                                           ; $418c: $81
	rst  $38                                         ; $418d: $ff
	ld   [$ff00], sp                                 ; $418e: $08 $00 $ff
	nop                                              ; $4191: $00
	rst  $38                                         ; $4192: $ff
	cp   [hl]                                        ; $4193: $be
	ld   b, c                                        ; $4194: $41
	nop                                              ; $4195: $00
	rst  $38                                         ; $4196: $ff
	nop                                              ; $4197: $00
	add  c                                           ; $4198: $81
	rst  $38                                         ; $4199: $ff
	nop                                              ; $419a: $00
	nop                                              ; $419b: $00
	add  c                                           ; $419c: $81
	rst  $38                                         ; $419d: $ff
	ld   d, $00                                      ; $419e: $16 $00
	rst  $38                                         ; $41a0: $ff
	nop                                              ; $41a1: $00
	rst  $38                                         ; $41a2: $ff
	ei                                               ; $41a3: $fb
	inc  b                                           ; $41a4: $04
	nop                                              ; $41a5: $00
	rst  $38                                         ; $41a6: $ff
	ld   a, a                                        ; $41a7: $7f
	rst  $38                                         ; $41a8: $ff
	cp   [hl]                                        ; $41a9: $be
	rst  $38                                         ; $41aa: $ff
	add  hl, sp                                      ; $41ab: $39
	rst  $38                                         ; $41ac: $ff
	db   $e4                                         ; $41ad: $e4
	rst  $38                                         ; $41ae: $ff
	ld   [hl+], a                                    ; $41af: $22
	db   $fd                                         ; $41b0: $fd
	inc  a                                           ; $41b1: $3c
	ldh  a, [$d1]                                    ; $41b2: $f0 $d1
	ld   sp, $8de3                                   ; $41b4: $31 $e3 $8d
	inc  bc                                          ; $41b7: $03
	ld   bc, $01f1                                   ; $41b8: $01 $f1 $01
	add  b                                           ; $41bb: $80
	ld   de, $0180                                   ; $41bc: $11 $80 $01
	add  b                                           ; $41bf: $80
	ld   de, $0180                                   ; $41c0: $11 $80 $01
	add  b                                           ; $41c3: $80
	ld   de, $0180                                   ; $41c4: $11 $80 $01
	add  b                                           ; $41c7: $80
	ld   de, $8980                                   ; $41c8: $11 $80 $89
	add  b                                           ; $41cb: $80
	add  c                                           ; $41cc: $81
	add  b                                           ; $41cd: $80
	adc  c                                           ; $41ce: $89
	add  b                                           ; $41cf: $80
	add  c                                           ; $41d0: $81
	add  b                                           ; $41d1: $80
	adc  c                                           ; $41d2: $89
	add  b                                           ; $41d3: $80
	add  c                                           ; $41d4: $81
	add  b                                           ; $41d5: $80
	adc  c                                           ; $41d6: $89
	add  b                                           ; $41d7: $80
	add  c                                           ; $41d8: $81
	add  b                                           ; $41d9: $80
	inc  h                                           ; $41da: $24
	add  b                                           ; $41db: $80
	inc  b                                           ; $41dc: $04
	add  b                                           ; $41dd: $80
	inc  h                                           ; $41de: $24
	add  b                                           ; $41df: $80
	inc  b                                           ; $41e0: $04
	add  b                                           ; $41e1: $80
	inc  h                                           ; $41e2: $24
	add  b                                           ; $41e3: $80
	inc  b                                           ; $41e4: $04
	add  b                                           ; $41e5: $80
	inc  h                                           ; $41e6: $24
	add  b                                           ; $41e7: $80
	inc  b                                           ; $41e8: $04
	add  b                                           ; $41e9: $80
	and  b                                           ; $41ea: $a0
	add  b                                           ; $41eb: $80
	inc  h                                           ; $41ec: $24
	add  b                                           ; $41ed: $80
	and  b                                           ; $41ee: $a0
	add  b                                           ; $41ef: $80
	inc  h                                           ; $41f0: $24
	add  b                                           ; $41f1: $80
	and  b                                           ; $41f2: $a0
	add  b                                           ; $41f3: $80
	inc  h                                           ; $41f4: $24
	add  b                                           ; $41f5: $80
	and  b                                           ; $41f6: $a0
	add  b                                           ; $41f7: $80
	inc  h                                           ; $41f8: $24
	ld   bc, $c242                                   ; $41f9: $01 $42 $c2
	add  b                                           ; $41fc: $80
	jp   nc, $c280                                   ; $41fd: $d2 $80 $c2

	add  b                                           ; $4200: $80
	jp   nc, $c280                                   ; $4201: $d2 $80 $c2

	add  b                                           ; $4204: $80
	jp   nc, $c280                                   ; $4205: $d2 $80 $c2

	add  b                                           ; $4208: $80
	jp   nc, $1220                                   ; $4209: $d2 $20 $12

	sub  d                                           ; $420c: $92
	ld   de, $9310                                   ; $420d: $11 $10 $93
	sub  b                                           ; $4210: $90
	rla                                              ; $4211: $17
	db   $10                                         ; $4212: $10
	sub  a                                           ; $4213: $97
	sub  b                                           ; $4214: $90
	rla                                              ; $4215: $17
	db   $10                                         ; $4216: $10
	sbc  [hl]                                        ; $4217: $9e
	sub  b                                           ; $4218: $90
	inc  e                                           ; $4219: $1c
	db   $10                                         ; $421a: $10
	cp   b                                           ; $421b: $b8
	add  a                                           ; $421c: $87
	rst  $10                                         ; $421d: $d7
	add  a                                           ; $421e: $87
	sub  [hl]                                        ; $421f: $96
	rlca                                             ; $4220: $07
	sub  a                                           ; $4221: $97
	rlca                                             ; $4222: $07
	sub  c                                           ; $4223: $91
	rlca                                             ; $4224: $07
	sub  a                                           ; $4225: $97
	inc  bc                                          ; $4226: $03
	stop                                             ; $4227: $10 $00
	stop                                             ; $4229: $10 $00
	ld   d, d                                        ; $422b: $52
	add  c                                           ; $422c: $81
	cp   l                                           ; $422d: $bd
	nop                                              ; $422e: $00
	or   l                                           ; $422f: $b5
	add  c                                           ; $4230: $81
	cp   l                                           ; $4231: $bd
	jr   jr_073_4260                                 ; $4232: $18 $2c

	rst  $38                                         ; $4234: $ff
	sbc  a                                           ; $4235: $9f
	rst  $38                                         ; $4236: $ff
	call $ebff                                       ; $4237: $cd $ff $eb
	rst  $28                                         ; $423a: $ef
	add  a                                           ; $423b: $87
	rst  $28                                         ; $423c: $ef
	ld   l, a                                        ; $423d: $6f
	rst  $38                                         ; $423e: $ff
	rst  $30                                         ; $423f: $f7
	rst  $38                                         ; $4240: $ff
	rst  $28                                         ; $4241: $ef
	rst  JumpTable                                         ; $4242: $df
	reti                                             ; $4243: $d9


	rst  JumpTable                                         ; $4244: $df
	rst  $10                                         ; $4245: $d7
	rst  JumpTable                                         ; $4246: $df
	jp   c, $dddf                                    ; $4247: $da $df $dd

	rst  JumpTable                                         ; $424a: $df
	cp   c                                           ; $424b: $b9
	add  c                                           ; $424c: $81
	db   $fd                                         ; $424d: $fd
	ld   d, $f5                                      ; $424e: $16 $f5
	db   $fd                                         ; $4250: $fd
	xor  l                                           ; $4251: $ad
	db   $fd                                         ; $4252: $fd
	ret  c                                           ; $4253: $d8

	rst  $38                                         ; $4254: $ff
	call sRandomSeed                                       ; $4255: $cd $ff $bf
	rst  $38                                         ; $4258: $ff
	or   [hl]                                        ; $4259: $b6
	cp   a                                           ; $425a: $bf
	ld   c, [hl]                                     ; $425b: $4e
	rst  $28                                         ; $425c: $ef
	xor  $ef                                         ; $425d: $ee $ef
	xor  e                                           ; $425f: $ab

jr_073_4260:
	rst  $28                                         ; $4260: $ef
	db   $ec                                         ; $4261: $ec
	rst  $28                                         ; $4262: $ef
	ld   b, e                                        ; $4263: $43
	rst  $38                                         ; $4264: $ff
	xor  h                                           ; $4265: $ac
	add  b                                           ; $4266: $80
	cp   $81                                         ; $4267: $fe $81
	ld   a, [hl]                                     ; $4269: $7e
	ld   hl, $0263                                   ; $426a: $21 $63 $02
	add  a                                           ; $426d: $87
	nop                                              ; $426e: $00
	add  d                                           ; $426f: $82
	nop                                              ; $4270: $00
	add  d                                           ; $4271: $82
	nop                                              ; $4272: $00
	add  d                                           ; $4273: $82
	nop                                              ; $4274: $00
	add  d                                           ; $4275: $82
	nop                                              ; $4276: $00
	add  d                                           ; $4277: $82
	nop                                              ; $4278: $00
	add  d                                           ; $4279: $82
	nop                                              ; $427a: $00
	ld   a, [hl+]                                    ; $427b: $2a
	ld   b, l                                        ; $427c: $45
	pop  bc                                          ; $427d: $c1
	ld   bc, $05e5                                   ; $427e: $01 $e5 $05
	ld   [hl], c                                     ; $4281: $71

Jump_073_4282:
	ld   bc, $057d                                   ; $4282: $01 $7d $05
	add  hl, sp                                      ; $4285: $39
	ld   bc, $053d                                   ; $4286: $01 $3d $05
	dec  e                                           ; $4289: $1d
	ld   bc, $2490                                   ; $428a: $01 $90 $24
	add  b                                           ; $428d: $80
	rlca                                             ; $428e: $07
	inc  e                                           ; $428f: $1c
	ccf                                              ; $4290: $3f
	dec  a                                           ; $4291: $3d
	scf                                              ; $4292: $37
	ld   a, $11                                      ; $4293: $3e $11
	dec  de                                          ; $4295: $1b
	add  hl, sp                                      ; $4296: $39
	daa                                              ; $4297: $27
	ld   [hl-], a                                    ; $4298: $32
	dec  a                                           ; $4299: $3d
	inc  h                                           ; $429a: $24
	ld   a, a                                        ; $429b: $7f
	db   $eb                                         ; $429c: $eb
	or   b                                           ; $429d: $b0
	and  c                                           ; $429e: $a1
	or   c                                           ; $429f: $b1
	xor  $fe                                         ; $42a0: $ee $fe
	daa                                              ; $42a2: $27
	ld   [hl], a                                     ; $42a3: $77
	push bc                                          ; $42a4: $c5
	db   $fd                                         ; $42a5: $fd
	ld   d, b                                        ; $42a6: $50
	ld   a, c                                        ; $42a7: $79
	ld   b, e                                        ; $42a8: $43
	sbc  $d5                                         ; $42a9: $de $d5
	ld   a, [hl]                                     ; $42ab: $7e
	sub  h                                           ; $42ac: $94
	adc  l                                           ; $42ad: $8d
	inc  bc                                          ; $42ae: $03
	ld   bc, $01f1                                   ; $42af: $01 $f1 $01
	add  b                                           ; $42b2: $80
	ld   de, $0180                                   ; $42b3: $11 $80 $01
	add  b                                           ; $42b6: $80
	ld   de, $0180                                   ; $42b7: $11 $80 $01
	add  b                                           ; $42ba: $80
	ld   de, $0180                                   ; $42bb: $11 $80 $01
	add  b                                           ; $42be: $80
	ld   de, $8980                                   ; $42bf: $11 $80 $89
	add  b                                           ; $42c2: $80
	add  c                                           ; $42c3: $81
	add  b                                           ; $42c4: $80
	adc  c                                           ; $42c5: $89
	add  b                                           ; $42c6: $80

Jump_073_42c7:
	add  c                                           ; $42c7: $81
	add  b                                           ; $42c8: $80
	adc  c                                           ; $42c9: $89
	add  b                                           ; $42ca: $80
	add  c                                           ; $42cb: $81
	add  b                                           ; $42cc: $80
	adc  c                                           ; $42cd: $89
	add  b                                           ; $42ce: $80
	add  c                                           ; $42cf: $81
	add  b                                           ; $42d0: $80
	inc  h                                           ; $42d1: $24
	add  b                                           ; $42d2: $80
	inc  b                                           ; $42d3: $04
	add  b                                           ; $42d4: $80
	inc  h                                           ; $42d5: $24
	add  b                                           ; $42d6: $80
	inc  b                                           ; $42d7: $04
	add  b                                           ; $42d8: $80
	inc  h                                           ; $42d9: $24
	add  b                                           ; $42da: $80
	inc  b                                           ; $42db: $04
	add  b                                           ; $42dc: $80
	inc  h                                           ; $42dd: $24
	add  b                                           ; $42de: $80
	inc  b                                           ; $42df: $04
	add  b                                           ; $42e0: $80
	and  b                                           ; $42e1: $a0
	add  b                                           ; $42e2: $80
	inc  h                                           ; $42e3: $24
	add  b                                           ; $42e4: $80
	and  b                                           ; $42e5: $a0
	add  b                                           ; $42e6: $80
	inc  h                                           ; $42e7: $24
	add  b                                           ; $42e8: $80
	and  b                                           ; $42e9: $a0
	add  b                                           ; $42ea: $80
	inc  h                                           ; $42eb: $24
	add  b                                           ; $42ec: $80
	and  b                                           ; $42ed: $a0
	add  b                                           ; $42ee: $80

jr_073_42ef:
	inc  h                                           ; $42ef: $24
	ld   bc, $c242                                   ; $42f0: $01 $42 $c2
	add  b                                           ; $42f3: $80
	jp   nc, $c280                                   ; $42f4: $d2 $80 $c2

	add  b                                           ; $42f7: $80
	jp   nc, $c280                                   ; $42f8: $d2 $80 $c2

	add  b                                           ; $42fb: $80
	jp   nc, $c280                                   ; $42fc: $d2 $80 $c2

	add  b                                           ; $42ff: $80
	jp   nc, $1d20                                   ; $4300: $d2 $20 $1d

	sub  b                                           ; $4303: $90
	ld   a, [de]                                     ; $4304: $1a
	db   $10                                         ; $4305: $10
	cp   d                                           ; $4306: $ba
	sub  b                                           ; $4307: $90
	ld   [hl-], a                                    ; $4308: $32
	nop                                              ; $4309: $00
	or   d                                           ; $430a: $b2
	add  b                                           ; $430b: $80
	ld   [hl+], a                                    ; $430c: $22
	nop                                              ; $430d: $00
	and  d                                           ; $430e: $a2
	add  b                                           ; $430f: $80
	ld   h, d                                        ; $4310: $62
	nop                                              ; $4311: $00
	inc  [hl]                                        ; $4312: $34
	nop                                              ; $4313: $00
	stop                                             ; $4314: $10 $00
	stop                                             ; $4316: $10 $00
	stop                                             ; $4318: $10 $00
	stop                                             ; $431a: $10 $00
	stop                                             ; $431c: $10 $00
	stop                                             ; $431e: $10 $00
	stop                                             ; $4320: $10 $00
	adc  h                                           ; $4322: $8c
	adc  l                                           ; $4323: $8d
	rst  $28                                         ; $4324: $ef
	nop                                              ; $4325: $00
	rla                                              ; $4326: $17
	add  c                                           ; $4327: $81
	rst  JumpTable                                         ; $4328: $df
	ld   bc, $df5f                                   ; $4329: $01 $5f $df
	add  b                                           ; $432c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $432d: $cf
	add  b                                           ; $432e: $80
	rst  JumpTable                                         ; $432f: $df
	add  b                                           ; $4330: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4331: $cf
	add  b                                           ; $4332: $80
	rst  JumpTable                                         ; $4333: $df
	add  b                                           ; $4334: $80
	db   $eb                                         ; $4335: $eb
	ld   [bc], a                                     ; $4336: $02
	ld   a, a                                        ; $4337: $7f
	cp   a                                           ; $4338: $bf
	ccf                                              ; $4339: $3f
	add  e                                           ; $433a: $83
	cp   a                                           ; $433b: $bf
	add  b                                           ; $433c: $80
	sbc  a                                           ; $433d: $9f
	add  b                                           ; $433e: $80
	cp   a                                           ; $433f: $bf
	add  b                                           ; $4340: $80
	sbc  a                                           ; $4341: $9f
	add  b                                           ; $4342: $80
	xor  a                                           ; $4343: $af
	nop                                              ; $4344: $00
	ld   [hl], a                                     ; $4345: $77
	adc  l                                           ; $4346: $8d
	ld   a, [hl]                                     ; $4347: $7e
	jr   jr_073_43ae                                 ; $4348: $18 $64

	nop                                              ; $434a: $00
	add  d                                           ; $434b: $82
	nop                                              ; $434c: $00
	add  d                                           ; $434d: $82
	nop                                              ; $434e: $00
	add  d                                           ; $434f: $82
	nop                                              ; $4350: $00
	add  d                                           ; $4351: $82
	nop                                              ; $4352: $00
	add  d                                           ; $4353: $82
	nop                                              ; $4354: $00
	add  d                                           ; $4355: $82
	nop                                              ; $4356: $00
	add  d                                           ; $4357: $82
	nop                                              ; $4358: $00
	ld   b, d                                        ; $4359: $42
	dec  b                                           ; $435a: $05
	dec  e                                           ; $435b: $1d
	ld   bc, $041a                                   ; $435c: $01 $1a $04
	ld   d, $08                                      ; $435f: $16 $08
	ld   bc, $0580                                   ; $4361: $01 $80 $05
	ld   bc, $0601                                   ; $4364: $01 $01 $06
	add  c                                           ; $4367: $81
	rrca                                             ; $4368: $0f
	jr   nz, jr_073_42ef                             ; $4369: $20 $84

	ccf                                              ; $436b: $3f
	ld   b, e                                        ; $436c: $43
	rst  $38                                         ; $436d: $ff
	adc  b                                           ; $436e: $88
	ld   a, a                                        ; $436f: $7f
	ld   h, c                                        ; $4370: $61
	dec  sp                                          ; $4371: $3b
	dec  h                                           ; $4372: $25
	ccf                                              ; $4373: $3f
	add  hl, bc                                      ; $4374: $09
	rrca                                             ; $4375: $0f
	cp   d                                           ; $4376: $ba
	or   a                                           ; $4377: $b7
	add  d                                           ; $4378: $82
	add  a                                           ; $4379: $87
	ld   de, $3e7f                                   ; $437a: $11 $7f $3e
	ei                                               ; $437d: $fb
	ld   c, e                                        ; $437e: $4b
	rst  $30                                         ; $437f: $f7
	cp   d                                           ; $4380: $ba
	rst  $38                                         ; $4381: $ff
	ld   b, h                                        ; $4382: $44
	rst  $38                                         ; $4383: $ff
	jp   $d3fb                                       ; $4384: $c3 $fb $d3


	rst  $38                                         ; $4387: $ff
	ldh  a, [c]                                      ; $4388: $f2
	rst  $38                                         ; $4389: $ff
	nop                                              ; $438a: $00
	adc  l                                           ; $438b: $8d
	inc  bc                                          ; $438c: $03
	ld   bc, $01f1                                   ; $438d: $01 $f1 $01
	add  b                                           ; $4390: $80
	ld   de, $0180                                   ; $4391: $11 $80 $01
	add  b                                           ; $4394: $80
	ld   de, $0180                                   ; $4395: $11 $80 $01
	add  b                                           ; $4398: $80
	ld   de, $0180                                   ; $4399: $11 $80 $01
	add  b                                           ; $439c: $80
	ld   de, $8980                                   ; $439d: $11 $80 $89
	nop                                              ; $43a0: $00
	adc  e                                           ; $43a1: $8b
	adc  e                                           ; $43a2: $8b
	adc  a                                           ; $43a3: $8f
	ld   bc, $2420                                   ; $43a4: $01 $20 $24
	add  d                                           ; $43a7: $82
	db   $f4                                         ; $43a8: $f4
	ld   bc, $f414                                   ; $43a9: $01 $14 $f4
	add  [hl]                                        ; $43ac: $86
	inc  [hl]                                        ; $43ad: $34

jr_073_43ae:
	ld   bc, $a040                                   ; $43ae: $01 $40 $a0
	add  b                                           ; $43b1: $80
	inc  h                                           ; $43b2: $24
	add  b                                           ; $43b3: $80
	and  b                                           ; $43b4: $a0
	add  b                                           ; $43b5: $80
	inc  h                                           ; $43b6: $24
	add  b                                           ; $43b7: $80
	and  b                                           ; $43b8: $a0
	add  b                                           ; $43b9: $80
	inc  h                                           ; $43ba: $24
	add  b                                           ; $43bb: $80
	and  b                                           ; $43bc: $a0
	add  b                                           ; $43bd: $80
	inc  h                                           ; $43be: $24
	ld   bc, $c242                                   ; $43bf: $01 $42 $c2
	add  b                                           ; $43c2: $80
	jp   nc, $c280                                   ; $43c3: $d2 $80 $c2

	add  b                                           ; $43c6: $80
	jp   nc, $c228                                   ; $43c7: $d2 $28 $c2

	jp   $d7d0                                       ; $43ca: $c3 $d0 $d7


	pop  bc                                          ; $43cd: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $43ce: $cf
	push bc                                          ; $43cf: $c5
	rst  JumpTable                                         ; $43d0: $df
	ccf                                              ; $43d1: $3f
	add  b                                           ; $43d2: $80
	ld   h, d                                        ; $43d3: $62
	nop                                              ; $43d4: $00
	ldh  [c], a                                      ; $43d5: $e2
	add  b                                           ; $43d6: $80
	ld   h, d                                        ; $43d7: $62
	nop                                              ; $43d8: $00
	ld   b, b                                        ; $43d9: $40
	db   $fc                                         ; $43da: $fc
	and  d                                           ; $43db: $a2
	db   $fc                                         ; $43dc: $fc
	ldh  a, [rIE]                                    ; $43dd: $f0 $ff
	push af                                          ; $43df: $f5
	rst  $38                                         ; $43e0: $ff
	db   $d3                                         ; $43e1: $d3
	nop                                              ; $43e2: $00
	stop                                             ; $43e3: $10 $00
	stop                                             ; $43e5: $10 $00
	stop                                             ; $43e7: $10 $00
	stop                                             ; $43e9: $10 $00
	stop                                             ; $43eb: $10 $00
	inc  d                                           ; $43ed: $14
	nop                                              ; $43ee: $00
	inc  d                                           ; $43ef: $14
	nop                                              ; $43f0: $00
	adc  h                                           ; $43f1: $8c
	add  e                                           ; $43f2: $83
	rst  $28                                         ; $43f3: $ef
	add  b                                           ; $43f4: $80
	xor  $80                                         ; $43f5: $ee $80
	rst  $28                                         ; $43f7: $ef
	add  b                                           ; $43f8: $80
	xor  $80                                         ; $43f9: $ee $80
	db   $ed                                         ; $43fb: $ed
	add  b                                           ; $43fc: $80
	ld   [$1701], a                                  ; $43fd: $ea $01 $17
	ld   e, a                                        ; $4400: $5f
	add  b                                           ; $4401: $80
	res  0, b                                        ; $4402: $cb $80
	ld   b, l                                        ; $4404: $45
	add  b                                           ; $4405: $80
	res  0, b                                        ; $4406: $cb $80
	ld   b, l                                        ; $4408: $45
	add  b                                           ; $4409: $80
	res  0, b                                        ; $440a: $cb $80
	ld   b, l                                        ; $440c: $45
	inc  bc                                          ; $440d: $03
	jp   $e3ff                                       ; $440e: $c3 $ff $e3


	sbc  a                                           ; $4411: $9f
	add  b                                           ; $4412: $80
	xor  a                                           ; $4413: $af
	add  b                                           ; $4414: $80
	sub  a                                           ; $4415: $97
	add  b                                           ; $4416: $80
	xor  e                                           ; $4417: $ab
	add  b                                           ; $4418: $80
	sub  a                                           ; $4419: $97
	add  b                                           ; $441a: $80
	adc  e                                           ; $441b: $8b
	add  b                                           ; $441c: $80
	add  a                                           ; $441d: $87
	add  b                                           ; $441e: $80
	adc  e                                           ; $441f: $8b
	ld   bc, $3e37                                   ; $4420: $01 $37 $3e
	add  d                                           ; $4423: $82
	ld   a, [hl]                                     ; $4424: $7e
	add  b                                           ; $4425: $80
	ccf                                              ; $4426: $3f
	add  b                                           ; $4427: $80
	ld   a, a                                        ; $4428: $7f
	add  b                                           ; $4429: $80
	rra                                              ; $442a: $1f
	add  b                                           ; $442b: $80
	ld   c, a                                        ; $442c: $4f
	add  b                                           ; $442d: $80
	rra                                              ; $442e: $1f
	ld   [de], a                                     ; $442f: $12
	ld   l, l                                        ; $4430: $6d
	rrca                                             ; $4431: $0f
	adc  a                                           ; $4432: $8f
	rrca                                             ; $4433: $0f
	dec  bc                                          ; $4434: $0b
	rrca                                             ; $4435: $0f
	inc  de                                          ; $4436: $13
	db   $fc                                         ; $4437: $fc
	rlca                                             ; $4438: $07
	rst  $38                                         ; $4439: $ff
	db   $fc                                         ; $443a: $fc
	rst  $38                                         ; $443b: $ff
	cp   $ff                                         ; $443c: $fe $ff
	cp   $ff                                         ; $443e: $fe $ff
	add  hl, hl                                      ; $4440: $29
	rst  $38                                         ; $4441: $ff
	ld   a, a                                        ; $4442: $7f
	add  c                                           ; $4443: $81
	rst  $38                                         ; $4444: $ff
	ld   bc, $00ad                                   ; $4445: $01 $ad $00
	add  b                                           ; $4448: $80
	rst  $38                                         ; $4449: $ff
	rlca                                             ; $444a: $07
	nop                                              ; $444b: $00
	rst  $38                                         ; $444c: $ff
	inc  d                                           ; $444d: $14
	rst  $38                                         ; $444e: $ff
	ld   a, l                                        ; $444f: $7d
	rst  $38                                         ; $4450: $ff
	ld   [hl-], a                                    ; $4451: $32
	and  a                                           ; $4452: $a7
	add  b                                           ; $4453: $80
	add  a                                           ; $4454: $87
	inc  bc                                          ; $4455: $03
	add  c                                           ; $4456: $81
	rst  $38                                         ; $4457: $ff
	ld   a, l                                        ; $4458: $7d
	nop                                              ; $4459: $00
	add  b                                           ; $445a: $80
	rst  $38                                         ; $445b: $ff
	ld   b, $00                                      ; $445c: $06 $00
	rst  $38                                         ; $445e: $ff
	call nc, $1fff                                   ; $445f: $d4 $ff $1f
	rst  $38                                         ; $4462: $ff
	inc  [hl]                                        ; $4463: $34
	add  d                                           ; $4464: $82
	ld   hl, sp-$80                                  ; $4465: $f8 $80
	cp   $00                                         ; $4467: $fe $00
	nop                                              ; $4469: $00
	add  b                                           ; $446a: $80
	rst  $38                                         ; $446b: $ff
	ld   b, $00                                      ; $446c: $06 $00
	rst  $38                                         ; $446e: $ff
	rrca                                             ; $446f: $0f
	cp   $3c                                         ; $4470: $fe $3c
	cp   $3f                                         ; $4472: $fe $3f
	adc  l                                           ; $4474: $8d
	inc  bc                                          ; $4475: $03
	ld   bc, $01f1                                   ; $4476: $01 $f1 $01
	add  b                                           ; $4479: $80
	ld   de, $0180                                   ; $447a: $11 $80 $01
	add  b                                           ; $447d: $80
	ld   de, $0180                                   ; $447e: $11 $80 $01
	add  b                                           ; $4481: $80
	ld   de, $0180                                   ; $4482: $11 $80 $01
	add  b                                           ; $4485: $80
	ld   de, $8b00                                   ; $4486: $11 $00 $8b
	add  a                                           ; $4489: $87
	adc  a                                           ; $448a: $8f
	ld   b, $8c                                      ; $448b: $06 $8c
	adc  a                                           ; $448d: $8f
	adc  [hl]                                        ; $448e: $8e
	adc  a                                           ; $448f: $8f
	add  a                                           ; $4490: $87
	add  c                                           ; $4491: $81
	call nc, $3482                                   ; $4492: $d4 $82 $34
	ld   [$d4f4], sp                                 ; $4495: $08 $f4 $d4
	db   $f4                                         ; $4498: $f4
	add  h                                           ; $4499: $84
	db   $f4                                         ; $449a: $f4
	ld   [hl], h                                     ; $449b: $74
	call nz, $24e4                                   ; $449c: $c4 $e4 $24
	add  b                                           ; $449f: $80
	inc  b                                           ; $44a0: $04
	add  b                                           ; $44a1: $80
	and  b                                           ; $44a2: $a0
	jr   jr_073_44c9                                 ; $44a3: $18 $24

	cpl                                              ; $44a5: $2f
	and  l                                           ; $44a6: $a5
	cp   [hl]                                        ; $44a7: $be
	jr   c, @+$41                                    ; $44a8: $38 $3f

	add  b                                           ; $44aa: $80
	cp   a                                           ; $44ab: $bf
	inc  a                                           ; $44ac: $3c
	ld   a, a                                        ; $44ad: $7f
	cp   $ff                                         ; $44ae: $fe $ff
	ld   l, d                                        ; $44b0: $6a
	rst  $38                                         ; $44b1: $ff
	or   d                                           ; $44b2: $b2
	rst  JumpTable                                         ; $44b3: $df
	ret  c                                           ; $44b4: $d8

	rst  $38                                         ; $44b5: $ff
	xor  b                                           ; $44b6: $a8
	rst  $38                                         ; $44b7: $ff
	rst  $30                                         ; $44b8: $f7
	ld   a, a                                        ; $44b9: $7f
	ccf                                              ; $44ba: $3f
	rst  $38                                         ; $44bb: $ff
	cp   a                                           ; $44bc: $bf
	add  c                                           ; $44bd: $81
	rst  $38                                         ; $44be: $ff
	ld   [$ffea], sp                                 ; $44bf: $08 $ea $ff
	and  c                                           ; $44c2: $a1
	rst  $38                                         ; $44c3: $ff
	rrca                                             ; $44c4: $0f
	rst  $38                                         ; $44c5: $ff
	and  $ff                                         ; $44c6: $e6 $ff
	dec  e                                           ; $44c8: $1d

jr_073_44c9:
	add  e                                           ; $44c9: $83
	cp   a                                           ; $44ca: $bf
	dec  d                                           ; $44cb: $15
	ld   a, a                                        ; $44cc: $7f
	rst  $38                                         ; $44cd: $ff
	ld   l, d                                        ; $44ce: $6a
	rst  $38                                         ; $44cf: $ff
	ld   [hl], $f7                                   ; $44d0: $36 $f7
	add  d                                           ; $44d2: $82
	rst  $30                                         ; $44d3: $f7
	ld   a, b                                        ; $44d4: $78
	db   $ec                                         ; $44d5: $ec
	or   d                                           ; $44d6: $b2
	or   $c5                                         ; $44d7: $f6 $c5
	push af                                          ; $44d9: $f5
	ld   sp, hl                                      ; $44da: $f9
	db   $fd                                         ; $44db: $fd
	push bc                                          ; $44dc: $c5
	db   $fd                                         ; $44dd: $fd
	sub  a                                           ; $44de: $97
	rst  $38                                         ; $44df: $ff
	ld   e, $e9                                      ; $44e0: $1e $e9
	add  b                                           ; $44e2: $80
	ld   [$6d03], a                                  ; $44e3: $ea $03 $6d
	db   $ec                                         ; $44e6: $ec
	ld   a, [hl+]                                    ; $44e7: $2a
	ld   [$ec80], a                                  ; $44e8: $ea $80 $ec
	inc  bc                                          ; $44eb: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $44ec: $cf
	rst  $28                                         ; $44ed: $ef
	db   $ec                                         ; $44ee: $ec
	db   $ed                                         ; $44ef: $ed
	add  b                                           ; $44f0: $80
	xor  $04                                         ; $44f1: $ee $04
	ld   h, c                                        ; $44f3: $61
	db   $fd                                         ; $44f4: $fd
	ld   a, b                                        ; $44f5: $78
	rra                                              ; $44f6: $1f
	sub  a                                           ; $44f7: $97
	add  c                                           ; $44f8: $81
	rrca                                             ; $44f9: $0f
	add  hl, bc                                      ; $44fa: $09
	dec  bc                                          ; $44fb: $0b
	cp   $fc                                         ; $44fc: $fe $fc
	cp   $d8                                         ; $44fe: $fe $d8
	ld   l, h                                        ; $4500: $6c
	xor  $fe                                         ; $4501: $ee $fe
	rst  JumpTable                                         ; $4503: $df
	add  a                                           ; $4504: $87
	add  b                                           ; $4505: $80
	adc  e                                           ; $4506: $8b
	add  b                                           ; $4507: $80
	sub  a                                           ; $4508: $97
	add  b                                           ; $4509: $80
	adc  e                                           ; $450a: $8b
	add  b                                           ; $450b: $80
	sub  a                                           ; $450c: $97
	ld   bc, $8b8a                                   ; $450d: $01 $8a $8b
	add  b                                           ; $4510: $80
	sub  a                                           ; $4511: $97
	add  b                                           ; $4512: $80
	xor  a                                           ; $4513: $af
	ld   bc, $1f17                                   ; $4514: $01 $17 $1f
	add  b                                           ; $4517: $80
	cpl                                              ; $4518: $2f
	add  b                                           ; $4519: $80
	rra                                              ; $451a: $1f
	add  b                                           ; $451b: $80
	cpl                                              ; $451c: $2f
	add  b                                           ; $451d: $80
	ld   e, a                                        ; $451e: $5f
	add  b                                           ; $451f: $80
	cpl                                              ; $4520: $2f
	add  b                                           ; $4521: $80
	ld   e, a                                        ; $4522: $5f
	add  b                                           ; $4523: $80
	ld   l, a                                        ; $4524: $6f
	ld   [$ff0c], sp                                 ; $4525: $08 $0c $ff
	cp   $ff                                         ; $4528: $fe $ff

jr_073_452a:
	cp   $ff                                         ; $452a: $fe $ff
	cp   $ff                                         ; $452c: $fe $ff
	ld   sp, hl                                      ; $452e: $f9
	add  e                                           ; $452f: $83
	rst  $38                                         ; $4530: $ff
	ld   d, $fc                                      ; $4531: $16 $fc
	rst  $38                                         ; $4533: $ff
	ld   d, $ff                                      ; $4534: $16 $ff
	rra                                              ; $4536: $1f
	rst  $38                                         ; $4537: $ff
	rra                                              ; $4538: $1f
	rst  $38                                         ; $4539: $ff
	ld   a, l                                        ; $453a: $7d
	rst  $38                                         ; $453b: $ff
	ld   a, a                                        ; $453c: $7f
	rst  $38                                         ; $453d: $ff
	rra                                              ; $453e: $1f
	rst  $38                                         ; $453f: $ff
	rra                                              ; $4540: $1f
	rst  $38                                         ; $4541: $ff
	ld   a, a                                        ; $4542: $7f
	rst  $38                                         ; $4543: $ff
	sbc  [hl]                                        ; $4544: $9e
	rst  $38                                         ; $4545: $ff
	db   $fc                                         ; $4546: $fc
	rst  $38                                         ; $4547: $ff
	ld   e, h                                        ; $4548: $5c
	add  e                                           ; $4549: $83
	rst  $38                                         ; $454a: $ff
	ld   [bc], a                                     ; $454b: $02
	db   $fc                                         ; $454c: $fc
	rst  $38                                         ; $454d: $ff
	db   $fc                                         ; $454e: $fc
	add  c                                           ; $454f: $81
	rst  $38                                         ; $4550: $ff
	db   $10                                         ; $4551: $10
	and  [hl]                                        ; $4552: $a6
	cp   $0e                                         ; $4553: $fe $0e
	cp   $0e                                         ; $4555: $fe $0e
	cp   $3e                                         ; $4557: $fe $3e
	cp   $3d                                         ; $4559: $fe $3d
	rst  $38                                         ; $455b: $ff
	rrca                                             ; $455c: $0f
	rst  $38                                         ; $455d: $ff
	ld   c, $ff                                      ; $455e: $0e $ff
	db   $fd                                         ; $4560: $fd
	rst  $38                                         ; $4561: $ff
	cp   $8d                                         ; $4562: $fe $8d
	inc  bc                                          ; $4564: $03
	ld   bc, $01f1                                   ; $4565: $01 $f1 $01
	add  b                                           ; $4568: $80
	ld   de, $0180                                   ; $4569: $11 $80 $01
	add  b                                           ; $456c: $80
	ld   de, $0180                                   ; $456d: $11 $80 $01
	rlca                                             ; $4570: $07
	db   $10                                         ; $4571: $10
	inc  de                                          ; $4572: $13
	nop                                              ; $4573: $00
	rra                                              ; $4574: $1f
	nop                                              ; $4575: $00
	rst  $38                                         ; $4576: $ff
	ld   l, d                                        ; $4577: $6a
	adc  c                                           ; $4578: $89
	add  b                                           ; $4579: $80
	add  c                                           ; $457a: $81
	dec  h                                           ; $457b: $25
	adc  b                                           ; $457c: $88
	adc  c                                           ; $457d: $89
	add  b                                           ; $457e: $80
	adc  a                                           ; $457f: $8f
	add  b                                           ; $4580: $80
	rst  $38                                         ; $4581: $ff
	ld   bc, $08ff                                   ; $4582: $01 $ff $08
	rst  $38                                         ; $4585: $ff
	ld   b, h                                        ; $4586: $44
	rst  $38                                         ; $4587: $ff
	db   $e3                                         ; $4588: $e3
	daa                                              ; $4589: $27
	dec  b                                           ; $458a: $05
	ccf                                              ; $458b: $3f
	dec  e                                           ; $458c: $1d
	rst  $38                                         ; $458d: $ff
	ld   e, a                                        ; $458e: $5f
	rst  $38                                         ; $458f: $ff
	ld   [hl], a                                     ; $4590: $77
	rst  $38                                         ; $4591: $ff
	dec  d                                           ; $4592: $15
	rst  $38                                         ; $4593: $ff
	sub  e                                           ; $4594: $93
	rst  $38                                         ; $4595: $ff
	rrca                                             ; $4596: $0f
	rst  $38                                         ; $4597: $ff
	adc  l                                           ; $4598: $8d
	cp   $fb                                         ; $4599: $fe $fb
	ld   sp, hl                                      ; $459b: $f9
	rst  $30                                         ; $459c: $f7
	rst  $20                                         ; $459d: $e7
	db   $e4                                         ; $459e: $e4
	call nz, $10d0                                   ; $459f: $c4 $d0 $10
	add  b                                           ; $45a2: $80
	jr   nz, jr_073_45a8                             ; $45a3: $20 $03

	ld   h, b                                        ; $45a5: $60
	ldh  [$b0], a                                    ; $45a6: $e0 $b0

jr_073_45a8:
	jr   nc, jr_073_452a                             ; $45a8: $30 $80

	ld   d, l                                        ; $45aa: $55
	add  b                                           ; $45ab: $80
	ld   [hl], c                                     ; $45ac: $71
	add  b                                           ; $45ad: $80
	add  [hl]                                        ; $45ae: $86
	add  b                                           ; $45af: $80
	ld   [bc], a                                     ; $45b0: $02
	add  b                                           ; $45b1: $80
	ld   bc, $0382                                   ; $45b2: $01 $82 $03
	add  b                                           ; $45b5: $80
	ld   c, $0b                                      ; $45b6: $0e $0b
	nop                                              ; $45b8: $00
	rst  $38                                         ; $45b9: $ff
	ldh  a, [$3f]                                    ; $45ba: $f0 $3f
	scf                                              ; $45bc: $37
	rra                                              ; $45bd: $1f
	ld   h, a                                        ; $45be: $67
	ld   a, a                                        ; $45bf: $7f
	adc  a                                           ; $45c0: $8f
	sbc  a                                           ; $45c1: $9f
	rra                                              ; $45c2: $1f
	ccf                                              ; $45c3: $3f
	add  b                                           ; $45c4: $80
	cp   a                                           ; $45c5: $bf
	ld   [$7f37], sp                                 ; $45c6: $08 $37 $7f
	ld   a, b                                        ; $45c9: $78
	rst  $38                                         ; $45ca: $ff
	rrca                                             ; $45cb: $0f
	rst  $38                                         ; $45cc: $ff
	di                                               ; $45cd: $f3
	rst  $38                                         ; $45ce: $ff
	db   $fd                                         ; $45cf: $fd
	add  c                                           ; $45d0: $81
	rst  $38                                         ; $45d1: $ff
	rlca                                             ; $45d2: $07
	cp   $ff                                         ; $45d3: $fe $ff
	db   $fd                                         ; $45d5: $fd
	rst  $38                                         ; $45d6: $ff
	ld   sp, hl                                      ; $45d7: $f9
	rst  $38                                         ; $45d8: $ff
	add  e                                           ; $45d9: $83
	rst  $28                                         ; $45da: $ef
	add  b                                           ; $45db: $80
	xor  $00                                         ; $45dc: $ee $00
	ld   l, a                                        ; $45de: $6f
	add  e                                           ; $45df: $83
	rst  $28                                         ; $45e0: $ef
	nop                                              ; $45e1: $00
	add  sp, -$80                                    ; $45e2: $e8 $80
	rst  $28                                         ; $45e4: $ef
	add  c                                           ; $45e5: $81
	rst  $38                                         ; $45e6: $ff
	dec  c                                           ; $45e7: $0d
	pop  de                                          ; $45e8: $d1
	ld   a, [hl]                                     ; $45e9: $7e
	rst  JumpTable                                         ; $45ea: $df
	rst  $38                                         ; $45eb: $ff
	ld   a, a                                        ; $45ec: $7f
	ld   a, [hl]                                     ; $45ed: $7e
	db   $fc                                         ; $45ee: $fc
	rst  $38                                         ; $45ef: $ff
	ld   a, h                                        ; $45f0: $7c
	ld   e, a                                        ; $45f1: $5f
	ld   b, b                                        ; $45f2: $40
	sbc  a                                           ; $45f3: $9f
	or   [hl]                                        ; $45f4: $b6
	ccf                                              ; $45f5: $3f
	add  b                                           ; $45f6: $80
	rra                                              ; $45f7: $1f
	inc  b                                           ; $45f8: $04
	cp   c                                           ; $45f9: $b9
	cp   a                                           ; $45fa: $bf
	ccf                                              ; $45fb: $3f
	cp   a                                           ; $45fc: $bf
	ccf                                              ; $45fd: $3f
	add  c                                           ; $45fe: $81
	rst  $38                                         ; $45ff: $ff
	add  hl, bc                                      ; $4600: $09
	ccf                                              ; $4601: $3f
	rst  $38                                         ; $4602: $ff
	rra                                              ; $4603: $1f
	rst  $38                                         ; $4604: $ff
	ld   l, a                                        ; $4605: $6f
	rst  $38                                         ; $4606: $ff
	rst  $30                                         ; $4607: $f7
	rst  $38                                         ; $4608: $ff
	xor  a                                           ; $4609: $af
	ld   e, a                                        ; $460a: $5f
	add  d                                           ; $460b: $82
	ld   a, a                                        ; $460c: $7f
	add  h                                           ; $460d: $84
	rst  $38                                         ; $460e: $ff
	nop                                              ; $460f: $00
	ld   a, a                                        ; $4610: $7f
	add  c                                           ; $4611: $81
	rst  $38                                         ; $4612: $ff
	nop                                              ; $4613: $00
	adc  b                                           ; $4614: $88
	add  l                                           ; $4615: $85
	rst  $38                                         ; $4616: $ff
	nop                                              ; $4617: $00
	db   $fc                                         ; $4618: $fc
	add  c                                           ; $4619: $81
	rst  $38                                         ; $461a: $ff
	nop                                              ; $461b: $00
	ld   hl, sp-$7f                                  ; $461c: $f8 $81
	rst  $38                                         ; $461e: $ff
	ld   bc, $807a                                   ; $461f: $01 $7a $80
	add  b                                           ; $4622: $80
	rst  $38                                         ; $4623: $ff
	nop                                              ; $4624: $00
	ld   a, a                                        ; $4625: $7f
	add  c                                           ; $4626: $81
	rst  $38                                         ; $4627: $ff
	nop                                              ; $4628: $00
	add  b                                           ; $4629: $80
	add  c                                           ; $462a: $81
	rst  $38                                         ; $462b: $ff
	inc  bc                                          ; $462c: $03
	inc  c                                           ; $462d: $0c
	rst  $38                                         ; $462e: $ff
	di                                               ; $462f: $f3
	rst  $38                                         ; $4630: $ff
	add  b                                           ; $4631: $80
	nop                                              ; $4632: $00
	add  h                                           ; $4633: $84
	rst  $38                                         ; $4634: $ff
	nop                                              ; $4635: $00
	nop                                              ; $4636: $00
	add  c                                           ; $4637: $81
	rst  $38                                         ; $4638: $ff
	inc  b                                           ; $4639: $04
	ld   b, $ff                                      ; $463a: $06 $ff
	ld   a, [$69ff]                                  ; $463c: $fa $ff $69
	add  e                                           ; $463f: $83
	sub  l                                           ; $4640: $95
	add  b                                           ; $4641: $80
	ld   a, [$e080]                                  ; $4642: $fa $80 $e0
	ld   bc, $e0a0                                   ; $4645: $01 $a0 $e0
	add  b                                           ; $4648: $80
	rst  $38                                         ; $4649: $ff
	ld   a, [bc]                                     ; $464a: $0a
	ccf                                              ; $464b: $3f
	rst  $38                                         ; $464c: $ff
	adc  a                                           ; $464d: $8f

jr_073_464e:
	rlca                                             ; $464e: $07
	nop                                              ; $464f: $00
	rrca                                             ; $4650: $0f
	nop                                              ; $4651: $00
	rrca                                             ; $4652: $0f
	inc  b                                           ; $4653: $04
	rrca                                             ; $4654: $0f
	ld   [bc], a                                     ; $4655: $02
	add  c                                           ; $4656: $81
	rrca                                             ; $4657: $0f
	nop                                              ; $4658: $00
	rlca                                             ; $4659: $07
	add  c                                           ; $465a: $81
	rrca                                             ; $465b: $0f
	ld   d, $18                                      ; $465c: $16 $18
	rst  $38                                         ; $465e: $ff
	ld   de, $88ff                                   ; $465f: $11 $ff $88
	rst  $38                                         ; $4662: $ff
	ld   b, a                                        ; $4663: $47
	rst  $38                                         ; $4664: $ff
	dec  a                                           ; $4665: $3d
	rst  $38                                         ; $4666: $ff
	push af                                          ; $4667: $f5
	rst  $38                                         ; $4668: $ff
	rst  $10                                         ; $4669: $d7
	rst  $38                                         ; $466a: $ff
	ld   e, a                                        ; $466b: $5f
	rst  $38                                         ; $466c: $ff
	sbc  [hl]                                        ; $466d: $9e
	rst  $38                                         ; $466e: $ff
	ld   sp, hl                                      ; $466f: $f9
	rst  $38                                         ; $4670: $ff
	daa                                              ; $4671: $27
	rst  $38                                         ; $4672: $ff
	ccf                                              ; $4673: $3f
	add  e                                           ; $4674: $83
	rst  $38                                         ; $4675: $ff
	inc  b                                           ; $4676: $04
	ld   a, a                                        ; $4677: $7f
	rst  $38                                         ; $4678: $ff
	sbc  a                                           ; $4679: $9f
	rst  $38                                         ; $467a: $ff
	ld   e, $80                                      ; $467b: $1e $80
	cp   $01                                         ; $467d: $fe $01
	rst  $38                                         ; $467f: $ff
	cp   $89                                         ; $4680: $fe $89
	rst  $38                                         ; $4682: $ff
	add  b                                           ; $4683: $80
	ld   h, a                                        ; $4684: $67
	ld   b, $0e                                      ; $4685: $06 $0e
	adc  [hl]                                        ; $4687: $8e
	adc  b                                           ; $4688: $88
	db   $eb                                         ; $4689: $eb
	inc  hl                                          ; $468a: $23
	rst  $38                                         ; $468b: $ff
	ret  nz                                          ; $468c: $c0

	add  l                                           ; $468d: $85
	rst  $38                                         ; $468e: $ff
	ld   [$3130], sp                                 ; $468f: $08 $30 $31
	reti                                             ; $4692: $d9


	db   $db                                         ; $4693: $db
	ld   [de], a                                     ; $4694: $12
	sbc  a                                           ; $4695: $9f
	add  c                                           ; $4696: $81
	rst  $38                                         ; $4697: $ff
	rrca                                             ; $4698: $0f
	add  l                                           ; $4699: $85
	rst  $38                                         ; $469a: $ff
	inc  b                                           ; $469b: $04
	ccf                                              ; $469c: $3f
	rst  $38                                         ; $469d: $ff
	jp   nc, $12ff                                   ; $469e: $d2 $ff $12

	add  a                                           ; $46a1: $87
	rst  $38                                         ; $46a2: $ff
	ld   [de], a                                     ; $46a3: $12
	cp   $ff                                         ; $46a4: $fe $ff
	add  l                                           ; $46a6: $85
	rst  $38                                         ; $46a7: $ff
	ld   a, d                                        ; $46a8: $7a
	rst  $38                                         ; $46a9: $ff
	rrca                                             ; $46aa: $0f
	rst  $38                                         ; $46ab: $ff
	ei                                               ; $46ac: $fb
	rst  $38                                         ; $46ad: $ff
	rst  $20                                         ; $46ae: $e7
	rst  $38                                         ; $46af: $ff
	rst  ToBoot                                         ; $46b0: $c7
	rst  $38                                         ; $46b1: $ff
	sbc  [hl]                                        ; $46b2: $9e
	rst  $38                                         ; $46b3: $ff
	ld   e, d                                        ; $46b4: $5a
	rst  $38                                         ; $46b5: $ff
	xor  [hl]                                        ; $46b6: $ae
	add  e                                           ; $46b7: $83
	rst  $38                                         ; $46b8: $ff
	ld   a, [bc]                                     ; $46b9: $0a
	ld   a, a                                        ; $46ba: $7f
	rst  $28                                         ; $46bb: $ef
	cpl                                              ; $46bc: $2f
	rst  $28                                         ; $46bd: $ef
	xor  a                                           ; $46be: $af
	jp   hl                                          ; $46bf: $e9


	ld   l, c                                        ; $46c0: $69
	add  sp, -$1f                                    ; $46c1: $e8 $e1
	jp   hl                                          ; $46c3: $e9


	jr   nz, jr_073_464e                             ; $46c4: $20 $88

	rst  $38                                         ; $46c6: $ff
	dec  b                                           ; $46c7: $05
	rst  JumpTable                                         ; $46c8: $df
	ld   e, a                                        ; $46c9: $5f
	sbc  a                                           ; $46ca: $9f
	sub  l                                           ; $46cb: $95
	adc  d                                           ; $46cc: $8a
	ld   b, $87                                      ; $46cd: $06 $87
	rst  $38                                         ; $46cf: $ff
	ld   b, $df                                      ; $46d0: $06 $df
	rst  $28                                         ; $46d2: $ef
	xor  a                                           ; $46d3: $af
	rst  $28                                         ; $46d4: $ef
	db   $ed                                         ; $46d5: $ed
	ld   l, a                                        ; $46d6: $6f
	ld   a, l                                        ; $46d7: $7d
	add  l                                           ; $46d8: $85
	rst  $38                                         ; $46d9: $ff
	ld   [bc], a                                     ; $46da: $02
	cp   a                                           ; $46db: $bf
	rst  $38                                         ; $46dc: $ff
	ei                                               ; $46dd: $fb
	add  e                                           ; $46de: $83
	rst  $38                                         ; $46df: $ff
	ld   [bc], a                                     ; $46e0: $02
	ret                                              ; $46e1: $c9


	rst  $38                                         ; $46e2: $ff
	db   $fc                                         ; $46e3: $fc
	add  l                                           ; $46e4: $85
	rst  $38                                         ; $46e5: $ff
	ld   [bc], a                                     ; $46e6: $02
	cp   h                                           ; $46e7: $bc
	rst  $38                                         ; $46e8: $ff
	db   $fc                                         ; $46e9: $fc
	add  c                                           ; $46ea: $81
	rst  $38                                         ; $46eb: $ff
	inc  b                                           ; $46ec: $04
	cp   b                                           ; $46ed: $b8
	rst  $38                                         ; $46ee: $ff
	nop                                              ; $46ef: $00
	rst  $38                                         ; $46f0: $ff
	di                                               ; $46f1: $f3
	add  c                                           ; $46f2: $81
	rst  $38                                         ; $46f3: $ff
	inc  b                                           ; $46f4: $04
	di                                               ; $46f5: $f3
	rst  $38                                         ; $46f6: $ff
	nop                                              ; $46f7: $00
	rst  $38                                         ; $46f8: $ff
	nop                                              ; $46f9: $00
	add  c                                           ; $46fa: $81
	rst  $38                                         ; $46fb: $ff
	inc  b                                           ; $46fc: $04
	ld   bc, $04ff                                   ; $46fd: $01 $ff $04
	rst  $38                                         ; $4700: $ff
	cp   $81                                         ; $4701: $fe $81
	db   $fc                                         ; $4703: $fc
	add  b                                           ; $4704: $80
	cp   $03                                         ; $4705: $fe $03
	dec  b                                           ; $4707: $05
	db   $fd                                         ; $4708: $fd
	ld   b, $fe                                      ; $4709: $06 $fe
	add  b                                           ; $470b: $80
	rst  $38                                         ; $470c: $ff
	inc  b                                           ; $470d: $04
	inc  b                                           ; $470e: $04
	rst  $38                                         ; $470f: $ff
	add  a                                           ; $4710: $87
	rst  $38                                         ; $4711: $ff
	ld   a, e                                        ; $4712: $7b
	add  e                                           ; $4713: $83
	nop                                              ; $4714: $00
	add  b                                           ; $4715: $80
	ret  nz                                          ; $4716: $c0

	add  b                                           ; $4717: $80
	rrca                                             ; $4718: $0f
	add  b                                           ; $4719: $80
	jp   $01d4                                       ; $471a: $c3 $d4 $01


	add  b                                           ; $471d: $80
	inc  bc                                          ; $471e: $03
	add  b                                           ; $471f: $80
	inc  c                                           ; $4720: $0c
	add  d                                           ; $4721: $82
	nop                                              ; $4722: $00
	add  b                                           ; $4723: $80
	rlca                                             ; $4724: $07
	add  b                                           ; $4725: $80
	ld   [$0084], sp                                 ; $4726: $08 $84 $00
	add  b                                           ; $4729: $80
	inc  bc                                          ; $472a: $03
	add  b                                           ; $472b: $80
	inc  e                                           ; $472c: $1c
	add  b                                           ; $472d: $80
	ldh  [$80], a                                    ; $472e: $e0 $80
	nop                                              ; $4730: $00
	dec  c                                           ; $4731: $0d
	ld   bc, $0f00                                   ; $4732: $01 $00 $0f
	ld   bc, $0a3a                                   ; $4735: $01 $3a $0a
	ld   a, b                                        ; $4738: $78
	ld   c, b                                        ; $4739: $48
	cp   b                                           ; $473a: $b8
	rst  $38                                         ; $473b: $ff
	rrca                                             ; $473c: $0f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $473d: $cf
	call $80cb                                       ; $473e: $cd $cb $80
	pop  bc                                          ; $4741: $c1
	ld   bc, $0b7b                                   ; $4742: $01 $7b $0b
	add  b                                           ; $4745: $80
	ld   d, l                                        ; $4746: $55
	add  b                                           ; $4747: $80
	xor  e                                           ; $4748: $ab
	nop                                              ; $4749: $00
	ld   bc, $3d80                                   ; $474a: $01 $80 $3d
	add  b                                           ; $474d: $80
	db   $fd                                         ; $474e: $fd
	add  d                                           ; $474f: $82
	db   $fc                                         ; $4750: $fc
	add  b                                           ; $4751: $80
	ldh  a, [$80]                                    ; $4752: $f0 $80
	ldh  [$80], a                                    ; $4754: $e0 $80
	add  b                                           ; $4756: $80
	add  b                                           ; $4757: $80
	rla                                              ; $4758: $17
	add  b                                           ; $4759: $80
	ldh  [$8a], a                                    ; $475a: $e0 $8a
	nop                                              ; $475c: $00
	add  b                                           ; $475d: $80
	dec  a                                           ; $475e: $3d
	add  b                                           ; $475f: $80
	nop                                              ; $4760: $00
	add  b                                           ; $4761: $80
	ld   bc, $0580                                   ; $4762: $01 $80 $05
	add  b                                           ; $4765: $80
	dec  c                                           ; $4766: $0d
	add  b                                           ; $4767: $80
	dec  a                                           ; $4768: $3d
	add  b                                           ; $4769: $80
	dec  [hl]                                        ; $476a: $35
	add  b                                           ; $476b: $80
	or   c                                           ; $476c: $b1
	inc  bc                                          ; $476d: $03
	or   e                                           ; $476e: $b3
	ld   c, h                                        ; $476f: $4c
	rst  $38                                         ; $4770: $ff
	ld   a, a                                        ; $4771: $7f
	add  c                                           ; $4772: $81
	rst  $38                                         ; $4773: $ff
	nop                                              ; $4774: $00
	cp   a                                           ; $4775: $bf
	add  e                                           ; $4776: $83
	rst  $38                                         ; $4777: $ff
	nop                                              ; $4778: $00
	rst  JumpTable                                         ; $4779: $df
	add  c                                           ; $477a: $81
	rst  $38                                         ; $477b: $ff
	nop                                              ; $477c: $00
	rra                                              ; $477d: $1f
	add  e                                           ; $477e: $83
	rst  $38                                         ; $477f: $ff
	ld   a, [bc]                                     ; $4780: $0a
	db   $fc                                         ; $4781: $fc
	rst  $38                                         ; $4782: $ff
	pop  af                                          ; $4783: $f1
	rst  $38                                         ; $4784: $ff
	jp   hl                                          ; $4785: $e9


	rst  $38                                         ; $4786: $ff
	add  d                                           ; $4787: $82
	rst  $38                                         ; $4788: $ff
	ld   h, [hl]                                     ; $4789: $66
	rst  $38                                         ; $478a: $ff
	nop                                              ; $478b: $00
	add  e                                           ; $478c: $83
	rst  $38                                         ; $478d: $ff
	ld   a, [bc]                                     ; $478e: $0a
	nop                                              ; $478f: $00
	rst  $38                                         ; $4790: $ff
	ld   l, c                                        ; $4791: $69
	rst  $38                                         ; $4792: $ff
	jr   nz, @+$01                                   ; $4793: $20 $ff

jr_073_4795:
	ld   e, $ff                                      ; $4795: $1e $ff
	ld   d, a                                        ; $4797: $57
	rst  $38                                         ; $4798: $ff
	nop                                              ; $4799: $00
	add  e                                           ; $479a: $83
	rst  $38                                         ; $479b: $ff
	ld   a, [bc]                                     ; $479c: $0a
	nop                                              ; $479d: $00
	rst  $38                                         ; $479e: $ff
	add  hl, de                                      ; $479f: $19
	rst  $38                                         ; $47a0: $ff

jr_073_47a1:
	ld   d, b                                        ; $47a1: $50
	rst  $38                                         ; $47a2: $ff

jr_073_47a3:
	inc  b                                           ; $47a3: $04
	rst  $38                                         ; $47a4: $ff
	ld   c, l                                        ; $47a5: $4d
	rst  $38                                         ; $47a6: $ff
	nop                                              ; $47a7: $00
	add  e                                           ; $47a8: $83
	rst  $38                                         ; $47a9: $ff
	ld   a, [bc]                                     ; $47aa: $0a
	nop                                              ; $47ab: $00
	rst  $38                                         ; $47ac: $ff
	xor  e                                           ; $47ad: $ab
	rst  $38                                         ; $47ae: $ff
	ret                                              ; $47af: $c9


	rst  $38                                         ; $47b0: $ff
	nop                                              ; $47b1: $00
	rst  $38                                         ; $47b2: $ff
	ld   h, d                                        ; $47b3: $62
	rst  $38                                         ; $47b4: $ff
	nop                                              ; $47b5: $00
	add  e                                           ; $47b6: $83
	rst  $38                                         ; $47b7: $ff
	ld   a, [bc]                                     ; $47b8: $0a
	nop                                              ; $47b9: $00
	rst  $38                                         ; $47ba: $ff
	ld   c, b                                        ; $47bb: $48
	rst  $38                                         ; $47bc: $ff
	ld   [bc], a                                     ; $47bd: $02
	rst  $38                                         ; $47be: $ff
	ldh  a, [rIE]                                    ; $47bf: $f0 $ff
	cp   d                                           ; $47c1: $ba
	rst  $38                                         ; $47c2: $ff
	nop                                              ; $47c3: $00
	add  e                                           ; $47c4: $83
	rst  $38                                         ; $47c5: $ff
	ld   a, [bc]                                     ; $47c6: $0a
	nop                                              ; $47c7: $00
	rst  $38                                         ; $47c8: $ff
	call $86ff                                       ; $47c9: $cd $ff $86
	rst  $38                                         ; $47cc: $ff
	jr   nz, @+$01                                   ; $47cd: $20 $ff

	ld   l, e                                        ; $47cf: $6b
	rst  $38                                         ; $47d0: $ff
	nop                                              ; $47d1: $00
	add  e                                           ; $47d2: $83
	rst  $38                                         ; $47d3: $ff
	ld   a, [bc]                                     ; $47d4: $0a
	ld   bc, $5cff                                   ; $47d5: $01 $ff $5c
	rst  $38                                         ; $47d8: $ff
	ld   c, b                                        ; $47d9: $48
	rst  $38                                         ; $47da: $ff
	ld   a, [bc]                                     ; $47db: $0a
	rst  $38                                         ; $47dc: $ff
	rra                                              ; $47dd: $1f
	rst  $38                                         ; $47de: $ff
	nop                                              ; $47df: $00
	add  l                                           ; $47e0: $85
	rst  $38                                         ; $47e1: $ff
	ld   [$ff7f], sp                                 ; $47e2: $08 $7f $ff
	sbc  a                                           ; $47e5: $9f
	rst  $38                                         ; $47e6: $ff
	ld   b, a                                        ; $47e7: $47
	rst  $38                                         ; $47e8: $ff
	ld   e, e                                        ; $47e9: $5b
	rst  $38                                         ; $47ea: $ff
	inc  c                                           ; $47eb: $0c
	add  b                                           ; $47ec: $80
	ldh  a, [c]                                      ; $47ed: $f2
	add  b                                           ; $47ee: $80
	or   $80                                         ; $47ef: $f6 $80
	db   $f4                                         ; $47f1: $f4
	ld   bc, $e5f5                                   ; $47f2: $01 $f5 $e5
	add  b                                           ; $47f5: $80
	jp   hl                                          ; $47f6: $e9


	add  b                                           ; $47f7: $80
	ei                                               ; $47f8: $fb
	inc  bc                                          ; $47f9: $03
	di                                               ; $47fa: $f3
	db   $e3                                         ; $47fb: $e3
	di                                               ; $47fc: $f3
	db   $fc                                         ; $47fd: $fc
	add  b                                           ; $47fe: $80
	ld   bc, $0780                                   ; $47ff: $01 $80 $07
	adc  d                                           ; $4802: $8a
	rrca                                             ; $4803: $0f
	adc  l                                           ; $4804: $8d
	rst  $38                                         ; $4805: $ff
	add  h                                           ; $4806: $84
	db   $fc                                         ; $4807: $fc
	add  h                                           ; $4808: $84
	ld   hl, sp-$7e                                  ; $4809: $f8 $82
	ldh  a, [rP1]                                    ; $480b: $f0 $00
	nop                                              ; $480d: $00
	add  d                                           ; $480e: $82
	ld   [hl+], a                                    ; $480f: $22
	add  b                                           ; $4810: $80
	jr   nz, jr_073_4795                             ; $4811: $20 $82

	ld   [hl], b                                     ; $4813: $70
	add  b                                           ; $4814: $80
	ld   a, b                                        ; $4815: $78
	add  d                                           ; $4816: $82
	ld   hl, sp-$7e                                  ; $4817: $f8 $82
	dec  a                                           ; $4819: $3d
	add  b                                           ; $481a: $80
	add  hl, sp                                      ; $481b: $39
	add  b                                           ; $481c: $80
	jr   c, jr_073_47a3                              ; $481d: $38 $84

	jr   nz, jr_073_47a1                             ; $481f: $20 $80

	nop                                              ; $4821: $00
	add  d                                           ; $4822: $82
	sbc  e                                           ; $4823: $9b
	inc  b                                           ; $4824: $04
	sbc  $df                                         ; $4825: $de $df
	call $c3cf                                       ; $4827: $cd $cf $c3
	add  b                                           ; $482a: $80
	rst  ToBoot                                         ; $482b: $c7
	add  b                                           ; $482c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $482d: $cf
	ld   c, d                                        ; $482e: $4a
	sbc  $9f                                         ; $482f: $de $9f
	cp   [hl]                                        ; $4831: $be
	cp   a                                           ; $4832: $bf
	cp   h                                           ; $4833: $bc
	ccf                                              ; $4834: $3f
	ld   a, e                                        ; $4835: $7b
	ld   a, a                                        ; $4836: $7f
	and  $ff                                         ; $4837: $e6 $ff
	db   $dd                                         ; $4839: $dd
	rst  $38                                         ; $483a: $ff
	cp   e                                           ; $483b: $bb
	rst  $38                                         ; $483c: $ff
	ld   [hl], a                                     ; $483d: $77
	rst  $38                                         ; $483e: $ff
	xor  $ff                                         ; $483f: $ee $ff
	ld   e, $ff                                      ; $4841: $1e $ff
	nop                                              ; $4843: $00
	rst  $38                                         ; $4844: $ff
	call c, $07ff                                    ; $4845: $dc $ff $07
	rst  $38                                         ; $4848: $ff
	sbc  d                                           ; $4849: $9a
	rst  $38                                         ; $484a: $ff
	or   h                                           ; $484b: $b4
	rst  $38                                         ; $484c: $ff
	and  d                                           ; $484d: $a2
	rst  $38                                         ; $484e: $ff
	sub  a                                           ; $484f: $97
	rst  $38                                         ; $4850: $ff
	ret  nz                                          ; $4851: $c0

	rst  $38                                         ; $4852: $ff
	nop                                              ; $4853: $00
	rst  $38                                         ; $4854: $ff
	xor  h                                           ; $4855: $ac
	rst  $38                                         ; $4856: $ff
	adc  c                                           ; $4857: $89
	rst  $38                                         ; $4858: $ff

jr_073_4859:
	dec  h                                           ; $4859: $25
	rst  $38                                         ; $485a: $ff
	cp   a                                           ; $485b: $bf
	rst  $38                                         ; $485c: $ff
	xor  l                                           ; $485d: $ad
	rst  $38                                         ; $485e: $ff
	ld   c, b                                        ; $485f: $48
	rst  $38                                         ; $4860: $ff
	ld   e, d                                        ; $4861: $5a
	rst  $38                                         ; $4862: $ff
	nop                                              ; $4863: $00
	rst  $38                                         ; $4864: $ff
	ld   b, e                                        ; $4865: $43
	rst  $38                                         ; $4866: $ff
	sbc  h                                           ; $4867: $9c
	rst  $38                                         ; $4868: $ff
	rst  $10                                         ; $4869: $d7
	rst  $38                                         ; $486a: $ff
	db   $e3                                         ; $486b: $e3
	rst  $38                                         ; $486c: $ff
	ld   b, l                                        ; $486d: $45
	rst  $38                                         ; $486e: $ff
	ld   h, $ff                                      ; $486f: $26 $ff
	adc  b                                           ; $4871: $88
	rst  $38                                         ; $4872: $ff
	nop                                              ; $4873: $00
	rst  $38                                         ; $4874: $ff
	sub  [hl]                                        ; $4875: $96
	rst  $38                                         ; $4876: $ff
	add  l                                           ; $4877: $85
	rst  $38                                         ; $4878: $ff
	inc  de                                          ; $4879: $13
	add  c                                           ; $487a: $81
	rst  $38                                         ; $487b: $ff
	ld   d, h                                        ; $487c: $54
	ld   d, l                                        ; $487d: $55
	rst  $38                                         ; $487e: $ff
	and  c                                           ; $487f: $a1
	rst  $38                                         ; $4880: $ff
	dec  bc                                          ; $4881: $0b
	rst  $38                                         ; $4882: $ff
	nop                                              ; $4883: $00
	rst  $38                                         ; $4884: $ff
	inc  [hl]                                        ; $4885: $34
	rst  $38                                         ; $4886: $ff
	ret  nc                                          ; $4887: $d0

	rst  $38                                         ; $4888: $ff
	db   $e4                                         ; $4889: $e4
	rst  $38                                         ; $488a: $ff
	ld   a, a                                        ; $488b: $7f
	rst  $38                                         ; $488c: $ff
	dec  a                                           ; $488d: $3d
	rst  $38                                         ; $488e: $ff
	dec  l                                           ; $488f: $2d
	rst  $38                                         ; $4890: $ff
	ld   l, a                                        ; $4891: $6f
	rst  $38                                         ; $4892: $ff
	nop                                              ; $4893: $00
	rst  $38                                         ; $4894: $ff
	pop  hl                                          ; $4895: $e1
	rst  $38                                         ; $4896: $ff
	sbc  h                                           ; $4897: $9c
	rst  $38                                         ; $4898: $ff
	ld   a, l                                        ; $4899: $7d
	rst  $38                                         ; $489a: $ff
	xor  a                                           ; $489b: $af
	rst  $38                                         ; $489c: $ff
	sbc  e                                           ; $489d: $9b
	rst  $38                                         ; $489e: $ff
	ld   h, l                                        ; $489f: $65
	rst  $38                                         ; $48a0: $ff
	ld   d, c                                        ; $48a1: $51
	rst  $38                                         ; $48a2: $ff
	nop                                              ; $48a3: $00
	rst  $38                                         ; $48a4: $ff
	ld   a, [de]                                     ; $48a5: $1a
	rst  $38                                         ; $48a6: $ff
	ret  z                                           ; $48a7: $c8

	rst  $38                                         ; $48a8: $ff
	jp   nc, $dfff                                   ; $48a9: $d2 $ff $df

	rst  $38                                         ; $48ac: $ff
	ld   e, [hl]                                     ; $48ad: $5e
	rst  $38                                         ; $48ae: $ff
	inc  [hl]                                        ; $48af: $34
	rst  $38                                         ; $48b0: $ff
	or   l                                           ; $48b1: $b5
	rst  $38                                         ; $48b2: $ff
	nop                                              ; $48b3: $00
	rst  $38                                         ; $48b4: $ff
	cp   e                                           ; $48b5: $bb
	rst  $38                                         ; $48b6: $ff
	ldh  [rIE], a                                    ; $48b7: $e0 $ff
	ld   e, e                                        ; $48b9: $5b
	rst  $38                                         ; $48ba: $ff
	or   l                                           ; $48bb: $b5
	rst  $38                                         ; $48bc: $ff
	add  b                                           ; $48bd: $80
	rst  $38                                         ; $48be: $ff
	or   b                                           ; $48bf: $b0
	rst  $38                                         ; $48c0: $ff
	adc  d                                           ; $48c1: $8a
	rst  $30                                         ; $48c2: $f7
	ld   [hl], a                                     ; $48c3: $77
	pop  af                                          ; $48c4: $f1
	sbc  l                                           ; $48c5: $9d
	db   $fc                                         ; $48c6: $fc
	ld   l, a                                        ; $48c7: $6f
	rst  $38                                         ; $48c8: $ff
	or   a                                           ; $48c9: $b7
	rst  $38                                         ; $48ca: $ff
	db   $db                                         ; $48cb: $db
	rst  $38                                         ; $48cc: $ff
	db   $ed                                         ; $48cd: $ed
	rst  $38                                         ; $48ce: $ff
	ld   [hl], $ff                                   ; $48cf: $36 $ff
	jr   c, jr_073_4859                              ; $48d1: $38 $86

	nop                                              ; $48d3: $00
	inc  b                                           ; $48d4: $04
	rst  $38                                         ; $48d5: $ff
	nop                                              ; $48d6: $00
	rst  $38                                         ; $48d7: $ff
	nop                                              ; $48d8: $00
	rst  $38                                         ; $48d9: $ff
	add  b                                           ; $48da: $80
	nop                                              ; $48db: $00
	nop                                              ; $48dc: $00
	rst  $38                                         ; $48dd: $ff
	add  l                                           ; $48de: $85
	nop                                              ; $48df: $00
	dec  b                                           ; $48e0: $05
	ld   b, $f9                                      ; $48e1: $06 $f9
	ld   h, e                                        ; $48e3: $63
	db   $e3                                         ; $48e4: $e3
	ld   c, a                                        ; $48e5: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48e6: $cf
	add  b                                           ; $48e7: $80
	rra                                              ; $48e8: $1f
	nop                                              ; $48e9: $00
	rst  $38                                         ; $48ea: $ff
	add  l                                           ; $48eb: $85

jr_073_48ec:
	nop                                              ; $48ec: $00
	ld   [$fa07], sp                                 ; $48ed: $08 $07 $fa
	ldh  [c], a                                      ; $48f0: $e2
	push af                                          ; $48f1: $f5
	push de                                          ; $48f2: $d5
	ld   [$d5aa], a                                  ; $48f3: $ea $aa $d5
	xor  d                                           ; $48f6: $aa
	add  l                                           ; $48f7: $85
	nop                                              ; $48f8: $00
	nop                                              ; $48f9: $00
	ldh  a, [$80]                                    ; $48fa: $f0 $80
	and  b                                           ; $48fc: $a0
	add  b                                           ; $48fd: $80
	ld   d, b                                        ; $48fe: $50
	add  b                                           ; $48ff: $80
	and  b                                           ; $4900: $a0
	ld   [$7f00], sp                                 ; $4901: $08 $00 $7f
	ld   a, b                                        ; $4904: $78
	ld   l, b                                        ; $4905: $68
	ld   [hl], b                                     ; $4906: $70
	ld   d, b                                        ; $4907: $50
	ld   h, b                                        ; $4908: $60
	ldh  [$c0], a                                    ; $4909: $e0 $c0
	add  b                                           ; $490b: $80
	ld   b, b                                        ; $490c: $40
	add  b                                           ; $490d: $80
	rst  $38                                         ; $490e: $ff
	nop                                              ; $490f: $00
	ld   b, b                                        ; $4910: $40
	add  b                                           ; $4911: $80
	ld   a, a                                        ; $4912: $7f
	nop                                              ; $4913: $00
	ld   b, b                                        ; $4914: $40
	adc  b                                           ; $4915: $88
	nop                                              ; $4916: $00
	add  b                                           ; $4917: $80
	rst  $38                                         ; $4918: $ff
	nop                                              ; $4919: $00
	nop                                              ; $491a: $00
	add  b                                           ; $491b: $80
	rst  $38                                         ; $491c: $ff
	adc  c                                           ; $491d: $89
	nop                                              ; $491e: $00
	add  b                                           ; $491f: $80
	rst  $38                                         ; $4920: $ff
	nop                                              ; $4921: $00
	nop                                              ; $4922: $00
	add  b                                           ; $4923: $80
	rst  $38                                         ; $4924: $ff
	ld   bc, $0f00                                   ; $4925: $01 $00 $0f
	add  a                                           ; $4928: $87
	nop                                              ; $4929: $00
	add  b                                           ; $492a: $80
	ldh  a, [rP1]                                    ; $492b: $f0 $00
	nop                                              ; $492d: $00
	add  b                                           ; $492e: $80
	ldh  a, [$03]                                    ; $492f: $f0 $03
	nop                                              ; $4931: $00
	ld   e, l                                        ; $4932: $5d
	db   $fd                                         ; $4933: $fd
	rst  $28                                         ; $4934: $ef
	add  b                                           ; $4935: $80
	ret  nz                                          ; $4936: $c0

	add  c                                           ; $4937: $81
	rst  $38                                         ; $4938: $ff
	add  b                                           ; $4939: $80
	ret  nz                                          ; $493a: $c0

	add  b                                           ; $493b: $80
	rst  $38                                         ; $493c: $ff
	nop                                              ; $493d: $00
	ret  nz                                          ; $493e: $c0

	add  c                                           ; $493f: $81
	rst  $38                                         ; $4940: $ff
	inc  b                                           ; $4941: $04
	db   $dd                                         ; $4942: $dd
	or   e                                           ; $4943: $b3
	rla                                              ; $4944: $17
	rst  $38                                         ; $4945: $ff
	add  hl, bc                                      ; $4946: $09
	add  b                                           ; $4947: $80
	ld   hl, sp+$00                                  ; $4948: $f8 $00
	ld   sp, hl                                      ; $494a: $f9
	add  b                                           ; $494b: $80
	add  hl, bc                                      ; $494c: $09
	ld   b, $f9                                      ; $494d: $06 $f9
	rst  $38                                         ; $494f: $ff
	rrca                                             ; $4950: $0f
	rst  $38                                         ; $4951: $ff
	db   $fd                                         ; $4952: $fd
	ei                                               ; $4953: $fb
	ld   b, $81                                      ; $4954: $06 $81
	rst  $38                                         ; $4956: $ff
	ld   [bc], a                                     ; $4957: $02
	ld   a, a                                        ; $4958: $7f
	rst  $38                                         ; $4959: $ff
	ld   a, a                                        ; $495a: $7f
	add  c                                           ; $495b: $81
	rst  $38                                         ; $495c: $ff
	add  b                                           ; $495d: $80
	cp   a                                           ; $495e: $bf
	add  b                                           ; $495f: $80
	adc  a                                           ; $4960: $8f
	add  b                                           ; $4961: $80
	add  a                                           ; $4962: $87
	ld   b, $e0                                      ; $4963: $06 $e0
	ldh  a, [$d0]                                    ; $4965: $f0 $d0
	ldh  a, [$b0]                                    ; $4967: $f0 $b0
	ld   [hl], b                                     ; $4969: $70
	jr   nz, jr_073_48ec                             ; $496a: $20 $80

	ldh  a, [$81]                                    ; $496c: $f0 $81
	ldh  [rP1], a                                    ; $496e: $e0 $00
	ret  nc                                          ; $4970: $d0

	add  c                                           ; $4971: $81
	ldh  a, [rP1]                                    ; $4972: $f0 $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4974: $cf
	add  b                                           ; $4975: $80
	and  b                                           ; $4976: $a0
	add  [hl]                                        ; $4977: $86
	and  d                                           ; $4978: $a2
	add  b                                           ; $4979: $80
	xor  [hl]                                        ; $497a: $ae
	add  b                                           ; $497b: $80
	and  b                                           ; $497c: $a0
	ld   bc, $87a2                                   ; $497d: $01 $a2 $87
	add  b                                           ; $4980: $80
	inc  bc                                          ; $4981: $03
	add  [hl]                                        ; $4982: $86
	inc  de                                          ; $4983: $13
	add  b                                           ; $4984: $80
	ld   [hl], e                                     ; $4985: $73
	add  b                                           ; $4986: $80
	inc  bc                                          ; $4987: $03
	ld   bc, $6913                                   ; $4988: $01 $13 $69
	add  e                                           ; $498b: $83
	add  b                                           ; $498c: $80
	inc  bc                                          ; $498d: $03
	add  h                                           ; $498e: $84
	add  [hl]                                        ; $498f: $86
	and  $e7                                         ; $4990: $e6 $e7
	add  b                                           ; $4992: $80
	sbc  a                                           ; $4993: $9f
	dec  b                                           ; $4994: $05
	add  e                                           ; $4995: $83
	sbc  a                                           ; $4996: $9f
	add  a                                           ; $4997: $87
	sbc  a                                           ; $4998: $9f
	ld   d, a                                        ; $4999: $57
	ld   d, b                                        ; $499a: $50
	add  b                                           ; $499b: $80
	db   $10                                         ; $499c: $10
	add  b                                           ; $499d: $80
	ld   h, b                                        ; $499e: $60
	add  b                                           ; $499f: $80
	nop                                              ; $49a0: $00
	ld   [$3010], sp                                 ; $49a1: $08 $10 $30
	db   $10                                         ; $49a4: $10
	ldh  a, [rP1]                                    ; $49a5: $f0 $00
	ldh  a, [rAUD4LEN]                               ; $49a7: $f0 $20
	ldh  a, [rAUD3LOW]                               ; $49a9: $f0 $1d
	add  c                                           ; $49ab: $81
	cp   $16                                         ; $49ac: $fe $16
	ei                                               ; $49ae: $fb
	rst  $38                                         ; $49af: $ff
	rlca                                             ; $49b0: $07
	rst  $38                                         ; $49b1: $ff
	rrca                                             ; $49b2: $0f
	xor  a                                           ; $49b3: $af
	cp   a                                           ; $49b4: $bf
	ld   e, a                                        ; $49b5: $5f
	ld   e, [hl]                                     ; $49b6: $5e

jr_073_49b7:
	cp   [hl]                                        ; $49b7: $be
	ld   e, h                                        ; $49b8: $5c
	db   $fd                                         ; $49b9: $fd
	ccf                                              ; $49ba: $3f
	ld   a, $7c                                      ; $49bb: $3e $7c
	ld   a, l                                        ; $49bd: $7d
	ld   sp, hl                                      ; $49be: $f9
	ld   a, [$f4e2]                                  ; $49bf: $fa $e2 $f4
	call nc, $20e0                                   ; $49c2: $d4 $e0 $20
	add  b                                           ; $49c5: $80
	ld   b, b                                        ; $49c6: $40
	add  b                                           ; $49c7: $80
	add  b                                           ; $49c8: $80
	add  b                                           ; $49c9: $80
	nop                                              ; $49ca: $00
	add  b                                           ; $49cb: $80
	and  b                                           ; $49cc: $a0
	add  b                                           ; $49cd: $80
	ld   b, b                                        ; $49ce: $40
	adc  c                                           ; $49cf: $89
	nop                                              ; $49d0: $00
	nop                                              ; $49d1: $00
	rrca                                             ; $49d2: $0f
	adc  l                                           ; $49d3: $8d
	nop                                              ; $49d4: $00
	ld   [bc], a                                     ; $49d5: $02
	ld   [hl], c                                     ; $49d6: $71
	rst  $38                                         ; $49d7: $ff
	ret  z                                           ; $49d8: $c8

	add  c                                           ; $49d9: $81
	rst  $38                                         ; $49da: $ff
	ld   a, [bc]                                     ; $49db: $0a
	db   $fc                                         ; $49dc: $fc
	rst  $38                                         ; $49dd: $ff
	add  $f0                                         ; $49de: $c6 $f0
	ret                                              ; $49e0: $c9


	cp   $c7                                         ; $49e1: $fe $c7
	db   $ec                                         ; $49e3: $ec
	rst  $30                                         ; $49e4: $f7
	rst  $10                                         ; $49e5: $d7
	cp   a                                           ; $49e6: $bf
	add  c                                           ; $49e7: $81
	rst  $38                                         ; $49e8: $ff
	ld   c, $3f                                      ; $49e9: $0e $3f
	rst  $38                                         ; $49eb: $ff
	ld   e, a                                        ; $49ec: $5f
	rst  $38                                         ; $49ed: $ff
	ld   c, a                                        ; $49ee: $4f
	ccf                                              ; $49ef: $3f
	add  a                                           ; $49f0: $87
	sbc  a                                           ; $49f1: $9f
	add  e                                           ; $49f2: $83
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $49f3: $cf
	ld   bc, $f6e7                                   ; $49f4: $01 $e7 $f6
	rst  $38                                         ; $49f7: $ff
	ld   d, h                                        ; $49f8: $54
	add  b                                           ; $49f9: $80
	ld   [$dd80], a                                  ; $49fa: $ea $80 $dd
	add  b                                           ; $49fd: $80
	rst  JumpTable                                         ; $49fe: $df
	add  b                                           ; $49ff: $80
	ld   [$fe82], sp                                 ; $4a00: $08 $82 $fe
	inc  bc                                          ; $4a03: $03
	rst  $38                                         ; $4a04: $ff
	nop                                              ; $4a05: $00
	ldh  a, [rP1]                                    ; $4a06: $f0 $00
	add  b                                           ; $4a08: $80
	add  b                                           ; $4a09: $80
	add  b                                           ; $4a0a: $80
	ld   d, b                                        ; $4a0b: $50
	add  b                                           ; $4a0c: $80
	and  b                                           ; $4a0d: $a0
	add  b                                           ; $4a0e: $80
	nop                                              ; $4a0f: $00
	add  b                                           ; $4a10: $80
	ldh  [$03], a                                    ; $4a11: $e0 $03
	ldh  a, [$e0]                                    ; $4a13: $f0 $e0
	ldh  a, [$cf]                                    ; $4a15: $f0 $cf
	add  d                                           ; $4a17: $82
	and  b                                           ; $4a18: $a0
	adc  b                                           ; $4a19: $88
	and  d                                           ; $4a1a: $a2
	ld   bc, $8bae                                   ; $4a1b: $01 $ae $8b
	add  d                                           ; $4a1e: $82
	inc  bc                                          ; $4a1f: $03
	adc  b                                           ; $4a20: $88
	inc  de                                          ; $4a21: $13
	ld   [bc], a                                     ; $4a22: $02
	di                                               ; $4a23: $f3
	or   $ff                                         ; $4a24: $f6 $ff
	add  b                                           ; $4a26: $80
	adc  c                                           ; $4a27: $89
	add  d                                           ; $4a28: $82
	add  b                                           ; $4a29: $80
	add  d                                           ; $4a2a: $82
	adc  b                                           ; $4a2b: $88
	add  b                                           ; $4a2c: $80
	cp   a                                           ; $4a2d: $bf
	add  b                                           ; $4a2e: $80
	add  b                                           ; $4a2f: $80
	add  h                                           ; $4a30: $84
	ldh  a, [$82]                                    ; $4a31: $f0 $82
	ld   [hl], b                                     ; $4a33: $70
	add  b                                           ; $4a34: $80
	jr   nc, jr_073_49b7                             ; $4a35: $30 $80

	ldh  a, [$80]                                    ; $4a37: $f0 $80
	ld   d, b                                        ; $4a39: $50
	nop                                              ; $4a3a: $00
	rst  JumpTable                                         ; $4a3b: $df
	add  d                                           ; $4a3c: $82
	and  d                                           ; $4a3d: $a2
	add  b                                           ; $4a3e: $80
	ld   [hl+], a                                    ; $4a3f: $22
	add  d                                           ; $4a40: $82
	and  d                                           ; $4a41: $a2
	add  b                                           ; $4a42: $80

jr_073_4a43:
	xor  [hl]                                        ; $4a43: $ae
	add  c                                           ; $4a44: $81
	and  b                                           ; $4a45: $a0
	nop                                              ; $4a46: $00
	add  l                                           ; $4a47: $85
	add  a                                           ; $4a48: $87
	inc  de                                          ; $4a49: $13
	inc  bc                                          ; $4a4a: $03
	db   $10                                         ; $4a4b: $10
	ld   [hl], c                                     ; $4a4c: $71
	ld   [hl], a                                     ; $4a4d: $77
	rlca                                             ; $4a4e: $07
	add  b                                           ; $4a4f: $80
	ld   bc, $6001                                   ; $4a50: $01 $01 $60
	sbc  a                                           ; $4a53: $9f

jr_073_4a54:
	add  b                                           ; $4a54: $80
	rst  $38                                         ; $4a55: $ff
	add  h                                           ; $4a56: $84
	sbc  a                                           ; $4a57: $9f
	add  hl, bc                                      ; $4a58: $09
	rra                                              ; $4a59: $1f
	sbc  a                                           ; $4a5a: $9f
	rra                                              ; $4a5b: $1f
	rst  JumpTable                                         ; $4a5c: $df
	reti                                             ; $4a5d: $d9


	rst  JumpTable                                         ; $4a5e: $df
	ld   b, c                                        ; $4a5f: $41
	ldh  [hScriptOpcodeParams], a                                    ; $4a60: $e0 $a0
	ldh  [$83], a                                    ; $4a62: $e0 $83
	and  b                                           ; $4a64: $a0
	rlca                                             ; $4a65: $07
	or   b                                           ; $4a66: $b0
	add  b                                           ; $4a67: $80
	ldh  a, [$80]                                    ; $4a68: $f0 $80
	ldh  a, [$b0]                                    ; $4a6a: $f0 $b0
	ldh  a, [rIF]                                    ; $4a6c: $f0 $0f
	add  b                                           ; $4a6e: $80
	nop                                              ; $4a6f: $00
	add  d                                           ; $4a70: $82
	add  b                                           ; $4a71: $80
	add  b                                           ; $4a72: $80
	xor  b                                           ; $4a73: $a8
	add  b                                           ; $4a74: $80
	inc  l                                           ; $4a75: $2c
	add  d                                           ; $4a76: $82
	ld   l, [hl]                                     ; $4a77: $6e
	ld   [bc], a                                     ; $4a78: $02
	ld   l, h                                        ; $4a79: $6c
	ld   [hl], e                                     ; $4a7a: $73
	rra                                              ; $4a7b: $1f
	add  b                                           ; $4a7c: $80
	inc  bc                                          ; $4a7d: $03
	add  a                                           ; $4a7e: $87
	nop                                              ; $4a7f: $00
	add  b                                           ; $4a80: $80
	ld   h, b                                        ; $4a81: $60
	inc  bc                                          ; $4a82: $03
	ld   l, l                                        ; $4a83: $6d
	adc  l                                           ; $4a84: $8d
	cp   $de                                         ; $4a85: $fe $de
	add  c                                           ; $4a87: $81
	rst  $38                                         ; $4a88: $ff
	add  c                                           ; $4a89: $81
	ccf                                              ; $4a8a: $3f
	add  b                                           ; $4a8b: $80
	rrca                                             ; $4a8c: $0f
	add  b                                           ; $4a8d: $80
	inc  bc                                          ; $4a8e: $03
	add  b                                           ; $4a8f: $80
	nop                                              ; $4a90: $00
	inc  bc                                          ; $4a91: $03
	ld   [$f0f7], sp                                 ; $4a92: $08 $f7 $f0
	ld   [hl], b                                     ; $4a95: $70
	add  b                                           ; $4a96: $80
	ldh  a, [rP1]                                    ; $4a97: $f0 $00
	ret  nz                                          ; $4a99: $c0

	add  b                                           ; $4a9a: $80
	ldh  [$82], a                                    ; $4a9b: $e0 $82
	ldh  a, [rDIV]                                   ; $4a9d: $f0 $04
	ret  nc                                          ; $4a9f: $d0

	ldh  a, [$e0]                                    ; $4aa0: $f0 $e0
	ldh  a, [$8f]                                    ; $4aa2: $f0 $8f
	add  d                                           ; $4aa4: $82
	call z, Call_073_5880                            ; $4aa5: $cc $80 $58
	inc  b                                           ; $4aa8: $04
	jr   jr_073_4a43                                 ; $4aa9: $18 $98

	add  b                                           ; $4aab: $80

jr_073_4aac:
	ret  nz                                          ; $4aac: $c0

	pop  bc                                          ; $4aad: $c1
	add  b                                           ; $4aae: $80
	pop  af                                          ; $4aaf: $f1
	ld   [bc], a                                     ; $4ab0: $02
	db   $fd                                         ; $4ab1: $fd
	db   $fc                                         ; $4ab2: $fc
	nop                                              ; $4ab3: $00
	add  b                                           ; $4ab4: $80
	ld   l, l                                        ; $4ab5: $6d
	add  b                                           ; $4ab6: $80
	ld   l, h                                        ; $4ab7: $6c
	add  d                                           ; $4ab8: $82
	call z, $8e82                                    ; $4ab9: $cc $82 $8e
	add  b                                           ; $4abc: $80
	sbc  [hl]                                        ; $4abd: $9e
	add  b                                           ; $4abe: $80
	sbc  a                                           ; $4abf: $9f
	add  b                                           ; $4ac0: $80
	ld   a, [de]                                     ; $4ac1: $1a
	add  b                                           ; $4ac2: $80
	cp   d                                           ; $4ac3: $ba
	add  b                                           ; $4ac4: $80
	di                                               ; $4ac5: $f3
	add  b                                           ; $4ac6: $80
	ld   [hl], e                                     ; $4ac7: $73
	add  b                                           ; $4ac8: $80
	daa                                              ; $4ac9: $27
	add  d                                           ; $4aca: $82
	rlca                                             ; $4acb: $07
	nop                                              ; $4acc: $00
	rrca                                             ; $4acd: $0f
	add  d                                           ; $4ace: $82
	ld   [hl], b                                     ; $4acf: $70
	add  h                                           ; $4ad0: $84
	jr   nc, jr_073_4a54                             ; $4ad1: $30 $81

	db   $10                                         ; $4ad3: $10
	add  c                                           ; $4ad4: $81
	sub  b                                           ; $4ad5: $90
	add  b                                           ; $4ad6: $80
	call c, $d880                                    ; $4ad7: $dc $80 $d8
	add  b                                           ; $4ada: $80
	call c, $d880                                    ; $4adb: $dc $80 $d8
	add  b                                           ; $4ade: $80
	call c, $d880                                    ; $4adf: $dc $80 $d8
	ld   bc, $dddc                                   ; $4ae2: $01 $dc $dd
	add  b                                           ; $4ae5: $80
	reti                                             ; $4ae6: $d9


	inc  d                                           ; $4ae7: $14
	ld   e, b                                        ; $4ae8: $58
	ld   [hl+], a                                    ; $4ae9: $22
	add  hl, hl                                      ; $4aea: $29
	jr   nz, jr_073_4b53                             ; $4aeb: $20 $66

	ld   [hl], d                                     ; $4aed: $72
	ld   [hl], l                                     ; $4aee: $75
	ld   d, l                                        ; $4aef: $55
	ld   h, e                                        ; $4af0: $63
	ld   [$0088], sp                                 ; $4af1: $08 $88 $00
	ld   [$ab80], sp                                 ; $4af4: $08 $80 $ab
	ret  nz                                          ; $4af7: $c0

	ret                                              ; $4af8: $c9


	ld   h, a                                        ; $4af9: $67
	rst  $20                                         ; $4afa: $e7
	inc  sp                                          ; $4afb: $33
	or   e                                           ; $4afc: $b3
	add  b                                           ; $4afd: $80
	dec  d                                           ; $4afe: $15
	add  hl, de                                      ; $4aff: $19
	ld   a, $be                                      ; $4b00: $3e $be
	ld   l, d                                        ; $4b02: $6a
	ld   a, [hl+]                                    ; $4b03: $2a
	add  hl, de                                      ; $4b04: $19
	add  hl, sp                                      ; $4b05: $39
	rrca                                             ; $4b06: $0f
	adc  [hl]                                        ; $4b07: $8e
	ld   c, $e1                                      ; $4b08: $0e $e1
	and  $7f                                         ; $4b0a: $e6 $7f
	inc  bc                                          ; $4b0c: $03
	add  hl, bc                                      ; $4b0d: $09

jr_073_4b0e:
	jp   $12c1                                       ; $4b0e: $c3 $c1 $12


	ld   a, [de]                                     ; $4b11: $1a
	ld   [hl+], a                                    ; $4b12: $22
	ld   e, c                                        ; $4b13: $59
	add  hl, sp                                      ; $4b14: $39
	ld   sp, hl                                      ; $4b15: $f9
	ld   a, [hl]                                     ; $4b16: $7e
	ei                                               ; $4b17: $fb
	db   $fd                                         ; $4b18: $fd
	inc  d                                           ; $4b19: $14
	add  b                                           ; $4b1a: $80
	ld   b, b                                        ; $4b1b: $40
	add  e                                           ; $4b1c: $83
	ld   b, h                                        ; $4b1d: $44
	add  b                                           ; $4b1e: $80
	dec  b                                           ; $4b1f: $05
	add  hl, bc                                      ; $4b20: $09
	call nz, $fd9d                                   ; $4b21: $c4 $9d $fd
	ld   b, c                                        ; $4b24: $41
	ld   [hl], c                                     ; $4b25: $71
	ld   h, l                                        ; $4b26: $65
	ld   [hl], l                                     ; $4b27: $75
	ld   a, b                                        ; $4b28: $78
	ld   c, b                                        ; $4b29: $48
	jr   nc, jr_073_4aac                             ; $4b2a: $30 $80

	jr   nz, jr_073_4b32                             ; $4b2c: $20 $04

	add  b                                           ; $4b2e: $80
	ld   hl, sp+$78                                  ; $4b2f: $f8 $78
	db   $fc                                         ; $4b31: $fc

jr_073_4b32:
	ld   a, b                                        ; $4b32: $78
	add  c                                           ; $4b33: $81
	cp   $02                                         ; $4b34: $fe $02
	cp   h                                           ; $4b36: $bc
	rst  $38                                         ; $4b37: $ff
	jr   c, @-$7e                                    ; $4b38: $38 $80

	ld   bc, $0580                                   ; $4b3a: $01 $80 $05
	add  h                                           ; $4b3d: $84
	add  l                                           ; $4b3e: $85
	add  b                                           ; $4b3f: $80
	sbc  l                                           ; $4b40: $9d
	add  b                                           ; $4b41: $80
	ld   bc, $0501                                   ; $4b42: $01 $01 $05
	inc  b                                           ; $4b45: $04
	add  b                                           ; $4b46: $80
	nop                                              ; $4b47: $00
	add  a                                           ; $4b48: $87
	jr   nz, jr_073_4b50                             ; $4b49: $20 $05

	nop                                              ; $4b4b: $00
	jr   nz, jr_073_4b0e                             ; $4b4c: $20 $c0

	di                                               ; $4b4e: $f3
	or   e                                           ; $4b4f: $b3

jr_073_4b50:
	ld   a, a                                        ; $4b50: $7f
	add  d                                           ; $4b51: $82
	ld   b, b                                        ; $4b52: $40

jr_073_4b53:
	nop                                              ; $4b53: $00
	nop                                              ; $4b54: $00
	add  b                                           ; $4b55: $80
	ld   bc, $0081                                   ; $4b56: $01 $81 $00
	dec  b                                           ; $4b59: $05
	ld   bc, $3d1d                                   ; $4b5a: $01 $1d $3d
	inc  de                                          ; $4b5d: $13
	adc  $fc                                         ; $4b5e: $ce $fc
	add  d                                           ; $4b60: $82
	ld   c, h                                        ; $4b61: $4c
	add  d                                           ; $4b62: $82
	inc  c                                           ; $4b63: $0c
	ld   bc, $cc4c                                   ; $4b64: $01 $4c $cc
	add  b                                           ; $4b67: $80
	ld   a, h                                        ; $4b68: $7c
	inc  bc                                          ; $4b69: $03
	ld   [hl], d                                     ; $4b6a: $72
	db   $fc                                         ; $4b6b: $fc
	and  d                                           ; $4b6c: $a2
	db   $dd                                         ; $4b6d: $dd
	add  b                                           ; $4b6e: $80
	reti                                             ; $4b6f: $d9


	inc  bc                                          ; $4b70: $03
	rst  $10                                         ; $4b71: $d7
	rst  JumpTable                                         ; $4b72: $df
	pop  de                                          ; $4b73: $d1
	reti                                             ; $4b74: $d9


	add  b                                           ; $4b75: $80
	db   $dd                                         ; $4b76: $dd
	add  b                                           ; $4b77: $80
	reti                                             ; $4b78: $d9


	add  b                                           ; $4b79: $80
	db   $dd                                         ; $4b7a: $dd
	add  b                                           ; $4b7b: $80
	ld   sp, hl                                      ; $4b7c: $f9
	ld   bc, $80a5                                   ; $4b7d: $01 $a5 $80
	add  b                                           ; $4b80: $80
	adc  c                                           ; $4b81: $89
	jr   jr_073_4b8d                                 ; $4b82: $18 $09

	ld   bc, $2340                                   ; $4b84: $01 $40 $23
	cp   a                                           ; $4b87: $bf
	ld   a, $53                                      ; $4b88: $3e $53
	ld   a, $f5                                      ; $4b8a: $3e $f5
	ld   [hl], a                                     ; $4b8c: $77

jr_073_4b8d:
	ld   [hl], d                                     ; $4b8d: $72
	ld   [hl], e                                     ; $4b8e: $73
	sbc  h                                           ; $4b8f: $9c
	ld   b, d                                        ; $4b90: $42
	ld   h, e                                        ; $4b91: $63
	daa                                              ; $4b92: $27
	rst  $10                                         ; $4b93: $d7
	add  d                                           ; $4b94: $82
	or   c                                           ; $4b95: $b1
	ccf                                              ; $4b96: $3f
	ld   c, a                                        ; $4b97: $4f
	ld   l, a                                        ; $4b98: $6f
	or   d                                           ; $4b99: $b2
	db   $fc                                         ; $4b9a: $fc
	ld   h, d                                        ; $4b9b: $62
	add  b                                           ; $4b9c: $80
	xor  [hl]                                        ; $4b9d: $ae
	dec  b                                           ; $4b9e: $05
	adc  [hl]                                        ; $4b9f: $8e
	ld   a, [hl]                                     ; $4ba0: $7e
	cp   e                                           ; $4ba1: $bb
	db   $fd                                         ; $4ba2: $fd
	cp   $c2                                         ; $4ba3: $fe $c2
	add  b                                           ; $4ba5: $80
	ld   a, [$f802]                                  ; $4ba6: $fa $02 $f8
	db   $e3                                         ; $4ba9: $e3
	ld   [hl], e                                     ; $4baa: $73
	add  b                                           ; $4bab: $80
	rst  $38                                         ; $4bac: $ff
	add  b                                           ; $4bad: $80
	sbc  $80                                         ; $4bae: $de $80
	adc  b                                           ; $4bb0: $88
	ld   bc, $6550                                   ; $4bb1: $01 $50 $65
	add  b                                           ; $4bb4: $80
	ld   a, l                                        ; $4bb5: $7d
	add  b                                           ; $4bb6: $80
	dec  a                                           ; $4bb7: $3d
	dec  b                                           ; $4bb8: $05
	ld   h, h                                        ; $4bb9: $64
	ld   [hl], l                                     ; $4bba: $75
	dec  b                                           ; $4bbb: $05
	ld   l, h                                        ; $4bbc: $6c
	dec  c                                           ; $4bbd: $0d
	ld   b, b                                        ; $4bbe: $40
	add  b                                           ; $4bbf: $80
	nop                                              ; $4bc0: $00
	add  b                                           ; $4bc1: $80
	add  b                                           ; $4bc2: $80
	dec  c                                           ; $4bc3: $0d
	add  [hl]                                        ; $4bc4: $86
	rst  $38                                         ; $4bc5: $ff
	cp   l                                           ; $4bc6: $bd
	cp   $ba                                         ; $4bc7: $fe $ba
	ld   hl, sp-$48                                  ; $4bc9: $f8 $b8
	ld   hl, sp-$58                                  ; $4bcb: $f8 $a8
	ld   sp, hl                                      ; $4bcd: $f9
	sub  c                                           ; $4bce: $91
	ld   hl, sp+$10                                  ; $4bcf: $f8 $10
	ld   hl, sp-$80                                  ; $4bd1: $f8 $80
	jr   c, jr_073_4bd5                              ; $4bd3: $38 $00

jr_073_4bd5:
	jp   hl                                          ; $4bd5: $e9


	add  b                                           ; $4bd6: $80
	dec  b                                           ; $4bd7: $05
	add  h                                           ; $4bd8: $84
	add  l                                           ; $4bd9: $85
	add  b                                           ; $4bda: $80
	sbc  l                                           ; $4bdb: $9d
	add  e                                           ; $4bdc: $83
	ld   bc, $3e0a                                   ; $4bdd: $01 $0a $3e
	ccf                                              ; $4be0: $3f
	ld   l, [hl]                                     ; $4be1: $6e
	rst  $38                                         ; $4be2: $ff
	db   $fd                                         ; $4be3: $fd
	rst  $38                                         ; $4be4: $ff
	di                                               ; $4be5: $f3
	cp   $a3                                         ; $4be6: $fe $a3
	ei                                               ; $4be8: $fb
	rst  ToBoot                                         ; $4be9: $c7
	add  b                                           ; $4bea: $80
	db   $fc                                         ; $4beb: $fc
	add  b                                           ; $4bec: $80
	add  b                                           ; $4bed: $80
	add  b                                           ; $4bee: $80
	rla                                              ; $4bef: $17
	ld   bc, $fce0                                   ; $4bf0: $01 $e0 $fc
	add  b                                           ; $4bf3: $80
	nop                                              ; $4bf4: $00
	inc  bc                                          ; $4bf5: $03
	inc  e                                           ; $4bf6: $1c
	ld   a, $41                                      ; $4bf7: $3e $41
	ld   a, a                                        ; $4bf9: $7f
	add  b                                           ; $4bfa: $80
	ld   a, $82                                      ; $4bfb: $3e $82
	nop                                              ; $4bfd: $00
	add  b                                           ; $4bfe: $80
	dec  a                                           ; $4bff: $3d
	add  d                                           ; $4c00: $82
	ld   bc, $0580                                   ; $4c01: $01 $80 $05
	add  b                                           ; $4c04: $80
	dec  c                                           ; $4c05: $0d
	add  b                                           ; $4c06: $80

jr_073_4c07:
	dec  a                                           ; $4c07: $3d
	add  b                                           ; $4c08: $80

jr_073_4c09:
	dec  [hl]                                        ; $4c09: $35
	add  b                                           ; $4c0a: $80
	or   c                                           ; $4c0b: $b1
	ld   [bc], a                                     ; $4c0c: $02
	or   e                                           ; $4c0d: $b3
	dec  e                                           ; $4c0e: $1d
	ld   d, c                                        ; $4c0f: $51
	add  b                                           ; $4c10: $80
	sub  c                                           ; $4c11: $91
	add  b                                           ; $4c12: $80
	sub  l                                           ; $4c13: $95
	add  d                                           ; $4c14: $82
	sub  h                                           ; $4c15: $94
	add  b                                           ; $4c16: $80
	call nc, $dd01                                   ; $4c17: $d4 $01 $dd
	call nc, $f480                                   ; $4c1a: $d4 $80 $f4
	nop                                              ; $4c1d: $00
	add  hl, bc                                      ; $4c1e: $09
	add  d                                           ; $4c1f: $82
	rra                                              ; $4c20: $1f
	dec  bc                                          ; $4c21: $0b
	ccf                                              ; $4c22: $3f
	inc  a                                           ; $4c23: $3c
	rst  $38                                         ; $4c24: $ff
	pop  af                                          ; $4c25: $f1
	rst  $38                                         ; $4c26: $ff
	jp   hl                                          ; $4c27: $e9


	rst  $38                                         ; $4c28: $ff
	add  d                                           ; $4c29: $82
	rst  $38                                         ; $4c2a: $ff
	ld   h, [hl]                                     ; $4c2b: $66
	rst  $38                                         ; $4c2c: $ff
	ld   a, a                                        ; $4c2d: $7f
	add  b                                           ; $4c2e: $80
	adc  b                                           ; $4c2f: $88
	ld   bc, $0a8a                                   ; $4c30: $01 $8a $0a
	add  b                                           ; $4c33: $80
	dec  bc                                          ; $4c34: $0b
	add  b                                           ; $4c35: $80
	ld   a, [de]                                     ; $4c36: $1a
	add  b                                           ; $4c37: $80
	add  hl, bc                                      ; $4c38: $09
	add  b                                           ; $4c39: $80
	add  hl, de                                      ; $4c3a: $19
	add  b                                           ; $4c3b: $80
	add  hl, hl                                      ; $4c3c: $29
	inc  bc                                          ; $4c3d: $03
	add  hl, de                                      ; $4c3e: $19
	ld   h, $7f                                      ; $4c3f: $26 $7f
	ld   e, a                                        ; $4c41: $5f
	add  b                                           ; $4c42: $80
	cp   a                                           ; $4c43: $bf
	dec  bc                                          ; $4c44: $0b
	ld   a, a                                        ; $4c45: $7f
	ld   h, b                                        ; $4c46: $60
	cp   a                                           ; $4c47: $bf
	cp   c                                           ; $4c48: $b9
	ld   e, a                                        ; $4c49: $5f
	ld   d, b                                        ; $4c4a: $50
	cp   a                                           ; $4c4b: $bf
	or   h                                           ; $4c4c: $b4
	ld   e, a                                        ; $4c4d: $5f
	ld   e, l                                        ; $4c4e: $5d
	cp   a                                           ; $4c4f: $bf
	ld   d, b                                        ; $4c50: $50
	add  b                                           ; $4c51: $80
	rla                                              ; $4c52: $17
	add  c                                           ; $4c53: $81
	sub  a                                           ; $4c54: $97
	ld   a, [bc]                                     ; $4c55: $0a
	db   $10                                         ; $4c56: $10
	sub  a                                           ; $4c57: $97
	sub  e                                           ; $4c58: $93
	sub  a                                           ; $4c59: $97
	sbc  c                                           ; $4c5a: $99
	rst  JumpTable                                         ; $4c5b: $df
	jr   nc, @+$01                                   ; $4c5c: $30 $ff

	ld   [hl], d                                     ; $4c5e: $72
	rst  $38                                         ; $4c5f: $ff
	db   $fd                                         ; $4c60: $fd
	add  b                                           ; $4c61: $80
	or   h                                           ; $4c62: $b4
	inc  bc                                          ; $4c63: $03
	inc  [hl]                                        ; $4c64: $34
	ld   d, [hl]                                     ; $4c65: $56
	ld   [hl], h                                     ; $4c66: $74
	call nc, $f581                                   ; $4c67: $d4 $81 $f5
	ld   d, $b5                                      ; $4c6a: $16 $b5
	rst  $30                                         ; $4c6c: $f7
	halt                                             ; $4c6d: $76
	rst  $38                                         ; $4c6e: $ff
	xor  $ff                                         ; $4c6f: $ee $ff
	ld   de, $00fe                                   ; $4c71: $11 $fe $00
	cp   $dc                                         ; $4c74: $fe $dc
	cp   $06                                         ; $4c76: $fe $06
	rst  $38                                         ; $4c78: $ff
	sbc  e                                           ; $4c79: $9b
	rst  $38                                         ; $4c7a: $ff
	or   h                                           ; $4c7b: $b4
	rst  $38                                         ; $4c7c: $ff
	and  d                                           ; $4c7d: $a2
	rst  $38                                         ; $4c7e: $ff
	sub  a                                           ; $4c7f: $97
	rst  $38                                         ; $4c80: $ff

jr_073_4c81:
	ccf                                              ; $4c81: $3f
	add  b                                           ; $4c82: $80
	add  hl, hl                                      ; $4c83: $29
	add  b                                           ; $4c84: $80
	jr   jr_073_4c07                                 ; $4c85: $18 $80

	jr   c, jr_073_4c09                              ; $4c87: $38 $80

	inc  e                                           ; $4c89: $1c
	add  b                                           ; $4c8a: $80
	cp   [hl]                                        ; $4c8b: $be
	dec  bc                                          ; $4c8c: $0b
	rst  $38                                         ; $4c8d: $ff
	ld   a, [bc]                                     ; $4c8e: $0a
	cp   $78                                         ; $4c8f: $fe $78
	adc  $ba                                         ; $4c91: $ce $ba
	ld   e, a                                        ; $4c93: $5f
	ld   e, b                                        ; $4c94: $58
	xor  a                                           ; $4c95: $af
	xor  e                                           ; $4c96: $ab
	rst  JumpTable                                         ; $4c97: $df
	call c, $af80                                    ; $4c98: $dc $80 $af
	rlca                                             ; $4c9b: $07
	rst  JumpTable                                         ; $4c9c: $df
	db   $d3                                         ; $4c9d: $d3
	rst  $38                                         ; $4c9e: $ff
	and  l                                           ; $4c9f: $a5
	rst  $38                                         ; $4ca0: $ff
	and  [hl]                                        ; $4ca1: $a6
	rst  $38                                         ; $4ca2: $ff
	rst  $30                                         ; $4ca3: $f7
	add  b                                           ; $4ca4: $80
	ld   [bc], a                                     ; $4ca5: $02
	add  b                                           ; $4ca6: $80
	ld   [hl+], a                                    ; $4ca7: $22
	add  c                                           ; $4ca8: $81
	ld   h, d                                        ; $4ca9: $62
	add  b                                           ; $4caa: $80
	ld   a, [hl]                                     ; $4cab: $7e
	inc  bc                                          ; $4cac: $03
	ld   a, h                                        ; $4cad: $7c
	ld   a, [hl]                                     ; $4cae: $7e
	halt                                             ; $4caf: $76
	ld   e, d                                        ; $4cb0: $5a
	add  b                                           ; $4cb1: $80
	ld   a, d                                        ; $4cb2: $7a
	ld   [bc], a                                     ; $4cb3: $02
	cp   h                                           ; $4cb4: $bc
	rra                                              ; $4cb5: $1f
	ld   [$1887], sp                                 ; $4cb6: $08 $87 $18
	inc  b                                           ; $4cb9: $04
	rrca                                             ; $4cba: $0f
	rra                                              ; $4cbb: $1f
	ld   [$0119], sp                                 ; $4cbc: $08 $19 $01
	add  c                                           ; $4cbf: $81
	nop                                              ; $4cc0: $00
	ld   [bc], a                                     ; $4cc1: $02
	ld   bc, $0f0e                                   ; $4cc2: $01 $0e $0f
	add  b                                           ; $4cc5: $80
	rla                                              ; $4cc6: $17
	ld   [$3f2f], sp                                 ; $4cc7: $08 $2f $3f
	scf                                              ; $4cca: $37
	and  e                                           ; $4ccb: $a3
	ld   a, l                                        ; $4ccc: $7d
	ld   sp, hl                                      ; $4ccd: $f9
	rst  $38                                         ; $4cce: $ff
	dec  bc                                          ; $4ccf: $0b
	db   $f4                                         ; $4cd0: $f4
	add  b                                           ; $4cd1: $80
	inc  h                                           ; $4cd2: $24
	add  c                                           ; $4cd3: $81
	inc  b                                           ; $4cd4: $04
	add  b                                           ; $4cd5: $80
	add  h                                           ; $4cd6: $84
	ld   [$e4c4], sp                                 ; $4cd7: $08 $c4 $e4
	call nz, $e464                                   ; $4cda: $c4 $64 $e4
	ld   h, h                                        ; $4cdd: $64
	db   $e4                                         ; $4cde: $e4
	ld   de, $8001                                   ; $4cdf: $11 $01 $80
	nop                                              ; $4ce2: $00
	add  b                                           ; $4ce3: $80
	ld   bc, $0080                                   ; $4ce4: $01 $80 $00
	add  c                                           ; $4ce7: $81
	ld   bc, $0001                                   ; $4ce8: $01 $01 $00
	ld   [bc], a                                     ; $4ceb: $02
	add  b                                           ; $4cec: $80
	nop                                              ; $4ced: $00
	ld   bc, $0c20                                   ; $4cee: $01 $20 $0c
	add  d                                           ; $4cf1: $82
	and  b                                           ; $4cf2: $a0
	add  h                                           ; $4cf3: $84
	and  d                                           ; $4cf4: $a2
	dec  b                                           ; $4cf5: $05
	ld   [hl+], a                                    ; $4cf6: $22
	ld   h, d                                        ; $4cf7: $62
	ld   [hl+], a                                    ; $4cf8: $22
	and  d                                           ; $4cf9: $a2
	ld   l, $29                                      ; $4cfa: $2e $29
	add  d                                           ; $4cfc: $82
	add  hl, de                                      ; $4cfd: $19
	nop                                              ; $4cfe: $00
	jr   jr_073_4c81                                 ; $4cff: $18 $80

	add  hl, de                                      ; $4d01: $19
	ld   [bc], a                                     ; $4d02: $02
	rrca                                             ; $4d03: $0f
	rra                                              ; $4d04: $1f
	add  hl, bc                                      ; $4d05: $09
	add  c                                           ; $4d06: $81
	jr   @+$09                                       ; $4d07: $18 $07

	add  hl, de                                      ; $4d09: $19
	jr   jr_073_4d0c                                 ; $4d0a: $18 $00

jr_073_4d0c:
	rst  $38                                         ; $4d0c: $ff
	or   $ff                                         ; $4d0d: $f6 $ff
	cp   $f8                                         ; $4d0f: $fe $f8
	add  c                                           ; $4d11: $81
	ld   [hl], b                                     ; $4d12: $70
	dec  bc                                          ; $4d13: $0b
	ld   h, b                                        ; $4d14: $60
	ld   hl, sp+$03                                  ; $4d15: $f8 $03
	rst  JumpTable                                         ; $4d17: $df
	pop  bc                                          ; $4d18: $c1
	ld   a, a                                        ; $4d19: $7f
	reti                                             ; $4d1a: $d9


	rst  $20                                         ; $4d1b: $e7
	db   $e4                                         ; $4d1c: $e4
	or   h                                           ; $4d1d: $b4
	inc  d                                           ; $4d1e: $14
	inc  [hl]                                        ; $4d1f: $34
	add  b                                           ; $4d20: $80
	or   h                                           ; $4d21: $b4
	add  b                                           ; $4d22: $80
	inc  [hl]                                        ; $4d23: $34
	add  hl, bc                                      ; $4d24: $09
	ld   [hl], h                                     ; $4d25: $74
	inc  h                                           ; $4d26: $24
	db   $e4                                         ; $4d27: $e4
	ld   h, h                                        ; $4d28: $64
	db   $e4                                         ; $4d29: $e4
	ld   [hl], h                                     ; $4d2a: $74
	db   $f4                                         ; $4d2b: $f4
	ld   [hl], h                                     ; $4d2c: $74
	rlca                                             ; $4d2d: $07
	inc  c                                           ; $4d2e: $0c
	add  b                                           ; $4d2f: $80
	rrca                                             ; $4d30: $0f
	nop                                              ; $4d31: $00
	rra                                              ; $4d32: $1f
	add  b                                           ; $4d33: $80
	ccf                                              ; $4d34: $3f
	ld   a, [bc]                                     ; $4d35: $0a
	rra                                              ; $4d36: $1f
	ccf                                              ; $4d37: $3f
	ld   a, [de]                                     ; $4d38: $1a
	ccf                                              ; $4d39: $3f
	add  hl, de                                      ; $4d3a: $19
	ccf                                              ; $4d3b: $3f
	rra                                              ; $4d3c: $1f
	ccf                                              ; $4d3d: $3f
	cp   h                                           ; $4d3e: $bc
	ld   h, b                                        ; $4d3f: $60
	ldh  [$80], a                                    ; $4d40: $e0 $80
	ld   [hl+], a                                    ; $4d42: $22
	rrca                                             ; $4d43: $0f
	and  d                                           ; $4d44: $a2
	add  d                                           ; $4d45: $82
	ld   h, d                                        ; $4d46: $62
	ld   b, d                                        ; $4d47: $42
	ld   h, d                                        ; $4d48: $62
	ld   b, d                                        ; $4d49: $42
	xor  $ce                                         ; $4d4a: $ee $ce
	ldh  [$c0], a                                    ; $4d4c: $e0 $c0
	ldh  [c], a                                      ; $4d4e: $e2
	inc  b                                           ; $4d4f: $04
	add  hl, de                                      ; $4d50: $19
	dec  bc                                          ; $4d51: $0b
	dec  de                                          ; $4d52: $1b
	ld   [$1b80], sp                                 ; $4d53: $08 $80 $1b
	nop                                              ; $4d56: $00
	jr   @-$7e                                       ; $4d57: $18 $80

	ld   sp, hl                                      ; $4d59: $f9
	add  b                                           ; $4d5a: $80
	sbc  l                                           ; $4d5b: $9d
	add  b                                           ; $4d5c: $80
	db   $fc                                         ; $4d5d: $fc
	dec  d                                           ; $4d5e: $15
	adc  e                                           ; $4d5f: $8b
	adc  a                                           ; $4d60: $8f
	ret                                              ; $4d61: $c9


	dec  a                                           ; $4d62: $3d
	ld   b, $0e                                      ; $4d63: $06 $0e
	inc  bc                                          ; $4d65: $03
	scf                                              ; $4d66: $37
	add  hl, bc                                      ; $4d67: $09
	ld   b, e                                        ; $4d68: $43
	ld   d, h                                        ; $4d69: $54
	ld   d, c                                        ; $4d6a: $51
	ld   l, c                                        ; $4d6b: $69
	ld   h, c                                        ; $4d6c: $61
	ld   e, l                                        ; $4d6d: $5d
	ld   d, e                                        ; $4d6e: $53
	ld   l, [hl]                                     ; $4d6f: $6e
	ld   l, b                                        ; $4d70: $68

jr_073_4d71:
	rst  $30                                         ; $4d71: $f7
	db   $f4                                         ; $4d72: $f4

jr_073_4d73:
	inc  a                                           ; $4d73: $3c
	db   $fc                                         ; $4d74: $fc
	add  b                                           ; $4d75: $80
	db   $f4                                         ; $4d76: $f4
	ld   [hl+], a                                    ; $4d77: $22
	sub  h                                           ; $4d78: $94
	db   $f4                                         ; $4d79: $f4
	rst  $38                                         ; $4d7a: $ff
	xor  a                                           ; $4d7b: $af
	xor  c                                           ; $4d7c: $a9
	ld   l, c                                        ; $4d7d: $69
	xor  a                                           ; $4d7e: $af
	rst  $28                                         ; $4d7f: $ef
	add  sp, -$20                                    ; $4d80: $e8 $e0
	ld   b, $3f                                      ; $4d82: $06 $3f
	dec  e                                           ; $4d84: $1d
	ccf                                              ; $4d85: $3f
	dec  a                                           ; $4d86: $3d
	ccf                                              ; $4d87: $3f
	dec  e                                           ; $4d88: $1d
	rra                                              ; $4d89: $1f
	dec  e                                           ; $4d8a: $1d
	rra                                              ; $4d8b: $1f
	dec  e                                           ; $4d8c: $1d
	sbc  a                                           ; $4d8d: $9f
	sbc  l                                           ; $4d8e: $9d
	sbc  a                                           ; $4d8f: $9f
	ld   bc, $a01f                                   ; $4d90: $01 $1f $a0
	ldh  [c], a                                      ; $4d93: $e2
	jp   nz, $c2e2                                   ; $4d94: $c2 $e2 $c2

	ldh  [c], a                                      ; $4d97: $e2
	jp   nz, $c2e2                                   ; $4d98: $c2 $e2 $c2

	add  b                                           ; $4d9b: $80
	ld   h, d                                        ; $4d9c: $62
	add  b                                           ; $4d9d: $80
	ld   c, [hl]                                     ; $4d9e: $4e
	nop                                              ; $4d9f: $00
	ld   b, b                                        ; $4da0: $40
	add  b                                           ; $4da1: $80
	ld   h, b                                        ; $4da2: $60
	ld   [bc], a                                     ; $4da3: $02
	sbc  [hl]                                        ; $4da4: $9e
	db   $fc                                         ; $4da5: $fc
	cp   $80                                         ; $4da6: $fe $80
	ei                                               ; $4da8: $fb
	rrca                                             ; $4da9: $0f
	ld   sp, hl                                      ; $4daa: $f9
	dec  b                                           ; $4dab: $05
	ld   hl, sp-$3c                                  ; $4dac: $f8 $c4
	ei                                               ; $4dae: $fb
	adc  a                                           ; $4daf: $8f
	ld   hl, sp+$24                                  ; $4db0: $f8 $24
	ld   hl, sp+$6c                                  ; $4db2: $f8 $6c
	ld   hl, sp-$10                                  ; $4db4: $f8 $f0
	ld   [hl-], a                                    ; $4db6: $32
	cp   [hl]                                        ; $4db7: $be
	cp   b                                           ; $4db8: $b8
	cp   h                                           ; $4db9: $bc
	add  b                                           ; $4dba: $80
	cp   [hl]                                        ; $4dbb: $be
	nop                                              ; $4dbc: $00
	cp   h                                           ; $4dbd: $bc
	add  b                                           ; $4dbe: $80
	db   $fc                                         ; $4dbf: $fc
	ld   [bc], a                                     ; $4dc0: $02
	db   $fd                                         ; $4dc1: $fd
	db   $ec                                         ; $4dc2: $ec
	db   $ed                                         ; $4dc3: $ed
	add  b                                           ; $4dc4: $80
	rst  $20                                         ; $4dc5: $e7
	inc  bc                                          ; $4dc6: $03
	db   $e3                                         ; $4dc7: $e3
	xor  e                                           ; $4dc8: $ab
	add  sp, -$78                                    ; $4dc9: $e8 $88
	add  c                                           ; $4dcb: $81
	add  sp, $01                                     ; $4dcc: $e8 $01
	db   $e4                                         ; $4dce: $e4
	db   $ec                                         ; $4dcf: $ec
	add  b                                           ; $4dd0: $80
	ld   l, h                                        ; $4dd1: $6c
	ld   bc, $aa2a                                   ; $4dd2: $01 $2a $aa
	add  b                                           ; $4dd5: $80
	ld   a, [de]                                     ; $4dd6: $1a
	inc  b                                           ; $4dd7: $04
	sbc  e                                           ; $4dd8: $9b
	rst  $10                                         ; $4dd9: $d7
	inc  h                                           ; $4dda: $24
	ldh  a, [$f1]                                    ; $4ddb: $f0 $f1
	add  c                                           ; $4ddd: $81
	ldh  a, [rP1]                                    ; $4dde: $f0 $00
	pop  af                                          ; $4de0: $f1
	add  d                                           ; $4de1: $82
	add  sp, -$80                                    ; $4de2: $e8 $80
	jp   hl                                          ; $4de4: $e9


	rlca                                             ; $4de5: $07
	xor  $ff                                         ; $4de6: $ee $ff
	db   $fc                                         ; $4de8: $fc
	dec  c                                           ; $4de9: $0d
	nop                                              ; $4dea: $00
	add  b                                           ; $4deb: $80
	jr   nz, jr_073_4e4e                             ; $4dec: $20 $60

	add  b                                           ; $4dee: $80
	jr   nz, jr_073_4d71                             ; $4def: $20 $80

	jr   z, jr_073_4d73                              ; $4df1: $28 $80

	inc  l                                           ; $4df3: $2c
	add  d                                           ; $4df4: $82
	ld   l, $21                                      ; $4df5: $2e $21
	inc  l                                           ; $4df7: $2c
	db   $10                                         ; $4df8: $10
	db   $fc                                         ; $4df9: $fc
	nop                                              ; $4dfa: $00
	rst  $38                                         ; $4dfb: $ff
	pop  hl                                          ; $4dfc: $e1
	rst  $38                                         ; $4dfd: $ff
	sbc  h                                           ; $4dfe: $9c
	rst  $38                                         ; $4dff: $ff
	ld   a, l                                        ; $4e00: $7d
	rst  $38                                         ; $4e01: $ff
	xor  a                                           ; $4e02: $af
	rst  $38                                         ; $4e03: $ff
	sbc  e                                           ; $4e04: $9b
	rst  $38                                         ; $4e05: $ff
	ld   h, l                                        ; $4e06: $65
	rst  $38                                         ; $4e07: $ff
	ld   l, [hl]                                     ; $4e08: $6e
	ldh  a, [$f4]                                    ; $4e09: $f0 $f4
	db   $ec                                         ; $4e0b: $ec
	ld   [$f1f2], a                                  ; $4e0c: $ea $f2 $f1
	reti                                             ; $4e0f: $d9


	ld   a, [$b5f6]                                  ; $4e10: $fa $f6 $b5
	xor  e                                           ; $4e13: $ab
	ld   [hl-], a                                    ; $4e14: $32
	dec  a                                           ; $4e15: $3d
	jr   @+$21                                       ; $4e16: $18 $1f

	add  hl, bc                                      ; $4e18: $09
	add  b                                           ; $4e19: $80
	rst  $28                                         ; $4e1a: $ef
	dec  c                                           ; $4e1b: $0d
	ld   e, e                                        ; $4e1c: $5b
	ld   d, a                                        ; $4e1d: $57
	daa                                              ; $4e1e: $27
	dec  l                                           ; $4e1f: $2d
	dec  e                                           ; $4e20: $1d
	adc  l                                           ; $4e21: $8d
	sub  a                                           ; $4e22: $97
	ld   a, l                                        ; $4e23: $7d
	ld   a, e                                        ; $4e24: $7b
	db   $d3                                         ; $4e25: $d3
	db   $db                                         ; $4e26: $db
	adc  d                                           ; $4e27: $8a
	adc  [hl]                                        ; $4e28: $8e
	rst  $38                                         ; $4e29: $ff
	xor  l                                           ; $4e2a: $ad
	nop                                              ; $4e2b: $00
	dec  hl                                          ; $4e2c: $2b
	ld   [bc], a                                     ; $4e2d: $02
	add  [hl]                                        ; $4e2e: $86
	nop                                              ; $4e2f: $00
	ld   [$0b0f], sp                                 ; $4e30: $08 $0f $0b
	inc  bc                                          ; $4e33: $03
	dec  c                                           ; $4e34: $0d
	ld   bc, $000e                                   ; $4e35: $01 $0e $00
	ld   c, $0b                                      ; $4e38: $0e $0b
	add  l                                           ; $4e3a: $85
	nop                                              ; $4e3b: $00
	nop                                              ; $4e3c: $00
	rst  $38                                         ; $4e3d: $ff
	add  b                                           ; $4e3e: $80
	ld   l, l                                        ; $4e3f: $6d
	dec  b                                           ; $4e40: $05
	or   d                                           ; $4e41: $b2
	ldh  a, [c]                                      ; $4e42: $f2
	db   $fd                                         ; $4e43: $fd
	pop  hl                                          ; $4e44: $e1
	cp   $5d                                         ; $4e45: $fe $5d
	add  l                                           ; $4e47: $85
	nop                                              ; $4e48: $00
	ld   [$ffbc], sp                                 ; $4e49: $08 $bc $ff
	adc  d                                           ; $4e4c: $8a
	ld   a, [hl]                                     ; $4e4d: $7e

jr_073_4e4e:
	ld   b, [hl]                                     ; $4e4e: $46
	cp   [hl]                                        ; $4e4f: $be
	or   h                                           ; $4e50: $b4
	ld   c, h                                        ; $4e51: $4c
	or   a                                           ; $4e52: $b7
	add  l                                           ; $4e53: $85
	nop                                              ; $4e54: $00
	inc  b                                           ; $4e55: $04
	db   $fd                                         ; $4e56: $fd
	rrca                                             ; $4e57: $0f
	add  hl, bc                                      ; $4e58: $09
	ld   e, $12                                      ; $4e59: $1e $12
	add  b                                           ; $4e5b: $80
	dec  a                                           ; $4e5c: $3d
	ld   bc, $c83f                                   ; $4e5d: $01 $3f $c8
	add  l                                           ; $4e60: $85
	nop                                              ; $4e61: $00
	ld   [$67bf], sp                                 ; $4e62: $08 $bf $67
	rst  $20                                         ; $4e65: $e7
	db   $ec                                         ; $4e66: $ec
	ld   l, [hl]                                     ; $4e67: $6e
	sbc  $f8                                         ; $4e68: $de $f8
	ld   a, l                                        ; $4e6a: $7d
	and  $85                                         ; $4e6b: $e6 $85
	nop                                              ; $4e6d: $00
	ld   [$89f7], sp                                 ; $4e6e: $08 $f7 $89
	adc  h                                           ; $4e71: $8c
	xor  a                                           ; $4e72: $af
	xor  b                                           ; $4e73: $a8
	xor  a                                           ; $4e74: $af
	pop  af                                          ; $4e75: $f1
	ld   e, a                                        ; $4e76: $5f
	db   $f4                                         ; $4e77: $f4
	add  l                                           ; $4e78: $85
	nop                                              ; $4e79: $00
	ld   [$bfde], sp                                 ; $4e7a: $08 $de $bf
	ld   e, d                                        ; $4e7d: $5a
	db   $fc                                         ; $4e7e: $fc
	ld   l, c                                        ; $4e7f: $69
	pop  af                                          ; $4e80: $f1
	and  $c6                                         ; $4e81: $e6 $c6
	ld   a, a                                        ; $4e83: $7f
	add  l                                           ; $4e84: $85
	nop                                              ; $4e85: $00
	ld   [$c0bf], sp                                 ; $4e86: $08 $bf $c0
	sbc  e                                           ; $4e89: $9b
	dec  de                                          ; $4e8a: $1b
	inc  hl                                          ; $4e8b: $23
	daa                                              ; $4e8c: $27
	add  b                                           ; $4e8d: $80
	rst  JumpTable                                         ; $4e8e: $df
	and  h                                           ; $4e8f: $a4
	add  l                                           ; $4e90: $85
	nop                                              ; $4e91: $00
	ld   [$927f], sp                                 ; $4e92: $08 $7f $92
	nop                                              ; $4e95: $00
	ld   a, a                                        ; $4e96: $7f
	jr   z, @+$01                                    ; $4e97: $28 $ff

	jr   z, @+$01                                    ; $4e99: $28 $ff

	sub  d                                           ; $4e9b: $92
	add  l                                           ; $4e9c: $85
	nop                                              ; $4e9d: $00
	ld   [$5fe9], sp                                 ; $4e9e: $08 $e9 $5f
	nop                                              ; $4ea1: $00
	db   $fd                                         ; $4ea2: $fd
	dec  b                                           ; $4ea3: $05
	db   $fd                                         ; $4ea4: $fd
	ld   [$47fc], sp                                 ; $4ea5: $08 $fc $47
	add  l                                           ; $4ea8: $85
	nop                                              ; $4ea9: $00
	ld   [rAUDVOL], sp                                 ; $4eaa: $08 $24 $ff
	add  b                                           ; $4ead: $80
	rst  $38                                         ; $4eae: $ff
	ret  nz                                          ; $4eaf: $c0

	rst  JumpTable                                         ; $4eb0: $df
	ld   l, b                                        ; $4eb1: $68
	ld   l, a                                        ; $4eb2: $6f
	cp   h                                           ; $4eb3: $bc
	add  l                                           ; $4eb4: $85
	nop                                              ; $4eb5: $00
	ld   [$ff92], sp                                 ; $4eb6: $08 $92 $ff
	nop                                              ; $4eb9: $00
	rst  $38                                         ; $4eba: $ff
	nop                                              ; $4ebb: $00
	rst  $38                                         ; $4ebc: $ff
	nop                                              ; $4ebd: $00
	rst  $38                                         ; $4ebe: $ff
	sub  d                                           ; $4ebf: $92
	add  l                                           ; $4ec0: $85
	nop                                              ; $4ec1: $00
	ld   [$837f], sp                                 ; $4ec2: $08 $7f $83
	ld   c, a                                        ; $4ec5: $4f
	db   $fc                                         ; $4ec6: $fc
	rlca                                             ; $4ec7: $07
	rst  $38                                         ; $4ec8: $ff
	nop                                              ; $4ec9: $00
	cp   $49                                         ; $4eca: $fe $49
	add  l                                           ; $4ecc: $85
	nop                                              ; $4ecd: $00
	ld   [bc], a                                     ; $4ece: $02
	ld   [hl], a                                     ; $4ecf: $77
	ld   sp, hl                                      ; $4ed0: $f9
	ld   [hl], c                                     ; $4ed1: $71
	add  b                                           ; $4ed2: $80
	inc  a                                           ; $4ed3: $3c
	inc  bc                                          ; $4ed4: $03
	dec  c                                           ; $4ed5: $0d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4ed6: $cf
	jp   $85fe                                       ; $4ed7: $c3 $fe $85


	nop                                              ; $4eda: $00
	add  hl, bc                                      ; $4edb: $09
	rst  $28                                         ; $4edc: $ef
	sub  c                                           ; $4edd: $91
	or   c                                           ; $4ede: $b1
	ld   [hl], l                                     ; $4edf: $75
	push de                                          ; $4ee0: $d5
	or   l                                           ; $4ee1: $b5
	ld   l, a                                        ; $4ee2: $6f
	jp   c, $20b0                                    ; $4ee3: $da $b0 $20

	add  b                                           ; $4ee6: $80
	nop                                              ; $4ee7: $00

jr_073_4ee8:
	ld   [bc], a                                     ; $4ee8: $02
	ld   e, a                                        ; $4ee9: $5f
	rst  $38                                         ; $4eea: $ff
	and  b                                           ; $4eeb: $a0
	add  e                                           ; $4eec: $83
	nop                                              ; $4eed: $00
	ld   [$e7e0], sp                                 ; $4eee: $08 $e0 $e7
	daa                                              ; $4ef1: $27
	jr   nz, jr_073_4ee8                             ; $4ef2: $20 $f4

	ld   c, $08                                      ; $4ef4: $0e $08
	ld   c, $0c                                      ; $4ef6: $0e $0c
	add  e                                           ; $4ef8: $83
	ld   c, $02                                      ; $4ef9: $0e $02
	ld   b, $0e                                      ; $4efb: $06 $0e
	ld   b, $81                                      ; $4efd: $06 $81
	ld   c, $08                                      ; $4eff: $0e $08
	cp   [hl]                                        ; $4f01: $be
	rst  $38                                         ; $4f02: $ff
	ld   a, [$faff]                                  ; $4f03: $fa $ff $fa
	rst  $38                                         ; $4f06: $ff
	cp   $ff                                         ; $4f07: $fe $ff
	cp   $85                                         ; $4f09: $fe $85
	rst  $38                                         ; $4f0b: $ff
	db   $10                                         ; $4f0c: $10
	cp   l                                           ; $4f0d: $bd
	or   [hl]                                        ; $4f0e: $b6
	ld   [hl], h                                     ; $4f0f: $74
	ret  z                                           ; $4f10: $c8

	ld   c, d                                        ; $4f11: $4a
	or   $d6                                         ; $4f12: $f6 $d6
	ld   a, [$fc8c]                                  ; $4f14: $fa $8c $fc
	or   h                                           ; $4f17: $b4
	db   $fc                                         ; $4f18: $fc
	and  h                                           ; $4f19: $a4
	db   $fc                                         ; $4f1a: $fc
	db   $e4                                         ; $4f1b: $e4
	db   $fc                                         ; $4f1c: $fc
	ldh  a, [$80]                                    ; $4f1d: $f0 $80
	ld   a, e                                        ; $4f1f: $7b
	ld   h, [hl]                                     ; $4f20: $66
	ld   a, c                                        ; $4f21: $79
	ld   a, l                                        ; $4f22: $7d
	inc  e                                           ; $4f23: $1c
	ld   bc, $feff                                   ; $4f24: $01 $ff $fe
	dec  bc                                          ; $4f27: $0b
	ld   b, e                                        ; $4f28: $43
	db   $fc                                         ; $4f29: $fc
	db   $ec                                         ; $4f2a: $ec
	rst  $30                                         ; $4f2b: $f7
	rst  $38                                         ; $4f2c: $ff
	ld   hl, sp-$30                                  ; $4f2d: $f8 $d0
	ld   a, [hl]                                     ; $4f2f: $7e
	ld   l, $f0                                      ; $4f30: $2e $f0
	db   $f4                                         ; $4f32: $f4
	ld   [hl], l                                     ; $4f33: $75
	ld   [hl], c                                     ; $4f34: $71
	ld   a, [hl-]                                    ; $4f35: $3a
	ld   a, d                                        ; $4f36: $7a
	db   $ed                                         ; $4f37: $ed
	adc  l                                           ; $4f38: $8d
	ld   h, c                                        ; $4f39: $61
	ld   h, e                                        ; $4f3a: $63
	sbc  a                                           ; $4f3b: $9f
	sbc  l                                           ; $4f3c: $9d
	db   $e3                                         ; $4f3d: $e3
	add  d                                           ; $4f3e: $82
	rst  $30                                         ; $4f3f: $f7
	add  h                                           ; $4f40: $84
	ld   a, [hl-]                                    ; $4f41: $3a
	inc  c                                           ; $4f42: $0c
	ld   a, h                                        ; $4f43: $7c
	ld   de, $d2f9                                   ; $4f44: $11 $f9 $d2
	ld   h, d                                        ; $4f47: $62
	ld   b, b                                        ; $4f48: $40
	ld   l, a                                        ; $4f49: $6f
	xor  b                                           ; $4f4a: $a8
	rst  $28                                         ; $4f4b: $ef
	add  sp, -$11                                    ; $4f4c: $e8 $ef
	ld   h, a                                        ; $4f4e: $67
	add  hl, bc                                      ; $4f4f: $09
	dec  [hl]                                        ; $4f50: $35
	ld   [hl], $4a                                   ; $4f51: $36 $4a
	ld   c, c                                        ; $4f53: $49
	or   b                                           ; $4f54: $b0
	or   a                                           ; $4f55: $b7
	ld   c, [hl]                                     ; $4f56: $4e
	ld   c, c                                        ; $4f57: $49
	ld   bc, $00ff                                   ; $4f58: $01 $ff $00
	rst  $38                                         ; $4f5b: $ff
	nop                                              ; $4f5c: $00
	rst  $38                                         ; $4f5d: $ff
	db   $e4                                         ; $4f5e: $e4
	ccf                                              ; $4f5f: $3f
	nop                                              ; $4f60: $00
	rst  $38                                         ; $4f61: $ff
	nop                                              ; $4f62: $00
	rst  $38                                         ; $4f63: $ff
	nop                                              ; $4f64: $00
	rst  $38                                         ; $4f65: $ff
	nop                                              ; $4f66: $00
	rst  $38                                         ; $4f67: $ff
	inc  h                                           ; $4f68: $24
	rst  $38                                         ; $4f69: $ff
	nop                                              ; $4f6a: $00
	rst  $38                                         ; $4f6b: $ff
	nop                                              ; $4f6c: $00
	rst  $38                                         ; $4f6d: $ff
	cp   d                                           ; $4f6e: $ba
	rst  $38                                         ; $4f6f: $ff
	xor  d                                           ; $4f70: $aa
	rst  $38                                         ; $4f71: $ff
	xor  d                                           ; $4f72: $aa
	rst  $38                                         ; $4f73: $ff
	jr   z, @+$01                                    ; $4f74: $28 $ff

	inc  c                                           ; $4f76: $0c
	di                                               ; $4f77: $f3
	sub  d                                           ; $4f78: $92
	db   $fc                                         ; $4f79: $fc
	inc  bc                                          ; $4f7a: $03
	rst  $38                                         ; $4f7b: $ff
	nop                                              ; $4f7c: $00
	rst  $38                                         ; $4f7d: $ff
	ld   e, e                                        ; $4f7e: $5b
	db   $fc                                         ; $4f7f: $fc
	ld   a, b                                        ; $4f80: $78
	dec  h                                           ; $4f81: $25
	adc  l                                           ; $4f82: $8d
	reti                                             ; $4f83: $d9


	ld   [hl], c                                     ; $4f84: $71
	add  sp, -$56                                    ; $4f85: $e8 $aa
	ld   h, a                                        ; $4f87: $67
	add  b                                           ; $4f88: $80
	rrca                                             ; $4f89: $0f
	dec  c                                           ; $4f8a: $0d
	rst  $20                                         ; $4f8b: $e7
	ld   a, [$fb11]                                  ; $4f8c: $fa $11 $fb
	pop  hl                                          ; $4f8f: $e1
	ld   [hl], a                                     ; $4f90: $77
	ld   h, b                                        ; $4f91: $60
	and  h                                           ; $4f92: $a4
	or   e                                           ; $4f93: $b3
	sbc  e                                           ; $4f94: $9b
	adc  e                                           ; $4f95: $8b
	rla                                              ; $4f96: $17
	ld   d, d                                        ; $4f97: $52
	and  $80                                         ; $4f98: $e6 $80
	ldh  a, [rSCY]                                   ; $4f9a: $f0 $42
	rst  $20                                         ; $4f9c: $e7
	ld   e, a                                        ; $4f9d: $5f
	adc  b                                           ; $4f9e: $88
	rst  JumpTable                                         ; $4f9f: $df
	ld   [hl+], a                                    ; $4fa0: $22
	rst  $38                                         ; $4fa1: $ff
	nop                                              ; $4fa2: $00
	rst  $38                                         ; $4fa3: $ff
	nop                                              ; $4fa4: $00
	rst  $38                                         ; $4fa5: $ff
	nop                                              ; $4fa6: $00
	rst  $38                                         ; $4fa7: $ff
	ld   h, b                                        ; $4fa8: $60
	sbc  a                                           ; $4fa9: $9f
	sub  d                                           ; $4faa: $92
	ld   a, a                                        ; $4fab: $7f
	add  b                                           ; $4fac: $80
	rst  $38                                         ; $4fad: $ff
	nop                                              ; $4fae: $00
	rst  $38                                         ; $4faf: $ff
	ld   c, c                                        ; $4fb0: $49
	rst  $38                                         ; $4fb1: $ff
	nop                                              ; $4fb2: $00
	rst  $38                                         ; $4fb3: $ff
	nop                                              ; $4fb4: $00
	rst  $38                                         ; $4fb5: $ff
	nop                                              ; $4fb6: $00
	rst  $38                                         ; $4fb7: $ff
	nop                                              ; $4fb8: $00
	rst  $38                                         ; $4fb9: $ff
	ld   c, c                                        ; $4fba: $49
	rst  $38                                         ; $4fbb: $ff
	nop                                              ; $4fbc: $00
	rst  $38                                         ; $4fbd: $ff
	nop                                              ; $4fbe: $00
	rst  $38                                         ; $4fbf: $ff
	ld   e, a                                        ; $4fc0: $5f
	and  b                                           ; $4fc1: $a0
	ld   a, [de]                                     ; $4fc2: $1a
	jp   c, $a444                                    ; $4fc3: $da $44 $a4

	dec  sp                                          ; $4fc6: $3b
	db   $db                                         ; $4fc7: $db
	ld   b, h                                        ; $4fc8: $44
	and  h                                           ; $4fc9: $a4
	jr   nz, @+$01                                   ; $4fca: $20 $ff

	nop                                              ; $4fcc: $00
	rst  $38                                         ; $4fcd: $ff
	nop                                              ; $4fce: $00
	rst  $38                                         ; $4fcf: $ff
	reti                                             ; $4fd0: $d9


	rst  $28                                         ; $4fd1: $ef
	reti                                             ; $4fd2: $d9


	ld   d, h                                        ; $4fd3: $54
	ld   c, h                                        ; $4fd4: $4c
	ld   a, [hl-]                                    ; $4fd5: $3a
	ld   [hl], $1d                                   ; $4fd6: $36 $1d
	sub  c                                           ; $4fd8: $91
	adc  b                                           ; $4fd9: $88
	ld   [bc], a                                     ; $4fda: $02
	or   $16                                         ; $4fdb: $f6 $16
	or   $16                                         ; $4fdd: $f6 $16
	add  b                                           ; $4fdf: $80
	or   $00                                         ; $4fe0: $f6 $00
	ld   [bc], a                                     ; $4fe2: $02
	add  b                                           ; $4fe3: $80
	nop                                              ; $4fe4: $00
	ld   [bc], a                                     ; $4fe5: $02
	pop  bc                                          ; $4fe6: $c1
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4fe7: $cf
	ld   c, [hl]                                     ; $4fe8: $4e
	add  c                                           ; $4fe9: $81
	ld   b, b                                        ; $4fea: $40
	add  b                                           ; $4feb: $80
	nop                                              ; $4fec: $00
	inc  b                                           ; $4fed: $04
	ld   e, a                                        ; $4fee: $5f
	rst  $38                                         ; $4fef: $ff
	and  b                                           ; $4ff0: $a0
	nop                                              ; $4ff1: $00
	ldh  a, [$85]                                    ; $4ff2: $f0 $85
	ld   c, $02                                      ; $4ff4: $0e $02
	ld   a, [bc]                                     ; $4ff6: $0a
	ld   c, $0a                                      ; $4ff7: $0e $0a
	add  c                                           ; $4ff9: $81
	ld   c, $02                                      ; $4ffa: $0e $02
	ld   a, [bc]                                     ; $4ffc: $0a
	ld   c, $ba                                      ; $4ffd: $0e $ba
	adc  l                                           ; $4fff: $8d
	rst  $38                                         ; $5000: $ff
	inc  b                                           ; $5001: $04
	cp   e                                           ; $5002: $bb
	db   $fc                                         ; $5003: $fc
	db   $f4                                         ; $5004: $f4
	db   $fc                                         ; $5005: $fc
	db   $f4                                         ; $5006: $f4
	adc  c                                           ; $5007: $89
	db   $fc                                         ; $5008: $fc
	ld   [hl+], a                                    ; $5009: $22
	cp   b                                           ; $500a: $b8
	rst  $38                                         ; $500b: $ff

jr_073_500c:
	ldh  [rIE], a                                    ; $500c: $e0 $ff
	pop  af                                          ; $500e: $f1
	rst  $38                                         ; $500f: $ff
	pop  af                                          ; $5010: $f1
	rst  $38                                         ; $5011: $ff
	db   $e4                                         ; $5012: $e4
	rst  $38                                         ; $5013: $ff
	db   $ed                                         ; $5014: $ed
	rst  $38                                         ; $5015: $ff
	add  sp, -$01                                    ; $5016: $e8 $ff
	db   $fc                                         ; $5018: $fc
	rst  $38                                         ; $5019: $ff
	cp   l                                           ; $501a: $bd
	inc  e                                           ; $501b: $1c
	call c, $23e3                                    ; $501c: $dc $e3 $23
	db   $fc                                         ; $501f: $fc
	inc  bc                                          ; $5020: $03
	rst  $38                                         ; $5021: $ff
	ld   b, h                                        ; $5022: $44
	rst  $38                                         ; $5023: $ff
	ld   b, h                                        ; $5024: $44
	rst  $38                                         ; $5025: $ff
	ld   de, $03ff                                   ; $5026: $11 $ff $03
	rst  $38                                         ; $5029: $ff
	call $20ff                                       ; $502a: $cd $ff $20
	add  b                                           ; $502d: $80
	nop                                              ; $502e: $00
	add  b                                           ; $502f: $80
	ld   h, d                                        ; $5030: $62
	add  b                                           ; $5031: $80
	dec  b                                           ; $5032: $05
	add  l                                           ; $5033: $85
	ld   c, a                                        ; $5034: $4f
	ld   bc, $ffb0                                   ; $5035: $01 $b0 $ff
	add  c                                           ; $5038: $81
	nop                                              ; $5039: $00
	add  b                                           ; $503a: $80
	adc  b                                           ; $503b: $88
	add  b                                           ; $503c: $80
	ld   d, h                                        ; $503d: $54
	add  l                                           ; $503e: $85
	call c, $2301                                    ; $503f: $dc $01 $23
	rst  $38                                         ; $5042: $ff
	add  c                                           ; $5043: $81
	nop                                              ; $5044: $00
	add  b                                           ; $5045: $80
	add  b                                           ; $5046: $80
	add  b                                           ; $5047: $80
	ld   d, l                                        ; $5048: $55
	add  b                                           ; $5049: $80
	ld   l, e                                        ; $504a: $6b
	add  b                                           ; $504b: $80
	ld   a, $80                                      ; $504c: $3e $80
	sbc  h                                           ; $504e: $9c
	ld   [bc], a                                     ; $504f: $02
	ld   b, b                                        ; $5050: $40
	cp   a                                           ; $5051: $bf
	rst  $38                                         ; $5052: $ff
	add  c                                           ; $5053: $81
	nop                                              ; $5054: $00
	add  b                                           ; $5055: $80
	add  b                                           ; $5056: $80
	add  b                                           ; $5057: $80
	add  h                                           ; $5058: $84
	add  b                                           ; $5059: $80
	ld   [bc], a                                     ; $505a: $02
	add  b                                           ; $505b: $80
	ld   d, c                                        ; $505c: $51
	add  b                                           ; $505d: $80
	ret  nc                                          ; $505e: $d0

	inc  bc                                          ; $505f: $03
	sub  h                                           ; $5060: $94
	ld   h, e                                        ; $5061: $63
	rst  $38                                         ; $5062: $ff
	ld   [$0080], sp                                 ; $5063: $08 $80 $00
	add  b                                           ; $5066: $80
	ld   h, b                                        ; $5067: $60
	add  b                                           ; $5068: $80
	dec  [hl]                                        ; $5069: $35
	add  b                                           ; $506a: $80
	rra                                              ; $506b: $1f
	add  b                                           ; $506c: $80
	add  a                                           ; $506d: $87
	add  b                                           ; $506e: $80
	ldh  [$03], a                                    ; $506f: $e0 $03
	ld   a, b                                        ; $5071: $78
	sub  a                                           ; $5072: $97
	rst  $38                                         ; $5073: $ff
	db   $10                                         ; $5074: $10
	add  b                                           ; $5075: $80
	nop                                              ; $5076: $00
	add  b                                           ; $5077: $80
	inc  bc                                          ; $5078: $03
	add  b                                           ; $5079: $80
	ld   d, [hl]                                     ; $507a: $56
	add  b                                           ; $507b: $80
	db   $fc                                         ; $507c: $fc
	add  b                                           ; $507d: $80
	ldh  a, [$80]                                    ; $507e: $f0 $80
	inc  bc                                          ; $5080: $03
	ld   [bc], a                                     ; $5081: $02
	ld   c, $f1                                      ; $5082: $0e $f1
	rst  $38                                         ; $5084: $ff
	add  c                                           ; $5085: $81
	nop                                              ; $5086: $00

jr_073_5087:
	add  b                                           ; $5087: $80
	db   $10                                         ; $5088: $10
	add  b                                           ; $5089: $80
	jr   nz, jr_073_500c                             ; $508a: $20 $80

	ld   b, d                                        ; $508c: $42
	add  b                                           ; $508d: $80
	add  d                                           ; $508e: $82
	add  b                                           ; $508f: $80
	sub  c                                           ; $5090: $91
	ld   [bc], a                                     ; $5091: $02
	dec  h                                           ; $5092: $25
	jp   c, $81ff                                    ; $5093: $da $ff $81

	nop                                              ; $5096: $00
	add  b                                           ; $5097: $80
	add  b                                           ; $5098: $80
	add  b                                           ; $5099: $80
	push de                                          ; $509a: $d5
	add  b                                           ; $509b: $80
	ld   [$7f82], a                                  ; $509c: $ea $82 $7f
	ld   [bc], a                                     ; $509f: $02
	cp   [hl]                                        ; $50a0: $be
	ld   b, c                                        ; $50a1: $41
	rst  $38                                         ; $50a2: $ff
	add  c                                           ; $50a3: $81
	nop                                              ; $50a4: $00
	add  b                                           ; $50a5: $80
	ld   b, l                                        ; $50a6: $45
	add  b                                           ; $50a7: $80
	ld   c, b                                        ; $50a8: $48
	add  b                                           ; $50a9: $80
	call $8d80                                       ; $50aa: $cd $80 $8d
	add  b                                           ; $50ad: $80
	dec  c                                           ; $50ae: $0d
	ld   [bc], a                                     ; $50af: $02
	ld   c, l                                        ; $50b0: $4d
	or   e                                           ; $50b1: $b3
	cp   $81                                         ; $50b2: $fe $81
	nop                                              ; $50b4: $00
	inc  bc                                          ; $50b5: $03
	ld   b, [hl]                                     ; $50b6: $46
	ld   b, b                                        ; $50b7: $40
	and  [hl]                                        ; $50b8: $a6
	and  b                                           ; $50b9: $a0
	add  b                                           ; $50ba: $80
	ldh  [c], a                                      ; $50bb: $e2
	add  h                                           ; $50bc: $84
	ldh  a, [c]                                      ; $50bd: $f2
	add  c                                           ; $50be: $81
	nop                                              ; $50bf: $00
	ld   [bc], a                                     ; $50c0: $02
	ld   a, [hl]                                     ; $50c1: $7e
	cp   $82                                         ; $50c2: $fe $82
	add  c                                           ; $50c4: $81
	ld   [bc], a                                     ; $50c5: $02
	add  b                                           ; $50c6: $80
	nop                                              ; $50c7: $00
	ld   [$cfc0], sp                                 ; $50c8: $08 $c0 $cf
	ld   c, a                                        ; $50cb: $4f
	ld   b, b                                        ; $50cc: $40
	ldh  a, [c]                                      ; $50cd: $f2
	ld   c, $08                                      ; $50ce: $0e $08
	ld   c, $02                                      ; $50d0: $0e $02
	add  e                                           ; $50d2: $83
	ld   c, $00                                      ; $50d3: $0e $00
	ld   b, $81                                      ; $50d5: $06 $81
	ld   c, $02                                      ; $50d7: $0e $02
	ld   a, [bc]                                     ; $50d9: $0a
	ld   c, $fa                                      ; $50da: $0e $fa
	add  c                                           ; $50dc: $81
	nop                                              ; $50dd: $00
	ld   [bc], a                                     ; $50de: $02
	ldh  [$e3], a                                    ; $50df: $e0 $e3
	inc  hl                                          ; $50e1: $23
	add  c                                           ; $50e2: $81
	jr   nz, jr_073_50e5                             ; $50e3: $20 $00

jr_073_50e5:
	nop                                              ; $50e5: $00
	add  e                                           ; $50e6: $83
	stop                                             ; $50e7: $10 $00
	inc  d                                           ; $50e9: $14
	adc  l                                           ; $50ea: $8d
	db   $fc                                         ; $50eb: $fc
	nop                                              ; $50ec: $00
	cp   b                                           ; $50ed: $b8
	adc  a                                           ; $50ee: $8f
	rst  $38                                         ; $50ef: $ff
	ld   b, $a9                                      ; $50f0: $06 $a9
	rst  $38                                         ; $50f2: $ff
	jp   hl                                          ; $50f3: $e9


	rst  $38                                         ; $50f4: $ff
	cp   $ff                                         ; $50f5: $fe $ff
	cp   $86                                         ; $50f7: $fe $86
	rst  $38                                         ; $50f9: $ff
	adc  [hl]                                        ; $50fa: $8e
	ld   c, a                                        ; $50fb: $4f
	add  [hl]                                        ; $50fc: $86
	sbc  h                                           ; $50fd: $9c
	add  b                                           ; $50fe: $80
	sbc  l                                           ; $50ff: $9d
	add  b                                           ; $5100: $80
	sbc  c                                           ; $5101: $99
	add  b                                           ; $5102: $80
	cp   c                                           ; $5103: $b9
	add  b                                           ; $5104: $80
	jr   c, jr_073_5087                              ; $5105: $38 $80

	ld   hl, $bf80                                   ; $5107: $21 $80 $bf
	add  b                                           ; $510a: $80
	sbc  [hl]                                        ; $510b: $9e
	add  b                                           ; $510c: $80
	ret  nz                                          ; $510d: $c0

	add  b                                           ; $510e: $80
	ld   h, c                                        ; $510f: $61
	add  b                                           ; $5110: $80
	ld   a, a                                        ; $5111: $7f
	add  b                                           ; $5112: $80
	ccf                                              ; $5113: $3f
	add  b                                           ; $5114: $80
	ld   e, [hl]                                     ; $5115: $5e
	add  b                                           ; $5116: $80
	ld   [hl-], a                                    ; $5117: $32
	add  b                                           ; $5118: $80
	ld   hl, $6480                                   ; $5119: $21 $80 $64
	add  b                                           ; $511c: $80
	ld   d, l                                        ; $511d: $55
	add  b                                           ; $511e: $80
	pop  de                                          ; $511f: $d1
	add  b                                           ; $5120: $80
	sub  c                                           ; $5121: $91
	add  b                                           ; $5122: $80
	ld   d, b                                        ; $5123: $50
	add  b                                           ; $5124: $80
	ld   b, b                                        ; $5125: $40
	add  b                                           ; $5126: $80
	ccf                                              ; $5127: $3f
	add  b                                           ; $5128: $80
	adc  a                                           ; $5129: $8f
	add  b                                           ; $512a: $80
	ldh  a, [$80]                                    ; $512b: $f0 $80
	ld   a, a                                        ; $512d: $7f
	add  b                                           ; $512e: $80
	ccf                                              ; $512f: $3f
	add  b                                           ; $5130: $80
	ld   c, a                                        ; $5131: $4f
	add  b                                           ; $5132: $80
	ld   d, b                                        ; $5133: $50
	add  b                                           ; $5134: $80
	ld   d, l                                        ; $5135: $55
	add  b                                           ; $5136: $80
	db   $fc                                         ; $5137: $fc
	add  b                                           ; $5138: $80
	di                                               ; $5139: $f3
	add  b                                           ; $513a: $80
	rrca                                             ; $513b: $0f
	add  b                                           ; $513c: $80
	rst  $38                                         ; $513d: $ff
	add  b                                           ; $513e: $80
	db   $fc                                         ; $513f: $fc
	add  b                                           ; $5140: $80
	pop  af                                          ; $5141: $f1
	add  b                                           ; $5142: $80
	dec  b                                           ; $5143: $05
	add  b                                           ; $5144: $80
	ld   d, h                                        ; $5145: $54
	add  b                                           ; $5146: $80
	db   $e4                                         ; $5147: $e4
	add  b                                           ; $5148: $80
	sub  $80                                         ; $5149: $d6 $80
	sub  e                                           ; $514b: $93
	add  b                                           ; $514c: $80
	ld   d, c                                        ; $514d: $51
	add  b                                           ; $514e: $80
	ld   d, l                                        ; $514f: $55
	add  b                                           ; $5150: $80
	ld   d, h                                        ; $5151: $54
	add  b                                           ; $5152: $80
	db   $10                                         ; $5153: $10
	add  b                                           ; $5154: $80
	ld   bc, $c080                                   ; $5155: $01 $80 $c0
	add  b                                           ; $5158: $80
	ld   h, c                                        ; $5159: $61
	add  b                                           ; $515a: $80
	ccf                                              ; $515b: $3f
	add  b                                           ; $515c: $80
	ld   e, $80                                      ; $515d: $1e $80
	add  b                                           ; $515f: $80
	add  b                                           ; $5160: $80
	ldh  [$80], a                                    ; $5161: $e0 $80
	ld   a, a                                        ; $5163: $7f
	add  b                                           ; $5164: $80
	ccf                                              ; $5165: $3f
	add  b                                           ; $5166: $80
	adc  h                                           ; $5167: $8c
	add  b                                           ; $5168: $80
	xor  h                                           ; $5169: $ac
	add  b                                           ; $516a: $80
	inc  h                                           ; $516b: $24
	add  b                                           ; $516c: $80
	ld   h, h                                        ; $516d: $64
	add  b                                           ; $516e: $80
	ld   b, [hl]                                     ; $516f: $46
	add  b                                           ; $5170: $80
	sub  $80                                         ; $5171: $d6 $80
	sub  [hl]                                        ; $5173: $96
	add  b                                           ; $5174: $80
	ld   d, $88                                      ; $5175: $16 $88
	ldh  a, [c]                                      ; $5177: $f2
	add  e                                           ; $5178: $83
	ld   [hl], d                                     ; $5179: $72
	ld   bc, $2052                                   ; $517a: $01 $52 $20
	add  b                                           ; $517d: $80
	nop                                              ; $517e: $00
	ld   [bc], a                                     ; $517f: $02
	dec  bc                                          ; $5180: $0b
	ld   a, a                                        ; $5181: $7f
	ld   [hl], h                                     ; $5182: $74
	add  e                                           ; $5183: $83
	nop                                              ; $5184: $00
	inc  b                                           ; $5185: $04
	cp   a                                           ; $5186: $bf
	rst  $38                                         ; $5187: $ff
	ld   b, c                                        ; $5188: $41
	ld   bc, $81f0                                   ; $5189: $01 $f0 $81
	ld   c, $06                                      ; $518c: $0e $06
	ld   a, [bc]                                     ; $518e: $0a
	ld   c, $0a                                      ; $518f: $0e $0a
	ld   c, $06                                      ; $5191: $0e $06
	ld   c, $06                                      ; $5193: $0e $06
	add  e                                           ; $5195: $83
	ld   c, $01                                      ; $5196: $0e $01
	sbc  $20                                         ; $5198: $de $20
	add  b                                           ; $519a: $80
	nop                                              ; $519b: $00
	ld   [bc], a                                     ; $519c: $02
	rla                                              ; $519d: $17
	rst  $38                                         ; $519e: $ff

jr_073_519f:
	add  sp, -$75                                    ; $519f: $e8 $8b
	nop                                              ; $51a1: $00
	ld   [bc], a                                     ; $51a2: $02

jr_073_51a3:
	ldh  a, [$f1]                                    ; $51a3: $f0 $f1
	ld   de, $1081                                   ; $51a5: $11 $81 $10

jr_073_51a8:
	nop                                              ; $51a8: $00
	nop                                              ; $51a9: $00
	add  e                                           ; $51aa: $83
	ld   [$4801], sp                                 ; $51ab: $08 $01 $48
	ld   b, b                                        ; $51ae: $40
	add  b                                           ; $51af: $80
	nop                                              ; $51b0: $00
	ld   [bc], a                                     ; $51b1: $02
	dec  bc                                          ; $51b2: $0b
	rst  $38                                         ; $51b3: $ff
	db   $f4                                         ; $51b4: $f4
	adc  b                                           ; $51b5: $88
	nop                                              ; $51b6: $00
	adc  [hl]                                        ; $51b7: $8e
	rst  $38                                         ; $51b8: $ff
	add  d                                           ; $51b9: $82
	ld   c, a                                        ; $51ba: $4f
	add  d                                           ; $51bb: $82
	ld   c, [hl]                                     ; $51bc: $4e
	add  d                                           ; $51bd: $82
	ld   c, h                                        ; $51be: $4c
	add  b                                           ; $51bf: $80
	ld   c, b                                        ; $51c0: $48
	add  b                                           ; $51c1: $80
	ld   c, c                                        ; $51c2: $49
	add  d                                           ; $51c3: $82
	ld   [hl-], a                                    ; $51c4: $32
	add  b                                           ; $51c5: $80
	ld   [hl], h                                     ; $51c6: $74
	add  b                                           ; $51c7: $80
	ld   h, h                                        ; $51c8: $64
	add  b                                           ; $51c9: $80
	ld   h, b                                        ; $51ca: $60
	add  b                                           ; $51cb: $80
	ret  nc                                          ; $51cc: $d0

	inc  bc                                          ; $51cd: $03
	sub  b                                           ; $51ce: $90
	sub  d                                           ; $51cf: $92
	jp   nz, $80c0                                   ; $51d0: $c2 $c0 $80

	ld   b, c                                        ; $51d3: $41
	add  b                                           ; $51d4: $80
	dec  d                                           ; $51d5: $15
	add  b                                           ; $51d6: $80
	inc  d                                           ; $51d7: $14
	nop                                              ; $51d8: $00
	nop                                              ; $51d9: $00
	add  b                                           ; $51da: $80
	ld   b, b                                        ; $51db: $40
	add  b                                           ; $51dc: $80
	ld   d, h                                        ; $51dd: $54
	add  b                                           ; $51de: $80
	ld   [hl], h                                     ; $51df: $74
	add  b                                           ; $51e0: $80
	halt                                             ; $51e1: $76
	add  b                                           ; $51e2: $80
	nop                                              ; $51e3: $00
	add  b                                           ; $51e4: $80
	inc  b                                           ; $51e5: $04
	add  b                                           ; $51e6: $80
	rlca                                             ; $51e7: $07
	add  b                                           ; $51e8: $80
	ld   b, $80                                      ; $51e9: $06 $80
	add  a                                           ; $51eb: $87
	add  b                                           ; $51ec: $80
	add  $80                                         ; $51ed: $c6 $80
	add  a                                           ; $51ef: $87
	add  b                                           ; $51f0: $80
	add  $00                                         ; $51f1: $c6 $00
	nop                                              ; $51f3: $00
	add  b                                           ; $51f4: $80
	dec  b                                           ; $51f5: $05
	nop                                              ; $51f6: $00
	nop                                              ; $51f7: $00
	add  b                                           ; $51f8: $80
	jr   nz, @-$7e                                   ; $51f9: $20 $80

	inc  h                                           ; $51fb: $24
	add  b                                           ; $51fc: $80
	ld   h, $80                                      ; $51fd: $26 $80
	inc  [hl]                                        ; $51ff: $34
	add  b                                           ; $5200: $80
	ld   [hl], $80                                   ; $5201: $36 $80
	dec  [hl]                                        ; $5203: $35
	nop                                              ; $5204: $00
	nop                                              ; $5205: $00
	add  b                                           ; $5206: $80
	ld   d, b                                        ; $5207: $50
	add  c                                           ; $5208: $81
	nop                                              ; $5209: $00
	add  b                                           ; $520a: $80
	ld   c, b                                        ; $520b: $48
	add  b                                           ; $520c: $80
	ld   c, d                                        ; $520d: $4a
	add  b                                           ; $520e: $80
	ld   c, h                                        ; $520f: $4c
	add  b                                           ; $5210: $80
	ld   c, d                                        ; $5211: $4a
	add  b                                           ; $5212: $80
	ld   c, h                                        ; $5213: $4c
	nop                                              ; $5214: $00
	nop                                              ; $5215: $00
	add  b                                           ; $5216: $80
	ld   bc, $0000                                   ; $5217: $01 $00 $00
	add  b                                           ; $521a: $80
	db   $10                                         ; $521b: $10
	add  b                                           ; $521c: $80
	jr   jr_073_519f                                 ; $521d: $18 $80

	inc  d                                           ; $521f: $14
	add  b                                           ; $5220: $80
	jr   jr_073_51a3                                 ; $5221: $18 $80

	inc  d                                           ; $5223: $14
	add  b                                           ; $5224: $80
	jr   jr_073_51a8                                 ; $5225: $18 $81

	nop                                              ; $5227: $00
	add  d                                           ; $5228: $82
	ld   d, l                                        ; $5229: $55
	add  c                                           ; $522a: $81
	nop                                              ; $522b: $00
	add  b                                           ; $522c: $80
	inc  b                                           ; $522d: $04
	add  d                                           ; $522e: $82
	inc  h                                           ; $522f: $24
	nop                                              ; $5230: $00
	nop                                              ; $5231: $00
	add  b                                           ; $5232: $80
	ld   b, a                                        ; $5233: $47
	add  b                                           ; $5234: $80
	ld   c, e                                        ; $5235: $4b
	add  b                                           ; $5236: $80
	dec  bc                                          ; $5237: $0b
	add  b                                           ; $5238: $80
	inc  bc                                          ; $5239: $03
	nop                                              ; $523a: $00
	dec  b                                           ; $523b: $05
	add  b                                           ; $523c: $80
	add  l                                           ; $523d: $85
	inc  b                                           ; $523e: $04
	ld   b, l                                        ; $523f: $45
	ld   b, c                                        ; $5240: $41
	add  c                                           ; $5241: $81
	add  d                                           ; $5242: $82
	ld   [bc], a                                     ; $5243: $02
	add  b                                           ; $5244: $80
	ld   [hl], d                                     ; $5245: $72
	add  h                                           ; $5246: $84
	ld   [hl-], a                                    ; $5247: $32
	add  d                                           ; $5248: $82
	sub  d                                           ; $5249: $92
	add  c                                           ; $524a: $81
	jp   nc, $d600                                   ; $524b: $d2 $00 $d6

	add  b                                           ; $524e: $80
	inc  b                                           ; $524f: $04
	nop                                              ; $5250: $00
	ld   b, $80                                      ; $5251: $06 $80
	ldh  [c], a                                      ; $5253: $e2
	ld   bc, $2022                                   ; $5254: $01 $22 $20
	add  b                                           ; $5257: $80
	ld   hl, $1008                                   ; $5258: $21 $08 $10
	add  hl, de                                      ; $525b: $19
	jr   @+$1d                                       ; $525c: $18 $1b

	ld   a, [bc]                                     ; $525e: $0a
	inc  de                                          ; $525f: $13
	db   $eb                                         ; $5260: $eb
	ld   c, $06                                      ; $5261: $0e $06
	add  a                                           ; $5263: $87
	ld   c, $04                                      ; $5264: $0e $04
	inc  b                                           ; $5266: $04
	ld   c, $00                                      ; $5267: $0e $00
	ld   c, $ba                                      ; $5269: $0e $ba
	adc  e                                           ; $526b: $8b
	rst  $38                                         ; $526c: $ff
	ld   [bc], a                                     ; $526d: $02
	ld   hl, sp-$09                                  ; $526e: $f8 $f7
	or   h                                           ; $5270: $b4
	adc  e                                           ; $5271: $8b
	db   $fc                                         ; $5272: $fc
	inc  bc                                          ; $5273: $03
	ld   a, h                                        ; $5274: $7c
	db   $fc                                         ; $5275: $fc
	ld   a, c                                        ; $5276: $79
	ld   bc, $0080                                   ; $5277: $01 $80 $00

jr_073_527a:
	add  b                                           ; $527a: $80
	ld   hl, sp-$7e                                  ; $527b: $f8 $82
	ld   [$0480], sp                                 ; $527d: $08 $80 $04
	add  b                                           ; $5280: $80
	dec  b                                           ; $5281: $05

jr_073_5282:
	ld   a, [bc]                                     ; $5282: $0a
	inc  b                                           ; $5283: $04
	dec  b                                           ; $5284: $05
	ld   bc, $8707                                   ; $5285: $01 $07 $87
	and  a                                           ; $5288: $a7
	rst  $20                                         ; $5289: $e7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $528a: $cf
	adc  a                                           ; $528b: $8f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $528c: $cf
	ld   c, a                                        ; $528d: $4f
	add  d                                           ; $528e: $82
	rra                                              ; $528f: $1f
	add  c                                           ; $5290: $81
	ccf                                              ; $5291: $3f
	nop                                              ; $5292: $00
	ld   a, a                                        ; $5293: $7f
	add  b                                           ; $5294: $80
	ld   bc, $0009                                   ; $5295: $01 $09 $00
	ld   bc, $0400                                   ; $5298: $01 $00 $04
	db   $10                                         ; $529b: $10
	ld   de, $1410                                   ; $529c: $11 $10 $14
	nop                                              ; $529f: $00
	ld   bc, $0980                                   ; $52a0: $01 $80 $09
	inc  b                                           ; $52a3: $04
	dec  c                                           ; $52a4: $0d
	ld   c, $02                                      ; $52a5: $0e $02
	ld   b, d                                        ; $52a7: $42
	ld   [bc], a                                     ; $52a8: $02
	add  b                                           ; $52a9: $80
	ld   a, [de]                                     ; $52aa: $1a
	add  b                                           ; $52ab: $80
	dec  de                                          ; $52ac: $1b
	add  b                                           ; $52ad: $80
	ld   a, [hl-]                                    ; $52ae: $3a

jr_073_52af:
	add  b                                           ; $52af: $80
	ld   a, e                                        ; $52b0: $7b
	add  b                                           ; $52b1: $80
	ld   a, d                                        ; $52b2: $7a
	add  b                                           ; $52b3: $80
	ld   a, a                                        ; $52b4: $7f
	add  b                                           ; $52b5: $80
	ld   [hl], h                                     ; $52b6: $74
	add  b                                           ; $52b7: $80
	halt                                             ; $52b8: $76
	add  b                                           ; $52b9: $80
	ld   [hl], h                                     ; $52ba: $74
	add  b                                           ; $52bb: $80
	halt                                             ; $52bc: $76
	add  b                                           ; $52bd: $80
	or   $80                                         ; $52be: $f6 $80
	halt                                             ; $52c0: $76
	add  b                                           ; $52c1: $80
	cp   $80                                         ; $52c2: $fe $80
	ld   a, [hl]                                     ; $52c4: $7e
	add  b                                           ; $52c5: $80
	and  a                                           ; $52c6: $a7
	add  b                                           ; $52c7: $80
	rst  ToBoot                                         ; $52c8: $c7
	add  b                                           ; $52c9: $80
	and  a                                           ; $52ca: $a7
	add  b                                           ; $52cb: $80
	rst  ToBoot                                         ; $52cc: $c7
	add  b                                           ; $52cd: $80
	and  a                                           ; $52ce: $a7
	add  b                                           ; $52cf: $80
	rst  ToBoot                                         ; $52d0: $c7
	add  b                                           ; $52d1: $80
	and  a                                           ; $52d2: $a7
	add  b                                           ; $52d3: $80
	rst  ToBoot                                         ; $52d4: $c7
	add  b                                           ; $52d5: $80
	ld   [hl], $80                                   ; $52d6: $36 $80
	dec  [hl]                                        ; $52d8: $35
	add  b                                           ; $52d9: $80
	ld   [hl], $80                                   ; $52da: $36 $80
	dec  [hl]                                        ; $52dc: $35
	add  b                                           ; $52dd: $80
	ld   [hl], $80                                   ; $52de: $36 $80
	dec  [hl]                                        ; $52e0: $35
	add  b                                           ; $52e1: $80
	ld   a, $80                                      ; $52e2: $3e $80
	dec  a                                           ; $52e4: $3d
	add  b                                           ; $52e5: $80
	ld   c, [hl]                                     ; $52e6: $4e
	add  b                                           ; $52e7: $80
	ld   c, h                                        ; $52e8: $4c
	add  b                                           ; $52e9: $80
	ld   c, [hl]                                     ; $52ea: $4e
	add  b                                           ; $52eb: $80
	ld   c, h                                        ; $52ec: $4c
	add  b                                           ; $52ed: $80
	ld   c, [hl]                                     ; $52ee: $4e
	add  b                                           ; $52ef: $80
	ld   c, h                                        ; $52f0: $4c
	add  b                                           ; $52f1: $80
	ld   c, [hl]                                     ; $52f2: $4e
	add  b                                           ; $52f3: $80
	ld   c, h                                        ; $52f4: $4c
	add  b                                           ; $52f5: $80
	inc  d                                           ; $52f6: $14
	add  b                                           ; $52f7: $80
	jr   jr_073_527a                                 ; $52f8: $18 $80

	inc  d                                           ; $52fa: $14
	add  b                                           ; $52fb: $80
	jr   @-$7e                                       ; $52fc: $18 $80

	inc  d                                           ; $52fe: $14
	add  b                                           ; $52ff: $80
	jr   jr_073_5282                                 ; $5300: $18 $80

	inc  d                                           ; $5302: $14
	add  b                                           ; $5303: $80
	jr   @-$7e                                       ; $5304: $18 $80

	ld   [hl], h                                     ; $5306: $74
	add  b                                           ; $5307: $80
	ld   h, $80                                      ; $5308: $26 $80
	halt                                             ; $530a: $76
	add  b                                           ; $530b: $80
	ld   h, $80                                      ; $530c: $26 $80
	halt                                             ; $530e: $76
	add  b                                           ; $530f: $80
	ld   h, $80                                      ; $5310: $26 $80
	halt                                             ; $5312: $76
	add  b                                           ; $5313: $80
	ld   h, $03                                      ; $5314: $26 $03
	ld   b, d                                        ; $5316: $42
	ld   b, b                                        ; $5317: $40
	add  d                                           ; $5318: $82
	add  b                                           ; $5319: $80
	add  b                                           ; $531a: $80
	ld   b, b                                        ; $531b: $40
	add  b                                           ; $531c: $80
	add  h                                           ; $531d: $84
	add  b                                           ; $531e: $80
	ld   b, h                                        ; $531f: $44
	add  b                                           ; $5320: $80
	add  h                                           ; $5321: $84
	add  b                                           ; $5322: $80
	ld   b, h                                        ; $5323: $44
	add  b                                           ; $5324: $80
	add  h                                           ; $5325: $84
	nop                                              ; $5326: $00
	ld   [bc], a                                     ; $5327: $02
	add  b                                           ; $5328: $80
	ld   d, b                                        ; $5329: $50
	add  d                                           ; $532a: $82
	add  b                                           ; $532b: $80
	add  d                                           ; $532c: $82
	jr   z, jr_073_52af                              ; $532d: $28 $80

	nop                                              ; $532f: $00
	add  b                                           ; $5330: $80
	db   $10                                         ; $5331: $10
	rla                                              ; $5332: $17
	jr   nc, jr_073_539c                             ; $5333: $30 $67

	ld   a, a                                        ; $5335: $7f
	nop                                              ; $5336: $00
	ld   a, a                                        ; $5337: $7f
	nop                                              ; $5338: $00
	rst  $38                                         ; $5339: $ff
	nop                                              ; $533a: $00
	rst  $38                                         ; $533b: $ff
	ld   b, h                                        ; $533c: $44
	rst  $38                                         ; $533d: $ff
	xor  d                                           ; $533e: $aa
	rst  $38                                         ; $533f: $ff
	xor  d                                           ; $5340: $aa
	rst  $38                                         ; $5341: $ff
	xor  $ff                                         ; $5342: $ee $ff
	dec  c                                           ; $5344: $0d
	ld   c, $08                                      ; $5345: $0e $08
	ld   c, $02                                      ; $5347: $0e $02
	ld   c, $06                                      ; $5349: $0e $06
	add  b                                           ; $534b: $80
	rrca                                             ; $534c: $0f
	ld   bc, $0c00                                   ; $534d: $01 $00 $0c
	add  c                                           ; $5350: $81
	dec  c                                           ; $5351: $0d
	ld   [bc], a                                     ; $5352: $02
	ld   c, $0f                                      ; $5353: $0e $0f
	or   b                                           ; $5355: $b0
	add  b                                           ; $5356: $80
	rst  $30                                         ; $5357: $f7
	add  b                                           ; $5358: $80
	db   $f4                                         ; $5359: $f4
	add  d                                           ; $535a: $82
	or   $02                                         ; $535b: $f6 $02
	halt                                             ; $535d: $76
	or   $d6                                         ; $535e: $f6 $d6
	add  b                                           ; $5360: $80
	or   $02                                         ; $5361: $f6 $02
	and  $f6                                         ; $5363: $e6 $f6
	add  d                                           ; $5365: $82
	add  l                                           ; $5366: $85
	db   $fc                                         ; $5367: $fc
	inc  bc                                          ; $5368: $03
	ld   hl, sp-$04                                  ; $5369: $f8 $fc
	ld   hl, sp-$34                                  ; $536b: $f8 $cc
	add  b                                           ; $536d: $80
	db   $ec                                         ; $536e: $ec
	ld   [bc], a                                     ; $536f: $02

jr_073_5370:
	or   h                                           ; $5370: $b4
	db   $fc                                         ; $5371: $fc
	ld   b, b                                        ; $5372: $40
	adc  b                                           ; $5373: $88
	rst  $38                                         ; $5374: $ff
	nop                                              ; $5375: $00
	db   $e4                                         ; $5376: $e4
	add  b                                           ; $5377: $80
	or   $00                                         ; $5378: $f6 $00
	and  h                                           ; $537a: $a4
	add  b                                           ; $537b: $80
	nop                                              ; $537c: $00
	add  a                                           ; $537d: $87
	rst  $38                                         ; $537e: $ff
	ld   bc, $93fe                                   ; $537f: $01 $fe $93
	add  b                                           ; $5382: $80
	db   $db                                         ; $5383: $db
	ld   [bc], a                                     ; $5384: $02
	sub  d                                           ; $5385: $92
	nop                                              ; $5386: $00
	ld   b, c                                        ; $5387: $41
	add  b                                           ; $5388: $80
	ld   bc, $0501                                   ; $5389: $01 $01 $05
	inc  b                                           ; $538c: $04
	add  b                                           ; $538d: $80
	ld   b, $82                                      ; $538e: $06 $82
	ld   c, $02                                      ; $5390: $0e $02
	nop                                              ; $5392: $00
	ret  nz                                          ; $5393: $c0

	add  b                                           ; $5394: $80
	add  b                                           ; $5395: $80
	nop                                              ; $5396: $00
	add  b                                           ; $5397: $80
	ld   a, [hl]                                     ; $5398: $7e
	add  b                                           ; $5399: $80
	ld   a, a                                        ; $539a: $7f
	add  b                                           ; $539b: $80

jr_073_539c:
	ld   a, [hl]                                     ; $539c: $7e
	add  b                                           ; $539d: $80

jr_073_539e:
	ld   a, a                                        ; $539e: $7f
	add  b                                           ; $539f: $80
	rst  $38                                         ; $53a0: $ff
	add  b                                           ; $53a1: $80
	nop                                              ; $53a2: $00
	add  b                                           ; $53a3: $80
	ldh  a, [$80]                                    ; $53a4: $f0 $80
	nop                                              ; $53a6: $00
	add  b                                           ; $53a7: $80
	cp   $80                                         ; $53a8: $fe $80
	ld   a, [hl]                                     ; $53aa: $7e
	add  b                                           ; $53ab: $80
	cp   $80                                         ; $53ac: $fe $80
	ld   a, a                                        ; $53ae: $7f
	add  b                                           ; $53af: $80
	rst  $38                                         ; $53b0: $ff
	add  b                                           ; $53b1: $80
	nop                                              ; $53b2: $00
	add  b                                           ; $53b3: $80
	ldh  a, [$80]                                    ; $53b4: $f0 $80
	nop                                              ; $53b6: $00
	add  b                                           ; $53b7: $80
	and  a                                           ; $53b8: $a7
	add  b                                           ; $53b9: $80
	rst  ToBoot                                         ; $53ba: $c7
	add  b                                           ; $53bb: $80
	and  a                                           ; $53bc: $a7
	add  b                                           ; $53bd: $80
	rst  ToBoot                                         ; $53be: $c7
	add  b                                           ; $53bf: $80
	rst  $38                                         ; $53c0: $ff
	add  b                                           ; $53c1: $80
	nop                                              ; $53c2: $00
	add  b                                           ; $53c3: $80
	jr   c, @-$7e                                    ; $53c4: $38 $80

	nop                                              ; $53c6: $00
	add  b                                           ; $53c7: $80
	ld   a, $80                                      ; $53c8: $3e $80
	dec  a                                           ; $53ca: $3d
	add  b                                           ; $53cb: $80
	ld   a, $80                                      ; $53cc: $3e $80
	dec  a                                           ; $53ce: $3d
	add  b                                           ; $53cf: $80
	rst  $38                                         ; $53d0: $ff
	add  b                                           ; $53d1: $80
	nop                                              ; $53d2: $00
	add  b                                           ; $53d3: $80
	ld   [hl], b                                     ; $53d4: $70
	add  b                                           ; $53d5: $80
	dec  de                                          ; $53d6: $1b
	add  b                                           ; $53d7: $80
	ld   c, [hl]                                     ; $53d8: $4e
	add  b                                           ; $53d9: $80
	ld   c, h                                        ; $53da: $4c
	add  b                                           ; $53db: $80
	ld   c, [hl]                                     ; $53dc: $4e
	add  b                                           ; $53dd: $80
	ld   c, h                                        ; $53de: $4c
	add  b                                           ; $53df: $80
	rst  $38                                         ; $53e0: $ff
	add  b                                           ; $53e1: $80
	nop                                              ; $53e2: $00
	add  b                                           ; $53e3: $80
	ld   c, $80                                      ; $53e4: $0e $80
	ret  c                                           ; $53e6: $d8

	add  b                                           ; $53e7: $80
	inc  d                                           ; $53e8: $14
	add  b                                           ; $53e9: $80
	jr   @-$7e                                       ; $53ea: $18 $80

	inc  d                                           ; $53ec: $14
	add  b                                           ; $53ed: $80
	jr   jr_073_5370                                 ; $53ee: $18 $80

	rst  $38                                         ; $53f0: $ff
	add  b                                           ; $53f1: $80
	nop                                              ; $53f2: $00
	add  b                                           ; $53f3: $80
	inc  e                                           ; $53f4: $1c
	add  b                                           ; $53f5: $80
	nop                                              ; $53f6: $00
	add  b                                           ; $53f7: $80
	ld   a, [hl]                                     ; $53f8: $7e
	add  b                                           ; $53f9: $80
	ld   l, $80                                      ; $53fa: $2e $80
	ld   a, [hl]                                     ; $53fc: $7e
	add  b                                           ; $53fd: $80
	ld   l, $80                                      ; $53fe: $2e $80
	rst  $38                                         ; $5400: $ff
	add  b                                           ; $5401: $80
	nop                                              ; $5402: $00
	add  b                                           ; $5403: $80
	rrca                                             ; $5404: $0f
	add  b                                           ; $5405: $80
	nop                                              ; $5406: $00
	add  b                                           ; $5407: $80
	ld   b, h                                        ; $5408: $44
	add  b                                           ; $5409: $80
	add  h                                           ; $540a: $84
	add  b                                           ; $540b: $80
	ld   b, h                                        ; $540c: $44
	add  b                                           ; $540d: $80
	add  h                                           ; $540e: $84
	add  b                                           ; $540f: $80
	rst  $38                                         ; $5410: $ff
	add  b                                           ; $5411: $80
	nop                                              ; $5412: $00
	add  b                                           ; $5413: $80
	rrca                                             ; $5414: $0f
	add  b                                           ; $5415: $80
	nop                                              ; $5416: $00
	nop                                              ; $5417: $00
	ld   [bc], a                                     ; $5418: $02
	add  b                                           ; $5419: $80
	nop                                              ; $541a: $00
	add  b                                           ; $541b: $80
	jr   nz, jr_073_539e                             ; $541c: $20 $80

	ld   h, b                                        ; $541e: $60
	add  d                                           ; $541f: $82
	ld   [hl], b                                     ; $5420: $70
	ld   [bc], a                                     ; $5421: $02
	nop                                              ; $5422: $00
	inc  bc                                          ; $5423: $03
	ld   bc, $0080                                   ; $5424: $01 $80 $00
	db   $10                                         ; $5427: $10
	ld   d, h                                        ; $5428: $54
	cp   $00                                         ; $5429: $fe $00
	cp   $01                                         ; $542b: $fe $01
	rst  $38                                         ; $542d: $ff
	nop                                              ; $542e: $00
	rst  $38                                         ; $542f: $ff
	ld   b, h                                        ; $5430: $44
	rst  $38                                         ; $5431: $ff
	xor  d                                           ; $5432: $aa
	rst  $38                                         ; $5433: $ff
	xor  d                                           ; $5434: $aa
	rst  $38                                         ; $5435: $ff
	xor  $ff                                         ; $5436: $ee $ff
	rrca                                             ; $5438: $0f
	add  b                                           ; $5439: $80
	ld   c, $07                                      ; $543a: $0e $07
	nop                                              ; $543c: $00
	ld   bc, $0607                                   ; $543d: $01 $07 $06
	nop                                              ; $5440: $00
	inc  bc                                          ; $5441: $03
	rrca                                             ; $5442: $0f
	inc  c                                           ; $5443: $0c
	add  c                                           ; $5444: $81
	nop                                              ; $5445: $00
	ld   [bc], a                                     ; $5446: $02
	rlca                                             ; $5447: $07
	rrca                                             ; $5448: $0f
	ld   hl, sp-$80                                  ; $5449: $f8 $80
	jr   c, jr_073_5454                              ; $544b: $38 $07

	nop                                              ; $544d: $00
	add  e                                           ; $544e: $83
	adc  a                                           ; $544f: $8f
	inc  c                                           ; $5450: $0c
	nop                                              ; $5451: $00
	add  b                                           ; $5452: $80
	sbc  a                                           ; $5453: $9f

jr_073_5454:
	rra                                              ; $5454: $1f
	add  c                                           ; $5455: $81
	nop                                              ; $5456: $00
	inc  c                                           ; $5457: $0c
	add  b                                           ; $5458: $80
	adc  a                                           ; $5459: $8f
	cpl                                              ; $545a: $2f
	db   $e3                                         ; $545b: $e3
	jp   Boot                                        ; $545c: $c3 $00 $01


	rra                                              ; $545f: $1f
	ld   e, $00                                      ; $5460: $1e $00
	ldh  [$e3], a                                    ; $5462: $e0 $e3
	inc  bc                                          ; $5464: $03
	add  c                                           ; $5465: $81
	nop                                              ; $5466: $00
	inc  c                                           ; $5467: $0c
	ld   a, h                                        ; $5468: $7c
	db   $fc                                         ; $5469: $fc
	ld   bc, $0e8f                                   ; $546a: $01 $8f $0e
	nop                                              ; $546d: $00
	add  b                                           ; $546e: $80
	adc  a                                           ; $546f: $8f
	rrca                                             ; $5470: $0f
	nop                                              ; $5471: $00
	inc  a                                           ; $5472: $3c
	db   $fc                                         ; $5473: $fc
	ret  nz                                          ; $5474: $c0

	add  c                                           ; $5475: $81
	nop                                              ; $5476: $00
	inc  c                                           ; $5477: $0c
	dec  bc                                          ; $5478: $0b
	rst  $38                                         ; $5479: $ff
	rst  $30                                         ; $547a: $f7
	rra                                              ; $547b: $1f
	inc  e                                           ; $547c: $1c
	nop                                              ; $547d: $00
	ldh  [$e3], a                                    ; $547e: $e0 $e3
	inc  bc                                          ; $5480: $03
	nop                                              ; $5481: $00
	rrca                                             ; $5482: $0f
	rst  $38                                         ; $5483: $ff
	ldh  a, [$81]                                    ; $5484: $f0 $81
	nop                                              ; $5486: $00
	inc  c                                           ; $5487: $0c
	ldh  [$e7], a                                    ; $5488: $e0 $e7
	inc  b                                           ; $548a: $04
	rra                                              ; $548b: $1f
	inc  e                                           ; $548c: $1c
	nop                                              ; $548d: $00
	ld   a, b                                        ; $548e: $78
	ld   hl, sp-$80                                  ; $548f: $f8 $80
	nop                                              ; $5491: $00
	add  c                                           ; $5492: $81
	sbc  a                                           ; $5493: $9f
	ld   e, $81                                      ; $5494: $1e $81
	nop                                              ; $5496: $00
	inc  c                                           ; $5497: $0c
	cp   [hl]                                        ; $5498: $be
	cp   $c1                                         ; $5499: $fe $c1

jr_073_549b:
	adc  a                                           ; $549b: $8f
	ld   c, $00                                      ; $549c: $0e $00
	ld   c, $fe                                      ; $549e: $0e $fe
	ldh  a, [rP1]                                    ; $54a0: $f0 $00
	ld   hl, sp-$07                                  ; $54a2: $f8 $f9
	ld   bc, $0081                                   ; $54a4: $01 $81 $00
	dec  c                                           ; $54a7: $0d
	dec  bc                                          ; $54a8: $0b
	ld   a, a                                        ; $54a9: $7f
	or   h                                           ; $54aa: $b4
	jp   $0003                                       ; $54ab: $c3 $03 $00


	inc  bc                                          ; $54ae: $03
	rra                                              ; $54af: $1f
	inc  e                                           ; $54b0: $1c
	nop                                              ; $54b1: $00
	ld   l, $fe                                      ; $54b2: $2e $fe
	jp   nc, $8002                                   ; $54b4: $d2 $02 $80

	nop                                              ; $54b7: $00
	nop                                              ; $54b8: $00
	ldh  [$80], a                                    ; $54b9: $e0 $80
	rst  $20                                         ; $54bb: $e7
	add  hl, bc                                      ; $54bc: $09
	db   $e3                                         ; $54bd: $e3
	inc  bc                                          ; $54be: $03
	nop                                              ; $54bf: $00
	add  e                                           ; $54c0: $83
	adc  a                                           ; $54c1: $8f
	inc  c                                           ; $54c2: $0c
	nop                                              ; $54c3: $00
	ld   e, $7e                                      ; $54c4: $1e $7e
	ld   h, d                                        ; $54c6: $62
	add  b                                           ; $54c7: $80
	ld   [bc], a                                     ; $54c8: $02
	nop                                              ; $54c9: $00
	inc  bc                                          ; $54ca: $03
	add  b                                           ; $54cb: $80
	db   $fd                                         ; $54cc: $fd
	inc  bc                                          ; $54cd: $03
	jp   Jump_073_42c7                               ; $54ce: $c3 $c7 $42


	ld   h, a                                        ; $54d1: $67
	add  c                                           ; $54d2: $81
	xor  a                                           ; $54d3: $af
	inc  c                                           ; $54d4: $0c
	adc  a                                           ; $54d5: $8f
	sbc  a                                           ; $54d6: $9f
	rst  JumpTable                                         ; $54d7: $df
	ld   c, [hl]                                     ; $54d8: $4e
	rra                                              ; $54d9: $1f
	inc  b                                           ; $54da: $04
	ccf                                              ; $54db: $3f
	nop                                              ; $54dc: $00
	ccf                                              ; $54dd: $3f
	or   [hl]                                        ; $54de: $b6
	db   $e3                                         ; $54df: $e3
	and  d                                           ; $54e0: $a2
	and  $81                                         ; $54e1: $e6 $81
	push af                                          ; $54e3: $f5
	add  hl, bc                                      ; $54e4: $09
	pop  af                                          ; $54e5: $f1
	ld   sp, hl                                      ; $54e6: $f9
	ei                                               ; $54e7: $fb
	ld   [$44f8], a                                  ; $54e8: $ea $f8 $44
	db   $fc                                         ; $54eb: $fc
	nop                                              ; $54ec: $00
	db   $fc                                         ; $54ed: $fc
	and  h                                           ; $54ee: $a4
	add  c                                           ; $54ef: $81
	nop                                              ; $54f0: $00
	ld   [bc], a                                     ; $54f1: $02
	ld   bc, $0e0f                                   ; $54f2: $01 $0f $0e
	add  h                                           ; $54f5: $84
	nop                                              ; $54f6: $00
	add  b                                           ; $54f7: $80
	rlca                                             ; $54f8: $07
	ld   bc, $f000                                   ; $54f9: $01 $00 $f0
	add  c                                           ; $54fc: $81
	nop                                              ; $54fd: $00
	add  b                                           ; $54fe: $80
	db   $fc                                         ; $54ff: $fc
	add  d                                           ; $5500: $82
	inc  b                                           ; $5501: $04
	add  b                                           ; $5502: $80
	nop                                              ; $5503: $00
	inc  bc                                          ; $5504: $03
	cpl                                              ; $5505: $2f
	rst  $38                                         ; $5506: $ff
	ret  nc                                          ; $5507: $d0

	nop                                              ; $5508: $00
	add  b                                           ; $5509: $80
	inc  b                                           ; $550a: $04
	add  b                                           ; $550b: $80
	nop                                              ; $550c: $00
	ld   [bc], a                                     ; $550d: $02
	dec  d                                           ; $550e: $15
	rst  $38                                         ; $550f: $ff
	ld   [$0083], a                                  ; $5510: $ea $83 $00
	inc  bc                                          ; $5513: $03
	ldh  [$e7], a                                    ; $5514: $e0 $e7
	daa                                              ; $5516: $27
	jr   nz, jr_073_549b                             ; $5517: $20 $82

	nop                                              ; $5519: $00
	ld   [bc], a                                     ; $551a: $02
	ldh  a, [$f3]                                    ; $551b: $f0 $f3
	inc  de                                          ; $551d: $13
	add  c                                           ; $551e: $81
	db   $10                                         ; $551f: $10
	add  b                                           ; $5520: $80
	nop                                              ; $5521: $00
	inc  bc                                          ; $5522: $03
	ld   e, a                                        ; $5523: $5f
	rst  $38                                         ; $5524: $ff
	and  b                                           ; $5525: $a0
	nop                                              ; $5526: $00
	add  c                                           ; $5527: $81
	jr   nz, jr_073_552a                             ; $5528: $20 $00

jr_073_552a:
	ld   h, b                                        ; $552a: $60
	add  b                                           ; $552b: $80
	ld   b, a                                        ; $552c: $47
	nop                                              ; $552d: $00
	ld   b, h                                        ; $552e: $44
	add  b                                           ; $552f: $80
	inc  b                                           ; $5530: $04
	ld   b, $84                                      ; $5531: $06 $84
	ld   [$1898], sp                                 ; $5533: $08 $98 $18
	ret  c                                           ; $5536: $d8

	ret  nc                                          ; $5537: $d0

	ret  z                                           ; $5538: $c8

	ld   a, [$8601]                                  ; $5539: $fa $01 $86
	nop                                              ; $553c: $00
	nop                                              ; $553d: $00
	inc  c                                           ; $553e: $0c
	add  l                                           ; $553f: $85
	inc  bc                                          ; $5540: $03
	nop                                              ; $5541: $00
	rrca                                             ; $5542: $0f
	add  l                                           ; $5543: $85
	nop                                              ; $5544: $00
	ld   bc, $01fe                                   ; $5545: $01 $fe $01
	add  b                                           ; $5548: $80
	ld   de, $0180                                   ; $5549: $11 $80 $01
	add  b                                           ; $554c: $80
	ld   de, $ff00                                   ; $554d: $11 $00 $ff
	add  l                                           ; $5550: $85
	nop                                              ; $5551: $00
	ld   [$bf78], sp                                 ; $5552: $08 $78 $bf
	cp   c                                           ; $5555: $b9
	adc  a                                           ; $5556: $8f
	add  [hl]                                        ; $5557: $86
	adc  c                                           ; $5558: $89
	add  b                                           ; $5559: $80
	add  c                                           ; $555a: $81
	rst  $38                                         ; $555b: $ff
	add  l                                           ; $555c: $85
	nop                                              ; $555d: $00
	add  b                                           ; $555e: $80
	rst  $38                                         ; $555f: $ff
	ld   b, $3f                                      ; $5560: $06 $3f
	rst  $38                                         ; $5562: $ff
	rrca                                             ; $5563: $0f
	rst  $38                                         ; $5564: $ff
	jp   $8c7f                                       ; $5565: $c3 $7f $8c


	add  l                                           ; $5568: $85
	nop                                              ; $5569: $00
	ld   [bc], a                                     ; $556a: $02
	cp   $ff                                         ; $556b: $fe $ff
	cp   $83                                         ; $556d: $fe $83
	rst  $38                                         ; $556f: $ff
	add  [hl]                                        ; $5570: $86
	nop                                              ; $5571: $00
	ld   [$fffe], sp                                 ; $5572: $08 $fe $ff
	ld   a, $ff                                      ; $5575: $3e $ff
	rra                                              ; $5577: $1f
	rst  $38                                         ; $5578: $ff
	ret  nc                                          ; $5579: $d0

	rst  $38                                         ; $557a: $ff
	rrca                                             ; $557b: $0f
	add  l                                           ; $557c: $85
	nop                                              ; $557d: $00
	ld   [bc], a                                     ; $557e: $02
	xor  d                                           ; $557f: $aa
	rst  $38                                         ; $5580: $ff
	xor  d                                           ; $5581: $aa
	add  c                                           ; $5582: $81
	rst  $38                                         ; $5583: $ff
	nop                                              ; $5584: $00
	nop                                              ; $5585: $00
	add  b                                           ; $5586: $80
	rst  $38                                         ; $5587: $ff
	add  l                                           ; $5588: $85
	nop                                              ; $5589: $00
	ld   [bc], a                                     ; $558a: $02
	xor  d                                           ; $558b: $aa
	rst  $38                                         ; $558c: $ff
	xor  d                                           ; $558d: $aa
	add  c                                           ; $558e: $81
	rst  $38                                         ; $558f: $ff
	nop                                              ; $5590: $00
	nop                                              ; $5591: $00
	add  b                                           ; $5592: $80
	rst  $38                                         ; $5593: $ff
	add  l                                           ; $5594: $85
	nop                                              ; $5595: $00
	ld   [bc], a                                     ; $5596: $02
	add  b                                           ; $5597: $80
	rst  $38                                         ; $5598: $ff
	add  b                                           ; $5599: $80
	add  b                                           ; $559a: $80
	rst  ToBoot                                         ; $559b: $c7
	add  b                                           ; $559c: $80
	cp   e                                           ; $559d: $bb
	nop                                              ; $559e: $00
	rst  $38                                         ; $559f: $ff
	add  [hl]                                        ; $55a0: $86
	nop                                              ; $55a1: $00
	ld   [bc], a                                     ; $55a2: $02
	inc  de                                          ; $55a3: $13
	xor  $02                                         ; $55a4: $ee $02
	add  b                                           ; $55a6: $80
	call c, $bc03                                    ; $55a7: $dc $03 $bc
	db   $fc                                         ; $55aa: $fc
	rst  $38                                         ; $55ab: $ff
	ld   b, b                                        ; $55ac: $40
	add  l                                           ; $55ad: $85
	nop                                              ; $55ae: $00
	ld   [bc], a                                     ; $55af: $02
	db   $e4                                         ; $55b0: $e4
	ld   a, e                                        ; $55b1: $7b
	ld   h, b                                        ; $55b2: $60
	add  b                                           ; $55b3: $80
	dec  a                                           ; $55b4: $3d
	inc  bc                                          ; $55b5: $03
	ld   a, $3f                                      ; $55b6: $3e $3f
	rst  $38                                         ; $55b8: $ff
	ld   bc, $0086                                   ; $55b9: $01 $86 $00
	ld   bc, $00ff                                   ; $55bc: $01 $ff $00
	add  b                                           ; $55bf: $80
	di                                               ; $55c0: $f3
	add  b                                           ; $55c1: $80
	db   $ed                                         ; $55c2: $ed
	nop                                              ; $55c3: $00
	rst  $38                                         ; $55c4: $ff
	add  [hl]                                        ; $55c5: $86
	nop                                              ; $55c6: $00
	ld   [bc], a                                     ; $55c7: $02
	ld   a, [hl+]                                    ; $55c8: $2a
	rst  $38                                         ; $55c9: $ff
	ld   a, [hl+]                                    ; $55ca: $2a
	add  c                                           ; $55cb: $81
	rst  $38                                         ; $55cc: $ff
	nop                                              ; $55cd: $00
	nop                                              ; $55ce: $00
	add  b                                           ; $55cf: $80
	rst  $38                                         ; $55d0: $ff
	add  l                                           ; $55d1: $85
	nop                                              ; $55d2: $00
	ld   [bc], a                                     ; $55d3: $02
	xor  d                                           ; $55d4: $aa
	rst  $38                                         ; $55d5: $ff
	xor  d                                           ; $55d6: $aa
	add  c                                           ; $55d7: $81
	rst  $38                                         ; $55d8: $ff
	nop                                              ; $55d9: $00
	nop                                              ; $55da: $00
	add  b                                           ; $55db: $80
	rst  $38                                         ; $55dc: $ff
	add  l                                           ; $55dd: $85
	nop                                              ; $55de: $00
	ld   [bc], a                                     ; $55df: $02
	xor  d                                           ; $55e0: $aa
	rst  $38                                         ; $55e1: $ff
	xor  d                                           ; $55e2: $aa
	add  c                                           ; $55e3: $81
	rst  $38                                         ; $55e4: $ff
	ld   [bc], a                                     ; $55e5: $02
	ld   bc, $feff                                   ; $55e6: $01 $ff $fe
	add  l                                           ; $55e9: $85
	nop                                              ; $55ea: $00
	ld   [$fffc], sp                                 ; $55eb: $08 $fc $ff
	ld   a, [$e9ff]                                  ; $55ee: $fa $ff $e9
	rst  $38                                         ; $55f1: $ff
	xor  a                                           ; $55f2: $af
	rst  $38                                         ; $55f3: $ff
	ld   c, h                                        ; $55f4: $4c
	adc  l                                           ; $55f5: $8d
	inc  bc                                          ; $55f6: $03
	ld   bc, $01f1                                   ; $55f7: $01 $f1 $01
	add  b                                           ; $55fa: $80
	ld   de, $0180                                   ; $55fb: $11 $80 $01
	add  b                                           ; $55fe: $80
	ld   de, $0180                                   ; $55ff: $11 $80 $01
	add  b                                           ; $5602: $80
	ld   de, $0180                                   ; $5603: $11 $80 $01
	add  b                                           ; $5606: $80
	ld   de, $8980                                   ; $5607: $11 $80 $89
	add  b                                           ; $560a: $80
	add  c                                           ; $560b: $81
	add  b                                           ; $560c: $80
	adc  c                                           ; $560d: $89
	add  b                                           ; $560e: $80
	add  c                                           ; $560f: $81
	add  b                                           ; $5610: $80
	adc  c                                           ; $5611: $89
	add  b                                           ; $5612: $80
	add  c                                           ; $5613: $81
	add  b                                           ; $5614: $80
	adc  c                                           ; $5615: $89
	add  hl, bc                                      ; $5616: $09
	adc  e                                           ; $5617: $8b
	adc  c                                           ; $5618: $89
	ld   hl, $1c3f                                   ; $5619: $21 $3f $1c
	rlca                                             ; $561c: $07
	inc  hl                                          ; $561d: $23
	dec  h                                           ; $561e: $25
	dec  b                                           ; $561f: $05
	inc  b                                           ; $5620: $04
	add  b                                           ; $5621: $80
	inc  h                                           ; $5622: $24
	add  b                                           ; $5623: $80
	inc  b                                           ; $5624: $04
	add  b                                           ; $5625: $80
	inc  h                                           ; $5626: $24
	add  b                                           ; $5627: $80
	inc  b                                           ; $5628: $04
	dec  c                                           ; $5629: $0d
	nop                                              ; $562a: $00
	rst  $38                                         ; $562b: $ff
	ccf                                              ; $562c: $3f
	rst  $38                                         ; $562d: $ff
	rrca                                             ; $562e: $0f
	rst  $38                                         ; $562f: $ff
	jp   $d07f                                       ; $5630: $c3 $7f $d0


	cp   a                                           ; $5633: $bf
	inc  a                                           ; $5634: $3c
	daa                                              ; $5635: $27
	and  [hl]                                        ; $5636: $a6
	and  c                                           ; $5637: $a1
	add  b                                           ; $5638: $80
	dec  h                                           ; $5639: $25
	ld   b, $00                                      ; $563a: $06 $00
	rst  $38                                         ; $563c: $ff
	rst  $28                                         ; $563d: $ef
	rst  $38                                         ; $563e: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $563f: $cf
	rst  $38                                         ; $5640: $ff
	rst  JumpTable                                         ; $5641: $df
	add  c                                           ; $5642: $81
	rst  $38                                         ; $5643: $ff
	ld   b, $00                                      ; $5644: $06 $00
	rst  $38                                         ; $5646: $ff
	nop                                              ; $5647: $00
	rst  $38                                         ; $5648: $ff
	xor  l                                           ; $5649: $ad
	jp   nc, $8780                                   ; $564a: $d2 $80 $87

	rst  $38                                         ; $564d: $ff
	ld   b, $00                                      ; $564e: $06 $00
	rst  $38                                         ; $5650: $ff
	nop                                              ; $5651: $00
	rst  $38                                         ; $5652: $ff
	rst  $28                                         ; $5653: $ef
	stop                                             ; $5654: $10 $00
	add  e                                           ; $5656: $83
	rst  $38                                         ; $5657: $ff
	nop                                              ; $5658: $00
	cp   $81                                         ; $5659: $fe $81
	rst  $38                                         ; $565b: $ff
	ld   b, $07                                      ; $565c: $06 $07
	rst  $38                                         ; $565e: $ff
	ld   b, $ff                                      ; $565f: $06 $ff
	ld   l, e                                        ; $5661: $6b
	sub  [hl]                                        ; $5662: $96
	ld   [bc], a                                     ; $5663: $02
	add  b                                           ; $5664: $80
	sbc  a                                           ; $5665: $9f
	add  c                                           ; $5666: $81
	rrca                                             ; $5667: $0f
	nop                                              ; $5668: $00
	ld   c, $80                                      ; $5669: $0e $80
	rrca                                             ; $566b: $0f
	ld   bc, $fdff                                   ; $566c: $01 $ff $fd
	add  b                                           ; $566f: $80
	rrca                                             ; $5670: $0f
	inc  bc                                          ; $5671: $03
	rst  $38                                         ; $5672: $ff
	and  a                                           ; $5673: $a7
	rst  $38                                         ; $5674: $ff
	and  h                                           ; $5675: $a4
	add  b                                           ; $5676: $80
	ldh  [$80], a                                    ; $5677: $e0 $80
	rlca                                             ; $5679: $07
	ld   bc, $0080                                   ; $567a: $01 $80 $00
	add  b                                           ; $567d: $80
	ret  nz                                          ; $567e: $c0

	ld   bc, $c0f0                                   ; $567f: $01 $f0 $c0
	add  b                                           ; $5682: $80
	rst  $38                                         ; $5683: $ff
	add  b                                           ; $5684: $80
	ld   hl, sp+$01                                  ; $5685: $f8 $01
	rst  $38                                         ; $5687: $ff
	ld   c, a                                        ; $5688: $4f
	add  b                                           ; $5689: $80
	ld   h, e                                        ; $568a: $63
	add  b                                           ; $568b: $80
	ldh  [$80], a                                    ; $568c: $e0 $80
	rrca                                             ; $568e: $0f
	inc  bc                                          ; $568f: $03
	rlca                                             ; $5690: $07
	ld   b, $3f                                      ; $5691: $06 $3f
	dec  [hl]                                        ; $5693: $35
	add  b                                           ; $5694: $80
	rst  $38                                         ; $5695: $ff
	add  b                                           ; $5696: $80
	ccf                                              ; $5697: $3f
	ld   bc, $f4ff                                   ; $5698: $01 $ff $f4
	add  b                                           ; $569b: $80
	ld   sp, hl                                      ; $569c: $f9
	add  b                                           ; $569d: $80
	ld   [hl], b                                     ; $569e: $70
	ld   bc, $90f0                                   ; $569f: $01 $f0 $90
	add  b                                           ; $56a2: $80
	ldh  a, [$80]                                    ; $56a3: $f0 $80
	rst  $38                                         ; $56a5: $ff
	add  b                                           ; $56a6: $80
	ldh  a, [$03]                                    ; $56a7: $f0 $03
	rst  $38                                         ; $56a9: $ff
	jp   hl                                          ; $56aa: $e9


	rst  $38                                         ; $56ab: $ff
	adc  c                                           ; $56ac: $89
	add  a                                           ; $56ad: $87
	rst  $38                                         ; $56ae: $ff
	ld   b, $80                                      ; $56af: $06 $80
	rst  $38                                         ; $56b1: $ff
	add  b                                           ; $56b2: $80
	rst  $38                                         ; $56b3: $ff
	rst  $28                                         ; $56b4: $ef
	sub  b                                           ; $56b5: $90
	add  b                                           ; $56b6: $80
	add  a                                           ; $56b7: $87
	rst  $38                                         ; $56b8: $ff
	ld   b, $00                                      ; $56b9: $06 $00
	rst  $38                                         ; $56bb: $ff
	nop                                              ; $56bc: $00
	rst  $38                                         ; $56bd: $ff
	cp   [hl]                                        ; $56be: $be
	ld   b, c                                        ; $56bf: $41
	nop                                              ; $56c0: $00
	add  a                                           ; $56c1: $87
	rst  $38                                         ; $56c2: $ff
	ld   d, $00                                      ; $56c3: $16 $00
	rst  $38                                         ; $56c5: $ff
	nop                                              ; $56c6: $00
	rst  $38                                         ; $56c7: $ff
	ei                                               ; $56c8: $fb
	inc  b                                           ; $56c9: $04
	nop                                              ; $56ca: $00
	rst  $38                                         ; $56cb: $ff
	ld   a, a                                        ; $56cc: $7f
	rst  $38                                         ; $56cd: $ff
	ld   a, $ff                                      ; $56ce: $3e $ff
	cp   c                                           ; $56d0: $b9
	rst  $38                                         ; $56d1: $ff
	db   $e4                                         ; $56d2: $e4
	rst  $38                                         ; $56d3: $ff
	ld   [hl+], a                                    ; $56d4: $22
	db   $fd                                         ; $56d5: $fd
	inc  [hl]                                        ; $56d6: $34
	ld   hl, sp-$07                                  ; $56d7: $f8 $f9
	add  hl, de                                      ; $56d9: $19
	db   $e3                                         ; $56da: $e3
	add  a                                           ; $56db: $87
	inc  bc                                          ; $56dc: $03
	add  b                                           ; $56dd: $80
	ld   [bc], a                                     ; $56de: $02
	nop                                              ; $56df: $00
	inc  c                                           ; $56e0: $0c
	add  c                                           ; $56e1: $81
	nop                                              ; $56e2: $00
	ld   bc, $01fd                                   ; $56e3: $01 $fd $01
	add  b                                           ; $56e6: $80
	ld   de, $0080                                   ; $56e7: $11 $80 $00
	dec  de                                          ; $56ea: $1b
	ld   e, $10                                      ; $56eb: $1e $10
	ld   [hl], b                                     ; $56ed: $70
	nop                                              ; $56ee: $00
	sub  b                                           ; $56ef: $90
	nop                                              ; $56f0: $00
	stop                                             ; $56f1: $10 $00
	stop                                             ; $56f3: $10 $00
	ld   l, c                                        ; $56f5: $69
	add  c                                           ; $56f6: $81
	ld   sp, hl                                      ; $56f7: $f9
	add  c                                           ; $56f8: $81
	add  hl, bc                                      ; $56f9: $09
	ld   bc, $0109                                   ; $56fa: $01 $09 $01
	add  hl, bc                                      ; $56fd: $09
	ld   bc, $0109                                   ; $56fe: $01 $09 $01
	add  hl, bc                                      ; $5701: $09
	ld   bc, $0109                                   ; $5702: $01 $09 $01
	ld   e, d                                        ; $5705: $5a
	inc  h                                           ; $5706: $24
	add  b                                           ; $5707: $80
	inc  b                                           ; $5708: $04
	add  b                                           ; $5709: $80

Jump_073_570a:
	inc  h                                           ; $570a: $24
	add  b                                           ; $570b: $80
	inc  b                                           ; $570c: $04
	add  b                                           ; $570d: $80
	inc  h                                           ; $570e: $24
	add  b                                           ; $570f: $80
	inc  b                                           ; $5710: $04
	add  b                                           ; $5711: $80
	inc  h                                           ; $5712: $24
	add  b                                           ; $5713: $80
	inc  b                                           ; $5714: $04
	add  b                                           ; $5715: $80
	and  c                                           ; $5716: $a1
	add  b                                           ; $5717: $80
	dec  h                                           ; $5718: $25
	add  b                                           ; $5719: $80
	and  c                                           ; $571a: $a1
	add  b                                           ; $571b: $80
	dec  h                                           ; $571c: $25
	add  b                                           ; $571d: $80
	and  c                                           ; $571e: $a1
	add  b                                           ; $571f: $80
	dec  h                                           ; $5720: $25
	add  b                                           ; $5721: $80
	and  c                                           ; $5722: $a1
	add  b                                           ; $5723: $80
	dec  h                                           ; $5724: $25
	ld   bc, $c242                                   ; $5725: $01 $42 $c2
	add  b                                           ; $5728: $80
	jp   nc, $c280                                   ; $5729: $d2 $80 $c2

	add  b                                           ; $572c: $80
	jp   nc, $c280                                   ; $572d: $d2 $80 $c2

	add  b                                           ; $5730: $80
	jp   nc, $c280                                   ; $5731: $d2 $80 $c2

	add  b                                           ; $5734: $80
	jp   nc, $1201                                   ; $5735: $d2 $01 $12

	sub  d                                           ; $5738: $92
	add  b                                           ; $5739: $80
	db   $10                                         ; $573a: $10
	add  b                                           ; $573b: $80
	sub  d                                           ; $573c: $92
	add  b                                           ; $573d: $80
	db   $10                                         ; $573e: $10
	add  b                                           ; $573f: $80
	sub  d                                           ; $5740: $92
	add  b                                           ; $5741: $80
	db   $10                                         ; $5742: $10
	add  b                                           ; $5743: $80
	sub  d                                           ; $5744: $92
	add  b                                           ; $5745: $80
	db   $10                                         ; $5746: $10
	ld   bc, $8684                                   ; $5747: $01 $84 $86
	add  b                                           ; $574a: $80
	sub  [hl]                                        ; $574b: $96
	add  b                                           ; $574c: $80
	add  [hl]                                        ; $574d: $86
	add  b                                           ; $574e: $80
	sub  [hl]                                        ; $574f: $96
	ld   bc, $8786                                   ; $5750: $01 $86 $87
	add  b                                           ; $5753: $80
	sub  a                                           ; $5754: $97
	ld   bc, $8586                                   ; $5755: $01 $86 $85
	add  b                                           ; $5758: $80
	sub  l                                           ; $5759: $95
	ld   a, [bc]                                     ; $575a: $0a
	ld   e, e                                        ; $575b: $5b
	rst  $38                                         ; $575c: $ff
	rst  $30                                         ; $575d: $f7
	rst  $38                                         ; $575e: $ff
	call $9fff                                       ; $575f: $cd $ff $9f
	rst  $38                                         ; $5762: $ff
	cp   $ff                                         ; $5763: $fe $ff
	or   [hl]                                        ; $5765: $b6
	add  c                                           ; $5766: $81
	rst  $38                                         ; $5767: $ff
	add  hl, bc                                      ; $5768: $09
	ei                                               ; $5769: $fb
	rst  $38                                         ; $576a: $ff
	inc  b                                           ; $576b: $04
	rst  $38                                         ; $576c: $ff
	ld   e, a                                        ; $576d: $5f
	rst  $38                                         ; $576e: $ff
	db   $ed                                         ; $576f: $ed
	rst  $38                                         ; $5770: $ff
	db   $eb                                         ; $5771: $eb
	rst  JumpTable                                         ; $5772: $df
	add  [hl]                                        ; $5773: $86
	db   $d3                                         ; $5774: $d3
	ld   [$ffb4], sp                                 ; $5775: $08 $b4 $ff
	db   $fd                                         ; $5778: $fd
	rst  $38                                         ; $5779: $ff
	or   $ff                                         ; $577a: $f6 $ff
	adc  e                                           ; $577c: $8b
	ld   [hl], a                                     ; $577d: $77
	rla                                              ; $577e: $17
	add  l                                           ; $577f: $85
	daa                                              ; $5780: $27
	ld   [$ff05], sp                                 ; $5781: $08 $05 $ff
	or   [hl]                                        ; $5784: $b6
	rst  $38                                         ; $5785: $ff
	dec  sp                                          ; $5786: $3b
	rst  $38                                         ; $5787: $ff
	db   $f4                                         ; $5788: $f4
	rst  $38                                         ; $5789: $ff
	db   $eb                                         ; $578a: $eb
	add  b                                           ; $578b: $80
	rst  $38                                         ; $578c: $ff
	ld   bc, $defe                                   ; $578d: $01 $fe $de
	add  c                                           ; $5790: $81
	cp   $01                                         ; $5791: $fe $01
	jr   @-$6c                                       ; $5793: $18 $92

	add  b                                           ; $5795: $80
	sub  h                                           ; $5796: $94
	add  b                                           ; $5797: $80
	sub  d                                           ; $5798: $92
	add  b                                           ; $5799: $80
	sub  b                                           ; $579a: $90
	ld   bc, $9212                                   ; $579b: $01 $12 $92
	add  b                                           ; $579e: $80
	db   $10                                         ; $579f: $10
	add  b                                           ; $57a0: $80
	sub  d                                           ; $57a1: $92
	add  b                                           ; $57a2: $80
	db   $10                                         ; $57a3: $10
	add  b                                           ; $57a4: $80
	ld   c, c                                        ; $57a5: $49
	add  b                                           ; $57a6: $80
	ld   b, c                                        ; $57a7: $41
	add  b                                           ; $57a8: $80
	ld   c, c                                        ; $57a9: $49
	add  b                                           ; $57aa: $80
	ld   b, c                                        ; $57ab: $41
	add  b                                           ; $57ac: $80
	ld   c, c                                        ; $57ad: $49
	add  b                                           ; $57ae: $80
	ld   b, c                                        ; $57af: $41
	add  b                                           ; $57b0: $80
	ld   c, c                                        ; $57b1: $49
	add  b                                           ; $57b2: $80
	ld   b, c                                        ; $57b3: $41
	add  b                                           ; $57b4: $80
	inc  h                                           ; $57b5: $24
	add  b                                           ; $57b6: $80
	rlca                                             ; $57b7: $07
	dec  c                                           ; $57b8: $0d
	dec  e                                           ; $57b9: $1d
	dec  a                                           ; $57ba: $3d
	inc  h                                           ; $57bb: $24
	ld   a, $30                                      ; $57bc: $3e $30
	dec  de                                          ; $57be: $1b
	ld   sp, $2a27                                   ; $57bf: $31 $27 $2a
	dec  a                                           ; $57c2: $3d
	inc  h                                           ; $57c3: $24
	ld   a, a                                        ; $57c4: $7f
	db   $e3                                         ; $57c5: $e3
	cp   b                                           ; $57c6: $b8
	add  b                                           ; $57c7: $80
	cp   c                                           ; $57c8: $b9
	add  b                                           ; $57c9: $80
	cp   $0a                                         ; $57ca: $fe $0a
	ccf                                              ; $57cc: $3f
	ld   a, a                                        ; $57cd: $7f
	push de                                          ; $57ce: $d5
	db   $fd                                         ; $57cf: $fd
	ld   d, b                                        ; $57d0: $50
	ld   a, c                                        ; $57d1: $79
	ld   b, e                                        ; $57d2: $43
	sbc  $c4                                         ; $57d3: $de $c4
	ld   a, [hl]                                     ; $57d5: $7e
	adc  d                                           ; $57d6: $8a
	adc  l                                           ; $57d7: $8d
	nop                                              ; $57d8: $00
	ld   hl, $0002                                   ; $57d9: $21 $02 $00
	stop                                             ; $57dc: $10 $00
	stop                                             ; $57de: $10 $00
	stop                                             ; $57e0: $10 $00
	stop                                             ; $57e2: $10 $00
	stop                                             ; $57e4: $10 $00
	stop                                             ; $57e6: $10 $00
	stop                                             ; $57e8: $10 $00
	sbc  c                                           ; $57ea: $99
	ld   bc, $0109                                   ; $57eb: $01 $09 $01
	add  hl, bc                                      ; $57ee: $09
	ld   bc, $0109                                   ; $57ef: $01 $09 $01
	add  hl, bc                                      ; $57f2: $09
	ld   bc, $0109                                   ; $57f3: $01 $09 $01
	add  hl, bc                                      ; $57f6: $09
	ld   bc, $0109                                   ; $57f7: $01 $09 $01
	ld   e, d                                        ; $57fa: $5a
	inc  h                                           ; $57fb: $24
	add  b                                           ; $57fc: $80
	inc  b                                           ; $57fd: $04
	add  b                                           ; $57fe: $80
	inc  h                                           ; $57ff: $24
	add  b                                           ; $5800: $80
	inc  b                                           ; $5801: $04
	add  b                                           ; $5802: $80
	inc  h                                           ; $5803: $24
	add  b                                           ; $5804: $80
	inc  b                                           ; $5805: $04
	add  b                                           ; $5806: $80
	inc  h                                           ; $5807: $24
	add  b                                           ; $5808: $80
	inc  b                                           ; $5809: $04
	add  b                                           ; $580a: $80
	and  c                                           ; $580b: $a1
	add  b                                           ; $580c: $80
	dec  h                                           ; $580d: $25
	add  b                                           ; $580e: $80
	and  c                                           ; $580f: $a1
	add  b                                           ; $5810: $80
	dec  h                                           ; $5811: $25
	add  b                                           ; $5812: $80
	and  c                                           ; $5813: $a1
	add  b                                           ; $5814: $80
	dec  h                                           ; $5815: $25
	add  b                                           ; $5816: $80
	and  c                                           ; $5817: $a1
	add  b                                           ; $5818: $80
	dec  h                                           ; $5819: $25
	ld   bc, $c242                                   ; $581a: $01 $42 $c2
	add  b                                           ; $581d: $80
	jp   nc, $c280                                   ; $581e: $d2 $80 $c2

	add  b                                           ; $5821: $80
	jp   nc, $c280                                   ; $5822: $d2 $80 $c2

	add  b                                           ; $5825: $80
	jp   nc, $c280                                   ; $5826: $d2 $80 $c2

	add  b                                           ; $5829: $80
	jp   nc, $1201                                   ; $582a: $d2 $01 $12

	sub  d                                           ; $582d: $92
	add  b                                           ; $582e: $80
	db   $10                                         ; $582f: $10
	add  b                                           ; $5830: $80
	sub  d                                           ; $5831: $92
	add  b                                           ; $5832: $80
	db   $10                                         ; $5833: $10
	add  b                                           ; $5834: $80
	sub  d                                           ; $5835: $92
	add  b                                           ; $5836: $80
	db   $10                                         ; $5837: $10
	add  b                                           ; $5838: $80
	sub  d                                           ; $5839: $92
	add  b                                           ; $583a: $80
	db   $10                                         ; $583b: $10
	add  b                                           ; $583c: $80
	add  l                                           ; $583d: $85
	add  b                                           ; $583e: $80
	sub  l                                           ; $583f: $95
	add  b                                           ; $5840: $80
	add  l                                           ; $5841: $85
	add  b                                           ; $5842: $80
	sub  l                                           ; $5843: $95
	add  b                                           ; $5844: $80
	add  l                                           ; $5845: $85
	add  b                                           ; $5846: $80
	sub  l                                           ; $5847: $95
	add  b                                           ; $5848: $80
	add  l                                           ; $5849: $85
	add  b                                           ; $584a: $80
	sub  l                                           ; $584b: $95
	nop                                              ; $584c: $00
	ld   c, l                                        ; $584d: $4d
	adc  e                                           ; $584e: $8b
	rst  $38                                         ; $584f: $ff
	inc  bc                                          ; $5850: $03
	db   $ec                                         ; $5851: $ec
	cp   $d0                                         ; $5852: $fe $d0
	rst  $38                                         ; $5854: $ff
	add  b                                           ; $5855: $80
	sub  e                                           ; $5856: $93
	nop                                              ; $5857: $00
	inc  de                                          ; $5858: $13
	add  c                                           ; $5859: $81
	sub  e                                           ; $585a: $93
	add  b                                           ; $585b: $80
	or   e                                           ; $585c: $b3
	ld   bc, $ffef                                   ; $585d: $01 $ef $ff
	add  d                                           ; $5860: $82
	and  e                                           ; $5861: $a3
	ld   [bc], a                                     ; $5862: $02
	ld   hl, $a7ff                                   ; $5863: $21 $ff $a7
	add  e                                           ; $5866: $83
	daa                                              ; $5867: $27
	add  b                                           ; $5868: $80
	scf                                              ; $5869: $37
	ld   [bc], a                                     ; $586a: $02
	ld   e, a                                        ; $586b: $5f
	rst  $38                                         ; $586c: $ff
	sub  l                                           ; $586d: $95
	add  c                                           ; $586e: $81
	dec  d                                           ; $586f: $15
	nop                                              ; $5870: $00
	sub  l                                           ; $5871: $95
	add  e                                           ; $5872: $83
	cp   $00                                         ; $5873: $fe $00
	sbc  $87                                         ; $5875: $de $87
	cp   $01                                         ; $5877: $fe $01
	cp   b                                           ; $5879: $b8
	sub  d                                           ; $587a: $92
	add  b                                           ; $587b: $80
	db   $10                                         ; $587c: $10
	add  b                                           ; $587d: $80
	sub  d                                           ; $587e: $92
	add  b                                           ; $587f: $80

Call_073_5880:
	db   $10                                         ; $5880: $10
	add  b                                           ; $5881: $80
	sub  d                                           ; $5882: $92
	add  b                                           ; $5883: $80
	db   $10                                         ; $5884: $10
	add  b                                           ; $5885: $80
	sub  d                                           ; $5886: $92
	add  b                                           ; $5887: $80
	db   $10                                         ; $5888: $10
	add  b                                           ; $5889: $80
	ld   c, c                                        ; $588a: $49
	add  b                                           ; $588b: $80
	ld   b, c                                        ; $588c: $41
	add  b                                           ; $588d: $80
	ld   c, c                                        ; $588e: $49
	add  b                                           ; $588f: $80
	ld   b, c                                        ; $5890: $41
	add  b                                           ; $5891: $80
	ld   c, c                                        ; $5892: $49
	add  b                                           ; $5893: $80
	ld   b, c                                        ; $5894: $41
	nop                                              ; $5895: $00
	ld   b, b                                        ; $5896: $40
	add  b                                           ; $5897: $80
	ld   c, l                                        ; $5898: $4d
	ld   hl, $067f                                   ; $5899: $21 $7f $06
	ccf                                              ; $589c: $3f
	ld   b, e                                        ; $589d: $43
	rst  $38                                         ; $589e: $ff
	adc  b                                           ; $589f: $88
	ld   a, a                                        ; $58a0: $7f
	ld   h, l                                        ; $58a1: $65
	dec  sp                                          ; $58a2: $3b
	ld   hl, $093f                                   ; $58a3: $21 $3f $09
	rrca                                             ; $58a6: $0f
	ld   a, [de]                                     ; $58a7: $1a
	or   a                                           ; $58a8: $b7
	and  d                                           ; $58a9: $a2
	add  a                                           ; $58aa: $87
	sub  c                                           ; $58ab: $91
	ld   a, a                                        ; $58ac: $7f
	inc  a                                           ; $58ad: $3c
	ei                                               ; $58ae: $fb
	ld   c, e                                        ; $58af: $4b
	rst  $30                                         ; $58b0: $f7
	cp   [hl]                                        ; $58b1: $be
	rst  $38                                         ; $58b2: $ff
	ld   b, d                                        ; $58b3: $42
	rst  $38                                         ; $58b4: $ff
	jp   $d3fb                                       ; $58b5: $c3 $fb $d3


	rst  $38                                         ; $58b8: $ff
	ldh  a, [c]                                      ; $58b9: $f2
	rst  $38                                         ; $58ba: $ff
	rrca                                             ; $58bb: $0f
	adc  l                                           ; $58bc: $8d
	nop                                              ; $58bd: $00
	ld   [de], a                                     ; $58be: $12
	ld   [bc], a                                     ; $58bf: $02
	nop                                              ; $58c0: $00
	stop                                             ; $58c1: $10 $00
	stop                                             ; $58c3: $10 $00
	stop                                             ; $58c5: $10 $00
	stop                                             ; $58c7: $10 $00
	stop                                             ; $58c9: $10 $00
	stop                                             ; $58cb: $10 $00
	stop                                             ; $58cd: $10 $00
	sbc  c                                           ; $58cf: $99
	ld   bc, $8b05                                   ; $58d0: $01 $05 $8b
	rlca                                             ; $58d3: $07
	ld   bc, $2450                                   ; $58d4: $01 $50 $24
	add  d                                           ; $58d7: $82
	db   $f4                                         ; $58d8: $f4
	ld   bc, $f414                                   ; $58d9: $01 $14 $f4
	add  [hl]                                        ; $58dc: $86
	inc  [hl]                                        ; $58dd: $34
	ld   bc, $a141                                   ; $58de: $01 $41 $a1
	add  b                                           ; $58e1: $80
	dec  h                                           ; $58e2: $25
	add  b                                           ; $58e3: $80
	and  c                                           ; $58e4: $a1
	add  b                                           ; $58e5: $80
	dec  h                                           ; $58e6: $25
	add  b                                           ; $58e7: $80
	and  c                                           ; $58e8: $a1
	add  b                                           ; $58e9: $80
	dec  h                                           ; $58ea: $25
	add  b                                           ; $58eb: $80
	and  c                                           ; $58ec: $a1
	add  b                                           ; $58ed: $80
	dec  h                                           ; $58ee: $25
	ld   bc, $c242                                   ; $58ef: $01 $42 $c2
	add  b                                           ; $58f2: $80
	jp   nc, $c280                                   ; $58f3: $d2 $80 $c2

	add  b                                           ; $58f6: $80
	jp   nc, wBGP                                   ; $58f7: $d2 $04 $c2

	jp   $d6d1                                       ; $58fa: $c3 $d1 $d6


	add  $80                                         ; $58fd: $c6 $80
	ret  z                                           ; $58ff: $c8

	ld   [bc], a                                     ; $5900: $02
	db   $d3                                         ; $5901: $d3
	ld   bc, $8092                                   ; $5902: $01 $92 $80
	db   $10                                         ; $5905: $10
	add  b                                           ; $5906: $80
	sub  d                                           ; $5907: $92
	add  b                                           ; $5908: $80
	db   $10                                         ; $5909: $10
	add  hl, bc                                      ; $590a: $09
	inc  c                                           ; $590b: $0c
	db   $fc                                         ; $590c: $fc
	ldh  a, [c]                                      ; $590d: $f2
	xor  [hl]                                        ; $590e: $ae
	xor  l                                           ; $590f: $ad
	db   $e3                                         ; $5910: $e3
	ldh  [c], a                                      ; $5911: $e2
	cp   c                                           ; $5912: $b9
	inc  a                                           ; $5913: $3c
	add  l                                           ; $5914: $85
	add  b                                           ; $5915: $80
	sub  l                                           ; $5916: $95
	add  b                                           ; $5917: $80
	add  l                                           ; $5918: $85
	add  b                                           ; $5919: $80
	sub  l                                           ; $591a: $95
	add  b                                           ; $591b: $80
	add  l                                           ; $591c: $85
	add  b                                           ; $591d: $80
	sub  l                                           ; $591e: $95
	add  b                                           ; $591f: $80
	add  l                                           ; $5920: $85
	add  b                                           ; $5921: $80
	sub  l                                           ; $5922: $95
	ld   b, $5e                                      ; $5923: $06 $5e
	cp   $f6                                         ; $5925: $fe $f6
	cp   $f9                                         ; $5927: $fe $f9
	rst  $38                                         ; $5929: $ff
	ld   hl, sp-$7f                                  ; $592a: $f8 $81
	cp   $82                                         ; $592c: $fe $82
	db   $fc                                         ; $592e: $fc
	add  b                                           ; $592f: $80
	rst  $38                                         ; $5930: $ff
	nop                                              ; $5931: $00
	inc  d                                           ; $5932: $14
	add  c                                           ; $5933: $81
	and  e                                           ; $5934: $a3
	ld   bc, $ffdf                                   ; $5935: $01 $df $ff
	add  d                                           ; $5938: $82
	add  e                                           ; $5939: $83
	add  c                                           ; $593a: $81
	jp   $8304                                       ; $593b: $c3 $04 $83


	ld   a, a                                        ; $593e: $7f
	rst  $38                                         ; $593f: $ff
	adc  e                                           ; $5940: $8b
	dec  d                                           ; $5941: $15
	add  b                                           ; $5942: $80
	dec  e                                           ; $5943: $1d
	inc  b                                           ; $5944: $04
	ld   l, a                                        ; $5945: $6f
	rst  $38                                         ; $5946: $ff
	adc  l                                           ; $5947: $8d
	dec  c                                           ; $5948: $0d
	inc  c                                           ; $5949: $0c
	add  e                                           ; $594a: $83
	dec  b                                           ; $594b: $05
	ld   [bc], a                                     ; $594c: $02
	ld   a, d                                        ; $594d: $7a
	cp   $68                                         ; $594e: $fe $68
	add  l                                           ; $5950: $85
	cp   $00                                         ; $5951: $fe $00
	ld   a, [hl]                                     ; $5953: $7e
	add  e                                           ; $5954: $83
	cp   $03                                         ; $5955: $fe $03
	ld   a, [hl]                                     ; $5957: $7e
	cp   $ea                                         ; $5958: $fe $ea
	sbc  a                                           ; $595a: $9f
	add  b                                           ; $595b: $80
	rra                                              ; $595c: $1f
	add  b                                           ; $595d: $80
	sbc  a                                           ; $595e: $9f
	inc  b                                           ; $595f: $04
	ldh  [rIE], a                                    ; $5960: $e0 $ff
	dec  b                                           ; $5962: $05
	rst  $38                                         ; $5963: $ff
	cp   $83                                         ; $5964: $fe $83
	rst  $38                                         ; $5966: $ff
	ld   [bc], a                                     ; $5967: $02
	dec  sp                                          ; $5968: $3b
	rst  $38                                         ; $5969: $ff
	ccf                                              ; $596a: $3f
	add  c                                           ; $596b: $81
	rst  $38                                         ; $596c: $ff
	nop                                              ; $596d: $00
	nop                                              ; $596e: $00
	add  c                                           ; $596f: $81
	rst  $38                                         ; $5970: $ff
	nop                                              ; $5971: $00
	nop                                              ; $5972: $00
	add  c                                           ; $5973: $81
	rst  $38                                         ; $5974: $ff
	inc  bc                                          ; $5975: $03
	sub  $ff                                         ; $5976: $d6 $ff
	ldh  a, [c]                                      ; $5978: $f2
	and  a                                           ; $5979: $a7
	add  b                                           ; $597a: $80
	add  a                                           ; $597b: $87
	ld   [bc], a                                     ; $597c: $02
	add  c                                           ; $597d: $81
	rst  $38                                         ; $597e: $ff
	ld   [bc], a                                     ; $597f: $02
	add  c                                           ; $5980: $81
	rst  $38                                         ; $5981: $ff
	nop                                              ; $5982: $00
	nop                                              ; $5983: $00
	add  c                                           ; $5984: $81
	rst  $38                                         ; $5985: $ff
	ld   [bc], a                                     ; $5986: $02
	scf                                              ; $5987: $37
	rst  $38                                         ; $5988: $ff
	scf                                              ; $5989: $37
	add  d                                           ; $598a: $82
	ld   hl, sp+$01                                  ; $598b: $f8 $01
	cp   $01                                         ; $598d: $fe $01
	add  c                                           ; $598f: $81
	rst  $38                                         ; $5990: $ff
	ld   b, $00                                      ; $5991: $06 $00
	rst  $38                                         ; $5993: $ff
	sbc  a                                           ; $5994: $9f
	cp   $bc                                         ; $5995: $fe $bc
	cp   $20                                         ; $5997: $fe $20
	adc  l                                           ; $5999: $8d
	nop                                              ; $599a: $00
	db   $10                                         ; $599b: $10
	ld   [bc], a                                     ; $599c: $02
	nop                                              ; $599d: $00
	stop                                             ; $599e: $10 $00
	stop                                             ; $59a0: $10 $00
	stop                                             ; $59a2: $10 $00
	stop                                             ; $59a4: $10 $00
	stop                                             ; $59a6: $10 $00
	stop                                             ; $59a8: $10 $00
	stop                                             ; $59aa: $10 $00
	sbc  l                                           ; $59ac: $9d
	add  a                                           ; $59ad: $87
	rlca                                             ; $59ae: $07
	ld   b, $04                                      ; $59af: $06 $04
	rlca                                             ; $59b1: $07
	ld   b, $07                                      ; $59b2: $06 $07
	add  hl, bc                                      ; $59b4: $09
	ld   bc, $82aa                                   ; $59b5: $01 $aa $82
	inc  [hl]                                        ; $59b8: $34
	ld   [$d4f4], sp                                 ; $59b9: $08 $f4 $d4
	db   $f4                                         ; $59bc: $f4
	add  h                                           ; $59bd: $84
	db   $f4                                         ; $59be: $f4
	ld   [hl], h                                     ; $59bf: $74
	call nz, $24e4                                   ; $59c0: $c4 $e4 $24
	add  b                                           ; $59c3: $80
	inc  b                                           ; $59c4: $04
	add  b                                           ; $59c5: $80
	and  c                                           ; $59c6: $a1
	ld   c, $20                                      ; $59c7: $0e $20
	daa                                              ; $59c9: $27
	and  d                                           ; $59ca: $a2
	xor  l                                           ; $59cb: $ad
	jr   z, jr_073_5a05                              ; $59cc: $28 $37

	sub  b                                           ; $59ce: $90
	xor  a                                           ; $59cf: $af
	inc  l                                           ; $59d0: $2c
	ld   l, a                                        ; $59d1: $6f
	xor  $ef                                         ; $59d2: $ee $ef
	ld   l, d                                        ; $59d4: $6a
	rst  $38                                         ; $59d5: $ff
	cp   a                                           ; $59d6: $bf
	add  b                                           ; $59d7: $80
	sub  $01                                         ; $59d8: $d6 $01
	push af                                          ; $59da: $f5
	or   l                                           ; $59db: $b5
	add  d                                           ; $59dc: $82
	ld   [$aa80], a                                  ; $59dd: $ea $80 $aa
	add  d                                           ; $59e0: $82
	ld   [$ff80], a                                  ; $59e1: $ea $80 $ff
	add  b                                           ; $59e4: $80
	and  l                                           ; $59e5: $a5
	add  b                                           ; $59e6: $80
	ld   d, e                                        ; $59e7: $53
	add  b                                           ; $59e8: $80
	ld   c, d                                        ; $59e9: $4a
	add  h                                           ; $59ea: $84
	xor  d                                           ; $59eb: $aa
	add  b                                           ; $59ec: $80
	ld   l, d                                        ; $59ed: $6a
	inc  bc                                          ; $59ee: $03
	rst  $38                                         ; $59ef: $ff
	ld   a, [hl]                                     ; $59f0: $7e
	sbc  a                                           ; $59f1: $9f
	ld   e, $80                                      ; $59f2: $1e $80
	and  e                                           ; $59f4: $a3
	add  b                                           ; $59f5: $80
	call z, $9280                                    ; $59f6: $cc $80 $92
	add  b                                           ; $59f9: $80
	and  c                                           ; $59fa: $a1
	add  b                                           ; $59fb: $80
	xor  l                                           ; $59fc: $ad
	add  b                                           ; $59fd: $80
	sub  l                                           ; $59fe: $95
	ld   bc, $abff                                   ; $59ff: $01 $ff $ab
	add  b                                           ; $5a02: $80
	db   $fc                                         ; $5a03: $fc
	dec  b                                           ; $5a04: $05

jr_073_5a05:
	db   $fd                                         ; $5a05: $fd
	db   $ed                                         ; $5a06: $ed
	db   $fd                                         ; $5a07: $fd
	dec  a                                           ; $5a08: $3d
	rst  $38                                         ; $5a09: $ff
	di                                               ; $5a0a: $f3
	add  d                                           ; $5a0b: $82
	ei                                               ; $5a0c: $fb
	inc  bc                                          ; $5a0d: $03
	db   $eb                                         ; $5a0e: $eb
	set  5, h                                        ; $5a0f: $cb $ec
	ld   c, d                                        ; $5a11: $4a
	add  b                                           ; $5a12: $80
	or   $01                                         ; $5a13: $f6 $01
	db   $d3                                         ; $5a15: $d3
	db   $db                                         ; $5a16: $db
	add  b                                           ; $5a17: $80
	adc  e                                           ; $5a18: $8b
	ld   bc, $cdcb                                   ; $5a19: $01 $cb $cd
	add  b                                           ; $5a1c: $80
	adc  a                                           ; $5a1d: $8f
	add  c                                           ; $5a1e: $81
	rst  $38                                         ; $5a1f: $ff
	ld   [bc], a                                     ; $5a20: $02
	dec  de                                          ; $5a21: $1b
	rst  $38                                         ; $5a22: $ff
	ld   h, c                                        ; $5a23: $61
	add  c                                           ; $5a24: $81
	inc  b                                           ; $5a25: $04
	add  c                                           ; $5a26: $81
	dec  b                                           ; $5a27: $05
	ld   bc, $7f04                                   ; $5a28: $01 $04 $7f
	add  e                                           ; $5a2b: $83
	rst  $38                                         ; $5a2c: $ff
	ld   [bc], a                                     ; $5a2d: $02
	nop                                              ; $5a2e: $00
	rst  $38                                         ; $5a2f: $ff
	sub  h                                           ; $5a30: $94
	add  c                                           ; $5a31: $81
	cp   $02                                         ; $5a32: $fe $02
	ld   a, [hl-]                                    ; $5a34: $3a
	ld   a, [hl]                                     ; $5a35: $7e
	ld   l, [hl]                                     ; $5a36: $6e
	add  c                                           ; $5a37: $81
	ld   a, [hl]                                     ; $5a38: $7e
	ld   b, $ba                                      ; $5a39: $06 $ba
	cp   $7c                                         ; $5a3b: $fe $7c
	rst  $38                                         ; $5a3d: $ff
	xor  a                                           ; $5a3e: $af
	rst  $38                                         ; $5a3f: $ff
	xor  l                                           ; $5a40: $ad
	add  c                                           ; $5a41: $81
	rst  $38                                         ; $5a42: $ff
	inc  b                                           ; $5a43: $04
	cp   $ff                                         ; $5a44: $fe $ff
	cp   $ff                                         ; $5a46: $fe $ff
	ld   sp, hl                                      ; $5a48: $f9

jr_073_5a49:
	add  e                                           ; $5a49: $83
	rst  $38                                         ; $5a4a: $ff
	jr   jr_073_5a49                                 ; $5a4b: $18 $fc

	rst  $38                                         ; $5a4d: $ff
	or   [hl]                                        ; $5a4e: $b6
	rst  $38                                         ; $5a4f: $ff
	cp   a                                           ; $5a50: $bf
	rst  $38                                         ; $5a51: $ff
	sbc  a                                           ; $5a52: $9f
	rst  $38                                         ; $5a53: $ff
	db   $fd                                         ; $5a54: $fd
	rst  $38                                         ; $5a55: $ff
	ld   a, a                                        ; $5a56: $7f
	rst  $38                                         ; $5a57: $ff
	rra                                              ; $5a58: $1f
	rst  $38                                         ; $5a59: $ff
	rra                                              ; $5a5a: $1f
	rst  $38                                         ; $5a5b: $ff
	ld   a, a                                        ; $5a5c: $7f
	rst  $38                                         ; $5a5d: $ff
	sbc  h                                           ; $5a5e: $9c
	rst  $38                                         ; $5a5f: $ff
	cp   $ff                                         ; $5a60: $fe $ff
	ld   e, a                                        ; $5a62: $5f
	rst  $38                                         ; $5a63: $ff
	db   $fc                                         ; $5a64: $fc
	add  c                                           ; $5a65: $81
	rst  $38                                         ; $5a66: $ff
	ld   [bc], a                                     ; $5a67: $02
	db   $fc                                         ; $5a68: $fc
	rst  $38                                         ; $5a69: $ff
	db   $fc                                         ; $5a6a: $fc
	add  c                                           ; $5a6b: $81
	rst  $38                                         ; $5a6c: $ff
	db   $10                                         ; $5a6d: $10
	or   [hl]                                        ; $5a6e: $b6
	cp   $1e                                         ; $5a6f: $fe $1e
	cp   $1e                                         ; $5a71: $fe $1e
	cp   $3e                                         ; $5a73: $fe $3e
	cp   $3d                                         ; $5a75: $fe $3d
	rst  $38                                         ; $5a77: $ff
	rra                                              ; $5a78: $1f
	rst  $38                                         ; $5a79: $ff
	ld   e, $ff                                      ; $5a7a: $1e $ff
	db   $fd                                         ; $5a7c: $fd
	rst  $38                                         ; $5a7d: $ff
	pop  hl                                          ; $5a7e: $e1
	adc  l                                           ; $5a7f: $8d
	nop                                              ; $5a80: $00
	jr   @+$04                                       ; $5a81: $18 $02

	nop                                              ; $5a83: $00
	stop                                             ; $5a84: $10 $00
	stop                                             ; $5a86: $10 $00
	stop                                             ; $5a88: $10 $00
	stop                                             ; $5a8a: $10 $00
	ld   [de], a                                     ; $5a8c: $12
	inc  bc                                          ; $5a8d: $03
	rrca                                             ; $5a8e: $0f
	inc  e                                           ; $5a8f: $1c
	db   $fc                                         ; $5a90: $fc
	db   $e3                                         ; $5a91: $e3
	sub  h                                           ; $5a92: $94
	ld   bc, $0109                                   ; $5a93: $01 $09 $01
	ld   [$0701], sp                                 ; $5a96: $08 $01 $07
	ld   c, $7e                                      ; $5a99: $0e $7e
	add  b                                           ; $5a9b: $80
	ld   [hl], c                                     ; $5a9c: $71
	ld   e, $8f                                      ; $5a9d: $1e $8f
	adc  b                                           ; $5a9f: $88
	ld   a, a                                        ; $5aa0: $7f
	ld   b, h                                        ; $5aa1: $44
	rst  $38                                         ; $5aa2: $ff
	db   $e3                                         ; $5aa3: $e3
	daa                                              ; $5aa4: $27
	inc  bc                                          ; $5aa5: $03
	ccf                                              ; $5aa6: $3f
	dec  de                                          ; $5aa7: $1b
	rst  $38                                         ; $5aa8: $ff
	ld   e, [hl]                                     ; $5aa9: $5e
	rst  $38                                         ; $5aaa: $ff
	halt                                             ; $5aab: $76
	rst  $38                                         ; $5aac: $ff
	or   a                                           ; $5aad: $b7
	rst  $38                                         ; $5aae: $ff
	cp   a                                           ; $5aaf: $bf
	rst  $38                                         ; $5ab0: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ab1: $cf
	rst  $38                                         ; $5ab2: $ff
	jp   $fbfe                                       ; $5ab3: $c3 $fe $fb


	ld   sp, hl                                      ; $5ab6: $f9
	rst  $30                                         ; $5ab7: $f7
	rst  $20                                         ; $5ab8: $e7
	db   $e4                                         ; $5ab9: $e4
	call nz, $10d0                                   ; $5aba: $c4 $d0 $10
	add  b                                           ; $5abd: $80
	jr   nz, jr_073_5ac3                             ; $5abe: $20 $03

	ld   h, b                                        ; $5ac0: $60
	ldh  [$b0], a                                    ; $5ac1: $e0 $b0

jr_073_5ac3:
	jr   nc, @-$7e                                   ; $5ac3: $30 $80

	ld   d, l                                        ; $5ac5: $55
	add  b                                           ; $5ac6: $80
	ld   [hl], c                                     ; $5ac7: $71
	add  b                                           ; $5ac8: $80
	add  [hl]                                        ; $5ac9: $86
	add  b                                           ; $5aca: $80
	ld   [bc], a                                     ; $5acb: $02
	add  b                                           ; $5acc: $80
	ld   bc, $0382                                   ; $5acd: $01 $82 $03
	add  b                                           ; $5ad0: $80
	ld   c, $00                                      ; $5ad1: $0e $00
	nop                                              ; $5ad3: $00
	add  b                                           ; $5ad4: $80
	rst  $38                                         ; $5ad5: $ff
	inc  de                                          ; $5ad6: $13
	ccf                                              ; $5ad7: $3f
	inc  a                                           ; $5ad8: $3c
	rra                                              ; $5ad9: $1f
	ld   [hl], e                                     ; $5ada: $73
	ld   a, a                                        ; $5adb: $7f
	sub  a                                           ; $5adc: $97
	sbc  a                                           ; $5add: $9f
	rra                                              ; $5ade: $1f
	ccf                                              ; $5adf: $3f
	or   a                                           ; $5ae0: $b7
	cp   a                                           ; $5ae1: $bf
	cpl                                              ; $5ae2: $2f
	ld   a, a                                        ; $5ae3: $7f
	ld   h, b                                        ; $5ae4: $60
	rst  $38                                         ; $5ae5: $ff
	rra                                              ; $5ae6: $1f
	rst  $38                                         ; $5ae7: $ff
	rst  $20                                         ; $5ae8: $e7
	rst  $38                                         ; $5ae9: $ff
	ld   sp, hl                                      ; $5aea: $f9
	add  c                                           ; $5aeb: $81
	rst  $38                                         ; $5aec: $ff
	inc  c                                           ; $5aed: $0c
	cp   $ff                                         ; $5aee: $fe $ff
	db   $fd                                         ; $5af0: $fd
	rst  $38                                         ; $5af1: $ff
	ld   sp, hl                                      ; $5af2: $f9
	rst  $38                                         ; $5af3: $ff
	and  a                                           ; $5af4: $a7
	rst  $28                                         ; $5af5: $ef
	db   $ec                                         ; $5af6: $ec
	rst  $28                                         ; $5af7: $ef
	ld   l, h                                        ; $5af8: $6c
	rst  $28                                         ; $5af9: $ef
	db   $ec                                         ; $5afa: $ec
	add  d                                           ; $5afb: $82
	rst  $28                                         ; $5afc: $ef
	dec  h                                           ; $5afd: $25
	rst  $38                                         ; $5afe: $ff
	ret  nc                                          ; $5aff: $d0

	rst  $38                                         ; $5b00: $ff
	rst  $28                                         ; $5b01: $ef
	rst  $38                                         ; $5b02: $ff
	inc  l                                           ; $5b03: $2c
	rst  $38                                         ; $5b04: $ff
	inc  sp                                          ; $5b05: $33
	db   $fc                                         ; $5b06: $fc
	ld   sp, $3dfd                                   ; $5b07: $31 $fd $3d
	rst  $38                                         ; $5b0a: $ff
	db   $fc                                         ; $5b0b: $fc
	rst  $38                                         ; $5b0c: $ff
	ld   b, b                                        ; $5b0d: $40
	rst  $38                                         ; $5b0e: $ff
	or   [hl]                                        ; $5b0f: $b6
	rst  $38                                         ; $5b10: $ff
	ccf                                              ; $5b11: $3f
	rst  $38                                         ; $5b12: $ff
	jr   c, @+$01                                    ; $5b13: $38 $ff

	nop                                              ; $5b15: $00
	rst  $38                                         ; $5b16: $ff
	ld   b, b                                        ; $5b17: $40
	rst  $38                                         ; $5b18: $ff
	ret  nz                                          ; $5b19: $c0

	rst  $38                                         ; $5b1a: $ff
	ccf                                              ; $5b1b: $3f
	rst  $38                                         ; $5b1c: $ff
	jr   nz, @+$01                                   ; $5b1d: $20 $ff

	ld   c, [hl]                                     ; $5b1f: $4e
	rst  $38                                         ; $5b20: $ff
	and  a                                           ; $5b21: $a7
	rst  $38                                         ; $5b22: $ff
	rst  JumpTable                                         ; $5b23: $df
	add  e                                           ; $5b24: $83
	rst  $38                                         ; $5b25: $ff
	add  c                                           ; $5b26: $81
	ei                                               ; $5b27: $fb
	add  c                                           ; $5b28: $81
	db   $db                                         ; $5b29: $db
	nop                                              ; $5b2a: $00
	db   $d3                                         ; $5b2b: $d3
	add  c                                           ; $5b2c: $81
	db   $db                                         ; $5b2d: $db
	nop                                              ; $5b2e: $00
	add  b                                           ; $5b2f: $80
	add  l                                           ; $5b30: $85
	rst  $38                                         ; $5b31: $ff
	nop                                              ; $5b32: $00
	db   $fc                                         ; $5b33: $fc
	add  c                                           ; $5b34: $81
	rst  $38                                         ; $5b35: $ff
	nop                                              ; $5b36: $00
	ld   sp, hl                                      ; $5b37: $f9
	add  c                                           ; $5b38: $81
	rst  $38                                         ; $5b39: $ff
	ld   [$ff04], sp                                 ; $5b3a: $08 $04 $ff
	add  b                                           ; $5b3d: $80
	rst  $38                                         ; $5b3e: $ff
	ld   a, d                                        ; $5b3f: $7a
	rst  $38                                         ; $5b40: $ff
	ldh  a, [rIE]                                    ; $5b41: $f0 $ff
	push af                                          ; $5b43: $f5
	add  c                                           ; $5b44: $81
	rst  $38                                         ; $5b45: $ff
	inc  c                                           ; $5b46: $0c
	xor  $ff                                         ; $5b47: $ee $ff
	add  h                                           ; $5b49: $84
	rst  $38                                         ; $5b4a: $ff
	sub  l                                           ; $5b4b: $95
	nop                                              ; $5b4c: $00
	cp   a                                           ; $5b4d: $bf
	rst  $38                                         ; $5b4e: $ff
	ccf                                              ; $5b4f: $3f
	rst  $38                                         ; $5b50: $ff
	ld   a, a                                        ; $5b51: $7f
	rst  $38                                         ; $5b52: $ff
	nop                                              ; $5b53: $00
	add  c                                           ; $5b54: $81
	rst  $38                                         ; $5b55: $ff
	inc  b                                           ; $5b56: $04
	ld   b, $ff                                      ; $5b57: $06 $ff
	ld   a, [$69ff]                                  ; $5b59: $fa $ff $69
	add  e                                           ; $5b5c: $83
	sub  l                                           ; $5b5d: $95
	add  b                                           ; $5b5e: $80
	ld   a, [$e080]                                  ; $5b5f: $fa $80 $e0
	ld   bc, $e0a0                                   ; $5b62: $01 $a0 $e0
	add  b                                           ; $5b65: $80
	rst  $38                                         ; $5b66: $ff
	inc  b                                           ; $5b67: $04
	ccf                                              ; $5b68: $3f
	rst  $38                                         ; $5b69: $ff
	add  a                                           ; $5b6a: $87
	rlca                                             ; $5b6b: $07
	rrca                                             ; $5b6c: $0f
	add  b                                           ; $5b6d: $80
	ld   [$0780], sp                                 ; $5b6e: $08 $80 $07
	add  b                                           ; $5b71: $80
	inc  c                                           ; $5b72: $0c
	nop                                              ; $5b73: $00
	ld   bc, $0b80                                   ; $5b74: $01 $80 $0b
	ld   bc, $0b03                                   ; $5b77: $01 $03 $0b
	add  b                                           ; $5b7a: $80
	rrca                                             ; $5b7b: $0f
	nop                                              ; $5b7c: $00
	ld   sp, hl                                      ; $5b7d: $f9
	add  b                                           ; $5b7e: $80
	ld   e, $80                                      ; $5b7f: $1e $80
	ldh  a, [rAUD1LEN]                               ; $5b81: $f0 $11
	add  a                                           ; $5b83: $87
	add  l                                           ; $5b84: $85
	ccf                                              ; $5b85: $3f
	inc  h                                           ; $5b86: $24
	rst  $38                                         ; $5b87: $ff
	add  c                                           ; $5b88: $81
	rst  $38                                         ; $5b89: $ff
	sub  a                                           ; $5b8a: $97
	rst  $38                                         ; $5b8b: $ff
	ld   a, a                                        ; $5b8c: $7f
	rst  $38                                         ; $5b8d: $ff
	ld   d, c                                        ; $5b8e: $51
	ccf                                              ; $5b8f: $3f
	reti                                             ; $5b90: $d9


	rst  $38                                         ; $5b91: $ff
	rlca                                             ; $5b92: $07
	rst  $38                                         ; $5b93: $ff
	ccf                                              ; $5b94: $3f
	add  a                                           ; $5b95: $87
	rst  $38                                         ; $5b96: $ff
	ld   [bc], a                                     ; $5b97: $02
	ldh  a, [$fe]                                    ; $5b98: $f0 $fe
	or   $81                                         ; $5b9a: $f6 $81
	rst  $38                                         ; $5b9c: $ff
	ld   [bc], a                                     ; $5b9d: $02
	cp   $ff                                         ; $5b9e: $fe $ff
	ld   sp, hl                                      ; $5ba0: $f9
	add  l                                           ; $5ba1: $85
	rst  $38                                         ; $5ba2: $ff
	add  b                                           ; $5ba3: $80
	ld   h, a                                        ; $5ba4: $67
	ld   a, [bc]                                     ; $5ba5: $0a
	ld   c, $8e                                      ; $5ba6: $0e $8e
	adc  b                                           ; $5ba8: $88
	db   $eb                                         ; $5ba9: $eb
	db   $e3                                         ; $5baa: $e3
	rst  $38                                         ; $5bab: $ff
	ld   a, a                                        ; $5bac: $7f
	rst  $38                                         ; $5bad: $ff
	cp   h                                           ; $5bae: $bc
	rst  $38                                         ; $5baf: $ff
	jp   $ff81                                       ; $5bb0: $c3 $81 $ff


	ld   a, [bc]                                     ; $5bb3: $0a
	jr   nc, @+$33                                   ; $5bb4: $30 $31

	reti                                             ; $5bb6: $d9


	db   $db                                         ; $5bb7: $db
	inc  de                                          ; $5bb8: $13
	sbc  a                                           ; $5bb9: $9f
	adc  h                                           ; $5bba: $8c
	rst  $38                                         ; $5bbb: $ff
	di                                               ; $5bbc: $f3
	rst  $38                                         ; $5bbd: $ff
	rrca                                             ; $5bbe: $0f
	add  e                                           ; $5bbf: $83
	rst  $38                                         ; $5bc0: $ff
	inc  b                                           ; $5bc1: $04
	ccf                                              ; $5bc2: $3f
	rst  $38                                         ; $5bc3: $ff
	ld   a, [$3aff]                                  ; $5bc4: $fa $ff $3a
	add  a                                           ; $5bc7: $87
	rst  $38                                         ; $5bc8: $ff
	ld   [de], a                                     ; $5bc9: $12
	cp   $ff                                         ; $5bca: $fe $ff
	add  l                                           ; $5bcc: $85
	rst  $38                                         ; $5bcd: $ff
	ld   a, d                                        ; $5bce: $7a
	rst  $38                                         ; $5bcf: $ff
	rrca                                             ; $5bd0: $0f
	rst  $38                                         ; $5bd1: $ff
	ei                                               ; $5bd2: $fb
	rst  $38                                         ; $5bd3: $ff
	rst  $20                                         ; $5bd4: $e7
	rst  $38                                         ; $5bd5: $ff
	rst  ToBoot                                         ; $5bd6: $c7
	rst  $38                                         ; $5bd7: $ff
	sbc  [hl]                                        ; $5bd8: $9e
	rst  $38                                         ; $5bd9: $ff
	ld   e, d                                        ; $5bda: $5a
	rst  $38                                         ; $5bdb: $ff
	xor  $83                                         ; $5bdc: $ee $83
	rst  $38                                         ; $5bde: $ff
	ld   a, [bc]                                     ; $5bdf: $0a
	ld   l, a                                        ; $5be0: $6f
	rst  $38                                         ; $5be1: $ff
	ld   a, a                                        ; $5be2: $7f
	rst  $38                                         ; $5be3: $ff
	ld   sp, hl                                      ; $5be4: $f9
	rst  $38                                         ; $5be5: $ff
	cp   $ff                                         ; $5be6: $fe $ff
	cp   $ff                                         ; $5be8: $fe $ff
	jp   hl                                          ; $5bea: $e9


	add  a                                           ; $5beb: $87
	rst  $38                                         ; $5bec: $ff
	ld   b, $df                                      ; $5bed: $06 $df
	rst  $38                                         ; $5bef: $ff
	cp   [hl]                                        ; $5bf0: $be
	rst  $38                                         ; $5bf1: $ff
	db   $eb                                         ; $5bf2: $eb
	rst  $38                                         ; $5bf3: $ff
	sbc  h                                           ; $5bf4: $9c
	add  e                                           ; $5bf5: $83
	rst  $38                                         ; $5bf6: $ff
	nop                                              ; $5bf7: $00
	db   $ed                                         ; $5bf8: $ed
	add  c                                           ; $5bf9: $81
	rst  $38                                         ; $5bfa: $ff
	ld   b, $ef                                      ; $5bfb: $06 $ef
	rst  $38                                         ; $5bfd: $ff
	cp   a                                           ; $5bfe: $bf
	rst  $38                                         ; $5bff: $ff
	ei                                               ; $5c00: $fb
	rst  $38                                         ; $5c01: $ff
	ld   b, l                                        ; $5c02: $45
	add  c                                           ; $5c03: $81
	ei                                               ; $5c04: $fb
	add  d                                           ; $5c05: $82
	ld   sp, hl                                      ; $5c06: $f9
	inc  b                                           ; $5c07: $04
	reti                                             ; $5c08: $d9


	ld   sp, hl                                      ; $5c09: $f9
	ld   a, c                                        ; $5c0a: $79
	ld   hl, sp-$48                                  ; $5c0b: $f8 $b8
	add  c                                           ; $5c0d: $81
	ld   hl, sp+$00                                  ; $5c0e: $f8 $00
	db   $f4                                         ; $5c10: $f4
	add  a                                           ; $5c11: $87
	rst  $38                                         ; $5c12: $ff
	nop                                              ; $5c13: $00
	cp   a                                           ; $5c14: $bf
	add  e                                           ; $5c15: $83
	rst  $38                                         ; $5c16: $ff
	ld   a, [bc]                                     ; $5c17: $0a
	cp   e                                           ; $5c18: $bb
	rst  $38                                         ; $5c19: $ff
	db   $f4                                         ; $5c1a: $f4
	rst  $38                                         ; $5c1b: $ff
	push hl                                          ; $5c1c: $e5
	rst  $38                                         ; $5c1d: $ff
	call $89ff                                       ; $5c1e: $cd $ff $89
	rst  $38                                         ; $5c21: $ff
	xor  d                                           ; $5c22: $aa
	add  c                                           ; $5c23: $81
	rst  $38                                         ; $5c24: $ff
	ld   b, $f0                                      ; $5c25: $06 $f0
	rst  $38                                         ; $5c27: $ff
	pop  af                                          ; $5c28: $f1
	rst  $38                                         ; $5c29: $ff
	inc  b                                           ; $5c2a: $04
	rst  $38                                         ; $5c2b: $ff
	cp   $81                                         ; $5c2c: $fe $81
	db   $fc                                         ; $5c2e: $fc
	add  b                                           ; $5c2f: $80
	cp   $0a                                         ; $5c30: $fe $0a
	dec  b                                           ; $5c32: $05
	db   $fd                                         ; $5c33: $fd
	add  [hl]                                        ; $5c34: $86
	cp   $7f                                         ; $5c35: $fe $7f
	rst  $38                                         ; $5c37: $ff
	inc  b                                           ; $5c38: $04
	rst  $38                                         ; $5c39: $ff
	add  a                                           ; $5c3a: $87
	rst  $38                                         ; $5c3b: $ff

jr_073_5c3c:
	ld   a, e                                        ; $5c3c: $7b
	add  e                                           ; $5c3d: $83
	nop                                              ; $5c3e: $00
	add  b                                           ; $5c3f: $80
	ret  nz                                          ; $5c40: $c0

	add  b                                           ; $5c41: $80
	rrca                                             ; $5c42: $0f
	add  b                                           ; $5c43: $80
	jp   $01d2                                       ; $5c44: $c3 $d2 $01


	add  [hl]                                        ; $5c47: $86
	nop                                              ; $5c48: $00
	nop                                              ; $5c49: $00
	inc  c                                           ; $5c4a: $0c
	add  c                                           ; $5c4b: $81
	inc  bc                                          ; $5c4c: $03
	nop                                              ; $5c4d: $00
	ld   [bc], a                                     ; $5c4e: $02
	add  c                                           ; $5c4f: $81
	inc  bc                                          ; $5c50: $03
	nop                                              ; $5c51: $00
	ld   c, $85                                      ; $5c52: $0e $85
	nop                                              ; $5c54: $00
	nop                                              ; $5c55: $00
	ld   a, h                                        ; $5c56: $7c
	add  c                                           ; $5c57: $81
	add  e                                           ; $5c58: $83
	add  d                                           ; $5c59: $82
	add  [hl]                                        ; $5c5a: $86
	nop                                              ; $5c5b: $00
	rst  $38                                         ; $5c5c: $ff
	add  l                                           ; $5c5d: $85
	nop                                              ; $5c5e: $00
	nop                                              ; $5c5f: $00
	pop  bc                                          ; $5c60: $c1
	add  c                                           ; $5c61: $81
	ld   a, $80                                      ; $5c62: $3e $80
	ld   a, h                                        ; $5c64: $7c
	add  b                                           ; $5c65: $80
	ld   a, d                                        ; $5c66: $7a
	nop                                              ; $5c67: $00
	rst  $38                                         ; $5c68: $ff
	add  l                                           ; $5c69: $85
	nop                                              ; $5c6a: $00
	nop                                              ; $5c6b: $00
	rst  $38                                         ; $5c6c: $ff
	add  l                                           ; $5c6d: $85
	ld   a, a                                        ; $5c6e: $7f
	nop                                              ; $5c6f: $00
	add  b                                           ; $5c70: $80
	add  l                                           ; $5c71: $85
	nop                                              ; $5c72: $00
	inc  bc                                          ; $5c73: $03
	add  hl, bc                                      ; $5c74: $09
	or   $76                                         ; $5c75: $f6 $76
	or   $80                                         ; $5c77: $f6 $80
	ei                                               ; $5c79: $fb
	ld   [bc], a                                     ; $5c7a: $02
	cp   e                                           ; $5c7b: $bb
	ei                                               ; $5c7c: $fb
	ccf                                              ; $5c7d: $3f
	add  l                                           ; $5c7e: $85
	nop                                              ; $5c7f: $00
	nop                                              ; $5c80: $00
	inc  h                                           ; $5c81: $24
	add  c                                           ; $5c82: $81
	db   $db                                         ; $5c83: $db
	add  d                                           ; $5c84: $82
	ld   l, l                                        ; $5c85: $6d
	nop                                              ; $5c86: $00
	rst  $38                                         ; $5c87: $ff
	add  l                                           ; $5c88: $85
	nop                                              ; $5c89: $00
	nop                                              ; $5c8a: $00
	sub  d                                           ; $5c8b: $92
	add  c                                           ; $5c8c: $81
	ld   l, l                                        ; $5c8d: $6d
	add  d                                           ; $5c8e: $82
	or   [hl]                                        ; $5c8f: $b6
	nop                                              ; $5c90: $00
	rst  $38                                         ; $5c91: $ff
	add  l                                           ; $5c92: $85
	nop                                              ; $5c93: $00
	nop                                              ; $5c94: $00
	ld   e, a                                        ; $5c95: $5f
	add  c                                           ; $5c96: $81
	ldh  [rP1], a                                    ; $5c97: $e0 $00
	sub  b                                           ; $5c99: $90
	add  c                                           ; $5c9a: $81
	ldh  a, [rP1]                                    ; $5c9b: $f0 $00
	rst  JumpTable                                         ; $5c9d: $df
	add  l                                           ; $5c9e: $85
	nop                                              ; $5c9f: $00
	ld   [$4ab5], sp                                 ; $5ca0: $08 $b5 $4a
	ld   d, c                                        ; $5ca3: $51
	ld   d, l                                        ; $5ca4: $55
	ld   d, c                                        ; $5ca5: $51
	ld   d, l                                        ; $5ca6: $55
	nop                                              ; $5ca7: $00
	inc  bc                                          ; $5ca8: $03
	db   $fc                                         ; $5ca9: $fc
	add  l                                           ; $5caa: $85
	nop                                              ; $5cab: $00
	nop                                              ; $5cac: $00
	ld   a, a                                        ; $5cad: $7f
	add  c                                           ; $5cae: $81
	cp   a                                           ; $5caf: $bf
	inc  b                                           ; $5cb0: $04
	rst  $38                                         ; $5cb1: $ff
	rst  JumpTable                                         ; $5cb2: $df
	rra                                              ; $5cb3: $1f
	rst  JumpTable                                         ; $5cb4: $df
	jr   nz, jr_073_5c3c                             ; $5cb5: $20 $85

	nop                                              ; $5cb7: $00
	nop                                              ; $5cb8: $00
	pop  af                                          ; $5cb9: $f1
	add  l                                           ; $5cba: $85
	cp   $00                                         ; $5cbb: $fe $00
	rrca                                             ; $5cbd: $0f
	add  l                                           ; $5cbe: $85
	nop                                              ; $5cbf: $00
	add  [hl]                                        ; $5cc0: $86
	rst  $38                                         ; $5cc1: $ff
	add  [hl]                                        ; $5cc2: $86
	nop                                              ; $5cc3: $00
	ld   [$fffd], sp                                 ; $5cc4: $08 $fd $ff
	ld   sp, hl                                      ; $5cc7: $f9
	rst  $38                                         ; $5cc8: $ff
	pop  af                                          ; $5cc9: $f1
	rst  $38                                         ; $5cca: $ff
	pop  hl                                          ; $5ccb: $e1
	rst  $38                                         ; $5ccc: $ff
	inc  d                                           ; $5ccd: $14
	add  l                                           ; $5cce: $85
	nop                                              ; $5ccf: $00
	nop                                              ; $5cd0: $00
	cp   $85                                         ; $5cd1: $fe $85
	rst  $38                                         ; $5cd3: $ff
	nop                                              ; $5cd4: $00
	ld   bc, $0085                                   ; $5cd5: $01 $85 $00
	nop                                              ; $5cd8: $00
	ld   a, a                                        ; $5cd9: $7f
	add  l                                           ; $5cda: $85
	add  e                                           ; $5cdb: $83
	nop                                              ; $5cdc: $00
	db   $fc                                         ; $5cdd: $fc
	add  l                                           ; $5cde: $85
	nop                                              ; $5cdf: $00
	add  [hl]                                        ; $5ce0: $86
	rst  $38                                         ; $5ce1: $ff
	inc  bc                                          ; $5ce2: $03
	dec  c                                           ; $5ce3: $0d
	inc  bc                                          ; $5ce4: $03
	nop                                              ; $5ce5: $00
	ld   bc, $0380                                   ; $5ce6: $01 $80 $03
	nop                                              ; $5ce9: $00
	ld   [bc], a                                     ; $5cea: $02
	add  l                                           ; $5ceb: $85
	inc  bc                                          ; $5cec: $03
	ld   a, [bc]                                     ; $5ced: $0a
	ld   [bc], a                                     ; $5cee: $02
	inc  bc                                          ; $5cef: $03
	ld   a, b                                        ; $5cf0: $78
	adc  h                                           ; $5cf1: $8c
	adc  b                                           ; $5cf2: $88
	adc  h                                           ; $5cf3: $8c
	sub  b                                           ; $5cf4: $90
	sbc  b                                           ; $5cf5: $98
	sub  b                                           ; $5cf6: $90
	sbc  b                                           ; $5cf7: $98
	add  c                                           ; $5cf8: $81

jr_073_5cf9:
	add  c                                           ; $5cf9: $81
	sub  c                                           ; $5cfa: $91
	add  d                                           ; $5cfb: $82
	sub  d                                           ; $5cfc: $92
	ld   bc, $f4e4                                   ; $5cfd: $01 $e4 $f4
	add  b                                           ; $5d00: $80
	ld   [$2480], a                                  ; $5d01: $ea $80 $24
	add  b                                           ; $5d04: $80
	ret  c                                           ; $5d05: $d8

	add  d                                           ; $5d06: $82
	inc  b                                           ; $5d07: $04
	add  b                                           ; $5d08: $80
	ld   [$f002], sp                                 ; $5d09: $08 $02 $f0
	ld   hl, sp+$08                                  ; $5d0c: $f8 $08
	add  e                                           ; $5d0e: $83
	ld   a, a                                        ; $5d0f: $7f
	inc  bc                                          ; $5d10: $03
	ld   bc, $257f                                   ; $5d11: $01 $7f $25
	ld   l, l                                        ; $5d14: $6d
	add  h                                           ; $5d15: $84
	reti                                             ; $5d16: $d9


	inc  bc                                          ; $5d17: $03
	ld   [hl], h                                     ; $5d18: $74
	db   $fd                                         ; $5d19: $fd
	db   $dd                                         ; $5d1a: $dd
	db   $fd                                         ; $5d1b: $fd
	adc  d                                           ; $5d1c: $8a
	cp   $00                                         ; $5d1d: $fe $00
	ld   d, [hl]                                     ; $5d1f: $56
	add  c                                           ; $5d20: $81
	or   [hl]                                        ; $5d21: $b6
	add  b                                           ; $5d22: $80
	db   $db                                         ; $5d23: $db
	add  c                                           ; $5d24: $81
	nop                                              ; $5d25: $00
	add  c                                           ; $5d26: $81
	rst  $38                                         ; $5d27: $ff
	inc  b                                           ; $5d28: $04
	add  e                                           ; $5d29: $83
	rst  $38                                         ; $5d2a: $ff
	add  e                                           ; $5d2b: $83
	and  e                                           ; $5d2c: $a3
	ld   a, b                                        ; $5d2d: $78
	add  c                                           ; $5d2e: $81
	db   $db                                         ; $5d2f: $db
	add  b                                           ; $5d30: $80
	ld   l, l                                        ; $5d31: $6d
	add  c                                           ; $5d32: $81
	nop                                              ; $5d33: $00
	add  c                                           ; $5d34: $81
	rst  $38                                         ; $5d35: $ff
	ld   bc, $ff00                                   ; $5d36: $01 $00 $ff
	add  b                                           ; $5d39: $80
	nop                                              ; $5d3a: $00
	nop                                              ; $5d3b: $00
	ld   l, b                                        ; $5d3c: $68
	add  c                                           ; $5d3d: $81
	ld   a, b                                        ; $5d3e: $78
	add  hl, bc                                      ; $5d3f: $09
	and  b                                           ; $5d40: $a0
	cp   b                                           ; $5d41: $b8
	db   $10                                         ; $5d42: $10
	jr   jr_073_5d45                                 ; $5d43: $18 $00

jr_073_5d45:
	ld   hl, sp-$18                                  ; $5d45: $f8 $e8
	ld   hl, sp+$08                                  ; $5d47: $f8 $08
	ld   hl, sp-$80                                  ; $5d49: $f8 $80
	sbc  b                                           ; $5d4b: $98
	dec  b                                           ; $5d4c: $05
	ldh  [$f8], a                                    ; $5d4d: $e0 $f8
	cp   $c7                                         ; $5d4f: $fe $c7
	push bc                                          ; $5d51: $c5
	ret  nz                                          ; $5d52: $c0

	add  b                                           ; $5d53: $80
	rst  $10                                         ; $5d54: $d7
	ld   bc, $ebe9                                   ; $5d55: $01 $e9 $eb
	add  b                                           ; $5d58: $80
	push de                                          ; $5d59: $d5
	nop                                              ; $5d5a: $00
	cp   $81                                         ; $5d5b: $fe $81
	rst  $38                                         ; $5d5d: $ff
	nop                                              ; $5d5e: $00
	ccf                                              ; $5d5f: $3f
	add  b                                           ; $5d60: $80
	rrca                                             ; $5d61: $0f
	add  b                                           ; $5d62: $80
	rst  $28                                         ; $5d63: $ef
	nop                                              ; $5d64: $00
	rlca                                             ; $5d65: $07
	add  b                                           ; $5d66: $80
	rst  $30                                         ; $5d67: $f7
	jr   c, jr_073_5cf9                              ; $5d68: $38 $8f

	cp   e                                           ; $5d6a: $bb
	cp   d                                           ; $5d6b: $ba
	cp   e                                           ; $5d6c: $bb
	or   $c5                                         ; $5d6d: $f6 $c5
	xor  b                                           ; $5d6f: $a8
	cp   c                                           ; $5d70: $b9
	ld   e, $fe                                      ; $5d71: $1e $fe
	ldh  [$f0], a                                    ; $5d73: $e0 $f0
	adc  $fe                                         ; $5d75: $ce $fe
	adc  [hl]                                        ; $5d77: $8e
	cp   $0e                                         ; $5d78: $fe $0e
	cp   $0e                                         ; $5d7a: $fe $0e
	cp   $0e                                         ; $5d7c: $fe $0e
	cp   $0e                                         ; $5d7e: $fe $0e
	cp   $a0                                         ; $5d80: $fe $a0
	nop                                              ; $5d82: $00
	ld   d, l                                        ; $5d83: $55
	ld   a, a                                        ; $5d84: $7f
	ld   bc, $037f                                   ; $5d85: $01 $7f $03
	ld   a, a                                        ; $5d88: $7f
	ld   b, $7f                                      ; $5d89: $06 $7f
	inc  c                                           ; $5d8b: $0c
	ld   a, a                                        ; $5d8c: $7f
	dec  e                                           ; $5d8d: $1d
	ld   a, a                                        ; $5d8e: $7f
	jr   nc, jr_073_5e08                             ; $5d8f: $30 $77

	rlca                                             ; $5d91: $07
	ld   bc, $ffd1                                   ; $5d92: $01 $d1 $ff
	adc  a                                           ; $5d95: $8f
	rst  $38                                         ; $5d96: $ff
	rra                                              ; $5d97: $1f
	rst  $38                                         ; $5d98: $ff
	ccf                                              ; $5d99: $3f
	rst  $38                                         ; $5d9a: $ff
	ld   a, a                                        ; $5d9b: $7f
	rst  $38                                         ; $5d9c: $ff
	rrca                                             ; $5d9d: $0f
	rst  $38                                         ; $5d9e: $ff
	rlca                                             ; $5d9f: $07
	rst  $38                                         ; $5da0: $ff
	or   $89                                         ; $5da1: $f6 $89
	rst  $38                                         ; $5da3: $ff
	inc  b                                           ; $5da4: $04
	db   $fc                                         ; $5da5: $fc
	cp   $f1                                         ; $5da6: $fe $f1
	rst  $38                                         ; $5da8: $ff
	ld   [hl], d                                     ; $5da9: $72

jr_073_5daa:
	add  b                                           ; $5daa: $80
	add  e                                           ; $5dab: $83
	add  c                                           ; $5dac: $81
	add  d                                           ; $5dad: $82
	add  d                                           ; $5dae: $82
	add  e                                           ; $5daf: $83
	add  b                                           ; $5db0: $80
	ld   [bc], a                                     ; $5db1: $02
	add  c                                           ; $5db2: $81
	add  d                                           ; $5db3: $82
	dec  bc                                          ; $5db4: $0b
	add  e                                           ; $5db5: $83
	db   $e3                                         ; $5db6: $e3
	rst  $38                                         ; $5db7: $ff
	ld   l, a                                        ; $5db8: $6f
	rst  $38                                         ; $5db9: $ff
	ld   a, a                                        ; $5dba: $7f
	rst  $38                                         ; $5dbb: $ff
	rrca                                             ; $5dbc: $0f
	rra                                              ; $5dbd: $1f
	rst  $28                                         ; $5dbe: $ef
	rst  $38                                         ; $5dbf: $ff
	sbc  a                                           ; $5dc0: $9f
	add  c                                           ; $5dc1: $81
	rst  $38                                         ; $5dc2: $ff
	ld   [bc], a                                     ; $5dc3: $02
	rrca                                             ; $5dc4: $0f
	ld   a, a                                        ; $5dc5: $7f
	rst  $28                                         ; $5dc6: $ef
	add  e                                           ; $5dc7: $83
	nop                                              ; $5dc8: $00
	add  b                                           ; $5dc9: $80
	ld   bc, $0080                                   ; $5dca: $01 $80 $00

jr_073_5dcd:
	add  b                                           ; $5dcd: $80
	inc  b                                           ; $5dce: $04
	add  b                                           ; $5dcf: $80
	nop                                              ; $5dd0: $00
	add  b                                           ; $5dd1: $80
	add  hl, bc                                      ; $5dd2: $09
	inc  bc                                          ; $5dd3: $03
	db   $f4                                         ; $5dd4: $f4
	inc  d                                           ; $5dd5: $14
	ld   b, l                                        ; $5dd6: $45
	ld   d, l                                        ; $5dd7: $55
	add  b                                           ; $5dd8: $80
	ret  z                                           ; $5dd9: $c8

	ld   c, $8a                                      ; $5dda: $0e $8a
	adc  e                                           ; $5ddc: $8b
	add  hl, bc                                      ; $5ddd: $09
	ld   [$8b82], sp                                 ; $5dde: $08 $82 $8b
	adc  c                                           ; $5de1: $89
	adc  b                                           ; $5de2: $88
	ldh  [c], a                                      ; $5de3: $e2
	db   $eb                                         ; $5de4: $eb
	ld   de, $e010                                   ; $5de5: $11 $10 $e0
	ldh  a, [$50]                                    ; $5de8: $f0 $50
	add  b                                           ; $5dea: $80
	ld   h, b                                        ; $5deb: $60
	add  b                                           ; $5dec: $80
	ldh  [$80], a                                    ; $5ded: $e0 $80
	ld   h, b                                        ; $5def: $60
	add  b                                           ; $5df0: $80
	ldh  [rTAC], a                                   ; $5df1: $e0 $07
	ld   h, b                                        ; $5df3: $60
	ld   b, b                                        ; $5df4: $40
	ldh  [rAUD1SWEEP], a                             ; $5df5: $e0 $10
	reti                                             ; $5df7: $d9


	ret  c                                           ; $5df8: $d8

	reti                                             ; $5df9: $d9


	ret  c                                           ; $5dfa: $d8

	add  l                                           ; $5dfb: $85
	reti                                             ; $5dfc: $d9


	ld   [$eda5], sp                                 ; $5dfd: $08 $a5 $ed
	jp   $0fd3                                       ; $5e00: $c3 $d3 $0f


	cp   $1e                                         ; $5e03: $fe $1e
	cp   $1e                                         ; $5e05: $fe $1e
	adc  c                                           ; $5e07: $89

jr_073_5e08:
	cp   $00                                         ; $5e08: $fe $00
	ldh  [$81], a                                    ; $5e0a: $e0 $81
	and  e                                           ; $5e0c: $a3
	ld   bc, $a383                                   ; $5e0d: $01 $83 $a3
	add  b                                           ; $5e10: $80
	cp   e                                           ; $5e11: $bb
	add  [hl]                                        ; $5e12: $86
	and  e                                           ; $5e13: $a3
	ld   [bc], a                                     ; $5e14: $02
	adc  e                                           ; $5e15: $8b
	inc  c                                           ; $5e16: $0c
	nop                                              ; $5e17: $00
	add  c                                           ; $5e18: $81
	inc  b                                           ; $5e19: $04
	ld   [bc], a                                     ; $5e1a: $02
	ei                                               ; $5e1b: $fb
	rst  $38                                         ; $5e1c: $ff
	add  b                                           ; $5e1d: $80
	add  c                                           ; $5e1e: $81
	add  h                                           ; $5e1f: $84
	ld   b, $8b                                      ; $5e20: $06 $8b
	adc  a                                           ; $5e22: $8f
	add  b                                           ; $5e23: $80
	add  h                                           ; $5e24: $84
	nop                                              ; $5e25: $00
	sbc  b                                           ; $5e26: $98
	jr   jr_073_5daa                                 ; $5e27: $18 $81

	sbc  b                                           ; $5e29: $98
	ld   [bc], a                                     ; $5e2a: $02
	ld   a, b                                        ; $5e2b: $78
	ld   hl, sp+$18                                  ; $5e2c: $f8 $18
	add  c                                           ; $5e2e: $81
	sbc  b                                           ; $5e2f: $98
	inc  b                                           ; $5e30: $04
	ld   e, b                                        ; $5e31: $58
	ret  c                                           ; $5e32: $d8

	jr   jr_073_5dcd                                 ; $5e33: $18 $98

	ret  c                                           ; $5e35: $d8

	adc  c                                           ; $5e36: $89
	rst  $38                                         ; $5e37: $ff
	dec  e                                           ; $5e38: $1d
	ld   [hl], a                                     ; $5e39: $77
	rst  $38                                         ; $5e3a: $ff
	ld   b, b                                        ; $5e3b: $40
	rst  $38                                         ; $5e3c: $ff
	ld   a, [bc]                                     ; $5e3d: $0a
	cp   d                                           ; $5e3e: $ba
	jp   nc, $b7fa                                   ; $5e3f: $d2 $fa $b7

	rst  $20                                         ; $5e42: $e7
	ldh  [$ef], a                                    ; $5e43: $e0 $ef
	xor  $ef                                         ; $5e45: $ee $ef
	db   $ed                                         ; $5e47: $ed
	xor  $a9                                         ; $5e48: $ee $a9
	rst  $28                                         ; $5e4a: $ef
	inc  hl                                          ; $5e4b: $23
	rst  $28                                         ; $5e4c: $ef
	jp   hl                                          ; $5e4d: $e9


	cp   $0e                                         ; $5e4e: $fe $0e
	cp   $0e                                         ; $5e50: $fe $0e
	cp   $ac                                         ; $5e52: $fe $ac
	db   $fc                                         ; $5e54: $fc
	ldh  [c], a                                      ; $5e55: $e2
	ld   e, $80                                      ; $5e56: $1e $80
	cp   $10                                         ; $5e58: $fe $10
	add  d                                           ; $5e5a: $82
	cp   $00                                         ; $5e5b: $fe $00
	add  b                                           ; $5e5d: $80
	ld   h, b                                        ; $5e5e: $60
	ld   [hl], a                                     ; $5e5f: $77
	ld   b, a                                        ; $5e60: $47
	ld   [hl], a                                     ; $5e61: $77
	rlca                                             ; $5e62: $07
	ld   [hl], a                                     ; $5e63: $77
	rla                                              ; $5e64: $17
	ld   [hl], a                                     ; $5e65: $77
	scf                                              ; $5e66: $37
	ld   [hl], a                                     ; $5e67: $77
	ld   a, e                                        ; $5e68: $7b
	ld   a, a                                        ; $5e69: $7f
	ld   [hl], e                                     ; $5e6a: $73
	add  c                                           ; $5e6b: $81
	ld   [hl], a                                     ; $5e6c: $77
	nop                                              ; $5e6d: $00
	ld   a, a                                        ; $5e6e: $7f
	add  d                                           ; $5e6f: $82
	rst  $38                                         ; $5e70: $ff
	nop                                              ; $5e71: $00
	cp   $82                                         ; $5e72: $fe $82
	rst  $38                                         ; $5e74: $ff
	ld   [bc], a                                     ; $5e75: $02
	rst  $20                                         ; $5e76: $e7
	rst  $38                                         ; $5e77: $ff
	rst  $20                                         ; $5e78: $e7
	add  c                                           ; $5e79: $81
	rst  $38                                         ; $5e7a: $ff
	inc  b                                           ; $5e7b: $04
	rst  ToBoot                                         ; $5e7c: $c7
	rst  $38                                         ; $5e7d: $ff
	rrca                                             ; $5e7e: $0f
	rst  $38                                         ; $5e7f: $ff
	ccf                                              ; $5e80: $3f
	add  a                                           ; $5e81: $87
	rst  $38                                         ; $5e82: $ff
	ld   [bc], a                                     ; $5e83: $02
	pop  bc                                          ; $5e84: $c1
	rst  $38                                         ; $5e85: $ff
	ld   b, b                                        ; $5e86: $40
	add  l                                           ; $5e87: $85
	add  e                                           ; $5e88: $83
	add  b                                           ; $5e89: $80
	add  d                                           ; $5e8a: $82
	nop                                              ; $5e8b: $00
	add  c                                           ; $5e8c: $81
	add  c                                           ; $5e8d: $81
	add  e                                           ; $5e8e: $83
	add  b                                           ; $5e8f: $80
	inc  bc                                          ; $5e90: $03
	nop                                              ; $5e91: $00
	ld   bc, $ff85                                   ; $5e92: $01 $85 $ff
	add  b                                           ; $5e95: $80
	nop                                              ; $5e96: $00
	add  h                                           ; $5e97: $84
	rst  $38                                         ; $5e98: $ff
	nop                                              ; $5e99: $00
	ld   c, $85                                      ; $5e9a: $0e $85
	ld   bc, $0880                                   ; $5e9c: $01 $80 $08
	add  b                                           ; $5e9f: $80
	nop                                              ; $5ea0: $00
	add  b                                           ; $5ea1: $80
	ld   [bc], a                                     ; $5ea2: $02
	add  b                                           ; $5ea3: $80
	ld   b, $10                                      ; $5ea4: $06 $10
	or   b                                           ; $5ea6: $b0
	ld   c, b                                        ; $5ea7: $48
	xor  d                                           ; $5ea8: $aa
	xor  e                                           ; $5ea9: $ab
	ld   c, c                                        ; $5eaa: $49
	ld   c, b                                        ; $5eab: $48
	adc  d                                           ; $5eac: $8a
	adc  e                                           ; $5ead: $8b
	add  hl, hl                                      ; $5eae: $29
	jr   z, jr_073_5f1b                              ; $5eaf: $28 $6a

	ld   l, e                                        ; $5eb1: $6b
	ld   l, c                                        ; $5eb2: $69
	ld   l, b                                        ; $5eb3: $68
	ld   h, d                                        ; $5eb4: $62
	ld   l, e                                        ; $5eb5: $6b
	ld   b, c                                        ; $5eb6: $41
	add  b                                           ; $5eb7: $80
	ld   h, b                                        ; $5eb8: $60
	add  b                                           ; $5eb9: $80
	ldh  [$80], a                                    ; $5eba: $e0 $80
	ld   h, b                                        ; $5ebc: $60
	add  b                                           ; $5ebd: $80
	ldh  [$80], a                                    ; $5ebe: $e0 $80
	ld   h, b                                        ; $5ec0: $60
	add  b                                           ; $5ec1: $80
	ldh  [$08], a                                    ; $5ec2: $e0 $08
	ld   h, b                                        ; $5ec4: $60
	ld   b, b                                        ; $5ec5: $40
	ldh  [rLCDC], a                                  ; $5ec6: $e0 $40
	ldh  a, [$d5]                                    ; $5ec8: $f0 $d5
	rst  $20                                         ; $5eca: $e7
	call nz, $82ff                                   ; $5ecb: $c4 $ff $82
	db   $fd                                         ; $5ece: $fd
	ld   [bc], a                                     ; $5ecf: $02
	jp   z, $c0f3                                    ; $5ed0: $ca $f3 $c0

	add  c                                           ; $5ed3: $81
	rst  $38                                         ; $5ed4: $ff
	inc  b                                           ; $5ed5: $04
	ccf                                              ; $5ed6: $3f
	nop                                              ; $5ed7: $00
	rst  JumpTable                                         ; $5ed8: $df
	rst  $38                                         ; $5ed9: $ff
	ld   hl, $dd80                                   ; $5eda: $21 $80 $dd
	add  b                                           ; $5edd: $80
	ld   d, l                                        ; $5ede: $55
	inc  bc                                          ; $5edf: $03
	db   $dd                                         ; $5ee0: $dd
	rst  $28                                         ; $5ee1: $ef
	inc  sp                                          ; $5ee2: $33
	rra                                              ; $5ee3: $1f
	add  c                                           ; $5ee4: $81
	rst  $38                                         ; $5ee5: $ff
	inc  b                                           ; $5ee6: $04
	sbc  h                                           ; $5ee7: $9c
	rst  $38                                         ; $5ee8: $ff
	add  e                                           ; $5ee9: $83
	rst  $38                                         ; $5eea: $ff
	nop                                              ; $5eeb: $00
	add  b                                           ; $5eec: $80
	rst  $38                                         ; $5eed: $ff
	nop                                              ; $5eee: $00
	nop                                              ; $5eef: $00
	add  [hl]                                        ; $5ef0: $86
	rst  $38                                         ; $5ef1: $ff
	dec  c                                           ; $5ef2: $0d
	nop                                              ; $5ef3: $00
	rst  $38                                         ; $5ef4: $ff
	nop                                              ; $5ef5: $00
	rst  $38                                         ; $5ef6: $ff
	nop                                              ; $5ef7: $00
	rst  $38                                         ; $5ef8: $ff
	ret  nz                                          ; $5ef9: $c0

	ld   a, a                                        ; $5efa: $7f
	rst  JumpTable                                         ; $5efb: $df
	cp   a                                           ; $5efc: $bf
	rst  $28                                         ; $5efd: $ef
	rst  JumpTable                                         ; $5efe: $df
	rst  $30                                         ; $5eff: $f7
	rst  $28                                         ; $5f00: $ef
	add  b                                           ; $5f01: $80
	rst  $38                                         ; $5f02: $ff
	ld   b, $17                                      ; $5f03: $06 $17
	ld   hl, sp+$08                                  ; $5f05: $f8 $08
	ld   hl, sp+$10                                  ; $5f07: $f8 $10
	ld   hl, sp+$00                                  ; $5f09: $f8 $00
	add  e                                           ; $5f0b: $83
	ld   hl, sp-$7e                                  ; $5f0c: $f8 $82
	ld   sp, hl                                      ; $5f0e: $f9
	ld   [bc], a                                     ; $5f0f: $02
	add  a                                           ; $5f10: $87
	ret  z                                           ; $5f11: $c8

	ld   [hl], a                                     ; $5f12: $77
	add  e                                           ; $5f13: $83
	rst  $38                                         ; $5f14: $ff
	ld   bc, $003f                                   ; $5f15: $01 $3f $00
	add  b                                           ; $5f18: $80
	rst  $38                                         ; $5f19: $ff
	add  b                                           ; $5f1a: $80

jr_073_5f1b:
	sbc  a                                           ; $5f1b: $9f
	add  b                                           ; $5f1c: $80
	and  b                                           ; $5f1d: $a0
	add  hl, bc                                      ; $5f1e: $09
	pop  hl                                          ; $5f1f: $e1
	ld   l, a                                        ; $5f20: $6f
	xor  h                                           ; $5f21: $ac
	xor  $e9                                         ; $5f22: $ee $e9
	db   $ed                                         ; $5f24: $ed
	db   $e3                                         ; $5f25: $e3
	db   $eb                                         ; $5f26: $eb
	rst  ToBoot                                         ; $5f27: $c7
	rlca                                             ; $5f28: $07
	add  b                                           ; $5f29: $80
	rst  $38                                         ; $5f2a: $ff
	add  b                                           ; $5f2b: $80
	pop  af                                          ; $5f2c: $f1
	add  b                                           ; $5f2d: $80
	inc  b                                           ; $5f2e: $04
	add  b                                           ; $5f2f: $80
	ld   a, [hl]                                     ; $5f30: $7e
	add  b                                           ; $5f31: $80
	cp   $80                                         ; $5f32: $fe $80
	ldh  a, [$0a]                                    ; $5f34: $f0 $0a
	pop  hl                                          ; $5f36: $e1
	rst  $28                                         ; $5f37: $ef
	adc  $d0                                         ; $5f38: $ce $d0
	sub  b                                           ; $5f3a: $90
	xor  a                                           ; $5f3b: $af
	jr   nz, jr_073_5f9d                             ; $5f3c: $20 $5f

	ld   c, a                                        ; $5f3e: $4f
	cp   a                                           ; $5f3f: $bf
	and  b                                           ; $5f40: $a0
	add  e                                           ; $5f41: $83
	ld   [hl], a                                     ; $5f42: $77
	inc  b                                           ; $5f43: $04
	ld   [hl], e                                     ; $5f44: $73
	ld   [hl], a                                     ; $5f45: $77

jr_073_5f46:
	ld   a, e                                        ; $5f46: $7b
	ld   a, b                                        ; $5f47: $78
	ld   [hl], b                                     ; $5f48: $70
	add  e                                           ; $5f49: $83
	ld   a, a                                        ; $5f4a: $7f
	nop                                              ; $5f4b: $00
	halt                                             ; $5f4c: $76
	add  l                                           ; $5f4d: $85
	rst  $38                                         ; $5f4e: $ff
	inc  bc                                          ; $5f4f: $03
	rst  $20                                         ; $5f50: $e7
	rra                                              ; $5f51: $1f
	ld   c, $fe                                      ; $5f52: $0e $fe
	add  d                                           ; $5f54: $82
	rst  $38                                         ; $5f55: $ff
	rlca                                             ; $5f56: $07
	or   d                                           ; $5f57: $b2
	di                                               ; $5f58: $f3
	ld   l, $ef                                      ; $5f59: $2e $ef
	ld   a, h                                        ; $5f5b: $7c
	cp   $f8                                         ; $5f5c: $fe $f8
	db   $fc                                         ; $5f5e: $fc
	add  b                                           ; $5f5f: $80
	ei                                               ; $5f60: $fb
	ld   [bc], a                                     ; $5f61: $02
	sbc  e                                           ; $5f62: $9b
	ld   h, e                                        ; $5f63: $63
	inc  bc                                          ; $5f64: $03
	add  c                                           ; $5f65: $81
	ei                                               ; $5f66: $fb
	nop                                              ; $5f67: $00
	ld   a, [bc]                                     ; $5f68: $0a
	add  c                                           ; $5f69: $81
	di                                               ; $5f6a: $f3
	add  d                                           ; $5f6b: $82
	inc  bc                                          ; $5f6c: $03
	add  b                                           ; $5f6d: $80
	add  e                                           ; $5f6e: $83
	ld   [$8380], sp                                 ; $5f6f: $08 $80 $83
	add  d                                           ; $5f72: $82
	add  e                                           ; $5f73: $83
	add  d                                           ; $5f74: $82
	add  c                                           ; $5f75: $81
	nop                                              ; $5f76: $00
	rst  $38                                         ; $5f77: $ff
	cp   $85                                         ; $5f78: $fe $85
	rst  $38                                         ; $5f7a: $ff
	add  hl, bc                                      ; $5f7b: $09
	ld   bc, $03ff                                   ; $5f7c: $01 $ff $03
	rst  $38                                         ; $5f7f: $ff
	rst  JumpTable                                         ; $5f80: $df
	cp   a                                           ; $5f81: $bf
	ld   l, b                                        ; $5f82: $68
	inc  c                                           ; $5f83: $0c
	ld   [bc], a                                     ; $5f84: $02
	ld   a, [bc]                                     ; $5f85: $0a
	add  b                                           ; $5f86: $80
	inc  b                                           ; $5f87: $04
	add  b                                           ; $5f88: $80
	nop                                              ; $5f89: $00
	nop                                              ; $5f8a: $00
	ld   [$0f81], sp                                 ; $5f8b: $08 $81 $0f
	ld   bc, $0700                                   ; $5f8e: $01 $00 $07
	add  b                                           ; $5f91: $80
	nop                                              ; $5f92: $00
	db   $10                                         ; $5f93: $10
	sub  b                                           ; $5f94: $90
	ld   l, b                                        ; $5f95: $68
	ld   l, d                                        ; $5f96: $6a
	ld   l, e                                        ; $5f97: $6b
	ld   l, c                                        ; $5f98: $69
	ld   l, b                                        ; $5f99: $68
	ld   l, d                                        ; $5f9a: $6a
	ld   l, e                                        ; $5f9b: $6b
	add  hl, hl                                      ; $5f9c: $29

jr_073_5f9d:
	add  sp, -$56                                    ; $5f9d: $e8 $aa
	db   $eb                                         ; $5f9f: $eb
	ld   l, c                                        ; $5fa0: $69
	add  sp, $02                                     ; $5fa1: $e8 $02
	dec  bc                                          ; $5fa3: $0b
	ld   b, c                                        ; $5fa4: $41
	add  b                                           ; $5fa5: $80
	ld   h, b                                        ; $5fa6: $60
	add  b                                           ; $5fa7: $80
	ldh  [$80], a                                    ; $5fa8: $e0 $80
	ld   h, b                                        ; $5faa: $60
	add  b                                           ; $5fab: $80
	ldh  [$80], a                                    ; $5fac: $e0 $80
	ld   h, b                                        ; $5fae: $60
	add  b                                           ; $5faf: $80
	ldh  [$03], a                                    ; $5fb0: $e0 $03
	ld   h, b                                        ; $5fb2: $60
	ld   b, b                                        ; $5fb3: $40
	ldh  [rLCDC], a                                  ; $5fb4: $e0 $40
	adc  l                                           ; $5fb6: $8d
	rst  $38                                         ; $5fb7: $ff
	nop                                              ; $5fb8: $00
	jr   nz, jr_073_5f46                             ; $5fb9: $20 $8b

	rst  $38                                         ; $5fbb: $ff
	add  b                                           ; $5fbc: $80
	db   $e3                                         ; $5fbd: $e3
	nop                                              ; $5fbe: $00
	ldh  [$8d], a                                    ; $5fbf: $e0 $8d
	rst  $38                                         ; $5fc1: $ff
	nop                                              ; $5fc2: $00
	rst  $30                                         ; $5fc3: $f7
	add  l                                           ; $5fc4: $85
	rst  $38                                         ; $5fc5: $ff
	ld   [bc], a                                     ; $5fc6: $02
	ld   hl, sp-$01                                  ; $5fc7: $f8 $ff
	ld   hl, sp-$7d                                  ; $5fc9: $f8 $83
	rst  $38                                         ; $5fcb: $ff
	nop                                              ; $5fcc: $00
	or   $81                                         ; $5fcd: $f6 $81
	ld   sp, hl                                      ; $5fcf: $f9
	nop                                              ; $5fd0: $00
	ld   hl, sp-$7f                                  ; $5fd1: $f8 $81
	ld   sp, hl                                      ; $5fd3: $f9
	inc  b                                           ; $5fd4: $04
	ld   bc, $01f8                                   ; $5fd5: $01 $f8 $01
	ld   sp, hl                                      ; $5fd8: $f9
	ld   hl, sp-$7f                                  ; $5fd9: $f8 $81
	ld   sp, hl                                      ; $5fdb: $f9
	dec  b                                           ; $5fdc: $05
	ld   e, c                                        ; $5fdd: $59
	and  b                                           ; $5fde: $a0
	adc  b                                           ; $5fdf: $88
	xor  b                                           ; $5fe0: $a8
	daa                                              ; $5fe1: $27
	and  a                                           ; $5fe2: $a7
	add  b                                           ; $5fe3: $80
	and  b                                           ; $5fe4: $a0
	ld   bc, $28a8                                   ; $5fe5: $01 $a8 $28
	add  b                                           ; $5fe8: $80
	and  a                                           ; $5fe9: $a7
	ld   bc, $a020                                   ; $5fea: $01 $20 $a0
	add  b                                           ; $5fed: $80
	xor  b                                           ; $5fee: $a8
	inc  bc                                          ; $5fef: $03
	sub  h                                           ; $5ff0: $94
	dec  [hl]                                        ; $5ff1: $35
	ldh  a, [$f5]                                    ; $5ff2: $f0 $f5
	add  b                                           ; $5ff4: $80
	db   $e4                                         ; $5ff5: $e4
	add  b                                           ; $5ff6: $80
	inc  d                                           ; $5ff7: $14
	add  b                                           ; $5ff8: $80
	ld   [hl], h                                     ; $5ff9: $74
	add  b                                           ; $5ffa: $80
	push hl                                          ; $5ffb: $e5
	add  b                                           ; $5ffc: $80
	dec  d                                           ; $5ffd: $15
	add  b                                           ; $5ffe: $80
	ld   [hl], h                                     ; $5fff: $74
	dec  b                                           ; $6000: $05
	dec  sp                                          ; $6001: $3b
	ld   a, a                                        ; $6002: $7f
	ld   b, b                                        ; $6003: $40
	rst  $38                                         ; $6004: $ff
	nop                                              ; $6005: $00
	rst  $38                                         ; $6006: $ff
	add  d                                           ; $6007: $82
	nop                                              ; $6008: $00
	add  b                                           ; $6009: $80
	db   $fc                                         ; $600a: $fc
	ld   bc, $fce0                                   ; $600b: $01 $e0 $fc
	add  c                                           ; $600e: $81
	inc  e                                           ; $600f: $1c
	nop                                              ; $6010: $00
	ld   a, a                                        ; $6011: $7f
	add  b                                           ; $6012: $80
	rst  $38                                         ; $6013: $ff
	ld   bc, $ffbf                                   ; $6014: $01 $bf $ff
	add  b                                           ; $6017: $80
	ld   a, a                                        ; $6018: $7f
	nop                                              ; $6019: $00
	ccf                                              ; $601a: $3f
	add  l                                           ; $601b: $85
	ld   a, a                                        ; $601c: $7f
	nop                                              ; $601d: $00
	ld   a, [hl]                                     ; $601e: $7e
	add  l                                           ; $601f: $85
	rst  $38                                         ; $6020: $ff
	ld   [$fffd], sp                                 ; $6021: $08 $fd $ff
	ei                                               ; $6024: $fb
	rst  $38                                         ; $6025: $ff
	di                                               ; $6026: $f3
	rst  $38                                         ; $6027: $ff
	db   $e3                                         ; $6028: $e3
	rst  $38                                         ; $6029: $ff
	db   $eb                                         ; $602a: $eb
	adc  c                                           ; $602b: $89
	ei                                               ; $602c: $fb
	add  b                                           ; $602d: $80
	ld   a, [$f980]                                  ; $602e: $fa $80 $f9
	nop                                              ; $6031: $00
	ld   a, e                                        ; $6032: $7b
	add  e                                           ; $6033: $83
	add  e                                           ; $6034: $83
	add  b                                           ; $6035: $80
	add  c                                           ; $6036: $81
	nop                                              ; $6037: $00
	add  b                                           ; $6038: $80
	add  c                                           ; $6039: $81
	add  e                                           ; $603a: $83
	add  b                                           ; $603b: $80
	inc  bc                                          ; $603c: $03
	add  b                                           ; $603d: $80
	add  e                                           ; $603e: $83
	ld   bc, $fff0                                   ; $603f: $01 $f0 $ff
	add  d                                           ; $6042: $82
	ccf                                              ; $6043: $3f
	add  b                                           ; $6044: $80
	rra                                              ; $6045: $1f
	nop                                              ; $6046: $00
	cpl                                              ; $6047: $2f
	add  l                                           ; $6048: $85
	ccf                                              ; $6049: $3f
	inc  bc                                          ; $604a: $03
	rst  $28                                         ; $604b: $ef
	rrca                                             ; $604c: $0f
	inc  bc                                          ; $604d: $03
	rrca                                             ; $604e: $0f
	add  b                                           ; $604f: $80
	nop                                              ; $6050: $00
	rlca                                             ; $6051: $07
	ld   [bc], a                                     ; $6052: $02
	inc  bc                                          ; $6053: $03
	ld   [$010f], sp                                 ; $6054: $08 $0f $01
	rrca                                             ; $6057: $0f
	inc  b                                           ; $6058: $04
	inc  c                                           ; $6059: $0c
	add  b                                           ; $605a: $80
	inc  bc                                          ; $605b: $03
	db   $10                                         ; $605c: $10
	db   $10                                         ; $605d: $10
	add  sp, -$16                                    ; $605e: $e8 $ea
	db   $eb                                         ; $6060: $eb
	add  hl, bc                                      ; $6061: $09
	ld   [$eb6a], sp                                 ; $6062: $08 $6a $eb
	ld   c, c                                        ; $6065: $49
	ret  z                                           ; $6066: $c8

	ld   a, [bc]                                     ; $6067: $0a
	dec  bc                                          ; $6068: $0b
	add  hl, bc                                      ; $6069: $09
	ld   [$c3ca], sp                                 ; $606a: $08 $ca $c3
	ld   b, c                                        ; $606d: $41
	add  b                                           ; $606e: $80
	ld   h, b                                        ; $606f: $60
	add  b                                           ; $6070: $80
	ldh  [$80], a                                    ; $6071: $e0 $80
	ld   h, b                                        ; $6073: $60
	add  b                                           ; $6074: $80
	ldh  [$80], a                                    ; $6075: $e0 $80
	ld   h, b                                        ; $6077: $60
	ld   a, [bc]                                     ; $6078: $0a
	ldh  [$e1], a                                    ; $6079: $e0 $e1
	ld   h, c                                        ; $607b: $61
	ld   [hl], h                                     ; $607c: $74
	rst  $10                                         ; $607d: $d7
	add  e                                           ; $607e: $83
	rst  $38                                         ; $607f: $ff
	cp   $f9                                         ; $6080: $fe $f9
	rst  $38                                         ; $6082: $ff
	rst  $30                                         ; $6083: $f7
	add  b                                           ; $6084: $80
	di                                               ; $6085: $f3
	nop                                              ; $6086: $00
	ldh  a, [$80]                                    ; $6087: $f0 $80
	ld   hl, sp-$80                                  ; $6089: $f8 $80
	nop                                              ; $608b: $00
	add  c                                           ; $608c: $81
	db   $fc                                         ; $608d: $fc
	ld   bc, $38c4                                   ; $608e: $01 $c4 $38
	add  b                                           ; $6091: $80
	db   $fc                                         ; $6092: $fc
	add  b                                           ; $6093: $80
	ldh  a, [$80]                                    ; $6094: $f0 $80
	adc  [hl]                                        ; $6096: $8e
	add  b                                           ; $6097: $80
	ld   a, [hl]                                     ; $6098: $7e
	add  b                                           ; $6099: $80
	cp   $80                                         ; $609a: $fe $80
	ld   sp, hl                                      ; $609c: $f9
	add  b                                           ; $609d: $80
	ld   h, a                                        ; $609e: $67
	ld   b, $00                                      ; $609f: $06 $00
	rst  $38                                         ; $60a1: $ff
	ld   d, l                                        ; $60a2: $55
	rst  $38                                         ; $60a3: $ff
	add  b                                           ; $60a4: $80
	rst  $38                                         ; $60a5: $ff
	push de                                          ; $60a6: $d5
	add  c                                           ; $60a7: $81
	rst  $38                                         ; $60a8: $ff
	ld   de, $8382                                   ; $60a9: $11 $82 $83
	nop                                              ; $60ac: $00
	ld   a, a                                        ; $60ad: $7f
	ld   a, h                                        ; $60ae: $7c
	ld   a, [hl]                                     ; $60af: $7e
	ld   [hl], h                                     ; $60b0: $74
	rst  $38                                         ; $60b1: $ff
	ld   e, l                                        ; $60b2: $5d
	rst  $38                                         ; $60b3: $ff
	ld   [$55ff], sp                                 ; $60b4: $08 $ff $55
	rst  $30                                         ; $60b7: $f7
	add  c                                           ; $60b8: $81
	rst  $38                                         ; $60b9: $ff
	cp   $80                                         ; $60ba: $fe $80
	add  b                                           ; $60bc: $80
	ld   a, [hl]                                     ; $60bd: $7e
	dec  bc                                          ; $60be: $0b
	db   $eb                                         ; $60bf: $eb
	rst  $38                                         ; $60c0: $ff
	inc  d                                           ; $60c1: $14
	ld   hl, sp+$51                                  ; $60c2: $f8 $51
	ld   sp, hl                                      ; $60c4: $f9
	ld   bc, $a8f9                                   ; $60c5: $01 $f9 $a8
	rst  $38                                         ; $60c8: $ff
	nop                                              ; $60c9: $00
	rst  $38                                         ; $60ca: $ff
	add  b                                           ; $60cb: $80
	nop                                              ; $60cc: $00
	add  b                                           ; $60cd: $80
	cp   $03                                         ; $60ce: $fe $03
	xor  d                                           ; $60d0: $aa
	rst  $38                                         ; $60d1: $ff
	ld   d, d                                        ; $60d2: $52
	daa                                              ; $60d3: $27
	add  b                                           ; $60d4: $80
	and  b                                           ; $60d5: $a0
	add  b                                           ; $60d6: $80
	add  b                                           ; $60d7: $80
	inc  bc                                          ; $60d8: $03
	jr   nz, @+$01                                   ; $60d9: $20 $ff

	nop                                              ; $60db: $00
	rst  $38                                         ; $60dc: $ff
	add  b                                           ; $60dd: $80
	nop                                              ; $60de: $00
	add  b                                           ; $60df: $80
	db   $fd                                         ; $60e0: $fd
	dec  b                                           ; $60e1: $05
	xor  b                                           ; $60e2: $a8
	db   $fd                                         ; $60e3: $fd
	or   a                                           ; $60e4: $b7
	rst  $20                                         ; $60e5: $e7
	inc  b                                           ; $60e6: $04
	dec  b                                           ; $60e7: $05
	add  b                                           ; $60e8: $80
	nop                                              ; $60e9: $00
	inc  bc                                          ; $60ea: $03
	inc  b                                           ; $60eb: $04
	rst  $38                                         ; $60ec: $ff
	nop                                              ; $60ed: $00
	rst  $38                                         ; $60ee: $ff
	add  b                                           ; $60ef: $80
	nop                                              ; $60f0: $00
	add  b                                           ; $60f1: $80
	cp   $0b                                         ; $60f2: $fe $0b
	xor  d                                           ; $60f4: $aa
	rst  $38                                         ; $60f5: $ff
	ld   [hl], l                                     ; $60f6: $75
	ldh  [$36], a                                    ; $60f7: $e0 $36
	cp   $19                                         ; $60f9: $fe $19
	ld   de, $ff00                                   ; $60fb: $11 $00 $ff
	nop                                              ; $60fe: $00
	rst  $38                                         ; $60ff: $ff
	add  b                                           ; $6100: $80
	nop                                              ; $6101: $00
	add  b                                           ; $6102: $80
	rst  $38                                         ; $6103: $ff
	ld   bc, $ffaa                                   ; $6104: $01 $aa $ff
	add  b                                           ; $6107: $80
	ld   a, a                                        ; $6108: $7f
	rlca                                             ; $6109: $07
	ld   b, b                                        ; $610a: $40
	ld   a, a                                        ; $610b: $7f
	dec  d                                           ; $610c: $15
	ld   a, a                                        ; $610d: $7f
	nop                                              ; $610e: $00
	rst  $38                                         ; $610f: $ff
	nop                                              ; $6110: $00
	rst  $38                                         ; $6111: $ff
	add  b                                           ; $6112: $80
	nop                                              ; $6113: $00
	add  b                                           ; $6114: $80
	rst  JumpTable                                         ; $6115: $df
	rlca                                             ; $6116: $07
	cp   d                                           ; $6117: $ba
	rst  $38                                         ; $6118: $ff
	db   $eb                                         ; $6119: $eb
	cp   $0e                                         ; $611a: $fe $0e
	cp   $5c                                         ; $611c: $fe $5c
	db   $fc                                         ; $611e: $fc
	add  b                                           ; $611f: $80
	ld   hl, sp+$00                                  ; $6120: $f8 $00

jr_073_6122:
	nop                                              ; $6122: $00
	add  b                                           ; $6123: $80
	ld   hl, sp+$06                                  ; $6124: $f8 $06
	rlca                                             ; $6126: $07
	rst  $38                                         ; $6127: $ff
	ei                                               ; $6128: $fb
	cp   a                                           ; $6129: $bf
	db   $fd                                         ; $612a: $fd
	ld   b, b                                        ; $612b: $40
	ld   sp, hl                                      ; $612c: $f9
	add  b                                           ; $612d: $80
	ld   hl, sp-$80                                  ; $612e: $f8 $80
	ei                                               ; $6130: $fb
	ld   bc, $f7ff                                   ; $6131: $01 $ff $f7
	add  b                                           ; $6134: $80
	di                                               ; $6135: $f3
	rlca                                             ; $6136: $07
	db   $fc                                         ; $6137: $fc
	inc  c                                           ; $6138: $0c
	rrca                                             ; $6139: $0f
	rst  $28                                         ; $613a: $ef
	db   $fd                                         ; $613b: $fd
	db   $dd                                         ; $613c: $dd
	jr   nz, jr_073_6122                             ; $613d: $20 $e3

	add  b                                           ; $613f: $80
	ei                                               ; $6140: $fb
	add  b                                           ; $6141: $80
	dec  sp                                          ; $6142: $3b
	add  b                                           ; $6143: $80
	res  0, d                                        ; $6144: $cb $82
	db   $e3                                         ; $6146: $e3
	add  b                                           ; $6147: $80
	inc  bc                                          ; $6148: $03
	ld   [bc], a                                     ; $6149: $02
	jp   $2bc8                                       ; $614a: $c3 $c8 $2b


	add  a                                           ; $614d: $87
	ccf                                              ; $614e: $3f
	nop                                              ; $614f: $00
	inc  hl                                          ; $6150: $23
	add  c                                           ; $6151: $81
	ccf                                              ; $6152: $3f
	add  b                                           ; $6153: $80
	ld   a, $0c                                      ; $6154: $3e $0c
	ldh  a, [$0c]                                    ; $6156: $f0 $0c
	rrca                                             ; $6158: $0f
	inc  bc                                          ; $6159: $03
	ld   [$070f], sp                                 ; $615a: $08 $0f $07
	rrca                                             ; $615d: $0f
	dec  c                                           ; $615e: $0d
	ld   c, $00                                      ; $615f: $0e $00
	ld   c, $02                                      ; $6161: $0e $02
	add  c                                           ; $6163: $81
	rrca                                             ; $6164: $0f
	ld   b, $ff                                      ; $6165: $06 $ff
	inc  a                                           ; $6167: $3c
	ccf                                              ; $6168: $3f
	di                                               ; $6169: $f3
	rst  $38                                         ; $616a: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $616b: $cf
	rst  $38                                         ; $616c: $ff
	add  c                                           ; $616d: $81
	ccf                                              ; $616e: $3f
	ld   [$9818], sp                                 ; $616f: $08 $18 $98
	add  c                                           ; $6172: $81
	ld   b, c                                        ; $6173: $41

jr_073_6174:
	ld   b, e                                        ; $6174: $43
	and  e                                           ; $6175: $a3
	ld   d, b                                        ; $6176: $50
	rst  $30                                         ; $6177: $f7
	rst  $38                                         ; $6178: $ff
	add  c                                           ; $6179: $81
	ei                                               ; $617a: $fb
	ld   bc, $c5c7                                   ; $617b: $01 $c7 $c5
	add  b                                           ; $617e: $80
	dec  e                                           ; $617f: $1d
	ld   bc, $7e7f                                   ; $6180: $01 $7f $7e
	add  b                                           ; $6183: $80
	cp   $80                                         ; $6184: $fe $80
	ld   hl, sp+$00                                  ; $6186: $f8 $00
	nop                                              ; $6188: $00
	add  d                                           ; $6189: $82
	cp   $87                                         ; $618a: $fe $87
	rst  $38                                         ; $618c: $ff
	ld   bc, $7f80                                   ; $618d: $01 $80 $7f
	add  b                                           ; $6190: $80
	rra                                              ; $6191: $1f
	add  b                                           ; $6192: $80
	ld   a, $80                                      ; $6193: $3e $80
	add  hl, sp                                      ; $6195: $39
	add  b                                           ; $6196: $80
	rlca                                             ; $6197: $07
	ld   l, $0e                                      ; $6198: $2e $0e
	adc  a                                           ; $619a: $8f
	adc  l                                           ; $619b: $8d
	adc  [hl]                                        ; $619c: $8e
	add  d                                           ; $619d: $82
	call nz, $8844                                   ; $619e: $c4 $44 $88
	inc  c                                           ; $61a1: $0c
	inc  a                                           ; $61a2: $3c
	or   b                                           ; $61a3: $b0
	cp   c                                           ; $61a4: $b9
	sub  c                                           ; $61a5: $91
	ldh  [rSC], a                                    ; $61a6: $e0 $02
	rst  ToBoot                                         ; $61a8: $c7
	nop                                              ; $61a9: $00
	adc  a                                           ; $61aa: $8f
	nop                                              ; $61ab: $00
	rra                                              ; $61ac: $1f
	ld   a, [bc]                                     ; $61ad: $0a
	rra                                              ; $61ae: $1f
	jr   z, jr_073_6230                              ; $61af: $28 $7f

	ld   a, l                                        ; $61b1: $7d
	add  b                                           ; $61b2: $80
	rst  $38                                         ; $61b3: $ff
	nop                                              ; $61b4: $00
	ld   d, l                                        ; $61b5: $55
	nop                                              ; $61b6: $00
	ld   e, e                                        ; $61b7: $5b
	ld   bc, $09ed                                   ; $61b8: $01 $ed $09
	ld   d, c                                        ; $61bb: $51
	ld   bc, $02ec                                   ; $61bc: $01 $ec $02
	rst  JumpTable                                         ; $61bf: $df
	inc  b                                           ; $61c0: $04
	ld   [hl], c                                     ; $61c1: $71
	nop                                              ; $61c2: $00
	rst  $10                                         ; $61c3: $d7
	nop                                              ; $61c4: $00
	ld   a, l                                        ; $61c5: $7d
	db   $10                                         ; $61c6: $10
	db   $eb                                         ; $61c7: $eb
	add  b                                           ; $61c8: $80
	dec  sp                                          ; $61c9: $3b
	dec  e                                           ; $61ca: $1d
	ld   b, h                                        ; $61cb: $44
	ld   c, b                                        ; $61cc: $48
	add  b                                           ; $61cd: $80
	ld   [hl], h                                     ; $61ce: $74
	and  e                                           ; $61cf: $a3
	ld   d, [hl]                                     ; $61d0: $56
	ld   sp, $206f                                   ; $61d1: $31 $6f $20
	ld   [hl], l                                     ; $61d4: $75
	jr   nz, jr_073_6174                             ; $61d5: $20 $9d

	ret  nz                                          ; $61d7: $c0

	dec  a                                           ; $61d8: $3d
	ret  nz                                          ; $61d9: $c0

	add  b                                           ; $61da: $80
	ld   [bc], a                                     ; $61db: $02
	ld   b, $04                                      ; $61dc: $06 $04
	ld   [bc], a                                     ; $61de: $02
	rst  $38                                         ; $61df: $ff
	nop                                              ; $61e0: $00
	db   $fd                                         ; $61e1: $fd

jr_073_61e2:
	ld   d, a                                        ; $61e2: $57
	nop                                              ; $61e3: $00
	ld   d, l                                        ; $61e4: $55
	jr   nz, @-$0f                                   ; $61e5: $20 $ef

	inc  a                                           ; $61e7: $3c
	di                                               ; $61e8: $f3
	add  b                                           ; $61e9: $80
	ld   a, [de]                                     ; $61ea: $1a
	add  b                                           ; $61eb: $80
	rlca                                             ; $61ec: $07
	ld   c, b                                        ; $61ed: $48
	nop                                              ; $61ee: $00
	inc  bc                                          ; $61ef: $03
	db   $fc                                         ; $61f0: $fc
	ld   a, a                                        ; $61f1: $7f
	add  d                                           ; $61f2: $82
	ld   d, a                                        ; $61f3: $57
	nop                                              ; $61f4: $00
	dec  [hl]                                        ; $61f5: $35
	ld   a, [hl+]                                    ; $61f6: $2a
	xor  d                                           ; $61f7: $aa
	rra                                              ; $61f8: $1f
	xor  d                                           ; $61f9: $aa
	dec  d                                           ; $61fa: $15
	ld   a, [hl+]                                    ; $61fb: $2a
	ld   c, d                                        ; $61fc: $4a
	dec  b                                           ; $61fd: $05
	push bc                                          ; $61fe: $c5
	rra                                              ; $61ff: $1f
	nop                                              ; $6200: $00
	rst  JumpTable                                         ; $6201: $df
	inc  e                                           ; $6202: $1c
	ld   l, c                                        ; $6203: $69
	jr   nz, jr_073_6283                             ; $6204: $20 $7d

	sub  d                                           ; $6206: $92
	and  l                                           ; $6207: $a5
	ret  nz                                          ; $6208: $c0

	rst  $30                                         ; $6209: $f7
	nop                                              ; $620a: $00
	call z, Call_073_62c4                            ; $620b: $cc $c4 $62
	ld   h, b                                        ; $620e: $60
	db   $fd                                         ; $620f: $fd
	nop                                              ; $6210: $00
	ldh  a, [c]                                      ; $6211: $f2
	ld   c, $48                                      ; $6212: $0e $48
	inc  e                                           ; $6214: $1c
	ld   e, b                                        ; $6215: $58
	add  h                                           ; $6216: $84
	ld   [hl], h                                     ; $6217: $74
	ld   h, b                                        ; $6218: $60
	sub  a                                           ; $6219: $97
	inc  bc                                          ; $621a: $03
	ld   c, $18                                      ; $621b: $0e $18
	rla                                              ; $621d: $17
	add  sp, $1d                                     ; $621e: $e8 $1d
	nop                                              ; $6220: $00
	rst  $38                                         ; $6221: $ff
	nop                                              ; $6222: $00
	ld   hl, sp-$39                                  ; $6223: $f8 $c7
	sbc  c                                           ; $6225: $99
	ld   a, c                                        ; $6226: $79
	ld   c, $3e                                      ; $6227: $0e $3e
	rst  ToBoot                                         ; $6229: $c7
	rst  JumpTable                                         ; $622a: $df
	ld   h, d                                        ; $622b: $62
	xor  $30                                         ; $622c: $ee $30
	or   $40                                         ; $622e: $f6 $40

jr_073_6230:
	inc  bc                                          ; $6230: $03
	ld   b, b                                        ; $6231: $40
	pop  af                                          ; $6232: $f1
	ld   [hl], b                                     ; $6233: $70
	call c, $9f9c                                    ; $6234: $dc $9c $9f
	add  c                                           ; $6237: $81
	rra                                              ; $6238: $1f
	add  d                                           ; $6239: $82

jr_073_623a:
	ccf                                              ; $623a: $3f
	add  d                                           ; $623b: $82
	ld   a, a                                        ; $623c: $7f
	ld   bc, $feff                                   ; $623d: $01 $ff $fe
	add  b                                           ; $6240: $80
	ld   bc, $f902                                   ; $6241: $01 $02 $f9
	cp   $f6                                         ; $6244: $fe $f6
	add  b                                           ; $6246: $80
	rst  $30                                         ; $6247: $f7
	ld   bc, $efff                                   ; $6248: $01 $ff $ef
	add  b                                           ; $624b: $80
	db   $e3                                         ; $624c: $e3
	ld   bc, $d8f8                                   ; $624d: $01 $f8 $d8
	add  b                                           ; $6250: $80
	sbc  $00                                         ; $6251: $de $00
	jr   nc, jr_073_61e2                             ; $6253: $30 $8d

	rrca                                             ; $6255: $0f
	ld   bc, $d7f8                                   ; $6256: $01 $f8 $d7
	add  b                                           ; $6259: $80
	db   $d3                                         ; $625a: $d3
	nop                                              ; $625b: $00
	ret  nc                                          ; $625c: $d0

	add  d                                           ; $625d: $82
	add  sp, -$7e                                    ; $625e: $e8 $82
	db   $f4                                         ; $6260: $f4
	add  c                                           ; $6261: $81
	ld   a, [$1901]                                  ; $6262: $fa $01 $19
	db   $e3                                         ; $6265: $e3
	add  b                                           ; $6266: $80
	adc  a                                           ; $6267: $8f
	add  b                                           ; $6268: $80
	ccf                                              ; $6269: $3f
	add  b                                           ; $626a: $80
	ld   a, a                                        ; $626b: $7f
	add  b                                           ; $626c: $80
	cp   $80                                         ; $626d: $fe $80
	ld   hl, sp-$80                                  ; $626f: $f8 $80
	db   $e3                                         ; $6271: $e3
	add  b                                           ; $6272: $80
	rrca                                             ; $6273: $0f
	ld   [bc], a                                     ; $6274: $02
	nop                                              ; $6275: $00
	ld   a, a                                        ; $6276: $7f
	rst  $38                                         ; $6277: $ff
	add  d                                           ; $6278: $82
	cp   a                                           ; $6279: $bf
	dec  h                                           ; $627a: $25
	sbc  a                                           ; $627b: $9f
	dec  e                                           ; $627c: $1d
	ld   e, $f8                                      ; $627d: $1e $f8
	db   $ec                                         ; $627f: $ec
	ldh  [$f8], a                                    ; $6280: $e0 $f8
	ret  nz                                          ; $6282: $c0

jr_073_6283:
	ldh  a, [rAUD4ENV]                               ; $6283: $f0 $21
	pop  af                                          ; $6285: $f1
	ldh  a, [c]                                      ; $6286: $f2
	db   $e3                                         ; $6287: $e3
	db   $e4                                         ; $6288: $e4
	add  a                                           ; $6289: $87
	adc  b                                           ; $628a: $88
	rrca                                             ; $628b: $0f
	ld   de, $241f                                   ; $628c: $11 $1f $24
	ccf                                              ; $628f: $3f
	ld   b, b                                        ; $6290: $40
	ld   a, a                                        ; $6291: $7f
	adc  a                                           ; $6292: $8f
	rst  $38                                         ; $6293: $ff
	ld   [hl], b                                     ; $6294: $70
	adc  h                                           ; $6295: $8c
	db   $fc                                         ; $6296: $fc
	rla                                              ; $6297: $17
	rst  $30                                         ; $6298: $f7

jr_073_6299:
	jr   nz, jr_073_623a                             ; $6299: $20 $9f

	inc  b                                           ; $629b: $04
	ld   a, [$9f80]                                  ; $629c: $fa $80 $9f
	db   $fd                                         ; $629f: $fd
	rst  $20                                         ; $62a0: $e7
	add  b                                           ; $62a1: $80
	ld   bc, $0309                                   ; $62a2: $01 $09 $03
	ld   b, a                                        ; $62a5: $47
	ld   c, b                                        ; $62a6: $48
	ld   [$7bfb], sp                                 ; $62a7: $08 $fb $7b
	ld   h, $59                                      ; $62aa: $26 $59
	nop                                              ; $62ac: $00
	rst  $38                                         ; $62ad: $ff
	add  b                                           ; $62ae: $80
	ld   b, e                                        ; $62af: $43
	add  b                                           ; $62b0: $80
	rst  $38                                         ; $62b1: $ff
	add  b                                           ; $62b2: $80
	add  b                                           ; $62b3: $80
	ld   [de], a                                     ; $62b4: $12
	nop                                              ; $62b5: $00
	inc  de                                          ; $62b6: $13
	jp   $2eee                                       ; $62b7: $c3 $ee $2e


	ld   hl, $df11                                   ; $62ba: $21 $11 $df
	inc  bc                                          ; $62bd: $03
	adc  h                                           ; $62be: $8c
	ld   d, b                                        ; $62bf: $50
	ld   h, b                                        ; $62c0: $60
	adc  b                                           ; $62c1: $88
	adc  a                                           ; $62c2: $8f
	ccf                                              ; $62c3: $3f

Call_073_62c4:
	add  hl, sp                                      ; $62c4: $39
	add  hl, bc                                      ; $62c5: $09
	dec  e                                           ; $62c6: $1d
	ld   d, l                                        ; $62c7: $55
	add  b                                           ; $62c8: $80
	xor  d                                           ; $62c9: $aa
	inc  b                                           ; $62ca: $04
	ld   [bc], a                                     ; $62cb: $02
	nop                                              ; $62cc: $00
	db   $fd                                         ; $62cd: $fd
	ldh  [rAUD3LOW], a                               ; $62ce: $e0 $1d
	add  b                                           ; $62d0: $80
	nop                                              ; $62d1: $00
	nop                                              ; $62d2: $00
	ld   [bc], a                                     ; $62d3: $02
	add  b                                           ; $62d4: $80
	add  d                                           ; $62d5: $82
	dec  b                                           ; $62d6: $05

jr_073_62d7:
	rst  $38                                         ; $62d7: $ff
	db   $fd                                         ; $62d8: $fd
	ld   [hl], d                                     ; $62d9: $72
	ld   [hl], c                                     ; $62da: $71
	xor  [hl]                                        ; $62db: $ae
	xor  a                                           ; $62dc: $af
	add  b                                           ; $62dd: $80
	ld   d, b                                        ; $62de: $50
	inc  bc                                          ; $62df: $03
	rst  $38                                         ; $62e0: $ff
	ccf                                              ; $62e1: $3f
	add  $06                                         ; $62e2: $c6 $06
	add  b                                           ; $62e4: $80
	ld   bc, $3f80                                   ; $62e5: $01 $80 $3f
	add  b                                           ; $62e8: $80
	rst  $38                                         ; $62e9: $ff
	rla                                              ; $62ea: $17
	nop                                              ; $62eb: $00
	and  $16                                         ; $62ec: $e6 $16
	di                                               ; $62ee: $f3
	dec  de                                          ; $62ef: $1b
	ld   [$80ef], sp                                 ; $62f0: $08 $ef $80
	adc  c                                           ; $62f3: $89
	and  $fc                                         ; $62f4: $e6 $fc
	db   $e4                                         ; $62f6: $e4
	add  b                                           ; $62f7: $80
	add  c                                           ; $62f8: $81
	ld   bc, $0b06                                   ; $62f9: $01 $06 $0b
	rlca                                             ; $62fc: $07
	ld   e, $9e                                      ; $62fd: $1e $9e
	and  d                                           ; $62ff: $a2
	ldh  [c], a                                      ; $6300: $e2
	dec  a                                           ; $6301: $3d
	add  b                                           ; $6302: $80
	add  c                                           ; $6303: $81
	ld   a, a                                        ; $6304: $7f
	add  b                                           ; $6305: $80
	ldh  [$80], a                                    ; $6306: $e0 $80
	ld   h, b                                        ; $6308: $60
	ld   hl, $70f0                                   ; $6309: $21 $f0 $70
	add  b                                           ; $630c: $80
	ret  nz                                          ; $630d: $c0

	rst  ToBoot                                         ; $630e: $c7
	ld   b, a                                        ; $630f: $47
	jr   c, jr_073_6299                              ; $6310: $38 $87

	nop                                              ; $6312: $00
	sbc  a                                           ; $6313: $9f
	ld   b, b                                        ; $6314: $40
	jr   nc, jr_073_62d7                             ; $6315: $30 $c0

	ld   b, b                                        ; $6317: $40
	rst  ToBoot                                         ; $6318: $c7
	rst  JumpTable                                         ; $6319: $df
	ldh  a, [$28]                                    ; $631a: $f0 $28
	rlca                                             ; $631c: $07
	ld   e, h                                        ; $631d: $5c
	ldh  a, [$ee]                                    ; $631e: $f0 $ee
	nop                                              ; $6320: $00
	ld   [$fa00], a                                  ; $6321: $ea $00 $fa
	nop                                              ; $6324: $00
	rlca                                             ; $6325: $07
	nop                                              ; $6326: $00
	inc  bc                                          ; $6327: $03
	cp   $fd                                         ; $6328: $fe $fd
	nop                                              ; $632a: $00
	db   $fd                                         ; $632b: $fd
	add  b                                           ; $632c: $80
	ccf                                              ; $632d: $3f
	ld   bc, $9f1f                                   ; $632e: $01 $1f $9f
	add  b                                           ; $6331: $80
	adc  a                                           ; $6332: $8f
	ld   a, [bc]                                     ; $6333: $0a
	add  a                                           ; $6334: $87
	rst  $30                                         ; $6335: $f7
	pop  af                                          ; $6336: $f1
	cp   l                                           ; $6337: $bd
	db   $fc                                         ; $6338: $fc
	ld   b, b                                        ; $6339: $40
	nop                                              ; $633a: $00
	xor  h                                           ; $633b: $ac
	db   $fc                                         ; $633c: $fc
	ld   l, a                                        ; $633d: $6f
	cp   a                                           ; $633e: $bf
	add  b                                           ; $633f: $80
	sbc  a                                           ; $6340: $9f
	ld   bc, $67e7                                   ; $6341: $01 $e7 $67
	add  b                                           ; $6344: $80
	ld   [hl], c                                     ; $6345: $71
	rlca                                             ; $6346: $07
	ld   a, h                                        ; $6347: $7c
	db   $fc                                         ; $6348: $fc
	cp   [hl]                                        ; $6349: $be
	cp   $df                                         ; $634a: $fe $df
	ld   a, a                                        ; $634c: $7f
	ld   l, a                                        ; $634d: $6f
	ccf                                              ; $634e: $3f
	ldh  [rSB], a                                    ; $634f: $e0 $01
	add  a                                           ; $6351: $87
	nop                                              ; $6352: $00
	add  [hl]                                        ; $6353: $86
	rrca                                             ; $6354: $0f
	add  [hl]                                        ; $6355: $86
	nop                                              ; $6356: $00
	add  d                                           ; $6357: $82
	rst  $38                                         ; $6358: $ff
	add  b                                           ; $6359: $80
	ld   e, a                                        ; $635a: $5f
	add  b                                           ; $635b: $80
	xor  d                                           ; $635c: $aa
	add  [hl]                                        ; $635d: $86
	nop                                              ; $635e: $00
	add  b                                           ; $635f: $80
	ld   d, b                                        ; $6360: $50
	add  b                                           ; $6361: $80
	xor  e                                           ; $6362: $ab
	add  b                                           ; $6363: $80
	rst  $38                                         ; $6364: $ff
	add  b                                           ; $6365: $80
	cp   $86                                         ; $6366: $fe $86
	nop                                              ; $6368: $00
	add  b                                           ; $6369: $80
	inc  b                                           ; $636a: $04
	add  b                                           ; $636b: $80
	and  d                                           ; $636c: $a2
	add  b                                           ; $636d: $80
	rst  $10                                         ; $636e: $d7
	add  b                                           ; $636f: $80
	adc  a                                           ; $6370: $8f
	adc  b                                           ; $6371: $88
	nop                                              ; $6372: $00
	add  b                                           ; $6373: $80
	add  d                                           ; $6374: $82
	add  b                                           ; $6375: $80
	ld   bc, $ab80                                   ; $6376: $01 $80 $ab
	add  [hl]                                        ; $6379: $86
	nop                                              ; $637a: $00
	add  b                                           ; $637b: $80
	ld   e, a                                        ; $637c: $5f
	add  b                                           ; $637d: $80
	xor  e                                           ; $637e: $ab
	add  b                                           ; $637f: $80
	rra                                              ; $6380: $1f
	add  b                                           ; $6381: $80
	cp   a                                           ; $6382: $bf
	add  [hl]                                        ; $6383: $86
	nop                                              ; $6384: $00
	add  [hl]                                        ; $6385: $86
	rst  $38                                         ; $6386: $ff
	adc  c                                           ; $6387: $89
	ldh  a, [rSC]                                    ; $6388: $f0 $02
	ld   d, b                                        ; $638a: $50
	ldh  a, [$50]                                    ; $638b: $f0 $50
	add  b                                           ; $638d: $80
	ldh  a, [$86]                                    ; $638e: $f0 $86
	nop                                              ; $6390: $00
	add  h                                           ; $6391: $84
	rst  $38                                         ; $6392: $ff
	add  b                                           ; $6393: $80
	ld   [$0086], a                                  ; $6394: $ea $86 $00
	add  b                                           ; $6397: $80
	rst  $38                                         ; $6398: $ff
	add  b                                           ; $6399: $80
	ld   a, [$5080]                                  ; $639a: $fa $80 $50
	add  b                                           ; $639d: $80
	add  b                                           ; $639e: $80
	add  [hl]                                        ; $639f: $86
	nop                                              ; $63a0: $00
	add  b                                           ; $63a1: $80
	ld   d, a                                        ; $63a2: $57
	add  b                                           ; $63a3: $80
	dec  bc                                          ; $63a4: $0b
	add  b                                           ; $63a5: $80
	ld   bc, $0280                                   ; $63a6: $01 $80 $02
	add  [hl]                                        ; $63a9: $86
	nop                                              ; $63aa: $00
	add  d                                           ; $63ab: $82
	rst  $38                                         ; $63ac: $ff
	add  b                                           ; $63ad: $80
	ld   e, a                                        ; $63ae: $5f
	inc  bc                                          ; $63af: $03
	adc  a                                           ; $63b0: $8f
	ld   c, a                                        ; $63b1: $4f
	rst  $38                                         ; $63b2: $ff
	ccf                                              ; $63b3: $3f
	add  c                                           ; $63b4: $81
	rst  $38                                         ; $63b5: $ff
	dec  d                                           ; $63b6: $15
	dec  bc                                          ; $63b7: $0b
	rst  $38                                         ; $63b8: $ff
	dec  bc                                          ; $63b9: $0b
	rst  $38                                         ; $63ba: $ff
	ld   bc, $3eff                                   ; $63bb: $01 $ff $3e
	ccf                                              ; $63be: $3f
	inc  c                                           ; $63bf: $0c
	rrca                                             ; $63c0: $0f
	inc  a                                           ; $63c1: $3c
	ccf                                              ; $63c2: $3f
	nop                                              ; $63c3: $00
	ld   a, a                                        ; $63c4: $7f
	ld   a, e                                        ; $63c5: $7b
	rlca                                             ; $63c6: $07
	sub  b                                           ; $63c7: $90
	sub  e                                           ; $63c8: $93
	ld   hl, sp-$01                                  ; $63c9: $f8 $ff
	ld   hl, sp-$01                                  ; $63cb: $f8 $ff
	adc  e                                           ; $63cd: $8b
	nop                                              ; $63ce: $00
	add  d                                           ; $63cf: $82
	rst  $38                                         ; $63d0: $ff
	add  b                                           ; $63d1: $80
	db   $f4                                         ; $63d2: $f4
	add  b                                           ; $63d3: $80
	and  b                                           ; $63d4: $a0
	add  [hl]                                        ; $63d5: $86
	nop                                              ; $63d6: $00
	add  b                                           ; $63d7: $80
	rst  $38                                         ; $63d8: $ff
	add  b                                           ; $63d9: $80
	db   $eb                                         ; $63da: $eb
	add  b                                           ; $63db: $80
	dec  d                                           ; $63dc: $15
	add  b                                           ; $63dd: $80
	ld   [bc], a                                     ; $63de: $02
	add  b                                           ; $63df: $80
	dec  c                                           ; $63e0: $0d
	add  b                                           ; $63e1: $80
	ld   c, $80                                      ; $63e2: $0e $80
	dec  c                                           ; $63e4: $0d
	ld   bc, $0d0e                                   ; $63e5: $01 $0e $0d
	add  b                                           ; $63e8: $80
	inc  b                                           ; $63e9: $04
	add  b                                           ; $63ea: $80
	ld   [$0003], sp                                 ; $63eb: $08 $03 $00
	ld   [bc], a                                     ; $63ee: $02
	nop                                              ; $63ef: $00
	ld   bc, $0086                                   ; $63f0: $01 $86 $00
	add  c                                           ; $63f3: $81
	ld   hl, sp-$80                                  ; $63f4: $f8 $80
	nop                                              ; $63f6: $00
	ld   [bc], a                                     ; $63f7: $02
	ld   a, b                                        ; $63f8: $78
	ld   [hl], b                                     ; $63f9: $70
	ldh  a, [$80]                                    ; $63fa: $f0 $80
	ld   [hl], h                                     ; $63fc: $74
	add  b                                           ; $63fd: $80
	and  d                                           ; $63fe: $a2
	add  b                                           ; $63ff: $80
	rla                                              ; $6400: $17
	add  b                                           ; $6401: $80
	ld   [bc], a                                     ; $6402: $02
	add  b                                           ; $6403: $80
	ld   b, b                                        ; $6404: $40
	add  b                                           ; $6405: $80
	ld   [$7780], a                                  ; $6406: $ea $80 $77
	add  b                                           ; $6409: $80
	xor  d                                           ; $640a: $aa
	add  b                                           ; $640b: $80
	rra                                              ; $640c: $1f
	add  b                                           ; $640d: $80
	xor  a                                           ; $640e: $af
	add  d                                           ; $640f: $82
	rst  $38                                         ; $6410: $ff
	add  b                                           ; $6411: $80
	ld   a, a                                        ; $6412: $7f
	add  b                                           ; $6413: $80
	xor  a                                           ; $6414: $af
	add  b                                           ; $6415: $80
	ld   b, a                                        ; $6416: $47
	add  b                                           ; $6417: $80
	xor  d                                           ; $6418: $aa
	adc  d                                           ; $6419: $8a
	rst  $38                                         ; $641a: $ff
	add  b                                           ; $641b: $80
	rst  JumpTable                                         ; $641c: $df
	add  b                                           ; $641d: $80
	adc  d                                           ; $641e: $8a
	adc  h                                           ; $641f: $8c
	rst  $38                                         ; $6420: $ff
	add  b                                           ; $6421: $80
	ld   a, [$ff88]                                  ; $6422: $fa $88 $ff
	add  b                                           ; $6425: $80
	db   $eb                                         ; $6426: $eb
	add  b                                           ; $6427: $80
	ld   b, c                                        ; $6428: $41
	add  b                                           ; $6429: $80
	ld   [bc], a                                     ; $642a: $02
	adc  h                                           ; $642b: $8c
	rst  $38                                         ; $642c: $ff
	add  b                                           ; $642d: $80
	cp   a                                           ; $642e: $bf
	add  b                                           ; $642f: $80
	call nc, $fe80                                   ; $6430: $d4 $80 $fe
	adc  d                                           ; $6433: $8a
	rst  $38                                         ; $6434: $ff
	add  b                                           ; $6435: $80
	nop                                              ; $6436: $00
	add  b                                           ; $6437: $80
	cp   d                                           ; $6438: $ba
	add  h                                           ; $6439: $84
	rst  $38                                         ; $643a: $ff
	add  b                                           ; $643b: $80
	ld   a, [$f480]                                  ; $643c: $fa $80 $f4
	add  b                                           ; $643f: $80
	ldh  [c], a                                      ; $6440: $e2
	add  b                                           ; $6441: $80
	rla                                              ; $6442: $17
	add  b                                           ; $6443: $80
	xor  d                                           ; $6444: $aa
	add  b                                           ; $6445: $80
	ld   a, a                                        ; $6446: $7f
	add  b                                           ; $6447: $80
	rst  $38                                         ; $6448: $ff
	add  b                                           ; $6449: $80
	ld   a, a                                        ; $644a: $7f
	add  b                                           ; $644b: $80
	rst  $38                                         ; $644c: $ff
	add  b                                           ; $644d: $80
	ld   e, l                                        ; $644e: $5d
	add  b                                           ; $644f: $80
	xor  d                                           ; $6450: $aa
	add  b                                           ; $6451: $80
	ld   e, a                                        ; $6452: $5f
	add  d                                           ; $6453: $82
	rst  $38                                         ; $6454: $ff
	add  b                                           ; $6455: $80
	rst  $28                                         ; $6456: $ef
	add  h                                           ; $6457: $84
	rst  $38                                         ; $6458: $ff
	add  b                                           ; $6459: $80
	ccf                                              ; $645a: $3f
	add  h                                           ; $645b: $84
	rst  $38                                         ; $645c: $ff
	add  b                                           ; $645d: $80
	db   $eb                                         ; $645e: $eb
	add  b                                           ; $645f: $80
	push bc                                          ; $6460: $c5
	add  b                                           ; $6461: $80
	db   $eb                                         ; $6462: $eb
	add  b                                           ; $6463: $80
	rst  ToBoot                                         ; $6464: $c7
	add  b                                           ; $6465: $80
	jp   nz, $ff83                                   ; $6466: $c2 $83 $ff

	add  e                                           ; $6469: $83
	ei                                               ; $646a: $fb
	ld   bc, $e0ea                                   ; $646b: $01 $ea $e0
	add  b                                           ; $646e: $80
	ld   d, a                                        ; $646f: $57
	ld   bc, $a8a6                                   ; $6470: $01 $a6 $a8
	add  b                                           ; $6473: $80
	call nc, $fa80                                   ; $6474: $d4 $80 $fa
	add  d                                           ; $6477: $82
	rst  $38                                         ; $6478: $ff
	add  b                                           ; $6479: $80
	rst  $30                                         ; $647a: $f7
	add  b                                           ; $647b: $80
	xor  a                                           ; $647c: $af
	inc  bc                                          ; $647d: $03
	dec  d                                           ; $647e: $15
	or   l                                           ; $647f: $b5
	ld   a, [bc]                                     ; $6480: $0a
	xor  d                                           ; $6481: $aa
	add  b                                           ; $6482: $80
	ld   d, b                                        ; $6483: $50
	add  b                                           ; $6484: $80
	ld   hl, sp-$80                                  ; $6485: $f8 $80
	db   $f4                                         ; $6487: $f4
	add  b                                           ; $6488: $80
	and  b                                           ; $6489: $a0
	add  b                                           ; $648a: $80
	call nc, $fe80                                   ; $648b: $d4 $80 $fe
	add  b                                           ; $648e: $80
	ld   e, h                                        ; $648f: $5c
	inc  b                                           ; $6490: $04
	adc  d                                           ; $6491: $8a
	adc  e                                           ; $6492: $8b
	nop                                              ; $6493: $00
	ld   c, $00                                      ; $6494: $0e $00
	add  b                                           ; $6496: $80
	rrca                                             ; $6497: $0f
	add  d                                           ; $6498: $82
	nop                                              ; $6499: $00
	add  h                                           ; $649a: $84
	rrca                                             ; $649b: $0f
	inc  bc                                          ; $649c: $03
	adc  a                                           ; $649d: $8f
	ld   [hl], b                                     ; $649e: $70
	rrca                                             ; $649f: $0f
	nop                                              ; $64a0: $00
	add  b                                           ; $64a1: $80
	rst  $38                                         ; $64a2: $ff
	add  d                                           ; $64a3: $82
	nop                                              ; $64a4: $00
	add  h                                           ; $64a5: $84
	ld   sp, hl                                      ; $64a6: $f9
	db   $10                                         ; $64a7: $10
	rst  $38                                         ; $64a8: $ff
	nop                                              ; $64a9: $00
	ldh  a, [rAUD1SWEEP]                             ; $64aa: $f0 $10
	sbc  $e2                                         ; $64ac: $de $e2
	ld   h, e                                        ; $64ae: $63
	ld   a, h                                        ; $64af: $7c
	inc  [hl]                                        ; $64b0: $34
	rrca                                             ; $64b1: $0f
	and  [hl]                                        ; $64b2: $a6
	pop  hl                                          ; $64b3: $e1
	call nz, $f8fc                                   ; $64b4: $c4 $fc $f8
	adc  [hl]                                        ; $64b7: $8e
	pop  af                                          ; $64b8: $f1
	add  e                                           ; $64b9: $83
	nop                                              ; $64ba: $00
	ld   a, [bc]                                     ; $64bb: $0a
	ret  nz                                          ; $64bc: $c0

	ld   b, b                                        ; $64bd: $40
	ld   a, b                                        ; $64be: $78
	adc  b                                           ; $64bf: $88
	adc  a                                           ; $64c0: $8f
	pop  af                                          ; $64c1: $f1
	pop  de                                          ; $64c2: $d1
	ld   a, $da                                      ; $64c3: $3e $da
	add  $fd                                         ; $64c5: $c6 $fd
	adc  [hl]                                        ; $64c7: $8e
	nop                                              ; $64c8: $00
	add  b                                           ; $64c9: $80
	ld   a, h                                        ; $64ca: $7c
	add  b                                           ; $64cb: $80
	xor  [hl]                                        ; $64cc: $ae
	dec  de                                          ; $64cd: $1b

jr_073_64ce:
	dec  e                                           ; $64ce: $1d
	inc  e                                           ; $64cf: $1c
	ld   c, $0d                                      ; $64d0: $0e $0d
	ld   e, h                                        ; $64d2: $5c
	ld   d, c                                        ; $64d3: $51
	ldh  a, [$e4]                                    ; $64d4: $f0 $e4
	ld   h, h                                        ; $64d6: $64
	ld   l, [hl]                                     ; $64d7: $6e
	xor  [hl]                                        ; $64d8: $ae
	cp   a                                           ; $64d9: $bf
	ld   bc, $2209                                   ; $64da: $01 $09 $22
	ld   e, e                                        ; $64dd: $5b
	inc  c                                           ; $64de: $0c
	ldh  [c], a                                      ; $64df: $e2
	nop                                              ; $64e0: $00
	add  b                                           ; $64e1: $80
	nop                                              ; $64e2: $00
	ld   h, c                                        ; $64e3: $61
	ld   bc, $0587                                   ; $64e4: $01 $87 $05
	rra                                              ; $64e7: $1f
	ld   [$80ea], sp                                 ; $64e8: $08 $ea $80
	ld   [hl], a                                     ; $64eb: $77
	ld   [bc], a                                     ; $64ec: $02
	xor  d                                           ; $64ed: $aa
	ld   c, d                                        ; $64ee: $4a
	rra                                              ; $64ef: $1f
	add  b                                           ; $64f0: $80
	rlca                                             ; $64f1: $07
	add  b                                           ; $64f2: $80
	inc  bc                                          ; $64f3: $03
	add  b                                           ; $64f4: $80
	pop  hl                                          ; $64f5: $e1
	inc  b                                           ; $64f6: $04
	ldh  a, [rLCDC]                                  ; $64f7: $f0 $40
	ld   c, b                                        ; $64f9: $48
	xor  b                                           ; $64fa: $a8
	xor  a                                           ; $64fb: $af
	add  b                                           ; $64fc: $80
	push af                                          ; $64fd: $f5
	add  b                                           ; $64fe: $80
	add  d                                           ; $64ff: $82
	add  b                                           ; $6500: $80
	nop                                              ; $6501: $00
	add  b                                           ; $6502: $80
	and  b                                           ; $6503: $a0
	add  b                                           ; $6504: $80
	call nc, $fe80                                   ; $6505: $d4 $80 $fe
	inc  bc                                          ; $6508: $03
	db   $fc                                         ; $6509: $fc
	ld   a, h                                        ; $650a: $7c
	ld   l, d                                        ; $650b: $6a
	ld   [$5080], a                                  ; $650c: $ea $80 $50
	add  b                                           ; $650f: $80
	and  b                                           ; $6510: $a0
	add  l                                           ; $6511: $85
	nop                                              ; $6512: $00
	ld   bc, $0002                                   ; $6513: $01 $02 $00
	add  b                                           ; $6516: $80
	dec  b                                           ; $6517: $05
	dec  b                                           ; $6518: $05
	ld   [bc], a                                     ; $6519: $02
	rst  $38                                         ; $651a: $ff
	push af                                          ; $651b: $f5
	jp   z, $01c1                                    ; $651c: $ca $c1 $01

	add  c                                           ; $651f: $81
	nop                                              ; $6520: $00
	ld   c, $f0                                      ; $6521: $0e $f0
	ei                                               ; $6523: $fb
	dec  de                                          ; $6524: $1b
	db   $f4                                         ; $6525: $f4
	db   $ec                                         ; $6526: $ec
	ld   a, [$07f6]                                  ; $6527: $fa $f6 $07
	nop                                              ; $652a: $00
	dec  c                                           ; $652b: $0d
	nop                                              ; $652c: $00
	ld   [de], a                                     ; $652d: $12
	nop                                              ; $652e: $00
	add  hl, hl                                      ; $652f: $29
	db   $10                                         ; $6530: $10
	add  b                                           ; $6531: $80
	ld   [$1e06], sp                                 ; $6532: $08 $06 $1e
	nop                                              ; $6535: $00
	dec  e                                           ; $6536: $1d
	ld   bc, $0021                                   ; $6537: $01 $21 $00
	add  [hl]                                        ; $653a: $86
	add  e                                           ; $653b: $83
	nop                                              ; $653c: $00
	ld   c, $60                                      ; $653d: $0e $60
	nop                                              ; $653f: $00
	add  b                                           ; $6540: $80
	nop                                              ; $6541: $00
	and  b                                           ; $6542: $a0
	nop                                              ; $6543: $00
	add  b                                           ; $6544: $80
	nop                                              ; $6545: $00
	ret  nz                                          ; $6546: $c0

	nop                                              ; $6547: $00
	adc  [hl]                                        ; $6548: $8e
	ld   b, $17                                      ; $6549: $06 $17
	nop                                              ; $654b: $00
	jr   nz, jr_073_64ce                             ; $654c: $20 $80

	rrca                                             ; $654e: $0f
	ld   bc, $0d09                                   ; $654f: $01 $09 $0d
	add  c                                           ; $6552: $81
	add  hl, bc                                      ; $6553: $09
	ld   b, $0d                                      ; $6554: $06 $0d
	ld   a, a                                        ; $6556: $7f
	ccf                                              ; $6557: $3f
	add  b                                           ; $6558: $80
	ld   e, a                                        ; $6559: $5f
	nop                                              ; $655a: $00
	ld   e, h                                        ; $655b: $5c
	add  b                                           ; $655c: $80
	ld   [bc], a                                     ; $655d: $02
	add  b                                           ; $655e: $80
	cp   $01                                         ; $655f: $fe $01
	ld   h, $b6                                      ; $6561: $26 $b6
	add  c                                           ; $6563: $81
	ld   h, $00                                      ; $6564: $26 $00
	or   l                                           ; $6566: $b5
	add  b                                           ; $6567: $80
	rst  $38                                         ; $6568: $ff
	ld   bc, $ff00                                   ; $6569: $01 $00 $ff
	add  l                                           ; $656c: $85
	nop                                              ; $656d: $00
	ld   bc, $007e                                   ; $656e: $01 $7e $00
	add  b                                           ; $6571: $80
	ld   a, $00                                      ; $6572: $3e $00
	add  c                                           ; $6574: $81
	add  b                                           ; $6575: $80
	rst  $38                                         ; $6576: $ff
	ld   bc, $ff00                                   ; $6577: $01 $00 $ff
	add  e                                           ; $657a: $83
	rrca                                             ; $657b: $0f
	add  d                                           ; $657c: $82
	nop                                              ; $657d: $00
	add  b                                           ; $657e: $80
	rrca                                             ; $657f: $0f
	add  b                                           ; $6580: $80
	rlca                                             ; $6581: $07
	add  b                                           ; $6582: $80
	inc  bc                                          ; $6583: $03
	nop                                              ; $6584: $00
	add  hl, bc                                      ; $6585: $09
	add  e                                           ; $6586: $83
	ld   sp, hl                                      ; $6587: $f9
	add  d                                           ; $6588: $82
	ld   bc, $f984                                   ; $6589: $01 $84 $f9
	nop                                              ; $658c: $00
	add  b                                           ; $658d: $80
	add  b                                           ; $658e: $80
	ldh  [rAUD1LEN], a                               ; $658f: $e0 $11
	db   $fc                                         ; $6591: $fc
	sbc  h                                           ; $6592: $9c
	cp   $e2                                         ; $6593: $fe $e2
	cp   $8d                                         ; $6595: $fe $8d
	adc  a                                           ; $6597: $8f
	add  b                                           ; $6598: $80
	ldh  a, [$e0]                                    ; $6599: $f0 $e0
	sbc  $ca                                         ; $659b: $de $ca
	add  $c2                                         ; $659d: $c6 $c2
	ldh  a, [$e3]                                    ; $659f: $f0 $e3
	sbc  d                                           ; $65a1: $9a
	adc  d                                           ; $65a2: $8a
	add  b                                           ; $65a3: $80
	ldh  [c], a                                      ; $65a4: $e2
	add  c                                           ; $65a5: $81
	ei                                               ; $65a6: $fb
	ld   b, $9b                                      ; $65a7: $06 $9b
	ei                                               ; $65a9: $fb
	add  a                                           ; $65aa: $87
	sbc  a                                           ; $65ab: $9f
	add  d                                           ; $65ac: $82
	db   $e3                                         ; $65ad: $e3
	sbc  [hl]                                        ; $65ae: $9e
	add  e                                           ; $65af: $83
	nop                                              ; $65b0: $00
	inc  b                                           ; $65b1: $04
	ld   b, b                                        ; $65b2: $40
	ret  nz                                          ; $65b3: $c0

	adc  b                                           ; $65b4: $88
	ld   hl, sp-$10                                  ; $65b5: $f8 $f0
	add  b                                           ; $65b7: $80
	cp   $0d                                         ; $65b8: $fe $0d
	rst  $38                                         ; $65ba: $ff
	ccf                                              ; $65bb: $3f
	rst  $38                                         ; $65bc: $ff
	ld   sp, $1700                                   ; $65bd: $31 $00 $17
	nop                                              ; $65c0: $00
	ld   a, [hl-]                                    ; $65c1: $3a
	nop                                              ; $65c2: $00
	inc  b                                           ; $65c3: $04
	nop                                              ; $65c4: $00
	inc  a                                           ; $65c5: $3c
	nop                                              ; $65c6: $00
	dec  bc                                          ; $65c7: $0b
	add  b                                           ; $65c8: $80
	ld   [$8800], sp                                 ; $65c9: $08 $00 $88
	add  b                                           ; $65cc: $80

jr_073_65cd:
	ret  z                                           ; $65cd: $c8

	inc  c                                           ; $65ce: $0c
	db   $e4                                         ; $65cf: $e4
	nop                                              ; $65d0: $00
	ldh  a, [rP1]                                    ; $65d1: $f0 $00
	add  h                                           ; $65d3: $84
	nop                                              ; $65d4: $00
	cp   b                                           ; $65d5: $b8
	nop                                              ; $65d6: $00
	ld   [hl], b                                     ; $65d7: $70
	nop                                              ; $65d8: $00
	ret  nz                                          ; $65d9: $c0

	nop                                              ; $65da: $00
	ld   c, $81                                      ; $65db: $0e $81
	ld   b, $04                                      ; $65dd: $06 $04
	dec  bc                                          ; $65df: $0b
	nop                                              ; $65e0: $00
	ld   [bc], a                                     ; $65e1: $02
	nop                                              ; $65e2: $00
	ld   bc, $0080                                   ; $65e3: $01 $80 $00
	add  b                                           ; $65e6: $80
	ld   bc, $0380                                   ; $65e7: $01 $80 $03
	ld   bc, $e007                                   ; $65ea: $01 $07 $e0
	add  b                                           ; $65ed: $80
	ld   h, b                                        ; $65ee: $60
	ld   [de], a                                     ; $65ef: $12
	ld   h, a                                        ; $65f0: $67
	ld   b, b                                        ; $65f1: $40
	nop                                              ; $65f2: $00
	jr   nc, jr_073_65f5                             ; $65f3: $30 $00

jr_073_65f5:
	inc  c                                           ; $65f5: $0c
	inc  b                                           ; $65f6: $04
	add  h                                           ; $65f7: $84
	adc  a                                           ; $65f8: $8f
	sbc  a                                           ; $65f9: $9f
	sub  a                                           ; $65fa: $97
	db   $e4                                         ; $65fb: $e4
	pop  hl                                          ; $65fc: $e1
	ld   bc, $0c00                                   ; $65fd: $01 $00 $0c
	db   $fc                                         ; $6600: $fc
	ld   a, [bc]                                     ; $6601: $0a
	ld   [bc], a                                     ; $6602: $02
	add  b                                           ; $6603: $80
	ld   a, [bc]                                     ; $6604: $0a
	nop                                              ; $6605: $00
	rrca                                             ; $6606: $0f
	add  b                                           ; $6607: $80
	rlca                                             ; $6608: $07
	ld   [bc], a                                     ; $6609: $02
	rst  $30                                         ; $660a: $f7
	ldh  a, [$f7]                                    ; $660b: $f0 $f7
	add  b                                           ; $660d: $80
	push af                                          ; $660e: $f5
	add  b                                           ; $660f: $80
	dec  b                                           ; $6610: $05
	inc  bc                                          ; $6611: $03
	rlca                                             ; $6612: $07
	ld   a, a                                        ; $6613: $7f
	add  b                                           ; $6614: $80
	nop                                              ; $6615: $00
	add  c                                           ; $6616: $81
	add  b                                           ; $6617: $80
	add  d                                           ; $6618: $82
	nop                                              ; $6619: $00
	dec  bc                                          ; $661a: $0b
	ld   b, b                                        ; $661b: $40
	ld   d, b                                        ; $661c: $50
	ld   [hl], b                                     ; $661d: $70
	ld   l, b                                        ; $661e: $68
	ld   a, b                                        ; $661f: $78
	inc  [hl]                                        ; $6620: $34
	cp   h                                           ; $6621: $bc
	ld   [hl], l                                     ; $6622: $75
	nop                                              ; $6623: $00
	ld   bc, $2430                                   ; $6624: $01 $30 $24
	add  b                                           ; $6627: $80
	and  $01                                         ; $6628: $e6 $01
	ld   h, h                                        ; $662a: $64
	ld   c, h                                        ; $662b: $4c
	add  b                                           ; $662c: $80
	ld   a, [bc]                                     ; $662d: $0a
	ld   bc, $5000                                   ; $662e: $01 $00 $50
	add  c                                           ; $6631: $81
	nop                                              ; $6632: $00
	nop                                              ; $6633: $00
	ld   h, b                                        ; $6634: $60
	add  b                                           ; $6635: $80
	nop                                              ; $6636: $00
	nop                                              ; $6637: $00
	ld   bc, $0081                                   ; $6638: $01 $81 $00
	add  c                                           ; $663b: $81
	ld   [bc], a                                     ; $663c: $02
	add  h                                           ; $663d: $84
	ld   b, $00                                      ; $663e: $06 $00
	db   $fc                                         ; $6640: $fc
	add  b                                           ; $6641: $80
	ccf                                              ; $6642: $3f
	ld   bc, $2e38                                   ; $6643: $01 $38 $2e
	add  c                                           ; $6646: $81
	jr   c, jr_073_664b                              ; $6647: $38 $02

	add  hl, hl                                      ; $6649: $29
	ccf                                              ; $664a: $3f

jr_073_664b:
	jr   c, jr_073_65cd                              ; $664b: $38 $80

	ccf                                              ; $664d: $3f
	inc  bc                                          ; $664e: $03
	jr   c, @+$30                                    ; $664f: $38 $2e

	jr   c, jr_073_6681                              ; $6651: $38 $2e

	add  b                                           ; $6653: $80
	rst  $38                                         ; $6654: $ff
	ld   bc, $ee88                                   ; $6655: $01 $88 $ee
	add  c                                           ; $6658: $81
	adc  b                                           ; $6659: $88
	ld   [bc], a                                     ; $665a: $02
	sbc  c                                           ; $665b: $99
	rst  $38                                         ; $665c: $ff
	adc  b                                           ; $665d: $88
	add  b                                           ; $665e: $80
	rst  $38                                         ; $665f: $ff
	inc  bc                                          ; $6660: $03
	adc  b                                           ; $6661: $88
	xor  $88                                         ; $6662: $ee $88
	xor  $80                                         ; $6664: $ee $80
	rst  $38                                         ; $6666: $ff
	ld   c, $88                                      ; $6667: $0e $88
	xor  $88                                         ; $6669: $ee $88
	adc  [hl]                                        ; $666b: $8e
	add  b                                           ; $666c: $80
	and  b                                           ; $666d: $a0
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $666e: $cf
	adc  a                                           ; $666f: $8f
	and  b                                           ; $6670: $a0
	xor  a                                           ; $6671: $af
	ld   l, a                                        ; $6672: $6f
	ld   c, h                                        ; $6673: $4c
	db   $ec                                         ; $6674: $ec
	ld   sp, $8201                                   ; $6675: $31 $01 $82
	nop                                              ; $6678: $00
	add  b                                           ; $6679: $80
	ld   bc, $0082                                   ; $667a: $01 $82 $00
	nop                                              ; $667d: $00
	ld   bc, $0d81                                   ; $667e: $01 $81 $0d

jr_073_6681:
	nop                                              ; $6681: $00
	dec  b                                           ; $6682: $05
	add  c                                           ; $6683: $81
	ld   sp, hl                                      ; $6684: $f9
	add  b                                           ; $6685: $80
	ld   a, c                                        ; $6686: $79
	add  d                                           ; $6687: $82
	ld   sp, hl                                      ; $6688: $f9
	add  b                                           ; $6689: $80
	ld   a, c                                        ; $668a: $79
	add  b                                           ; $668b: $80
	ld   sp, hl                                      ; $668c: $f9
	add  b                                           ; $668d: $80
	sbc  c                                           ; $668e: $99
	ld   bc, $cab0                                   ; $668f: $01 $b0 $ca

jr_073_6692:
	add  h                                           ; $6692: $84
	jp   nz, $fa0a                                   ; $6693: $c2 $0a $fa

	ldh  a, [c]                                      ; $6696: $f2
	or   d                                           ; $6697: $b2
	cp   $c6                                         ; $6698: $fe $c6
	cp   $89                                         ; $669a: $fe $89
	adc  a                                           ; $669c: $8f
	add  d                                           ; $669d: $82
	jp   c, $84fa                                    ; $669e: $da $fa $84

	jp   z, $cb00                                    ; $66a1: $ca $00 $cb

	add  b                                           ; $66a4: $80
	db   $eb                                         ; $66a5: $eb
	jr   jr_073_6692                                 ; $66a6: $18 $ea

jr_073_66a8:
	ei                                               ; $66a8: $fb
	adc  e                                           ; $66a9: $8b
	ei                                               ; $66aa: $fb
	rrca                                             ; $66ab: $0f
	rst  $38                                         ; $66ac: $ff
	ld   hl, sp-$61                                  ; $66ad: $f8 $9f
	rst  JumpTable                                         ; $66af: $df
	sub  e                                           ; $66b0: $93
	sbc  e                                           ; $66b1: $9b
	sub  d                                           ; $66b2: $92
	sub  e                                           ; $66b3: $93
	sub  d                                           ; $66b4: $92
	jp   nc, $3af2                                   ; $66b5: $d2 $f2 $3a

	cp   $c3                                         ; $66b8: $fe $c3
	rst  $38                                         ; $66ba: $ff
	call z, $c8e8                                    ; $66bb: $cc $e8 $c8
	add  sp, $28                                     ; $66be: $e8 $28
	add  b                                           ; $66c0: $80
	add  sp, -$7f                                    ; $66c1: $e8 $81
	ld   c, b                                        ; $66c3: $48
	ld   bc, $486f                                   ; $66c4: $01 $6f $48
	add  b                                           ; $66c7: $80
	ld   c, e                                        ; $66c8: $4b
	inc  b                                           ; $66c9: $04
	ld   c, b                                        ; $66ca: $48
	ret  z                                           ; $66cb: $c8

	scf                                              ; $66cc: $37
	ld   b, $0e                                      ; $66cd: $06 $0e
	add  c                                           ; $66cf: $81
	ld   a, a                                        ; $66d0: $7f
	add  b                                           ; $66d1: $80
	nop                                              ; $66d2: $00
	dec  b                                           ; $66d3: $05
	ld   b, b                                        ; $66d4: $40
	rra                                              ; $66d5: $1f
	sbc  $02                                         ; $66d6: $de $02
	cp   $fd                                         ; $66d8: $fe $fd
	add  b                                           ; $66da: $80
	nop                                              ; $66db: $00
	dec  b                                           ; $66dc: $05
	ld   a, b                                        ; $66dd: $78
	ld   h, [hl]                                     ; $66de: $66
	rst  $20                                         ; $66df: $e7
	cp   $f8                                         ; $66e0: $fe $f8
	rst  $38                                         ; $66e2: $ff
	add  b                                           ; $66e3: $80
	rlca                                             ; $66e4: $07
	ld   a, [bc]                                     ; $66e5: $0a
	ld   [$2cb8], sp                                 ; $66e6: $08 $b8 $2c
	cpl                                              ; $66e9: $2f
	inc  c                                           ; $66ea: $0c
	cp   h                                           ; $66eb: $bc
	sbc  h                                           ; $66ec: $9c
	cpl                                              ; $66ed: $2f
	or   b                                           ; $66ee: $b0
	ld   c, b                                        ; $66ef: $48
	ld   l, h                                        ; $66f0: $6c
	add  c                                           ; $66f1: $81
	ld   c, b                                        ; $66f2: $48
	nop                                              ; $66f3: $00
	adc  h                                           ; $66f4: $8c
	add  c                                           ; $66f5: $81
	ld   hl, sp+$03                                  ; $66f6: $f8 $03
	jr   jr_073_6702                                 ; $66f8: $18 $08

	call z, $80e8                                    ; $66fa: $cc $e8 $80
	ret  z                                           ; $66fd: $c8

	nop                                              ; $66fe: $00
	inc  l                                           ; $66ff: $2c
	add  b                                           ; $6700: $80
	ccf                                              ; $6701: $3f

jr_073_6702:
	ld   bc, $3e3c                                   ; $6702: $01 $3c $3e
	add  d                                           ; $6705: $82
	ld   a, [hl]                                     ; $6706: $7e
	ld   bc, $fcfe                                   ; $6707: $01 $fe $fc
	add  b                                           ; $670a: $80
	ld   a, a                                        ; $670b: $7f
	ld   a, [bc]                                     ; $670c: $0a
	inc  e                                           ; $670d: $1c
	ld   e, $0e                                      ; $670e: $1e $0e
	inc  bc                                          ; $6710: $03
	db   $ec                                         ; $6711: $ec
	db   $e4                                         ; $6712: $e4
	db   $fc                                         ; $6713: $fc
	ld   hl, sp-$44                                  ; $6714: $f8 $bc
	xor  l                                           ; $6716: $ad
	cp   h                                           ; $6717: $bc
	add  b                                           ; $6718: $80
	db   $fc                                         ; $6719: $fc
	ld   [bc], a                                     ; $671a: $02
	xor  h                                           ; $671b: $ac
	db   $fc                                         ; $671c: $fc
	db   $ec                                         ; $671d: $ec
	add  c                                           ; $671e: $81
	cp   h                                           ; $671f: $bc
	ld   [bc], a                                     ; $6720: $02
	or   c                                           ; $6721: $b1
	nop                                              ; $6722: $00
	jr   nz, jr_073_66a8                             ; $6723: $20 $83

	nop                                              ; $6725: $00
	nop                                              ; $6726: $00
	ld   b, b                                        ; $6727: $40
	add  c                                           ; $6728: $81
	nop                                              ; $6729: $00
	inc  b                                           ; $672a: $04
	ld   c, $08                                      ; $672b: $0e $08
	dec  c                                           ; $672d: $0d
	nop                                              ; $672e: $00
	adc  [hl]                                        ; $672f: $8e
	add  a                                           ; $6730: $87
	ld   b, $80                                      ; $6731: $06 $80
	ld   c, $00                                      ; $6733: $0e $00
	ld   d, $81                                      ; $6735: $16 $81
	ld   e, $04                                      ; $6737: $1e $04
	ldh  [c], a                                      ; $6739: $e2
	jr   c, jr_073_6764                              ; $673a: $38 $28

	ld   a, $38                                      ; $673c: $3e $38
	add  b                                           ; $673e: $80
	ccf                                              ; $673f: $3f
	ld   bc, $2e38                                   ; $6740: $01 $38 $2e
	add  c                                           ; $6743: $81
	jr   c, jr_073_6746                              ; $6744: $38 $00

jr_073_6746:
	ld   l, $80                                      ; $6746: $2e $80
	jr   c, @+$03                                    ; $6748: $38 $01

	ld   a, $58                                      ; $674a: $3e $58
	add  b                                           ; $674c: $80
	adc  b                                           ; $674d: $88
	ld   bc, $88ee                                   ; $674e: $01 $ee $88
	add  b                                           ; $6751: $80
	cp   $03                                         ; $6752: $fe $03
	add  b                                           ; $6754: $80
	ret  nz                                          ; $6755: $c0

	add  b                                           ; $6756: $80
	ret  nz                                          ; $6757: $c0

	add  c                                           ; $6758: $81
	nop                                              ; $6759: $00
	inc  b                                           ; $675a: $04
	ld   [$690e], sp                                 ; $675b: $08 $0e $69
	db   $ec                                         ; $675e: $ec
	ld   l, h                                        ; $675f: $6c
	add  c                                           ; $6760: $81
	db   $ec                                         ; $6761: $ec
	ld   [bc], a                                     ; $6762: $02
	add  e                                           ; $6763: $83

jr_073_6764:
	add  b                                           ; $6764: $80
	nop                                              ; $6765: $00
	add  b                                           ; $6766: $80
	ld   l, a                                        ; $6767: $6f
	dec  b                                           ; $6768: $05
	ret  nz                                          ; $6769: $c0

	xor  a                                           ; $676a: $af
	rst  $28                                         ; $676b: $ef
	ld   l, a                                        ; $676c: $6f
	rst  $28                                         ; $676d: $ef
	ldh  a, [$86]                                    ; $676e: $f0 $86
	nop                                              ; $6770: $00
	add  d                                           ; $6771: $82
	rrca                                             ; $6772: $0f
	add  c                                           ; $6773: $81
	ld   bc, $b802                                   ; $6774: $01 $02 $b8
	add  hl, bc                                      ; $6777: $09
	ld   e, c                                        ; $6778: $59
	add  b                                           ; $6779: $80
	add  hl, bc                                      ; $677a: $09
	add  c                                           ; $677b: $81
	add  hl, de                                      ; $677c: $19
	add  d                                           ; $677d: $82
	ld   e, c                                        ; $677e: $59
	add  c                                           ; $677f: $81
	nop                                              ; $6780: $00
	rlca                                             ; $6781: $07
	ld   e, e                                        ; $6782: $5b
	set  6, b                                        ; $6783: $cb $f0
	ldh  [$fe], a                                    ; $6785: $e0 $fe
	or   $ce                                         ; $6787: $f6 $ce
	add  $83                                         ; $6789: $c6 $83
	jp   nz, Jump_073_4282                           ; $678b: $c2 $82 $42

	rlca                                             ; $678e: $07
	call c, $a39f                                    ; $678f: $dc $9f $a3
	db   $e3                                         ; $6792: $e3
	jp   nz, $e9fa                                   ; $6793: $c2 $fa $e9

	ret  c                                           ; $6796: $d8

	add  [hl]                                        ; $6797: $86
	jp   z, Jump_073_570a                            ; $6798: $ca $0a $57

	rst  $38                                         ; $679b: $ff
	pop  hl                                          ; $679c: $e1
	rst  $38                                         ; $679d: $ff
	cp   $3f                                         ; $679e: $fe $3f
	cp   e                                           ; $67a0: $bb
	ld   h, $a3                                      ; $67a1: $26 $a3
	ld   [hl+], a                                    ; $67a3: $22
	and  d                                           ; $67a4: $a2
	add  e                                           ; $67a5: $83
	ld   [hl+], a                                    ; $67a6: $22
	ld   bc, $cb68                                   ; $67a7: $01 $68 $cb
	add  b                                           ; $67aa: $80
	ret  z                                           ; $67ab: $c8

	inc  bc                                          ; $67ac: $03
	add  hl, bc                                      ; $67ad: $09
	ret                                              ; $67ae: $c9


	ret  z                                           ; $67af: $c8

jr_073_67b0:
	ld   c, b                                        ; $67b0: $48
	add  b                                           ; $67b1: $80
	ld   c, d                                        ; $67b2: $4a
	nop                                              ; $67b3: $00
	ld   c, b                                        ; $67b4: $48
	add  e                                           ; $67b5: $83
	ld   c, d                                        ; $67b6: $4a
	ld   bc, $febc                                   ; $67b7: $01 $bc $fe
	add  b                                           ; $67ba: $80
	nop                                              ; $67bb: $00
	add  b                                           ; $67bc: $80
	db   $fc                                         ; $67bd: $fc
	ld   bc, $0100                                   ; $67be: $01 $00 $01
	add  b                                           ; $67c1: $80
	add  [hl]                                        ; $67c2: $86
	nop                                              ; $67c3: $00
	nop                                              ; $67c4: $00
	add  d                                           ; $67c5: $82
	add  [hl]                                        ; $67c6: $86
	add  hl, bc                                      ; $67c7: $09
	cp   $60                                         ; $67c8: $fe $60
	inc  l                                           ; $67ca: $2c
	dec  c                                           ; $67cb: $0d
	cp   a                                           ; $67cc: $bf
	sbc  b                                           ; $67cd: $98
	daa                                              ; $67ce: $27
	add  hl, sp                                      ; $67cf: $39
	jr   nz, jr_073_6805                             ; $67d0: $20 $33

	add  e                                           ; $67d2: $83
	jr   nz, jr_073_67d7                             ; $67d3: $20 $02

	jr   z, jr_073_67f7                              ; $67d5: $28 $20

jr_073_67d7:
	ld   e, h                                        ; $67d7: $5c
	add  b                                           ; $67d8: $80
	rst  $38                                         ; $67d9: $ff
	add  b                                           ; $67da: $80
	rst  JumpTable                                         ; $67db: $df
	dec  b                                           ; $67dc: $05
	jp   hl                                          ; $67dd: $e9


	adc  l                                           ; $67de: $8d
	ld   l, c                                        ; $67df: $69
	ld   c, c                                        ; $67e0: $49
	add  hl, bc                                      ; $67e1: $09
	dec  c                                           ; $67e2: $0d
	add  c                                           ; $67e3: $81
	rra                                              ; $67e4: $1f
	inc  b                                           ; $67e5: $04
	ld   e, a                                        ; $67e6: $5f
	rra                                              ; $67e7: $1f
	db   $fd                                         ; $67e8: $fd
	ld   c, $0c                                      ; $67e9: $0e $0c
	add  b                                           ; $67eb: $80
	adc  a                                           ; $67ec: $8f
	ld   [bc], a                                     ; $67ed: $02
	inc  c                                           ; $67ee: $0c
	adc  [hl]                                        ; $67ef: $8e
	ld   c, $80                                      ; $67f0: $0e $80
	ld   e, $0b                                      ; $67f2: $1e $0b
	sbc  h                                           ; $67f4: $9c
	sbc  a                                           ; $67f5: $9f
	xor  a                                           ; $67f6: $af

jr_073_67f7:
	scf                                              ; $67f7: $37
	ld   [de], a                                     ; $67f8: $12
	ld   [bc], a                                     ; $67f9: $02
	ld   d, l                                        ; $67fa: $55
	db   $fc                                         ; $67fb: $fc
	xor  h                                           ; $67fc: $ac
	db   $fc                                         ; $67fd: $fc
	db   $ec                                         ; $67fe: $ec
	cp   h                                           ; $67ff: $bc
	add  b                                           ; $6800: $80
	cp   [hl]                                        ; $6801: $be
	dec  b                                           ; $6802: $05
	cp   $fc                                         ; $6803: $fe $fc

jr_073_6805:
	xor  [hl]                                        ; $6805: $ae
	cp   $d6                                         ; $6806: $fe $d6
	call nc, $aa80                                   ; $6808: $d4 $80 $aa
	ld   [bc], a                                     ; $680b: $02
	adc  [hl]                                        ; $680c: $8e
	ld   [$8005], sp                                 ; $680d: $08 $05 $80
	ld   bc, $0000                                   ; $6810: $01 $00 $00
	add  b                                           ; $6813: $80
	ret  nz                                          ; $6814: $c0

	ld   bc, $0040                                   ; $6815: $01 $40 $00
	add  c                                           ; $6818: $81
	ld   b, b                                        ; $6819: $40
	nop                                              ; $681a: $00
	nop                                              ; $681b: $00
	add  b                                           ; $681c: $80
	add  hl, hl                                      ; $681d: $29
	nop                                              ; $681e: $00
	sub  a                                           ; $681f: $97
	add  a                                           ; $6820: $87
	ld   e, $03                                      ; $6821: $1e $03
	ld   a, [bc]                                     ; $6823: $0a
	ld   [bc], a                                     ; $6824: $02
	inc  bc                                          ; $6825: $03
	nop                                              ; $6826: $00
	add  b                                           ; $6827: $80
	ld   b, b                                        ; $6828: $40
	inc  b                                           ; $6829: $04
	ei                                               ; $682a: $fb
	inc  a                                           ; $682b: $3c
	jr   z, jr_073_685e                              ; $682c: $28 $30

	jr   nz, jr_073_67b0                             ; $682e: $20 $80

	nop                                              ; $6830: $00
	add  e                                           ; $6831: $83
	jr   nz, jr_073_6839                             ; $6832: $20 $05

	jp   c, $0306                                    ; $6834: $da $06 $03

	nop                                              ; $6837: $00
	pop  af                                          ; $6838: $f1

jr_073_6839:
	ld   c, $80                                      ; $6839: $0e $80
	nop                                              ; $683b: $00
	nop                                              ; $683c: $00
	db   $10                                         ; $683d: $10
	add  c                                           ; $683e: $81
	ld   e, $01                                      ; $683f: $1e $01
	db   $10                                         ; $6841: $10
	ld   e, $82                                      ; $6842: $1e $82
	nop                                              ; $6844: $00
	inc  b                                           ; $6845: $04
	cp   $01                                         ; $6846: $fe $01
	ld   d, e                                        ; $6848: $53
	xor  h                                           ; $6849: $ac
	xor  a                                           ; $684a: $af
	add  e                                           ; $684b: $83
	xor  h                                           ; $684c: $ac
	ld   bc, $8083                                   ; $684d: $01 $83 $80
	add  d                                           ; $6850: $82
	xor  a                                           ; $6851: $af
	add  b                                           ; $6852: $80
	add  b                                           ; $6853: $80
	nop                                              ; $6854: $00
	ldh  a, [$81]                                    ; $6855: $f0 $81
	ld   bc, $0e01                                   ; $6857: $01 $01 $0e
	nop                                              ; $685a: $00
	add  d                                           ; $685b: $82
	rrca                                             ; $685c: $0f
	ld   [bc], a                                     ; $685d: $02

jr_073_685e:
	nop                                              ; $685e: $00
	rrca                                             ; $685f: $0f
	nop                                              ; $6860: $00
	add  c                                           ; $6861: $81
	rrca                                             ; $6862: $0f
	dec  c                                           ; $6863: $0d
	rst  $38                                         ; $6864: $ff
	ld   e, e                                        ; $6865: $5b
	nop                                              ; $6866: $00
	ld   e, e                                        ; $6867: $5b
	rst  JumpTable                                         ; $6868: $df
	nop                                              ; $6869: $00
	rst  JumpTable                                         ; $686a: $df
	rst  $38                                         ; $686b: $ff
	ldh  [rIE], a                                    ; $686c: $e0 $ff
	nop                                              ; $686e: $00
	rst  $38                                         ; $686f: $ff
	ld   e, $fe                                      ; $6870: $1e $fe
	add  b                                           ; $6872: $80
	ld   bc, $ff0b                                   ; $6873: $01 $0b $ff
	ld   b, d                                        ; $6876: $42
	cp   l                                           ; $6877: $bd
	nop                                              ; $6878: $00
	ld   a, a                                        ; $6879: $7f
	rst  $38                                         ; $687a: $ff
	ld   a, a                                        ; $687b: $7f
	rst  $38                                         ; $687c: $ff
	nop                                              ; $687d: $00
	rst  $38                                         ; $687e: $ff
	nop                                              ; $687f: $00
	rst  $38                                         ; $6880: $ff
	add  b                                           ; $6881: $80
	ld   bc, $ff33                                   ; $6882: $01 $33 $ff
	nop                                              ; $6885: $00
	add  d                                           ; $6886: $82
	jp   z, $00b6                                    ; $6887: $ca $b6 $00

	cp   $ff                                         ; $688a: $fe $ff
	add  b                                           ; $688c: $80
	rst  $38                                         ; $688d: $ff
	nop                                              ; $688e: $00
	rst  $38                                         ; $688f: $ff
	add  b                                           ; $6890: $80
	nop                                              ; $6891: $00
	rst  $38                                         ; $6892: $ff
	nop                                              ; $6893: $00
	add  b                                           ; $6894: $80
	rst  $38                                         ; $6895: $ff
	ld   a, a                                        ; $6896: $7f
	db   $e3                                         ; $6897: $e3
	inc  e                                           ; $6898: $1c
	nop                                              ; $6899: $00
	cp   $ff                                         ; $689a: $fe $ff
	nop                                              ; $689c: $00
	rst  $38                                         ; $689d: $ff
	ld   bc, $e0ff                                   ; $689e: $01 $ff $e0
	rra                                              ; $68a1: $1f
	add  b                                           ; $68a2: $80
	rst  $38                                         ; $68a3: $ff
	ld   b, b                                        ; $68a4: $40
	ret  nz                                          ; $68a5: $c0

	rst  $30                                         ; $68a6: $f7
	jp   z, $1528                                    ; $68a7: $ca $28 $15

	ld   bc, $01ff                                   ; $68aa: $01 $ff $01
	rst  $38                                         ; $68ad: $ff
	nop                                              ; $68ae: $00
	rst  $38                                         ; $68af: $ff
	rlca                                             ; $68b0: $07
	ld   hl, sp+$07                                  ; $68b1: $f8 $07
	nop                                              ; $68b3: $00
	db   $fc                                         ; $68b4: $fc
	rlca                                             ; $68b5: $07
	inc  bc                                          ; $68b6: $03
	rst  $38                                         ; $68b7: $ff
	add  b                                           ; $68b8: $80
	ld   d, l                                        ; $68b9: $55
	add  b                                           ; $68ba: $80
	rst  $38                                         ; $68bb: $ff
	dec  c                                           ; $68bc: $0d
	rlca                                             ; $68bd: $07
	rst  $38                                         ; $68be: $ff
	rlca                                             ; $68bf: $07
	rst  $38                                         ; $68c0: $ff
	nop                                              ; $68c1: $00
	rra                                              ; $68c2: $1f
	add  c                                           ; $68c3: $81
	ld   a, [hl]                                     ; $68c4: $7e
	ld   hl, $e9c2                                   ; $68c5: $21 $c2 $e9
	xor  d                                           ; $68c8: $aa
	dec  d                                           ; $68c9: $15
	ld   d, l                                        ; $68ca: $55
	add  b                                           ; $68cb: $80
	rst  $38                                         ; $68cc: $ff
	dec  bc                                          ; $68cd: $0b
	cp   $ff                                         ; $68ce: $fe $ff
	add  c                                           ; $68d0: $81
	cp   $1e                                         ; $68d1: $fe $1e
	pop  hl                                          ; $68d3: $e1
	sbc  [hl]                                        ; $68d4: $9e
	nop                                              ; $68d5: $00
	ldh  [c], a                                      ; $68d6: $e2
	inc  bc                                          ; $68d7: $03
	ld   d, h                                        ; $68d8: $54
	xor  d                                           ; $68d9: $aa
	add  b                                           ; $68da: $80
	ld   d, l                                        ; $68db: $55
	add  b                                           ; $68dc: $80
	rst  $38                                         ; $68dd: $ff
	dec  c                                           ; $68de: $0d
	ccf                                              ; $68df: $3f
	rst  $38                                         ; $68e0: $ff
	ret  nz                                          ; $68e1: $c0

	rra                                              ; $68e2: $1f
	jr   @+$01                                       ; $68e3: $18 $ff

	ld   b, a                                        ; $68e5: $47
	ld   a, a                                        ; $68e6: $7f
	ccf                                              ; $68e7: $3f
	rst  $38                                         ; $68e8: $ff
	ld   b, l                                        ; $68e9: $45
	cp   l                                           ; $68ea: $bd
	ld   [bc], a                                     ; $68eb: $02
	adc  d                                           ; $68ec: $8a
	add  b                                           ; $68ed: $80
	adc  a                                           ; $68ee: $8f
	ld   [bc], a                                     ; $68ef: $02
	rrca                                             ; $68f0: $0f
	adc  a                                           ; $68f1: $8f
	rrca                                             ; $68f2: $0f
	add  e                                           ; $68f3: $83
	adc  a                                           ; $68f4: $8f
	inc  bc                                          ; $68f5: $03
	adc  [hl]                                        ; $68f6: $8e
	adc  a                                           ; $68f7: $8f
	inc  h                                           ; $68f8: $24
	ld   d, h                                        ; $68f9: $54
	add  b                                           ; $68fa: $80
	xor  d                                           ; $68fb: $aa
	add  d                                           ; $68fc: $82
	cp   $21                                         ; $68fd: $fe $21
	db   $fc                                         ; $68ff: $fc
	cp   $e8                                         ; $6900: $fe $e8
	db   $fc                                         ; $6902: $fc
	jp   nz, $a4fa                                   ; $6903: $c2 $fa $a4

	db   $f4                                         ; $6906: $f4
	and  b                                           ; $6907: $a0
	ld   e, l                                        ; $6908: $5d
	ld   a, [hl+]                                    ; $6909: $2a
	cpl                                              ; $690a: $2f
	ld   e, b                                        ; $690b: $58
	ld   a, a                                        ; $690c: $7f
	db   $10                                         ; $690d: $10
	ld   a, a                                        ; $690e: $7f
	ld   sp, $7f6e                                   ; $690f: $31 $6e $7f
	ld   e, a                                        ; $6912: $5f
	ld   [hl], a                                     ; $6913: $77
	ccf                                              ; $6914: $3f
	rlca                                             ; $6915: $07
	rrca                                             ; $6916: $0f
	ld   d, b                                        ; $6917: $50
	and  b                                           ; $6918: $a0
	nop                                              ; $6919: $00
	rst  $38                                         ; $691a: $ff
	nop                                              ; $691b: $00
	rst  $38                                         ; $691c: $ff
	inc  d                                           ; $691d: $14
	db   $f4                                         ; $691e: $f4
	ld   b, b                                        ; $691f: $40
	and  b                                           ; $6920: $a0
	add  b                                           ; $6921: $80
	db   $f4                                         ; $6922: $f4
	add  b                                           ; $6923: $80
	xor  d                                           ; $6924: $aa
	add  b                                           ; $6925: $80
	push af                                          ; $6926: $f5
	add  c                                           ; $6927: $81
	nop                                              ; $6928: $00
	ld   [bc], a                                     ; $6929: $02
	rst  $38                                         ; $692a: $ff
	nop                                              ; $692b: $00
	rst  $38                                         ; $692c: $ff
	add  b                                           ; $692d: $80
	dec  d                                           ; $692e: $15
	add  b                                           ; $692f: $80
	inc  bc                                          ; $6930: $03
	ld   b, $01                                      ; $6931: $06 $01
	dec  e                                           ; $6933: $1d
	inc  e                                           ; $6934: $1c
	jr   c, jr_073_6975                              ; $6935: $38 $3e

	ld   bc, $8007                                   ; $6937: $01 $07 $80
	nop                                              ; $693a: $00
	ld   bc, $00ff                                   ; $693b: $01 $ff $00
	add  c                                           ; $693e: $81
	rst  $38                                         ; $693f: $ff
	add  b                                           ; $6940: $80
	ldh  a, [rTMA]                                   ; $6941: $f0 $06
	add  c                                           ; $6943: $81
	adc  [hl]                                        ; $6944: $8e
	ld   bc, $0371                                   ; $6945: $01 $71 $03
	adc  a                                           ; $6948: $8f
	di                                               ; $6949: $f3
	add  b                                           ; $694a: $80
	nop                                              ; $694b: $00
	rrca                                             ; $694c: $0f
	rst  $38                                         ; $694d: $ff
	nop                                              ; $694e: $00
	rst  $38                                         ; $694f: $ff
	pop  bc                                          ; $6950: $c1
	cp   $26                                         ; $6951: $fe $26
	ldh  a, [$f1]                                    ; $6953: $f0 $f1
	ldh  [rAUD3LEVEL], a                             ; $6955: $e0 $1c
	add  b                                           ; $6957: $80
	sbc  e                                           ; $6958: $9b
	ret  nz                                          ; $6959: $c0

	ld   a, $01                                      ; $695a: $3e $01
	rrca                                             ; $695c: $0f
	add  b                                           ; $695d: $80
	nop                                              ; $695e: $00
	add  c                                           ; $695f: $81
	rrca                                             ; $6960: $0f
	add  b                                           ; $6961: $80
	ld   [$070b], sp                                 ; $6962: $08 $0b $07
	nop                                              ; $6965: $00
	add  hl, bc                                      ; $6966: $09
	ld   bc, $0f00                                   ; $6967: $01 $00 $0f
	rst  $38                                         ; $696a: $ff
	nop                                              ; $696b: $00
	add  b                                           ; $696c: $80
	rst  $38                                         ; $696d: $ff
	ld   a, a                                        ; $696e: $7f
	rst  $38                                         ; $696f: $ff
	add  b                                           ; $6970: $80
	ldh  [rAUD1LOW], a                               ; $6971: $e0 $13
	rra                                              ; $6973: $1f
	nop                                              ; $6974: $00

jr_073_6975:
	db   $e4                                         ; $6975: $e4
	rlca                                             ; $6976: $07
	inc  b                                           ; $6977: $04
	ld   hl, sp-$09                                  ; $6978: $f8 $f7
	ldh  a, [$78]                                    ; $697a: $f0 $78
	rst  $38                                         ; $697c: $ff
	ld   a, h                                        ; $697d: $7c
	db   $fc                                         ; $697e: $fc
	add  e                                           ; $697f: $83
	add  b                                           ; $6980: $80
	ld   a, [hl]                                     ; $6981: $7e
	inc  bc                                          ; $6982: $03
	sub  c                                           ; $6983: $91
	rra                                              ; $6984: $1f
	rrca                                             ; $6985: $0f
	rst  $38                                         ; $6986: $ff
	add  b                                           ; $6987: $80
	ld   [hl], b                                     ; $6988: $70
	add  hl, bc                                      ; $6989: $09
	adc  a                                           ; $698a: $8f
	nop                                              ; $698b: $00
	ld   a, a                                        ; $698c: $7f
	ldh  a, [rIF]                                    ; $698d: $f0 $0f
	nop                                              ; $698f: $00
	ld   hl, sp+$0f                                  ; $6990: $f8 $0f
	rlca                                             ; $6992: $07
	rst  $38                                         ; $6993: $ff
	add  b                                           ; $6994: $80
	ld   hl, sp+$20                                  ; $6995: $f8 $20
	rlca                                             ; $6997: $07
	nop                                              ; $6998: $00
	ld   a, b                                        ; $6999: $78
	add  b                                           ; $699a: $80
	inc  b                                           ; $699b: $04
	rlca                                             ; $699c: $07
	jp   $e000                                       ; $699d: $c3 $00 $e0


	ccf                                              ; $69a0: $3f
	inc  e                                           ; $69a1: $1c
	db   $fc                                         ; $69a2: $fc
	add  e                                           ; $69a3: $83
	add  h                                           ; $69a4: $84
	ld   a, b                                        ; $69a5: $78
	nop                                              ; $69a6: $00
	add  h                                           ; $69a7: $84
	rlca                                             ; $69a8: $07
	ld   b, e                                        ; $69a9: $43
	ld   a, a                                        ; $69aa: $7f
	ccf                                              ; $69ab: $3f
	rst  $38                                         ; $69ac: $ff
	ld   a, h                                        ; $69ad: $7c
	db   $fc                                         ; $69ae: $fc
	ld   b, e                                        ; $69af: $43
	ret  nz                                          ; $69b0: $c0

	inc  a                                           ; $69b1: $3c
	nop                                              ; $69b2: $00
	jp   nz, $2103                                   ; $69b3: $c2 $03 $21

	ccf                                              ; $69b6: $3f
	rra                                              ; $69b7: $1f
	add  e                                           ; $69b8: $83
	rst  $38                                         ; $69b9: $ff
	ld   b, $3f                                      ; $69ba: $06 $3f
	nop                                              ; $69bc: $00
	jp   nz, $2103                                   ; $69bd: $c2 $03 $21

	ccf                                              ; $69c0: $3f
	rra                                              ; $69c1: $1f
	add  e                                           ; $69c2: $83
	rst  $38                                         ; $69c3: $ff
	ld   b, $fe                                      ; $69c4: $06 $fe
	rst  $38                                         ; $69c6: $ff
	cp   $ff                                         ; $69c7: $fe $ff
	rst  $28                                         ; $69c9: $ef
	rra                                              ; $69ca: $1f
	rrca                                             ; $69cb: $0f
	add  l                                           ; $69cc: $85
	rst  $38                                         ; $69cd: $ff
	inc  b                                           ; $69ce: $04
	ldh  [rIE], a                                    ; $69cf: $e0 $ff
	rra                                              ; $69d1: $1f
	rst  $38                                         ; $69d2: $ff
	nop                                              ; $69d3: $00
	add  l                                           ; $69d4: $85
	rst  $38                                         ; $69d5: $ff
	ld   [$fff8], sp                                 ; $69d6: $08 $f8 $ff
	ld   hl, sp-$01                                  ; $69d9: $f8 $ff
	nop                                              ; $69db: $00
	rst  $38                                         ; $69dc: $ff
	add  c                                           ; $69dd: $81
	rst  $38                                         ; $69de: $ff
	ld   [hl], h                                     ; $69df: $74
	add  b                                           ; $69e0: $80
	rst  $38                                         ; $69e1: $ff
	ld   a, [hl+]                                    ; $69e2: $2a
	adc  a                                           ; $69e3: $8f
	add  h                                           ; $69e4: $84
	adc  a                                           ; $69e5: $8f
	add  l                                           ; $69e6: $85
	adc  a                                           ; $69e7: $8f
	ld   a, [de]                                     ; $69e8: $1a
	sbc  [hl]                                        ; $69e9: $9e
	inc  e                                           ; $69ea: $1c
	sbc  l                                           ; $69eb: $9d
	ld   hl, $04b3                                   ; $69ec: $21 $b3 $04
	rla                                              ; $69ef: $17
	db   $10                                         ; $69f0: $10
	rla                                              ; $69f1: $17
	db   $eb                                         ; $69f2: $eb
	db   $ec                                         ; $69f3: $ec
	nop                                              ; $69f4: $00
	sbc  a                                           ; $69f5: $9f
	ret  c                                           ; $69f6: $d8

	ld   a, a                                        ; $69f7: $7f
	daa                                              ; $69f8: $27
	rst  $38                                         ; $69f9: $ff
	ldh  [$fe], a                                    ; $69fa: $e0 $fe
	db   $fc                                         ; $69fc: $fc
	cp   $3c                                         ; $69fd: $fe $3c
	ret  nz                                          ; $69ff: $c0

	ld   sp, hl                                      ; $6a00: $f9
	ld   bc, $1ff8                                   ; $6a01: $01 $f8 $1f
	inc  e                                           ; $6a04: $1c
	sbc  b                                           ; $6a05: $98
	sbc  d                                           ; $6a06: $9a
	adc  e                                           ; $6a07: $8b
	adc  d                                           ; $6a08: $8a
	rlca                                             ; $6a09: $07
	ld   b, c                                        ; $6a0a: $41
	ld   a, a                                        ; $6a0b: $7f
	ld   e, [hl]                                     ; $6a0c: $5e
	ld   a, a                                        ; $6a0d: $7f
	add  b                                           ; $6a0e: $80
	rst  $38                                         ; $6a0f: $ff
	inc  bc                                          ; $6a10: $03
	ld   h, a                                        ; $6a11: $67
	cp   a                                           ; $6a12: $bf
	pop  bc                                          ; $6a13: $c1
	cp   $80                                         ; $6a14: $fe $80
	ld   a, h                                        ; $6a16: $7c
	inc  c                                           ; $6a17: $0c
	ld   [bc], a                                     ; $6a18: $02
	add  d                                           ; $6a19: $82
	add  c                                           ; $6a1a: $81
	push de                                          ; $6a1b: $d5
	ld   d, h                                        ; $6a1c: $54
	rst  $10                                         ; $6a1d: $d7
	sub  a                                           ; $6a1e: $97
	sbc  $6e                                         ; $6a1f: $de $6e
	ld   hl, sp-$79                                  ; $6a21: $f8 $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a23: $cf
	rst  ToBoot                                         ; $6a24: $c7
	add  b                                           ; $6a25: $80
	nop                                              ; $6a26: $00
	nop                                              ; $6a27: $00
	rlca                                             ; $6a28: $07
	add  h                                           ; $6a29: $84
	nop                                              ; $6a2a: $00
	dec  b                                           ; $6a2b: $05
	inc  bc                                          ; $6a2c: $03
	rst  $38                                         ; $6a2d: $ff
	db   $fc                                         ; $6a2e: $fc
	jr   nz, @+$61                                   ; $6a2f: $20 $5f

	rst  $38                                         ; $6a31: $ff
	add  b                                           ; $6a32: $80
	ld   a, a                                        ; $6a33: $7f
	rlca                                             ; $6a34: $07
	ld   a, b                                        ; $6a35: $78
	rst  $38                                         ; $6a36: $ff
	inc  l                                           ; $6a37: $2c
	dec  hl                                          ; $6a38: $2b
	ld   b, b                                        ; $6a39: $40
	ld   e, a                                        ; $6a3a: $5f
	jr   jr_073_6a44                                 ; $6a3b: $18 $07

	add  b                                           ; $6a3d: $80
	adc  d                                           ; $6a3e: $8a
	add  b                                           ; $6a3f: $80
	ld   bc, $9f11                                   ; $6a40: $01 $11 $9f
	rst  $38                                         ; $6a43: $ff

jr_073_6a44:
	add  b                                           ; $6a44: $80
	rst  $38                                         ; $6a45: $ff
	db   $dd                                         ; $6a46: $dd
	rst  $38                                         ; $6a47: $ff
	jp   $c6ff                                       ; $6a48: $c3 $ff $c6


	rst  $38                                         ; $6a4b: $ff
	ld   b, d                                        ; $6a4c: $42
	rst  $38                                         ; $6a4d: $ff
	dec  b                                           ; $6a4e: $05
	rst  $38                                         ; $6a4f: $ff
	ld   b, $7f                                      ; $6a50: $06 $7f
	add  h                                           ; $6a52: $84
	rst  $38                                         ; $6a53: $ff
	ld   l, h                                        ; $6a54: $6c
	ld   [bc], a                                     ; $6a55: $02
	add  [hl]                                        ; $6a56: $86
	nop                                              ; $6a57: $00
	add  d                                           ; $6a58: $82
	rrca                                             ; $6a59: $0f
	inc  b                                           ; $6a5a: $04
	ld   [bc], a                                     ; $6a5b: $02
	rrca                                             ; $6a5c: $0f
	ld   a, [bc]                                     ; $6a5d: $0a
	rrca                                             ; $6a5e: $0f
	ld   [$0085], sp                                 ; $6a5f: $08 $85 $00
	nop                                              ; $6a62: $00
	ld   a, a                                        ; $6a63: $7f
	add  c                                           ; $6a64: $81
	rst  $38                                         ; $6a65: $ff
	inc  b                                           ; $6a66: $04
	and  [hl]                                        ; $6a67: $a6
	rst  $38                                         ; $6a68: $ff
	ld   l, $ff                                      ; $6a69: $2e $ff
	ld   [$0085], sp                                 ; $6a6b: $08 $85 $00
	nop                                              ; $6a6e: $00
	ld   a, a                                        ; $6a6f: $7f
	add  c                                           ; $6a70: $81
	rst  $38                                         ; $6a71: $ff
	inc  b                                           ; $6a72: $04
	cp   [hl]                                        ; $6a73: $be
	rst  $38                                         ; $6a74: $ff
	ld   [hl], $ff                                   ; $6a75: $36 $ff
	ld   [$0085], sp                                 ; $6a77: $08 $85 $00
	nop                                              ; $6a7a: $00
	ld   a, a                                        ; $6a7b: $7f
	add  c                                           ; $6a7c: $81
	rst  $38                                         ; $6a7d: $ff
	inc  b                                           ; $6a7e: $04
	add  d                                           ; $6a7f: $82
	rst  $38                                         ; $6a80: $ff
	ld   a, [bc]                                     ; $6a81: $0a
	rst  $38                                         ; $6a82: $ff
	ld   [$0085], sp                                 ; $6a83: $08 $85 $00
	nop                                              ; $6a86: $00
	ld   a, a                                        ; $6a87: $7f
	add  c                                           ; $6a88: $81
	rst  $38                                         ; $6a89: $ff
	inc  de                                          ; $6a8a: $13
	and  d                                           ; $6a8b: $a2
	rst  $38                                         ; $6a8c: $ff
	ld   a, [hl+]                                    ; $6a8d: $2a
	rst  $38                                         ; $6a8e: $ff
	ld   [$7fff], sp                                 ; $6a8f: $08 $ff $7f
	rst  $38                                         ; $6a92: $ff
	cp   a                                           ; $6a93: $bf
	rst  $38                                         ; $6a94: $ff
	rst  JumpTable                                         ; $6a95: $df
	rst  $38                                         ; $6a96: $ff
	rst  $20                                         ; $6a97: $e7
	rst  $38                                         ; $6a98: $ff
	ei                                               ; $6a99: $fb
	rst  $38                                         ; $6a9a: $ff
	db   $fd                                         ; $6a9b: $fd
	rst  $38                                         ; $6a9c: $ff
	cp   $ff                                         ; $6a9d: $fe $ff
	add  [hl]                                        ; $6a9f: $86
	nop                                              ; $6aa0: $00
	nop                                              ; $6aa1: $00
	ld   a, a                                        ; $6aa2: $7f
	add  c                                           ; $6aa3: $81
	rst  $38                                         ; $6aa4: $ff
	inc  b                                           ; $6aa5: $04
	add  d                                           ; $6aa6: $82
	rst  $38                                         ; $6aa7: $ff
	ld   a, [bc]                                     ; $6aa8: $0a
	rst  $38                                         ; $6aa9: $ff
	rst  $30                                         ; $6aaa: $f7
	add  a                                           ; $6aab: $87
	rst  $38                                         ; $6aac: $ff
	ld   b, $bf                                      ; $6aad: $06 $bf
	rst  $38                                         ; $6aaf: $ff
	rra                                              ; $6ab0: $1f
	rst  $38                                         ; $6ab1: $ff
	rra                                              ; $6ab2: $1f
	rst  $38                                         ; $6ab3: $ff
	ld   b, b                                        ; $6ab4: $40
	add  l                                           ; $6ab5: $85
	rst  $38                                         ; $6ab6: $ff
	ld   [$ff0f], sp                                 ; $6ab7: $08 $0f $ff
	rst  $30                                         ; $6aba: $f7
	rst  $38                                         ; $6abb: $ff
	ei                                               ; $6abc: $fb
	rst  $38                                         ; $6abd: $ff
	db   $fd                                         ; $6abe: $fd
	rst  $38                                         ; $6abf: $ff
	ld   bc, $0085                                   ; $6ac0: $01 $85 $00
	nop                                              ; $6ac3: $00
	ld   a, a                                        ; $6ac4: $7f
	add  c                                           ; $6ac5: $81
	rst  $38                                         ; $6ac6: $ff
	inc  b                                           ; $6ac7: $04
	or   d                                           ; $6ac8: $b2
	rst  $38                                         ; $6ac9: $ff
	ld   a, [hl-]                                    ; $6aca: $3a
	rst  $38                                         ; $6acb: $ff
	ld   [$0085], sp                                 ; $6acc: $08 $85 $00
	nop                                              ; $6acf: $00
	ld   a, a                                        ; $6ad0: $7f
	add  c                                           ; $6ad1: $81
	rst  $38                                         ; $6ad2: $ff
	inc  b                                           ; $6ad3: $04
	add  d                                           ; $6ad4: $82
	rst  $38                                         ; $6ad5: $ff
	ld   a, [bc]                                     ; $6ad6: $0a
	rst  $38                                         ; $6ad7: $ff
	ld   [$0085], sp                                 ; $6ad8: $08 $85 $00
	nop                                              ; $6adb: $00
	ld   a, h                                        ; $6adc: $7c
	add  c                                           ; $6add: $81
	ldh  [rDIV], a                                   ; $6ade: $e0 $04
	add  b                                           ; $6ae0: $80
	ldh  [rSC], a                                    ; $6ae1: $e0 $02
	and  $18                                         ; $6ae3: $e6 $18
	add  [hl]                                        ; $6ae5: $86
	nop                                              ; $6ae6: $00
	ld   [bc], a                                     ; $6ae7: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ae8: $cf
	ld   c, b                                        ; $6ae9: $48
	nop                                              ; $6aea: $00
	add  b                                           ; $6aeb: $80
	add  a                                           ; $6aec: $87
	add  b                                           ; $6aed: $80
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	add  a                                           ; $6af0: $87
	add  [hl]                                        ; $6af1: $86
	nop                                              ; $6af2: $00
	nop                                              ; $6af3: $00
	rst  $38                                         ; $6af4: $ff
	add  b                                           ; $6af5: $80
	nop                                              ; $6af6: $00
	add  b                                           ; $6af7: $80
	rst  $38                                         ; $6af8: $ff
	add  b                                           ; $6af9: $80
	nop                                              ; $6afa: $00
	nop                                              ; $6afb: $00
	rst  $38                                         ; $6afc: $ff
	add  l                                           ; $6afd: $85
	nop                                              ; $6afe: $00
	ld   bc, $f00f                                   ; $6aff: $01 $0f $f0
	add  b                                           ; $6b02: $80
	nop                                              ; $6b03: $00
	add  b                                           ; $6b04: $80
	ld   hl, sp-$80                                  ; $6b05: $f8 $80
	nop                                              ; $6b07: $00
	nop                                              ; $6b08: $00
	rst  $38                                         ; $6b09: $ff
	add  l                                           ; $6b0a: $85
	nop                                              ; $6b0b: $00
	nop                                              ; $6b0c: $00
	rst  $20                                         ; $6b0d: $e7
	add  b                                           ; $6b0e: $80
	ld   hl, sp-$80                                  ; $6b0f: $f8 $80
	sbc  c                                           ; $6b11: $99
	add  c                                           ; $6b12: $81
	ld   a, c                                        ; $6b13: $79
	inc  b                                           ; $6b14: $04
	sbc  c                                           ; $6b15: $99
	rrca                                             ; $6b16: $0f
	ld   a, [bc]                                     ; $6b17: $0a
	rrca                                             ; $6b18: $0f
	ld   [bc], a                                     ; $6b19: $02
	add  c                                           ; $6b1a: $81
	rrca                                             ; $6b1b: $0f
	ld   [bc], a                                     ; $6b1c: $02
	ld   c, $0f                                      ; $6b1d: $0e $0f
	ld   b, $81                                      ; $6b1f: $06 $81
	rrca                                             ; $6b21: $0f
	ld   b, $09                                      ; $6b22: $06 $09
	rrca                                             ; $6b24: $0f
	ld   sp, hl                                      ; $6b25: $f9
	rst  $38                                         ; $6b26: $ff
	ld   a, [hl+]                                    ; $6b27: $2a
	rst  $38                                         ; $6b28: $ff
	and  d                                           ; $6b29: $a2
	add  c                                           ; $6b2a: $81
	rst  $38                                         ; $6b2b: $ff
	inc  c                                           ; $6b2c: $0c
	cp   h                                           ; $6b2d: $bc
	rst  $38                                         ; $6b2e: $ff
	inc  a                                           ; $6b2f: $3c
	rst  $38                                         ; $6b30: $ff
	rst  $30                                         ; $6b31: $f7
	rst  $38                                         ; $6b32: $ff
	ld   [$eaff], a                                  ; $6b33: $ea $ff $ea
	rst  $38                                         ; $6b36: $ff
	ld   a, [hl+]                                    ; $6b37: $2a
	rst  $38                                         ; $6b38: $ff
	and  d                                           ; $6b39: $a2
	add  c                                           ; $6b3a: $81
	rst  $38                                         ; $6b3b: $ff
	ld   [bc], a                                     ; $6b3c: $02
	cp   [hl]                                        ; $6b3d: $be
	rst  $38                                         ; $6b3e: $ff
	ld   [hl], $81                                   ; $6b3f: $36 $81
	rst  $38                                         ; $6b41: $ff
	ld   b, $2b                                      ; $6b42: $06 $2b
	rst  $38                                         ; $6b44: $ff
	dec  hl                                          ; $6b45: $2b
	rst  $38                                         ; $6b46: $ff
	ld   [hl], $ff                                   ; $6b47: $36 $ff
	cp   [hl]                                        ; $6b49: $be
	add  c                                           ; $6b4a: $81
	rst  $38                                         ; $6b4b: $ff
	ld   [bc], a                                     ; $6b4c: $02
	and  d                                           ; $6b4d: $a2
	rst  $38                                         ; $6b4e: $ff
	ld   a, [hl+]                                    ; $6b4f: $2a
	add  c                                           ; $6b50: $81
	rst  $38                                         ; $6b51: $ff
	ld   b, $eb                                      ; $6b52: $06 $eb
	rst  $38                                         ; $6b54: $ff
	db   $eb                                         ; $6b55: $eb
	rst  $38                                         ; $6b56: $ff
	jr   z, @+$01                                    ; $6b57: $28 $ff

	and  b                                           ; $6b59: $a0
	add  c                                           ; $6b5a: $81
	rst  $38                                         ; $6b5b: $ff
	ld   [bc], a                                     ; $6b5c: $02
	and  b                                           ; $6b5d: $a0
	rst  $38                                         ; $6b5e: $ff
	jr   z, @-$7d                                    ; $6b5f: $28 $81

	rst  $38                                         ; $6b61: $ff
	ld   b, $ea                                      ; $6b62: $06 $ea
	rst  $38                                         ; $6b64: $ff
	ld   [$2aff], a                                  ; $6b65: $ea $ff $2a
	rst  $38                                         ; $6b68: $ff
	and  d                                           ; $6b69: $a2
	add  c                                           ; $6b6a: $81
	rst  $38                                         ; $6b6b: $ff
	ld   [bc], a                                     ; $6b6c: $02
	cp   [hl]                                        ; $6b6d: $be
	rst  $38                                         ; $6b6e: $ff
	ld   [hl], $81                                   ; $6b6f: $36 $81
	rst  $38                                         ; $6b71: $ff
	ld   b, $2a                                      ; $6b72: $06 $2a
	rst  $38                                         ; $6b74: $ff
	ld   a, [hl+]                                    ; $6b75: $2a
	rst  $38                                         ; $6b76: $ff
	ld   a, [hl+]                                    ; $6b77: $2a
	rst  $38                                         ; $6b78: $ff
	and  d                                           ; $6b79: $a2
	add  c                                           ; $6b7a: $81
	rst  $38                                         ; $6b7b: $ff
	ld   [bc], a                                     ; $6b7c: $02
	and  e                                           ; $6b7d: $a3
	rst  $38                                         ; $6b7e: $ff
	dec  hl                                          ; $6b7f: $2b
	add  c                                           ; $6b80: $81
	rst  $38                                         ; $6b81: $ff
	ld   b, $0a                                      ; $6b82: $06 $0a
	rst  $38                                         ; $6b84: $ff
	ld   a, [bc]                                     ; $6b85: $0a
	rst  $38                                         ; $6b86: $ff
	ld   a, [hl+]                                    ; $6b87: $2a
	rst  $38                                         ; $6b88: $ff
	and  d                                           ; $6b89: $a2
	add  c                                           ; $6b8a: $81
	rst  $38                                         ; $6b8b: $ff
	ld   [bc], a                                     ; $6b8c: $02
	ld   h, d                                        ; $6b8d: $62
	rst  $38                                         ; $6b8e: $ff
	ld   [$ff81], a                                  ; $6b8f: $ea $81 $ff
	ld   b, $2a                                      ; $6b92: $06 $2a
	rst  $38                                         ; $6b94: $ff
	ld   a, [hl+]                                    ; $6b95: $2a
	rst  $38                                         ; $6b96: $ff
	add  hl, hl                                      ; $6b97: $29
	rst  $38                                         ; $6b98: $ff
	and  c                                           ; $6b99: $a1
	add  c                                           ; $6b9a: $81
	rst  $38                                         ; $6b9b: $ff
	ld   [bc], a                                     ; $6b9c: $02
	and  d                                           ; $6b9d: $a2
	rst  $38                                         ; $6b9e: $ff
	ld   a, [hl+]                                    ; $6b9f: $2a
	add  c                                           ; $6ba0: $81
	rst  $38                                         ; $6ba1: $ff
	ld   b, $2a                                      ; $6ba2: $06 $2a
	rst  $38                                         ; $6ba4: $ff
	ld   a, [hl+]                                    ; $6ba5: $2a
	rst  $38                                         ; $6ba6: $ff
	jr   z, @+$01                                    ; $6ba7: $28 $ff

	and  b                                           ; $6ba9: $a0
	add  c                                           ; $6baa: $81
	rst  $38                                         ; $6bab: $ff
	ld   [bc], a                                     ; $6bac: $02
	and  d                                           ; $6bad: $a2
	rst  $38                                         ; $6bae: $ff
	ld   a, [hl+]                                    ; $6baf: $2a
	add  c                                           ; $6bb0: $81
	rst  $38                                         ; $6bb1: $ff
	ld   b, $28                                      ; $6bb2: $06 $28
	rst  $38                                         ; $6bb4: $ff
	jr   z, @+$01                                    ; $6bb5: $28 $ff

	inc  l                                           ; $6bb7: $2c
	rst  $38                                         ; $6bb8: $ff
	and  h                                           ; $6bb9: $a4
	add  c                                           ; $6bba: $81
	rst  $38                                         ; $6bbb: $ff
	inc  e                                           ; $6bbc: $1c
	ret  nz                                          ; $6bbd: $c0

	rst  $38                                         ; $6bbe: $ff
	ld   c, c                                        ; $6bbf: $49
	cp   $f8                                         ; $6bc0: $fe $f8
	pop  af                                          ; $6bc2: $f1
	ld   c, $80                                      ; $6bc3: $0e $80
	ld   [hl], b                                     ; $6bc5: $70
	rst  $28                                         ; $6bc6: $ef
	rrca                                             ; $6bc7: $0f
	rst  $28                                         ; $6bc8: $ef
	adc  h                                           ; $6bc9: $8c
	ldh  [$ef], a                                    ; $6bca: $e0 $ef
	ldh  [$9c], a                                    ; $6bcc: $e0 $9c
	add  b                                           ; $6bce: $80
	ldh  a, [rVBK]                                   ; $6bcf: $f0 $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd1: $cf
	rrca                                             ; $6bd2: $0f
	rla                                              ; $6bd3: $17
	ld   l, a                                        ; $6bd4: $6f
	ld   [hl], b                                     ; $6bd5: $70
	rlca                                             ; $6bd6: $07
	ld   a, a                                        ; $6bd7: $7f
	inc  b                                           ; $6bd8: $04
	ld   a, e                                        ; $6bd9: $7b
	add  c                                           ; $6bda: $81
	nop                                              ; $6bdb: $00
	ld   bc, $87ff                                   ; $6bdc: $01 $ff $87
	add  b                                           ; $6bdf: $80
	nop                                              ; $6be0: $00
	add  b                                           ; $6be1: $80
	add  a                                           ; $6be2: $87
	add  b                                           ; $6be3: $80
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	add  a                                           ; $6be6: $87
	add  b                                           ; $6be7: $80
	rst  $38                                         ; $6be8: $ff
	ld   bc, $ff00                                   ; $6be9: $01 $00 $ff
	add  c                                           ; $6bec: $81
	nop                                              ; $6bed: $00
	add  b                                           ; $6bee: $80
	rst  $20                                         ; $6bef: $e7
	ld   bc, $0010                                   ; $6bf0: $01 $10 $00
	add  b                                           ; $6bf3: $80
	rst  $20                                         ; $6bf4: $e7
	add  b                                           ; $6bf5: $80
	nop                                              ; $6bf6: $00
	inc  b                                           ; $6bf7: $04
	db   $ec                                         ; $6bf8: $ec
	db   $fc                                         ; $6bf9: $fc
	rst  $38                                         ; $6bfa: $ff
	nop                                              ; $6bfb: $00
	rst  $38                                         ; $6bfc: $ff
	add  c                                           ; $6bfd: $81
	nop                                              ; $6bfe: $00
	ld   bc, $defe                                   ; $6bff: $01 $fe $de
	add  b                                           ; $6c02: $80
	nop                                              ; $6c03: $00
	add  b                                           ; $6c04: $80
	adc  $80                                         ; $6c05: $ce $80
	nop                                              ; $6c07: $00
	ld   b, $20                                      ; $6c08: $06 $20
	nop                                              ; $6c0a: $00
	rst  $38                                         ; $6c0b: $ff
	nop                                              ; $6c0c: $00
	rst  $38                                         ; $6c0d: $ff
	nop                                              ; $6c0e: $00
	ld   b, b                                        ; $6c0f: $40
	add  b                                           ; $6c10: $80
	jr   @-$7e                                       ; $6c11: $18 $80

	ld   b, $80                                      ; $6c13: $06 $80
	ld   e, $80                                      ; $6c15: $1e $80
	inc  e                                           ; $6c17: $1c
	ld   bc, $b303                                   ; $6c18: $01 $03 $b3
	add  e                                           ; $6c1b: $83
	rrca                                             ; $6c1c: $0f
	nop                                              ; $6c1d: $00
	rlca                                             ; $6c1e: $07
	add  c                                           ; $6c1f: $81
	rrca                                             ; $6c20: $0f
	nop                                              ; $6c21: $00
	rlca                                             ; $6c22: $07
	add  e                                           ; $6c23: $83
	rrca                                             ; $6c24: $0f
	nop                                              ; $6c25: $00
	ld   a, a                                        ; $6c26: $7f
	add  c                                           ; $6c27: $81
	rst  $38                                         ; $6c28: $ff
	ld   [bc], a                                     ; $6c29: $02
	and  e                                           ; $6c2a: $a3
	rst  $38                                         ; $6c2b: $ff
	dec  hl                                          ; $6c2c: $2b
	add  c                                           ; $6c2d: $81
	rst  $38                                         ; $6c2e: $ff
	ld   [bc], a                                     ; $6c2f: $02
	ld   [$e2ff], a                                  ; $6c30: $ea $ff $e2
	add  c                                           ; $6c33: $81
	rst  $38                                         ; $6c34: $ff
	nop                                              ; $6c35: $00
	ld   a, a                                        ; $6c36: $7f
	add  c                                           ; $6c37: $81
	rst  $38                                         ; $6c38: $ff
	ld   [bc], a                                     ; $6c39: $02
	ld   a, [hl]                                     ; $6c3a: $7e
	rst  $38                                         ; $6c3b: $ff
	or   $81                                         ; $6c3c: $f6 $81
	rst  $38                                         ; $6c3e: $ff
	ld   b, $2a                                      ; $6c3f: $06 $2a
	rst  $38                                         ; $6c41: $ff
	or   h                                           ; $6c42: $b4
	jp   hl                                          ; $6c43: $e9


	ld   a, a                                        ; $6c44: $7f
	rst  $38                                         ; $6c45: $ff
	ld   a, a                                        ; $6c46: $7f
	add  c                                           ; $6c47: $81
	rst  $38                                         ; $6c48: $ff
	add  hl, bc                                      ; $6c49: $09
	and  d                                           ; $6c4a: $a2
	rst  $38                                         ; $6c4b: $ff
	ld   c, c                                        ; $6c4c: $49
	sbc  h                                           ; $6c4d: $9c
	rst  $30                                         ; $6c4e: $f7
	rst  $38                                         ; $6c4f: $ff
	ld   a, [hl]                                     ; $6c50: $7e
	rst  $38                                         ; $6c51: $ff
	ret  nz                                          ; $6c52: $c0

	pop  bc                                          ; $6c53: $c1
	add  h                                           ; $6c54: $84
	rst  $38                                         ; $6c55: $ff
	inc  bc                                          ; $6c56: $03
	and  c                                           ; $6c57: $a1
	rst  $38                                         ; $6c58: $ff
	xor  d                                           ; $6c59: $aa
	ld   a, h                                        ; $6c5a: $7c
	add  b                                           ; $6c5b: $80
	rst  $38                                         ; $6c5c: $ff
	inc  bc                                          ; $6c5d: $03
	ld   [hl], $ff                                   ; $6c5e: $36 $ff
	add  h                                           ; $6c60: $84
	push bc                                          ; $6c61: $c5
	add  h                                           ; $6c62: $84
	rst  $38                                         ; $6c63: $ff
	inc  bc                                          ; $6c64: $03
	add  d                                           ; $6c65: $82
	rst  $38                                         ; $6c66: $ff
	ret  z                                           ; $6c67: $c8

	dec  a                                           ; $6c68: $3d
	add  b                                           ; $6c69: $80
	rst  $38                                         ; $6c6a: $ff
	inc  bc                                          ; $6c6b: $03
	ld   [hl], $ff                                   ; $6c6c: $36 $ff
	adc  d                                           ; $6c6e: $8a
	res  0, h                                        ; $6c6f: $cb $84
	rst  $38                                         ; $6c71: $ff
	ld   [bc], a                                     ; $6c72: $02
	and  d                                           ; $6c73: $a2
	rst  $38                                         ; $6c74: $ff
	ld   a, [hl+]                                    ; $6c75: $2a
	add  c                                           ; $6c76: $81
	rst  $38                                         ; $6c77: $ff
	inc  bc                                          ; $6c78: $03
	ld   a, [hl+]                                    ; $6c79: $2a
	rst  $38                                         ; $6c7a: $ff
	add  d                                           ; $6c7b: $82
	rst  JumpTable                                         ; $6c7c: $df
	add  h                                           ; $6c7d: $84
	rst  $38                                         ; $6c7e: $ff
	ld   [bc], a                                     ; $6c7f: $02
	and  d                                           ; $6c80: $a2
	rst  $38                                         ; $6c81: $ff
	ld   a, [hl+]                                    ; $6c82: $2a
	add  c                                           ; $6c83: $81
	rst  $38                                         ; $6c84: $ff
	ld   b, $2a                                      ; $6c85: $06 $2a
	rst  $38                                         ; $6c87: $ff
	and  e                                           ; $6c88: $a3
	cp   $f1                                         ; $6c89: $fe $f1
	ldh  a, [$fe]                                    ; $6c8b: $f0 $fe
	add  c                                           ; $6c8d: $81
	rst  $38                                         ; $6c8e: $ff
	jr   @-$5e                                       ; $6c8f: $18 $a0

	rst  $38                                         ; $6c91: $ff
	add  hl, hl                                      ; $6c92: $29
	cp   $f9                                         ; $6c93: $fe $f9
	ldh  a, [rIF]                                    ; $6c95: $f0 $0f
	add  c                                           ; $6c97: $81
	ldh  a, [rKEY1]                                  ; $6c98: $f0 $4d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c9a: $cf
	dec  l                                           ; $6c9b: $2d
	xor  [hl]                                        ; $6c9c: $ae
	cp   $f1                                         ; $6c9d: $fe $f1
	ldh  a, [$8e]                                    ; $6c9f: $f0 $8e
	add  b                                           ; $6ca1: $80
	ld   hl, sp+$4b                                  ; $6ca2: $f8 $4b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ca4: $cf
	dec  sp                                          ; $6ca5: $3b
	adc  b                                           ; $6ca6: $88
	cp   e                                           ; $6ca7: $bb
	add  b                                           ; $6ca8: $80
	add  c                                           ; $6ca9: $81
	cp   e                                           ; $6caa: $bb
	ld   b, $bf                                      ; $6cab: $06 $bf
	ld   b, a                                        ; $6cad: $47
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cae: $cf
	scf                                              ; $6caf: $37
	ld   b, b                                        ; $6cb0: $40
	ld   [hl], a                                     ; $6cb1: $77
	nop                                              ; $6cb2: $00
	add  c                                           ; $6cb3: $81
	ld   [hl], a                                     ; $6cb4: $77
	ld   [bc], a                                     ; $6cb5: $02
	add  b                                           ; $6cb6: $80
	rst  $30                                         ; $6cb7: $f7
	add  b                                           ; $6cb8: $80
	add  c                                           ; $6cb9: $81
	rst  $30                                         ; $6cba: $f7
	add  d                                           ; $6cbb: $82
	ld   l, a                                        ; $6cbc: $6f
	ld   [bc], a                                     ; $6cbd: $02
	add  a                                           ; $6cbe: $87
	rst  $28                                         ; $6cbf: $ef
	add  a                                           ; $6cc0: $87
	add  c                                           ; $6cc1: $81
	rst  $28                                         ; $6cc2: $ef
	inc  bc                                          ; $6cc3: $03
	add  a                                           ; $6cc4: $87
	rst  $28                                         ; $6cc5: $ef
	add  a                                           ; $6cc6: $87
	rst  $28                                         ; $6cc7: $ef
	add  b                                           ; $6cc8: $80
	xor  $01                                         ; $6cc9: $ee $01
	add  b                                           ; $6ccb: $80
	add  a                                           ; $6ccc: $87
	add  b                                           ; $6ccd: $80
	nop                                              ; $6cce: $00
	add  b                                           ; $6ccf: $80
	add  a                                           ; $6cd0: $87
	add  b                                           ; $6cd1: $80
	nop                                              ; $6cd2: $00
	add  b                                           ; $6cd3: $80
	add  a                                           ; $6cd4: $87
	add  b                                           ; $6cd5: $80
	nop                                              ; $6cd6: $00
	add  c                                           ; $6cd7: $81
	add  a                                           ; $6cd8: $87
	ld   [bc], a                                     ; $6cd9: $02
	nop                                              ; $6cda: $00
	ld   [$80e7], sp                                 ; $6cdb: $08 $e7 $80
	nop                                              ; $6cde: $00
	add  b                                           ; $6cdf: $80
	rst  $20                                         ; $6ce0: $e7
	add  b                                           ; $6ce1: $80
	nop                                              ; $6ce2: $00
	add  b                                           ; $6ce3: $80
	rst  $20                                         ; $6ce4: $e7
	add  b                                           ; $6ce5: $80
	nop                                              ; $6ce6: $00
	add  b                                           ; $6ce7: $80
	rst  $20                                         ; $6ce8: $e7
	inc  bc                                          ; $6ce9: $03
	rst  $28                                         ; $6cea: $ef
	nop                                              ; $6ceb: $00
	db   $10                                         ; $6cec: $10
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ced: $cf
	add  b                                           ; $6cee: $80
	nop                                              ; $6cef: $00
	add  b                                           ; $6cf0: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf1: $cf
	add  b                                           ; $6cf2: $80
	nop                                              ; $6cf3: $00
	add  b                                           ; $6cf4: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf5: $cf
	add  b                                           ; $6cf6: $80
	nop                                              ; $6cf7: $00
	add  b                                           ; $6cf8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6cf9: $cf
	ld   [bc], a                                     ; $6cfa: $02
	rst  JumpTable                                         ; $6cfb: $df
	nop                                              ; $6cfc: $00
	cp   a                                           ; $6cfd: $bf
	add  b                                           ; $6cfe: $80
	rlca                                             ; $6cff: $07
	add  b                                           ; $6d00: $80
	inc  b                                           ; $6d01: $04
	add  d                                           ; $6d02: $82
	ld   [bc], a                                     ; $6d03: $02
	add  b                                           ; $6d04: $80
	nop                                              ; $6d05: $00
	add  c                                           ; $6d06: $81
	ld   bc, $be01                                   ; $6d07: $01 $01 $be
	nop                                              ; $6d0a: $00
	adc  e                                           ; $6d0b: $8b
	rrca                                             ; $6d0c: $0f
	nop                                              ; $6d0d: $00
	nop                                              ; $6d0e: $00
	add  b                                           ; $6d0f: $80
	rrca                                             ; $6d10: $0f
	ld   [bc], a                                     ; $6d11: $02
	ldh  a, [rIE]                                    ; $6d12: $f0 $ff
	rst  $30                                         ; $6d14: $f7
	add  c                                           ; $6d15: $81
	rst  $38                                         ; $6d16: $ff
	ld   [bc], a                                     ; $6d17: $02
	db   $eb                                         ; $6d18: $eb
	rst  $38                                         ; $6d19: $ff
	db   $e3                                         ; $6d1a: $e3
	add  d                                           ; $6d1b: $82
	rst  $38                                         ; $6d1c: $ff
	ld   b, $c0                                      ; $6d1d: $06 $c0
	sbc  a                                           ; $6d1f: $9f
	rst  $38                                         ; $6d20: $ff
	cp   l                                           ; $6d21: $bd
	rst  $38                                         ; $6d22: $ff
	db   $eb                                         ; $6d23: $eb
	cp   $80                                         ; $6d24: $fe $80
	rst  $38                                         ; $6d26: $ff
	ld   bc, $fff7                                   ; $6d27: $01 $f7 $ff
	add  b                                           ; $6d2a: $80
	db   $fd                                         ; $6d2b: $fd
	add  b                                           ; $6d2c: $80
	ld   a, [$ff07]                                  ; $6d2d: $fa $07 $ff
	ret  nz                                          ; $6d30: $c0

	sbc  a                                           ; $6d31: $9f
	rst  $38                                         ; $6d32: $ff
	ld   a, h                                        ; $6d33: $7c
	rst  $38                                         ; $6d34: $ff
	ret  z                                           ; $6d35: $c8

jr_073_6d36:
	inc  e                                           ; $6d36: $1c
	add  b                                           ; $6d37: $80
	rst  $38                                         ; $6d38: $ff
	ld   [bc], a                                     ; $6d39: $02
	ret  z                                           ; $6d3a: $c8

	rst  $38                                         ; $6d3b: $ff
	ccf                                              ; $6d3c: $3f
	add  c                                           ; $6d3d: $81
	nop                                              ; $6d3e: $00
	rlca                                             ; $6d3f: $07
	ld   a, a                                        ; $6d40: $7f
	ld   b, b                                        ; $6d41: $40
	rra                                              ; $6d42: $1f
	ld   a, a                                        ; $6d43: $7f
	cp   a                                           ; $6d44: $bf
	rst  $38                                         ; $6d45: $ff
	ld   a, [bc]                                     ; $6d46: $0a
	dec  e                                           ; $6d47: $1d
	add  b                                           ; $6d48: $80
	cp   $03                                         ; $6d49: $fe $03
	ld   [$e0fc], sp                                 ; $6d4b: $08 $fc $e0
	inc  e                                           ; $6d4e: $1c
	add  b                                           ; $6d4f: $80
	rlca                                             ; $6d50: $07
	ld   [bc], a                                     ; $6d51: $02
	ld   a, a                                        ; $6d52: $7f
	ld   b, b                                        ; $6d53: $40
	rra                                              ; $6d54: $1f
	add  b                                           ; $6d55: $80
	ld   a, h                                        ; $6d56: $7c
	jr   z, @+$01                                    ; $6d57: $28 $ff

	ld   a, [bc]                                     ; $6d59: $0a
	db   $dd                                         ; $6d5a: $dd
	ccf                                              ; $6d5b: $3f
	ld   a, a                                        ; $6d5c: $7f
	ld   c, b                                        ; $6d5d: $48
	ccf                                              ; $6d5e: $3f
	ld   bc, $f13e                                   ; $6d5f: $01 $3e $f1
	ldh  a, [$ce]                                    ; $6d62: $f0 $ce
	add  hl, bc                                      ; $6d64: $09
	db   $fd                                         ; $6d65: $fd
	rlca                                             ; $6d66: $07
	inc  a                                           ; $6d67: $3c
	rst  $38                                         ; $6d68: $ff
	add  l                                           ; $6d69: $85
	ld   a, [hl]                                     ; $6d6a: $7e
	push af                                          ; $6d6b: $f5
	ldh  a, [rIF]                                    ; $6d6c: $f0 $0f
	add  c                                           ; $6d6e: $81
	ldh  a, [rVBK]                                   ; $6d6f: $f0 $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d71: $cf
	cpl                                              ; $6d72: $2f
	ld   l, $83                                      ; $6d73: $2e $83
	rst  $38                                         ; $6d75: $ff
	cp   a                                           ; $6d76: $bf
	ld   [hl-], a                                    ; $6d77: $32
	add  b                                           ; $6d78: $80
	ld   hl, sp+$4e                                  ; $6d79: $f8 $4e
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d7b: $cf
	ld   l, $48                                      ; $6d7c: $2e $48
	ld   l, [hl]                                     ; $6d7e: $6e
	add  b                                           ; $6d7f: $80
	ld   l, [hl]                                     ; $6d80: $6e
	add  c                                           ; $6d81: $81
	ld   a, [hl]                                     ; $6d82: $7e
	nop                                              ; $6d83: $00
	ld   [de], a                                     ; $6d84: $12
	add  b                                           ; $6d85: $80
	ld   a, [hl]                                     ; $6d86: $7e
	inc  bc                                          ; $6d87: $03
	ld   l, h                                        ; $6d88: $6c
	db   $ed                                         ; $6d89: $ed
	ld   [$80ed], sp                                 ; $6d8a: $08 $ed $80
	db   $fd                                         ; $6d8d: $fd

jr_073_6d8e:
	ld   [bc], a                                     ; $6d8e: $02
	jr   jr_073_6d8e                                 ; $6d8f: $18 $fd

	db   $10                                         ; $6d91: $10
	add  d                                           ; $6d92: $82
	db   $fd                                         ; $6d93: $fd
	dec  b                                           ; $6d94: $05
	ld   de, $fd7d                                   ; $6d95: $11 $7d $fd
	ld   a, h                                        ; $6d98: $7c
	ei                                               ; $6d99: $fb
	ld   c, b                                        ; $6d9a: $48
	add  c                                           ; $6d9b: $81
	ei                                               ; $6d9c: $fb
	ld   [bc], a                                     ; $6d9d: $02
	ld   c, b                                        ; $6d9e: $48
	ei                                               ; $6d9f: $fb
	ld   b, b                                        ; $6da0: $40
	add  c                                           ; $6da1: $81
	ei                                               ; $6da2: $fb
	ld   b, $b0                                      ; $6da3: $06 $b0
	adc  b                                           ; $6da5: $88
	cp   b                                           ; $6da6: $b8
	and  e                                           ; $6da7: $a3
	ld   h, e                                        ; $6da8: $63
	rst  $30                                         ; $6da9: $f7
	add  b                                           ; $6daa: $80
	add  c                                           ; $6dab: $81
	rst  $30                                         ; $6dac: $f7
	inc  b                                           ; $6dad: $04
	nop                                              ; $6dae: $00
	ld   [hl], b                                     ; $6daf: $70
	db   $10                                         ; $6db0: $10
	ld   h, a                                        ; $6db1: $67
	add  a                                           ; $6db2: $87

jr_073_6db3:
	add  b                                           ; $6db3: $80
	jr   jr_073_6d36                                 ; $6db4: $18 $80

	rst  $20                                         ; $6db6: $e7
	dec  b                                           ; $6db7: $05
	inc  e                                           ; $6db8: $1c
	sbc  h                                           ; $6db9: $9c
	ld   l, c                                        ; $6dba: $69
	add  hl, hl                                      ; $6dbb: $29
	ld   b, [hl]                                     ; $6dbc: $46
	add  [hl]                                        ; $6dbd: $86
	add  b                                           ; $6dbe: $80
	add  hl, sp                                      ; $6dbf: $39
	add  b                                           ; $6dc0: $80
	rst  ToBoot                                         ; $6dc1: $c7
	add  b                                           ; $6dc2: $80
	inc  a                                           ; $6dc3: $3c
	add  b                                           ; $6dc4: $80
	ldh  [$80], a                                    ; $6dc5: $e0 $80
	add  e                                           ; $6dc7: $83
	add  b                                           ; $6dc8: $80
	inc  e                                           ; $6dc9: $1c
	add  b                                           ; $6dca: $80
	rst  $38                                         ; $6dcb: $ff
	add  b                                           ; $6dcc: $80
	nop                                              ; $6dcd: $00
	add  b                                           ; $6dce: $80
	rst  $38                                         ; $6dcf: $ff
	add  d                                           ; $6dd0: $82
	nop                                              ; $6dd1: $00
	add  b                                           ; $6dd2: $80
	cp   $80                                         ; $6dd3: $fe $80
	add  h                                           ; $6dd5: $84
	add  b                                           ; $6dd6: $80
	or   b                                           ; $6dd7: $b0
	add  b                                           ; $6dd8: $80
	rst  $38                                         ; $6dd9: $ff
	add  b                                           ; $6dda: $80
	nop                                              ; $6ddb: $00
	add  b                                           ; $6ddc: $80
	rst  $38                                         ; $6ddd: $ff
	add  d                                           ; $6dde: $82
	nop                                              ; $6ddf: $00
	add  b                                           ; $6de0: $80
	ld   a, e                                        ; $6de1: $7b
	add  b                                           ; $6de2: $80
	inc  sp                                          ; $6de3: $33
	add  b                                           ; $6de4: $80
	ld   h, h                                        ; $6de5: $64
	add  b                                           ; $6de6: $80
	rst  $38                                         ; $6de7: $ff
	add  b                                           ; $6de8: $80
	nop                                              ; $6de9: $00
	add  b                                           ; $6dea: $80
	rst  $38                                         ; $6deb: $ff
	add  d                                           ; $6dec: $82
	nop                                              ; $6ded: $00
	add  b                                           ; $6dee: $80
	rst  $38                                         ; $6def: $ff
	add  b                                           ; $6df0: $80
	sub  a                                           ; $6df1: $97
	add  b                                           ; $6df2: $80
	ld   d, h                                        ; $6df3: $54
	inc  bc                                          ; $6df4: $03
	rst  $38                                         ; $6df5: $ff
	cp   $01                                         ; $6df6: $fe $01
	nop                                              ; $6df8: $00
	add  b                                           ; $6df9: $80
	rst  $38                                         ; $6dfa: $ff
	add  d                                           ; $6dfb: $82
	nop                                              ; $6dfc: $00
	add  b                                           ; $6dfd: $80
	cp   $80                                         ; $6dfe: $fe $80
	ld   l, $01                                      ; $6e00: $2e $01
	cp   $f2                                         ; $6e02: $fe $f2
	add  l                                           ; $6e04: $85
	rrca                                             ; $6e05: $0f
	ld   [$0103], sp                                 ; $6e06: $08 $03 $01
	ld   c, $0f                                      ; $6e09: $0e $0f
	nop                                              ; $6e0b: $00
	rrca                                             ; $6e0c: $0f
	nop                                              ; $6e0d: $00
	rrca                                             ; $6e0e: $0f
	cp   h                                           ; $6e0f: $bc
	add  e                                           ; $6e10: $83
	rst  $38                                         ; $6e11: $ff
	add  b                                           ; $6e12: $80
	ei                                               ; $6e13: $fb
	add  hl, bc                                      ; $6e14: $09
	jp   $bec1                                       ; $6e15: $c3 $c1 $be


	rst  $38                                         ; $6e18: $ff
	nop                                              ; $6e19: $00
	rst  $38                                         ; $6e1a: $ff
	nop                                              ; $6e1b: $00
	rst  $38                                         ; $6e1c: $ff
	xor  b                                           ; $6e1d: $a8
	db   $eb                                         ; $6e1e: $eb
	add  b                                           ; $6e1f: $80
	di                                               ; $6e20: $f3
	add  d                                           ; $6e21: $82
	db   $e3                                         ; $6e22: $e3
	ld   [$c1c3], sp                                 ; $6e23: $08 $c3 $c1
	and  c                                           ; $6e26: $a1
	ldh  [rP1], a                                    ; $6e27: $e0 $00
	rst  $38                                         ; $6e29: $ff
	nop                                              ; $6e2a: $00
	rst  $38                                         ; $6e2b: $ff
	jr   nz, jr_073_6db3                             ; $6e2c: $20 $85

	ld   h, e                                        ; $6e2e: $63
	nop                                              ; $6e2f: $00
	ld   b, e                                        ; $6e30: $43
	add  b                                           ; $6e31: $80
	ld   b, c                                        ; $6e32: $41
	add  b                                           ; $6e33: $80
	nop                                              ; $6e34: $00
	rlca                                             ; $6e35: $07
	rst  $38                                         ; $6e36: $ff
	nop                                              ; $6e37: $00
	rst  $38                                         ; $6e38: $ff
	inc  h                                           ; $6e39: $24
	ld   h, h                                        ; $6e3a: $64
	ld   h, a                                        ; $6e3b: $67

jr_073_6e3c:
	ld   h, h                                        ; $6e3c: $64
	ld   h, a                                        ; $6e3d: $67
	add  e                                           ; $6e3e: $83
	ld   h, h                                        ; $6e3f: $64
	dec  bc                                          ; $6e40: $0b
	ld   b, h                                        ; $6e41: $44
	inc  b                                           ; $6e42: $04
	nop                                              ; $6e43: $00
	db   $fc                                         ; $6e44: $fc
	nop                                              ; $6e45: $00
	db   $fc                                         ; $6e46: $fc
	inc  sp                                          ; $6e47: $33
	scf                                              ; $6e48: $37
	rst  $28                                         ; $6e49: $ef
	cpl                                              ; $6e4a: $2f
	rst  $30                                         ; $6e4b: $f7
	scf                                              ; $6e4c: $37
	add  b                                           ; $6e4d: $80
	cpl                                              ; $6e4e: $2f
	add  b                                           ; $6e4f: $80
	scf                                              ; $6e50: $37
	ld   b, $2f                                      ; $6e51: $06 $2f
	dec  hl                                          ; $6e53: $2b
	inc  bc                                          ; $6e54: $03
	ccf                                              ; $6e55: $3f
	inc  bc                                          ; $6e56: $03
	ccf                                              ; $6e57: $3f
	and  d                                           ; $6e58: $a2
	add  l                                           ; $6e59: $85
	cp   a                                           ; $6e5a: $bf
	ld   [$bfb7], sp                                 ; $6e5b: $08 $b7 $bf
	cp   d                                           ; $6e5e: $ba
	cp   a                                           ; $6e5f: $bf
	sub  c                                           ; $6e60: $91
	cp   a                                           ; $6e61: $bf
	add  d                                           ; $6e62: $82
	xor  h                                           ; $6e63: $ac
	ld   [hl], d                                     ; $6e64: $72
	add  e                                           ; $6e65: $83
	ld   a, [hl]                                     ; $6e66: $7e
	ld   b, $66                                      ; $6e67: $06 $66
	ld   l, [hl]                                     ; $6e69: $6e
	ld   l, b                                        ; $6e6a: $68
	ld   l, h                                        ; $6e6b: $6c
	ld   [hl], b                                     ; $6e6c: $70
	ld   h, e                                        ; $6e6d: $63
	inc  bc                                          ; $6e6e: $03
	add  b                                           ; $6e6f: $80
	inc  e                                           ; $6e70: $1c
	inc  b                                           ; $6e71: $04
	di                                               ; $6e72: $f3
	ld   c, $81                                      ; $6e73: $0e $81
	cp   h                                           ; $6e75: $bc
	ld   a, $82                                      ; $6e76: $3e $82
	ld   a, [hl]                                     ; $6e78: $7e
	add  b                                           ; $6e79: $80
	ld   d, h                                        ; $6e7a: $54
	add  b                                           ; $6e7b: $80
	ld   a, [hl+]                                    ; $6e7c: $2a
	add  b                                           ; $6e7d: $80
	ld   d, h                                        ; $6e7e: $54
	inc  b                                           ; $6e7f: $04
	nop                                              ; $6e80: $00
	ld   bc, $1c7f                                   ; $6e81: $01 $7f $1c
	sbc  h                                           ; $6e84: $9c
	add  b                                           ; $6e85: $80
	ld   h, e                                        ; $6e86: $63
	add  b                                           ; $6e87: $80
	sbc  [hl]                                        ; $6e88: $9e
	add  b                                           ; $6e89: $80
	ld   [hl], b                                     ; $6e8a: $70
	add  b                                           ; $6e8b: $80
	add  b                                           ; $6e8c: $80
	add  b                                           ; $6e8d: $80
	rrca                                             ; $6e8e: $0f
	add  b                                           ; $6e8f: $80
	ld   a, b                                        ; $6e90: $78
	inc  b                                           ; $6e91: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6e92: $cf
	or   e                                           ; $6e93: $b3
	nop                                              ; $6e94: $00
	cp   h                                           ; $6e95: $bc
	ld   a, $82                                      ; $6e96: $3e $82
	ld   a, [hl]                                     ; $6e98: $7e
	add  b                                           ; $6e99: $80
	ld   d, h                                        ; $6e9a: $54
	add  b                                           ; $6e9b: $80
	ld   a, [hl+]                                    ; $6e9c: $2a
	add  b                                           ; $6e9d: $80
	ld   d, h                                        ; $6e9e: $54
	ld   [bc], a                                     ; $6e9f: $02
	nop                                              ; $6ea0: $00
	ld   bc, $80ff                                   ; $6ea1: $01 $ff $80
	ld   [hl], h                                     ; $6ea4: $74
	add  b                                           ; $6ea5: $80
	db   $eb                                         ; $6ea6: $eb
	add  b                                           ; $6ea7: $80
	ld   hl, $ce80                                   ; $6ea8: $21 $80 $ce
	add  b                                           ; $6eab: $80
	jp   nc, $b980                                   ; $6eac: $d2 $80 $b9

	add  b                                           ; $6eaf: $80
	nop                                              ; $6eb0: $00

jr_073_6eb1:
	add  b                                           ; $6eb1: $80
	ld   sp, $5f80                                   ; $6eb2: $31 $80 $5f
	add  b                                           ; $6eb5: $80
	add  d                                           ; $6eb6: $82
	add  b                                           ; $6eb7: $80
	ld   l, l                                        ; $6eb8: $6d
	add  b                                           ; $6eb9: $80
	jr   nc, jr_073_6e3c                             ; $6eba: $30 $80

	ld   [de], a                                     ; $6ebc: $12
	add  b                                           ; $6ebd: $80
	sbc  c                                           ; $6ebe: $99
	add  b                                           ; $6ebf: $80
	db   $10                                         ; $6ec0: $10
	add  b                                           ; $6ec1: $80
	add  c                                           ; $6ec2: $81
	add  b                                           ; $6ec3: $80
	nop                                              ; $6ec4: $00
	add  b                                           ; $6ec5: $80
	ld   b, l                                        ; $6ec6: $45
	add  b                                           ; $6ec7: $80
	ld   bc, $1280                                   ; $6ec8: $01 $80 $12
	add  b                                           ; $6ecb: $80
	ld   h, $80                                      ; $6ecc: $26 $80
	rlca                                             ; $6ece: $07
	add  b                                           ; $6ecf: $80
	ld   d, $80                                      ; $6ed0: $16 $80
	inc  h                                           ; $6ed2: $24
	add  b                                           ; $6ed3: $80
	ld   c, b                                        ; $6ed4: $48
	add  b                                           ; $6ed5: $80
	add  hl, hl                                      ; $6ed6: $29
	add  b                                           ; $6ed7: $80
	add  h                                           ; $6ed8: $84
	add  b                                           ; $6ed9: $80
	jr   nc, @-$7e                                   ; $6eda: $30 $80

	adc  $80                                         ; $6edc: $ce $80
	ret  nz                                          ; $6ede: $c0

	add  b                                           ; $6edf: $80
	ld   de, $3680                                   ; $6ee0: $11 $80 $36
	add  b                                           ; $6ee3: $80
	ld   [de], a                                     ; $6ee4: $12
	add  b                                           ; $6ee5: $80
	adc  $80                                         ; $6ee6: $ce $80
	ld   e, [hl]                                     ; $6ee8: $5e
	add  b                                           ; $6ee9: $80
	ld   [hl+], a                                    ; $6eea: $22
	add  b                                           ; $6eeb: $80
	and  [hl]                                        ; $6eec: $a6
	add  b                                           ; $6eed: $80
	ld   a, [bc]                                     ; $6eee: $0a
	add  b                                           ; $6eef: $80
	xor  [hl]                                        ; $6ef0: $ae
	add  b                                           ; $6ef1: $80
	ld   l, $8e                                      ; $6ef2: $2e $8e
	rrca                                             ; $6ef4: $0f
	adc  l                                           ; $6ef5: $8d
	rst  $38                                         ; $6ef6: $ff
	ld   bc, $c0cf                                   ; $6ef7: $01 $cf $c0
	adc  h                                           ; $6efa: $8c
	ldh  a, [rP1]                                    ; $6efb: $f0 $00
	di                                               ; $6efd: $f3
	add  e                                           ; $6efe: $83
	nop                                              ; $6eff: $00
	ld   a, [bc]                                     ; $6f00: $0a
	ld   [bc], a                                     ; $6f01: $02
	nop                                              ; $6f02: $00
	cp   $00                                         ; $6f03: $fe $00

jr_073_6f05:
	cp   $00                                         ; $6f05: $fe $00
	cp   $00                                         ; $6f07: $fe $00
	db   $fc                                         ; $6f09: $fc
	nop                                              ; $6f0a: $00
	inc  bc                                          ; $6f0b: $03
	adc  b                                           ; $6f0c: $88
	db   $fc                                         ; $6f0d: $fc
	add  b                                           ; $6f0e: $80
	rst  $38                                         ; $6f0f: $ff
	add  c                                           ; $6f10: $81
	ld   hl, sp+$02                                  ; $6f11: $f8 $02
	ei                                               ; $6f13: $fb
	ccf                                              ; $6f14: $3f
	ld   a, $80                                      ; $6f15: $3e $80
	ccf                                              ; $6f17: $3f
	rlca                                             ; $6f18: $07
	inc  a                                           ; $6f19: $3c
	ld   [hl], $31                                   ; $6f1a: $36 $31
	add  hl, de                                      ; $6f1c: $19
	ld   b, [hl]                                     ; $6f1d: $46
	add  [hl]                                        ; $6f1e: $86
	ld   sp, hl                                      ; $6f1f: $f9
	add  hl, de                                      ; $6f20: $19
	add  b                                           ; $6f21: $80
	rlca                                             ; $6f22: $07
	inc  bc                                          ; $6f23: $03
	inc  e                                           ; $6f24: $1c
	adc  [hl]                                        ; $6f25: $8e
	and  e                                           ; $6f26: $a3
	ld   sp, $8e80                                   ; $6f27: $31 $80 $8e
	add  b                                           ; $6f2a: $80
	ld   sp, $ce80                                   ; $6f2b: $31 $80 $ce
	add  b                                           ; $6f2e: $80
	jr   c, jr_073_6eb1                              ; $6f2f: $38 $80

	pop  bc                                          ; $6f31: $c1
	add  b                                           ; $6f32: $80
	ld   b, $03                                      ; $6f33: $06 $03
	rra                                              ; $6f35: $1f
	ret  z                                           ; $6f36: $c8

	ccf                                              ; $6f37: $3f
	scf                                              ; $6f38: $37
	add  b                                           ; $6f39: $80
	ccf                                              ; $6f3a: $3f
	ld   b, $37                                      ; $6f3b: $06 $37
	rla                                              ; $6f3d: $17
	scf                                              ; $6f3e: $37
	ld   h, a                                        ; $6f3f: $67
	ld   [hl], a                                     ; $6f40: $77
	ld   h, [hl]                                     ; $6f41: $66
	ld   l, a                                        ; $6f42: $6f
	add  b                                           ; $6f43: $80
	ld   l, [hl]                                     ; $6f44: $6e
	ld   [bc], a                                     ; $6f45: $02
	xor  $ce                                         ; $6f46: $ee $ce
	ld   c, $82                                      ; $6f48: $0e $82
	rst  $38                                         ; $6f4a: $ff
	ld   [bc], a                                     ; $6f4b: $02
	db   $fd                                         ; $6f4c: $fd
	ld   sp, hl                                      ; $6f4d: $f9
	dec  a                                           ; $6f4e: $3d
	add  l                                           ; $6f4f: $85
	add  hl, sp                                      ; $6f50: $39
	dec  b                                           ; $6f51: $05
	jr   nc, jr_073_6f05                             ; $6f52: $30 $b1

	sbc  a                                           ; $6f54: $9f
	sbc  [hl]                                        ; $6f55: $9e
	sbc  a                                           ; $6f56: $9f
	rra                                              ; $6f57: $1f
	add  d                                           ; $6f58: $82
	sbc  a                                           ; $6f59: $9f
	add  c                                           ; $6f5a: $81
	cp   e                                           ; $6f5b: $bb
	ld   b, $b3                                      ; $6f5c: $06 $b3
	ei                                               ; $6f5e: $fb
	ldh  a, [c]                                      ; $6f5f: $f2
	di                                               ; $6f60: $f3
	or   d                                           ; $6f61: $b2
	ld   a, a                                        ; $6f62: $7f
	ccf                                              ; $6f63: $3f
	add  b                                           ; $6f64: $80
	ld   a, a                                        ; $6f65: $7f
	add  b                                           ; $6f66: $80
	rst  $38                                         ; $6f67: $ff
	add  c                                           ; $6f68: $81
	cp   $01                                         ; $6f69: $fe $01
	db   $fc                                         ; $6f6b: $fc
	ld   a, [hl]                                     ; $6f6c: $7e
	add  b                                           ; $6f6d: $80
	ld   a, h                                        ; $6f6e: $7c
	ld   [bc], a                                     ; $6f6f: $02

jr_073_6f70:
	inc  a                                           ; $6f70: $3c
	ld   a, h                                        ; $6f71: $7c
	inc  a                                           ; $6f72: $3c
	add  d                                           ; $6f73: $82
	or   $82                                         ; $6f74: $f6 $82
	cp   $02                                         ; $6f76: $fe $02
	or   $76                                         ; $6f78: $f6 $76
	rst  $30                                         ; $6f7a: $f7
	add  b                                           ; $6f7b: $80
	ld   [hl], a                                     ; $6f7c: $77
	ld   [bc], a                                     ; $6f7d: $02
	ld   [hl], e                                     ; $6f7e: $73
	ld   [hl], a                                     ; $6f7f: $77
	adc  h                                           ; $6f80: $8c
	add  b                                           ; $6f81: $80
	add  [hl]                                        ; $6f82: $86
	add  b                                           ; $6f83: $80
	add  b                                           ; $6f84: $80
	add  b                                           ; $6f85: $80
	inc  b                                           ; $6f86: $04
	add  b                                           ; $6f87: $80
	ld   c, c                                        ; $6f88: $49
	add  b                                           ; $6f89: $80
	ld   c, h                                        ; $6f8a: $4c
	add  b                                           ; $6f8b: $80
	db   $e3                                         ; $6f8c: $e3
	add  d                                           ; $6f8d: $82
	nop                                              ; $6f8e: $00
	add  b                                           ; $6f8f: $80
	xor  c                                           ; $6f90: $a9
	add  b                                           ; $6f91: $80
	ld   a, [bc]                                     ; $6f92: $0a
	add  b                                           ; $6f93: $80
	nop                                              ; $6f94: $00

jr_073_6f95:
	add  b                                           ; $6f95: $80
	ldh  [c], a                                      ; $6f96: $e2

jr_073_6f97:
	add  b                                           ; $6f97: $80
	ld   c, h                                        ; $6f98: $4c
	add  b                                           ; $6f99: $80
	reti                                             ; $6f9a: $d9


	add  d                                           ; $6f9b: $82
	nop                                              ; $6f9c: $00
	add  b                                           ; $6f9d: $80
	ld   d, [hl]                                     ; $6f9e: $56
	add  b                                           ; $6f9f: $80
	ld   [de], a                                     ; $6fa0: $12
	add  b                                           ; $6fa1: $80
	adc  $80                                         ; $6fa2: $ce $80
	ld   l, b                                        ; $6fa4: $68
	add  b                                           ; $6fa5: $80
	ld   b, c                                        ; $6fa6: $41
	add  b                                           ; $6fa7: $80
	rst  $20                                         ; $6fa8: $e7
	add  d                                           ; $6fa9: $82
	nop                                              ; $6faa: $00
	add  b                                           ; $6fab: $80
	xor  d                                           ; $6fac: $aa
	add  b                                           ; $6fad: $80
	adc  [hl]                                        ; $6fae: $8e
	add  b                                           ; $6faf: $80
	ld   [hl], d                                     ; $6fb0: $72
	add  b                                           ; $6fb1: $80
	ld   [hl+], a                                    ; $6fb2: $22

jr_073_6fb3:
	add  b                                           ; $6fb3: $80
	adc  d                                           ; $6fb4: $8a
	add  b                                           ; $6fb5: $80
	cp   [hl]                                        ; $6fb6: $be
	add  c                                           ; $6fb7: $81
	nop                                              ; $6fb8: $00
	nop                                              ; $6fb9: $00
	add  e                                           ; $6fba: $83
	add  d                                           ; $6fbb: $82
	ret  nz                                          ; $6fbc: $c0

	rlca                                             ; $6fbd: $07
	db   $fc                                         ; $6fbe: $fc
	db   $fd                                         ; $6fbf: $fd
	ret  nz                                          ; $6fc0: $c0

	db   $fd                                         ; $6fc1: $fd
	ret  nz                                          ; $6fc2: $c0

	db   $fd                                         ; $6fc3: $fd
	ret  nz                                          ; $6fc4: $c0

	pop  bc                                          ; $6fc5: $c1
	add  c                                           ; $6fc6: $81
	ret  nz                                          ; $6fc7: $c0

	ld   bc, $8033                                   ; $6fc8: $01 $33 $80
	add  b                                           ; $6fcb: $80
	nop                                              ; $6fcc: $00
	add  b                                           ; $6fcd: $80
	add  b                                           ; $6fce: $80
	adc  b                                           ; $6fcf: $88
	nop                                              ; $6fd0: $00
	ld   bc, $828d                                   ; $6fd1: $01 $8d $82
	add  b                                           ; $6fd4: $80
	cp   h                                           ; $6fd5: $bc
	add  b                                           ; $6fd6: $80
	xor  d                                           ; $6fd7: $aa
	add  b                                           ; $6fd8: $80
	or   b                                           ; $6fd9: $b0
	add  b                                           ; $6fda: $80
	xor  b                                           ; $6fdb: $a8
	add  b                                           ; $6fdc: $80
	or   b                                           ; $6fdd: $b0
	add  b                                           ; $6fde: $80
	xor  b                                           ; $6fdf: $a8
	add  b                                           ; $6fe0: $80
	or   b                                           ; $6fe1: $b0
	ld   bc, $04f8                                   ; $6fe2: $01 $f8 $04
	adc  h                                           ; $6fe5: $8c
	nop                                              ; $6fe6: $00
	nop                                              ; $6fe7: $00
	inc  bc                                          ; $6fe8: $03
	add  d                                           ; $6fe9: $82
	ld   hl, sp-$76                                  ; $6fea: $f8 $8a
	rst  $38                                         ; $6fec: $ff
	add  b                                           ; $6fed: $80
	jr   jr_073_6f70                                 ; $6fee: $18 $80

	rra                                              ; $6ff0: $1f
	adc  d                                           ; $6ff1: $8a
	rst  $38                                         ; $6ff2: $ff
	add  b                                           ; $6ff3: $80
	nop                                              ; $6ff4: $00
	nop                                              ; $6ff5: $00
	rst  $38                                         ; $6ff6: $ff
	add  b                                           ; $6ff7: $80
	cp   $00                                         ; $6ff8: $fe $00
	db   $fc                                         ; $6ffa: $fc
	add  c                                           ; $6ffb: $81
	db   $fd                                         ; $6ffc: $fd
	ld   bc, $feff                                   ; $6ffd: $01 $ff $fe
	add  d                                           ; $7000: $82
	rst  $38                                         ; $7001: $ff
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	add  b                                           ; $7004: $80
	ld   c, $82                                      ; $7005: $0e $82
	inc  c                                           ; $7007: $0c
	add  b                                           ; $7008: $80
	nop                                              ; $7009: $00
	add  b                                           ; $700a: $80
	rst  $38                                         ; $700b: $ff
	nop                                              ; $700c: $00
	nop                                              ; $700d: $00
	add  d                                           ; $700e: $82
	rst  $38                                         ; $700f: $ff
	nop                                              ; $7010: $00
	nop                                              ; $7011: $00
	add  d                                           ; $7012: $82
	jr   nc, jr_073_6f95                             ; $7013: $30 $80

	jr   nz, jr_073_6f97                             ; $7015: $20 $80

	nop                                              ; $7017: $00
	add  b                                           ; $7018: $80

jr_073_7019:
	rst  $38                                         ; $7019: $ff
	nop                                              ; $701a: $00
	nop                                              ; $701b: $00
	add  d                                           ; $701c: $82
	rst  $38                                         ; $701d: $ff
	nop                                              ; $701e: $00
	nop                                              ; $701f: $00
	add  d                                           ; $7020: $82
	ldh  a, [c]                                      ; $7021: $f2
	add  b                                           ; $7022: $80
	ld   h, b                                        ; $7023: $60
	add  b                                           ; $7024: $80
	nop                                              ; $7025: $00
	add  b                                           ; $7026: $80
	rst  $38                                         ; $7027: $ff
	nop                                              ; $7028: $00
	nop                                              ; $7029: $00
	add  d                                           ; $702a: $82
	rst  $38                                         ; $702b: $ff
	nop                                              ; $702c: $00
	nop                                              ; $702d: $00
	add  d                                           ; $702e: $82
	inc  a                                           ; $702f: $3c
	add  b                                           ; $7030: $80
	jr   c, jr_073_6fb3                              ; $7031: $38 $80

	nop                                              ; $7033: $00
	add  b                                           ; $7034: $80
	rst  $38                                         ; $7035: $ff
	nop                                              ; $7036: $00
	nop                                              ; $7037: $00
	add  d                                           ; $7038: $82
	rst  $38                                         ; $7039: $ff
	nop                                              ; $703a: $00
	nop                                              ; $703b: $00
	add  b                                           ; $703c: $80
	ld   [hl], e                                     ; $703d: $73
	add  d                                           ; $703e: $82
	inc  sp                                          ; $703f: $33
	add  b                                           ; $7040: $80
	nop                                              ; $7041: $00
	add  b                                           ; $7042: $80
	rst  $38                                         ; $7043: $ff
	nop                                              ; $7044: $00
	nop                                              ; $7045: $00
	add  h                                           ; $7046: $84
	rst  $38                                         ; $7047: $ff
	add  d                                           ; $7048: $82
	ld   a, a                                        ; $7049: $7f
	nop                                              ; $704a: $00
	ccf                                              ; $704b: $3f
	add  c                                           ; $704c: $81
	cp   a                                           ; $704d: $bf
	ld   bc, $7fff                                   ; $704e: $01 $ff $7f
	add  d                                           ; $7051: $82
	rst  $38                                         ; $7052: $ff
	ld   b, $fc                                      ; $7053: $06 $fc
	ret  nz                                          ; $7055: $c0

	ld   b, b                                        ; $7056: $40
	ret  nz                                          ; $7057: $c0

	ld   b, b                                        ; $7058: $40
	ret  nz                                          ; $7059: $c0

	ld   b, b                                        ; $705a: $40
	add  a                                           ; $705b: $87
	ret  nz                                          ; $705c: $c0

	nop                                              ; $705d: $00
	or   e                                           ; $705e: $b3
	adc  c                                           ; $705f: $89
	nop                                              ; $7060: $00
	add  b                                           ; $7061: $80
	add  b                                           ; $7062: $80
	add  b                                           ; $7063: $80
	nop                                              ; $7064: $00
	ld   bc, $a8a7                                   ; $7065: $01 $a7 $a8
	add  b                                           ; $7068: $80
	or   b                                           ; $7069: $b0
	add  b                                           ; $706a: $80
	xor  b                                           ; $706b: $a8
	add  b                                           ; $706c: $80
	or   b                                           ; $706d: $b0
	add  b                                           ; $706e: $80
	cp   b                                           ; $706f: $b8
	add  b                                           ; $7070: $80
	add  b                                           ; $7071: $80
	add  b                                           ; $7072: $80
	cp   $80                                         ; $7073: $fe $80
	add  b                                           ; $7075: $80
	ld   bc, $00f0                                   ; $7076: $01 $f0 $00
	add  b                                           ; $7079: $80
	rrca                                             ; $707a: $0f
	add  b                                           ; $707b: $80
	ld   bc, $0c80                                   ; $707c: $01 $80 $0c
	add  b                                           ; $707f: $80
	dec  c                                           ; $7080: $0d
	add  h                                           ; $7081: $84
	rrca                                             ; $7082: $0f
	ld   bc, $00f0                                   ; $7083: $01 $f0 $00
	add  b                                           ; $7086: $80
	rst  $38                                         ; $7087: $ff
	add  b                                           ; $7088: $80
	ld   b, b                                        ; $7089: $40
	add  b                                           ; $708a: $80
	cp   $80                                         ; $708b: $fe $80
	rst  $38                                         ; $708d: $ff
	add  b                                           ; $708e: $80
	db   $fd                                         ; $708f: $fd
	add  d                                           ; $7090: $82
	rst  $38                                         ; $7091: $ff
	add  b                                           ; $7092: $80
	nop                                              ; $7093: $00
	add  b                                           ; $7094: $80
	rst  $38                                         ; $7095: $ff
	add  b                                           ; $7096: $80
	jr   nz, jr_073_7019                             ; $7097: $20 $80

	nop                                              ; $7099: $00
	add  b                                           ; $709a: $80
	inc  d                                           ; $709b: $14
	add  b                                           ; $709c: $80
	ret  nc                                          ; $709d: $d0

	add  b                                           ; $709e: $80
	ld   a, b                                        ; $709f: $78
	add  b                                           ; $70a0: $80
	ld   h, c                                        ; $70a1: $61
	add  b                                           ; $70a2: $80
	nop                                              ; $70a3: $00
	add  b                                           ; $70a4: $80
	rst  $38                                         ; $70a5: $ff
	add  b                                           ; $70a6: $80
	rrca                                             ; $70a7: $0f
	add  b                                           ; $70a8: $80
	ld   e, $80                                      ; $70a9: $1e $80
	dec  a                                           ; $70ab: $3d
	add  b                                           ; $70ac: $80
	ld   a, e                                        ; $70ad: $7b
	add  b                                           ; $70ae: $80
	rst  $30                                         ; $70af: $f7
	add  b                                           ; $70b0: $80
	rst  $28                                         ; $70b1: $ef
	add  b                                           ; $70b2: $80
	rra                                              ; $70b3: $1f
	add  b                                           ; $70b4: $80

jr_073_70b5:
	cp   a                                           ; $70b5: $bf
	add  b                                           ; $70b6: $80
	ld   a, a                                        ; $70b7: $7f
	add  b                                           ; $70b8: $80
	cp   $80                                         ; $70b9: $fe $80
	db   $fd                                         ; $70bb: $fd
	add  b                                           ; $70bc: $80
	ei                                               ; $70bd: $fb
	add  b                                           ; $70be: $80
	rst  $30                                         ; $70bf: $f7
	add  b                                           ; $70c0: $80
	rst  $28                                         ; $70c1: $ef
	add  b                                           ; $70c2: $80
	ret  nz                                          ; $70c3: $c0

	add  b                                           ; $70c4: $80
	cp   a                                           ; $70c5: $bf
	add  b                                           ; $70c6: $80
	ld   [hl], b                                     ; $70c7: $70
	add  b                                           ; $70c8: $80
	ldh  [$80], a                                    ; $70c9: $e0 $80
	ret  nz                                          ; $70cb: $c0

	add  b                                           ; $70cc: $80
	xor  l                                           ; $70cd: $ad
	add  b                                           ; $70ce: $80
	cp   a                                           ; $70cf: $bf
	add  b                                           ; $70d0: $80
	ld   a, a                                        ; $70d1: $7f
	add  b                                           ; $70d2: $80
	nop                                              ; $70d3: $00
	add  b                                           ; $70d4: $80
	rst  $38                                         ; $70d5: $ff
	add  b                                           ; $70d6: $80
	dec  d                                           ; $70d7: $15
	add  b                                           ; $70d8: $80
	rla                                              ; $70d9: $17
	add  b                                           ; $70da: $80
	ld   a, a                                        ; $70db: $7f
	add  b                                           ; $70dc: $80
	ccf                                              ; $70dd: $3f
	add  b                                           ; $70de: $80
	rst  JumpTable                                         ; $70df: $df
	add  b                                           ; $70e0: $80
	rst  $38                                         ; $70e1: $ff
	add  b                                           ; $70e2: $80
	nop                                              ; $70e3: $00
	add  b                                           ; $70e4: $80
	rst  $38                                         ; $70e5: $ff
	add  b                                           ; $70e6: $80
	nop                                              ; $70e7: $00
	add  b                                           ; $70e8: $80
	add  sp, -$80                                    ; $70e9: $e8 $80
	db   $d3                                         ; $70eb: $d3
	add  h                                           ; $70ec: $84
	rst  $38                                         ; $70ed: $ff
	add  b                                           ; $70ee: $80
	nop                                              ; $70ef: $00
	add  b                                           ; $70f0: $80
	rst  $38                                         ; $70f1: $ff
	add  b                                           ; $70f2: $80
	ld   bc, $ff82                                   ; $70f3: $01 $82 $ff
	add  b                                           ; $70f6: $80
	db   $fd                                         ; $70f7: $fd
	add  b                                           ; $70f8: $80
	call z, $ef80                                    ; $70f9: $cc $80 $ef
	add  b                                           ; $70fc: $80
	nop                                              ; $70fd: $00
	add  b                                           ; $70fe: $80
	rst  $38                                         ; $70ff: $ff
	add  b                                           ; $7100: $80
	inc  b                                           ; $7101: $04
	add  d                                           ; $7102: $82
	jp   $3b80                                       ; $7103: $c3 $80 $3b


	add  b                                           ; $7106: $80
	nop                                              ; $7107: $00
	add  b                                           ; $7108: $80
	or   b                                           ; $7109: $b0
	add  b                                           ; $710a: $80
	nop                                              ; $710b: $00
	add  b                                           ; $710c: $80
	rst  $38                                         ; $710d: $ff
	add  b                                           ; $710e: $80
	add  hl, de                                      ; $710f: $19
	add  d                                           ; $7110: $82
	rst  $38                                         ; $7111: $ff
	add  b                                           ; $7112: $80
	sbc  a                                           ; $7113: $9f
	add  b                                           ; $7114: $80
	rst  $38                                         ; $7115: $ff
	add  b                                           ; $7116: $80
	ld   sp, hl                                      ; $7117: $f9
	add  b                                           ; $7118: $80
	nop                                              ; $7119: $00
	add  b                                           ; $711a: $80
	rst  $38                                         ; $711b: $ff
	add  b                                           ; $711c: $80
	add  b                                           ; $711d: $80
	add  b                                           ; $711e: $80
	ldh  a, [c]                                      ; $711f: $f2
	add  b                                           ; $7120: $80
	ei                                               ; $7121: $fb
	add  h                                           ; $7122: $84
	rst  $38                                         ; $7123: $ff
	add  b                                           ; $7124: $80
	nop                                              ; $7125: $00
	add  b                                           ; $7126: $80
	rst  $38                                         ; $7127: $ff
	add  b                                           ; $7128: $80
	add  hl, hl                                      ; $7129: $29
	adc  b                                           ; $712a: $88
	rst  $38                                         ; $712b: $ff
	add  b                                           ; $712c: $80
	nop                                              ; $712d: $00
	add  b                                           ; $712e: $80
	rst  $38                                         ; $712f: $ff
	add  b                                           ; $7130: $80
	inc  b                                           ; $7131: $04
	add  b                                           ; $7132: $80
	jr   z, jr_073_70b5                              ; $7133: $28 $80

	nop                                              ; $7135: $00
	add  b                                           ; $7136: $80
	ld   a, h                                        ; $7137: $7c
	add  b                                           ; $7138: $80
	cp   $80                                         ; $7139: $fe $80
	db   $f4                                         ; $713b: $f4
	add  b                                           ; $713c: $80
	ccf                                              ; $713d: $3f
	add  b                                           ; $713e: $80
	rst  JumpTable                                         ; $713f: $df
	add  b                                           ; $7140: $80
	rst  $28                                         ; $7141: $ef
	add  b                                           ; $7142: $80
	ld   [hl], a                                     ; $7143: $77
	add  b                                           ; $7144: $80
	ld   a, e                                        ; $7145: $7b
	add  b                                           ; $7146: $80
	dec  a                                           ; $7147: $3d
	add  b                                           ; $7148: $80
	sbc  [hl]                                        ; $7149: $9e
	add  b                                           ; $714a: $80
	rrca                                             ; $714b: $0f
	adc  h                                           ; $714c: $8c
	rst  $38                                         ; $714d: $ff
	add  b                                           ; $714e: $80
	ld   a, a                                        ; $714f: $7f
	ld   d, b                                        ; $7150: $50
	ld   [bc], a                                     ; $7151: $02
	add  [hl]                                        ; $7152: $86
	nop                                              ; $7153: $00
	nop                                              ; $7154: $00
	rrca                                             ; $7155: $0f
	add  c                                           ; $7156: $81
	nop                                              ; $7157: $00
	add  b                                           ; $7158: $80
	ld   bc, $0280                                   ; $7159: $01 $80 $02
	nop                                              ; $715c: $00
	rrca                                             ; $715d: $0f
	add  l                                           ; $715e: $85
	nop                                              ; $715f: $00
	ld   bc, $15ea                                   ; $7160: $01 $ea $15
	add  b                                           ; $7163: $80
	xor  d                                           ; $7164: $aa
	add  b                                           ; $7165: $80
	nop                                              ; $7166: $00
	add  b                                           ; $7167: $80
	inc  a                                           ; $7168: $3c
	nop                                              ; $7169: $00
	rst  $38                                         ; $716a: $ff
	add  l                                           ; $716b: $85
	nop                                              ; $716c: $00
	ld   bc, $6f90                                   ; $716d: $01 $90 $6f
	add  b                                           ; $7170: $80
	xor  a                                           ; $7171: $af
	add  b                                           ; $7172: $80
	ld   l, a                                        ; $7173: $6f
	add  b                                           ; $7174: $80
	xor  $00                                         ; $7175: $ee $00
	rst  $38                                         ; $7177: $ff
	add  l                                           ; $7178: $85
	nop                                              ; $7179: $00
	ld   bc, $e01f                                   ; $717a: $01 $1f $e0
	add  d                                           ; $717d: $82
	rst  $38                                         ; $717e: $ff
	add  b                                           ; $717f: $80
	inc  bc                                          ; $7180: $03
	nop                                              ; $7181: $00
	rst  $38                                         ; $7182: $ff
	add  [hl]                                        ; $7183: $86
	nop                                              ; $7184: $00
	add  c                                           ; $7185: $81
	rst  $38                                         ; $7186: $ff
	add  b                                           ; $7187: $80
	rlca                                             ; $7188: $07
	add  b                                           ; $7189: $80
	nop                                              ; $718a: $00
	nop                                              ; $718b: $00
	rst  $38                                         ; $718c: $ff
	add  [hl]                                        ; $718d: $86
	nop                                              ; $718e: $00
	add  e                                           ; $718f: $83
	rst  $38                                         ; $7190: $ff
	add  b                                           ; $7191: $80
	ld   bc, $ff00                                   ; $7192: $01 $00 $ff
	add  l                                           ; $7195: $85
	nop                                              ; $7196: $00
	ld   [bc], a                                     ; $7197: $02
	rlca                                             ; $7198: $07
	rst  $38                                         ; $7199: $ff
	ld   hl, sp-$7c                                  ; $719a: $f8 $84
	rst  $38                                         ; $719c: $ff
	add  l                                           ; $719d: $85
	nop                                              ; $719e: $00
	inc  b                                           ; $719f: $04
	ld   hl, sp-$01                                  ; $71a0: $f8 $ff
	nop                                              ; $71a2: $00
	rst  $38                                         ; $71a3: $ff
	ld   hl, sp-$7e                                  ; $71a4: $f8 $82
	rst  $38                                         ; $71a6: $ff
	add  [hl]                                        ; $71a7: $86
	nop                                              ; $71a8: $00
	dec  b                                           ; $71a9: $05
	rst  $38                                         ; $71aa: $ff
	rlca                                             ; $71ab: $07
	rst  $38                                         ; $71ac: $ff
	nop                                              ; $71ad: $00
	rst  $38                                         ; $71ae: $ff
	ld   hl, sp-$80                                  ; $71af: $f8 $80
	rst  $38                                         ; $71b1: $ff
	add  l                                           ; $71b2: $85
	nop                                              ; $71b3: $00
	ld   bc, $00ff                                   ; $71b4: $01 $ff $00
	add  b                                           ; $71b7: $80
	cp   $04                                         ; $71b8: $fe $04
	rlca                                             ; $71ba: $07
	rst  $38                                         ; $71bb: $ff
	nop                                              ; $71bc: $00
	rst  $38                                         ; $71bd: $ff
	ld   hl, sp-$7b                                  ; $71be: $f8 $85
	nop                                              ; $71c0: $00
	nop                                              ; $71c1: $00
	rst  $38                                         ; $71c2: $ff
	add  c                                           ; $71c3: $81
	nop                                              ; $71c4: $00
	add  b                                           ; $71c5: $80
	cp   $02                                         ; $71c6: $fe $02
	rrca                                             ; $71c8: $0f
	rst  $38                                         ; $71c9: $ff
	rrca                                             ; $71ca: $0f
	add  l                                           ; $71cb: $85
	nop                                              ; $71cc: $00
	nop                                              ; $71cd: $00
	rst  $38                                         ; $71ce: $ff
	add  e                                           ; $71cf: $83
	nop                                              ; $71d0: $00
	add  c                                           ; $71d1: $81
	rst  $38                                         ; $71d2: $ff
	add  l                                           ; $71d3: $85
	nop                                              ; $71d4: $00
	nop                                              ; $71d5: $00
	rst  $38                                         ; $71d6: $ff
	add  e                                           ; $71d7: $83
	nop                                              ; $71d8: $00
	add  b                                           ; $71d9: $80
	rst  $38                                         ; $71da: $ff
	ld   b, $8f                                      ; $71db: $06 $8f
	sub  b                                           ; $71dd: $90
	ld   [hl], b                                     ; $71de: $70
	ldh  [$90], a                                    ; $71df: $e0 $90
	ldh  a, [$e0]                                    ; $71e1: $f0 $e0
	add  c                                           ; $71e3: $81
	ldh  a, [rSC]                                    ; $71e4: $f0 $02
	db   $10                                         ; $71e6: $10
	ldh  a, [$e0]                                    ; $71e7: $f0 $e0
	add  d                                           ; $71e9: $82
	ldh  a, [$85]                                    ; $71ea: $f0 $85
	nop                                              ; $71ec: $00
	ld   bc, $00ff                                   ; $71ed: $01 $ff $00
	add  b                                           ; $71f0: $80
	ld   bc, $1f80                                   ; $71f1: $01 $80 $1f
	ld   [bc], a                                     ; $71f4: $02
	add  $fe                                         ; $71f5: $c6 $fe
	rst  ToBoot                                         ; $71f7: $c7
	add  l                                           ; $71f8: $85
	nop                                              ; $71f9: $00
	ld   bc, $1fe0                                   ; $71fa: $01 $e0 $1f
	add  b                                           ; $71fd: $80
	db   $fc                                         ; $71fe: $fc
	add  b                                           ; $71ff: $80
	ret  nz                                          ; $7200: $c0

	add  b                                           ; $7201: $80
	nop                                              ; $7202: $00
	ld   bc, $05f5                                   ; $7203: $01 $f5 $05
	add  b                                           ; $7206: $80
	ld   [bc], a                                     ; $7207: $02
	add  b                                           ; $7208: $80
	dec  b                                           ; $7209: $05
	add  b                                           ; $720a: $80
	ld   a, [bc]                                     ; $720b: $0a
	add  b                                           ; $720c: $80
	dec  b                                           ; $720d: $05
	add  b                                           ; $720e: $80
	ld   a, [bc]                                     ; $720f: $0a
	add  b                                           ; $7210: $80
	dec  b                                           ; $7211: $05
	add  b                                           ; $7212: $80
	ld   a, [bc]                                     ; $7213: $0a
	ld   bc, $7e8e                                   ; $7214: $01 $8e $7e
	add  b                                           ; $7217: $80
	ld   e, [hl]                                     ; $7218: $5e
	add  b                                           ; $7219: $80
	ld   l, [hl]                                     ; $721a: $6e
	add  b                                           ; $721b: $80
	ld   h, [hl]                                     ; $721c: $66
	add  b                                           ; $721d: $80
	ld   b, d                                        ; $721e: $42
	add  b                                           ; $721f: $80
	nop                                              ; $7220: $00
	add  b                                           ; $7221: $80
	ld   e, a                                        ; $7222: $5f
	add  b                                           ; $7223: $80
	cp   a                                           ; $7224: $bf
	adc  h                                           ; $7225: $8c
	xor  $80                                         ; $7226: $ee $80
	rst  $28                                         ; $7228: $ef
	add  b                                           ; $7229: $80
	inc  bc                                          ; $722a: $03
	add  b                                           ; $722b: $80
	inc  sp                                          ; $722c: $33
	add  b                                           ; $722d: $80
	ld   a, e                                        ; $722e: $7b
	add  d                                           ; $722f: $82
	db   $eb                                         ; $7230: $eb
	add  b                                           ; $7231: $80
	res  0, b                                        ; $7232: $cb $80
	inc  bc                                          ; $7234: $03
	add  b                                           ; $7235: $80
	rst  $38                                         ; $7236: $ff
	add  b                                           ; $7237: $80
	ldh  a, [$8c]                                    ; $7238: $f0 $8c
	rst  $38                                         ; $723a: $ff
	add  b                                           ; $723b: $80
	nop                                              ; $723c: $00
	add  b                                           ; $723d: $80
	ldh  [rP1], a                                    ; $723e: $e0 $00
	db   $e3                                         ; $7240: $e3
	adc  c                                           ; $7241: $89
	ldh  [rP1], a                                    ; $7242: $e0 $00
	inc  bc                                          ; $7244: $03
	add  c                                           ; $7245: $81
	nop                                              ; $7246: $00
	ld   [bc], a                                     ; $7247: $02
	ldh  a, [rP1]                                    ; $7248: $f0 $00
	rrca                                             ; $724a: $0f
	add  c                                           ; $724b: $81
	nop                                              ; $724c: $00
	rlca                                             ; $724d: $07
	rst  $38                                         ; $724e: $ff
	nop                                              ; $724f: $00
	dec  b                                           ; $7250: $05
	ld   b, b                                        ; $7251: $40
	ld   c, h                                        ; $7252: $4c
	ld   b, b                                        ; $7253: $40
	or   [hl]                                        ; $7254: $b6
	rst  $38                                         ; $7255: $ff
	add  d                                           ; $7256: $82
	nop                                              ; $7257: $00
	ld   [bc], a                                     ; $7258: $02
	db   $fc                                         ; $7259: $fc
	nop                                              ; $725a: $00
	inc  bc                                          ; $725b: $03
	add  c                                           ; $725c: $81
	nop                                              ; $725d: $00
	dec  b                                           ; $725e: $05
	cp   $00                                         ; $725f: $fe $00
	jr   nz, jr_073_72a7                             ; $7261: $20 $44

	sbc  d                                           ; $7263: $9a
	rst  $38                                         ; $7264: $ff
	add  b                                           ; $7265: $80
	ld   a, a                                        ; $7266: $7f
	add  d                                           ; $7267: $82
	nop                                              ; $7268: $00
	ld   [bc], a                                     ; $7269: $02
	cp   $00                                         ; $726a: $fe $00
	ld   bc, $0081                                   ; $726c: $01 $81 $00
	ld   [bc], a                                     ; $726f: $02
	ld   a, h                                        ; $7270: $7c
	nop                                              ; $7271: $00
	ld   a, h                                        ; $7272: $7c
	add  c                                           ; $7273: $81
	rst  $38                                         ; $7274: $ff
	add  b                                           ; $7275: $80
	ccf                                              ; $7276: $3f
	add  c                                           ; $7277: $81
	nop                                              ; $7278: $00
	ld   bc, $ec0c                                   ; $7279: $01 $0c $ec
	add  e                                           ; $727c: $83
	inc  b                                           ; $727d: $04
	inc  bc                                          ; $727e: $03
	inc  d                                           ; $727f: $14
	rst  $38                                         ; $7280: $ff
	pop  af                                          ; $7281: $f1
	cp   $82                                         ; $7282: $fe $82
	rst  $38                                         ; $7284: $ff
	add  d                                           ; $7285: $82
	nop                                              ; $7286: $00
	add  d                                           ; $7287: $82
	rst  $38                                         ; $7288: $ff
	nop                                              ; $7289: $00
	db   $10                                         ; $728a: $10
	add  c                                           ; $728b: $81
	rst  $38                                         ; $728c: $ff
	ld   bc, $3fcf                                   ; $728d: $01 $cf $3f
	add  b                                           ; $7290: $80
	rst  $38                                         ; $7291: $ff
	nop                                              ; $7292: $00
	rra                                              ; $7293: $1f
	add  c                                           ; $7294: $81
	nop                                              ; $7295: $00
	add  d                                           ; $7296: $82
	rst  JumpTable                                         ; $7297: $df
	nop                                              ; $7298: $00
	nop                                              ; $7299: $00
	add  [hl]                                        ; $729a: $86
	rst  $38                                         ; $729b: $ff
	add  c                                           ; $729c: $81
	nop                                              ; $729d: $00
	add  d                                           ; $729e: $82
	rst  $38                                         ; $729f: $ff
	ld   [bc], a                                     ; $72a0: $02
	ld   b, c                                        ; $72a1: $41
	rst  JumpTable                                         ; $72a2: $df
	sbc  [hl]                                        ; $72a3: $9e
	add  c                                           ; $72a4: $81
	rst  $38                                         ; $72a5: $ff
	inc  b                                           ; $72a6: $04

jr_073_72a7:
	rra                                              ; $72a7: $1f
	rst  $38                                         ; $72a8: $ff
	pop  hl                                          ; $72a9: $e1
	rst  $38                                         ; $72aa: $ff
	cp   $81                                         ; $72ab: $fe $81
	rst  $38                                         ; $72ad: $ff
	add  b                                           ; $72ae: $80
	rrca                                             ; $72af: $0f
	ld   bc, $fc44                                   ; $72b0: $01 $44 $fc
	add  e                                           ; $72b3: $83
	db   $fd                                         ; $72b4: $fd
	ld   [bc], a                                     ; $72b5: $02
	push hl                                          ; $72b6: $e5
	and  l                                           ; $72b7: $a5
	dec  b                                           ; $72b8: $05
	add  b                                           ; $72b9: $80
	inc  e                                           ; $72ba: $1c
	rrca                                             ; $72bb: $0f
	xor  h                                           ; $72bc: $ac
	cp   h                                           ; $72bd: $bc
	add  l                                           ; $72be: $85
	cp   l                                           ; $72bf: $bd
	ld   [hl], $3e                                   ; $72c0: $36 $3e
	ld   c, [hl]                                     ; $72c2: $4e
	cp   $2e                                         ; $72c3: $fe $2e
	cp   $1e                                         ; $72c5: $fe $1e
	cp   $00                                         ; $72c7: $fe $00
	ldh  a, [$50]                                    ; $72c9: $f0 $50
	nop                                              ; $72cb: $00
	add  b                                           ; $72cc: $80
	rrca                                             ; $72cd: $0f
	add  b                                           ; $72ce: $80
	rst  $38                                         ; $72cf: $ff
	ld   bc, $05f5                                   ; $72d0: $01 $f5 $05
	add  b                                           ; $72d3: $80
	ld   a, [bc]                                     ; $72d4: $0a
	add  b                                           ; $72d5: $80
	inc  b                                           ; $72d6: $04
	add  b                                           ; $72d7: $80
	ld   a, [bc]                                     ; $72d8: $0a
	add  b                                           ; $72d9: $80
	dec  b                                           ; $72da: $05
	add  b                                           ; $72db: $80
	ld   a, [bc]                                     ; $72dc: $0a
	add  b                                           ; $72dd: $80
	inc  b                                           ; $72de: $04
	add  b                                           ; $72df: $80
	add  hl, bc                                      ; $72e0: $09
	ld   bc, $57a7                                   ; $72e1: $01 $a7 $57
	add  b                                           ; $72e4: $80
	ld   d, l                                        ; $72e5: $55
	add  b                                           ; $72e6: $80
	nop                                              ; $72e7: $00
	add  h                                           ; $72e8: $84
	rst  $38                                         ; $72e9: $ff
	add  b                                           ; $72ea: $80
	nop                                              ; $72eb: $00
	add  b                                           ; $72ec: $80
	rst  $38                                         ; $72ed: $ff
	add  b                                           ; $72ee: $80
	rst  $28                                         ; $72ef: $ef
	add  d                                           ; $72f0: $82
	ld   l, a                                        ; $72f1: $6f
	add  b                                           ; $72f2: $80
	db   $ed                                         ; $72f3: $ed
	add  b                                           ; $72f4: $80
	db   $ec                                         ; $72f5: $ec
	add  b                                           ; $72f6: $80
	rst  $28                                         ; $72f7: $ef
	add  b                                           ; $72f8: $80
	ld   l, a                                        ; $72f9: $6f
	add  b                                           ; $72fa: $80
	ld   l, h                                        ; $72fb: $6c
	add  h                                           ; $72fc: $84
	rst  $38                                         ; $72fd: $ff
	inc  b                                           ; $72fe: $04
	or   a                                           ; $72ff: $b7
	sub  d                                           ; $7300: $92
	or   [hl]                                        ; $7301: $b6
	sub  e                                           ; $7302: $93
	rst  $38                                         ; $7303: $ff
	add  b                                           ; $7304: $80
	cp   $03                                         ; $7305: $fe $03
	rst  $38                                         ; $7307: $ff
	rlca                                             ; $7308: $07
	ld   b, $fe                                      ; $7309: $06 $fe
	add  e                                           ; $730b: $83
	rst  $38                                         ; $730c: $ff
	ld   c, h                                        ; $730d: $4c
	cp   $ff                                         ; $730e: $fe $ff
	cp   $ff                                         ; $7310: $fe $ff
	cp   $ff                                         ; $7312: $fe $ff
	db   $fc                                         ; $7314: $fc
	rst  $38                                         ; $7315: $ff
	ld   hl, sp-$01                                  ; $7316: $f8 $ff
	add  $e0                                         ; $7318: $c6 $e0
	add  b                                           ; $731a: $80
	ldh  [rP1], a                                    ; $731b: $e0 $00
	ldh  [rP1], a                                    ; $731d: $e0 $00
	ldh  [rP1], a                                    ; $731f: $e0 $00
	ldh  [rP1], a                                    ; $7321: $e0 $00
	ldh  [rP1], a                                    ; $7323: $e0 $00
	ldh  [rP1], a                                    ; $7325: $e0 $00
	ldh  [$5c], a                                    ; $7327: $e0 $5c
	ld   b, b                                        ; $7329: $40
	ld   c, a                                        ; $732a: $4f
	ld   b, l                                        ; $732b: $45
	ld   c, d                                        ; $732c: $4a
	ld   b, b                                        ; $732d: $40
	ld   c, a                                        ; $732e: $4f
	ld   b, c                                        ; $732f: $41
	ld   e, b                                        ; $7330: $58
	ld   b, b                                        ; $7331: $40
	ld   c, [hl]                                     ; $7332: $4e
	nop                                              ; $7333: $00
	ld   b, $00                                      ; $7334: $06 $00
	ld   [bc], a                                     ; $7336: $02
	ld   h, b                                        ; $7337: $60
	sub  d                                           ; $7338: $92
	inc  b                                           ; $7339: $04
	db   $e4                                         ; $733a: $e4
	inc  b                                           ; $733b: $04
	db   $e4                                         ; $733c: $e4
	inc  b                                           ; $733d: $04
	db   $e4                                         ; $733e: $e4
	ld   b, h                                        ; $733f: $44
	ld   [hl], h                                     ; $7340: $74
	inc  b                                           ; $7341: $04
	db   $e4                                         ; $7342: $e4
	inc  b                                           ; $7343: $04
	call nz, $8000                                   ; $7344: $c4 $00 $80
	inc  c                                           ; $7347: $0c
	dec  b                                           ; $7348: $05
	nop                                              ; $7349: $00
	rlca                                             ; $734a: $07
	nop                                              ; $734b: $00
	ld   c, $00                                      ; $734c: $0e $00
	inc  bc                                          ; $734e: $03
	nop                                              ; $734f: $00
	rlca                                             ; $7350: $07
	nop                                              ; $7351: $00
	ld   c, $00                                      ; $7352: $0e $00
	inc  [hl]                                        ; $7354: $34
	nop                                              ; $7355: $00
	dec  [hl]                                        ; $7356: $35
	nop                                              ; $7357: $00
	xor  d                                           ; $7358: $aa
	inc  b                                           ; $7359: $04
	add  h                                           ; $735a: $84
	add  e                                           ; $735b: $83
	inc  b                                           ; $735c: $04
	nop                                              ; $735d: $00
	add  h                                           ; $735e: $84
	add  c                                           ; $735f: $81
	inc  b                                           ; $7360: $04
	inc  d                                           ; $7361: $14
	add  h                                           ; $7362: $84
	inc  b                                           ; $7363: $04
	add  h                                           ; $7364: $84
	inc  b                                           ; $7365: $04
	sbc  e                                           ; $7366: $9b
	rst  $38                                         ; $7367: $ff
	rra                                              ; $7368: $1f
	rst  $38                                         ; $7369: $ff
	rrca                                             ; $736a: $0f
	rst  $38                                         ; $736b: $ff
	rlca                                             ; $736c: $07
	rst  $38                                         ; $736d: $ff
	inc  bc                                          ; $736e: $03
	rst  $38                                         ; $736f: $ff
	ld   b, c                                        ; $7370: $41
	rst  $38                                         ; $7371: $ff
	pop  hl                                          ; $7372: $e1
	rst  $38                                         ; $7373: $ff
	pop  af                                          ; $7374: $f1
	rst  $38                                         ; $7375: $ff
	dec  h                                           ; $7376: $25
	adc  l                                           ; $7377: $8d
	rst  JumpTable                                         ; $7378: $df
	add  h                                           ; $7379: $84
	rst  $38                                         ; $737a: $ff
	nop                                              ; $737b: $00
	jp   $fb81                                       ; $737c: $c3 $81 $fb


	ld   b, $f9                                      ; $737f: $06 $f9
	ei                                               ; $7381: $fb
	ld   hl, sp-$05                                  ; $7382: $f8 $fb
	ld   hl, sp-$05                                  ; $7384: $f8 $fb
	push bc                                          ; $7386: $c5
	add  c                                           ; $7387: $81
	rst  $38                                         ; $7388: $ff
	rrca                                             ; $7389: $0f
	cp   $ff                                         ; $738a: $fe $ff
	db   $f4                                         ; $738c: $f4
	rst  $38                                         ; $738d: $ff
	and  b                                           ; $738e: $a0
	rst  $38                                         ; $738f: $ff
	nop                                              ; $7390: $00
	rst  $38                                         ; $7391: $ff
	nop                                              ; $7392: $00
	rst  $38                                         ; $7393: $ff
	nop                                              ; $7394: $00
	rst  $38                                         ; $7395: $ff
	ld   b, a                                        ; $7396: $47
	db   $fd                                         ; $7397: $fd
	sub  l                                           ; $7398: $95
	cp   l                                           ; $7399: $bd
	add  b                                           ; $739a: $80
	db   $fd                                         ; $739b: $fd
	dec  bc                                          ; $739c: $0b
	dec  a                                           ; $739d: $3d
	cp   l                                           ; $739e: $bd
	ld   a, l                                        ; $739f: $7d
	db   $fd                                         ; $73a0: $fd
	ld   a, l                                        ; $73a1: $7d
	db   $fd                                         ; $73a2: $fd
	ld   a, l                                        ; $73a3: $7d
	db   $fd                                         ; $73a4: $fd
	ld   a, h                                        ; $73a5: $7c
	db   $fd                                         ; $73a6: $fd
	ld   e, d                                        ; $73a7: $5a
	db   $e3                                         ; $73a8: $e3
	add  b                                           ; $73a9: $80
	sbc  a                                           ; $73aa: $9f
	add  h                                           ; $73ab: $84
	cp   a                                           ; $73ac: $bf
	ld   bc, $bfbd                                   ; $73ad: $01 $bd $bf
	add  b                                           ; $73b0: $80
	rst  $38                                         ; $73b1: $ff
	inc  bc                                          ; $73b2: $03
	inc  bc                                          ; $73b3: $03
	add  e                                           ; $73b4: $83
	halt                                             ; $73b5: $76
	inc  b                                           ; $73b6: $04
	add  b                                           ; $73b7: $80
	add  hl, bc                                      ; $73b8: $09
	add  b                                           ; $73b9: $80
	inc  b                                           ; $73ba: $04
	add  b                                           ; $73bb: $80
	add  hl, bc                                      ; $73bc: $09
	add  b                                           ; $73bd: $80
	inc  b                                           ; $73be: $04
	add  b                                           ; $73bf: $80
	ld   [$0480], sp                                 ; $73c0: $08 $80 $04
	add  b                                           ; $73c3: $80
	add  hl, bc                                      ; $73c4: $09
	ld   bc, $00f0                                   ; $73c5: $01 $f0 $00
	add  b                                           ; $73c8: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $73c9: $cf
	add  b                                           ; $73ca: $80
	nop                                              ; $73cb: $00
	add  b                                           ; $73cc: $80
	xor  a                                           ; $73cd: $af
	add  b                                           ; $73ce: $80
	nop                                              ; $73cf: $00
	add  b                                           ; $73d0: $80
	or   a                                           ; $73d1: $b7
	add  b                                           ; $73d2: $80
	nop                                              ; $73d3: $00
	add  b                                           ; $73d4: $80
	ld   a, l                                        ; $73d5: $7d
	add  b                                           ; $73d6: $80
	ld   l, l                                        ; $73d7: $6d
	adc  h                                           ; $73d8: $8c
	ld   l, h                                        ; $73d9: $6c
	inc  b                                           ; $73da: $04
	rst  $30                                         ; $73db: $f7
	push af                                          ; $73dc: $f5
	dec  d                                           ; $73dd: $15
	ld   d, $d6                                      ; $73de: $16 $d6
	add  b                                           ; $73e0: $80
	call nc, $d680                                   ; $73e1: $d4 $80 $d6
	add  b                                           ; $73e4: $80
	call nc, $d680                                   ; $73e5: $d4 $80 $d6
	inc  de                                          ; $73e8: $13
	call nc, $1614                                   ; $73e9: $d4 $14 $16
	db   $f4                                         ; $73ec: $f4
	rst  $38                                         ; $73ed: $ff
	ldh  a, [rIE]                                    ; $73ee: $f0 $ff
	pop  af                                          ; $73f0: $f1
	rst  $38                                         ; $73f1: $ff
	pop  hl                                          ; $73f2: $e1
	rst  $38                                         ; $73f3: $ff
	pop  hl                                          ; $73f4: $e1
	rst  $38                                         ; $73f5: $ff
	db   $e3                                         ; $73f6: $e3
	rst  $38                                         ; $73f7: $ff
	jp   $c3ff                                       ; $73f8: $c3 $ff $c3


	rst  $38                                         ; $73fb: $ff
	inc  d                                           ; $73fc: $14
	add  h                                           ; $73fd: $84
	ldh  [$87], a                                    ; $73fe: $e0 $87
	xor  $00                                         ; $7400: $ee $00
	jp   hl                                          ; $7402: $e9


	add  c                                           ; $7403: $81
	ld   h, b                                        ; $7404: $60
	inc  bc                                          ; $7405: $03
	ld   h, h                                        ; $7406: $64
	nop                                              ; $7407: $00
	rst  $38                                         ; $7408: $ff
	nop                                              ; $7409: $00
	add  [hl]                                        ; $740a: $86
	inc  d                                           ; $740b: $14
	nop                                              ; $740c: $00
	cp   [hl]                                        ; $740d: $be
	add  c                                           ; $740e: $81
	inc  c                                           ; $740f: $0c
	ld   [bc], a                                     ; $7410: $02
	ld   c, h                                        ; $7411: $4c
	nop                                              ; $7412: $00
	cp   $80                                         ; $7413: $fe $80
	nop                                              ; $7415: $00
	add  c                                           ; $7416: $81
	ld   [hl+], a                                    ; $7417: $22
	add  d                                           ; $7418: $82
	ld   a, $06                                      ; $7419: $3e $06
	ld   d, a                                        ; $741b: $57
	nop                                              ; $741c: $00
	dec  [hl]                                        ; $741d: $35
	nop                                              ; $741e: $00
	jr   nz, jr_073_7421                             ; $741f: $20 $00

jr_073_7421:
	add  hl, bc                                      ; $7421: $09
	add  e                                           ; $7422: $83
	nop                                              ; $7423: $00
	inc  b                                           ; $7424: $04
	ld   d, $00                                      ; $7425: $16 $00
	ld   a, a                                        ; $7427: $7f
	nop                                              ; $7428: $00
	rst  JumpTable                                         ; $7429: $df
	add  c                                           ; $742a: $81
	inc  b                                           ; $742b: $04
	ld   b, $84                                      ; $742c: $06 $84
	inc  b                                           ; $742e: $04
	add  h                                           ; $742f: $84
	inc  b                                           ; $7430: $04
	nop                                              ; $7431: $00
	inc  b                                           ; $7432: $04
	ld   e, a                                        ; $7433: $5f
	add  b                                           ; $7434: $80
	nop                                              ; $7435: $00
	inc  de                                          ; $7436: $13
	ld   a, a                                        ; $7437: $7f
	rst  $38                                         ; $7438: $ff
	nop                                              ; $7439: $00
	db   $fd                                         ; $743a: $fd
	rst  $38                                         ; $743b: $ff
	ld   hl, sp-$01                                  ; $743c: $f8 $ff
	ld   hl, sp-$01                                  ; $743e: $f8 $ff
	db   $fc                                         ; $7440: $fc
	rst  $38                                         ; $7441: $ff
	cp   $ff                                         ; $7442: $fe $ff
	ld   a, [hl]                                     ; $7444: $7e
	ld   a, a                                        ; $7445: $7f
	ld   a, [hl]                                     ; $7446: $7e
	add  b                                           ; $7447: $80
	rst  $38                                         ; $7448: $ff
	ld   a, a                                        ; $7449: $7f
	ld   e, a                                        ; $744a: $5f
	add  e                                           ; $744b: $83
	rst  JumpTable                                         ; $744c: $df
	inc  e                                           ; $744d: $1c
	ld   e, a                                        ; $744e: $5f
	rst  JumpTable                                         ; $744f: $df
	ld   e, [hl]                                     ; $7450: $5e
	rst  JumpTable                                         ; $7451: $df
	ld   e, h                                        ; $7452: $5c
	rst  JumpTable                                         ; $7453: $df
	add  h                                           ; $7454: $84
	rlca                                             ; $7455: $07
	db   $fc                                         ; $7456: $fc
	rst  $38                                         ; $7457: $ff
	ret  nz                                          ; $7458: $c0

	ei                                               ; $7459: $fb
	ld   hl, sp-$3d                                  ; $745a: $f8 $c3
	xor  b                                           ; $745c: $a8
	rst  $38                                         ; $745d: $ff
	dec  b                                           ; $745e: $05
	rst  $38                                         ; $745f: $ff
	rrca                                             ; $7460: $0f
	rst  $38                                         ; $7461: $ff
	ld   e, $fe                                      ; $7462: $1e $fe
	ld   a, $fe                                      ; $7464: $3e $fe
	ld   a, [hl]                                     ; $7466: $7e
	cp   $5f                                         ; $7467: $fe $5f
	rst  $38                                         ; $7469: $ff
	ld   e, a                                        ; $746a: $5f
	add  l                                           ; $746b: $85
	rst  $38                                         ; $746c: $ff
	add  b                                           ; $746d: $80
	ld   a, [de]                                     ; $746e: $1a
	add  b                                           ; $746f: $80
	dec  d                                           ; $7470: $15
	add  b                                           ; $7471: $80
	ld   a, [de]                                     ; $7472: $1a
	ld   [bc], a                                     ; $7473: $02
	cp   e                                           ; $7474: $bb
	db   $fd                                         ; $7475: $fd
	push bc                                          ; $7476: $c5
	add  h                                           ; $7477: $84
	call $fd02                                       ; $7478: $cd $02 $fd
	db   $dd                                         ; $747b: $dd
	push hl                                          ; $747c: $e5
	add  b                                           ; $747d: $80
	ld   h, l                                        ; $747e: $65
	inc  de                                          ; $747f: $13
	and  l                                           ; $7480: $a5
	push hl                                          ; $7481: $e5
	call nc, $86bf                                   ; $7482: $d4 $bf $86
	cp   a                                           ; $7485: $bf
	add  d                                           ; $7486: $82
	cp   a                                           ; $7487: $bf
	add  d                                           ; $7488: $82
	cp   a                                           ; $7489: $bf
	and  d                                           ; $748a: $a2
	cp   a                                           ; $748b: $bf
	ld   [hl-], a                                    ; $748c: $32
	ccf                                              ; $748d: $3f
	ld   a, [hl-]                                    ; $748e: $3a
	ccf                                              ; $748f: $3f
	ld   e, [hl]                                     ; $7490: $5e
	rra                                              ; $7491: $1f
	dec  bc                                          ; $7492: $0b
	inc  b                                           ; $7493: $04
	add  b                                           ; $7494: $80
	add  hl, bc                                      ; $7495: $09
	add  b                                           ; $7496: $80
	inc  b                                           ; $7497: $04
	add  b                                           ; $7498: $80
	add  hl, bc                                      ; $7499: $09
	add  b                                           ; $749a: $80
	inc  b                                           ; $749b: $04
	add  b                                           ; $749c: $80
	ld   [$0480], sp                                 ; $749d: $08 $80 $04
	add  b                                           ; $74a0: $80
	ld   [$f001], sp                                 ; $74a1: $08 $01 $f0
	nop                                              ; $74a4: $00
	add  b                                           ; $74a5: $80
	rst  $38                                         ; $74a6: $ff
	add  b                                           ; $74a7: $80
	nop                                              ; $74a8: $00
	add  b                                           ; $74a9: $80
	rst  $38                                         ; $74aa: $ff
	add  b                                           ; $74ab: $80
	nop                                              ; $74ac: $00
	add  b                                           ; $74ad: $80
	cpl                                              ; $74ae: $2f
	add  b                                           ; $74af: $80
	dec  d                                           ; $74b0: $15
	add  b                                           ; $74b1: $80
	ld   bc, $6d80                                   ; $74b2: $01 $80 $6d
	add  b                                           ; $74b5: $80
	ld   l, h                                        ; $74b6: $6c
	add  h                                           ; $74b7: $84
	ld   l, a                                        ; $74b8: $6f
	add  h                                           ; $74b9: $84
	rst  $28                                         ; $74ba: $ef
	add  b                                           ; $74bb: $80
	rst  $30                                         ; $74bc: $f7
	ld   [bc], a                                     ; $74bd: $02
	rlca                                             ; $74be: $07
	ld   b, $fe                                      ; $74bf: $06 $fe
	add  b                                           ; $74c1: $80
	rst  $38                                         ; $74c2: $ff
	add  b                                           ; $74c3: $80
	cp   $80                                         ; $74c4: $fe $80
	rst  $38                                         ; $74c6: $ff
	add  b                                           ; $74c7: $80
	cp   $81                                         ; $74c8: $fe $81
	rst  $38                                         ; $74ca: $ff
	inc  c                                           ; $74cb: $0c
	call nc, $c3ff                                   ; $74cc: $d4 $ff $c3
	rst  $38                                         ; $74cf: $ff
	rst  ToBoot                                         ; $74d0: $c7
	rst  $38                                         ; $74d1: $ff
	rst  ToBoot                                         ; $74d2: $c7
	rst  $38                                         ; $74d3: $ff
	call nz, $c4fc                                   ; $74d4: $c4 $fc $c4
	db   $fc                                         ; $74d7: $fc
	sub  a                                           ; $74d8: $97
	add  c                                           ; $74d9: $81
	add  b                                           ; $74da: $80
	nop                                              ; $74db: $00
	inc  bc                                          ; $74dc: $03
	add  b                                           ; $74dd: $80
	xor  $0d                                         ; $74de: $ee $0d
	ldh  [c], a                                      ; $74e0: $e2
	call z, $9eff                                    ; $74e1: $cc $ff $9e
	rst  $38                                         ; $74e4: $ff
	dec  sp                                          ; $74e5: $3b
	ld   [$ffbf], sp                                 ; $74e6: $08 $bf $ff
	ret  nz                                          ; $74e9: $c0

	nop                                              ; $74ea: $00
	add  hl, de                                      ; $74eb: $19
	nop                                              ; $74ec: $00
	and  $81                                         ; $74ed: $e6 $81
	ld   [hl+], a                                    ; $74ef: $22
	ld   [bc], a                                     ; $74f0: $02
	rst  $38                                         ; $74f1: $ff
	ld   a, $7f                                      ; $74f2: $3e $7f
	add  c                                           ; $74f4: $81
	ld   a, $01                                      ; $74f5: $3e $01
	and  d                                           ; $74f7: $a2
	rst  $38                                         ; $74f8: $ff
	add  b                                           ; $74f9: $80
	nop                                              ; $74fa: $00
	ld   [$00dc], sp                                 ; $74fb: $08 $dc $00
	ld   e, h                                        ; $74fe: $5c
	nop                                              ; $74ff: $00
	ld   e, l                                        ; $7500: $5d
	nop                                              ; $7501: $00
	db   $dd                                         ; $7502: $dd
	nop                                              ; $7503: $00
	db   $dd                                         ; $7504: $dd
	add  c                                           ; $7505: $81
	nop                                              ; $7506: $00
	ld   bc, $ff22                                   ; $7507: $01 $22 $ff
	add  b                                           ; $750a: $80
	nop                                              ; $750b: $00
	ld   [$0060], sp                                 ; $750c: $08 $60 $00
	sbc  a                                           ; $750f: $9f
	add  hl, bc                                      ; $7510: $09
	ld   a, a                                        ; $7511: $7f
	rrca                                             ; $7512: $0f
	xor  a                                           ; $7513: $af
	ld   e, a                                        ; $7514: $5f
	sbc  c                                           ; $7515: $99
	add  c                                           ; $7516: $81
	rra                                              ; $7517: $1f
	ld   bc, $c030                                   ; $7518: $01 $30 $c0
	add  d                                           ; $751b: $82
	nop                                              ; $751c: $00
	nop                                              ; $751d: $00
	rst  $38                                         ; $751e: $ff
	add  b                                           ; $751f: $80
	ld   a, a                                        ; $7520: $7f
	inc  bc                                          ; $7521: $03
	nop                                              ; $7522: $00
	add  b                                           ; $7523: $80
	ld   a, a                                        ; $7524: $7f
	rst  $38                                         ; $7525: $ff
	add  b                                           ; $7526: $80
	nop                                              ; $7527: $00
	ld   bc, $807f                                   ; $7528: $01 $7f $80
	add  e                                           ; $752b: $83
	nop                                              ; $752c: $00
	add  b                                           ; $752d: $80
	add  b                                           ; $752e: $80
	rlca                                             ; $752f: $07
	rst  $38                                         ; $7530: $ff
	ld   a, a                                        ; $7531: $7f
	nop                                              ; $7532: $00
	add  b                                           ; $7533: $80
	rst  $38                                         ; $7534: $ff
	ld   a, a                                        ; $7535: $7f
	nop                                              ; $7536: $00
	add  b                                           ; $7537: $80
	add  h                                           ; $7538: $84
	nop                                              ; $7539: $00
	ld   [$0702], sp                                 ; $753a: $08 $02 $07
	ld   hl, sp-$01                                  ; $753d: $f8 $ff
	nop                                              ; $753f: $00
	rlca                                             ; $7540: $07
	ld   sp, hl                                      ; $7541: $f9
	rst  $38                                         ; $7542: $ff
	inc  bc                                          ; $7543: $03
	add  b                                           ; $7544: $80
	rlca                                             ; $7545: $07
	add  d                                           ; $7546: $82
	ld   bc, $0302                                   ; $7547: $01 $02 $03
	ld   [bc], a                                     ; $754a: $02
	cp   $80                                         ; $754b: $fe $80
	ld   a, [$f680]                                  ; $754d: $fa $80 $f6
	inc  bc                                          ; $7550: $03
	add  sp, -$15                                    ; $7551: $e8 $eb
	or   $f5                                         ; $7553: $f6 $f5
	add  b                                           ; $7555: $80
	ld   [$d580], a                                  ; $7556: $ea $80 $d5
	add  b                                           ; $7559: $80
	ld   [$1580], a                                  ; $755a: $ea $80 $15
	add  b                                           ; $755d: $80
	ld   a, [de]                                     ; $755e: $1a
	add  b                                           ; $755f: $80
	dec  d                                           ; $7560: $15
	inc  bc                                          ; $7561: $03
	ld   a, [bc]                                     ; $7562: $0a
	ld   a, [$55a5]                                  ; $7563: $fa $a5 $55
	add  b                                           ; $7566: $80
	xor  d                                           ; $7567: $aa
	add  b                                           ; $7568: $80
	ld   d, l                                        ; $7569: $55
	add  b                                           ; $756a: $80
	xor  d                                           ; $756b: $aa
	inc  bc                                          ; $756c: $03
	ld   b, e                                        ; $756d: $43
	ld   e, l                                        ; $756e: $5d
	push af                                          ; $756f: $f5
	db   $ed                                         ; $7570: $ed
	add  b                                           ; $7571: $80
	ld   d, l                                        ; $7572: $55
	add  b                                           ; $7573: $80
	push hl                                          ; $7574: $e5
	add  b                                           ; $7575: $80
	ld   d, l                                        ; $7576: $55
	ld   bc, $e5e4                                   ; $7577: $01 $e4 $e5
	add  b                                           ; $757a: $80
	ld   b, l                                        ; $757b: $45
	add  b                                           ; $757c: $80
	push hl                                          ; $757d: $e5
	add  hl, bc                                      ; $757e: $09
	ld   a, c                                        ; $757f: $79
	ld   a, a                                        ; $7580: $7f
	cp   $83                                         ; $7581: $fe $83
	add  d                                           ; $7583: $82
	cp   a                                           ; $7584: $bf
	dec  a                                           ; $7585: $3d
	cp   h                                           ; $7586: $bc
	cp   l                                           ; $7587: $bd
	cp   h                                           ; $7588: $bc
	add  d                                           ; $7589: $82
	cp   [hl]                                        ; $758a: $be
	inc  bc                                          ; $758b: $03
	cp   a                                           ; $758c: $bf
	cp   [hl]                                        ; $758d: $be
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $758e: $cf
	nop                                              ; $758f: $00
	add  b                                           ; $7590: $80
	rrca                                             ; $7591: $0f
	add  b                                           ; $7592: $80
	nop                                              ; $7593: $00
	add  b                                           ; $7594: $80
	dec  c                                           ; $7595: $0d
	add  b                                           ; $7596: $80
	ld   [$0180], sp                                 ; $7597: $08 $80 $01
	add  b                                           ; $759a: $80
	ld   a, [bc]                                     ; $759b: $0a
	add  b                                           ; $759c: $80
	nop                                              ; $759d: $00
	ld   bc, $bf4f                                   ; $759e: $01 $4f $bf
	add  b                                           ; $75a1: $80
	ld   e, [hl]                                     ; $75a2: $5e
	add  b                                           ; $75a3: $80
	add  $80                                         ; $75a4: $c6 $80
	ld   a, a                                        ; $75a6: $7f
	add  b                                           ; $75a7: $80
	xor  a                                           ; $75a8: $af
	add  b                                           ; $75a9: $80
	ld   h, e                                        ; $75aa: $63
	add  b                                           ; $75ab: $80
	cp   a                                           ; $75ac: $bf
	add  b                                           ; $75ad: $80
	nop                                              ; $75ae: $00
	add  b                                           ; $75af: $80
	rst  $38                                         ; $75b0: $ff
	inc  bc                                          ; $75b1: $03
	ld   a, [$7bba]                                  ; $75b2: $fa $ba $7b
	dec  sp                                          ; $75b5: $3b
	add  b                                           ; $75b6: $80
	db   $fd                                         ; $75b7: $fd
	inc  bc                                          ; $75b8: $03
	ld   a, [hl]                                     ; $75b9: $7e
	ld   e, [hl]                                     ; $75ba: $5e
	ccf                                              ; $75bb: $3f
	rra                                              ; $75bc: $1f
	add  b                                           ; $75bd: $80
	ldh  [$80], a                                    ; $75be: $e0 $80
	rrca                                             ; $75c0: $0f
	inc  bc                                          ; $75c1: $03
	rst  $38                                         ; $75c2: $ff
	xor  b                                           ; $75c3: $a8
	add  a                                           ; $75c4: $87
	ret  nc                                          ; $75c5: $d0

	add  b                                           ; $75c6: $80
	dec  de                                          ; $75c7: $1b
	add  b                                           ; $75c8: $80
	call c, $3f80                                    ; $75c9: $dc $80 $3f
	inc  bc                                          ; $75cc: $03
	rst  $38                                         ; $75cd: $ff
	push af                                          ; $75ce: $f5
	and  l                                           ; $75cf: $a5
	xor  a                                           ; $75d0: $af
	add  b                                           ; $75d1: $80
	rst  $38                                         ; $75d2: $ff
	ld   [$0080], sp                                 ; $75d3: $08 $80 $00
	ret  nz                                          ; $75d6: $c0

	nop                                              ; $75d7: $00
	and  b                                           ; $75d8: $a0
	ret  nz                                          ; $75d9: $c0

	jr   nc, jr_073_75dc                             ; $75da: $30 $00

jr_073_75dc:
	add  sp, -$80                                    ; $75dc: $e8 $80
	add  b                                           ; $75de: $80
	add  b                                           ; $75df: $80
	ld   a, b                                        ; $75e0: $78
	add  c                                           ; $75e1: $81
	ld   hl, sp+$01                                  ; $75e2: $f8 $01
	add  hl, de                                      ; $75e4: $19
	nop                                              ; $75e5: $00
	add  b                                           ; $75e6: $80
	add  b                                           ; $75e7: $80
	add  b                                           ; $75e8: $80
	nop                                              ; $75e9: $00
	ld   bc, $8099                                   ; $75ea: $01 $99 $80
	add  b                                           ; $75ed: $80
	ld   d, b                                        ; $75ee: $50
	add  b                                           ; $75ef: $80
	add  b                                           ; $75f0: $80
	add  b                                           ; $75f1: $80
	ld   d, l                                        ; $75f2: $55
	add  b                                           ; $75f3: $80
	adc  d                                           ; $75f4: $8a
	nop                                              ; $75f5: $00
	call c, $0081                                    ; $75f6: $dc $81 $00
	ld   [bc], a                                     ; $75f9: $02
	inc  e                                           ; $75fa: $1c
	nop                                              ; $75fb: $00
	ret  nz                                          ; $75fc: $c0

	add  l                                           ; $75fd: $85
	nop                                              ; $75fe: $00
	add  b                                           ; $75ff: $80
	xor  d                                           ; $7600: $aa
	nop                                              ; $7601: $00
	ld   h, b                                        ; $7602: $60
	add  e                                           ; $7603: $83
	nop                                              ; $7604: $00
	nop                                              ; $7605: $00
	ld   h, b                                        ; $7606: $60
	add  e                                           ; $7607: $83
	nop                                              ; $7608: $00
	add  b                                           ; $7609: $80
	inc  b                                           ; $760a: $04
	sub  b                                           ; $760b: $90
	nop                                              ; $760c: $00
	rlca                                             ; $760d: $07
	ld   d, h                                        ; $760e: $54
	xor  e                                           ; $760f: $ab
	dec  b                                           ; $7610: $05
	push af                                          ; $7611: $f5
	pop  af                                          ; $7612: $f1
	rst  $38                                         ; $7613: $ff
	cp   $ff                                         ; $7614: $fe $ff
	add  b                                           ; $7616: $80
	ld   a, a                                        ; $7617: $7f
	add  b                                           ; $7618: $80
	rrca                                             ; $7619: $0f
	add  b                                           ; $761a: $80
	add  b                                           ; $761b: $80
	add  b                                           ; $761c: $80
	ldh  a, [$84]                                    ; $761d: $f0 $84
	nop                                              ; $761f: $00
	add  b                                           ; $7620: $80
	add  b                                           ; $7621: $80
	add  b                                           ; $7622: $80
	dec  d                                           ; $7623: $15
	add  b                                           ; $7624: $80
	and  b                                           ; $7625: $a0
	add  b                                           ; $7626: $80
	dec  d                                           ; $7627: $15
	add  b                                           ; $7628: $80
	xor  d                                           ; $7629: $aa
	nop                                              ; $762a: $00
	inc  b                                           ; $762b: $04
	add  e                                           ; $762c: $83
	rlca                                             ; $762d: $07
	add  b                                           ; $762e: $80
	daa                                              ; $762f: $27
	ld   bc, $5556                                   ; $7630: $01 $56 $55
	add  b                                           ; $7633: $80
	inc  b                                           ; $7634: $04
	add  b                                           ; $7635: $80
	ld   d, l                                        ; $7636: $55
	add  b                                           ; $7637: $80
	and  h                                           ; $7638: $a4
	ld   bc, $d52a                                   ; $7639: $01 $2a $d5
	add  b                                           ; $763c: $80
	xor  d                                           ; $763d: $aa
	add  b                                           ; $763e: $80
	push de                                          ; $763f: $d5

jr_073_7640:
	dec  bc                                          ; $7640: $0b
	xor  b                                           ; $7641: $a8
	xor  [hl]                                        ; $7642: $ae
	ld   d, $ed                                      ; $7643: $16 $ed
	add  hl, bc                                      ; $7645: $09
	inc  bc                                          ; $7646: $03
	rst  $20                                         ; $7647: $e7
	ld   [$0702], a                                  ; $7648: $ea $02 $07
	xor  d                                           ; $764b: $aa
	ld   d, l                                        ; $764c: $55
	add  b                                           ; $764d: $80
	xor  d                                           ; $764e: $aa
	add  b                                           ; $764f: $80
	ld   d, l                                        ; $7650: $55
	add  b                                           ; $7651: $80
	xor  d                                           ; $7652: $aa
	add  b                                           ; $7653: $80
	ld   d, l                                        ; $7654: $55
	rlca                                             ; $7655: $07
	ld   a, [hl+]                                    ; $7656: $2a
	xor  d                                           ; $7657: $aa
	cp   a                                           ; $7658: $bf
	ld   b, b                                        ; $7659: $40
	nop                                              ; $765a: $00
	add  b                                           ; $765b: $80
	cp   l                                           ; $765c: $bd
	ld   b, l                                        ; $765d: $45
	add  b                                           ; $765e: $80
	push bc                                          ; $765f: $c5
	ld   bc, $4445                                   ; $7660: $01 $45 $44
	add  b                                           ; $7663: $80
	call nz, $4480                                   ; $7664: $c4 $80 $44
	add  b                                           ; $7667: $80
	call nz, $fc04                                   ; $7668: $c4 $04 $fc
	inc  b                                           ; $766b: $04
	dec  b                                           ; $766c: $05
	inc  b                                           ; $766d: $04
	rst  $38                                         ; $766e: $ff
	add  b                                           ; $766f: $80
	call z, $0101                                    ; $7670: $cc $01 $01
	nop                                              ; $7673: $00
	add  b                                           ; $7674: $80
	ld   [bc], a                                     ; $7675: $02
	ld   a, [bc]                                     ; $7676: $0a
	inc  b                                           ; $7677: $04
	add  sp, -$1c                                    ; $7678: $e8 $e4
	call nc, $eccc                                   ; $767a: $d4 $cc $ec
	db   $fc                                         ; $767d: $fc
	ld   a, b                                        ; $767e: $78
	ld   a, d                                        ; $767f: $7a
	add  hl, bc                                      ; $7680: $09
	dec  b                                           ; $7681: $05
	add  b                                           ; $7682: $80
	ld   a, [bc]                                     ; $7683: $0a
	add  b                                           ; $7684: $80
	dec  b                                           ; $7685: $05
	add  b                                           ; $7686: $80
	ld   a, [bc]                                     ; $7687: $0a
	add  b                                           ; $7688: $80
	dec  b                                           ; $7689: $05
	add  b                                           ; $768a: $80
	ld   a, [bc]                                     ; $768b: $0a
	add  b                                           ; $768c: $80
	dec  b                                           ; $768d: $05
	add  b                                           ; $768e: $80
	ld   c, $01                                      ; $768f: $0e $01
	and  l                                           ; $7691: $a5
	ld   d, l                                        ; $7692: $55
	add  b                                           ; $7693: $80
	xor  e                                           ; $7694: $ab
	add  b                                           ; $7695: $80
	ld   d, a                                        ; $7696: $57
	add  b                                           ; $7697: $80
	xor  b                                           ; $7698: $a8
	add  b                                           ; $7699: $80
	ld   d, c                                        ; $769a: $51
	add  b                                           ; $769b: $80
	and  h                                           ; $769c: $a4
	add  b                                           ; $769d: $80
	ld   d, d                                        ; $769e: $52
	add  b                                           ; $769f: $80
	xor  d                                           ; $76a0: $aa
	add  h                                           ; $76a1: $84
	rst  $38                                         ; $76a2: $ff
	add  b                                           ; $76a3: $80
	ld   a, a                                        ; $76a4: $7f
	add  b                                           ; $76a5: $80
	ccf                                              ; $76a6: $3f
	add  b                                           ; $76a7: $80
	cp   a                                           ; $76a8: $bf
	add  c                                           ; $76a9: $81
	cp   $01                                         ; $76aa: $fe $01
	cp   [hl]                                        ; $76ac: $be
	cp   a                                           ; $76ad: $bf
	add  [hl]                                        ; $76ae: $86
	rst  $38                                         ; $76af: $ff
	add  b                                           ; $76b0: $80
	ld   hl, sp+$02                                  ; $76b1: $f8 $02
	rlca                                             ; $76b3: $07
	add  a                                           ; $76b4: $87
	ld   a, a                                        ; $76b5: $7f
	add  b                                           ; $76b6: $80
	rst  $38                                         ; $76b7: $ff
	add  a                                           ; $76b8: $87
	ld   hl, sp-$80                                  ; $76b9: $f8 $80
	jr   c, jr_073_7640                              ; $76bb: $38 $83

	ret  c                                           ; $76bd: $d8

	ld   bc, $5575                                   ; $76be: $01 $75 $55
	add  b                                           ; $76c1: $80
	add  b                                           ; $76c2: $80
	add  b                                           ; $76c3: $80
	ld   d, l                                        ; $76c4: $55
	add  b                                           ; $76c5: $80
	adc  d                                           ; $76c6: $8a
	add  b                                           ; $76c7: $80
	ld   d, l                                        ; $76c8: $55
	add  b                                           ; $76c9: $80
	ret  nz                                          ; $76ca: $c0

	add  d                                           ; $76cb: $82
	rst  JumpTable                                         ; $76cc: $df
	add  b                                           ; $76cd: $80
	nop                                              ; $76ce: $00
	add  b                                           ; $76cf: $80
	ld   a, [hl+]                                    ; $76d0: $2a
	add  b                                           ; $76d1: $80
	ld   d, l                                        ; $76d2: $55
	add  b                                           ; $76d3: $80
	cp   a                                           ; $76d4: $bf
	add  b                                           ; $76d5: $80
	nop                                              ; $76d6: $00
	add  b                                           ; $76d7: $80
	ld   a, a                                        ; $76d8: $7f
	add  d                                           ; $76d9: $82
	rst  $38                                         ; $76da: $ff
	add  b                                           ; $76db: $80
	inc  b                                           ; $76dc: $04
	add  b                                           ; $76dd: $80
	and  b                                           ; $76de: $a0
	add  b                                           ; $76df: $80
	ld   d, h                                        ; $76e0: $54
	add  b                                           ; $76e1: $80
	nop                                              ; $76e2: $00
	add  b                                           ; $76e3: $80
	ld   [hl], h                                     ; $76e4: $74
	add  d                                           ; $76e5: $82
	db   $f4                                         ; $76e6: $f4
	add  b                                           ; $76e7: $80
	inc  b                                           ; $76e8: $04
	add  d                                           ; $76e9: $82
	rst  $38                                         ; $76ea: $ff
	add  b                                           ; $76eb: $80
	ccf                                              ; $76ec: $3f
	add  b                                           ; $76ed: $80
	rlca                                             ; $76ee: $07
	add  b                                           ; $76ef: $80
	ret  nz                                          ; $76f0: $c0

	add  b                                           ; $76f1: $80
	ld   hl, sp-$80                                  ; $76f2: $f8 $80
	rst  $38                                         ; $76f4: $ff
	inc  bc                                          ; $76f5: $03
	rra                                              ; $76f6: $1f
	rst  $38                                         ; $76f7: $ff
	ld   l, a                                        ; $76f8: $6f
	ld   [hl], b                                     ; $76f9: $70
	add  e                                           ; $76fa: $83
	nop                                              ; $76fb: $00
	inc  bc                                          ; $76fc: $03
	stop                                             ; $76fd: $10 $00
	ld   [hl], b                                     ; $76ff: $70

Call_073_7700:
	sub  b                                           ; $7700: $90
	add  b                                           ; $7701: $80
	ld   [hl], b                                     ; $7702: $70
	add  b                                           ; $7703: $80
	ldh  a, [rSC]                                    ; $7704: $f0 $02
	ld   [hl], b                                     ; $7706: $70
	ld   l, a                                        ; $7707: $6f
	db   $10                                         ; $7708: $10
	add  b                                           ; $7709: $80
	add  e                                           ; $770a: $83
	add  b                                           ; $770b: $80
	cp   a                                           ; $770c: $bf
	add  b                                           ; $770d: $80
	cp   [hl]                                        ; $770e: $be
	add  b                                           ; $770f: $80
	add  c                                           ; $7710: $81
	add  b                                           ; $7711: $80
	cp   a                                           ; $7712: $bf
	add  b                                           ; $7713: $80
	cp   b                                           ; $7714: $b8
	add  b                                           ; $7715: $80
	nop                                              ; $7716: $00
	add  b                                           ; $7717: $80
	dec  b                                           ; $7718: $05
	add  b                                           ; $7719: $80
	db   $f4                                         ; $771a: $f4
	add  b                                           ; $771b: $80
	push af                                          ; $771c: $f5
	add  b                                           ; $771d: $80
	inc  b                                           ; $771e: $04
	add  b                                           ; $771f: $80
	push af                                          ; $7720: $f5
	add  b                                           ; $7721: $80
	ldh  a, [$80]                                    ; $7722: $f0 $80
	nop                                              ; $7724: $00
	add  b                                           ; $7725: $80
	inc  bc                                          ; $7726: $03
	nop                                              ; $7727: $00
	add  hl, bc                                      ; $7728: $09
	add  b                                           ; $7729: $80
	rst  $28                                         ; $772a: $ef
	add  b                                           ; $772b: $80
	rrca                                             ; $772c: $0f
	add  b                                           ; $772d: $80
	rst  $28                                         ; $772e: $ef
	inc  b                                           ; $772f: $04
	rrca                                             ; $7730: $0f
	rlca                                             ; $7731: $07
	rst  ToBoot                                         ; $7732: $c7
	add  $00                                         ; $7733: $c6 $00
	add  b                                           ; $7735: $80
	rrca                                             ; $7736: $0f
	inc  bc                                          ; $7737: $03
	rst  ToBoot                                         ; $7738: $c7
	ld   hl, sp-$41                                  ; $7739: $f8 $bf
	add  b                                           ; $773b: $80
	add  e                                           ; $773c: $83
	cp   a                                           ; $773d: $bf
	add  c                                           ; $773e: $81
	cp   l                                           ; $773f: $bd
	rlca                                             ; $7740: $07
	ld   c, c                                        ; $7741: $49
	ld   [hl], l                                     ; $7742: $75
	push hl                                          ; $7743: $e5
	and  l                                           ; $7744: $a5
	push bc                                          ; $7745: $c5
	dec  b                                           ; $7746: $05
	cp   d                                           ; $7747: $ba
	inc  b                                           ; $7748: $04
	add  e                                           ; $7749: $83
	rst  $38                                         ; $774a: $ff
	inc  b                                           ; $774b: $04
	db   $dd                                         ; $774c: $dd
	sub  c                                           ; $774d: $91
	db   $dd                                         ; $774e: $dd
	ld   e, c                                        ; $774f: $59
	reti                                             ; $7750: $d9


	add  d                                           ; $7751: $82
	db   $dd                                         ; $7752: $dd
	ld   [bc], a                                     ; $7753: $02
	inc  e                                           ; $7754: $1c
	adc  b                                           ; $7755: $88
	add  h                                           ; $7756: $84
	add  d                                           ; $7757: $82
	db   $fc                                         ; $7758: $fc
	add  b                                           ; $7759: $80
	ret  nc                                          ; $775a: $d0

	ld   [$1210], sp                                 ; $775b: $08 $10 $12
	db   $10                                         ; $775e: $10
	db   $d3                                         ; $775f: $d3
	ret  nc                                          ; $7760: $d0

	ret  c                                           ; $7761: $d8

	rst  JumpTable                                         ; $7762: $df
	rra                                              ; $7763: $1f
	rlca                                             ; $7764: $07
	add  b                                           ; $7765: $80
	ld   a, [bc]                                     ; $7766: $0a
	add  b                                           ; $7767: $80
	rlca                                             ; $7768: $07
	add  b                                           ; $7769: $80
	ld   a, [bc]                                     ; $776a: $0a
	add  b                                           ; $776b: $80
	rlca                                             ; $776c: $07
	add  b                                           ; $776d: $80
	ld   a, [bc]                                     ; $776e: $0a
	add  b                                           ; $776f: $80
	rlca                                             ; $7770: $07
	add  b                                           ; $7771: $80
	ld   a, [bc]                                     ; $7772: $0a
	ld   bc, $52a2                                   ; $7773: $01 $a2 $52
	add  b                                           ; $7776: $80
	xor  d                                           ; $7777: $aa
	add  b                                           ; $7778: $80
	ld   d, d                                        ; $7779: $52
	add  b                                           ; $777a: $80
	xor  e                                           ; $777b: $ab
	add  b                                           ; $777c: $80
	ld   d, l                                        ; $777d: $55
	add  b                                           ; $777e: $80
	xor  d                                           ; $777f: $aa
	add  b                                           ; $7780: $80
	ld   d, h                                        ; $7781: $54
	add  b                                           ; $7782: $80
	xor  d                                           ; $7783: $aa
	add  c                                           ; $7784: $81
	cp   $80                                         ; $7785: $fe $80
	cp   [hl]                                        ; $7787: $be
	ld   [bc], a                                     ; $7788: $02
	sbc  $5e                                         ; $7789: $de $5e
	ld   l, [hl]                                     ; $778b: $6e
	add  l                                           ; $778c: $85
	xor  [hl]                                        ; $778d: $ae
	nop                                              ; $778e: $00
	cp   [hl]                                        ; $778f: $be
	add  b                                           ; $7790: $80
	ld   l, [hl]                                     ; $7791: $6e
	add  b                                           ; $7792: $80
	pop  hl                                          ; $7793: $e1
	add  b                                           ; $7794: $80
	ld   a, a                                        ; $7795: $7f
	add  b                                           ; $7796: $80
	rst  $38                                         ; $7797: $ff
	add  b                                           ; $7798: $80
	ld   a, e                                        ; $7799: $7b
	add  b                                           ; $779a: $80
	ld   sp, hl                                      ; $779b: $f9
	add  b                                           ; $779c: $80
	ld   a, a                                        ; $779d: $7f
	add  b                                           ; $779e: $80
	rst  $38                                         ; $779f: $ff
	ld   bc, $5878                                   ; $77a0: $01 $78 $58
	adc  h                                           ; $77a3: $8c
	ret  c                                           ; $77a4: $d8

	ld   bc, $dfff                                   ; $77a5: $01 $ff $df
	add  b                                           ; $77a8: $80
	ret  nz                                          ; $77a9: $c0

	dec  b                                           ; $77aa: $05
	rst  $10                                         ; $77ab: $d7
	rst  JumpTable                                         ; $77ac: $df
	jp   nz, $c5df                                   ; $77ad: $c2 $df $c5

	ret  nc                                          ; $77b0: $d0

	add  [hl]                                        ; $77b1: $86
	nop                                              ; $77b2: $00
	add  d                                           ; $77b3: $82
	rst  $38                                         ; $77b4: $ff
	add  b                                           ; $77b5: $80
	ldh  [$86], a                                    ; $77b6: $e0 $86
	nop                                              ; $77b8: $00
	add  d                                           ; $77b9: $82
	db   $f4                                         ; $77ba: $f4
	add  b                                           ; $77bb: $80
	ret  nz                                          ; $77bc: $c0

	add  h                                           ; $77bd: $84
	nop                                              ; $77be: $00
	add  b                                           ; $77bf: $80
	ld   bc, $0280                                   ; $77c0: $01 $80 $02
	add  [hl]                                        ; $77c3: $86
	nop                                              ; $77c4: $00
	add  b                                           ; $77c5: $80
	dec  b                                           ; $77c6: $05
	add  b                                           ; $77c7: $80
	ld   a, [hl+]                                    ; $77c8: $2a
	ld   bc, $505f                                   ; $77c9: $01 $5f $50
	add  b                                           ; $77cc: $80
	or   b                                           ; $77cd: $b0
	nop                                              ; $77ce: $00
	rrca                                             ; $77cf: $0f
	add  c                                           ; $77d0: $81
	nop                                              ; $77d1: $00
	add  b                                           ; $77d2: $80
	ld   bc, $aa80                                   ; $77d3: $01 $80 $aa
	add  b                                           ; $77d6: $80
	ld   e, a                                        ; $77d7: $5f
	add  b                                           ; $77d8: $80
	cp   a                                           ; $77d9: $bf
	inc  b                                           ; $77da: $04
	rst  $30                                         ; $77db: $f7
	jr   jr_073_77de                                 ; $77dc: $18 $00

jr_073_77de:
	jr   z, @-$37                                    ; $77de: $28 $c7

	add  b                                           ; $77e0: $80
	nop                                              ; $77e1: $00
	nop                                              ; $77e2: $00
	inc  bc                                          ; $77e3: $03
	add  b                                           ; $77e4: $80
	ld   d, h                                        ; $77e5: $54
	ld   bc, $fbfa                                   ; $77e6: $01 $fa $fb
	add  b                                           ; $77e9: $80
	rst  $38                                         ; $77ea: $ff
	add  hl, bc                                      ; $77eb: $09
	ld   d, a                                        ; $77ec: $57
	rst  $38                                         ; $77ed: $ff
	ld   b, c                                        ; $77ee: $41
	cpl                                              ; $77ef: $2f
	ld   hl, $3b2f                                   ; $77f0: $21 $2f $3b
	cp   $70                                         ; $77f3: $fe $70
	add  b                                           ; $77f5: $80
	add  c                                           ; $77f6: $81
	nop                                              ; $77f7: $00
	add  b                                           ; $77f8: $80
	ret  nz                                          ; $77f9: $c0

	add  b                                           ; $77fa: $80
	ld   hl, sp-$7f                                  ; $77fb: $f8 $81
	rst  $38                                         ; $77fd: $ff
	ld   b, $7f                                      ; $77fe: $06 $7f
	rst  $38                                         ; $7800: $ff
	ld   a, a                                        ; $7801: $7f
	nop                                              ; $7802: $00
	ld   bc, $2c2e                                   ; $7803: $01 $2e $2c
	add  b                                           ; $7806: $80
	inc  hl                                          ; $7807: $23
	dec  b                                           ; $7808: $05
	inc  de                                          ; $7809: $13
	db   $10                                         ; $780a: $10
	rrca                                             ; $780b: $0f
	nop                                              ; $780c: $00
	adc  a                                           ; $780d: $8f
	add  b                                           ; $780e: $80
	add  b                                           ; $780f: $80
	ld   hl, sp+$05                                  ; $7810: $f8 $05
	rst  $38                                         ; $7812: $ff
	ld   a, a                                        ; $7813: $7f
	rrca                                             ; $7814: $0f
	add  b                                           ; $7815: $80
	ld   b, b                                        ; $7816: $40
	ld   b, e                                        ; $7817: $43
	add  b                                           ; $7818: $80
	ld   c, l                                        ; $7819: $4d
	rlca                                             ; $781a: $07
	adc  l                                           ; $781b: $8d
	ld   h, l                                        ; $781c: $65
	push hl                                          ; $781d: $e5
	pop  hl                                          ; $781e: $e1
	db   $ed                                         ; $781f: $ed
	ld   [bc], a                                     ; $7820: $02
	nop                                              ; $7821: $00
	rrca                                             ; $7822: $0f
	add  b                                           ; $7823: $80
	rlca                                             ; $7824: $07
	nop                                              ; $7825: $00
	rst  $38                                         ; $7826: $ff
	add  b                                           ; $7827: $80
	nop                                              ; $7828: $00
	nop                                              ; $7829: $00
	inc  sp                                          ; $782a: $33
	add  e                                           ; $782b: $83
	db   $dd                                         ; $782c: $dd
	inc  bc                                          ; $782d: $03
	ld   de, $22dd                                   ; $782e: $11 $dd $22
	nop                                              ; $7831: $00
	add  b                                           ; $7832: $80
	rst  $38                                         ; $7833: $ff
	add  b                                           ; $7834: $80
	ld   a, [$0180]                                  ; $7835: $fa $80 $01
	ld   [bc], a                                     ; $7838: $02
	inc  sp                                          ; $7839: $33
	rst  JumpTable                                         ; $783a: $df
	call c, $df81                                    ; $783b: $dc $81 $df
	ld   bc, $fb17                                   ; $783e: $01 $17 $fb
	add  b                                           ; $7841: $80
	inc  bc                                          ; $7842: $03
	add  b                                           ; $7843: $80
	rst  $38                                         ; $7844: $ff
	ld   d, e                                        ; $7845: $53
	ld   [bc], a                                     ; $7846: $02
	add  a                                           ; $7847: $87
	nop                                              ; $7848: $00
	inc  b                                           ; $7849: $04
	inc  c                                           ; $784a: $0c
	dec  c                                           ; $784b: $0d
	rrca                                             ; $784c: $0f
	ld   b, $07                                      ; $784d: $06 $07
	add  b                                           ; $784f: $80
	nop                                              ; $7850: $00
	nop                                              ; $7851: $00
	rrca                                             ; $7852: $0f
	add  l                                           ; $7853: $85
	nop                                              ; $7854: $00
	ld   [$5f20], sp                                 ; $7855: $08 $20 $5f
	db   $eb                                         ; $7858: $eb
	adc  e                                           ; $7859: $8b
	db   $fd                                         ; $785a: $fd
	push hl                                          ; $785b: $e5
	rst  $38                                         ; $785c: $ff
	ld   a, b                                        ; $785d: $78
	add  b                                           ; $785e: $80
	add  l                                           ; $785f: $85
	nop                                              ; $7860: $00
	ld   bc, $3fc0                                   ; $7861: $01 $c0 $3f
	add  b                                           ; $7864: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7865: $cf
	add  b                                           ; $7866: $80
	ld   [hl], c                                     ; $7867: $71
	add  b                                           ; $7868: $80
	cp   h                                           ; $7869: $bc
	nop                                              ; $786a: $00
	rst  $38                                         ; $786b: $ff
	add  [hl]                                        ; $786c: $86
	nop                                              ; $786d: $00
	add  c                                           ; $786e: $81
	rst  $38                                         ; $786f: $ff
	add  b                                           ; $7870: $80
	ld   a, a                                        ; $7871: $7f
	add  b                                           ; $7872: $80
	xor  e                                           ; $7873: $ab
	nop                                              ; $7874: $00
	rst  $38                                         ; $7875: $ff
	add  [hl]                                        ; $7876: $86
	nop                                              ; $7877: $00
	add  [hl]                                        ; $7878: $86
	rst  $38                                         ; $7879: $ff
	add  [hl]                                        ; $787a: $86
	nop                                              ; $787b: $00
	nop                                              ; $787c: $00
	rst  $38                                         ; $787d: $ff
	add  b                                           ; $787e: $80
	cp   $82                                         ; $787f: $fe $82
	db   $fc                                         ; $7881: $fc
	nop                                              ; $7882: $00
	rst  $38                                         ; $7883: $ff
	add  [hl]                                        ; $7884: $86
	nop                                              ; $7885: $00
	nop                                              ; $7886: $00
	rst  $38                                         ; $7887: $ff
	add  h                                           ; $7888: $84
	nop                                              ; $7889: $00
	nop                                              ; $788a: $00
	rst  $38                                         ; $788b: $ff
	add  l                                           ; $788c: $85
	nop                                              ; $788d: $00
	ld   bc, $f906                                   ; $788e: $01 $06 $f9
	add  h                                           ; $7891: $84
	nop                                              ; $7892: $00
	nop                                              ; $7893: $00
	rst  $38                                         ; $7894: $ff
	add  l                                           ; $7895: $85
	nop                                              ; $7896: $00
	ld   bc, $f708                                   ; $7897: $01 $08 $f7
	add  h                                           ; $789a: $84
	nop                                              ; $789b: $00
	nop                                              ; $789c: $00
	rst  $38                                         ; $789d: $ff
	add  [hl]                                        ; $789e: $86
	nop                                              ; $789f: $00
	nop                                              ; $78a0: $00
	rst  $38                                         ; $78a1: $ff
	add  h                                           ; $78a2: $84
	nop                                              ; $78a3: $00
	nop                                              ; $78a4: $00
	rst  $38                                         ; $78a5: $ff
	add  [hl]                                        ; $78a6: $86
	nop                                              ; $78a7: $00
	nop                                              ; $78a8: $00
	rst  $38                                         ; $78a9: $ff
	add  h                                           ; $78aa: $84
	nop                                              ; $78ab: $00
	nop                                              ; $78ac: $00
	rst  $38                                         ; $78ad: $ff
	add  l                                           ; $78ae: $85
	nop                                              ; $78af: $00
	ld   bc, $fb04                                   ; $78b0: $01 $04 $fb
	add  h                                           ; $78b3: $84
	nop                                              ; $78b4: $00
	nop                                              ; $78b5: $00
	rst  $38                                         ; $78b6: $ff
	add  l                                           ; $78b7: $85
	nop                                              ; $78b8: $00
	ld   bc, $e718                                   ; $78b9: $01 $18 $e7
	add  h                                           ; $78bc: $84
	nop                                              ; $78bd: $00
	nop                                              ; $78be: $00
	rst  $38                                         ; $78bf: $ff
	add  [hl]                                        ; $78c0: $86
	nop                                              ; $78c1: $00
	nop                                              ; $78c2: $00
	rst  $38                                         ; $78c3: $ff
	add  h                                           ; $78c4: $84
	nop                                              ; $78c5: $00
	nop                                              ; $78c6: $00
	rst  $38                                         ; $78c7: $ff
	add  [hl]                                        ; $78c8: $86
	nop                                              ; $78c9: $00
	nop                                              ; $78ca: $00
	rst  $38                                         ; $78cb: $ff
	add  h                                           ; $78cc: $84
	rrca                                             ; $78cd: $0f
	rlca                                             ; $78ce: $07
	rra                                              ; $78cf: $1f
	sub  b                                           ; $78d0: $90
	dec  bc                                          ; $78d1: $0b
	add  a                                           ; $78d2: $87
	add  e                                           ; $78d3: $83
	ret  nz                                          ; $78d4: $c0

	ld   [$86aa], a                                  ; $78d5: $ea $aa $86
	nop                                              ; $78d8: $00
	nop                                              ; $78d9: $00
	ldh  a, [$8d]                                    ; $78da: $f0 $8d
	nop                                              ; $78dc: $00
	nop                                              ; $78dd: $00
	ldh  a, [$80]                                    ; $78de: $f0 $80
	rra                                              ; $78e0: $1f
	add  b                                           ; $78e1: $80
	inc  bc                                          ; $78e2: $03
	adc  c                                           ; $78e3: $89
	nop                                              ; $78e4: $00
	dec  bc                                          ; $78e5: $0b
	rst  $10                                         ; $78e6: $d7
	rla                                              ; $78e7: $17
	ld   a, [$fccb]                                  ; $78e8: $fa $cb $fc
	ld   [hl], c                                     ; $78eb: $71
	ld   a, [hl]                                     ; $78ec: $7e
	ld   e, $1d                                      ; $78ed: $1e $1d
	ld   bc, $0e02                                   ; $78ef: $01 $02 $0e
	add  b                                           ; $78f2: $80
	inc  c                                           ; $78f3: $0c
	add  b                                           ; $78f4: $80
	dec  c                                           ; $78f5: $0d
	ld   bc, $1519                                   ; $78f6: $01 $19 $15
	add  b                                           ; $78f9: $80
	jp   z, $3109                                    ; $78fa: $ca $09 $31

	ld   [hl], c                                     ; $78fd: $71
	db   $ec                                         ; $78fe: $ec
	cp   h                                           ; $78ff: $bc
	ld   c, e                                        ; $7900: $4b
	ld   e, a                                        ; $7901: $5f
	xor  [hl]                                        ; $7902: $ae
	xor  e                                           ; $7903: $ab
	ld   bc, $8000                                   ; $7904: $01 $00 $80
	rst  $28                                         ; $7907: $ef
	add  b                                           ; $7908: $80
	ld   a, a                                        ; $7909: $7f
	add  b                                           ; $790a: $80
	xor  e                                           ; $790b: $ab
	add  b                                           ; $790c: $80
	ld   d, l                                        ; $790d: $55
	add  b                                           ; $790e: $80
	xor  d                                           ; $790f: $aa
	add  b                                           ; $7910: $80
	nop                                              ; $7911: $00
	add  b                                           ; $7912: $80
	add  b                                           ; $7913: $80
	add  d                                           ; $7914: $82
	nop                                              ; $7915: $00
	dec  b                                           ; $7916: $05
	db   $fc                                         ; $7917: $fc
	rst  $38                                         ; $7918: $ff
	db   $fd                                         ; $7919: $fd
	rst  $38                                         ; $791a: $ff
	ld   d, [hl]                                     ; $791b: $56
	ld   d, a                                        ; $791c: $57
	add  b                                           ; $791d: $80
	xor  d                                           ; $791e: $aa
	add  [hl]                                        ; $791f: $86
	nop                                              ; $7920: $00
	rlca                                             ; $7921: $07
	rra                                              ; $7922: $1f
	sbc  a                                           ; $7923: $9f
	rlca                                             ; $7924: $07
	add  a                                           ; $7925: $87
	add  b                                           ; $7926: $80
	ret  nz                                          ; $7927: $c0

	ld   [$86aa], a                                  ; $7928: $ea $aa $86
	nop                                              ; $792b: $00
	add  d                                           ; $792c: $82
	rst  $38                                         ; $792d: $ff
	add  b                                           ; $792e: $80
	nop                                              ; $792f: $00
	add  b                                           ; $7930: $80
	xor  d                                           ; $7931: $aa
	add  b                                           ; $7932: $80
	ld   bc, $0080                                   ; $7933: $01 $80 $00
	add  b                                           ; $7936: $80
	ld   bc, $0080                                   ; $7937: $01 $80 $00
	add  d                                           ; $793a: $82
	rst  $38                                         ; $793b: $ff
	add  b                                           ; $793c: $80
	nop                                              ; $793d: $00
	add  b                                           ; $793e: $80
	and  d                                           ; $793f: $a2
	add  b                                           ; $7940: $80
	ld   d, l                                        ; $7941: $55
	add  b                                           ; $7942: $80
	and  d                                           ; $7943: $a2
	add  b                                           ; $7944: $80
	rst  $20                                         ; $7945: $e7
	add  b                                           ; $7946: $80
	nop                                              ; $7947: $00
	add  d                                           ; $7948: $82
	rst  $38                                         ; $7949: $ff
	add  b                                           ; $794a: $80
	nop                                              ; $794b: $00
	add  b                                           ; $794c: $80
	xor  d                                           ; $794d: $aa
	add  b                                           ; $794e: $80
	ld   d, a                                        ; $794f: $57
	add  b                                           ; $7950: $80
	xor  d                                           ; $7951: $aa
	add  b                                           ; $7952: $80
	ld   a, d                                        ; $7953: $7a
	add  b                                           ; $7954: $80
	nop                                              ; $7955: $00
	add  d                                           ; $7956: $82
	rst  $38                                         ; $7957: $ff
	add  b                                           ; $7958: $80
	nop                                              ; $7959: $00
	add  b                                           ; $795a: $80
	xor  d                                           ; $795b: $aa
	add  b                                           ; $795c: $80
	ld   d, l                                        ; $795d: $55
	add  b                                           ; $795e: $80
	xor  d                                           ; $795f: $aa
	add  b                                           ; $7960: $80
	sbc  $80                                         ; $7961: $de $80
	nop                                              ; $7963: $00
	add  d                                           ; $7964: $82
	rst  $38                                         ; $7965: $ff
	add  b                                           ; $7966: $80
	nop                                              ; $7967: $00
	add  b                                           ; $7968: $80
	xor  d                                           ; $7969: $aa
	add  b                                           ; $796a: $80
	ld   d, b                                        ; $796b: $50
	add  b                                           ; $796c: $80
	xor  c                                           ; $796d: $a9
	add  b                                           ; $796e: $80

jr_073_796f:
	ldh  a, [c]                                      ; $796f: $f2
	add  b                                           ; $7970: $80
	nop                                              ; $7971: $00
	add  d                                           ; $7972: $82
	rst  $38                                         ; $7973: $ff
	add  b                                           ; $7974: $80
	nop                                              ; $7975: $00
	add  b                                           ; $7976: $80
	xor  d                                           ; $7977: $aa
	add  b                                           ; $7978: $80
	push de                                          ; $7979: $d5
	add  b                                           ; $797a: $80
	xor  d                                           ; $797b: $aa
	add  b                                           ; $797c: $80
	cp   l                                           ; $797d: $bd
	add  b                                           ; $797e: $80
	nop                                              ; $797f: $00
	add  b                                           ; $7980: $80
	cp   $80                                         ; $7981: $fe $80
	ld   hl, sp-$80                                  ; $7983: $f8 $80
	ld   bc, $aa80                                   ; $7985: $01 $80 $aa
	add  b                                           ; $7988: $80
	ld   d, h                                        ; $7989: $54
	add  b                                           ; $798a: $80
	xor  c                                           ; $798b: $a9
	add  b                                           ; $798c: $80
	and  $80                                         ; $798d: $e6 $80
	daa                                              ; $798f: $27
	rlca                                             ; $7990: $07
	rrca                                             ; $7991: $0f
	ld   a, a                                        ; $7992: $7f
	cpl                                              ; $7993: $2f
	ld   a, a                                        ; $7994: $7f
	ld   d, l                                        ; $7995: $55
	push af                                          ; $7996: $f5
	ld   a, [hl+]                                    ; $7997: $2a
	xor  d                                           ; $7998: $aa
	add  b                                           ; $7999: $80
	push de                                          ; $799a: $d5
	add  b                                           ; $799b: $80
	ld   l, d                                        ; $799c: $6a
	add  b                                           ; $799d: $80
	ld   b, b                                        ; $799e: $40
	add  b                                           ; $799f: $80
	ld   a, e                                        ; $79a0: $7b
	add  b                                           ; $79a1: $80
	db   $fd                                         ; $79a2: $fd
	add  b                                           ; $79a3: $80
	xor  d                                           ; $79a4: $aa
	add  b                                           ; $79a5: $80
	ld   d, l                                        ; $79a6: $55
	add  b                                           ; $79a7: $80
	xor  d                                           ; $79a8: $aa
	add  b                                           ; $79a9: $80
	ld   d, l                                        ; $79aa: $55
	add  b                                           ; $79ab: $80
	xor  d                                           ; $79ac: $aa
	add  b                                           ; $79ad: $80
	ld   bc, $da80                                   ; $79ae: $01 $80 $da
	nop                                              ; $79b1: $00

jr_073_79b2:
	ldh  a, [$81]                                    ; $79b2: $f0 $81
	nop                                              ; $79b4: $00
	inc  c                                           ; $79b5: $0c
	ld   [$000f], sp                                 ; $79b6: $08 $0f $00
	rlca                                             ; $79b9: $07
	ld   [$000f], sp                                 ; $79ba: $08 $0f $00
	rlca                                             ; $79bd: $07
	ld   [$000f], sp                                 ; $79be: $08 $0f $00
	rlca                                             ; $79c1: $07
	ldh  a, [$81]                                    ; $79c2: $f0 $81
	nop                                              ; $79c4: $00
	inc  c                                           ; $79c5: $0c
	ld   [hl], b                                     ; $79c6: $70
	adc  b                                           ; $79c7: $88
	nop                                              ; $79c8: $00
	ld   hl, sp+$70                                  ; $79c9: $f8 $70
	adc  b                                           ; $79cb: $88
	nop                                              ; $79cc: $00
	ld   hl, sp+$70                                  ; $79cd: $f8 $70
	adc  b                                           ; $79cf: $88
	nop                                              ; $79d0: $00
	ld   hl, sp+$01                                  ; $79d1: $f8 $01
	add  e                                           ; $79d3: $83
	dec  c                                           ; $79d4: $0d
	add  b                                           ; $79d5: $80
	inc  c                                           ; $79d6: $0c
	add  [hl]                                        ; $79d7: $86
	dec  c                                           ; $79d8: $0d
	ld   bc, $efe3                                   ; $79d9: $01 $e3 $ef
	add  d                                           ; $79dc: $82
	xor  $80                                         ; $79dd: $ee $80
	ld   [bc], a                                     ; $79df: $02
	add  b                                           ; $79e0: $80
	xor  $82                                         ; $79e1: $ee $82
	db   $ed                                         ; $79e3: $ed
	add  b                                           ; $79e4: $80
	db   $ec                                         ; $79e5: $ec
	adc  b                                           ; $79e6: $88
	nop                                              ; $79e7: $00
	add  b                                           ; $79e8: $80
	add  b                                           ; $79e9: $80
	adc  h                                           ; $79ea: $8c
	nop                                              ; $79eb: $00
	add  b                                           ; $79ec: $80
	jr   c, jr_073_796f                              ; $79ed: $38 $80

	ld   [hl], b                                     ; $79ef: $70
	add  b                                           ; $79f0: $80
	ldh  [$88], a                                    ; $79f1: $e0 $88
	nop                                              ; $79f3: $00
	add  b                                           ; $79f4: $80
	inc  e                                           ; $79f5: $1c
	add  b                                           ; $79f6: $80
	add  hl, sp                                      ; $79f7: $39
	add  b                                           ; $79f8: $80
	ld   [hl], e                                     ; $79f9: $73
	add  b                                           ; $79fa: $80
	ret  nz                                          ; $79fb: $c0

	add  b                                           ; $79fc: $80
	ld   h, a                                        ; $79fd: $67
	add  d                                           ; $79fe: $82
	nop                                              ; $79ff: $00
	add  b                                           ; $7a00: $80
	ld   bc, $8184                                   ; $7a01: $01 $84 $81
	add  b                                           ; $7a04: $80
	nop                                              ; $7a05: $00
	add  b                                           ; $7a06: $80
	rst  $38                                         ; $7a07: $ff
	add  d                                           ; $7a08: $82
	nop                                              ; $7a09: $00
	add  h                                           ; $7a0a: $84
	rst  $28                                         ; $7a0b: $ef
	inc  bc                                          ; $7a0c: $03
	db   $ec                                         ; $7a0d: $ec
	rst  $28                                         ; $7a0e: $ef
	inc  bc                                          ; $7a0f: $03
	nop                                              ; $7a10: $00
	add  b                                           ; $7a11: $80
	rst  $38                                         ; $7a12: $ff
	add  b                                           ; $7a13: $80
	nop                                              ; $7a14: $00
	add  b                                           ; $7a15: $80
	ld   [bc], a                                     ; $7a16: $02
	add  b                                           ; $7a17: $80
	ld   a, d                                        ; $7a18: $7a
	add  b                                           ; $7a19: $80
	ld   a, [hl]                                     ; $7a1a: $7e
	dec  b                                           ; $7a1b: $05
	ld   [hl], h                                     ; $7a1c: $74
	ld   a, [hl]                                     ; $7a1d: $7e
	adc  [hl]                                        ; $7a1e: $8e
	cp   $7a                                         ; $7a1f: $fe $7a
	nop                                              ; $7a21: $00
	add  b                                           ; $7a22: $80
	rst  $38                                         ; $7a23: $ff
	add  b                                           ; $7a24: $80
	nop                                              ; $7a25: $00
	add  b                                           ; $7a26: $80
	pop  hl                                          ; $7a27: $e1
	add  b                                           ; $7a28: $80
	call c, $ae03                                    ; $7a29: $dc $03 $ae
	cp   [hl]                                        ; $7a2c: $be
	xor  [hl]                                        ; $7a2d: $ae
	cp   [hl]                                        ; $7a2e: $be
	add  b                                           ; $7a2f: $80
	jr   jr_073_79b2                                 ; $7a30: $18 $80

	nop                                              ; $7a32: $00
	add  b                                           ; $7a33: $80
	rst  $38                                         ; $7a34: $ff
	add  b                                           ; $7a35: $80
	nop                                              ; $7a36: $00
	nop                                              ; $7a37: $00
	ld   sp, hl                                      ; $7a38: $f9
	add  c                                           ; $7a39: $81
	ei                                               ; $7a3a: $fb
	inc  bc                                          ; $7a3b: $03
	ld   a, c                                        ; $7a3c: $79
	ld   a, e                                        ; $7a3d: $7b
	ld   h, e                                        ; $7a3e: $63
	ld   a, e                                        ; $7a3f: $7b
	add  b                                           ; $7a40: $80
	dec  sp                                          ; $7a41: $3b
	ld   bc, $0018                                   ; $7a42: $01 $18 $00
	add  b                                           ; $7a45: $80
	ld   sp, hl                                      ; $7a46: $f9
	add  b                                           ; $7a47: $80
	nop                                              ; $7a48: $00
	add  b                                           ; $7a49: $80
	rst  $38                                         ; $7a4a: $ff
	inc  b                                           ; $7a4b: $04
	ld   a, a                                        ; $7a4c: $7f
	rst  $38                                         ; $7a4d: $ff
	ldh  [rIE], a                                    ; $7a4e: $e0 $ff
	ld   [hl], b                                     ; $7a50: $70
	add  c                                           ; $7a51: $81
	ld   a, a                                        ; $7a52: $7f
	ld   bc, $c753                                   ; $7a53: $01 $53 $c7
	add  b                                           ; $7a56: $80
	and  a                                           ; $7a57: $a7
	inc  c                                           ; $7a58: $0c
	ld   h, l                                        ; $7a59: $65
	ld   h, c                                        ; $7a5a: $61
	call z, $f1dc                                    ; $7a5b: $cc $dc $f1
	pop  hl                                          ; $7a5e: $e1
	ld   c, h                                        ; $7a5f: $4c
	ld   e, h                                        ; $7a60: $5c
	ld   [hl], c                                     ; $7a61: $71
	ld   h, c                                        ; $7a62: $61
	ld   c, h                                        ; $7a63: $4c
	ld   e, h                                        ; $7a64: $5c
	ld   l, e                                        ; $7a65: $6b
	add  e                                           ; $7a66: $83
	ld   a, e                                        ; $7a67: $7b
	add  b                                           ; $7a68: $80
	ld   b, b                                        ; $7a69: $40
	nop                                              ; $7a6a: $00
	dec  sp                                          ; $7a6b: $3b
	add  d                                           ; $7a6c: $82
	ld   a, e                                        ; $7a6d: $7b
	add  c                                           ; $7a6e: $81
	ei                                               ; $7a6f: $fb
	nop                                              ; $7a70: $00
	ld   a, [de]                                     ; $7a71: $1a
	add  e                                           ; $7a72: $83
	jp   c, $0280                                    ; $7a73: $da $80 $02

	add  [hl]                                        ; $7a76: $86
	jp   c, $f806                                    ; $7a77: $da $06 $f8

	rrca                                             ; $7a7a: $0f
	nop                                              ; $7a7b: $00
	rlca                                             ; $7a7c: $07
	ld   [$070f], sp                                 ; $7a7d: $08 $0f $07
	add  d                                           ; $7a80: $82
	rrca                                             ; $7a81: $0f
	add  e                                           ; $7a82: $83
	nop                                              ; $7a83: $00
	rlca                                             ; $7a84: $07
	add  b                                           ; $7a85: $80
	adc  b                                           ; $7a86: $88
	nop                                              ; $7a87: $00
	ld   hl, sp+$70                                  ; $7a88: $f8 $70
	adc  b                                           ; $7a8a: $88
	db   $e4                                         ; $7a8b: $e4
	db   $e3                                         ; $7a8c: $e3
	add  b                                           ; $7a8d: $80
	rst  ToBoot                                         ; $7a8e: $c7
	nop                                              ; $7a8f: $00
	rst  $38                                         ; $7a90: $ff
	add  h                                           ; $7a91: $84
	nop                                              ; $7a92: $00
	nop                                              ; $7a93: $00
	inc  c                                           ; $7a94: $0c
	add  d                                           ; $7a95: $82
	dec  c                                           ; $7a96: $0d
	ld   b, $61                                      ; $7a97: $06 $61
	pop  af                                          ; $7a99: $f1
	adc  [hl]                                        ; $7a9a: $8e
	rst  $38                                         ; $7a9b: $ff
	ldh  [c], a                                      ; $7a9c: $e2
	rrca                                             ; $7a9d: $0f
	ld   [bc], a                                     ; $7a9e: $02
	add  c                                           ; $7a9f: $81
	rrca                                             ; $7aa0: $0f
	ld   bc, $0409                                   ; $7aa1: $01 $09 $04
	add  b                                           ; $7aa4: $80
	rst  $28                                         ; $7aa5: $ef
	ld   [$efee], sp                                 ; $7aa6: $08 $ee $ef
	pop  de                                          ; $7aa9: $d1
	rst  $38                                         ; $7aaa: $ff
	ccf                                              ; $7aab: $3f
	rst  $38                                         ; $7aac: $ff
	db   $10                                         ; $7aad: $10
	rst  $38                                         ; $7aae: $ff
	db   $10                                         ; $7aaf: $10
	add  c                                           ; $7ab0: $81
	rst  $38                                         ; $7ab1: $ff
	ld   bc, $00ef                                   ; $7ab2: $01 $ef $00
	add  b                                           ; $7ab5: $80
	rst  ToBoot                                         ; $7ab6: $c7
	ld   [bc], a                                     ; $7ab7: $02
	or   a                                           ; $7ab8: $b7
	rst  $30                                         ; $7ab9: $f7
	db   $f4                                         ; $7aba: $f4
	add  c                                           ; $7abb: $81
	rst  $30                                         ; $7abc: $f7
	ld   [bc], a                                     ; $7abd: $02
	or   b                                           ; $7abe: $b0
	di                                               ; $7abf: $f3
	or   b                                           ; $7ac0: $b0
	add  c                                           ; $7ac1: $81
	rst  $30                                         ; $7ac2: $f7
	ld   bc, $0047                                   ; $7ac3: $01 $47 $00
	add  b                                           ; $7ac6: $80
	sbc  $80                                         ; $7ac7: $de $80
	rst  $38                                         ; $7ac9: $ff
	nop                                              ; $7aca: $00
	ld   hl, $ff81                                   ; $7acb: $21 $81 $ff
	rlca                                             ; $7ace: $07
	ld   hl, $20ff                                   ; $7acf: $21 $ff $20
	rst  $38                                         ; $7ad2: $ff
	pop  bc                                          ; $7ad3: $c1
	pop  hl                                          ; $7ad4: $e1
	rst  $38                                         ; $7ad5: $ff
	nop                                              ; $7ad6: $00
	add  b                                           ; $7ad7: $80
	rst  $30                                         ; $7ad8: $f7
	add  b                                           ; $7ad9: $80
	rst  $38                                         ; $7ada: $ff
	nop                                              ; $7adb: $00
	ld   [$ff81], sp                                 ; $7adc: $08 $81 $ff
	inc  bc                                          ; $7adf: $03
	ld   [$37ff], sp                                 ; $7ae0: $08 $ff $37
	ret  z                                           ; $7ae3: $c8

	add  b                                           ; $7ae4: $80
	ld   [$ff01], sp                                 ; $7ae5: $08 $01 $ff
	nop                                              ; $7ae8: $00
	add  b                                           ; $7ae9: $80
	ld   bc, $bd80                                   ; $7aea: $01 $80 $bd
	nop                                              ; $7aed: $00
	ld   b, d                                        ; $7aee: $42
	add  c                                           ; $7aef: $81
	rst  $38                                         ; $7af0: $ff
	dec  bc                                          ; $7af1: $0b
	ld   b, e                                        ; $7af2: $43
	rst  $38                                         ; $7af3: $ff

jr_073_7af4:
	cp   h                                           ; $7af4: $bc
	ld   b, d                                        ; $7af5: $42
	ld   c, d                                        ; $7af6: $4a
	ld   b, d                                        ; $7af7: $42
	ldh  a, [rTAC]                                   ; $7af8: $f0 $07
	ret  nc                                          ; $7afa: $d0

	rst  $38                                         ; $7afb: $ff
	ccf                                              ; $7afc: $3f
	rst  $38                                         ; $7afd: $ff
	add  b                                           ; $7afe: $80
	db   $fc                                         ; $7aff: $fc
	ld   bc, $9080                                   ; $7b00: $01 $80 $90
	add  b                                           ; $7b03: $80
	rst  $38                                         ; $7b04: $ff
	add  d                                           ; $7b05: $82
	db   $10                                         ; $7b06: $10
	ld   b, $03                                      ; $7b07: $06 $03
	cp   $86                                         ; $7b09: $fe $86
	cp   $f8                                         ; $7b0b: $fe $f8
	db   $fc                                         ; $7b0d: $fc
	inc  b                                           ; $7b0e: $04
	add  c                                           ; $7b0f: $81
	add  h                                           ; $7b10: $84
	add  b                                           ; $7b11: $80
	db   $fc                                         ; $7b12: $fc
	add  c                                           ; $7b13: $81
	add  h                                           ; $7b14: $84
	nop                                              ; $7b15: $00
	add  l                                           ; $7b16: $85
	add  c                                           ; $7b17: $81
	rst  $38                                         ; $7b18: $ff
	add  d                                           ; $7b19: $82
	nop                                              ; $7b1a: $00
	ld   bc, $413e                                   ; $7b1b: $01 $3e $41
	add  b                                           ; $7b1e: $80
	add  b                                           ; $7b1f: $80
	add  b                                           ; $7b20: $80
	rst  $38                                         ; $7b21: $ff
	nop                                              ; $7b22: $00
	add  b                                           ; $7b23: $80
	add  e                                           ; $7b24: $83
	rst  $38                                         ; $7b25: $ff
	add  b                                           ; $7b26: $80
	nop                                              ; $7b27: $00
	add  c                                           ; $7b28: $81
	jr   c, jr_073_7b2b                              ; $7b29: $38 $00

jr_073_7b2b:
	rst  ToBoot                                         ; $7b2b: $c7
	add  b                                           ; $7b2c: $80
	add  e                                           ; $7b2d: $83
	add  b                                           ; $7b2e: $80
	rst  $38                                         ; $7b2f: $ff
	ld   [bc], a                                     ; $7b30: $02
	add  e                                           ; $7b31: $83
	ld   a, h                                        ; $7b32: $7c
	rst  $38                                         ; $7b33: $ff
	add  c                                           ; $7b34: $81
	ld   a, a                                        ; $7b35: $7f
	add  c                                           ; $7b36: $81
	nop                                              ; $7b37: $00
	nop                                              ; $7b38: $00
	dec  sp                                          ; $7b39: $3b
	add  b                                           ; $7b3a: $80
	ld   [$4c83], sp                                 ; $7b3b: $08 $83 $4c
	ld   bc, $7f77                                   ; $7b3e: $01 $77 $7f
	add  c                                           ; $7b41: $81
	rst  $38                                         ; $7b42: $ff
	add  c                                           ; $7b43: $81
	nop                                              ; $7b44: $00
	nop                                              ; $7b45: $00
	cp   e                                           ; $7b46: $bb
	add  b                                           ; $7b47: $80
	adc  b                                           ; $7b48: $88
	add  e                                           ; $7b49: $83
	call z, Call_073_7700                            ; $7b4a: $cc $00 $77
	add  b                                           ; $7b4d: $80
	rst  $38                                         ; $7b4e: $ff
	ld   [bc], a                                     ; $7b4f: $02
	ldh  a, [rIE]                                    ; $7b50: $f0 $ff
	ld   c, a                                        ; $7b52: $4f
	add  b                                           ; $7b53: $80
	ld   e, a                                        ; $7b54: $5f
	nop                                              ; $7b55: $00
	call nz, $ff81                                   ; $7b56: $c4 $81 $ff
	rlca                                             ; $7b59: $07
	add  h                                           ; $7b5a: $84
	cp   a                                           ; $7b5b: $bf
	add  h                                           ; $7b5c: $84
	cp   a                                           ; $7b5d: $bf
	ccf                                              ; $7b5e: $3f
	cp   a                                           ; $7b5f: $bf
	ld   sp, hl                                      ; $7b60: $f9
	ld   [bc], a                                     ; $7b61: $02
	add  d                                           ; $7b62: $82
	jp   c, $fa80                                    ; $7b63: $da $80 $fa

	dec  b                                           ; $7b66: $05
	ld   a, [hl-]                                    ; $7b67: $3a
	ld   a, [$fa3a]                                  ; $7b68: $fa $3a $fa
	ld   [hl+], a                                    ; $7b6b: $22
	ld   a, [$fe80]                                  ; $7b6c: $fa $80 $fe
	nop                                              ; $7b6f: $00
	jr   z, jr_073_7af4                              ; $7b70: $28 $82

	nop                                              ; $7b72: $00
	inc  bc                                          ; $7b73: $03
	ld   bc, $0907                                   ; $7b74: $01 $07 $09
	dec  bc                                          ; $7b77: $0b
	add  c                                           ; $7b78: $81
	add  hl, bc                                      ; $7b79: $09
	inc  b                                           ; $7b7a: $04
	rrca                                             ; $7b7b: $0f
	inc  bc                                          ; $7b7c: $03
	rlca                                             ; $7b7d: $07
	add  hl, bc                                      ; $7b7e: $09
	rst  $38                                         ; $7b7f: $ff
	add  a                                           ; $7b80: $87
	nop                                              ; $7b81: $00
	ld   b, $70                                      ; $7b82: $06 $70
	ld   a, a                                        ; $7b84: $7f
	rrca                                             ; $7b85: $0f
	nop                                              ; $7b86: $00
	ld   [hl], b                                     ; $7b87: $70
	ld   a, a                                        ; $7b88: $7f
	dec  c                                           ; $7b89: $0d
	add  c                                           ; $7b8a: $81
	rrca                                             ; $7b8b: $0f
	ld   [bc], a                                     ; $7b8c: $02
	ld   c, $0f                                      ; $7b8d: $0e $0f
	ld   c, $85                                      ; $7b8f: $0e $85
	rrca                                             ; $7b91: $0f
	ld   [bc], a                                     ; $7b92: $02
	dec  c                                           ; $7b93: $0d
	rrca                                             ; $7b94: $0f
	rra                                              ; $7b95: $1f
	add  c                                           ; $7b96: $81
	rst  $38                                         ; $7b97: $ff
	inc  bc                                          ; $7b98: $03
	db   $10                                         ; $7b99: $10
	rst  $38                                         ; $7b9a: $ff
	db   $10                                         ; $7b9b: $10
	rst  $38                                         ; $7b9c: $ff
	add  b                                           ; $7b9d: $80
	ld   hl, sp+$01                                  ; $7b9e: $f8 $01
	ldh  [$f0], a                                    ; $7ba0: $e0 $f0
	add  b                                           ; $7ba2: $80
	sub  b                                           ; $7ba3: $90
	add  b                                           ; $7ba4: $80
	rst  $38                                         ; $7ba5: $ff
	ld   bc, $f64e                                   ; $7ba6: $01 $4e $f6
	add  b                                           ; $7ba9: $80
	db   $f4                                         ; $7baa: $f4
	ld   [bc], a                                     ; $7bab: $02
	or   e                                           ; $7bac: $b3
	rst  $30                                         ; $7bad: $f7
	ld   [hl], b                                     ; $7bae: $70
	add  c                                           ; $7baf: $81
	or   h                                           ; $7bb0: $b4
	add  d                                           ; $7bb1: $82
	or   l                                           ; $7bb2: $b5
	ld   [bc], a                                     ; $7bb3: $02
	pop  af                                          ; $7bb4: $f1
	rst  $30                                         ; $7bb5: $f7
	rra                                              ; $7bb6: $1f
	add  c                                           ; $7bb7: $81
	ld   hl, $ff01                                   ; $7bb8: $21 $01 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7bbb: $cf
	add  b                                           ; $7bbc: $80
	ld   bc, $f908                                   ; $7bbd: $01 $08 $f9
	push af                                          ; $7bc0: $f5
	or   e                                           ; $7bc1: $b3
	pop  af                                          ; $7bc2: $f1
	ld   e, c                                        ; $7bc3: $59
	add  hl, sp                                      ; $7bc4: $39
	jr   c, jr_073_7c00                              ; $7bc5: $38 $39

	rla                                              ; $7bc7: $17
	add  c                                           ; $7bc8: $81
	ld   [$ff01], sp                                 ; $7bc9: $08 $01 $ff
	db   $fc                                         ; $7bcc: $fc
	add  b                                           ; $7bcd: $80
	ld   [$0f80], sp                                 ; $7bce: $08 $80 $0f
	ld   [bc], a                                     ; $7bd1: $02
	dec  de                                          ; $7bd2: $1b
	rra                                              ; $7bd3: $1f
	dec  d                                           ; $7bd4: $15
	add  b                                           ; $7bd5: $80
	inc  de                                          ; $7bd6: $13
	ld   bc, $b3f3                                   ; $7bd7: $01 $f3 $b3
	add  c                                           ; $7bda: $81
	ld   b, d                                        ; $7bdb: $42
	ld   bc, $dfef                                   ; $7bdc: $01 $ef $df
	add  b                                           ; $7bdf: $80
	ld   b, d                                        ; $7be0: $42
	ld   bc, $62a2                                   ; $7be1: $01 $a2 $62
	add  b                                           ; $7be4: $80
	ld   [bc], a                                     ; $7be5: $02
	add  b                                           ; $7be6: $80
	add  d                                           ; $7be7: $82
	ld   [bc], a                                     ; $7be8: $02
	add  b                                           ; $7be9: $80
	sbc  a                                           ; $7bea: $9f
	rst  $28                                         ; $7beb: $ef
	add  c                                           ; $7bec: $81
	db   $10                                         ; $7bed: $10
	add  b                                           ; $7bee: $80
	rst  $38                                         ; $7bef: $ff
	add  [hl]                                        ; $7bf0: $86
	db   $10                                         ; $7bf1: $10
	ld   [$ff00], sp                                 ; $7bf2: $08 $00 $ff
	ld   [hl], b                                     ; $7bf5: $70
	add  d                                           ; $7bf6: $82
	adc  d                                           ; $7bf7: $8a
	add  b                                           ; $7bf8: $80
	ei                                               ; $7bf9: $fb
	rst  $38                                         ; $7bfa: $ff
	add  a                                           ; $7bfb: $87
	add  l                                           ; $7bfc: $85
	add  h                                           ; $7bfd: $84
	ld   [bc], a                                     ; $7bfe: $02
	ld   sp, hl                                      ; $7bff: $f9

jr_073_7c00:
	cp   $f8                                         ; $7c00: $fe $f8
	add  c                                           ; $7c02: $81
	nop                                              ; $7c03: $00
	add  d                                           ; $7c04: $82
	rst  $38                                         ; $7c05: $ff
	nop                                              ; $7c06: $00
	sbc  $81                                         ; $7c07: $de $81
	ld   hl, $a103                                   ; $7c09: $21 $03 $a1
	ld   hl, $3f40                                   ; $7c0c: $21 $40 $3f
	add  d                                           ; $7c0f: $82
	nop                                              ; $7c10: $00
	add  d                                           ; $7c11: $82
	rst  $38                                         ; $7c12: $ff
	nop                                              ; $7c13: $00
	rst  $30                                         ; $7c14: $f7
	add  e                                           ; $7c15: $83
	ld   [$7e02], sp                                 ; $7c16: $08 $02 $7e
	rst  $38                                         ; $7c19: $ff
	ld   a, [hl]                                     ; $7c1a: $7e
	add  b                                           ; $7c1b: $80
	add  b                                           ; $7c1c: $80
	nop                                              ; $7c1d: $00
	nop                                              ; $7c1e: $00
	add  b                                           ; $7c1f: $80
	ld   a, a                                        ; $7c20: $7f
	add  b                                           ; $7c21: $80
	rst  $38                                         ; $7c22: $ff
	nop                                              ; $7c23: $00
	cp   l                                           ; $7c24: $bd
	add  d                                           ; $7c25: $82
	ld   b, d                                        ; $7c26: $42
	inc  bc                                          ; $7c27: $03
	ld   [bc], a                                     ; $7c28: $02
	xor  a                                           ; $7c29: $af
	rra                                              ; $7c2a: $1f
	rrca                                             ; $7c2b: $0f
	add  c                                           ; $7c2c: $81
	nop                                              ; $7c2d: $00
	add  d                                           ; $7c2e: $82
	rst  $38                                         ; $7c2f: $ff
	nop                                              ; $7c30: $00
	rst  $28                                         ; $7c31: $ef
	add  e                                           ; $7c32: $83
	db   $10                                         ; $7c33: $10
	ld   [$ffe0], sp                                 ; $7c34: $08 $e0 $ff
	db   $eb                                         ; $7c37: $eb
	ld   b, h                                        ; $7c38: $44
	ld   d, h                                        ; $7c39: $54
	inc  b                                           ; $7c3a: $04
	rst  JumpTable                                         ; $7c3b: $df
	rst  $38                                         ; $7c3c: $ff
	ld   b, h                                        ; $7c3d: $44
	add  b                                           ; $7c3e: $80
	add  h                                           ; $7c3f: $84
	add  b                                           ; $7c40: $80
	add  a                                           ; $7c41: $87
	dec  bc                                          ; $7c42: $0b
	add  l                                           ; $7c43: $85
	add  c                                           ; $7c44: $81
	adc  c                                           ; $7c45: $89
	rrca                                             ; $7c46: $0f
	rst  $38                                         ; $7c47: $ff

jr_073_7c48:
	jr   nz, jr_073_7c48                             ; $7c48: $20 $fe

	inc  a                                           ; $7c4a: $3c
	ld   a, $e6                                      ; $7c4b: $3e $e6
	cp   $1e                                         ; $7c4d: $fe $1e
	add  b                                           ; $7c4f: $80
	ld   h, $07                                      ; $7c50: $26 $07
	ld   h, [hl]                                     ; $7c52: $66
	ld   b, $fe                                      ; $7c53: $06 $fe
	add  $42                                         ; $7c55: $c6 $42
	ld   b, [hl]                                     ; $7c57: $46
	ld   b, d                                        ; $7c58: $42
	inc  [hl]                                        ; $7c59: $34
	adc  b                                           ; $7c5a: $88
	add  hl, bc                                      ; $7c5b: $09
	ld   bc, $0e08                                   ; $7c5c: $01 $08 $0e
	add  b                                           ; $7c5f: $80
	ld   [$0302], sp                                 ; $7c60: $08 $02 $03
	db   $ec                                         ; $7c63: $ec
	rra                                              ; $7c64: $1f
	add  b                                           ; $7c65: $80
	nop                                              ; $7c66: $00
	inc  bc                                          ; $7c67: $03
	ld   [hl], b                                     ; $7c68: $70
	ld   a, a                                        ; $7c69: $7f
	jr   nc, jr_073_7cab                             ; $7c6a: $30 $3f

	add  c                                           ; $7c6c: $81
	nop                                              ; $7c6d: $00
	add  b                                           ; $7c6e: $80
	inc  bc                                          ; $7c6f: $03
	inc  bc                                          ; $7c70: $03
	ccf                                              ; $7c71: $3f
	dec  a                                           ; $7c72: $3d
	db   $fd                                         ; $7c73: $fd
	cp   $85                                         ; $7c74: $fe $85
	ld   c, $08                                      ; $7c76: $0e $08
	inc  de                                          ; $7c78: $13
	inc  hl                                          ; $7c79: $23
	ld   [bc], a                                     ; $7c7a: $02
	jp   nz, $0e32                                   ; $7c7b: $c2 $32 $0e

	jp   nz, $e00e                                   ; $7c7e: $c2 $0e $e0

	add  h                                           ; $7c81: $84
	db   $10                                         ; $7c82: $10
	inc  b                                           ; $7c83: $04
	rla                                              ; $7c84: $17
	rst  $20                                         ; $7c85: $e7
	rst  $38                                         ; $7c86: $ff
	ld   [$8018], sp                                 ; $7c87: $08 $18 $80
	ld   a, [de]                                     ; $7c8a: $1a
	inc  bc                                          ; $7c8b: $03
	rrca                                             ; $7c8c: $0f
	rra                                              ; $7c8d: $1f
	sub  b                                           ; $7c8e: $90
	or   a                                           ; $7c8f: $b7
	add  b                                           ; $7c90: $80
	add  a                                           ; $7c91: $87
	inc  bc                                          ; $7c92: $03
	scf                                              ; $7c93: $37
	pop  af                                          ; $7c94: $f1
	pop  hl                                          ; $7c95: $e1
	ldh  [$80], a                                    ; $7c96: $e0 $80
	rst  $38                                         ; $7c98: $ff
	add  b                                           ; $7c99: $80
	nop                                              ; $7c9a: $00
	add  b                                           ; $7c9b: $80
	and  h                                           ; $7c9c: $a4
	add  b                                           ; $7c9d: $80
	rst  $38                                         ; $7c9e: $ff
	nop                                              ; $7c9f: $00
	reti                                             ; $7ca0: $d9


	add  c                                           ; $7ca1: $81
	add  hl, sp                                      ; $7ca2: $39
	add  b                                           ; $7ca3: $80
	ld   hl, sp+$01                                  ; $7ca4: $f8 $01
	ldh  [rP1], a                                    ; $7ca6: $e0 $00
	add  b                                           ; $7ca8: $80
	rst  $38                                         ; $7ca9: $ff
	add  d                                           ; $7caa: $82

jr_073_7cab:
	nop                                              ; $7cab: $00
	ld   [bc], a                                     ; $7cac: $02
	db   $fc                                         ; $7cad: $fc
	rst  $38                                         ; $7cae: $ff
	xor  $81                                         ; $7caf: $ee $81
	di                                               ; $7cb1: $f3
	add  b                                           ; $7cb2: $80
	rra                                              ; $7cb3: $1f
	ld   bc, $001e                                   ; $7cb4: $01 $1e $00
	add  b                                           ; $7cb7: $80
	rst  $38                                         ; $7cb8: $ff
	add  e                                           ; $7cb9: $83
	nop                                              ; $7cba: $00
	ld   bc, $62fe                                   ; $7cbb: $01 $fe $62
	add  c                                           ; $7cbe: $81
	sbc  a                                           ; $7cbf: $9f
	ld   b, $82                                      ; $7cc0: $06 $82
	add  c                                           ; $7cc2: $81
	inc  bc                                          ; $7cc3: $03
	ld   [bc], a                                     ; $7cc4: $02
	rst  $38                                         ; $7cc5: $ff
	db   $fd                                         ; $7cc6: $fd
	inc  bc                                          ; $7cc7: $03
	add  c                                           ; $7cc8: $81
	nop                                              ; $7cc9: $00
	add  b                                           ; $7cca: $80
	add  b                                           ; $7ccb: $80
	ld   bc, $fe01                                   ; $7ccc: $01 $01 $fe
	add  b                                           ; $7ccf: $80
	db   $fc                                         ; $7cd0: $fc
	dec  c                                           ; $7cd1: $0d
	ld   e, a                                        ; $7cd2: $5f
	ld   b, b                                        ; $7cd3: $40
	and  e                                           ; $7cd4: $a3
	add  e                                           ; $7cd5: $83
	ccf                                              ; $7cd6: $3f
	nop                                              ; $7cd7: $00
	ccf                                              ; $7cd8: $3f
	ret  nz                                          ; $7cd9: $c0

	add  b                                           ; $7cda: $80
	rst  $38                                         ; $7cdb: $ff
	ld   a, a                                        ; $7cdc: $7f

jr_073_7cdd:
	rst  $38                                         ; $7cdd: $ff
	rrca                                             ; $7cde: $0f
	ld   c, $80                                      ; $7cdf: $0e $80
	ld   e, $00                                      ; $7ce1: $1e $00
	ld   bc, $ff82                                   ; $7ce3: $01 $82 $ff
	ld   [bc], a                                     ; $7ce6: $02
	nop                                              ; $7ce7: $00
	push af                                          ; $7ce8: $f5
	ld   a, [bc]                                     ; $7ce9: $0a
	add  b                                           ; $7cea: $80
	inc  d                                           ; $7ceb: $14
	nop                                              ; $7cec: $00
	nop                                              ; $7ced: $00
	add  b                                           ; $7cee: $80
	add  b                                           ; $7cef: $80
	inc  b                                           ; $7cf0: $04
	rra                                              ; $7cf1: $1f
	ld   e, $7e                                      ; $7cf2: $1e $7e
	add  b                                           ; $7cf4: $80
	rst  $38                                         ; $7cf5: $ff
	add  b                                           ; $7cf6: $80
	ld   hl, sp+$04                                  ; $7cf7: $f8 $04
	rst  $38                                         ; $7cf9: $ff
	nop                                              ; $7cfa: $00
	rst  $38                                         ; $7cfb: $ff
	nop                                              ; $7cfc: $00
	ccf                                              ; $7cfd: $3f
	add  b                                           ; $7cfe: $80
	ld   b, b                                        ; $7cff: $40

jr_073_7d00:
	ld   a, [bc]                                     ; $7d00: $0a
	ret  nz                                          ; $7d01: $c0

	ld   bc, $0100                                   ; $7d02: $01 $00 $01
	nop                                              ; $7d05: $00
	rst  $38                                         ; $7d06: $ff
	rra                                              ; $7d07: $1f
	inc  de                                          ; $7d08: $13
	inc  sp                                          ; $7d09: $33
	and  a                                           ; $7d0a: $a7
	ld   h, a                                        ; $7d0b: $67
	add  c                                           ; $7d0c: $81
	rst  $38                                         ; $7d0d: $ff
	add  b                                           ; $7d0e: $80
	cp   $05                                         ; $7d0f: $fe $05
	ld   a, [hl]                                     ; $7d11: $7e
	ld   h, c                                        ; $7d12: $61
	nop                                              ; $7d13: $00
	add  b                                           ; $7d14: $80
	nop                                              ; $7d15: $00
	sbc  a                                           ; $7d16: $9f
	add  b                                           ; $7d17: $80
	ret  nz                                          ; $7d18: $c0

	inc  bc                                          ; $7d19: $03
	ld   [hl], b                                     ; $7d1a: $70
	ld   [hl], a                                     ; $7d1b: $77
	or   b                                           ; $7d1c: $b0
	or   a                                           ; $7d1d: $b7
	add  b                                           ; $7d1e: $80
	cp   b                                           ; $7d1f: $b8
	add  b                                           ; $7d20: $80
	ld   a, b                                        ; $7d21: $78
	ld   [bc], a                                     ; $7d22: $02
	jr   c, jr_073_7cdd                              ; $7d23: $38 $b8

	ld   a, a                                        ; $7d25: $7f
	add  b                                           ; $7d26: $80
	rst  $38                                         ; $7d27: $ff
	add  hl, bc                                      ; $7d28: $09
	adc  a                                           ; $7d29: $8f
	rrca                                             ; $7d2a: $0f
	ld   h, b                                        ; $7d2b: $60
	inc  bc                                          ; $7d2c: $03
	db   $e3                                         ; $7d2d: $e3
	nop                                              ; $7d2e: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7d2f: $cf
	jr   nc, jr_073_7d97                             ; $7d30: $30 $65

	ld   h, h                                        ; $7d32: $64
	add  b                                           ; $7d33: $80
	call z, $160d                                    ; $7d34: $cc $0d $16
	ldh  a, [$d6]                                    ; $7d37: $f0 $d6
	or   $a6                                         ; $7d39: $f6 $a6
	and  $fe                                         ; $7d3b: $e6 $fe
	ld   a, d                                        ; $7d3d: $7a
	rst  $38                                         ; $7d3e: $ff
	ld   a, h                                        ; $7d3f: $7c
	rst  JumpTable                                         ; $7d40: $df
	ld   a, a                                        ; $7d41: $7f
	cp   $60                                         ; $7d42: $fe $60
	add  b                                           ; $7d44: $80
	ld   h, d                                        ; $7d45: $62
	nop                                              ; $7d46: $00
	ld   b, c                                        ; $7d47: $41
	add  b                                           ; $7d48: $80
	nop                                              ; $7d49: $00
	add  e                                           ; $7d4a: $83
	rst  $38                                         ; $7d4b: $ff
	add  b                                           ; $7d4c: $80
	nop                                              ; $7d4d: $00
	add  b                                           ; $7d4e: $80
	rst  $38                                         ; $7d4f: $ff
	dec  b                                           ; $7d50: $05
	ei                                               ; $7d51: $fb
	nop                                              ; $7d52: $00
	ld   hl, sp+$00                                  ; $7d53: $f8 $00
	ei                                               ; $7d55: $fb
	rlca                                             ; $7d56: $07
	add  b                                           ; $7d57: $80
	rrca                                             ; $7d58: $0f
	inc  bc                                          ; $7d59: $03
	inc  bc                                          ; $7d5a: $03
	nop                                              ; $7d5b: $00
	ld   [$8204], sp                                 ; $7d5c: $08 $04 $82
	ld   [$0982], sp                                 ; $7d5f: $08 $82 $09
	add  c                                           ; $7d62: $81
	ldh  a, [$80]                                    ; $7d63: $f0 $80
	add  b                                           ; $7d65: $80
	add  b                                           ; $7d66: $80
	nop                                              ; $7d67: $00
	add  b                                           ; $7d68: $80
	ld   [$0408], sp                                 ; $7d69: $08 $08 $04
	inc  c                                           ; $7d6c: $0c
	inc  b                                           ; $7d6d: $04
	inc  d                                           ; $7d6e: $14
	ld   h, d                                        ; $7d6f: $62
	ld   l, d                                        ; $7d70: $6a
	ld   l, [hl]                                     ; $7d71: $6e
	ld   a, a                                        ; $7d72: $7f
	ld   c, $80                                      ; $7d73: $0e $80
	rrca                                             ; $7d75: $0f
	add  [hl]                                        ; $7d76: $86
	ld   c, $05                                      ; $7d77: $0e $05
	rrca                                             ; $7d79: $0f
	ld   c, $0d                                      ; $7d7a: $0e $0d
	rrca                                             ; $7d7c: $0f
	db   $e4                                         ; $7d7d: $e4
	jr   jr_073_7d00                                 ; $7d7e: $18 $80

	ld   hl, sp+$03                                  ; $7d80: $f8 $03
	add  hl, de                                      ; $7d82: $19
	jr   jr_073_7da3                                 ; $7d83: $18 $1e

	db   $10                                         ; $7d85: $10
	add  b                                           ; $7d86: $80
	nop                                              ; $7d87: $00
	add  b                                           ; $7d88: $80
	ld   bc, $ff00                                   ; $7d89: $01 $00 $ff
	add  c                                           ; $7d8c: $81
	nop                                              ; $7d8d: $00
	dec  b                                           ; $7d8e: $05
	ld   b, $01                                      ; $7d8f: $06 $01
	add  hl, sp                                      ; $7d91: $39
	ld   bc, $01c1                                   ; $7d92: $01 $c1 $01
	add  b                                           ; $7d95: $80
	inc  de                                          ; $7d96: $13

jr_073_7d97:
	add  b                                           ; $7d97: $80
	inc  sp                                          ; $7d98: $33
	add  b                                           ; $7d99: $80
	or   e                                           ; $7d9a: $b3
	nop                                              ; $7d9b: $00
	rst  $38                                         ; $7d9c: $ff
	add  c                                           ; $7d9d: $81
	nop                                              ; $7d9e: $00
	ld   [bc], a                                     ; $7d9f: $02
	push af                                          ; $7da0: $f5
	dec  b                                           ; $7da1: $05
	rrca                                             ; $7da2: $0f

jr_073_7da3:
	add  c                                           ; $7da3: $81
	ld   b, $06                                      ; $7da4: $06 $06
	ld   [bc], a                                     ; $7da6: $02
	inc  bc                                          ; $7da7: $03
	inc  b                                           ; $7da8: $04
	nop                                              ; $7da9: $00
	inc  bc                                          ; $7daa: $03
	ld   bc, $81fe                                   ; $7dab: $01 $fe $81
	nop                                              ; $7dae: $00
	add  b                                           ; $7daf: $80
	ld   bc, $f982                                   ; $7db0: $01 $82 $f9
	ld   b, $f0                                      ; $7db3: $06 $f0
	ld   [hl], b                                     ; $7db5: $70
	add  c                                           ; $7db6: $81
	nop                                              ; $7db7: $00
	cp   $fc                                         ; $7db8: $fe $fc
	inc  bc                                          ; $7dba: $03
	add  c                                           ; $7dbb: $81
	nop                                              ; $7dbc: $00
	ld   [bc], a                                     ; $7dbd: $02
	ld   a, c                                        ; $7dbe: $79
	ld   d, $96                                      ; $7dbf: $16 $96
	add  c                                           ; $7dc1: $81
	ld   d, $80                                      ; $7dc2: $16 $80
	rla                                              ; $7dc4: $17
	add  b                                           ; $7dc5: $80
	ccf                                              ; $7dc6: $3f
	ld   [bc], a                                     ; $7dc7: $02
	rst  $10                                         ; $7dc8: $d7
	rst  $38                                         ; $7dc9: $ff
	rst  ToBoot                                         ; $7dca: $c7
	add  c                                           ; $7dcb: $81
	nop                                              ; $7dcc: $00
	ld   [$cc20], sp                                 ; $7dcd: $08 $20 $cc
	db   $ec                                         ; $7dd0: $ec
	cp   $7e                                         ; $7dd1: $fe $7e
	ld   a, h                                        ; $7dd3: $7c
	inc  a                                           ; $7dd4: $3c
	nop                                              ; $7dd5: $00
	ld   b, b                                        ; $7dd6: $40
	add  c                                           ; $7dd7: $81
	ld   a, a                                        ; $7dd8: $7f
	nop                                              ; $7dd9: $00
	rst  $38                                         ; $7dda: $ff
	add  c                                           ; $7ddb: $81
	nop                                              ; $7ddc: $00
	ld   [bc], a                                     ; $7ddd: $02
	jr   c, @+$08                                    ; $7dde: $38 $06

	ld   a, $80                                      ; $7de0: $3e $80
	db   $fd                                         ; $7de2: $fd
	add  b                                           ; $7de3: $80
	ld   sp, $e780                                   ; $7de4: $31 $80 $e7
	add  b                                           ; $7de7: $80
	adc  $80                                         ; $7de8: $ce $80
	inc  c                                           ; $7dea: $0c
	add  c                                           ; $7deb: $81
	nop                                              ; $7dec: $00
	inc  b                                           ; $7ded: $04
	rra                                              ; $7dee: $1f
	ld   h, b                                        ; $7def: $60
	ld   [hl], c                                     ; $7df0: $71
	ld   [hl], b                                     ; $7df1: $70
	ld   a, [hl]                                     ; $7df2: $7e
	add  e                                           ; $7df3: $83
	nop                                              ; $7df4: $00
	ld   [bc], a                                     ; $7df5: $02
	rrca                                             ; $7df6: $0f
	ldh  a, [rIE]                                    ; $7df7: $f0 $ff
	add  c                                           ; $7df9: $81
	nop                                              ; $7dfa: $00
	inc  bc                                          ; $7dfb: $03
	add  b                                           ; $7dfc: $80
	inc  e                                           ; $7dfd: $1c
	sbc  h                                           ; $7dfe: $9c
	nop                                              ; $7dff: $00
	add  b                                           ; $7e00: $80
	ld   a, a                                        ; $7e01: $7f
	add  d                                           ; $7e02: $82
	nop                                              ; $7e03: $00
	ld   [bc], a                                     ; $7e04: $02
	rst  $38                                         ; $7e05: $ff
	nop                                              ; $7e06: $00
	rst  $38                                         ; $7e07: $ff
	add  c                                           ; $7e08: $81
	nop                                              ; $7e09: $00
	inc  bc                                          ; $7e0a: $03
	rlca                                             ; $7e0b: $07
	rst  $10                                         ; $7e0c: $d7
	rst  JumpTable                                         ; $7e0d: $df
	rrca                                             ; $7e0e: $0f
	add  b                                           ; $7e0f: $80
	rst  $38                                         ; $7e10: $ff
	add  d                                           ; $7e11: $82
	nop                                              ; $7e12: $00
	ld   [bc], a                                     ; $7e13: $02
	rst  $38                                         ; $7e14: $ff
	nop                                              ; $7e15: $00
	rst  $38                                         ; $7e16: $ff
	add  c                                           ; $7e17: $81
	nop                                              ; $7e18: $00
	ld   b, $e1                                      ; $7e19: $06 $e1
	add  b                                           ; $7e1b: $80
	sub  b                                           ; $7e1c: $90
	ldh  [$ec], a                                    ; $7e1d: $e0 $ec
	ldh  a, [$0a]                                    ; $7e1f: $f0 $0a
	add  c                                           ; $7e21: $81
	nop                                              ; $7e22: $00
	ld   [bc], a                                     ; $7e23: $02
	ld   hl, sp+$00                                  ; $7e24: $f8 $00
	rst  $38                                         ; $7e26: $ff
	add  c                                           ; $7e27: $81
	nop                                              ; $7e28: $00
	nop                                              ; $7e29: $00
	ret  nc                                          ; $7e2a: $d0

	add  c                                           ; $7e2b: $81
	ld   l, a                                        ; $7e2c: $6f
	ld   bc, $7f60                                   ; $7e2d: $01 $60 $7f
	add  b                                           ; $7e30: $80
	rst  $38                                         ; $7e31: $ff
	ld   bc, $e2fc                                   ; $7e32: $01 $fc $e2
	add  b                                           ; $7e35: $80
	and  $04                                         ; $7e36: $e6 $04
	rst  $28                                         ; $7e38: $ef
	ld   l, a                                        ; $7e39: $6f
	ld   a, c                                        ; $7e3a: $79
	rst  $38                                         ; $7e3b: $ff
	cp   b                                           ; $7e3c: $b8
	add  b                                           ; $7e3d: $80
	rst  $30                                         ; $7e3e: $f7
	ld   bc, $09f1                                   ; $7e3f: $01 $f1 $09
	add  b                                           ; $7e42: $80
	db   $fc                                         ; $7e43: $fc
	add  hl, bc                                      ; $7e44: $09
	cp   $1e                                         ; $7e45: $fe $1e
	rst  $38                                         ; $7e47: $ff
	db   $e3                                         ; $7e48: $e3
	ld   bc, $facb                                   ; $7e49: $01 $cb $fa
	xor  c                                           ; $7e4c: $a9
	ld   sp, hl                                      ; $7e4d: $f9
	sbc  l                                           ; $7e4e: $9d
	adc  e                                           ; $7e4f: $8b
	add  hl, bc                                      ; $7e50: $09
	add  b                                           ; $7e51: $80
	ld   bc, $ec02                                   ; $7e52: $01 $02 $ec
	ld   a, h                                        ; $7e55: $7c
	ld   a, b                                        ; $7e56: $78
	add  a                                           ; $7e57: $87
	ld   h, h                                        ; $7e58: $64
	add  b                                           ; $7e59: $80
	ld   h, l                                        ; $7e5a: $65
	ld   [bc], a                                     ; $7e5b: $02
	ld   h, [hl]                                     ; $7e5c: $66
	ld   h, a                                        ; $7e5d: $67
	ld   a, [hl]                                     ; $7e5e: $7e
	add  l                                           ; $7e5f: $85
	rrca                                             ; $7e60: $0f
	add  b                                           ; $7e61: $80
	ld   b, a                                        ; $7e62: $47
	rlca                                             ; $7e63: $07
	or   [hl]                                        ; $7e64: $b6
	and  [hl]                                        ; $7e65: $a6
	dec  e                                           ; $7e66: $1d
	ld   a, l                                        ; $7e67: $7d
	ld   h, [hl]                                     ; $7e68: $66
	ld   a, [$00e0]                                  ; $7e69: $fa $e0 $00
	add  d                                           ; $7e6c: $82
	rst  $28                                         ; $7e6d: $ef
	ld   bc, $efe1                                   ; $7e6e: $01 $e1 $ef
	add  b                                           ; $7e71: $80
	ld   l, h                                        ; $7e72: $6c
	inc  bc                                          ; $7e73: $03
	set  5, b                                        ; $7e74: $cb $e8
	ld   hl, $8064                                   ; $7e76: $21 $64 $80
	rst  $20                                         ; $7e79: $e7
	ld   bc, $0068                                   ; $7e7a: $01 $68 $00
	add  d                                           ; $7e7d: $82
	rst  $38                                         ; $7e7e: $ff
	rlca                                             ; $7e7f: $07
	pop  hl                                          ; $7e80: $e1

jr_073_7e81:
	rra                                              ; $7e81: $1f
	ld   a, [hl]                                     ; $7e82: $7e
	ld   a, a                                        ; $7e83: $7f
	nop                                              ; $7e84: $00
	rra                                              ; $7e85: $1f
	ldh  [rP1], a                                    ; $7e86: $e0 $00
	add  b                                           ; $7e88: $80
	rst  $38                                         ; $7e89: $ff
	add  b                                           ; $7e8a: $80
	nop                                              ; $7e8b: $00
	add  h                                           ; $7e8c: $84
	rst  $38                                         ; $7e8d: $ff
	dec  b                                           ; $7e8e: $05
	ld   a, [hl]                                     ; $7e8f: $7e
	rst  $38                                         ; $7e90: $ff
	ld   a, l                                        ; $7e91: $7d
	rst  $38                                         ; $7e92: $ff
	inc  bc                                          ; $7e93: $03
	nop                                              ; $7e94: $00
	add  b                                           ; $7e95: $80
	rst  $38                                         ; $7e96: $ff
	add  b                                           ; $7e97: $80
	nop                                              ; $7e98: $00
	add  d                                           ; $7e99: $82
	push af                                          ; $7e9a: $f5
	rlca                                             ; $7e9b: $07
	add  hl, bc                                      ; $7e9c: $09
	db   $fd                                         ; $7e9d: $fd
	ld   sp, hl                                      ; $7e9e: $f9
	cp   b                                           ; $7e9f: $b8
	db   $ec                                         ; $7ea0: $ec
	call z, $0c8c                                    ; $7ea1: $cc $8c $0c
	add  b                                           ; $7ea4: $80
	db   $ec                                         ; $7ea5: $ec
	ld   bc, $0015                                   ; $7ea6: $01 $15 $00
	add  d                                           ; $7ea9: $82
	rst  $38                                         ; $7eaa: $ff
	dec  bc                                          ; $7eab: $0b
	nop                                              ; $7eac: $00
	rst  $38                                         ; $7ead: $ff
	dec  hl                                          ; $7eae: $2b
	dec  de                                          ; $7eaf: $1b
	ld   a, e                                        ; $7eb0: $7b
	ccf                                              ; $7eb1: $3f
	ld   c, e                                        ; $7eb2: $4b
	ld   b, b                                        ; $7eb3: $40
	cpl                                              ; $7eb4: $2f
	ld   e, a                                        ; $7eb5: $5f
	ldh  a, [rP1]                                    ; $7eb6: $f0 $00
	add  d                                           ; $7eb8: $82
	rst  $38                                         ; $7eb9: $ff
	rlca                                             ; $7eba: $07
	rra                                              ; $7ebb: $1f
	rst  $38                                         ; $7ebc: $ff
	rst  $28                                         ; $7ebd: $ef
	rst  $38                                         ; $7ebe: $ff
	rst  $28                                         ; $7ebf: $ef
	rst  $38                                         ; $7ec0: $ff
	ldh  [rP1], a                                    ; $7ec1: $e0 $00
	add  b                                           ; $7ec3: $80
	rst  $38                                         ; $7ec4: $ff
	add  b                                           ; $7ec5: $80
	nop                                              ; $7ec6: $00
	add  d                                           ; $7ec7: $82
	cp   $05                                         ; $7ec8: $fe $05
	ret  nz                                          ; $7eca: $c0

	cp   $ba                                         ; $7ecb: $fe $ba
	cp   $83                                         ; $7ecd: $fe $83
	ei                                               ; $7ecf: $fb
	add  b                                           ; $7ed0: $80
	ld   bc, $fd80                                   ; $7ed1: $01 $80 $fd
	ld   b, $02                                      ; $7ed4: $06 $02
	nop                                              ; $7ed6: $00
	reti                                             ; $7ed7: $d9


	sbc  $c7                                         ; $7ed8: $de $c7
	ret  nz                                          ; $7eda: $c0

	add  b                                           ; $7edb: $80
	add  c                                           ; $7edc: $81
	ret  nz                                          ; $7edd: $c0

	ld   bc, $c040                                   ; $7ede: $01 $40 $c0
	add  b                                           ; $7ee1: $80
	add  b                                           ; $7ee2: $80
	add  b                                           ; $7ee3: $80
	nop                                              ; $7ee4: $00
	dec  b                                           ; $7ee5: $05
	ret  nz                                          ; $7ee6: $c0

	nop                                              ; $7ee7: $00
	rst  $38                                         ; $7ee8: $ff
	nop                                              ; $7ee9: $00
	db   $e3                                         ; $7eea: $e3
	inc  e                                           ; $7eeb: $1c
	add  l                                           ; $7eec: $85
	nop                                              ; $7eed: $00
	add  b                                           ; $7eee: $80
	ld   b, b                                        ; $7eef: $40
	add  b                                           ; $7ef0: $80

jr_073_7ef1:
	ret  nz                                          ; $7ef1: $c0

	inc  b                                           ; $7ef2: $04
	nop                                              ; $7ef3: $00
	rst  $38                                         ; $7ef4: $ff
	nop                                              ; $7ef5: $00
	ldh  a, [rIF]                                    ; $7ef6: $f0 $0f
	add  b                                           ; $7ef8: $80
	inc  bc                                          ; $7ef9: $03
	add  b                                           ; $7efa: $80
	ld   bc, $0000                                   ; $7efb: $01 $00 $00
	add  b                                           ; $7efe: $80
	jr   nz, jr_073_7e81                             ; $7eff: $20 $80

	ld   a, b                                        ; $7f01: $78
	add  b                                           ; $7f02: $80
	ld   a, h                                        ; $7f03: $7c
	ld   [$fe00], sp                                 ; $7f04: $08 $00 $fe
	rrca                                             ; $7f07: $0f
	ld   h, a                                        ; $7f08: $67
	sub  a                                           ; $7f09: $97
	sub  l                                           ; $7f0a: $95
	sub  a                                           ; $7f0b: $97
	sub  e                                           ; $7f0c: $93
	sub  a                                           ; $7f0d: $97
	add  b                                           ; $7f0e: $80
	dec  b                                           ; $7f0f: $05
	add  c                                           ; $7f10: $81
	ld   bc, $0001                                   ; $7f11: $01 $01 $00
	ld   e, c                                        ; $7f14: $59
	add  b                                           ; $7f15: $80
	rst  $38                                         ; $7f16: $ff
	inc  b                                           ; $7f17: $04
	ld   hl, sp-$02                                  ; $7f18: $f8 $fe
	ldh  [$e1], a                                    ; $7f1a: $e0 $e1
	ldh  [$80], a                                    ; $7f1c: $e0 $80
	db   $ec                                         ; $7f1e: $ec
	add  b                                           ; $7f1f: $80
	db   $fc                                         ; $7f20: $fc
	nop                                              ; $7f21: $00
	cp   h                                           ; $7f22: $bc
	add  b                                           ; $7f23: $80
	and  h                                           ; $7f24: $a4
	ld   bc, $fc04                                   ; $7f25: $01 $04 $fc
	add  b                                           ; $7f28: $80
	ld   hl, sp+$00                                  ; $7f29: $f8 $00
	inc  bc                                          ; $7f2b: $03
	add  b                                           ; $7f2c: $80
	rlca                                             ; $7f2d: $07
	add  hl, bc                                      ; $7f2e: $09
	ld   bc, $801e                                   ; $7f2f: $01 $1e $80
	nop                                              ; $7f32: $00
	ld   e, e                                        ; $7f33: $5b
	inc  b                                           ; $7f34: $04
	inc  h                                           ; $7f35: $24
	inc  b                                           ; $7f36: $04
	sbc  a                                           ; $7f37: $9f
	add  a                                           ; $7f38: $87
	inc  sp                                          ; $7f39: $33
	nop                                              ; $7f3a: $00
	nop                                              ; $7f3b: $00

jr_073_7f3c:
	rrca                                             ; $7f3c: $0f
	add  b                                           ; $7f3d: $80
	ld   c, $80                                      ; $7f3e: $0e $80
	dec  bc                                          ; $7f40: $0b
	add  d                                           ; $7f41: $82
	nop                                              ; $7f42: $00
	add  l                                           ; $7f43: $85
	rrca                                             ; $7f44: $0f
	nop                                              ; $7f45: $00
	rst  $38                                         ; $7f46: $ff
	add  b                                           ; $7f47: $80
	ret  nc                                          ; $7f48: $d0

	add  b                                           ; $7f49: $80
	nop                                              ; $7f4a: $00
	add  b                                           ; $7f4b: $80
	ld   bc, $7f80                                   ; $7f4c: $01 $80 $7f
	add  [hl]                                        ; $7f4f: $86
	rst  $38                                         ; $7f50: $ff
	add  b                                           ; $7f51: $80
	nop                                              ; $7f52: $00
	add  b                                           ; $7f53: $80
	rrca                                             ; $7f54: $0f
	adc  d                                           ; $7f55: $8a
	rst  $38                                         ; $7f56: $ff
	add  b                                           ; $7f57: $80
	ld   a, a                                        ; $7f58: $7f
	add  a                                           ; $7f59: $87
	rst  $38                                         ; $7f5a: $ff
	inc  b                                           ; $7f5b: $04
	push af                                          ; $7f5c: $f5
	rst  $38                                         ; $7f5d: $ff
	jp   c, $d0ff                                    ; $7f5e: $da $ff $d0

	adc  c                                           ; $7f61: $89
	rst  $38                                         ; $7f62: $ff
	inc  b                                           ; $7f63: $04
	ld   d, d                                        ; $7f64: $52
	rst  $38                                         ; $7f65: $ff

jr_073_7f66:
	add  l                                           ; $7f66: $85
	rst  $38                                         ; $7f67: $ff
	jr   z, jr_073_7ef1                              ; $7f68: $28 $87

	rst  $38                                         ; $7f6a: $ff
	ld   b, $fd                                      ; $7f6b: $06 $fd
	rst  $38                                         ; $7f6d: $ff
	and  d                                           ; $7f6e: $a2
	rst  $38                                         ; $7f6f: $ff
	ld   e, a                                        ; $7f70: $5f
	rst  $38                                         ; $7f71: $ff
	nop                                              ; $7f72: $00
	add  l                                           ; $7f73: $85
	rst  $38                                         ; $7f74: $ff
	inc  b                                           ; $7f75: $04
	xor  a                                           ; $7f76: $af
	rst  $38                                         ; $7f77: $ff
	db   $10                                         ; $7f78: $10
	rst  $38                                         ; $7f79: $ff
	cp   a                                           ; $7f7a: $bf
	add  c                                           ; $7f7b: $81
	rst  $38                                         ; $7f7c: $ff
	nop                                              ; $7f7d: $00
	nop                                              ; $7f7e: $00
	add  a                                           ; $7f7f: $87
	rst  $38                                         ; $7f80: $ff
	ld   b, $5f                                      ; $7f81: $06 $5f
	rst  $38                                         ; $7f83: $ff
	sbc  a                                           ; $7f84: $9f
	rst  $38                                         ; $7f85: $ff
	sub  a                                           ; $7f86: $97
	rst  $38                                         ; $7f87: $ff
	ld   d, l                                        ; $7f88: $55
	adc  e                                           ; $7f89: $8b
	ei                                               ; $7f8a: $fb
	ld   [bc], a                                     ; $7f8b: $02
	ld   hl, sp-$05                                  ; $7f8c: $f8 $fb
	ld   a, [$ff8b]                                  ; $7f8e: $fa $8b $ff
	ld   a, [bc]                                     ; $7f91: $0a
	rrca                                             ; $7f92: $0f
	rst  $38                                         ; $7f93: $ff
	ld   [hl], a                                     ; $7f94: $77
	ld   a, a                                        ; $7f95: $7f
	dec  bc                                          ; $7f96: $0b
	sbc  a                                           ; $7f97: $9f
	sub  d                                           ; $7f98: $92
	and  e                                           ; $7f99: $a3
	sbc  a                                           ; $7f9a: $9f
	cp   a                                           ; $7f9b: $bf
	add  e                                           ; $7f9c: $83
	add  b                                           ; $7f9d: $80
	jp   $d781                                       ; $7f9e: $c3 $81 $d7


	jr   jr_073_7f66                                 ; $7fa1: $18 $c3

	rst  $10                                         ; $7fa3: $d7
	ei                                               ; $7fa4: $fb
	rst  $38                                         ; $7fa5: $ff
	ld   c, b                                        ; $7fa6: $48
	rst  $38                                         ; $7fa7: $ff
	xor  d                                           ; $7fa8: $aa
	rst  $38                                         ; $7fa9: $ff
	db   $e4                                         ; $7faa: $e4
	ldh  [$e2], a                                    ; $7fab: $e0 $e2
	cp   $e2                                         ; $7fad: $fe $e2
	rst  $38                                         ; $7faf: $ff
	rst  $28                                         ; $7fb0: $ef
	rst  $38                                         ; $7fb1: $ff
	push hl                                          ; $7fb2: $e5
	db   $fd                                         ; $7fb3: $fd
	or   [hl]                                        ; $7fb4: $b6
	rst  $38                                         ; $7fb5: $ff
	ld   de, $51ff                                   ; $7fb6: $11 $ff $51
	rst  $38                                         ; $7fb9: $ff
	jr   nz, jr_073_7f3c                             ; $7fba: $20 $80

	nop                                              ; $7fbc: $00
	rla                                              ; $7fbd: $17
	ld   a, a                                        ; $7fbe: $7f
	ld   a, [bc]                                     ; $7fbf: $0a
	rst  $38                                         ; $7fc0: $ff
	push af                                          ; $7fc1: $f5
	rst  $38                                         ; $7fc2: $ff
	ccf                                              ; $7fc3: $3f
	rst  $38                                         ; $7fc4: $ff
	cp   [hl]                                        ; $7fc5: $be
	rst  $38                                         ; $7fc6: $ff
	ld   hl, sp-$07                                  ; $7fc7: $f8 $f9
	add  a                                           ; $7fc9: $87
	rst  ToBoot                                         ; $7fca: $c7
	ld   e, [hl]                                     ; $7fcb: $5e
	ccf                                              ; $7fcc: $3f
	ld   hl, sRandomSeed                                   ; $7fcd: $21 $ff $bf
	push de                                          ; $7fd0: $d5
	inc  d                                           ; $7fd1: $14
	rst  $10                                         ; $7fd2: $d7
	sub  [hl]                                        ; $7fd3: $96
	rst  $10                                         ; $7fd4: $d7
	add  sp, -$01                                    ; $7fd5: $e8 $ff
	nop                                              ; $7fd7: $00
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
	adc  a                                           ; $7ff2: $8f
	nop                                              ; $7ff3: $00
	nop                                              ; $7ff4: $00
	nop                                              ; $7ff5: $00
	nop                                              ; $7ff6: $00
	nop                                              ; $7ff7: $00
	nop                                              ; $7ff8: $00
	nop                                              ; $7ff9: $00
	nop                                              ; $7ffa: $00
	nop                                              ; $7ffb: $00
	nop                                              ; $7ffc: $00
	nop                                              ; $7ffd: $00
	nop                                              ; $7ffe: $00
	nop                                              ; $7fff: $00
