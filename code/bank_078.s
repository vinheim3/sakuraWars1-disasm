; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $078", ROMX[$4000], BANK[$78]

	ld   b, a                                        ; $4000: $47
	ld   [bc], a                                     ; $4001: $02
	add  [hl]                                        ; $4002: $86
	nop                                              ; $4003: $00
	ld   bc, $040b                                   ; $4004: $01 $0b $04
	add  b                                           ; $4007: $80
	ld   bc, $0081                                   ; $4008: $01 $81 $00
	ld   bc, $030c                                   ; $400b: $01 $0c $03
	add  l                                           ; $400e: $85
	nop                                              ; $400f: $00
	ld   bc, $c03f                                   ; $4010: $01 $3f $c0
	add  b                                           ; $4013: $80
	db   $20, $80                                    ; $4014: $20 $80
	ld   c, h                                        ; $4016: $4c
	add  b                                           ; $4017: $80
	inc  de                                          ; $4018: $13
	nop                                              ; $4019: $00
	rst  $38                                         ; $401a: $ff
	add  l                                           ; $401b: $85
	nop                                              ; $401c: $00
	nop                                              ; $401d: $00
	rst  $38                                         ; $401e: $ff
	add  l                                           ; $401f: $85
	nop                                              ; $4020: $00
	nop                                              ; $4021: $00
	rst  $38                                         ; $4022: $ff
	add  l                                           ; $4023: $85
	nop                                              ; $4024: $00
	nop                                              ; $4025: $00
	rst  $38                                         ; $4026: $ff
	add  l                                           ; $4027: $85
	nop                                              ; $4028: $00
	nop                                              ; $4029: $00

jr_078_402a:
	rst  $38                                         ; $402a: $ff
	add  l                                           ; $402b: $85
	nop                                              ; $402c: $00
	nop                                              ; $402d: $00
	rst  $38                                         ; $402e: $ff
	add  l                                           ; $402f: $85
	nop                                              ; $4030: $00
	nop                                              ; $4031: $00
	rst  $38                                         ; $4032: $ff
	add  l                                           ; $4033: $85
	nop                                              ; $4034: $00
	nop                                              ; $4035: $00
	rst  $38                                         ; $4036: $ff
	add  l                                           ; $4037: $85
	nop                                              ; $4038: $00
	nop                                              ; $4039: $00
	rst  $38                                         ; $403a: $ff
	add  l                                           ; $403b: $85
	nop                                              ; $403c: $00
	nop                                              ; $403d: $00
	rst  $38                                         ; $403e: $ff
	add  l                                           ; $403f: $85
	nop                                              ; $4040: $00
	nop                                              ; $4041: $00
	rst  $38                                         ; $4042: $ff
	add  l                                           ; $4043: $85
	nop                                              ; $4044: $00
	nop                                              ; $4045: $00
	rst  $38                                         ; $4046: $ff
	add  l                                           ; $4047: $85
	nop                                              ; $4048: $00
	nop                                              ; $4049: $00
	rst  $38                                         ; $404a: $ff
	add  l                                           ; $404b: $85
	nop                                              ; $404c: $00
	nop                                              ; $404d: $00
	rst  $38                                         ; $404e: $ff
	add  l                                           ; $404f: $85
	nop                                              ; $4050: $00
	nop                                              ; $4051: $00
	rst  $38                                         ; $4052: $ff
	add  l                                           ; $4053: $85
	nop                                              ; $4054: $00
	nop                                              ; $4055: $00
	rst  $38                                         ; $4056: $ff
	add  h                                           ; $4057: $84
	nop                                              ; $4058: $00
	ld   bc, $fe01                                   ; $4059: $01 $01 $fe
	add  l                                           ; $405c: $85
	nop                                              ; $405d: $00
	nop                                              ; $405e: $00
	rst  $38                                         ; $405f: $ff
	add  b                                           ; $4060: $80
	ld   l, b                                        ; $4061: $68
	add  b                                           ; $4062: $80
	ld   e, b                                        ; $4063: $58
	add  b                                           ; $4064: $80
	adc  b                                           ; $4065: $88
	ld   bc, $ab54                                   ; $4066: $01 $54 $ab
	add  l                                           ; $4069: $85
	nop                                              ; $406a: $00
	nop                                              ; $406b: $00
	rst  $38                                         ; $406c: $ff
	add  l                                           ; $406d: $85
	nop                                              ; $406e: $00
	nop                                              ; $406f: $00
	rst  $38                                         ; $4070: $ff
	add  l                                           ; $4071: $85
	nop                                              ; $4072: $00
	nop                                              ; $4073: $00
	rst  $38                                         ; $4074: $ff
	add  l                                           ; $4075: $85
	nop                                              ; $4076: $00
	nop                                              ; $4077: $00
	rst  $38                                         ; $4078: $ff
	add  l                                           ; $4079: $85
	nop                                              ; $407a: $00
	nop                                              ; $407b: $00
	rst  $38                                         ; $407c: $ff
	add  l                                           ; $407d: $85
	nop                                              ; $407e: $00
	nop                                              ; $407f: $00
	rst  $38                                         ; $4080: $ff
	add  l                                           ; $4081: $85
	nop                                              ; $4082: $00
	nop                                              ; $4083: $00
	rst  $38                                         ; $4084: $ff
	add  l                                           ; $4085: $85
	nop                                              ; $4086: $00
	nop                                              ; $4087: $00
	rst  $38                                         ; $4088: $ff
	add  l                                           ; $4089: $85
	nop                                              ; $408a: $00
	nop                                              ; $408b: $00
	rst  $38                                         ; $408c: $ff
	add  l                                           ; $408d: $85
	nop                                              ; $408e: $00
	nop                                              ; $408f: $00

jr_078_4090:
	pop  af                                          ; $4090: $f1
	adc  l                                           ; $4091: $8d
	rrca                                             ; $4092: $0f
	ld   bc, $04fa                                   ; $4093: $01 $fa $04
	add  b                                           ; $4096: $80
	ld   bc, $0080                                   ; $4097: $01 $80 $00
	add  b                                           ; $409a: $80
	jr   nz, @+$06                                   ; $409b: $20 $04

	jr   nc, jr_078_40bf                             ; $409d: $30 $20

	inc  h                                           ; $409f: $24
	jr   nz, @+$23                                   ; $40a0: $20 $21

	add  c                                           ; $40a2: $81
	jr   nz, jr_078_40a6                             ; $40a3: $20 $01

	push de                                          ; $40a5: $d5

jr_078_40a6:
	ret  nz                                          ; $40a6: $c0

	add  b                                           ; $40a7: $80
	jr   nz, jr_078_402a                             ; $40a8: $20 $80

	ld   c, d                                        ; $40aa: $4a
	add  b                                           ; $40ab: $80
	inc  de                                          ; $40ac: $13
	add  b                                           ; $40ad: $80
	inc  c                                           ; $40ae: $0c
	add  b                                           ; $40af: $80
	inc  bc                                          ; $40b0: $03
	add  b                                           ; $40b1: $80
	nop                                              ; $40b2: $00
	ld   [bc], a                                     ; $40b3: $02
	ld   b, b                                        ; $40b4: $40
	nop                                              ; $40b5: $00
	ld   b, b                                        ; $40b6: $40
	add  c                                           ; $40b7: $81
	nop                                              ; $40b8: $00
	add  b                                           ; $40b9: $80
	add  b                                           ; $40ba: $80
	add  b                                           ; $40bb: $80
	ld   b, h                                        ; $40bc: $44
	add  b                                           ; $40bd: $80
	xor  b                                           ; $40be: $a8

jr_078_40bf:
	add  b                                           ; $40bf: $80
	dec  h                                           ; $40c0: $25
	add  b                                           ; $40c1: $80
	jp   z, $3280                                    ; $40c2: $ca $80 $32

	add  [hl]                                        ; $40c5: $86
	nop                                              ; $40c6: $00
	add  b                                           ; $40c7: $80
	ld   a, [hl+]                                    ; $40c8: $2a
	add  b                                           ; $40c9: $80
	nop                                              ; $40ca: $00
	add  b                                           ; $40cb: $80
	xor  d                                           ; $40cc: $aa
	add  b                                           ; $40cd: $80
	ld   d, b                                        ; $40ce: $50
	add  [hl]                                        ; $40cf: $86
	nop                                              ; $40d0: $00
	add  b                                           ; $40d1: $80
	ld   [$0082], sp                                 ; $40d2: $08 $82 $00
	add  b                                           ; $40d5: $80
	ld   d, b                                        ; $40d6: $50
	adc  h                                           ; $40d7: $8c
	nop                                              ; $40d8: $00
	add  b                                           ; $40d9: $80
	ld   b, l                                        ; $40da: $45
	adc  h                                           ; $40db: $8c
	nop                                              ; $40dc: $00
	add  b                                           ; $40dd: $80
	db   $10                                         ; $40de: $10
	add  a                                           ; $40df: $87
	nop                                              ; $40e0: $00
	add  c                                           ; $40e1: $81
	ld   bc, $0080                                   ; $40e2: $01 $80 $00
	nop                                              ; $40e5: $00
	ld   [bc], a                                     ; $40e6: $02
	add  c                                           ; $40e7: $81
	nop                                              ; $40e8: $00
	nop                                              ; $40e9: $00
	inc  b                                           ; $40ea: $04
	add  d                                           ; $40eb: $82
	nop                                              ; $40ec: $00
	ld   bc, $e7e0                                   ; $40ed: $01 $e0 $e7
	add  b                                           ; $40f0: $80
	rla                                              ; $40f1: $17
	ld   bc, $9f00                                   ; $40f2: $01 $00 $9f
	add  b                                           ; $40f5: $80
	db   $10                                         ; $40f6: $10
	ld   bc, $cf50                                   ; $40f7: $01 $50 $cf
	add  b                                           ; $40fa: $80
	inc  d                                           ; $40fb: $14
	add  b                                           ; $40fc: $80
	adc  h                                           ; $40fd: $8c
	add  b                                           ; $40fe: $80
	adc  d                                           ; $40ff: $8a
	add  b                                           ; $4100: $80
	add  [hl]                                        ; $4101: $86
	add  b                                           ; $4102: $80
	add  d                                           ; $4103: $82
	ld   bc, $7e02                                   ; $4104: $01 $02 $7e
	add  c                                           ; $4107: $81
	add  e                                           ; $4108: $83
	nop                                              ; $4109: $00
	rst  $38                                         ; $410a: $ff
	add  d                                           ; $410b: $82
	nop                                              ; $410c: $00
	add  b                                           ; $410d: $80
	jr   c, jr_078_4090                              ; $410e: $38 $80

	ld   b, h                                        ; $4110: $44
	inc  bc                                          ; $4111: $03
	add  h                                           ; $4112: $84
	adc  b                                           ; $4113: $88
	add  b                                           ; $4114: $80
	sub  b                                           ; $4115: $90
	add  c                                           ; $4116: $81
	ld   [bc], a                                     ; $4117: $02
	nop                                              ; $4118: $00
	ld   e, $8b                                      ; $4119: $1e $8b
	nop                                              ; $411b: $00
	add  b                                           ; $411c: $80
	dec  b                                           ; $411d: $05
	adc  h                                           ; $411e: $8c
	nop                                              ; $411f: $00
	add  b                                           ; $4120: $80
	ld   d, h                                        ; $4121: $54
	adc  d                                           ; $4122: $8a
	nop                                              ; $4123: $00
	add  b                                           ; $4124: $80
	ld   [bc], a                                     ; $4125: $02
	add  [hl]                                        ; $4126: $86
	nop                                              ; $4127: $00
	add  b                                           ; $4128: $80
	inc  b                                           ; $4129: $04
	add  d                                           ; $412a: $82
	nop                                              ; $412b: $00
	add  b                                           ; $412c: $80
	add  b                                           ; $412d: $80
	add  b                                           ; $412e: $80
	dec  d                                           ; $412f: $15
	nop                                              ; $4130: $00
	pop  af                                          ; $4131: $f1
	add  e                                           ; $4132: $83
	rrca                                             ; $4133: $0f
	add  b                                           ; $4134: $80
	dec  c                                           ; $4135: $0d
	add  b                                           ; $4136: $80
	add  hl, bc                                      ; $4137: $09
	add  h                                           ; $4138: $84
	ld   bc, $cb00                                   ; $4139: $01 $00 $cb
	add  c                                           ; $413c: $81
	jr   nz, jr_078_4147                             ; $413d: $20 $08

	ld   d, b                                        ; $413f: $50
	ld   hl, sp-$3b                                  ; $4140: $f8 $c5
	rst  $38                                         ; $4142: $ff
	ret  nz                                          ; $4143: $c0

	rst  $38                                         ; $4144: $ff
	ldh  [rIE], a                                    ; $4145: $e0 $ff

jr_078_4147:
	ld   hl, sp-$80                                  ; $4147: $f8 $80
	rst  $20                                         ; $4149: $e7
	ld   bc, $efe0                                   ; $414a: $01 $e0 $ef
	add  l                                           ; $414d: $85
	ld   [$4802], sp                                 ; $414e: $08 $02 $48
	ld   [$8318], sp                                 ; $4151: $08 $18 $83
	nop                                              ; $4154: $00
	inc  b                                           ; $4155: $04
	inc  c                                           ; $4156: $0c
	adc  h                                           ; $4157: $8c
	add  e                                           ; $4158: $83
	db   $e3                                         ; $4159: $e3
	ldh  [$80], a                                    ; $415a: $e0 $80
	ld   hl, sp-$80                                  ; $415c: $f8 $80
	cp   $85                                         ; $415e: $fe $85
	rst  $38                                         ; $4160: $ff
	ld   bc, $aa55                                   ; $4161: $01 $55 $aa
	add  b                                           ; $4164: $80
	ld   d, l                                        ; $4165: $55
	add  b                                           ; $4166: $80
	jp   z, $3180                                    ; $4167: $ca $80 $31

	inc  b                                           ; $416a: $04
	ld   c, $8e                                      ; $416b: $0e $8e
	add  e                                           ; $416d: $83
	db   $e3                                         ; $416e: $e3
	ldh  [$80], a                                    ; $416f: $e0 $80
	ld   hl, sp+$02                                  ; $4171: $f8 $02
	cp   $7c                                         ; $4173: $fe $7c
	add  d                                           ; $4175: $82
	add  b                                           ; $4176: $80
	ld   d, l                                        ; $4177: $55
	add  b                                           ; $4178: $80
	xor  d                                           ; $4179: $aa
	add  b                                           ; $417a: $80
	ld   d, c                                        ; $417b: $51
	add  b                                           ; $417c: $80
	cpl                                              ; $417d: $2f
	add  b                                           ; $417e: $80
	cp   h                                           ; $417f: $bc
	dec  b                                           ; $4180: $05
	ldh  [$e3], a                                    ; $4181: $e0 $e3
	inc  bc                                          ; $4183: $03
	rra                                              ; $4184: $1f
	or   a                                           ; $4185: $b7
	xor  b                                           ; $4186: $a8
	add  b                                           ; $4187: $80
	ld   b, b                                        ; $4188: $40
	add  b                                           ; $4189: $80
	rrca                                             ; $418a: $0f
	add  b                                           ; $418b: $80
	db   $fc                                         ; $418c: $fc
	add  b                                           ; $418d: $80
	ldh  [rP1], a                                    ; $418e: $e0 $00
	nop                                              ; $4190: $00
	add  b                                           ; $4191: $80
	rra                                              ; $4192: $1f
	add  d                                           ; $4193: $82
	rst  $38                                         ; $4194: $ff
	nop                                              ; $4195: $00
	nop                                              ; $4196: $00
	add  b                                           ; $4197: $80
	ld   a, a                                        ; $4198: $7f
	add  b                                           ; $4199: $80
	ldh  [$80], a                                    ; $419a: $e0 $80
	inc  bc                                          ; $419c: $03
	add  b                                           ; $419d: $80
	rrca                                             ; $419e: $0f
	add  b                                           ; $419f: $80
	ldh  [$80], a                                    ; $41a0: $e0 $80
	rrca                                             ; $41a2: $0f
	add  b                                           ; $41a3: $80
	nop                                              ; $41a4: $00
	ld   b, $03                                      ; $41a5: $06 $03
	nop                                              ; $41a7: $00
	ldh  a, [$fc]                                    ; $41a8: $f0 $fc
	dec  c                                           ; $41aa: $0d
	add  hl, bc                                      ; $41ab: $09
	adc  c                                           ; $41ac: $89
	add  c                                           ; $41ad: $81
	ld   [$6201], a                                  ; $41ae: $ea $01 $62
	ld   a, [bc]                                     ; $41b1: $0a
	add  b                                           ; $41b2: $80
	ei                                               ; $41b3: $fb
	add  b                                           ; $41b4: $80
	nop                                              ; $41b5: $00
	ld   b, $87                                      ; $41b6: $06 $87
	ld   b, b                                        ; $41b8: $40
	ld   b, a                                        ; $41b9: $47
	ld   e, a                                        ; $41ba: $5f
	rst  JumpTable                                         ; $41bb: $df
	ret  nz                                          ; $41bc: $c0

	pop  bc                                          ; $41bd: $c1
	add  b                                           ; $41be: $80
	rra                                              ; $41bf: $1f
	ld   c, $ff                                      ; $41c0: $0e $ff
	cp   $00                                         ; $41c2: $fe $00
	ldh  [rIE], a                                    ; $41c4: $e0 $ff
	rra                                              ; $41c6: $1f
	nop                                              ; $41c7: $00
	ld   hl, sp+$06                                  ; $41c8: $f8 $06
	cp   $fc                                         ; $41ca: $fe $fc
	inc  e                                           ; $41cc: $1c
	ld   d, b                                        ; $41cd: $50
	jr   jr_078_422f                                 ; $41ce: $18 $5f

	add  b                                           ; $41d0: $80
	rra                                              ; $41d1: $1f
	nop                                              ; $41d2: $00
	rst  $30                                         ; $41d3: $f7
	add  b                                           ; $41d4: $80
	nop                                              ; $41d5: $00
	add  b                                           ; $41d6: $80
	rst  $38                                         ; $41d7: $ff
	rlca                                             ; $41d8: $07
	nop                                              ; $41d9: $00
	inc  e                                           ; $41da: $1c
	ld   [bc], a                                     ; $41db: $02
	ld   c, $ee                                      ; $41dc: $0e $ee
	cp   $00                                         ; $41de: $fe $00
	ld   [$ea81], sp                                 ; $41e0: $08 $81 $ea
	inc  b                                           ; $41e3: $04
	add  sp, $0a                                     ; $41e4: $e8 $0a
	dec  sp                                          ; $41e6: $3b
	ei                                               ; $41e7: $fb
	ret  nz                                          ; $41e8: $c0

	add  c                                           ; $41e9: $81
	nop                                              ; $41ea: $00
	add  hl, bc                                      ; $41eb: $09
	ld   a, a                                        ; $41ec: $7f
	rst  $38                                         ; $41ed: $ff
	add  e                                           ; $41ee: $83
	inc  bc                                          ; $41ef: $03
	nop                                              ; $41f0: $00
	ldh  [$e8], a                                    ; $41f1: $e0 $e8
	ld   hl, sp-$0f                                  ; $41f3: $f8 $f1
	ld   bc, $fc80                                   ; $41f5: $01 $80 $fc
	add  b                                           ; $41f8: $80
	nop                                              ; $41f9: $00
	add  b                                           ; $41fa: $80
	ld   a, [hl+]                                    ; $41fb: $2a
	add  b                                           ; $41fc: $80
	add  l                                           ; $41fd: $85
	add  b                                           ; $41fe: $80

jr_078_41ff:
	db   $fc                                         ; $41ff: $fc
	add  b                                           ; $4200: $80
	ccf                                              ; $4201: $3f
	add  b                                           ; $4202: $80
	nop                                              ; $4203: $00
	ld   bc, $ffc0                                   ; $4204: $01 $c0 $ff
	add  d                                           ; $4207: $82
	ccf                                              ; $4208: $3f
	ld   bc, $a29d                                   ; $4209: $01 $9d $a2

jr_078_420c:
	add  b                                           ; $420c: $80
	ld   d, h                                        ; $420d: $54
	add  b                                           ; $420e: $80
	xor  d                                           ; $420f: $aa
	add  b                                           ; $4210: $80
	ldh  [$80], a                                    ; $4211: $e0 $80
	cp   $80                                         ; $4213: $fe $80
	rlca                                             ; $4215: $07
	nop                                              ; $4216: $00
	nop                                              ; $4217: $00
	add  b                                           ; $4218: $80
	ld   hl, sp+$02                                  ; $4219: $f8 $02

jr_078_421b:
	rst  $38                                         ; $421b: $ff
	ld   a, a                                        ; $421c: $7f
	add  b                                           ; $421d: $80
	add  b                                           ; $421e: $80
	dec  d                                           ; $421f: $15
	add  b                                           ; $4220: $80
	xor  b                                           ; $4221: $a8
	add  b                                           ; $4222: $80
	ld   b, e                                        ; $4223: $43
	add  b                                           ; $4224: $80
	inc  e                                           ; $4225: $1c
	add  b                                           ; $4226: $80
	pop  hl                                          ; $4227: $e1
	add  b                                           ; $4228: $80
	rrca                                             ; $4229: $0f
	add  b                                           ; $422a: $80
	ld   [$ff00], sp                                 ; $422b: $08 $00 $ff
	adc  l                                           ; $422e: $8d

jr_078_422f:
	ld   bc, $a100                                   ; $422f: $01 $00 $a1
	adc  b                                           ; $4232: $88
	ldh  [$80], a                                    ; $4233: $e0 $80
	rst  $38                                         ; $4235: $ff
	add  c                                           ; $4236: $81
	ldh  [rSC], a                                    ; $4237: $e0 $02
	ld   e, a                                        ; $4239: $5f
	add  b                                           ; $423a: $80
	sbc  b                                           ; $423b: $98
	add  a                                           ; $423c: $87
	add  b                                           ; $423d: $80
	inc  b                                           ; $423e: $04

jr_078_423f:
	cp   b                                           ; $423f: $b8
	ret  nz                                          ; $4240: $c0

	ld   hl, sp-$80                                  ; $4241: $f8 $80
	ld   a, b                                        ; $4243: $78
	sbc  [hl]                                        ; $4244: $9e
	rst  $38                                         ; $4245: $ff

jr_078_4246:
	add  l                                           ; $4246: $85
	ld   a, a                                        ; $4247: $7f
	ld   bc, $7f7e                                   ; $4248: $01 $7e $7f
	add  b                                           ; $424b: $80
	rst  $38                                         ; $424c: $ff
	nop                                              ; $424d: $00
	cp   $81                                         ; $424e: $fe $81
	rst  $38                                         ; $4250: $ff
	nop                                              ; $4251: $00
	ld   a, a                                        ; $4252: $7f
	add  b                                           ; $4253: $80
	sbc  a                                           ; $4254: $9f
	add  b                                           ; $4255: $80
	ld   l, a                                        ; $4256: $6f
	add  b                                           ; $4257: $80
	cp   a                                           ; $4258: $bf
	add  c                                           ; $4259: $81
	sbc  a                                           ; $425a: $9f
	ld   [bc], a                                     ; $425b: $02
	rra                                              ; $425c: $1f
	sbc  a                                           ; $425d: $9f
	rra                                              ; $425e: $1f
	add  c                                           ; $425f: $81
	rst  $38                                         ; $4260: $ff
	inc  bc                                          ; $4261: $03
	inc  h                                           ; $4262: $24
	jp   nz, $c1c4                                   ; $4263: $c2 $c4 $c1

	add  b                                           ; $4266: $80
	jp   nz, $c105                                   ; $4267: $c2 $05 $c1

	call nz, $c8c2                                   ; $426a: $c4 $c2 $c8
	call nz, $80d0                                   ; $426d: $c4 $d0 $80
	ret  z                                           ; $4270: $c8

	dec  bc                                          ; $4271: $0b
	ret  nc                                          ; $4272: $d0

	push bc                                          ; $4273: $c5
	xor  e                                           ; $4274: $ab
	adc  b                                           ; $4275: $88
	ld   c, c                                        ; $4276: $49
	ld   [$8889], sp                                 ; $4277: $08 $89 $88
	ld   [$8858], sp                                 ; $427a: $08 $58 $88
	jr   z, jr_078_41ff                              ; $427d: $28 $80

	ld   e, b                                        ; $427f: $58

Jump_078_4280:
	rra                                              ; $4280: $1f
	jr   z, jr_078_420c                              ; $4281: $28 $89

	ld   e, b                                        ; $4283: $58
	ld   [$050d], sp                                 ; $4284: $08 $0d $05
	add  d                                           ; $4287: $82
	adc  b                                           ; $4288: $88

Jump_078_4289:
	dec  b                                           ; $4289: $05
	ld   d, b                                        ; $428a: $50
	adc  b                                           ; $428b: $88
	jr   nz, jr_078_42de                             ; $428c: $20 $50

	ld   d, c                                        ; $428e: $51
	jr   nz, jr_078_421b                             ; $428f: $20 $8a

	ld   d, c                                        ; $4291: $51
	inc  b                                           ; $4292: $04
	adc  d                                           ; $4293: $8a
	ld   a, [bc]                                     ; $4294: $0a
	inc  b                                           ; $4295: $04
	ld   de, $a00a                                   ; $4296: $11 $0a $a0
	ld   de, $a041                                   ; $4299: $11 $41 $a0
	and  d                                           ; $429c: $a2
	ld   b, c                                        ; $429d: $41
	inc  d                                           ; $429e: $14
	and  d                                           ; $429f: $a2
	ld   [$1480], sp                                 ; $42a0: $08 $80 $14
	dec  bc                                          ; $42a3: $0b
	ld   [$1022], sp                                 ; $42a4: $08 $22 $10
	ld   c, b                                        ; $42a7: $48
	add  hl, hl                                      ; $42a8: $29
	adc  b                                           ; $42a9: $88
	ld   c, c                                        ; $42aa: $49
	ld   c, b                                        ; $42ab: $48
	adc  b                                           ; $42ac: $88
	jr   z, jr_078_42f7                              ; $42ad: $28 $48

	jr   @-$7e                                       ; $42af: $18 $80

	jr   z, jr_078_42bc                              ; $42b1: $28 $09

	jr   jr_078_42fe                                 ; $42b3: $18 $49

	jr   z, jr_078_423f                              ; $42b5: $28 $88

	ld   c, h                                        ; $42b7: $4c
	ld   b, h                                        ; $42b8: $44
	add  d                                           ; $42b9: $82
	jr   z, jr_078_4300                              ; $42ba: $28 $44

jr_078_42bc:
	db   $10                                         ; $42bc: $10
	add  b                                           ; $42bd: $80
	jr   z, jr_078_42c8                              ; $42be: $28 $08

	db   $10                                         ; $42c0: $10
	ld   b, h                                        ; $42c1: $44
	jr   z, jr_078_4246                              ; $42c2: $28 $82

	ld   b, h                                        ; $42c4: $44
	inc  b                                           ; $42c5: $04
	add  d                                           ; $42c6: $82
	adc  b                                           ; $42c7: $88

jr_078_42c8:
	or   d                                           ; $42c8: $b2
	add  b                                           ; $42c9: $80
	db   $fc                                         ; $42ca: $fc
	add  b                                           ; $42cb: $80
	ei                                               ; $42cc: $fb
	add  b                                           ; $42cd: $80
	cp   $84                                         ; $42ce: $fe $84
	db   $fc                                         ; $42d0: $fc
	add  c                                           ; $42d1: $81
	rst  $38                                         ; $42d2: $ff
	nop                                              ; $42d3: $00
	ccf                                              ; $42d4: $3f
	add  b                                           ; $42d5: $80
	rst  $38                                         ; $42d6: $ff
	add  b                                           ; $42d7: $80
	ld   a, a                                        ; $42d8: $7f
	add  c                                           ; $42d9: $81
	rst  $38                                         ; $42da: $ff
	inc  b                                           ; $42db: $04
	cp   a                                           ; $42dc: $bf
	rst  $38                                         ; $42dd: $ff

jr_078_42de:
	ld   a, a                                        ; $42de: $7f
	rst  $38                                         ; $42df: $ff
	ccf                                              ; $42e0: $3f
	add  c                                           ; $42e1: $81
	rst  $38                                         ; $42e2: $ff
	ld   bc, $8c73                                   ; $42e3: $01 $73 $8c
	adc  b                                           ; $42e6: $88
	call z, $cf80                                    ; $42e7: $cc $80 $cf
	add  b                                           ; $42ea: $80
	db   $fc                                         ; $42eb: $fc
	nop                                              ; $42ec: $00
	rst  $38                                         ; $42ed: $ff
	adc  l                                           ; $42ee: $8d
	ld   bc, $a100                                   ; $42ef: $01 $00 $a1
	add  [hl]                                        ; $42f2: $86
	ldh  [$80], a                                    ; $42f3: $e0 $80
	rst  $38                                         ; $42f5: $ff
	add  e                                           ; $42f6: $83

jr_078_42f7:
	ldh  [rP1], a                                    ; $42f7: $e0 $00
	ld   b, a                                        ; $42f9: $47
	add  l                                           ; $42fa: $85
	add  b                                           ; $42fb: $80
	ld   [bc], a                                     ; $42fc: $02
	sbc  b                                           ; $42fd: $98

jr_078_42fe:
	ldh  [$f8], a                                    ; $42fe: $e0 $f8

jr_078_4300:
	add  e                                           ; $4300: $83
	add  b                                           ; $4301: $80
	nop                                              ; $4302: $00
	ld   a, b                                        ; $4303: $78
	add  h                                           ; $4304: $84
	rst  $38                                         ; $4305: $ff
	add  b                                           ; $4306: $80
	cp   $80                                         ; $4307: $fe $80

jr_078_4309:
	ld   hl, sp-$80                                  ; $4309: $f8 $80
	ldh  a, [$81]                                    ; $430b: $f0 $81
	rst  $38                                         ; $430d: $ff
	rlca                                             ; $430e: $07
	ld   bc, $080e                                   ; $430f: $01 $0e $08
	jr   jr_078_4325                                 ; $4312: $18 $11

	db   $10                                         ; $4314: $10
	rst  $20                                         ; $4315: $e7
	nop                                              ; $4316: $00
	add  b                                           ; $4317: $80
	jr   c, jr_078_4325                              ; $4318: $38 $0b

	ld   a, d                                        ; $431a: $7a
	ld   a, h                                        ; $431b: $7c

jr_078_431c:
	jp   $06c2                                       ; $431c: $c3 $c2 $06


	rlca                                             ; $431f: $07
	ccf                                              ; $4320: $3f
	inc  a                                           ; $4321: $3c
	inc  e                                           ; $4322: $1c
	ld   e, $20                                      ; $4323: $1e $20

jr_078_4325:
	ld   hl, $0180                                   ; $4325: $21 $80 $01
	dec  c                                           ; $4328: $0d
	jr   c, jr_078_434b                              ; $4329: $38 $20

jr_078_432b:
	rst  ToBoot                                         ; $432b: $c7
	db   $10                                         ; $432c: $10
	inc  a                                           ; $432d: $3c
	ld   [hl], b                                     ; $432e: $70
	call Call_078_784e                               ; $432f: $cd $4e $78
	rst  $38                                         ; $4332: $ff
	ld   a, e                                        ; $4333: $7b
	rst  $38                                         ; $4334: $ff
	push de                                          ; $4335: $d5
	rst  $10                                         ; $4336: $d7
	add  b                                           ; $4337: $80
	rlc  c                                           ; $4338: $cb $01
	add  e                                           ; $433a: $83
	add  d                                           ; $433b: $82
	add  b                                           ; $433c: $80
	jp   nz, $9680                                   ; $433d: $c2 $80 $96

	inc  bc                                          ; $4340: $03
	ld   l, h                                        ; $4341: $6c
	ld   l, l                                        ; $4342: $6d
	db   $db                                         ; $4343: $db
	jp   nz, $c580                                   ; $4344: $c2 $80 $c5

	inc  c                                           ; $4347: $0c
	jp   nz, $c4c8                                   ; $4348: $c2 $c8 $c4

jr_078_434b:
	pop  de                                          ; $434b: $d1
	ret                                              ; $434c: $c9


	pop  bc                                          ; $434d: $c1
	ld   [hl], b                                     ; $434e: $70
	ld   h, b                                        ; $434f: $60
	ld   b, b                                        ; $4350: $40
	ld   [hl], c                                     ; $4351: $71
	and  b                                           ; $4352: $a0
	xor  d                                           ; $4353: $aa
	xor  h                                           ; $4354: $ac
	add  c                                           ; $4355: $81
	ld   l, b                                        ; $4356: $68
	nop                                              ; $4357: $00
	pop  hl                                          ; $4358: $e1
	add  b                                           ; $4359: $80
	ldh  a, [$80]                                    ; $435a: $f0 $80
	ld   hl, sp+$12                                  ; $435c: $f8 $12
	ld   sp, hl                                      ; $435e: $f9
	ld   a, b                                        ; $435f: $78
	add  b                                           ; $4360: $80
	ld   b, c                                        ; $4361: $41
	jr   z, @-$56                                    ; $4362: $28 $a8

	jr   z, @+$1e                                    ; $4364: $28 $1c

	ld   de, $a00a                                   ; $4366: $11 $0a $a0
	ld   de, $a041                                   ; $4369: $11 $41 $a0
	and  d                                           ; $436c: $a2
	ld   b, c                                        ; $436d: $41
	inc  d                                           ; $436e: $14
	and  d                                           ; $436f: $a2
	ld   [$1480], sp                                 ; $4370: $08 $80 $14
	dec  bc                                          ; $4373: $0b
	ld   [$1422], sp                                 ; $4374: $08 $22 $14
	ld   b, c                                        ; $4377: $41
	ld   [hl+], a                                    ; $4378: $22
	add  d                                           ; $4379: $82
	ld   b, c                                        ; $437a: $41
	ld   b, h                                        ; $437b: $44
	add  d                                           ; $437c: $82
	jr   z, jr_078_43c3                              ; $437d: $28 $44

	db   $10                                         ; $437f: $10
	add  b                                           ; $4380: $80
	jr   z, jr_078_4388                              ; $4381: $28 $05

	db   $10                                         ; $4383: $10
	ld   b, l                                        ; $4384: $45
	jr   z, jr_078_4309                              ; $4385: $28 $82

	ld   b, c                                        ; $4387: $41

jr_078_4388:
	ld   [$8880], sp                                 ; $4388: $08 $80 $88
	rrca                                             ; $438b: $0f
	ld   [$8858], sp                                 ; $438c: $08 $58 $88
	jr   z, @+$5a                                    ; $438f: $28 $58

	ld   c, c                                        ; $4391: $49
	jr   c, jr_078_431c                              ; $4392: $38 $88

	ld   c, b                                        ; $4394: $48
	add  hl, de                                      ; $4395: $19
	ld   hl, sp+$28                                  ; $4396: $f8 $28
	rst  $10                                         ; $4398: $d7
	ld   d, b                                        ; $4399: $50
	adc  b                                           ; $439a: $88
	jr   nz, @-$7e                                   ; $439b: $20 $80

	ld   d, b                                        ; $439d: $50
	ld   a, [bc]                                     ; $439e: $0a
	jr   nz, jr_078_432b                             ; $439f: $20 $8a

	ld   d, b                                        ; $43a1: $50
	inc  b                                           ; $43a2: $04
	adc  d                                           ; $43a3: $8a
	ld   a, [bc]                                     ; $43a4: $0a
	add  h                                           ; $43a5: $84
	sub  b                                           ; $43a6: $90
	jp   z, $8e60                                    ; $43a7: $ca $60 $8e

	adc  l                                           ; $43aa: $8d
	rst  $38                                         ; $43ab: $ff
	ld   bc, $ff3e                                   ; $43ac: $01 $3e $ff
	add  c                                           ; $43af: $81
	cp   $89                                         ; $43b0: $fe $89
	rst  $38                                         ; $43b2: $ff
	inc  b                                           ; $43b3: $04
	ld   a, $c1                                      ; $43b4: $3e $c1
	inc  c                                           ; $43b6: $0c
	dec  c                                           ; $43b7: $0d
	push bc                                          ; $43b8: $c5
	add  e                                           ; $43b9: $83
	call $c901                                       ; $43ba: $cd $01 $c9
	ret  nz                                          ; $43bd: $c0

	add  b                                           ; $43be: $80
	inc  bc                                          ; $43bf: $03
	add  b                                           ; $43c0: $80
	sbc  h                                           ; $43c1: $9c
	nop                                              ; $43c2: $00

jr_078_43c3:
	rst  $38                                         ; $43c3: $ff
	adc  l                                           ; $43c4: $8d
	ld   bc, $a100                                   ; $43c5: $01 $00 $a1
	add  d                                           ; $43c8: $82
	ldh  [$80], a                                    ; $43c9: $e0 $80
	rst  $38                                         ; $43cb: $ff
	add  e                                           ; $43cc: $83
	ldh  [$81], a                                    ; $43cd: $e0 $81
	rst  $38                                         ; $43cf: $ff
	ld   bc, $58e0                                   ; $43d0: $01 $e0 $58
	add  c                                           ; $43d3: $81
	add  b                                           ; $43d4: $80
	ld   [bc], a                                     ; $43d5: $02
	sbc  b                                           ; $43d6: $98
	ldh  [$f8], a                                    ; $43d7: $e0 $f8
	add  b                                           ; $43d9: $80
	add  b                                           ; $43da: $80
	ld   [de], a                                     ; $43db: $12
	add  c                                           ; $43dc: $81
	ld   sp, hl                                      ; $43dd: $f9
	cp   $7f                                         ; $43de: $fe $7f
	add  c                                           ; $43e0: $81
	ld   [hl], c                                     ; $43e1: $71
	pop  af                                          ; $43e2: $f1
	cp   $00                                         ; $43e3: $fe $00
	ld   b, $00                                      ; $43e5: $06 $00
	ld   [$f300], sp                                 ; $43e7: $08 $00 $f3
	nop                                              ; $43ea: $00
	rst  $38                                         ; $43eb: $ff
	nop                                              ; $43ec: $00
	rst  $38                                         ; $43ed: $ff
	inc  bc                                          ; $43ee: $03
	add  b                                           ; $43ef: $80
	di                                               ; $43f0: $f3
	add  b                                           ; $43f1: $80
	rst  $38                                         ; $43f2: $ff
	add  b                                           ; $43f3: $80
	ld   c, $80                                      ; $43f4: $0e $80
	sbc  b                                           ; $43f6: $98
	rlca                                             ; $43f7: $07
	inc  sp                                          ; $43f8: $33
	inc  de                                          ; $43f9: $13
	rst  $10                                         ; $43fa: $d7
	rla                                              ; $43fb: $17
	db   $fc                                         ; $43fc: $fc
	inc  c                                           ; $43fd: $0c
	db   $e3                                         ; $43fe: $e3
	di                                               ; $43ff: $f3
	add  b                                           ; $4400: $80
	ei                                               ; $4401: $fb
	add  b                                           ; $4402: $80
	ld   hl, sp-$80                                  ; $4403: $f8 $80
	inc  bc                                          ; $4405: $03
	dec  b                                           ; $4406: $05
	add  hl, sp                                      ; $4407: $39
	ld   bc, $98e0                                   ; $4408: $01 $e0 $98
	rst  $38                                         ; $440b: $ff
	cp   h                                           ; $440c: $bc
	add  b                                           ; $440d: $80
	inc  c                                           ; $440e: $0c
	ld   [$86c5], sp                                 ; $440f: $08 $c5 $86
	jp   nz, $8002                                   ; $4412: $c2 $02 $80

	nop                                              ; $4415: $00
	ld   a, b                                        ; $4416: $78
	rst  $38                                         ; $4417: $ff
	add  a                                           ; $4418: $87
	add  b                                           ; $4419: $80
	ld   a, b                                        ; $441a: $78
	add  b                                           ; $441b: $80
	inc  a                                           ; $441c: $3c
	ld   [bc], a                                     ; $441d: $02
	cp   h                                           ; $441e: $bc
	ld   b, e                                        ; $441f: $43
	rst  $38                                         ; $4420: $ff
	add  d                                           ; $4421: $82
	add  b                                           ; $4422: $80
	add  b                                           ; $4423: $80
	sbc  b                                           ; $4424: $98
	rlca                                             ; $4425: $07
	add  l                                           ; $4426: $85
	and  h                                           ; $4427: $a4
	ld   a, [hl+]                                    ; $4428: $2a
	ld   [$080a], sp                                 ; $4429: $08 $0a $08
	rrca                                             ; $442c: $0f
	ld   c, $80                                      ; $442d: $0e $80
	ld   hl, sp+$03                                  ; $442f: $f8 $03
	nop                                              ; $4431: $00
	ld   bc, $0607                                   ; $4432: $01 $07 $06
	add  b                                           ; $4435: $80
	add  $08                                         ; $4436: $c6 $08
	ret                                              ; $4438: $c9


	add  hl, hl                                      ; $4439: $29
	jr   z, jr_078_4474                              ; $443a: $28 $38

	ld   a, c                                        ; $443c: $79
	add  hl, hl                                      ; $443d: $29
	xor  b                                           ; $443e: $a8
	ld   l, b                                        ; $443f: $68
	ld   l, c                                        ; $4440: $69
	add  b                                           ; $4441: $80
	xor  b                                           ; $4442: $a8
	add  b                                           ; $4443: $80
	ld   l, b                                        ; $4444: $68
	inc  c                                           ; $4445: $0c
	jr   z, jr_078_4471                              ; $4446: $28 $29

	jr   c, @-$11                                    ; $4448: $38 $ed

	ld   b, c                                        ; $444a: $41
	ld   [hl+], a                                    ; $444b: $22
	add  d                                           ; $444c: $82
	ld   b, c                                        ; $444d: $41
	ld   b, h                                        ; $444e: $44
	add  d                                           ; $444f: $82
	jr   z, jr_078_449f                              ; $4450: $28 $4d

	ld   e, $81                                      ; $4452: $1e $81
	dec  hl                                          ; $4454: $2b
	ld   c, $6b                                      ; $4455: $0e $6b
	ld   a, [hl+]                                    ; $4457: $2a
	xor  d                                           ; $4458: $aa
	ld   a, h                                        ; $4459: $7c
	nop                                              ; $445a: $00
	add  b                                           ; $445b: $80
	add  l                                           ; $445c: $85
	inc  bc                                          ; $445d: $03
	ld   c, b                                        ; $445e: $48
	add  h                                           ; $445f: $84
	ld   sp, $4048                                   ; $4460: $31 $48 $40
	adc  a                                           ; $4463: $8f
	nop                                              ; $4464: $00
	add  b                                           ; $4465: $80
	ld   a, $80                                      ; $4466: $3e $80
	ld   a, a                                        ; $4468: $7f
	inc  c                                           ; $4469: $0c
	add  h                                           ; $446a: $84
	ld   e, c                                        ; $446b: $59
	db   $dd                                         ; $446c: $dd
	rst  $28                                         ; $446d: $ef
	ld   e, h                                        ; $446e: $5c
	ld   b, b                                        ; $446f: $40
	ld   [hl], e                                     ; $4470: $73

jr_078_4471:
	ld   l, l                                        ; $4471: $6d
	xor  h                                           ; $4472: $ac
	ret  c                                           ; $4473: $d8

jr_078_4474:
	sbc  h                                           ; $4474: $9c
	ld   b, l                                        ; $4475: $45
	ld   b, c                                        ; $4476: $41
	add  b                                           ; $4477: $80
	add  b                                           ; $4478: $80
	inc  c                                           ; $4479: $0c
	ld   bc, $c01e                                   ; $447a: $01 $1e $c0
	ldh  [hScriptOpcodeParams], a                                    ; $447d: $e0 $a0
	nop                                              ; $447f: $00
	jp   nc, $a0cc                                   ; $4480: $d2 $cc $a0

	inc  a                                           ; $4483: $3c
	sbc  h                                           ; $4484: $9c
	xor  d                                           ; $4485: $aa
	ld   a, [hl+]                                    ; $4486: $2a
	add  d                                           ; $4487: $82
	xor  d                                           ; $4488: $aa
	nop                                              ; $4489: $00
	ret  nz                                          ; $448a: $c0

	add  e                                           ; $448b: $83
	rst  $38                                         ; $448c: $ff
	nop                                              ; $448d: $00
	cp   [hl]                                        ; $448e: $be

jr_078_448f:
	add  c                                           ; $448f: $81
	add  c                                           ; $4490: $81
	add  b                                           ; $4491: $80
	add  b                                           ; $4492: $80
	add  b                                           ; $4493: $80
	sbc  a                                           ; $4494: $9f
	add  b                                           ; $4495: $80
	cp   a                                           ; $4496: $bf
	nop                                              ; $4497: $00
	nop                                              ; $4498: $00
	add  c                                           ; $4499: $81
	rst  $38                                         ; $449a: $ff
	ld   [bc], a                                     ; $449b: $02
	ld   d, a                                        ; $449c: $57
	xor  a                                           ; $449d: $af
	ld   d, e                                        ; $449e: $53

jr_078_449f:
	add  e                                           ; $449f: $83
	ld   d, h                                        ; $44a0: $54
	add  b                                           ; $44a1: $80
	inc  d                                           ; $44a2: $14
	add  b                                           ; $44a3: $80
	sub  l                                           ; $44a4: $95
	adc  h                                           ; $44a5: $8c
	sub  b                                           ; $44a6: $90
	add  b                                           ; $44a7: $80
	stop                                             ; $44a8: $10 $00
	rst  $38                                         ; $44aa: $ff
	add  b                                           ; $44ab: $80
	ld   bc, $0702                                   ; $44ac: $01 $02 $07
	ld   b, $0e                                      ; $44af: $06 $0e
	add  b                                           ; $44b1: $80
	nop                                              ; $44b2: $00
	add  [hl]                                        ; $44b3: $86
	ld   a, [bc]                                     ; $44b4: $0a
	ld   bc, $17e7                                   ; $44b5: $01 $e7 $17
	add  b                                           ; $44b8: $80
	sbc  a                                           ; $44b9: $9f
	add  b                                           ; $44ba: $80
	ld   c, a                                        ; $44bb: $4f
	add  b                                           ; $44bc: $80
	add  a                                           ; $44bd: $87
	add  b                                           ; $44be: $80
	sbc  d                                           ; $44bf: $9a
	add  b                                           ; $44c0: $80
	sbc  c                                           ; $44c1: $99
	add  b                                           ; $44c2: $80
	sbc  [hl]                                        ; $44c3: $9e
	add  b                                           ; $44c4: $80
	sbc  a                                           ; $44c5: $9f
	add  b                                           ; $44c6: $80
	db   $fd                                         ; $44c7: $fd
	add  b                                           ; $44c8: $80
	rst  $38                                         ; $44c9: $ff
	add  b                                           ; $44ca: $80
	cp   $80                                         ; $44cb: $fe $80
	ld   a, [$1080]                                  ; $44cd: $fa $80 $10
	add  d                                           ; $44d0: $82
	nop                                              ; $44d1: $00
	add  b                                           ; $44d2: $80
	sub  b                                           ; $44d3: $90
	add  b                                           ; $44d4: $80
	db   $fd                                         ; $44d5: $fd
	add  b                                           ; $44d6: $80
	ld   sp, hl                                      ; $44d7: $f9
	add  b                                           ; $44d8: $80
	ldh  a, [$80]                                    ; $44d9: $f0 $80
	ldh  [$84], a                                    ; $44db: $e0 $84
	nop                                              ; $44dd: $00
	add  b                                           ; $44de: $80
	ld   b, $80                                      ; $44df: $06 $80
	ldh  [$80], a                                    ; $44e1: $e0 $80
	add  h                                           ; $44e3: $84
	add  b                                           ; $44e4: $80
	inc  b                                           ; $44e5: $04
	add  b                                           ; $44e6: $80
	inc  bc                                          ; $44e7: $03
	add  b                                           ; $44e8: $80
	rst  $38                                         ; $44e9: $ff
	add  b                                           ; $44ea: $80
	nop                                              ; $44eb: $00
	add  d                                           ; $44ec: $82
	ld   a, a                                        ; $44ed: $7f
	add  h                                           ; $44ee: $84
	nop                                              ; $44ef: $00
	add  b                                           ; $44f0: $80
	ldh  a, [$80]                                    ; $44f1: $f0 $80
	ld   hl, sp-$80                                  ; $44f3: $f8 $80
	ld   e, b                                        ; $44f5: $58
	add  b                                           ; $44f6: $80
	ld   d, b                                        ; $44f7: $50
	add  b                                           ; $44f8: $80
	ld   c, b                                        ; $44f9: $48
	add  [hl]                                        ; $44fa: $86
	sbc  b                                           ; $44fb: $98
	add  b                                           ; $44fc: $80
	rst  $38                                         ; $44fd: $ff
	add  b                                           ; $44fe: $80

Call_078_44ff:
	add  b                                           ; $44ff: $80
	add  d                                           ; $4500: $82
	nop                                              ; $4501: $00
	add  [hl]                                        ; $4502: $86
	add  $80                                         ; $4503: $c6 $80
	db   $fc                                         ; $4505: $fc
	add  d                                           ; $4506: $82
	nop                                              ; $4507: $00
	ld   [bc], a                                     ; $4508: $02
	db   $10                                         ; $4509: $10
	rra                                              ; $450a: $1f
	rlca                                             ; $450b: $07
	add  e                                           ; $450c: $83
	jr   z, jr_078_448f                              ; $450d: $28 $80

	jr   nz, @+$06                                   ; $450f: $20 $04

	jr   nc, jr_078_4583                             ; $4511: $30 $70

	ld   l, b                                        ; $4513: $68
	ld   hl, sp-$10                                  ; $4514: $f8 $f0
	add  b                                           ; $4516: $80
	nop                                              ; $4517: $00
	dec  b                                           ; $4518: $05
	ret  nz                                          ; $4519: $c0

	ld   l, d                                        ; $451a: $6a
	xor  d                                           ; $451b: $aa
	ld   hl, $3f2f                                   ; $451c: $21 $2f $3f
	add  b                                           ; $451f: $80
	ld   a, a                                        ; $4520: $7f
	add  d                                           ; $4521: $82
	rst  $38                                         ; $4522: $ff
	ld   bc, $4f7f                                   ; $4523: $01 $7f $4f
	add  c                                           ; $4526: $81
	ld   bc, $9880                                   ; $4527: $01 $80 $98
	dec  b                                           ; $452a: $05
	jr   jr_078_4568                                 ; $452b: $18 $3b

	jr   jr_078_4587                                 ; $452d: $18 $58

	ld   e, $3c                                      ; $452f: $1e $3c
	add  b                                           ; $4531: $80
	ld   h, h                                        ; $4532: $64
	nop                                              ; $4533: $00
	ld   h, l                                        ; $4534: $65
	add  b                                           ; $4535: $80
	ld   l, l                                        ; $4536: $6d
	add  c                                           ; $4537: $81
	inc  h                                           ; $4538: $24
	nop                                              ; $4539: $00
	adc  c                                           ; $453a: $89
	add  b                                           ; $453b: $80
	add  l                                           ; $453c: $85
	inc  b                                           ; $453d: $04
	or   l                                           ; $453e: $b5
	add  l                                           ; $453f: $85
	adc  l                                           ; $4540: $8d
	adc  c                                           ; $4541: $89
	adc  l                                           ; $4542: $8d
	add  b                                           ; $4543: $80
	add  b                                           ; $4544: $80
	nop                                              ; $4545: $00
	or   b                                           ; $4546: $b0
	add  b                                           ; $4547: $80
	and  b                                           ; $4548: $a0
	add  c                                           ; $4549: $81
	add  b                                           ; $454a: $80
	add  b                                           ; $454b: $80
	xor  d                                           ; $454c: $aa
	ld   bc, $ff80                                   ; $454d: $01 $80 $ff
	add  b                                           ; $4550: $80
	add  c                                           ; $4551: $81
	add  b                                           ; $4552: $80
	nop                                              ; $4553: $00
	add  b                                           ; $4554: $80
	ld   bc, $7f00                                   ; $4555: $01 $00 $7f
	add  b                                           ; $4558: $80
	ccf                                              ; $4559: $3f
	add  c                                           ; $455a: $81
	nop                                              ; $455b: $00
	add  b                                           ; $455c: $80
	call z, $8c00                                    ; $455d: $cc $00 $8c
	add  b                                           ; $4560: $80
	sbc  l                                           ; $4561: $9d
	ld   [bc], a                                     ; $4562: $02
	cp   l                                           ; $4563: $bd
	xor  a                                           ; $4564: $af
	cp   [hl]                                        ; $4565: $be
	add  c                                           ; $4566: $81
	or   d                                           ; $4567: $b2

jr_078_4568:
	add  b                                           ; $4568: $80
	or   [hl]                                        ; $4569: $b6
	add  c                                           ; $456a: $81
	sub  d                                           ; $456b: $92
	add  b                                           ; $456c: $80
	ld   d, b                                        ; $456d: $50
	nop                                              ; $456e: $00
	ld   b, c                                        ; $456f: $41
	add  b                                           ; $4570: $80
	pop  bc                                          ; $4571: $c1
	add  b                                           ; $4572: $80
	reti                                             ; $4573: $d9


	add  c                                           ; $4574: $81
	db   $dd                                         ; $4575: $dd
	nop                                              ; $4576: $00
	rst  JumpTable                                         ; $4577: $df
	add  b                                           ; $4578: $80
	db   $db                                         ; $4579: $db
	nop                                              ; $457a: $00
	ld   b, e                                        ; $457b: $43
	add  b                                           ; $457c: $80

jr_078_457d:
	ld   b, b                                        ; $457d: $40
	add  b                                           ; $457e: $80
	ld   h, b                                        ; $457f: $60
	add  b                                           ; $4580: $80
	inc  e                                           ; $4581: $1c
	add  b                                           ; $4582: $80

jr_078_4583:
	adc  a                                           ; $4583: $8f
	add  d                                           ; $4584: $82
	and  b                                           ; $4585: $a0
	add  b                                           ; $4586: $80

jr_078_4587:
	ld   [$2a80], a                                  ; $4587: $ea $80 $2a
	add  b                                           ; $458a: $80
	ld   [bc], a                                     ; $458b: $02
	nop                                              ; $458c: $00
	ld   hl, sp-$79                                  ; $458d: $f8 $87
	ld   [$0084], sp                                 ; $458f: $08 $84 $00
	ld   bc, $9f6f                                   ; $4592: $01 $6f $9f
	add  b                                           ; $4595: $80
	adc  a                                           ; $4596: $8f
	add  b                                           ; $4597: $80
	sub  a                                           ; $4598: $97
	add  b                                           ; $4599: $80
	add  d                                           ; $459a: $82
	add  b                                           ; $459b: $80
	add  c                                           ; $459c: $81
	add  b                                           ; $459d: $80
	add  b                                           ; $459e: $80
	add  b                                           ; $459f: $80
	nop                                              ; $45a0: $00
	add  b                                           ; $45a1: $80
	adc  d                                           ; $45a2: $8a
	add  b                                           ; $45a3: $80
	db   $e4                                         ; $45a4: $e4
	add  b                                           ; $45a5: $80
	ld   sp, hl                                      ; $45a6: $f9
	add  d                                           ; $45a7: $82
	cp   $80                                         ; $45a8: $fe $80
	ld   e, a                                        ; $45aa: $5f
	add  b                                           ; $45ab: $80
	cpl                                              ; $45ac: $2f
	add  b                                           ; $45ad: $80
	rla                                              ; $45ae: $17
	add  b                                           ; $45af: $80
	xor  a                                           ; $45b0: $af
	add  b                                           ; $45b1: $80
	cp   $80                                         ; $45b2: $fe $80
	ld   a, [hl]                                     ; $45b4: $7e
	add  b                                           ; $45b5: $80
	cp   [hl]                                        ; $45b6: $be
	add  b                                           ; $45b7: $80
	ld   a, $80                                      ; $45b8: $3e $80
	ld   e, b                                        ; $45ba: $58
	add  b                                           ; $45bb: $80
	ld   b, d                                        ; $45bc: $42
	add  b                                           ; $45bd: $80
	inc  d                                           ; $45be: $14
	add  b                                           ; $45bf: $80
	ld   a, [bc]                                     ; $45c0: $0a
	add  b                                           ; $45c1: $80
	ld   a, a                                        ; $45c2: $7f
	add  b                                           ; $45c3: $80
	ld   l, d                                        ; $45c4: $6a
	add  b                                           ; $45c5: $80
	ld   d, c                                        ; $45c6: $51
	add  b                                           ; $45c7: $80
	ld   h, b                                        ; $45c8: $60
	add  b                                           ; $45c9: $80
	ld   b, c                                        ; $45ca: $41
	add  b                                           ; $45cb: $80
	ld   b, b                                        ; $45cc: $40
	add  b                                           ; $45cd: $80
	ld   bc, $2080                                   ; $45ce: $01 $80 $20
	add  b                                           ; $45d1: $80
	ld   d, b                                        ; $45d2: $50
	add  b                                           ; $45d3: $80
	ld   l, b                                        ; $45d4: $68
	add  b                                           ; $45d5: $80
	ld   d, b                                        ; $45d6: $50
	add  c                                           ; $45d7: $81
	ld   b, b                                        ; $45d8: $40
	ld   [bc], a                                     ; $45d9: $02
	ld   e, a                                        ; $45da: $5f
	ld   b, h                                        ; $45db: $44
	ld   e, e                                        ; $45dc: $5b
	add  b                                           ; $45dd: $80
	ld   b, [hl]                                     ; $45de: $46
	add  b                                           ; $45df: $80
	ld   e, h                                        ; $45e0: $5c
	add  l                                           ; $45e1: $85
	nop                                              ; $45e2: $00
	add  b                                           ; $45e3: $80
	ld   bc, $0082                                   ; $45e4: $01 $82 $00
	add  b                                           ; $45e7: $80
	ld   bc, $0301                                   ; $45e8: $01 $01 $03
	inc  a                                           ; $45eb: $3c
	add  b                                           ; $45ec: $80
	ld   h, b                                        ; $45ed: $60
	ld   [bc], a                                     ; $45ee: $02
	ld   [hl], b                                     ; $45ef: $70
	ld   d, b                                        ; $45f0: $50
	rst  JumpTable                                         ; $45f1: $df
	add  b                                           ; $45f2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $45f3: $cf
	nop                                              ; $45f4: $00
	ret  nz                                          ; $45f5: $c0

	add  b                                           ; $45f6: $80
	ld   b, b                                        ; $45f7: $40
	add  e                                           ; $45f8: $83
	ret  nz                                          ; $45f9: $c0

	nop                                              ; $45fa: $00
	jr   nz, jr_078_457d                             ; $45fb: $20 $80

	ld   c, $80                                      ; $45fd: $0e $80
	ld   l, $00                                      ; $45ff: $2e $00
	xor  $80                                         ; $4601: $ee $80
	adc  $00                                         ; $4603: $ce $00
	ld   c, $80                                      ; $4605: $0e $80
	ld   l, $82                                      ; $4607: $2e $82
	ld   c, $01                                      ; $4609: $0e $01
	ld   e, $1f                                      ; $460b: $1e $1f
	add  h                                           ; $460d: $84
	ld   c, e                                        ; $460e: $4b
	add  b                                           ; $460f: $80
	ld   c, c                                        ; $4610: $49
	add  h                                           ; $4611: $84
	ld   b, c                                        ; $4612: $41
	nop                                              ; $4613: $00
	ld   bc, $2482                                   ; $4614: $01 $82 $24
	add  b                                           ; $4617: $80
	inc  a                                           ; $4618: $3c
	add  b                                           ; $4619: $80
	rst  $38                                         ; $461a: $ff
	nop                                              ; $461b: $00
	nop                                              ; $461c: $00
	add  h                                           ; $461d: $84
	add  b                                           ; $461e: $80
	ld   bc, $8000                                   ; $461f: $01 $00 $80
	adc  b                                           ; $4622: $88
	cp   a                                           ; $4623: $bf
	add  e                                           ; $4624: $83
	add  b                                           ; $4625: $80
	nop                                              ; $4626: $00
	nop                                              ; $4627: $00
	add  b                                           ; $4628: $80
	sbc  $04                                         ; $4629: $de $04
	ret  c                                           ; $462b: $d8

	sub  $de                                         ; $462c: $d6 $de
	reti                                             ; $462e: $d9


	db   $dd                                         ; $462f: $dd
	add  c                                           ; $4630: $81
	call c, $0881                                    ; $4631: $dc $81 $08
	add  b                                           ; $4634: $80
	nop                                              ; $4635: $00
	add  d                                           ; $4636: $82
	sub  d                                           ; $4637: $92
	add  b                                           ; $4638: $80
	sbc  [hl]                                        ; $4639: $9e
	add  b                                           ; $463a: $80
	rst  $38                                         ; $463b: $ff
	nop                                              ; $463c: $00
	add  b                                           ; $463d: $80
	add  b                                           ; $463e: $80
	sbc  h                                           ; $463f: $9c
	add  e                                           ; $4640: $83
	add  b                                           ; $4641: $80
	add  b                                           ; $4642: $80
	ld   d, b                                        ; $4643: $50
	nop                                              ; $4644: $00
	ld   b, b                                        ; $4645: $40
	add  c                                           ; $4646: $81
	ld   d, b                                        ; $4647: $50
	ld   bc, $d3d0                                   ; $4648: $01 $d0 $d3
	add  c                                           ; $464b: $81
	ld   d, e                                        ; $464c: $53
	add  d                                           ; $464d: $82
	ld   b, e                                        ; $464e: $43
	ld   [bc], a                                     ; $464f: $02
	ld   b, c                                        ; $4650: $41
	ld   hl, $8120                                   ; $4651: $21 $20 $81
	ld   a, [bc]                                     ; $4654: $0a
	inc  bc                                          ; $4655: $03
	ld   l, d                                        ; $4656: $6a
	ld   h, d                                        ; $4657: $62
	ldh  [c], a                                      ; $4658: $e2
	ldh  [$80], a                                    ; $4659: $e0 $80
	ld   hl, sp-$7d                                  ; $465b: $f8 $83
	rst  $38                                         ; $465d: $ff
	db   $db                                         ; $465e: $db
	ld   bc, $1c02                                   ; $465f: $01 $02 $1c
	db   $ec                                         ; $4662: $ec
	call z, $c481                                    ; $4663: $cc $81 $c4
	rlca                                             ; $4666: $07
	db   $e4                                         ; $4667: $e4
	db   $ec                                         ; $4668: $ec
	add  sp, -$08                                    ; $4669: $e8 $f8
	sub  b                                           ; $466b: $90
	ldh  a, [rBCPS]                                  ; $466c: $f0 $68
	add  sp, -$80                                    ; $466e: $e8 $80
	ld   a, b                                        ; $4670: $78
	nop                                              ; $4671: $00
	rst  $38                                         ; $4672: $ff
	add  l                                           ; $4673: $85
	nop                                              ; $4674: $00
	nop                                              ; $4675: $00
	rrca                                             ; $4676: $0f
	add  l                                           ; $4677: $85
	nop                                              ; $4678: $00
	nop                                              ; $4679: $00
	rrca                                             ; $467a: $0f
	add  l                                           ; $467b: $85
	nop                                              ; $467c: $00
	nop                                              ; $467d: $00
	rst  $38                                         ; $467e: $ff
	add  l                                           ; $467f: $85

jr_078_4680:
	nop                                              ; $4680: $00
	nop                                              ; $4681: $00

jr_078_4682:
	rst  $38                                         ; $4682: $ff
	add  l                                           ; $4683: $85

jr_078_4684:
	nop                                              ; $4684: $00
	ld   [$2fd0], sp                                 ; $4685: $08 $d0 $2f
	ld   c, h                                        ; $4688: $4c
	ld   c, a                                        ; $4689: $4f
	cp   e                                           ; $468a: $bb
	cp   a                                           ; $468b: $bf
	ld   d, h                                        ; $468c: $54
	ld   e, h                                        ; $468d: $5c
	ldh  a, [$85]                                    ; $468e: $f0 $85
	nop                                              ; $4690: $00
	ld   [$ff01], sp                                 ; $4691: $08 $01 $ff
	ld   a, c                                        ; $4694: $79
	rst  $38                                         ; $4695: $ff
	or   h                                           ; $4696: $b4
	db   $fc                                         ; $4697: $fc
	ld   e, b                                        ; $4698: $58
	ld   a, b                                        ; $4699: $78
	db   $10                                         ; $469a: $10
	add  l                                           ; $469b: $85
	nop                                              ; $469c: $00
	inc  bc                                          ; $469d: $03
	ld   l, b                                        ; $469e: $68
	add  sp, $70                                     ; $469f: $e8 $70
	ldh  a, [$80]                                    ; $46a1: $f0 $80
	add  sp, -$80                                    ; $46a3: $e8 $80
	ld   [hl], b                                     ; $46a5: $70
	sub  [hl]                                        ; $46a6: $96
	nop                                              ; $46a7: $00
	ld   [$bfbe], sp                                 ; $46a8: $08 $be $bf
	ld   e, h                                        ; $46ab: $5c
	ld   e, a                                        ; $46ac: $5f
	cp   h                                           ; $46ad: $bc
	cp   a                                           ; $46ae: $bf
	ld   e, h                                        ; $46af: $5c
	ld   e, a                                        ; $46b0: $5f
	ld   [bc], a                                     ; $46b1: $02
	add  l                                           ; $46b2: $85
	nop                                              ; $46b3: $00
	ld   b, $07                                      ; $46b4: $06 $07
	rst  $38                                         ; $46b6: $ff
	ei                                               ; $46b7: $fb
	rst  $38                                         ; $46b8: $ff
	db   $fd                                         ; $46b9: $fd
	rst  $38                                         ; $46ba: $ff
	cp   $80                                         ; $46bb: $fe $80
	rst  $38                                         ; $46bd: $ff
	add  l                                           ; $46be: $85
	nop                                              ; $46bf: $00
	ld   [bc], a                                     ; $46c0: $02
	ld   a, [hl]                                     ; $46c1: $7e
	ld   a, a                                        ; $46c2: $7f
	cp   $83                                         ; $46c3: $fe $83
	rst  $38                                         ; $46c5: $ff
	nop                                              ; $46c6: $00
	rrca                                             ; $46c7: $0f
	adc  l                                           ; $46c8: $8d
	nop                                              ; $46c9: $00
	nop                                              ; $46ca: $00
	ldh  a, [$97]                                    ; $46cb: $f0 $97
	nop                                              ; $46cd: $00
	add  b                                           ; $46ce: $80
	ld   bc, $0280                                   ; $46cf: $01 $80 $02
	add  b                                           ; $46d2: $80
	dec  b                                           ; $46d3: $05
	ld   bc, $bcb3                                   ; $46d4: $01 $b3 $bc
	add  b                                           ; $46d7: $80
	ld   a, h                                        ; $46d8: $7c
	add  b                                           ; $46d9: $80
	cp   a                                           ; $46da: $bf
	inc  bc                                          ; $46db: $03
	ld   d, e                                        ; $46dc: $53
	ld   e, a                                        ; $46dd: $5f
	cp   h                                           ; $46de: $bc
	cp   a                                           ; $46df: $bf
	add  b                                           ; $46e0: $80
	ld   a, a                                        ; $46e1: $7f
	add  d                                           ; $46e2: $82
	rst  $38                                         ; $46e3: $ff
	ld   [$7887], sp                                 ; $46e4: $08 $87 $78
	ld   l, h                                        ; $46e7: $6c
	ld   a, h                                        ; $46e8: $7c
	rst  $10                                         ; $46e9: $d7
	rst  $38                                         ; $46ea: $ff
	cp   e                                           ; $46eb: $bb
	rst  $38                                         ; $46ec: $ff
	ld   a, [hl]                                     ; $46ed: $7e
	add  c                                           ; $46ee: $81
	cp   $05                                         ; $46ef: $fe $05
	and  d                                           ; $46f1: $a2
	cp   $0f                                         ; $46f2: $fe $0f
	rst  $38                                         ; $46f4: $ff
	jr   c, jr_078_475f                              ; $46f5: $38 $68

	add  b                                           ; $46f7: $80
	ldh  a, [$80]                                    ; $46f8: $f0 $80
	add  sp, -$80                                    ; $46fa: $e8 $80
	ldh  a, [$80]                                    ; $46fc: $f0 $80
	jr   z, jr_078_4680                              ; $46fe: $28 $80

	jr   nc, jr_078_4682                             ; $4700: $30 $80

	jr   z, jr_078_4684                              ; $4702: $28 $80

	ldh  a, [rAUD1SWEEP]                             ; $4704: $f0 $10
	cp   [hl]                                        ; $4706: $be
	cp   a                                           ; $4707: $bf
	ld   e, h                                        ; $4708: $5c
	ld   e, a                                        ; $4709: $5f
	cp   h                                           ; $470a: $bc
	cp   a                                           ; $470b: $bf
	ld   e, h                                        ; $470c: $5c
	ld   e, a                                        ; $470d: $5f
	cp   h                                           ; $470e: $bc
	cp   a                                           ; $470f: $bf
	ld   e, [hl]                                     ; $4710: $5e
	ld   e, a                                        ; $4711: $5f
	cp   [hl]                                        ; $4712: $be
	cp   a                                           ; $4713: $bf
	ld   e, [hl]                                     ; $4714: $5e
	ld   e, a                                        ; $4715: $5f
	nop                                              ; $4716: $00
	add  c                                           ; $4717: $81
	rst  $38                                         ; $4718: $ff
	add  d                                           ; $4719: $82
	ld   sp, hl                                      ; $471a: $f9
	add  b                                           ; $471b: $80
	ei                                               ; $471c: $fb
	add  b                                           ; $471d: $80
	rst  $38                                         ; $471e: $ff
	dec  b                                           ; $471f: $05
	ld   a, [hl]                                     ; $4720: $7e
	rst  $38                                         ; $4721: $ff
	ld   a, l                                        ; $4722: $7d
	rst  $38                                         ; $4723: $ff
	inc  bc                                          ; $4724: $03
	rst  $38                                         ; $4725: $ff
	add  b                                           ; $4726: $80
	ld   sp, hl                                      ; $4727: $f9
	add  b                                           ; $4728: $80
	ldh  a, [$0b]                                    ; $4729: $f0 $0b
	ld   [hl], b                                     ; $472b: $70
	ldh  a, [$88]                                    ; $472c: $f0 $88
	ld   sp, hl                                      ; $472e: $f9
	pop  af                                          ; $472f: $f1
	rst  $38                                         ; $4730: $ff
	ld   [hl], e                                     ; $4731: $73
	rst  $38                                         ; $4732: $ff
	db   $ed                                         ; $4733: $ed
	rst  $38                                         ; $4734: $ff
	sbc  l                                           ; $4735: $9d
	inc  bc                                          ; $4736: $03
	add  b                                           ; $4737: $80
	dec  b                                           ; $4738: $05
	add  b                                           ; $4739: $80
	dec  bc                                          ; $473a: $0b
	add  b                                           ; $473b: $80
	rla                                              ; $473c: $17
	add  b                                           ; $473d: $80
	dec  bc                                          ; $473e: $0b
	inc  bc                                          ; $473f: $03
	ld   d, $17                                      ; $4740: $16 $17
	dec  c                                           ; $4742: $0d
	rrca                                             ; $4743: $0f
	add  b                                           ; $4744: $80
	rra                                              ; $4745: $1f
	ld   hl, $fffd                                   ; $4746: $21 $fd $ff
	cp   $ff                                         ; $4749: $fe $ff
	adc  [hl]                                        ; $474b: $8e
	rst  $38                                         ; $474c: $ff
	ld   [hl], h                                     ; $474d: $74
	rst  $38                                         ; $474e: $ff
	db   $fc                                         ; $474f: $fc
	rst  $38                                         ; $4750: $ff
	ld   hl, sp-$01                                  ; $4751: $f8 $ff
	db   $fc                                         ; $4753: $fc
	rst  $38                                         ; $4754: $ff
	db   $fc                                         ; $4755: $fc
	rst  $38                                         ; $4756: $ff
	ld   a, [hl]                                     ; $4757: $7e
	rst  $38                                         ; $4758: $ff
	ld   h, a                                        ; $4759: $67
	rst  $20                                         ; $475a: $e7
	ld   b, e                                        ; $475b: $43
	jp   $c343                                       ; $475c: $c3 $43 $c3


jr_078_475f:
	ld   b, d                                        ; $475f: $42
	jp   nz, $e565                                   ; $4760: $c2 $65 $e5

	ld   a, d                                        ; $4763: $7a
	ld   a, [$f434]                                  ; $4764: $fa $34 $f4
	xor  b                                           ; $4767: $a8
	add  sp, -$80                                    ; $4768: $e8 $80
	ldh  a, [$80]                                    ; $476a: $f0 $80
	add  sp, -$80                                    ; $476c: $e8 $80
	ret  nc                                          ; $476e: $d0

	add  b                                           ; $476f: $80
	and  b                                           ; $4770: $a0
	add  h                                           ; $4771: $84
	nop                                              ; $4772: $00
	rlca                                             ; $4773: $07
	cp   [hl]                                        ; $4774: $be
	cp   a                                           ; $4775: $bf
	ld   e, [hl]                                     ; $4776: $5e
	ld   e, a                                        ; $4777: $5f
	cp   [hl]                                        ; $4778: $be
	cp   a                                           ; $4779: $bf
	ld   e, [hl]                                     ; $477a: $5e
	ld   e, a                                        ; $477b: $5f
	add  b                                           ; $477c: $80
	cp   a                                           ; $477d: $bf
	add  b                                           ; $477e: $80
	ld   e, a                                        ; $477f: $5f
	add  b                                           ; $4780: $80
	cp   e                                           ; $4781: $bb
	add  b                                           ; $4782: $80
	ld   d, c                                        ; $4783: $51
	dec  d                                           ; $4784: $15
	add  e                                           ; $4785: $83
	rst  $38                                         ; $4786: $ff
	ccf                                              ; $4787: $3f
	rst  $38                                         ; $4788: $ff
	inc  a                                           ; $4789: $3c
	rst  $38                                         ; $478a: $ff
	ccf                                              ; $478b: $3f
	rst  $38                                         ; $478c: $ff
	ccf                                              ; $478d: $3f
	rst  $38                                         ; $478e: $ff
	jr   c, @+$01                                    ; $478f: $38 $ff

	inc  [hl]                                        ; $4791: $34
	db   $fc                                         ; $4792: $fc
	cp   b                                           ; $4793: $b8
	ld   hl, sp+$2e                                  ; $4794: $f8 $2e
	rst  $38                                         ; $4796: $ff
	db   $ed                                         ; $4797: $ed
	rst  $38                                         ; $4798: $ff
	and  e                                           ; $4799: $a3
	xor  a                                           ; $479a: $af
	add  b                                           ; $479b: $80
	ld   d, l                                        ; $479c: $55
	add  b                                           ; $479d: $80
	xor  d                                           ; $479e: $aa
	add  b                                           ; $479f: $80
	push af                                          ; $47a0: $f5
	dec  b                                           ; $47a1: $05
	ld   a, [de]                                     ; $47a2: $1a
	ld   a, [$fded]                                  ; $47a3: $fa $ed $fd
	ldh  a, [c]                                      ; $47a6: $f2
	ld   [bc], a                                     ; $47a7: $02
	adc  d                                           ; $47a8: $8a
	nop                                              ; $47a9: $00
	add  b                                           ; $47aa: $80
	ld   a, [hl]                                     ; $47ab: $7e
	add  b                                           ; $47ac: $80
	nop                                              ; $47ad: $00
	add  b                                           ; $47ae: $80
	ld   b, l                                        ; $47af: $45
	add  b                                           ; $47b0: $80
	ld   a, [bc]                                     ; $47b1: $0a
	add  b                                           ; $47b2: $80
	ld   d, l                                        ; $47b3: $55
	add  b                                           ; $47b4: $80
	dec  hl                                          ; $47b5: $2b
	add  b                                           ; $47b6: $80
	rla                                              ; $47b7: $17
	rlca                                             ; $47b8: $07
	ld   l, $2f                                      ; $47b9: $2e $2f
	dec  d                                           ; $47bb: $15
	rla                                              ; $47bc: $17
	xor  l                                           ; $47bd: $ad
	xor  a                                           ; $47be: $af
	ld   d, [hl]                                     ; $47bf: $56
	ld   d, a                                        ; $47c0: $57
	add  b                                           ; $47c1: $80
	xor  a                                           ; $47c2: $af
	add  d                                           ; $47c3: $82
	rst  $38                                         ; $47c4: $ff
	inc  b                                           ; $47c5: $04
	rrca                                             ; $47c6: $0f
	rst  $38                                         ; $47c7: $ff
	rst  $30                                         ; $47c8: $f7
	rst  $38                                         ; $47c9: $ff
	ld   hl, sp-$7f                                  ; $47ca: $f8 $81
	rst  $38                                         ; $47cc: $ff
	rrca                                             ; $47cd: $0f
	db   $fc                                         ; $47ce: $fc
	rst  $38                                         ; $47cf: $ff
	ld   [hl-], a                                    ; $47d0: $32
	rst  $38                                         ; $47d1: $ff
	call z, $f8ff                                    ; $47d2: $cc $ff $f8
	rst  $38                                         ; $47d5: $ff
	ld   sp, hl                                      ; $47d6: $f9
	rst  $38                                         ; $47d7: $ff
	ld   hl, sp-$02                                  ; $47d8: $f8 $fe
	ld   a, c                                        ; $47da: $79
	rst  $38                                         ; $47db: $ff
	inc  d                                           ; $47dc: $14
	add  sp, -$80                                    ; $47dd: $e8 $80
	ret  nc                                          ; $47df: $d0

	ld   bc, $a020                                   ; $47e0: $01 $20 $a0
	add  b                                           ; $47e3: $80
	ret  nz                                          ; $47e4: $c0

	add  b                                           ; $47e5: $80
	and  b                                           ; $47e6: $a0
	add  b                                           ; $47e7: $80
	ld   b, b                                        ; $47e8: $40
	add  b                                           ; $47e9: $80
	add  b                                           ; $47ea: $80
	add  b                                           ; $47eb: $80
	ld   b, b                                        ; $47ec: $40
	add  b                                           ; $47ed: $80
	or   c                                           ; $47ee: $b1
	add  b                                           ; $47ef: $80
	ld   e, e                                        ; $47f0: $5b
	add  b                                           ; $47f1: $80
	cp   a                                           ; $47f2: $bf
	add  b                                           ; $47f3: $80
	ld   e, a                                        ; $47f4: $5f
	add  b                                           ; $47f5: $80
	cp   [hl]                                        ; $47f6: $be
	add  b                                           ; $47f7: $80
	ld   e, h                                        ; $47f8: $5c
	add  b                                           ; $47f9: $80
	cp   b                                           ; $47fa: $b8
	add  b                                           ; $47fb: $80
	ld   d, b                                        ; $47fc: $50
	rlca                                             ; $47fd: $07
	xor  b                                           ; $47fe: $a8
	ld   hl, sp-$74                                  ; $47ff: $f8 $8c
	db   $fc                                         ; $4801: $fc
	rst  JumpTable                                         ; $4802: $df
	rst  $38                                         ; $4803: $ff
	cp   $ff                                         ; $4804: $fe $ff
	add  b                                           ; $4806: $80

jr_078_4807:
	cpl                                              ; $4807: $2f
	ld   bc, $1716                                   ; $4808: $01 $16 $17
	add  b                                           ; $480b: $80
	dec  bc                                          ; $480c: $0b
	add  b                                           ; $480d: $80
	dec  b                                           ; $480e: $05
	ld   bc, $7f47                                   ; $480f: $01 $47 $7f
	add  b                                           ; $4812: $80
	rst  $38                                         ; $4813: $ff
	dec  c                                           ; $4814: $0d
	or   e                                           ; $4815: $b3
	rst  $38                                         ; $4816: $ff
	ld   [hl], c                                     ; $4817: $71
	rst  $38                                         ; $4818: $ff
	ld   e, b                                        ; $4819: $58
	rst  $38                                         ; $481a: $ff
	sbc  b                                           ; $481b: $98
	rst  $38                                         ; $481c: $ff
	sbc  b                                           ; $481d: $98
	rst  $38                                         ; $481e: $ff
	adc  h                                           ; $481f: $8c
	rst  $38                                         ; $4820: $ff
	ld   hl, $8000                                   ; $4821: $21 $00 $80
	ld   bc, $0384                                   ; $4824: $01 $84 $03
	add  b                                           ; $4827: $80
	rrca                                             ; $4828: $0f
	inc  c                                           ; $4829: $0c
	ld   [$040f], sp                                 ; $482a: $08 $0f $04
	inc  c                                           ; $482d: $0c
	nop                                              ; $482e: $00
	rst  $38                                         ; $482f: $ff
	jp   $bdff                                       ; $4830: $c3 $ff $bd


	rst  $38                                         ; $4833: $ff
	ld   b, c                                        ; $4834: $41
	jp   $81c0                                       ; $4835: $c3 $c0 $81


	jp   $e780                                       ; $4838: $c3 $80 $e7


	inc  bc                                          ; $483b: $03
	ld   a, [hl]                                     ; $483c: $7e
	ld   a, a                                        ; $483d: $7f
	ldh  a, [c]                                      ; $483e: $f2
	rrca                                             ; $483f: $0f
	add  b                                           ; $4840: $80
	sbc  a                                           ; $4841: $9f
	add  b                                           ; $4842: $80
	adc  a                                           ; $4843: $8f
	ld   [bc], a                                     ; $4844: $02
	call $fecf                                       ; $4845: $cd $cf $fe
	add  c                                           ; $4848: $81
	rst  $38                                         ; $4849: $ff
	dec  b                                           ; $484a: $05
	cp   $ff                                         ; $484b: $fe $ff
	call $03cf                                       ; $484d: $cd $cf $03
	rst  $38                                         ; $4850: $ff
	add  d                                           ; $4851: $82
	ei                                               ; $4852: $fb
	add  b                                           ; $4853: $80
	pop  af                                          ; $4854: $f1
	add  b                                           ; $4855: $80
	add  b                                           ; $4856: $80
	ld   [bc], a                                     ; $4857: $02
	ld   [hl], c                                     ; $4858: $71
	pop  af                                          ; $4859: $f1
	ld   a, e                                        ; $485a: $7b
	add  c                                           ; $485b: $81
	ei                                               ; $485c: $fb
	ld   de, $ffc5                                   ; $485d: $11 $c5 $ff
	ld   hl, sp-$01                                  ; $4860: $f8 $ff
	db   $fc                                         ; $4862: $fc
	rst  $38                                         ; $4863: $ff
	call z, Call_078_7cff                            ; $4864: $cc $ff $7c
	ld   a, a                                        ; $4867: $7f
	db   $fc                                         ; $4868: $fc
	rst  $38                                         ; $4869: $ff
	db   $fc                                         ; $486a: $fc
	rst  $38                                         ; $486b: $ff
	xor  $ff                                         ; $486c: $ee $ff
	sbc  a                                           ; $486e: $9f
	add  b                                           ; $486f: $80
	add  b                                           ; $4870: $80
	ret  nz                                          ; $4871: $c0

	add  b                                           ; $4872: $80
	and  b                                           ; $4873: $a0
	add  b                                           ; $4874: $80
	ret  nz                                          ; $4875: $c0

	inc  bc                                          ; $4876: $03
	ld   h, b                                        ; $4877: $60
	ldh  [$50], a                                    ; $4878: $e0 $50
	ret  nc                                          ; $487a: $d0

	add  b                                           ; $487b: $80
	add  sp, $03                                     ; $487c: $e8 $03
	ld   [hl], h                                     ; $487e: $74
	db   $f4                                         ; $487f: $f4
	jr   nc, @-$4e                                   ; $4880: $30 $b0

	add  b                                           ; $4882: $80
	ld   b, b                                        ; $4883: $40
	add  b                                           ; $4884: $80
	jr   nz, jr_078_4807                             ; $4885: $20 $80

	ld   b, b                                        ; $4887: $40
	add  b                                           ; $4888: $80
	nop                                              ; $4889: $00
	add  b                                           ; $488a: $80
	ld   b, b                                        ; $488b: $40
	add  b                                           ; $488c: $80
	add  b                                           ; $488d: $80
	add  b                                           ; $488e: $80
	ld   b, b                                        ; $488f: $40
	add  b                                           ; $4890: $80
	inc  bc                                          ; $4891: $03
	add  b                                           ; $4892: $80
	ld   bc, $0380                                   ; $4893: $01 $80 $03
	add  b                                           ; $4896: $80
	ld   bc, $0380                                   ; $4897: $01 $80 $03
	add  b                                           ; $489a: $80
	dec  b                                           ; $489b: $05
	add  b                                           ; $489c: $80
	inc  bc                                          ; $489d: $03
	add  b                                           ; $489e: $80
	rlca                                             ; $489f: $07
	ld   de, $ffe8                                   ; $48a0: $11 $e8 $ff
	rst  ToBoot                                         ; $48a3: $c7
	rst  $38                                         ; $48a4: $ff

jr_078_48a5:
	rst  ToBoot                                         ; $48a5: $c7
	rst  $38                                         ; $48a6: $ff
	rst  ToBoot                                         ; $48a7: $c7
	rst  $38                                         ; $48a8: $ff

jr_078_48a9:
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48a9: $cf
	rst  $38                                         ; $48aa: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $48ab: $cf
	rst  $38                                         ; $48ac: $ff
	adc  a                                           ; $48ad: $8f
	rst  $38                                         ; $48ae: $ff
	adc  a                                           ; $48af: $8f
	rst  $38                                         ; $48b0: $ff
	inc  hl                                          ; $48b1: $23
	inc  c                                           ; $48b2: $0c
	add  b                                           ; $48b3: $80
	ld   [$0705], sp                                 ; $48b4: $08 $05 $07
	rrca                                             ; $48b7: $0f
	dec  bc                                          ; $48b8: $0b
	rrca                                             ; $48b9: $0f
	inc  b                                           ; $48ba: $04
	rlca                                             ; $48bb: $07
	add  h                                           ; $48bc: $84
	nop                                              ; $48bd: $00
	add  hl, bc                                      ; $48be: $09
	ld   h, a                                        ; $48bf: $67
	ld   a, a                                        ; $48c0: $7f
	ld   b, a                                        ; $48c1: $47
	ld   a, a                                        ; $48c2: $7f
	rst  $28                                         ; $48c3: $ef
	rst  $38                                         ; $48c4: $ff
	ld   hl, $d2ff                                   ; $48c5: $21 $ff $d2
	di                                               ; $48c8: $f3
	add  b                                           ; $48c9: $80
	inc  sp                                          ; $48ca: $33
	nop                                              ; $48cb: $00
	ccf                                              ; $48cc: $3f
	add  b                                           ; $48cd: $80
	ld   e, $0a                                      ; $48ce: $1e $0a
	nop                                              ; $48d0: $00
	sbc  [hl]                                        ; $48d1: $9e
	sbc  a                                           ; $48d2: $9f
	inc  hl                                          ; $48d3: $23
	ccf                                              ; $48d4: $3f
	dec  a                                           ; $48d5: $3d
	ccf                                              ; $48d6: $3f
	ld   l, $3f                                      ; $48d7: $2e $3f
	sub  c                                           ; $48d9: $91
	sbc  a                                           ; $48da: $9f
	add  b                                           ; $48db: $80
	ld   bc, $0880                                   ; $48dc: $01 $80 $08
	add  c                                           ; $48df: $81
	nop                                              ; $48e0: $00
	inc  c                                           ; $48e1: $0c
	rst  $38                                         ; $48e2: $ff
	cp   $ff                                         ; $48e3: $fe $ff
	ld   e, [hl]                                     ; $48e5: $5e
	rst  $38                                         ; $48e6: $ff
	ld   [bc], a                                     ; $48e7: $02
	ei                                               ; $48e8: $fb
	ld   bc, $0fff                                   ; $48e9: $01 $ff $0f
	rst  $38                                         ; $48ec: $ff
	ld   d, [hl]                                     ; $48ed: $56
	cp   $80                                         ; $48ee: $fe $80
	nop                                              ; $48f0: $00
	inc  bc                                          ; $48f1: $03
	ld   a, a                                        ; $48f2: $7f
	rst  $38                                         ; $48f3: $ff
	ld   a, l                                        ; $48f4: $7d
	db   $fd                                         ; $48f5: $fd
	add  b                                           ; $48f6: $80
	xor  d                                           ; $48f7: $aa
	add  b                                           ; $48f8: $80
	add  l                                           ; $48f9: $85
	add  b                                           ; $48fa: $80
	add  b                                           ; $48fb: $80
	add  b                                           ; $48fc: $80
	ld   bc, $0280                                   ; $48fd: $01 $80 $02
	add  b                                           ; $4900: $80
	ld   d, l                                        ; $4901: $55
	db   $10                                         ; $4902: $10
	dec  b                                           ; $4903: $05
	ld   a, [$ff3f]                                  ; $4904: $fa $3f $ff
	sbc  [hl]                                        ; $4907: $9e
	cp   $8b                                         ; $4908: $fe $8b
	rst  $38                                         ; $490a: $ff
	jp   Jump_078_63ff                               ; $490b: $c3 $ff $63


	ld   a, a                                        ; $490e: $7f
	pop  af                                          ; $490f: $f1
	rst  $38                                         ; $4910: $ff
	ld   a, b                                        ; $4911: $78
	ld   a, a                                        ; $4912: $7f
	db   $fd                                         ; $4913: $fd
	add  c                                           ; $4914: $81
	nop                                              ; $4915: $00
	add  b                                           ; $4916: $80
	add  b                                           ; $4917: $80
	add  b                                           ; $4918: $80
	ld   b, b                                        ; $4919: $40
	add  b                                           ; $491a: $80
	and  b                                           ; $491b: $a0
	add  b                                           ; $491c: $80
	ret  nc                                          ; $491d: $d0

	add  b                                           ; $491e: $80
	ldh  [$80], a                                    ; $491f: $e0 $80
	ret  nc                                          ; $4921: $d0

	add  b                                           ; $4922: $80
	jr   nz, jr_078_48a5                             ; $4923: $20 $80

	ld   d, b                                        ; $4925: $50
	add  b                                           ; $4926: $80
	jr   nc, jr_078_48a9                             ; $4927: $30 $80

	ld   e, b                                        ; $4929: $58
	add  b                                           ; $492a: $80
	ld   a, $80                                      ; $492b: $3e $80
	ld   e, a                                        ; $492d: $5f
	add  b                                           ; $492e: $80
	ccf                                              ; $492f: $3f
	inc  bc                                          ; $4930: $03
	ld   e, l                                        ; $4931: $5d
	ld   e, a                                        ; $4932: $5f
	add  hl, bc                                      ; $4933: $09
	dec  bc                                          ; $4934: $0b
	add  b                                           ; $4935: $80
	rlca                                             ; $4936: $07
	add  b                                           ; $4937: $80
	rrca                                             ; $4938: $0f
	add  b                                           ; $4939: $80
	rra                                              ; $493a: $1f
	add  b                                           ; $493b: $80
	ld   a, a                                        ; $493c: $7f
	inc  d                                           ; $493d: $14
	rst  $30                                         ; $493e: $f7
	rst  $38                                         ; $493f: $ff
	and  a                                           ; $4940: $a7
	rst  $38                                         ; $4941: $ff
	rrca                                             ; $4942: $0f
	rst  $38                                         ; $4943: $ff
	nop                                              ; $4944: $00
	rst  $38                                         ; $4945: $ff
	rra                                              ; $4946: $1f
	rst  $38                                         ; $4947: $ff
	rra                                              ; $4948: $1f
	rst  $38                                         ; $4949: $ff
	dec  bc                                          ; $494a: $0b
	rst  $38                                         ; $494b: $ff
	ld   bc, $a8ff                                   ; $494c: $01 $ff $a8
	rst  $38                                         ; $494f: $ff
	db   $fc                                         ; $4950: $fc
	rst  $38                                         ; $4951: $ff
	cp   $80                                         ; $4952: $fe $80
	rst  $38                                         ; $4954: $ff
	add  b                                           ; $4955: $80
	nop                                              ; $4956: $00
	nop                                              ; $4957: $00
	inc  e                                           ; $4958: $1c
	add  b                                           ; $4959: $80
	ld   e, $00                                      ; $495a: $1e $00
	ld   [de], a                                     ; $495c: $12
	add  c                                           ; $495d: $81
	ld   c, $80                                      ; $495e: $0e $80
	nop                                              ; $4960: $00
	add  b                                           ; $4961: $80
	ld   [bc], a                                     ; $4962: $02
	add  b                                           ; $4963: $80
	dec  b                                           ; $4964: $05
	add  [hl]                                        ; $4965: $86
	nop                                              ; $4966: $00
	add  b                                           ; $4967: $80
	jr   nz, @-$7e                                   ; $4968: $20 $80

	ld   b, h                                        ; $496a: $44
	add  b                                           ; $496b: $80
	ldh  [c], a                                      ; $496c: $e2
	add  b                                           ; $496d: $80
	db   $fd                                         ; $496e: $fd
	add  b                                           ; $496f: $80
	cpl                                              ; $4970: $2f
	inc  bc                                          ; $4971: $03
	jr   @+$21                                       ; $4972: $18 $1f

	or   a                                           ; $4974: $b7
	cp   a                                           ; $4975: $bf
	add  b                                           ; $4976: $80
	ld   e, a                                        ; $4977: $5f
	add  b                                           ; $4978: $80
	cp   a                                           ; $4979: $bf
	add  b                                           ; $497a: $80
	ld   e, a                                        ; $497b: $5f
	add  b                                           ; $497c: $80
	cp   a                                           ; $497d: $bf
	add  b                                           ; $497e: $80
	ld   e, a                                        ; $497f: $5f
	ld   [$fff1], sp                                 ; $4980: $08 $f1 $ff
	ld   a, $ff                                      ; $4983: $3e $ff
	sbc  $ff                                         ; $4985: $de $ff
	db   $ed                                         ; $4987: $ed
	rst  $38                                         ; $4988: $ff
	di                                               ; $4989: $f3
	add  c                                           ; $498a: $81
	rst  $38                                         ; $498b: $ff
	add  b                                           ; $498c: $80
	cp   $80                                         ; $498d: $fe $80
	db   $fd                                         ; $498f: $fd
	inc  bc                                          ; $4990: $03
	ld   h, b                                        ; $4991: $60
	ldh  [$50], a                                    ; $4992: $e0 $50
	ret  nc                                          ; $4994: $d0

	add  b                                           ; $4995: $80
	and  b                                           ; $4996: $a0
	add  b                                           ; $4997: $80
	ld   b, b                                        ; $4998: $40
	add  b                                           ; $4999: $80
	add  b                                           ; $499a: $80
	add  b                                           ; $499b: $80
	ld   b, b                                        ; $499c: $40
	add  b                                           ; $499d: $80
	add  b                                           ; $499e: $80
	add  b                                           ; $499f: $80
	nop                                              ; $49a0: $00
	dec  b                                           ; $49a1: $05
	ld   a, [hl-]                                    ; $49a2: $3a
	ccf                                              ; $49a3: $3f
	ld   e, b                                        ; $49a4: $58
	ld   e, a                                        ; $49a5: $5f
	dec  l                                           ; $49a6: $2d
	cpl                                              ; $49a7: $2f
	add  b                                           ; $49a8: $80
	ld   e, a                                        ; $49a9: $5f
	add  b                                           ; $49aa: $80
	cpl                                              ; $49ab: $2f
	add  b                                           ; $49ac: $80
	ld   e, a                                        ; $49ad: $5f
	add  b                                           ; $49ae: $80
	cpl                                              ; $49af: $2f
	add  b                                           ; $49b0: $80
	ld   e, a                                        ; $49b1: $5f
	dec  b                                           ; $49b2: $05
	cp   a                                           ; $49b3: $bf
	rst  $38                                         ; $49b4: $ff
	inc  a                                           ; $49b5: $3c
	db   $fc                                         ; $49b6: $fc
	ld   a, b                                        ; $49b7: $78
	ld   hl, sp-$80                                  ; $49b8: $f8 $80
	ldh  [$80], a                                    ; $49ba: $e0 $80
	ret  nz                                          ; $49bc: $c0

	add  b                                           ; $49bd: $80
	and  b                                           ; $49be: $a0
	add  b                                           ; $49bf: $80
	ret  nz                                          ; $49c0: $c0

	add  b                                           ; $49c1: $80
	nop                                              ; $49c2: $00
	add  b                                           ; $49c3: $80
	cpl                                              ; $49c4: $2f
	add  b                                           ; $49c5: $80
	rla                                              ; $49c6: $17
	add  b                                           ; $49c7: $80
	dec  bc                                          ; $49c8: $0b
	add  b                                           ; $49c9: $80
	dec  b                                           ; $49ca: $05
	add  b                                           ; $49cb: $80
	inc  bc                                          ; $49cc: $03
	add  b                                           ; $49cd: $80
	ld   [bc], a                                     ; $49ce: $02
	add  d                                           ; $49cf: $82
	ld   bc, $0f01                                   ; $49d0: $01 $01 $0f
	nop                                              ; $49d3: $00
	add  b                                           ; $49d4: $80
	ld   bc, $0280                                   ; $49d5: $01 $80 $02
	add  b                                           ; $49d8: $80
	dec  b                                           ; $49d9: $05
	add  b                                           ; $49da: $80
	dec  bc                                          ; $49db: $0b
	add  b                                           ; $49dc: $80
	inc  bc                                          ; $49dd: $03
	add  b                                           ; $49de: $80
	rrca                                             ; $49df: $0f
	add  b                                           ; $49e0: $80
	inc  bc                                          ; $49e1: $03
	ld   bc, $03f3                                   ; $49e2: $01 $f3 $03
	add  b                                           ; $49e5: $80
	dec  b                                           ; $49e6: $05
	add  b                                           ; $49e7: $80
	db   $eb                                         ; $49e8: $eb
	ld   bc, $f7f6                                   ; $49e9: $01 $f6 $f7
	add  b                                           ; $49ec: $80
	rst  $38                                         ; $49ed: $ff
	ld   bc, $fffe                                   ; $49ee: $01 $fe $ff
	add  b                                           ; $49f1: $80
	ei                                               ; $49f2: $fb
	add  b                                           ; $49f3: $80
	pop  af                                          ; $49f4: $f1
	dec  b                                           ; $49f5: $05
	adc  [hl]                                        ; $49f6: $8e
	cp   $77                                         ; $49f7: $fe $77
	rst  $38                                         ; $49f9: $ff
	ld   a, [$84fe]                                  ; $49fa: $fa $fe $84
	rst  $38                                         ; $49fd: $ff
	inc  bc                                          ; $49fe: $03
	ld   [hl], d                                     ; $49ff: $72
	cp   $0d                                         ; $4a00: $fe $0d
	ld   a, l                                        ; $4a02: $7d
	add  b                                           ; $4a03: $80
	add  b                                           ; $4a04: $80
	add  b                                           ; $4a05: $80
	nop                                              ; $4a06: $00
	add  b                                           ; $4a07: $80
	add  b                                           ; $4a08: $80
	add  b                                           ; $4a09: $80
	ld   d, l                                        ; $4a0a: $55
	add  b                                           ; $4a0b: $80
	xor  a                                           ; $4a0c: $af
	add  b                                           ; $4a0d: $80
	ld   e, a                                        ; $4a0e: $5f
	add  d                                           ; $4a0f: $82
	rst  $38                                         ; $4a10: $ff
	dec  b                                           ; $4a11: $05
	ld   de, $ddfe                                   ; $4a12: $11 $fe $dd
	db   $fd                                         ; $4a15: $fd
	ld   a, $fe                                      ; $4a16: $3e $fe
	add  b                                           ; $4a18: $80
	rst  $38                                         ; $4a19: $ff
	add  b                                           ; $4a1a: $80
	cp   $07                                         ; $4a1b: $fe $07
	rst  $30                                         ; $4a1d: $f7
	rst  $38                                         ; $4a1e: $ff
	ei                                               ; $4a1f: $fb
	rst  $38                                         ; $4a20: $ff
	dec  a                                           ; $4a21: $3d
	rst  $38                                         ; $4a22: $ff
	cp   [hl]                                        ; $4a23: $be
	add  b                                           ; $4a24: $80
	add  b                                           ; $4a25: $80
	nop                                              ; $4a26: $00
	add  b                                           ; $4a27: $80
	add  b                                           ; $4a28: $80
	add  b                                           ; $4a29: $80
	nop                                              ; $4a2a: $00
	add  b                                           ; $4a2b: $80
	add  b                                           ; $4a2c: $80
	add  b                                           ; $4a2d: $80
	ld   b, b                                        ; $4a2e: $40
	add  b                                           ; $4a2f: $80
	and  b                                           ; $4a30: $a0
	add  b                                           ; $4a31: $80
	ret  nc                                          ; $4a32: $d0

	add  b                                           ; $4a33: $80
	ld   l, $80                                      ; $4a34: $2e $80
	rra                                              ; $4a36: $1f
	add  b                                           ; $4a37: $80
	ld   l, $80                                      ; $4a38: $2e $80
	rra                                              ; $4a3a: $1f
	add  b                                           ; $4a3b: $80
	rrca                                             ; $4a3c: $0f
	add  b                                           ; $4a3d: $80
	rra                                              ; $4a3e: $1f
	add  b                                           ; $4a3f: $80
	rlca                                             ; $4a40: $07
	add  b                                           ; $4a41: $80
	dec  bc                                          ; $4a42: $0b
	add  b                                           ; $4a43: $80
	add  b                                           ; $4a44: $80
	adc  b                                           ; $4a45: $88
	nop                                              ; $4a46: $00
	add  b                                           ; $4a47: $80
	add  b                                           ; $4a48: $80
	add  b                                           ; $4a49: $80
	ret  nz                                          ; $4a4a: $c0

	add  [hl]                                        ; $4a4b: $86
	nop                                              ; $4a4c: $00
	add  b                                           ; $4a4d: $80
	ld   bc, $0280                                   ; $4a4e: $01 $80 $02
	add  b                                           ; $4a51: $80
	dec  b                                           ; $4a52: $05
	add  b                                           ; $4a53: $80
	dec  bc                                          ; $4a54: $0b
	ld   bc, $0b04                                   ; $4a55: $01 $04 $0b
	add  b                                           ; $4a58: $80
	dec  b                                           ; $4a59: $05
	add  b                                           ; $4a5a: $80
	ld   [bc], a                                     ; $4a5b: $02
	adc  b                                           ; $4a5c: $88
	nop                                              ; $4a5d: $00
	ld   bc, $f808                                   ; $4a5e: $01 $08 $f8
	add  b                                           ; $4a61: $80
	pop  de                                          ; $4a62: $d1
	add  b                                           ; $4a63: $80
	xor  d                                           ; $4a64: $aa
	add  b                                           ; $4a65: $80
	dec  b                                           ; $4a66: $05
	add  b                                           ; $4a67: $80
	ld   a, [bc]                                     ; $4a68: $0a
	add  b                                           ; $4a69: $80
	dec  d                                           ; $4a6a: $15
	add  b                                           ; $4a6b: $80
	dec  bc                                          ; $4a6c: $0b
	add  b                                           ; $4a6d: $80
	dec  d                                           ; $4a6e: $15
	add  b                                           ; $4a6f: $80
	xor  e                                           ; $4a70: $ab
	add  b                                           ; $4a71: $80
	ld   d, a                                        ; $4a72: $57
	inc  b                                           ; $4a73: $04
	cp   h                                           ; $4a74: $bc
	cp   a                                           ; $4a75: $bf
	di                                               ; $4a76: $f3
	rst  $38                                         ; $4a77: $ff
	rst  $28                                         ; $4a78: $ef
	add  l                                           ; $4a79: $85
	rst  $38                                         ; $4a7a: $ff
	nop                                              ; $4a7b: $00
	ldh  [$81], a                                    ; $4a7c: $e0 $81
	rst  $38                                         ; $4a7e: $ff
	ld   [bc], a                                     ; $4a7f: $02
	rlca                                             ; $4a80: $07
	rst  $38                                         ; $4a81: $ff
	ei                                               ; $4a82: $fb
	add  e                                           ; $4a83: $83
	rst  $38                                         ; $4a84: $ff
	nop                                              ; $4a85: $00
	cp   $81                                         ; $4a86: $fe $81
	rst  $38                                         ; $4a88: $ff
	ld   de, $ffe3                                   ; $4a89: $11 $e3 $ff
	cp   $ff                                         ; $4a8c: $fe $ff
	sbc  $ff                                         ; $4a8e: $de $ff
	inc  a                                           ; $4a90: $3c
	rst  $38                                         ; $4a91: $ff
	db   $fc                                         ; $4a92: $fc
	rst  $38                                         ; $4a93: $ff
	push af                                          ; $4a94: $f5
	rst  $38                                         ; $4a95: $ff
	ld   h, e                                        ; $4a96: $63
	rst  $38                                         ; $4a97: $ff
	rst  $20                                         ; $4a98: $e7
	rst  $38                                         ; $4a99: $ff
	sub  b                                           ; $4a9a: $90
	ldh  [$80], a                                    ; $4a9b: $e0 $80
	ldh  a, [$03]                                    ; $4a9d: $f0 $03
	ld   a, b                                        ; $4a9f: $78
	ld   hl, sp+$74                                  ; $4aa0: $f8 $74
	db   $f4                                         ; $4aa2: $f4
	add  b                                           ; $4aa3: $80
	ld   a, [$f480]                                  ; $4aa4: $fa $80 $f4
	add  b                                           ; $4aa7: $80
	add  sp, -$80                                    ; $4aa8: $e8 $80
	call nc, $0780                                   ; $4aaa: $d4 $80 $07
	add  b                                           ; $4aad: $80
	dec  bc                                          ; $4aae: $0b
	add  b                                           ; $4aaf: $80
	dec  b                                           ; $4ab0: $05
	add  b                                           ; $4ab1: $80
	dec  bc                                          ; $4ab2: $0b
	add  b                                           ; $4ab3: $80
	dec  b                                           ; $4ab4: $05
	add  b                                           ; $4ab5: $80
	inc  bc                                          ; $4ab6: $03
	add  b                                           ; $4ab7: $80
	dec  b                                           ; $4ab8: $05
	add  b                                           ; $4ab9: $80
	inc  bc                                          ; $4aba: $03
	add  b                                           ; $4abb: $80

jr_078_4abc:
	ldh  a, [$80]                                    ; $4abc: $f0 $80
	ld   hl, sp-$7a                                  ; $4abe: $f8 $86
	rst  $38                                         ; $4ac0: $ff
	dec  d                                           ; $4ac1: $15
	rst  $28                                         ; $4ac2: $ef
	rst  $38                                         ; $4ac3: $ff
	db   $ed                                         ; $4ac4: $ed
	rst  $38                                         ; $4ac5: $ff
	inc  l                                           ; $4ac6: $2c
	cpl                                              ; $4ac7: $2f
	ld   e, h                                        ; $4ac8: $5c
	ld   e, a                                        ; $4ac9: $5f
	cp   b                                           ; $4aca: $b8
	cp   a                                           ; $4acb: $bf
	ldh  a, [c]                                      ; $4acc: $f2
	rst  $38                                         ; $4acd: $ff
	ldh  [c], a                                      ; $4ace: $e2
	rst  $38                                         ; $4acf: $ff
	pop  bc                                          ; $4ad0: $c1
	rst  $38                                         ; $4ad1: $ff
	adc  e                                           ; $4ad2: $8b
	rst  $38                                         ; $4ad3: $ff
	rra                                              ; $4ad4: $1f
	rst  $38                                         ; $4ad5: $ff
	or   b                                           ; $4ad6: $b0
	nop                                              ; $4ad7: $00
	add  b                                           ; $4ad8: $80
	ld   bc, $0080                                   ; $4ad9: $01 $80 $00
	add  b                                           ; $4adc: $80
	ld   bc, $0a80                                   ; $4add: $01 $80 $0a
	add  b                                           ; $4ae0: $80
	dec  b                                           ; $4ae1: $05
	add  b                                           ; $4ae2: $80
	dec  bc                                          ; $4ae3: $0b
	add  b                                           ; $4ae4: $80
	dec  b                                           ; $4ae5: $05
	ld   bc, $bf4f                                   ; $4ae6: $01 $4f $bf
	add  b                                           ; $4ae9: $80
	ld   a, a                                        ; $4aea: $7f
	ld   [bc], a                                     ; $4aeb: $02
	rst  $38                                         ; $4aec: $ff
	rst  $30                                         ; $4aed: $f7
	db   $f4                                         ; $4aee: $f4
	add  c                                           ; $4aef: $81
	db   $e3                                         ; $4af0: $e3
	add  b                                           ; $4af1: $80
	rst  $30                                         ; $4af2: $f7
	nop                                              ; $4af3: $00
	rst  JumpTable                                         ; $4af4: $df
	add  c                                           ; $4af5: $81
	rst  $38                                         ; $4af6: $ff
	nop                                              ; $4af7: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4af8: $cf
	add  c                                           ; $4af9: $81
	rst  $38                                         ; $4afa: $ff
	dec  b                                           ; $4afb: $05
	rst  $30                                         ; $4afc: $f7
	rst  $38                                         ; $4afd: $ff
	ld   hl, sp-$01                                  ; $4afe: $f8 $ff
	ld   a, d                                        ; $4b00: $7a
	ld   a, [$f580]                                  ; $4b01: $fa $80 $f5
	ld   bc, $f8b8                                   ; $4b04: $01 $b8 $f8
	add  b                                           ; $4b07: $80
	db   $fd                                         ; $4b08: $fd
	dec  c                                           ; $4b09: $0d
	add  $ff                                         ; $4b0a: $c6 $ff
	rst  $30                                         ; $4b0c: $f7
	rst  $38                                         ; $4b0d: $ff
	xor  $ff                                         ; $4b0e: $ee $ff
	inc  de                                          ; $4b10: $13
	rst  $38                                         ; $4b11: $ff
	ld   l, a                                        ; $4b12: $6f
	ld   a, a                                        ; $4b13: $7f
	ld   a, e                                        ; $4b14: $7b
	ld   a, a                                        ; $4b15: $7f
	rst  $20                                         ; $4b16: $e7
	rst  $38                                         ; $4b17: $ff
	add  b                                           ; $4b18: $80
	ld   a, a                                        ; $4b19: $7f
	nop                                              ; $4b1a: $00
	nop                                              ; $4b1b: $00
	add  e                                           ; $4b1c: $83
	rst  $38                                         ; $4b1d: $ff
	ld   [bc], a                                     ; $4b1e: $02
	ld   a, [hl]                                     ; $4b1f: $7e
	cp   $8c                                         ; $4b20: $fe $8c
	add  c                                           ; $4b22: $81
	db   $fc                                         ; $4b23: $fc
	add  b                                           ; $4b24: $80
	cp   $13                                         ; $4b25: $fe $13
	rst  $30                                         ; $4b27: $f7
	rst  $38                                         ; $4b28: $ff
	ld   c, [hl]                                     ; $4b29: $4e
	cp   $e4                                         ; $4b2a: $fe $e4
	db   $fc                                         ; $4b2c: $fc
	call nz, $04fc                                   ; $4b2d: $c4 $fc $04
	ld   a, h                                        ; $4b30: $7c
	inc  c                                           ; $4b31: $0c
	inc  a                                           ; $4b32: $3c
	ld   c, $3e                                      ; $4b33: $0e $3e
	ld   h, a                                        ; $4b35: $67
	ld   a, a                                        ; $4b36: $7f
	db   $e3                                         ; $4b37: $e3
	rst  $38                                         ; $4b38: $ff
	inc  a                                           ; $4b39: $3c
	jr   z, jr_078_4abc                              ; $4b3a: $28 $80

	inc  d                                           ; $4b3c: $14
	add  b                                           ; $4b3d: $80
	ld   [$1080], sp                                 ; $4b3e: $08 $80 $10
	add  b                                           ; $4b41: $80
	ld   [$3480], sp                                 ; $4b42: $08 $80 $34
	add  b                                           ; $4b45: $80
	add  sp, -$80                                    ; $4b46: $e8 $80
	db   $f4                                         ; $4b48: $f4
	add  b                                           ; $4b49: $80
	dec  b                                           ; $4b4a: $05
	add  b                                           ; $4b4b: $80
	inc  bc                                          ; $4b4c: $03
	add  b                                           ; $4b4d: $80
	ld   bc, $0080                                   ; $4b4e: $01 $80 $00
	add  b                                           ; $4b51: $80
	ld   bc, $0084                                   ; $4b52: $01 $84 $00
	ld   [de], a                                     ; $4b55: $12
	db   $f4                                         ; $4b56: $f4
	rst  $38                                         ; $4b57: $ff
	and  c                                           ; $4b58: $a1
	rst  $38                                         ; $4b59: $ff
	add  l                                           ; $4b5a: $85
	rst  $38                                         ; $4b5b: $ff
	push bc                                          ; $4b5c: $c5
	rst  $38                                         ; $4b5d: $ff
	ld   h, c                                        ; $4b5e: $61
	ld   a, a                                        ; $4b5f: $7f
	cp   c                                           ; $4b60: $b9
	cp   a                                           ; $4b61: $bf
	ld   e, c                                        ; $4b62: $59
	ld   e, a                                        ; $4b63: $5f
	ld   de, $243f                                   ; $4b64: $11 $3f $24
	rst  $38                                         ; $4b67: $ff
	db   $fc                                         ; $4b68: $fc
	add  c                                           ; $4b69: $81
	cp   $02                                         ; $4b6a: $fe $02
	db   $fd                                         ; $4b6c: $fd
	rst  $38                                         ; $4b6d: $ff
	cp   $83                                         ; $4b6e: $fe $83
	rst  $38                                         ; $4b70: $ff
	add  b                                           ; $4b71: $80
	cp   $00                                         ; $4b72: $fe $00
	rst  $38                                         ; $4b74: $ff
	add  l                                           ; $4b75: $85
	nop                                              ; $4b76: $00
	ld   [$ff30], sp                                 ; $4b77: $08 $30 $ff
	ret  z                                           ; $4b7a: $c8

	rst  $38                                         ; $4b7b: $ff
	ld   [hl], a                                     ; $4b7c: $77
	rst  $38                                         ; $4b7d: $ff
	rst  $28                                         ; $4b7e: $ef
	rst  $38                                         ; $4b7f: $ff
	ld   h, b                                        ; $4b80: $60
	add  l                                           ; $4b81: $85
	nop                                              ; $4b82: $00
	inc  d                                           ; $4b83: $14
	rrca                                             ; $4b84: $0f
	ldh  a, [$58]                                    ; $4b85: $f0 $58
	ld   hl, sp-$74                                  ; $4b87: $f8 $8c
	db   $fc                                         ; $4b89: $fc
	call z, $80fc                                    ; $4b8a: $cc $fc $80
	rst  $38                                         ; $4b8d: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b8e: $cf
	rst  $38                                         ; $4b8f: $ff
	ld   c, a                                        ; $4b90: $4f
	rst  $38                                         ; $4b91: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4b92: $cf
	rst  $38                                         ; $4b93: $ff
	rst  ToBoot                                         ; $4b94: $c7
	rst  $38                                         ; $4b95: $ff
	db   $e3                                         ; $4b96: $e3
	rst  $38                                         ; $4b97: $ff
	db   $f4                                         ; $4b98: $f4
	add  c                                           ; $4b99: $81
	rst  $38                                         ; $4b9a: $ff
	ld   [bc], a                                     ; $4b9b: $02
	ld   b, $fe                                      ; $4b9c: $06 $fe
	or   $81                                         ; $4b9e: $f6 $81
	cp   $80                                         ; $4ba0: $fe $80
	db   $fc                                         ; $4ba2: $fc
	dec  b                                           ; $4ba3: $05
	add  sp, -$08                                    ; $4ba4: $e8 $f8
	sub  b                                           ; $4ba6: $90
	ldh  a, [$60]                                    ; $4ba7: $f0 $60
	ldh  [$80], a                                    ; $4ba9: $e0 $80
	push de                                          ; $4bab: $d5
	add  b                                           ; $4bac: $80
	rst  $38                                         ; $4bad: $ff
	add  b                                           ; $4bae: $80
	push af                                          ; $4baf: $f5
	add  b                                           ; $4bb0: $80
	and  b                                           ; $4bb1: $a0
	add  b                                           ; $4bb2: $80
	ld   de, $3e80                                   ; $4bb3: $11 $80 $3e
	ld   a, [bc]                                     ; $4bb6: $0a
	ld   h, c                                        ; $4bb7: $61
	ld   a, a                                        ; $4bb8: $7f
	ret  nc                                          ; $4bb9: $d0

	pop  af                                          ; $4bba: $f1
	and  b                                           ; $4bbb: $a0
	ldh  [$c1], a                                    ; $4bbc: $e0 $c1
	cp   [hl]                                        ; $4bbe: $be
	ld   [hl], c                                     ; $4bbf: $71
	ld   a, a                                        ; $4bc0: $7f
	adc  $83                                         ; $4bc1: $ce $83
	rst  $38                                         ; $4bc3: $ff
	add  b                                           ; $4bc4: $80
	ld   a, a                                        ; $4bc5: $7f
	dec  b                                           ; $4bc6: $05
	rst  JumpTable                                         ; $4bc7: $df
	rst  $38                                         ; $4bc8: $ff
	ld   l, [hl]                                     ; $4bc9: $6e
	rst  $38                                         ; $4bca: $ff
	ld   c, $80                                      ; $4bcb: $0e $80
	add  b                                           ; $4bcd: $80
	ret  nz                                          ; $4bce: $c0

	add  b                                           ; $4bcf: $80
	ldh  [rP1], a                                    ; $4bd0: $e0 $00
	ld   h, b                                        ; $4bd2: $60
	add  c                                           ; $4bd3: $81
	ldh  [rSB], a                                    ; $4bd4: $e0 $01
	ld   b, b                                        ; $4bd6: $40
	ret  nz                                          ; $4bd7: $c0

	add  b                                           ; $4bd8: $80
	and  b                                           ; $4bd9: $a0
	add  b                                           ; $4bda: $80
	ret  nz                                          ; $4bdb: $c0

	nop                                              ; $4bdc: $00
	rra                                              ; $4bdd: $1f
	add  e                                           ; $4bde: $83
	ldh  [$80], a                                    ; $4bdf: $e0 $80
	pop  af                                          ; $4be1: $f1
	add  b                                           ; $4be2: $80
	rst  $38                                         ; $4be3: $ff
	rlca                                             ; $4be4: $07
	ld   a, a                                        ; $4be5: $7f
	rst  $38                                         ; $4be6: $ff
	ccf                                              ; $4be7: $3f
	rst  $38                                         ; $4be8: $ff
	inc  d                                           ; $4be9: $14
	rst  $38                                         ; $4bea: $ff
	ld   l, e                                        ; $4beb: $6b
	rst  $38                                         ; $4bec: $ff
	add  b                                           ; $4bed: $80
	rst  $10                                         ; $4bee: $d7
	add  b                                           ; $4bef: $80
	ldh  a, [c]                                      ; $4bf0: $f2
	ld   bc, $c484                                   ; $4bf1: $01 $84 $c4
	add  b                                           ; $4bf4: $80
	ret  nz                                          ; $4bf5: $c0

	nop                                              ; $4bf6: $00
	ld   b, b                                        ; $4bf7: $40
	add  c                                           ; $4bf8: $81
	ret  nz                                          ; $4bf9: $c0

	add  b                                           ; $4bfa: $80
	add  b                                           ; $4bfb: $80
	add  b                                           ; $4bfc: $80
	rst  $38                                         ; $4bfd: $ff
	ld   [bc], a                                     ; $4bfe: $02
	db   $fd                                         ; $4bff: $fd
	rst  $38                                         ; $4c00: $ff
	ld   a, [$ff81]                                  ; $4c01: $fa $81 $ff
	add  hl, bc                                      ; $4c04: $09
	ld   a, [$fcff]                                  ; $4c05: $fa $ff $fc
	rst  $38                                         ; $4c08: $ff
	db   $f4                                         ; $4c09: $f4
	rst  $38                                         ; $4c0a: $ff
	ldh  [rIE], a                                    ; $4c0b: $e0 $ff
	dec  d                                           ; $4c0d: $15
	nop                                              ; $4c0e: $00
	add  b                                           ; $4c0f: $80
	db   $10                                         ; $4c10: $10
	add  b                                           ; $4c11: $80
	add  b                                           ; $4c12: $80
	add  b                                           ; $4c13: $80
	ld   sp, hl                                      ; $4c14: $f9
	dec  e                                           ; $4c15: $1d
	db   $ec                                         ; $4c16: $ec
	db   $fc                                         ; $4c17: $fc
	call nc, Call_078_7cfc                           ; $4c18: $d4 $fc $7c
	db   $fc                                         ; $4c1b: $fc
	dec  d                                           ; $4c1c: $15
	db   $fd                                         ; $4c1d: $fd
	add  b                                           ; $4c1e: $80
	rst  $38                                         ; $4c1f: $ff
	adc  a                                           ; $4c20: $8f
	rst  $38                                         ; $4c21: $ff
	sbc  h                                           ; $4c22: $9c
	db   $fc                                         ; $4c23: $fc
	cp   b                                           ; $4c24: $b8
	ld   hl, sp+$38                                  ; $4c25: $f8 $38
	ld   hl, sp+$38                                  ; $4c27: $f8 $38
	ld   hl, sp+$38                                  ; $4c29: $f8 $38
	ld   hl, sp+$3c                                  ; $4c2b: $f8 $3c
	db   $fc                                         ; $4c2d: $fc
	nop                                              ; $4c2e: $00
	rst  $38                                         ; $4c2f: $ff
	cp   a                                           ; $4c30: $bf
	rst  $38                                         ; $4c31: $ff
	rst  JumpTable                                         ; $4c32: $df
	rst  $38                                         ; $4c33: $ff
	add  b                                           ; $4c34: $80
	ld   a, a                                        ; $4c35: $7f
	add  b                                           ; $4c36: $80
	ld   a, e                                        ; $4c37: $7b
	add  d                                           ; $4c38: $82
	ld   a, c                                        ; $4c39: $79
	rla                                              ; $4c3a: $17
	ret  c                                           ; $4c3b: $d8

	ld   hl, sp-$80                                  ; $4c3c: $f8 $80
	rst  $38                                         ; $4c3e: $ff
	rra                                              ; $4c3f: $1f
	rst  $38                                         ; $4c40: $ff
	rrca                                             ; $4c41: $0f
	rst  $38                                         ; $4c42: $ff
	add  l                                           ; $4c43: $85
	rst  $38                                         ; $4c44: $ff
	ret  z                                           ; $4c45: $c8

	rst  $38                                         ; $4c46: $ff
	db   $ec                                         ; $4c47: $ec
	rst  $38                                         ; $4c48: $ff
	db   $e4                                         ; $4c49: $e4
	rst  $38                                         ; $4c4a: $ff
	ld   h, h                                        ; $4c4b: $64
	ld   a, a                                        ; $4c4c: $7f
	ret                                              ; $4c4d: $c9


	ld   hl, sp-$4c                                  ; $4c4e: $f8 $b4
	db   $f4                                         ; $4c50: $f4
	ld   l, b                                        ; $4c51: $68
	add  sp, -$80                                    ; $4c52: $e8 $80
	call nc, $aa80                                   ; $4c54: $d4 $80 $aa
	add  b                                           ; $4c57: $80
	db   $f4                                         ; $4c58: $f4
	add  b                                           ; $4c59: $80
	ld   [$f480], a                                  ; $4c5a: $ea $80 $f4
	add  b                                           ; $4c5d: $80
	ld   a, [hl]                                     ; $4c5e: $7e
	adc  h                                           ; $4c5f: $8c
	nop                                              ; $4c60: $00
	ld   de, $ff07                                   ; $4c61: $11 $07 $ff
	or   e                                           ; $4c64: $b3
	cp   a                                           ; $4c65: $bf
	ld   [hl], e                                     ; $4c66: $73
	ld   a, a                                        ; $4c67: $7f
	rst  $30                                         ; $4c68: $f7
	rst  $38                                         ; $4c69: $ff
	rst  $30                                         ; $4c6a: $f7
	rst  $38                                         ; $4c6b: $ff
	rst  $30                                         ; $4c6c: $f7
	rst  $38                                         ; $4c6d: $ff
	rst  $20                                         ; $4c6e: $e7
	rst  $38                                         ; $4c6f: $ff
	rst  ToBoot                                         ; $4c70: $c7
	rst  $38                                         ; $4c71: $ff
	ld   a, [hl+]                                    ; $4c72: $2a
	ld   a, [$f480]                                  ; $4c73: $fa $80 $f4
	add  b                                           ; $4c76: $80
	ld   hl, sp-$80                                  ; $4c77: $f8 $80
	db   $f4                                         ; $4c79: $f4
	add  b                                           ; $4c7a: $80
	ld   hl, sp-$80                                  ; $4c7b: $f8 $80
	db   $f4                                         ; $4c7d: $f4
	add  b                                           ; $4c7e: $80
	add  sp, -$80                                    ; $4c7f: $e8 $80
	db   $f4                                         ; $4c81: $f4
	ld   b, $5f                                      ; $4c82: $06 $5f
	rst  $38                                         ; $4c84: $ff
	rra                                              ; $4c85: $1f
	rst  $38                                         ; $4c86: $ff
	ccf                                              ; $4c87: $3f
	rst  $38                                         ; $4c88: $ff
	ld   a, a                                        ; $4c89: $7f
	add  b                                           ; $4c8a: $80
	ld   sp, hl                                      ; $4c8b: $f9
	add  c                                           ; $4c8c: $81
	ldh  a, [rTIMA]                                  ; $4c8d: $f0 $05
	pop  af                                          ; $4c8f: $f1
	ld   sp, hl                                      ; $4c90: $f9
	rst  $30                                         ; $4c91: $f7
	rst  $38                                         ; $4c92: $ff
	rst  $20                                         ; $4c93: $e7
	add  sp, -$80                                    ; $4c94: $e8 $80
	ret  nc                                          ; $4c96: $d0

	add  b                                           ; $4c97: $80

jr_078_4c98:
	and  b                                           ; $4c98: $a0
	add  b                                           ; $4c99: $80
	ret  nc                                          ; $4c9a: $d0

	add  b                                           ; $4c9b: $80
	ldh  a, [rSC]                                    ; $4c9c: $f0 $02
	jr   jr_078_4c98                                 ; $4c9e: $18 $f8

	db   $ec                                         ; $4ca0: $ec
	add  c                                           ; $4ca1: $81
	db   $fc                                         ; $4ca2: $fc
	dec  bc                                          ; $4ca3: $0b
	ret  nz                                          ; $4ca4: $c0

	rst  $38                                         ; $4ca5: $ff
	rra                                              ; $4ca6: $1f
	ccf                                              ; $4ca7: $3f
	cpl                                              ; $4ca8: $2f
	ccf                                              ; $4ca9: $3f
	rst  JumpTable                                         ; $4caa: $df
	rst  $38                                         ; $4cab: $ff
	cpl                                              ; $4cac: $2f
	rst  $38                                         ; $4cad: $ff
	db   $10                                         ; $4cae: $10
	rra                                              ; $4caf: $1f
	add  b                                           ; $4cb0: $80
	ccf                                              ; $4cb1: $3f
	add  b                                           ; $4cb2: $80
	ld   bc, $00ff                                   ; $4cb3: $01 $ff $00
	rst  $38                                         ; $4cb6: $ff
	nop                                              ; $4cb7: $00
	sbc  h                                           ; $4cb8: $9c
	nop                                              ; $4cb9: $00
	inc  d                                           ; $4cba: $14
	ld   [bc], a                                     ; $4cbb: $02
	add  [hl]                                        ; $4cbc: $86
	nop                                              ; $4cbd: $00
	add  b                                           ; $4cbe: $80
	ld   a, [bc]                                     ; $4cbf: $0a
	add  b                                           ; $4cc0: $80
	dec  b                                           ; $4cc1: $05
	add  b                                           ; $4cc2: $80
	ld   a, [bc]                                     ; $4cc3: $0a
	add  b                                           ; $4cc4: $80
	dec  b                                           ; $4cc5: $05
	add  [hl]                                        ; $4cc6: $86
	nop                                              ; $4cc7: $00
	add  b                                           ; $4cc8: $80
	xor  d                                           ; $4cc9: $aa
	add  b                                           ; $4cca: $80
	ld   d, l                                        ; $4ccb: $55
	add  b                                           ; $4ccc: $80
	xor  d                                           ; $4ccd: $aa
	add  b                                           ; $4cce: $80
	ld   d, l                                        ; $4ccf: $55
	add  [hl]                                        ; $4cd0: $86
	nop                                              ; $4cd1: $00
	add  b                                           ; $4cd2: $80
	xor  d                                           ; $4cd3: $aa
	add  b                                           ; $4cd4: $80
	ld   d, l                                        ; $4cd5: $55
	add  b                                           ; $4cd6: $80
	xor  d                                           ; $4cd7: $aa
	add  b                                           ; $4cd8: $80
	ld   d, l                                        ; $4cd9: $55
	add  [hl]                                        ; $4cda: $86
	nop                                              ; $4cdb: $00
	add  b                                           ; $4cdc: $80
	xor  d                                           ; $4cdd: $aa
	add  b                                           ; $4cde: $80
	ld   d, l                                        ; $4cdf: $55
	add  b                                           ; $4ce0: $80
	xor  d                                           ; $4ce1: $aa
	add  b                                           ; $4ce2: $80
	ld   d, l                                        ; $4ce3: $55
	add  [hl]                                        ; $4ce4: $86
	nop                                              ; $4ce5: $00
	add  b                                           ; $4ce6: $80
	xor  d                                           ; $4ce7: $aa
	add  b                                           ; $4ce8: $80
	ld   d, l                                        ; $4ce9: $55
	add  b                                           ; $4cea: $80
	xor  d                                           ; $4ceb: $aa
	add  b                                           ; $4cec: $80
	ld   d, l                                        ; $4ced: $55
	add  [hl]                                        ; $4cee: $86
	nop                                              ; $4cef: $00
	add  b                                           ; $4cf0: $80
	xor  d                                           ; $4cf1: $aa
	add  b                                           ; $4cf2: $80
	ld   d, l                                        ; $4cf3: $55
	add  b                                           ; $4cf4: $80
	xor  d                                           ; $4cf5: $aa
	add  b                                           ; $4cf6: $80
	ld   d, l                                        ; $4cf7: $55
	add  [hl]                                        ; $4cf8: $86
	nop                                              ; $4cf9: $00
	add  b                                           ; $4cfa: $80
	xor  d                                           ; $4cfb: $aa
	add  b                                           ; $4cfc: $80
	ld   d, l                                        ; $4cfd: $55
	add  b                                           ; $4cfe: $80
	xor  d                                           ; $4cff: $aa
	add  b                                           ; $4d00: $80
	ld   d, l                                        ; $4d01: $55
	add  [hl]                                        ; $4d02: $86
	nop                                              ; $4d03: $00
	add  b                                           ; $4d04: $80
	xor  d                                           ; $4d05: $aa
	add  b                                           ; $4d06: $80
	ld   d, l                                        ; $4d07: $55
	add  b                                           ; $4d08: $80
	xor  d                                           ; $4d09: $aa
	add  b                                           ; $4d0a: $80
	ld   d, l                                        ; $4d0b: $55
	add  [hl]                                        ; $4d0c: $86
	nop                                              ; $4d0d: $00
	add  b                                           ; $4d0e: $80
	xor  d                                           ; $4d0f: $aa
	add  b                                           ; $4d10: $80
	ld   d, l                                        ; $4d11: $55
	add  b                                           ; $4d12: $80
	xor  d                                           ; $4d13: $aa
	add  b                                           ; $4d14: $80
	ld   d, l                                        ; $4d15: $55
	add  [hl]                                        ; $4d16: $86
	nop                                              ; $4d17: $00
	add  b                                           ; $4d18: $80
	xor  d                                           ; $4d19: $aa
	add  b                                           ; $4d1a: $80
	ld   d, l                                        ; $4d1b: $55
	add  b                                           ; $4d1c: $80
	xor  d                                           ; $4d1d: $aa
	add  b                                           ; $4d1e: $80
	ld   d, l                                        ; $4d1f: $55
	add  [hl]                                        ; $4d20: $86
	nop                                              ; $4d21: $00
	add  b                                           ; $4d22: $80
	xor  d                                           ; $4d23: $aa
	add  b                                           ; $4d24: $80
	ld   d, l                                        ; $4d25: $55
	add  b                                           ; $4d26: $80
	xor  d                                           ; $4d27: $aa
	add  b                                           ; $4d28: $80
	ld   d, l                                        ; $4d29: $55
	add  [hl]                                        ; $4d2a: $86
	nop                                              ; $4d2b: $00
	add  b                                           ; $4d2c: $80
	xor  d                                           ; $4d2d: $aa
	add  b                                           ; $4d2e: $80
	ld   d, l                                        ; $4d2f: $55
	add  b                                           ; $4d30: $80
	xor  d                                           ; $4d31: $aa
	add  b                                           ; $4d32: $80
	ld   d, l                                        ; $4d33: $55
	add  [hl]                                        ; $4d34: $86
	nop                                              ; $4d35: $00
	add  b                                           ; $4d36: $80
	xor  d                                           ; $4d37: $aa
	add  b                                           ; $4d38: $80
	ld   d, l                                        ; $4d39: $55
	add  b                                           ; $4d3a: $80
	xor  d                                           ; $4d3b: $aa
	add  b                                           ; $4d3c: $80
	ld   d, l                                        ; $4d3d: $55
	add  [hl]                                        ; $4d3e: $86
	nop                                              ; $4d3f: $00
	add  b                                           ; $4d40: $80
	xor  d                                           ; $4d41: $aa
	add  b                                           ; $4d42: $80
	ld   d, l                                        ; $4d43: $55
	add  b                                           ; $4d44: $80
	xor  d                                           ; $4d45: $aa
	add  b                                           ; $4d46: $80
	ld   d, l                                        ; $4d47: $55
	add  [hl]                                        ; $4d48: $86
	nop                                              ; $4d49: $00
	ld   bc, $bfb7                                   ; $4d4a: $01 $b7 $bf
	add  b                                           ; $4d4d: $80
	ld   a, a                                        ; $4d4e: $7f
	add  b                                           ; $4d4f: $80
	cp   a                                           ; $4d50: $bf
	add  b                                           ; $4d51: $80
	ld   a, a                                        ; $4d52: $7f
	nop                                              ; $4d53: $00
	ld   [$0085], sp                                 ; $4d54: $08 $85 $00
	add  b                                           ; $4d57: $80
	xor  d                                           ; $4d58: $aa
	add  b                                           ; $4d59: $80
	call nc, $aa80                                   ; $4d5a: $d4 $80 $aa
	add  b                                           ; $4d5d: $80
	call nc, $0a80                                   ; $4d5e: $d4 $80 $0a
	add  b                                           ; $4d61: $80
	dec  b                                           ; $4d62: $05
	add  b                                           ; $4d63: $80
	ld   a, [bc]                                     ; $4d64: $0a
	add  b                                           ; $4d65: $80
	dec  b                                           ; $4d66: $05
	add  b                                           ; $4d67: $80
	ld   a, [bc]                                     ; $4d68: $0a
	add  b                                           ; $4d69: $80
	dec  b                                           ; $4d6a: $05
	add  b                                           ; $4d6b: $80
	ld   a, [bc]                                     ; $4d6c: $0a
	add  b                                           ; $4d6d: $80
	rrca                                             ; $4d6e: $0f
	add  b                                           ; $4d6f: $80
	xor  d                                           ; $4d70: $aa
	add  b                                           ; $4d71: $80
	ld   d, l                                        ; $4d72: $55
	add  b                                           ; $4d73: $80
	xor  d                                           ; $4d74: $aa
	add  b                                           ; $4d75: $80
	ld   d, l                                        ; $4d76: $55
	add  b                                           ; $4d77: $80
	xor  d                                           ; $4d78: $aa
	add  b                                           ; $4d79: $80
	ld   d, l                                        ; $4d7a: $55
	add  b                                           ; $4d7b: $80
	xor  d                                           ; $4d7c: $aa
	add  b                                           ; $4d7d: $80
	rst  $38                                         ; $4d7e: $ff
	add  b                                           ; $4d7f: $80
	xor  d                                           ; $4d80: $aa
	add  b                                           ; $4d81: $80
	ld   d, l                                        ; $4d82: $55
	add  b                                           ; $4d83: $80
	xor  d                                           ; $4d84: $aa
	add  b                                           ; $4d85: $80
	ld   d, l                                        ; $4d86: $55
	add  b                                           ; $4d87: $80
	xor  d                                           ; $4d88: $aa
	add  b                                           ; $4d89: $80
	ld   d, l                                        ; $4d8a: $55
	add  b                                           ; $4d8b: $80
	xor  d                                           ; $4d8c: $aa
	add  b                                           ; $4d8d: $80
	rst  $38                                         ; $4d8e: $ff
	add  b                                           ; $4d8f: $80
	xor  d                                           ; $4d90: $aa
	add  b                                           ; $4d91: $80
	ld   d, l                                        ; $4d92: $55
	add  b                                           ; $4d93: $80
	xor  d                                           ; $4d94: $aa
	add  b                                           ; $4d95: $80
	ld   d, l                                        ; $4d96: $55
	add  b                                           ; $4d97: $80
	xor  d                                           ; $4d98: $aa
	add  b                                           ; $4d99: $80
	ld   d, l                                        ; $4d9a: $55
	add  b                                           ; $4d9b: $80
	xor  d                                           ; $4d9c: $aa
	add  b                                           ; $4d9d: $80
	rst  $38                                         ; $4d9e: $ff
	add  b                                           ; $4d9f: $80
	xor  d                                           ; $4da0: $aa
	add  b                                           ; $4da1: $80
	ld   d, l                                        ; $4da2: $55
	add  b                                           ; $4da3: $80
	xor  d                                           ; $4da4: $aa
	add  b                                           ; $4da5: $80
	ld   d, l                                        ; $4da6: $55
	add  b                                           ; $4da7: $80
	xor  d                                           ; $4da8: $aa
	add  b                                           ; $4da9: $80
	ld   d, l                                        ; $4daa: $55
	add  b                                           ; $4dab: $80
	xor  d                                           ; $4dac: $aa
	add  b                                           ; $4dad: $80
	rst  $38                                         ; $4dae: $ff
	add  b                                           ; $4daf: $80
	xor  d                                           ; $4db0: $aa
	add  b                                           ; $4db1: $80
	ld   d, l                                        ; $4db2: $55
	add  b                                           ; $4db3: $80
	xor  d                                           ; $4db4: $aa
	add  b                                           ; $4db5: $80
	ld   d, l                                        ; $4db6: $55
	add  b                                           ; $4db7: $80
	xor  d                                           ; $4db8: $aa
	add  b                                           ; $4db9: $80
	ld   d, l                                        ; $4dba: $55
	add  b                                           ; $4dbb: $80
	xor  d                                           ; $4dbc: $aa
	add  b                                           ; $4dbd: $80
	rst  $38                                         ; $4dbe: $ff
	add  b                                           ; $4dbf: $80
	xor  d                                           ; $4dc0: $aa
	add  b                                           ; $4dc1: $80
	ld   d, l                                        ; $4dc2: $55
	add  b                                           ; $4dc3: $80
	xor  d                                           ; $4dc4: $aa
	add  b                                           ; $4dc5: $80
	ld   d, l                                        ; $4dc6: $55
	add  b                                           ; $4dc7: $80
	xor  d                                           ; $4dc8: $aa
	add  b                                           ; $4dc9: $80
	ld   d, l                                        ; $4dca: $55
	add  b                                           ; $4dcb: $80
	xor  d                                           ; $4dcc: $aa
	add  b                                           ; $4dcd: $80
	rst  $38                                         ; $4dce: $ff
	add  b                                           ; $4dcf: $80
	xor  d                                           ; $4dd0: $aa
	add  b                                           ; $4dd1: $80
	ld   d, l                                        ; $4dd2: $55
	add  b                                           ; $4dd3: $80
	xor  d                                           ; $4dd4: $aa
	add  b                                           ; $4dd5: $80
	ld   d, l                                        ; $4dd6: $55
	add  b                                           ; $4dd7: $80
	xor  d                                           ; $4dd8: $aa
	add  b                                           ; $4dd9: $80
	ld   d, l                                        ; $4dda: $55
	add  b                                           ; $4ddb: $80
	xor  d                                           ; $4ddc: $aa
	add  b                                           ; $4ddd: $80
	rst  $38                                         ; $4dde: $ff
	add  b                                           ; $4ddf: $80
	xor  d                                           ; $4de0: $aa
	add  b                                           ; $4de1: $80
	ld   d, l                                        ; $4de2: $55
	add  b                                           ; $4de3: $80
	xor  d                                           ; $4de4: $aa
	add  b                                           ; $4de5: $80
	ld   d, l                                        ; $4de6: $55
	add  b                                           ; $4de7: $80
	xor  d                                           ; $4de8: $aa
	add  b                                           ; $4de9: $80
	ld   d, l                                        ; $4dea: $55
	add  b                                           ; $4deb: $80
	xor  d                                           ; $4dec: $aa
	add  b                                           ; $4ded: $80
	rst  $38                                         ; $4dee: $ff
	add  b                                           ; $4def: $80
	xor  d                                           ; $4df0: $aa
	add  b                                           ; $4df1: $80
	ld   d, l                                        ; $4df2: $55
	add  b                                           ; $4df3: $80
	xor  d                                           ; $4df4: $aa
	add  b                                           ; $4df5: $80
	ld   d, l                                        ; $4df6: $55
	add  b                                           ; $4df7: $80
	xor  d                                           ; $4df8: $aa
	add  b                                           ; $4df9: $80
	ld   d, l                                        ; $4dfa: $55
	add  b                                           ; $4dfb: $80
	xor  d                                           ; $4dfc: $aa
	add  b                                           ; $4dfd: $80
	rst  $38                                         ; $4dfe: $ff
	add  b                                           ; $4dff: $80
	xor  d                                           ; $4e00: $aa
	add  b                                           ; $4e01: $80
	ld   d, l                                        ; $4e02: $55
	add  b                                           ; $4e03: $80
	xor  d                                           ; $4e04: $aa
	add  b                                           ; $4e05: $80
	ld   d, l                                        ; $4e06: $55
	add  b                                           ; $4e07: $80
	xor  d                                           ; $4e08: $aa
	add  b                                           ; $4e09: $80
	ld   d, l                                        ; $4e0a: $55
	add  b                                           ; $4e0b: $80
	xor  d                                           ; $4e0c: $aa
	add  b                                           ; $4e0d: $80
	rst  $38                                         ; $4e0e: $ff
	add  b                                           ; $4e0f: $80
	xor  d                                           ; $4e10: $aa
	add  b                                           ; $4e11: $80
	ld   d, l                                        ; $4e12: $55
	add  b                                           ; $4e13: $80
	xor  d                                           ; $4e14: $aa
	add  b                                           ; $4e15: $80
	ld   d, l                                        ; $4e16: $55
	add  b                                           ; $4e17: $80
	xor  d                                           ; $4e18: $aa
	add  b                                           ; $4e19: $80
	ld   d, l                                        ; $4e1a: $55
	add  b                                           ; $4e1b: $80
	xor  d                                           ; $4e1c: $aa
	add  b                                           ; $4e1d: $80
	rst  $38                                         ; $4e1e: $ff
	add  b                                           ; $4e1f: $80
	xor  d                                           ; $4e20: $aa
	add  b                                           ; $4e21: $80
	ld   d, l                                        ; $4e22: $55
	add  b                                           ; $4e23: $80
	xor  d                                           ; $4e24: $aa
	add  b                                           ; $4e25: $80
	ld   d, l                                        ; $4e26: $55
	add  b                                           ; $4e27: $80
	xor  d                                           ; $4e28: $aa
	add  b                                           ; $4e29: $80
	ld   d, l                                        ; $4e2a: $55
	add  b                                           ; $4e2b: $80
	xor  d                                           ; $4e2c: $aa
	add  b                                           ; $4e2d: $80
	rst  $38                                         ; $4e2e: $ff
	add  b                                           ; $4e2f: $80
	xor  d                                           ; $4e30: $aa
	add  b                                           ; $4e31: $80
	ld   d, l                                        ; $4e32: $55
	add  b                                           ; $4e33: $80
	xor  d                                           ; $4e34: $aa
	add  b                                           ; $4e35: $80
	ld   d, l                                        ; $4e36: $55
	add  b                                           ; $4e37: $80
	xor  d                                           ; $4e38: $aa
	add  b                                           ; $4e39: $80
	ld   d, l                                        ; $4e3a: $55
	add  b                                           ; $4e3b: $80
	xor  d                                           ; $4e3c: $aa
	add  b                                           ; $4e3d: $80
	rst  $38                                         ; $4e3e: $ff
	ld   bc, $bfb7                                   ; $4e3f: $01 $b7 $bf
	add  b                                           ; $4e42: $80
	ld   a, a                                        ; $4e43: $7f
	add  b                                           ; $4e44: $80
	cp   a                                           ; $4e45: $bf
	add  b                                           ; $4e46: $80
	ld   a, a                                        ; $4e47: $7f
	add  b                                           ; $4e48: $80
	cp   a                                           ; $4e49: $bf
	add  b                                           ; $4e4a: $80
	ld   a, a                                        ; $4e4b: $7f
	add  b                                           ; $4e4c: $80
	cp   a                                           ; $4e4d: $bf
	inc  bc                                          ; $4e4e: $03
	call nz, $95f3                                   ; $4e4f: $c4 $f3 $95
	xor  d                                           ; $4e52: $aa
	add  b                                           ; $4e53: $80
	call nc, $aa80                                   ; $4e54: $d4 $80 $aa
	add  b                                           ; $4e57: $80
	call nc, $aa80                                   ; $4e58: $d4 $80 $aa
	add  b                                           ; $4e5b: $80
	push de                                          ; $4e5c: $d5
	add  b                                           ; $4e5d: $80
	xor  d                                           ; $4e5e: $aa
	ld   [bc], a                                     ; $4e5f: $02
	nop                                              ; $4e60: $00
	rst  $38                                         ; $4e61: $ff
	ldh  a, [$8d]                                    ; $4e62: $f0 $8d
	rrca                                             ; $4e64: $0f
	sbc  h                                           ; $4e65: $9c
	rst  $38                                         ; $4e66: $ff
	ld   [bc], a                                     ; $4e67: $02
	jp   hl                                          ; $4e68: $e9


	rst  $38                                         ; $4e69: $ff
	jp   hl                                          ; $4e6a: $e9


	adc  e                                           ; $4e6b: $8b
	rst  $38                                         ; $4e6c: $ff
	inc  bc                                          ; $4e6d: $03
	ld   e, a                                        ; $4e6e: $5f
	rst  $38                                         ; $4e6f: $ff
	ld   e, a                                        ; $4e70: $5f
	rst  $38                                         ; $4e71: $ff
	add  b                                           ; $4e72: $80
	ret                                              ; $4e73: $c9


	add  b                                           ; $4e74: $80
	jp   hl                                          ; $4e75: $e9


	add  b                                           ; $4e76: $80
	rst  $38                                         ; $4e77: $ff
	add  d                                           ; $4e78: $82
	ld   sp, hl                                      ; $4e79: $f9
	add  h                                           ; $4e7a: $84
	rst  $38                                         ; $4e7b: $ff
	add  b                                           ; $4e7c: $80
	inc  h                                           ; $4e7d: $24
	add  b                                           ; $4e7e: $80
	dec  h                                           ; $4e7f: $25
	add  b                                           ; $4e80: $80
	rst  $38                                         ; $4e81: $ff
	add  d                                           ; $4e82: $82
	daa                                              ; $4e83: $27
	and  b                                           ; $4e84: $a0
	rst  $38                                         ; $4e85: $ff
	ld   [bc], a                                     ; $4e86: $02
	rst  JumpTable                                         ; $4e87: $df
	rst  $38                                         ; $4e88: $ff
	rst  JumpTable                                         ; $4e89: $df
	adc  a                                           ; $4e8a: $8f
	rst  $38                                         ; $4e8b: $ff
	add  b                                           ; $4e8c: $80
	ld   sp, hl                                      ; $4e8d: $f9
	add  b                                           ; $4e8e: $80
	db   $fd                                         ; $4e8f: $fd
	add  b                                           ; $4e90: $80
	rst  $38                                         ; $4e91: $ff
	add  b                                           ; $4e92: $80
	ld   sp, hl                                      ; $4e93: $f9
	add  b                                           ; $4e94: $80
	db   $fd                                         ; $4e95: $fd
	add  h                                           ; $4e96: $84
	rst  $38                                         ; $4e97: $ff
	add  b                                           ; $4e98: $80
	inc  h                                           ; $4e99: $24
	add  b                                           ; $4e9a: $80
	dec  h                                           ; $4e9b: $25
	add  b                                           ; $4e9c: $80
	rst  $38                                         ; $4e9d: $ff
	add  b                                           ; $4e9e: $80
	daa                                              ; $4e9f: $27
	add  b                                           ; $4ea0: $80
	cpl                                              ; $4ea1: $2f
	or   b                                           ; $4ea2: $b0
	rst  $38                                         ; $4ea3: $ff
	ld   [de], a                                     ; $4ea4: $12
	cp   $ff                                         ; $4ea5: $fe $ff
	ld   c, h                                        ; $4ea7: $4c
	ldh  a, [c]                                      ; $4ea8: $f2
	scf                                              ; $4ea9: $37
	rst  $30                                         ; $4eaa: $f7
	ld   [hl-], a                                    ; $4eab: $32
	ldh  a, [c]                                      ; $4eac: $f2
	ld   [hl-], a                                    ; $4ead: $32
	ldh  a, [c]                                      ; $4eae: $f2
	scf                                              ; $4eaf: $37
	rst  $30                                         ; $4eb0: $f7
	ld   [hl-], a                                    ; $4eb1: $32
	ldh  a, [c]                                      ; $4eb2: $f2
	ld   [hl], d                                     ; $4eb3: $72
	ldh  a, [c]                                      ; $4eb4: $f2
	ld   [hl], l                                     ; $4eb5: $75
	push af                                          ; $4eb6: $f5
	ld   a, a                                        ; $4eb7: $7f
	add  c                                           ; $4eb8: $81
	rst  $38                                         ; $4eb9: $ff
	add  d                                           ; $4eba: $82
	cp   a                                           ; $4ebb: $bf
	add  b                                           ; $4ebc: $80
	rst  $38                                         ; $4ebd: $ff
	add  d                                           ; $4ebe: $82
	xor  a                                           ; $4ebf: $af
	add  b                                           ; $4ec0: $80
	ei                                               ; $4ec1: $fb
	nop                                              ; $4ec2: $00
	ldh  a, [$81]                                    ; $4ec3: $f0 $81
	rrca                                             ; $4ec5: $0f
	inc  bc                                          ; $4ec6: $03
	dec  c                                           ; $4ec7: $0d
	rrca                                             ; $4ec8: $0f
	inc  b                                           ; $4ec9: $04
	rrca                                             ; $4eca: $0f
	add  b                                           ; $4ecb: $80
	ld   c, $03                                      ; $4ecc: $0e $03
	ld   [$080e], sp                                 ; $4ece: $08 $0e $08
	ld   c, $80                                      ; $4ed1: $0e $80
	rrca                                             ; $4ed3: $0f
	rlca                                             ; $4ed4: $07
	or   $ff                                         ; $4ed5: $f6 $ff
	ei                                               ; $4ed7: $fb
	rst  $38                                         ; $4ed8: $ff
	inc  [hl]                                        ; $4ed9: $34
	rst  $38                                         ; $4eda: $ff
	inc  d                                           ; $4edb: $14
	rst  $38                                         ; $4edc: $ff
	add  b                                           ; $4edd: $80
	db   $db                                         ; $4ede: $db
	dec  c                                           ; $4edf: $0d
	ld   e, d                                        ; $4ee0: $5a
	add  c                                           ; $4ee1: $81
	nop                                              ; $4ee2: $00
	db   $db                                         ; $4ee3: $db
	cp   $ff                                         ; $4ee4: $fe $ff
	ld   c, d                                        ; $4ee6: $4a
	rst  $38                                         ; $4ee7: $ff
	db   $fd                                         ; $4ee8: $fd
	rst  $38                                         ; $4ee9: $ff
	or   [hl]                                        ; $4eea: $b6
	rst  $38                                         ; $4eeb: $ff
	or   [hl]                                        ; $4eec: $b6
	rst  $38                                         ; $4eed: $ff
	add  b                                           ; $4eee: $80
	db   $ed                                         ; $4eef: $ed
	ld   d, $25                                      ; $4ef0: $16 $25
	ld   c, b                                        ; $4ef2: $48
	sub  d                                           ; $4ef3: $92
	rst  $38                                         ; $4ef4: $ff
	sub  b                                           ; $4ef5: $90
	db   $fd                                         ; $4ef6: $fd
	ld   b, b                                        ; $4ef7: $40
	rst  $38                                         ; $4ef8: $ff
	or   $ff                                         ; $4ef9: $f6 $ff
	ld   c, l                                        ; $4efb: $4d
	rst  $38                                         ; $4efc: $ff
	ld   c, l                                        ; $4efd: $4d
	rst  $38                                         ; $4efe: $ff
	cp   [hl]                                        ; $4eff: $be
	cp   a                                           ; $4f00: $bf
	xor  e                                           ; $4f01: $ab
	inc  e                                           ; $4f02: $1c
	add  hl, bc                                      ; $4f03: $09
	cp   a                                           ; $4f04: $bf
	ld   c, e                                        ; $4f05: $4b
	rst  $38                                         ; $4f06: $ff
	ld   [bc], a                                     ; $4f07: $02
	add  c                                           ; $4f08: $81
	rst  $38                                         ; $4f09: $ff
	add  hl, bc                                      ; $4f0a: $09
	ld   e, c                                        ; $4f0b: $59
	rst  $38                                         ; $4f0c: $ff
	ld   a, l                                        ; $4f0d: $7d
	rst  $38                                         ; $4f0e: $ff
	rst  JumpTable                                         ; $4f0f: $df
	rst  $38                                         ; $4f10: $ff
	ld   d, $ff                                      ; $4f11: $16 $ff
	ld   [hl], $ff                                   ; $4f13: $36 $ff
	add  b                                           ; $4f15: $80
	rst  JumpTable                                         ; $4f16: $df
	nop                                              ; $4f17: $00
	db   $db                                         ; $4f18: $db
	add  c                                           ; $4f19: $81
	rst  $38                                         ; $4f1a: $ff
	ld   [bc], a                                     ; $4f1b: $02
	ld   b, l                                        ; $4f1c: $45
	rst  $38                                         ; $4f1d: $ff
	rst  $10                                         ; $4f1e: $d7
	add  c                                           ; $4f1f: $81
	rst  $38                                         ; $4f20: $ff
	inc  c                                           ; $4f21: $0c
	or   b                                           ; $4f22: $b0
	rst  $38                                         ; $4f23: $ff
	or   b                                           ; $4f24: $b0
	rst  $38                                         ; $4f25: $ff
	ld   a, c                                        ; $4f26: $79
	ld   a, l                                        ; $4f27: $7d
	ld   l, c                                        ; $4f28: $69
	rst  $38                                         ; $4f29: $ff
	or   [hl]                                        ; $4f2a: $b6
	rst  $38                                         ; $4f2b: $ff
	ld   e, c                                        ; $4f2c: $59
	rst  $38                                         ; $4f2d: $ff
	ld   e, c                                        ; $4f2e: $59
	add  c                                           ; $4f2f: $81
	rst  $38                                         ; $4f30: $ff
	ld   b, $c9                                      ; $4f31: $06 $c9
	rst  $38                                         ; $4f33: $ff
	ret                                              ; $4f34: $c9


	rst  $38                                         ; $4f35: $ff
	dec  h                                           ; $4f36: $25
	or   a                                           ; $4f37: $b7
	nop                                              ; $4f38: $00
	add  c                                           ; $4f39: $81
	rst  $38                                         ; $4f3a: $ff
	rla                                              ; $4f3b: $17
	ld   h, b                                        ; $4f3c: $60
	ei                                               ; $4f3d: $fb
	ld   h, h                                        ; $4f3e: $64
	rst  $38                                         ; $4f3f: $ff
	jp   nc, $50db                                   ; $4f40: $d2 $db $50

	add  d                                           ; $4f43: $82
	dec  sp                                          ; $4f44: $3b
	ei                                               ; $4f45: $fb
	cp   a                                           ; $4f46: $bf
	rst  $38                                         ; $4f47: $ff
	nop                                              ; $4f48: $00
	rst  $38                                         ; $4f49: $ff
	ld   l, a                                        ; $4f4a: $6f
	rst  $38                                         ; $4f4b: $ff
	db   $10                                         ; $4f4c: $10
	rst  $38                                         ; $4f4d: $ff
	sub  d                                           ; $4f4e: $92
	rst  $38                                         ; $4f4f: $ff
	rlca                                             ; $4f50: $07
	ld   l, a                                        ; $4f51: $6f
	ld   b, d                                        ; $4f52: $42
	ld   b, a                                        ; $4f53: $47
	add  d                                           ; $4f54: $82
	rst  $38                                         ; $4f55: $ff
	ld   b, $00                                      ; $4f56: $06 $00
	rst  $38                                         ; $4f58: $ff
	cp   a                                           ; $4f59: $bf
	rst  $38                                         ; $4f5a: $ff
	inc  d                                           ; $4f5b: $14
	rst  $38                                         ; $4f5c: $ff
	dec  e                                           ; $4f5d: $1d
	add  c                                           ; $4f5e: $81
	rst  $38                                         ; $4f5f: $ff
	ld   b, $a0                                      ; $4f60: $06 $a0
	rla                                              ; $4f62: $17
	adc  b                                           ; $4f63: $88
	cp   a                                           ; $4f64: $bf
	sub  a                                           ; $4f65: $97
	or   a                                           ; $4f66: $b7
	ld   d, $81                                      ; $4f67: $16 $81
	rst  $38                                         ; $4f69: $ff
	ld   [$fff9], sp                                 ; $4f6a: $08 $f9 $ff
	db   $fd                                         ; $4f6d: $fd
	rst  $38                                         ; $4f6e: $ff
	rst  JumpTable                                         ; $4f6f: $df
	rst  $38                                         ; $4f70: $ff
	and  b                                           ; $4f71: $a0
	rst  $38                                         ; $4f72: $ff
	and  b                                           ; $4f73: $a0
	add  c                                           ; $4f74: $81
	rst  $38                                         ; $4f75: $ff
	nop                                              ; $4f76: $00
	db   $db                                         ; $4f77: $db
	add  c                                           ; $4f78: $81
	rst  $38                                         ; $4f79: $ff
	ld   [bc], a                                     ; $4f7a: $02
	ld   b, h                                        ; $4f7b: $44
	rst  $38                                         ; $4f7c: $ff
	sub  $81                                         ; $4f7d: $d6 $81
	rst  $38                                         ; $4f7f: $ff
	inc  c                                           ; $4f80: $0c
	sub  h                                           ; $4f81: $94
	ld   sp, hl                                      ; $4f82: $f9
	sbc  a                                           ; $4f83: $9f
	rst  $38                                         ; $4f84: $ff
	rst  JumpTable                                         ; $4f85: $df
	rst  $38                                         ; $4f86: $ff
	ld   b, b                                        ; $4f87: $40
	rst  $38                                         ; $4f88: $ff
	cp   $ff                                         ; $4f89: $fe $ff
	sub  b                                           ; $4f8b: $90
	rst  $38                                         ; $4f8c: $ff
	ret  c                                           ; $4f8d: $d8

	add  c                                           ; $4f8e: $81
	rst  $38                                         ; $4f8f: $ff
	ld   bc, $b600                                   ; $4f90: $01 $00 $b6
	add  d                                           ; $4f93: $82
	rst  $38                                         ; $4f94: $ff
	dec  bc                                          ; $4f95: $0b
	ld   [bc], a                                     ; $4f96: $02
	rst  $38                                         ; $4f97: $ff
	ret  c                                           ; $4f98: $d8

	rst  $38                                         ; $4f99: $ff
	dec  b                                           ; $4f9a: $05
	rst  $38                                         ; $4f9b: $ff
	inc  e                                           ; $4f9c: $1c
	db   $fc                                         ; $4f9d: $fc
	cp   h                                           ; $4f9e: $bc
	db   $fc                                         ; $4f9f: $fc
	ld   a, a                                        ; $4fa0: $7f
	rst  $38                                         ; $4fa1: $ff
	add  b                                           ; $4fa2: $80
	db   $e4                                         ; $4fa3: $e4
	add  b                                           ; $4fa4: $80
	and  h                                           ; $4fa5: $a4
	add  b                                           ; $4fa6: $80
	jp   nc, $9280                                   ; $4fa7: $d2 $80 $92

	add  b                                           ; $4faa: $80
	push af                                          ; $4fab: $f5
	add  d                                           ; $4fac: $82
	sub  d                                           ; $4fad: $92
	add  b                                           ; $4fae: $80
	push af                                          ; $4faf: $f5
	add  d                                           ; $4fb0: $82
	sub  d                                           ; $4fb1: $92
	add  b                                           ; $4fb2: $80
	xor  e                                           ; $4fb3: $ab
	add  b                                           ; $4fb4: $80
	xor  a                                           ; $4fb5: $af
	add  b                                           ; $4fb6: $80
	ld   a, e                                        ; $4fb7: $7b
	add  b                                           ; $4fb8: $80
	xor  e                                           ; $4fb9: $ab
	add  b                                           ; $4fba: $80
	xor  a                                           ; $4fbb: $af
	add  b                                           ; $4fbc: $80
	ld   e, e                                        ; $4fbd: $5b
	add  b                                           ; $4fbe: $80
	xor  e                                           ; $4fbf: $ab
	add  b                                           ; $4fc0: $80
	xor  [hl]                                        ; $4fc1: $ae
	nop                                              ; $4fc2: $00
	rst  $38                                         ; $4fc3: $ff
	adc  [hl]                                        ; $4fc4: $8e
	rrca                                             ; $4fc5: $0f
	sbc  l                                           ; $4fc6: $9d
	rst  $38                                         ; $4fc7: $ff
	add  b                                           ; $4fc8: $80
	db   $fc                                         ; $4fc9: $fc
	adc  h                                           ; $4fca: $8c
	rst  $38                                         ; $4fcb: $ff
	add  b                                           ; $4fcc: $80
	ld   d, d                                        ; $4fcd: $52
	inc  b                                           ; $4fce: $04
	or   h                                           ; $4fcf: $b4
	rst  $38                                         ; $4fd0: $ff
	or   l                                           ; $4fd1: $b5
	rst  $38                                         ; $4fd2: $ff
	cp   $87                                         ; $4fd3: $fe $87
	rst  $38                                         ; $4fd5: $ff
	add  b                                           ; $4fd6: $80
	add  hl, sp                                      ; $4fd7: $39
	inc  b                                           ; $4fd8: $04
	sub  d                                           ; $4fd9: $92
	rst  $38                                         ; $4fda: $ff
	jp   nc, $bfff                                   ; $4fdb: $d2 $ff $bf

	add  a                                           ; $4fde: $87
	rst  $38                                         ; $4fdf: $ff
	add  b                                           ; $4fe0: $80
	inc  bc                                          ; $4fe1: $03
	ld   [bc], a                                     ; $4fe2: $02
	rrca                                             ; $4fe3: $0f
	cp   a                                           ; $4fe4: $bf
	ld   c, a                                        ; $4fe5: $4f
	sub  a                                           ; $4fe6: $97
	rst  $38                                         ; $4fe7: $ff
	add  b                                           ; $4fe8: $80
	ld   l, l                                        ; $4fe9: $6d
	adc  h                                           ; $4fea: $8c
	rst  $38                                         ; $4feb: $ff
	add  b                                           ; $4fec: $80
	or   [hl]                                        ; $4fed: $b6
	add  b                                           ; $4fee: $80
	inc  bc                                          ; $4fef: $03
	add  b                                           ; $4ff0: $80
	or   a                                           ; $4ff1: $b7
	add  b                                           ; $4ff2: $80
	cp   a                                           ; $4ff3: $bf
	add  [hl]                                        ; $4ff4: $86
	rst  $38                                         ; $4ff5: $ff
	add  b                                           ; $4ff6: $80
	db   $db                                         ; $4ff7: $db
	adc  b                                           ; $4ff8: $88
	rst  $38                                         ; $4ff9: $ff
	add  b                                           ; $4ffa: $80
	cp   $80                                         ; $4ffb: $fe $80
	rst  $38                                         ; $4ffd: $ff
	add  b                                           ; $4ffe: $80
	ld   l, h                                        ; $4fff: $6c
	add  [hl]                                        ; $5000: $86
	rst  $38                                         ; $5001: $ff
	add  b                                           ; $5002: $80
	ld   a, [$d280]                                  ; $5003: $fa $80 $d2
	add  b                                           ; $5006: $80
	rst  $38                                         ; $5007: $ff
	add  b                                           ; $5008: $80
	sub  d                                           ; $5009: $92
	add  b                                           ; $500a: $80
	rst  $38                                         ; $500b: $ff
	add  b                                           ; $500c: $80
	db   $fd                                         ; $500d: $fd
	add  b                                           ; $500e: $80
	ld   l, c                                        ; $500f: $69
	add  b                                           ; $5010: $80
	rst  $38                                         ; $5011: $ff
	add  d                                           ; $5012: $82
	ld   c, c                                        ; $5013: $49
	add  b                                           ; $5014: $80
	rst  $38                                         ; $5015: $ff
	add  b                                           ; $5016: $80
	ld   c, c                                        ; $5017: $49
	add  b                                           ; $5018: $80
	rst  $38                                         ; $5019: $ff
	add  d                                           ; $501a: $82
	inc  h                                           ; $501b: $24
	add  b                                           ; $501c: $80
	rst  $38                                         ; $501d: $ff
	add  hl, bc                                      ; $501e: $09
	cpl                                              ; $501f: $2f
	jr   nz, jr_078_5061                             ; $5020: $20 $3f

	jr   nz, @+$01                                   ; $5022: $20 $ff

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5024: $cf
	ld   [hl], l                                     ; $5025: $75
	dec  d                                           ; $5026: $15
	or   d                                           ; $5027: $b2
	ldh  a, [c]                                      ; $5028: $f2
	add  b                                           ; $5029: $80
	sub  l                                           ; $502a: $95
	add  b                                           ; $502b: $80
	sub  d                                           ; $502c: $92
	add  b                                           ; $502d: $80
	push af                                          ; $502e: $f5
	add  b                                           ; $502f: $80
	sub  d                                           ; $5030: $92
	add  b                                           ; $5031: $80
	ld   d, d                                        ; $5032: $52
	add  b                                           ; $5033: $80
	ld   [hl], l                                     ; $5034: $75
	add  b                                           ; $5035: $80
	ld   d, l                                        ; $5036: $55
	add  b                                           ; $5037: $80
	xor  d                                           ; $5038: $aa
	add  b                                           ; $5039: $80
	ld   e, d                                        ; $503a: $5a
	add  b                                           ; $503b: $80
	xor  a                                           ; $503c: $af
	add  b                                           ; $503d: $80
	ld   e, d                                        ; $503e: $5a
	add  b                                           ; $503f: $80
	xor  d                                           ; $5040: $aa
	add  b                                           ; $5041: $80
	xor  a                                           ; $5042: $af
	add  d                                           ; $5043: $82
	ld   e, d                                        ; $5044: $5a
	ld   b, $ff                                      ; $5045: $06 $ff
	rrca                                             ; $5047: $0f

jr_078_5048:
	rlca                                             ; $5048: $07
	nop                                              ; $5049: $00
	ld   [$0f00], sp                                 ; $504a: $08 $00 $0f
	add  c                                           ; $504d: $81
	nop                                              ; $504e: $00
	inc  bc                                          ; $504f: $03
	inc  bc                                          ; $5050: $03
	ld   [bc], a                                     ; $5051: $02
	ld   c, $0f                                      ; $5052: $0e $0f
	add  b                                           ; $5054: $80
	nop                                              ; $5055: $00
	ld   [$ff0f], sp                                 ; $5056: $08 $0f $ff
	cp   $02                                         ; $5059: $fe $02
	inc  b                                           ; $505b: $04
	ld   [$00ef], sp                                 ; $505c: $08 $ef $00
	ldh  [$80], a                                    ; $505f: $e0 $80

jr_078_5061:
	add  b                                           ; $5061: $80
	add  b                                           ; $5062: $80
	nop                                              ; $5063: $00
	nop                                              ; $5064: $00
	rst  $38                                         ; $5065: $ff
	add  b                                           ; $5066: $80
	nop                                              ; $5067: $00
	add  b                                           ; $5068: $80
	rst  $38                                         ; $5069: $ff
	add  d                                           ; $506a: $82
	nop                                              ; $506b: $00
	rlca                                             ; $506c: $07
	ldh  a, [rP1]                                    ; $506d: $f0 $00
	stop                                             ; $506f: $10 $00
	jr   nz, jr_078_50b3                             ; $5071: $20 $40

	ld   a, a                                        ; $5073: $7f
	rst  $38                                         ; $5074: $ff
	add  b                                           ; $5075: $80
	nop                                              ; $5076: $00
	add  c                                           ; $5077: $81
	rst  $38                                         ; $5078: $ff
	add  b                                           ; $5079: $80
	add  b                                           ; $507a: $80
	ld   [$fc00], sp                                 ; $507b: $08 $00 $fc
	ld   [bc], a                                     ; $507e: $02
	ld   c, $08                                      ; $507f: $0e $08
	jr   jr_078_5093                                 ; $5081: $18 $10

	ldh  a, [rIE]                                    ; $5083: $f0 $ff
	add  b                                           ; $5085: $80
	nop                                              ; $5086: $00
	add  b                                           ; $5087: $80
	rst  $38                                         ; $5088: $ff
	dec  bc                                          ; $5089: $0b
	add  b                                           ; $508a: $80
	nop                                              ; $508b: $00
	add  b                                           ; $508c: $80
	nop                                              ; $508d: $00
	cp   $00                                         ; $508e: $fe $00
	ld   [bc], a                                     ; $5090: $02
	inc  b                                           ; $5091: $04
	nop                                              ; $5092: $00

jr_078_5093:
	ld   [$ff0f], sp                                 ; $5093: $08 $0f $ff
	add  b                                           ; $5096: $80
	nop                                              ; $5097: $00
	add  b                                           ; $5098: $80
	rst  $38                                         ; $5099: $ff
	nop                                              ; $509a: $00
	ld   a, a                                        ; $509b: $7f
	add  b                                           ; $509c: $80
	ld   b, b                                        ; $509d: $40
	ld   bc, $7f00                                   ; $509e: $01 $00 $7f
	add  c                                           ; $50a1: $81
	nop                                              ; $50a2: $00
	inc  bc                                          ; $50a3: $03
	inc  bc                                          ; $50a4: $03
	ld   [bc], a                                     ; $50a5: $02
	cp   $ff                                         ; $50a6: $fe $ff
	add  b                                           ; $50a8: $80
	nop                                              ; $50a9: $00
	add  b                                           ; $50aa: $80
	db   $db                                         ; $50ab: $db
	nop                                              ; $50ac: $00
	ret  nz                                          ; $50ad: $c0

	add  b                                           ; $50ae: $80
	nop                                              ; $50af: $00
	inc  bc                                          ; $50b0: $03
	ld   b, b                                        ; $50b1: $40
	rst  $38                                         ; $50b2: $ff

jr_078_50b3:
	nop                                              ; $50b3: $00
	add  b                                           ; $50b4: $80
	add  d                                           ; $50b5: $82
	nop                                              ; $50b6: $00
	nop                                              ; $50b7: $00
	rst  $38                                         ; $50b8: $ff
	add  b                                           ; $50b9: $80
	nop                                              ; $50ba: $00
	add  b                                           ; $50bb: $80
	ld   l, l                                        ; $50bc: $6d
	ld   bc, $101f                                   ; $50bd: $01 $1f $10
	add  b                                           ; $50c0: $80
	nop                                              ; $50c1: $00
	ld   [bc], a                                     ; $50c2: $02
	rst  $28                                         ; $50c3: $ef
	nop                                              ; $50c4: $00
	jr   nz, jr_078_5048                             ; $50c5: $20 $81

	nop                                              ; $50c7: $00
	ld   bc, $ff3f                                   ; $50c8: $01 $3f $ff
	add  b                                           ; $50cb: $80
	nop                                              ; $50cc: $00
	add  b                                           ; $50cd: $80
	or   [hl]                                        ; $50ce: $b6
	ld   bc, $10f0                                   ; $50cf: $01 $f0 $10
	add  b                                           ; $50d2: $80
	nop                                              ; $50d3: $00
	ld   [bc], a                                     ; $50d4: $02
	rst  $20                                         ; $50d5: $e7
	nop                                              ; $50d6: $00
	inc  b                                           ; $50d7: $04
	add  c                                           ; $50d8: $81
	nop                                              ; $50d9: $00
	ld   bc, $fffc                                   ; $50da: $01 $fc $ff
	add  b                                           ; $50dd: $80
	nop                                              ; $50de: $00
	add  b                                           ; $50df: $80
	db   $db                                         ; $50e0: $db
	ld   bc, $0407                                   ; $50e1: $01 $07 $04
	add  b                                           ; $50e4: $80
	nop                                              ; $50e5: $00
	ld   [bc], a                                     ; $50e6: $02
	db   $fd                                         ; $50e7: $fd
	nop                                              ; $50e8: $00
	ld   bc, $0082                                   ; $50e9: $01 $82 $00
	nop                                              ; $50ec: $00
	rst  $38                                         ; $50ed: $ff
	add  b                                           ; $50ee: $80
	nop                                              ; $50ef: $00
	add  b                                           ; $50f0: $80
	ld   l, a                                        ; $50f1: $6f
	nop                                              ; $50f2: $00
	rst  $38                                         ; $50f3: $ff
	add  c                                           ; $50f4: $81
	ld   bc, $fe01                                   ; $50f5: $01 $01 $fe
	nop                                              ; $50f8: $00
	add  b                                           ; $50f9: $80
	add  b                                           ; $50fa: $80
	inc  bc                                          ; $50fb: $03
	ret  nz                                          ; $50fc: $c0

	nop                                              ; $50fd: $00
	ccf                                              ; $50fe: $3f
	rst  $38                                         ; $50ff: $ff
	add  b                                           ; $5100: $80
	nop                                              ; $5101: $00
	add  b                                           ; $5102: $80
	ldh  a, [c]                                      ; $5103: $f2
	add  d                                           ; $5104: $82
	nop                                              ; $5105: $00
	rlca                                             ; $5106: $07
	rra                                              ; $5107: $1f
	nop                                              ; $5108: $00
	db   $10                                         ; $5109: $10
	ld   [$0400], sp                                 ; $510a: $08 $00 $04
	db   $fc                                         ; $510d: $fc
	rst  $38                                         ; $510e: $ff
	add  b                                           ; $510f: $80
	nop                                              ; $5110: $00
	add  b                                           ; $5111: $80
	ld   c, c                                        ; $5112: $49
	inc  d                                           ; $5113: $14
	ccf                                              ; $5114: $3f
	jr   nz, jr_078_5128                             ; $5115: $20 $11

	ld   [$01fb], sp                                 ; $5117: $08 $fb $01
	rlca                                             ; $511a: $07
	ld   [bc], a                                     ; $511b: $02
	ld   c, $04                                      ; $511c: $0e $04
	inc  e                                           ; $511e: $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $511f: $cf
	ld   h, b                                        ; $5120: $60
	nop                                              ; $5121: $00
	push hl                                          ; $5122: $e5
	dec  h                                           ; $5123: $25
	db   $fd                                         ; $5124: $fd
	ld   b, l                                        ; $5125: $45
	push bc                                          ; $5126: $c5
	add  l                                           ; $5127: $85

jr_078_5128:
	ld   a, c                                        ; $5128: $79
	add  c                                           ; $5129: $81
	ld   bc, $c105                                   ; $512a: $01 $05 $c1
	ld   b, c                                        ; $512d: $41
	ld   a, a                                        ; $512e: $7f
	cp   $01                                         ; $512f: $fe $01
	nop                                              ; $5131: $00
	add  b                                           ; $5132: $80
	ld   d, d                                        ; $5133: $52
	add  d                                           ; $5134: $82
	nop                                              ; $5135: $00
	dec  bc                                          ; $5136: $0b
	rra                                              ; $5137: $1f
	nop                                              ; $5138: $00
	jr   jr_078_513f                                 ; $5139: $18 $04

	ld   [bc], a                                     ; $513b: $02
	ld   bc, $007f                                   ; $513c: $01 $7f $00

jr_078_513f:
	add  b                                           ; $513f: $80
	nop                                              ; $5140: $00
	ld   d, c                                        ; $5141: $51
	xor  [hl]                                        ; $5142: $ae
	add  b                                           ; $5143: $80
	dec  hl                                          ; $5144: $2b
	add  b                                           ; $5145: $80
	ld   a, [hl+]                                    ; $5146: $2a
	ld   [$02c2], sp                                 ; $5147: $08 $c2 $02
	inc  a                                           ; $514a: $3c
	nop                                              ; $514b: $00
	inc  a                                           ; $514c: $3c
	ret  nz                                          ; $514d: $c0

	db   $fc                                         ; $514e: $fc
	nop                                              ; $514f: $00
	inc  bc                                          ; $5150: $03
	add  b                                           ; $5151: $80
	nop                                              ; $5152: $00
	ld   bc, $000f                                   ; $5153: $01 $0f $00
	adc  e                                           ; $5156: $8b
	rrca                                             ; $5157: $0f
	ld   [bc], a                                     ; $5158: $02
	nop                                              ; $5159: $00
	rst  $38                                         ; $515a: $ff
	nop                                              ; $515b: $00
	adc  e                                           ; $515c: $8b
	rst  $38                                         ; $515d: $ff
	ld   [bc], a                                     ; $515e: $02
	nop                                              ; $515f: $00
	rst  $38                                         ; $5160: $ff
	nop                                              ; $5161: $00
	adc  e                                           ; $5162: $8b
	rst  $38                                         ; $5163: $ff
	ld   [bc], a                                     ; $5164: $02

jr_078_5165:
	nop                                              ; $5165: $00
	rst  $38                                         ; $5166: $ff
	nop                                              ; $5167: $00
	adc  e                                           ; $5168: $8b
	rst  $38                                         ; $5169: $ff
	dec  e                                           ; $516a: $1d
	nop                                              ; $516b: $00
	rst  $38                                         ; $516c: $ff
	ld   bc, $fcff                                   ; $516d: $01 $ff $fc
	rst  $38                                         ; $5170: $ff
	db   $fc                                         ; $5171: $fc

jr_078_5172:
	rst  $38                                         ; $5172: $ff
	db   $fc                                         ; $5173: $fc
	rst  $38                                         ; $5174: $ff
	db   $fc                                         ; $5175: $fc

jr_078_5176:
	rst  $38                                         ; $5176: $ff
	db   $fc                                         ; $5177: $fc
	rst  $38                                         ; $5178: $ff
	db   $fc                                         ; $5179: $fc
	rst  $38                                         ; $517a: $ff
	ld   a, [bc]                                     ; $517b: $0a
	rst  $30                                         ; $517c: $f7
	inc  [hl]                                        ; $517d: $34
	db   $f4                                         ; $517e: $f4
	inc  [hl]                                        ; $517f: $34
	rst  $30                                         ; $5180: $f7
	jr   nz, jr_078_5172                             ; $5181: $20 $ef

	jr   nz, jr_078_5165                             ; $5183: $20 $e0

	jr   nz, jr_078_5176                             ; $5185: $20 $ef

	nop                                              ; $5187: $00
	rst  JumpTable                                         ; $5188: $df
	add  b                                           ; $5189: $80
	ret  nz                                          ; $518a: $c0

	ld   bc, $ff1f                                   ; $518b: $01 $1f $ff
	add  c                                           ; $518e: $81
	nop                                              ; $518f: $00
	ld   [bc], a                                     ; $5190: $02
	rst  $38                                         ; $5191: $ff
	nop                                              ; $5192: $00
	rst  $38                                         ; $5193: $ff
	add  c                                           ; $5194: $81
	nop                                              ; $5195: $00
	ld   [bc], a                                     ; $5196: $02
	rst  $38                                         ; $5197: $ff
	nop                                              ; $5198: $00
	rst  $38                                         ; $5199: $ff
	add  b                                           ; $519a: $80
	nop                                              ; $519b: $00
	add  b                                           ; $519c: $80
	rst  $38                                         ; $519d: $ff
	add  c                                           ; $519e: $81
	nop                                              ; $519f: $00
	ld   [bc], a                                     ; $51a0: $02
	rst  $38                                         ; $51a1: $ff
	nop                                              ; $51a2: $00
	rst  $38                                         ; $51a3: $ff
	add  c                                           ; $51a4: $81
	nop                                              ; $51a5: $00
	ld   [bc], a                                     ; $51a6: $02
	rst  $38                                         ; $51a7: $ff
	nop                                              ; $51a8: $00
	rst  $38                                         ; $51a9: $ff
	add  b                                           ; $51aa: $80
	nop                                              ; $51ab: $00
	add  b                                           ; $51ac: $80
	rst  $38                                         ; $51ad: $ff
	add  c                                           ; $51ae: $81
	nop                                              ; $51af: $00
	ld   [bc], a                                     ; $51b0: $02
	rst  $38                                         ; $51b1: $ff
	nop                                              ; $51b2: $00
	rst  $38                                         ; $51b3: $ff
	add  c                                           ; $51b4: $81
	nop                                              ; $51b5: $00
	ld   [bc], a                                     ; $51b6: $02
	rst  $38                                         ; $51b7: $ff
	nop                                              ; $51b8: $00
	rst  $38                                         ; $51b9: $ff
	add  b                                           ; $51ba: $80
	nop                                              ; $51bb: $00
	add  b                                           ; $51bc: $80
	rst  $38                                         ; $51bd: $ff
	add  c                                           ; $51be: $81
	nop                                              ; $51bf: $00
	ld   [bc], a                                     ; $51c0: $02
	rst  $38                                         ; $51c1: $ff
	nop                                              ; $51c2: $00
	rst  $38                                         ; $51c3: $ff
	add  c                                           ; $51c4: $81
	nop                                              ; $51c5: $00
	ld   [bc], a                                     ; $51c6: $02
	rst  $38                                         ; $51c7: $ff
	nop                                              ; $51c8: $00
	rst  $38                                         ; $51c9: $ff
	add  b                                           ; $51ca: $80
	nop                                              ; $51cb: $00
	add  b                                           ; $51cc: $80
	rst  $38                                         ; $51cd: $ff
	add  c                                           ; $51ce: $81
	nop                                              ; $51cf: $00
	ld   [bc], a                                     ; $51d0: $02
	rst  $38                                         ; $51d1: $ff
	nop                                              ; $51d2: $00
	rst  $38                                         ; $51d3: $ff
	add  c                                           ; $51d4: $81
	nop                                              ; $51d5: $00
	ld   [bc], a                                     ; $51d6: $02
	rst  $38                                         ; $51d7: $ff
	nop                                              ; $51d8: $00
	rst  $38                                         ; $51d9: $ff
	add  b                                           ; $51da: $80
	nop                                              ; $51db: $00
	add  b                                           ; $51dc: $80
	rst  $38                                         ; $51dd: $ff
	add  b                                           ; $51de: $80
	ld   bc, $0311                                   ; $51df: $01 $11 $03
	cp   $02                                         ; $51e2: $fe $02
	db   $fd                                         ; $51e4: $fd
	ld   b, $00                                      ; $51e5: $06 $00
	dec  e                                           ; $51e7: $1d
	or   $1f                                         ; $51e8: $f6 $1f
	rst  $28                                         ; $51ea: $ef
	ccf                                              ; $51eb: $3f
	nop                                              ; $51ec: $00
	rst  JumpTable                                         ; $51ed: $df
	cp   a                                           ; $51ee: $bf
	ret  nz                                          ; $51ef: $c0

	nop                                              ; $51f0: $00
	ld   l, [hl]                                     ; $51f1: $6e
	pop  af                                          ; $51f2: $f1
	add  b                                           ; $51f3: $80
	db   $fc                                         ; $51f4: $fc

jr_078_51f5:
	jr   z, jr_078_5215                              ; $51f5: $28 $1e

	ld   bc, $17e4                                   ; $51f7: $01 $e4 $17
	ret  nz                                          ; $51fa: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $51fb: $cf
	and  h                                           ; $51fc: $a4
	ld   h, [hl]                                     ; $51fd: $66
	add  b                                           ; $51fe: $80
	jp   nz, $1063                                   ; $51ff: $c2 $63 $10

	xor  h                                           ; $5202: $ac
	cp   h                                           ; $5203: $bc
	adc  $31                                         ; $5204: $ce $31
	sub  b                                           ; $5206: $90
	add  b                                           ; $5207: $80
	sbc  h                                           ; $5208: $9c
	ldh  a, [$97]                                    ; $5209: $f0 $97
	inc  c                                           ; $520b: $0c
	rlca                                             ; $520c: $07
	inc  bc                                          ; $520d: $03
	ld   a, h                                        ; $520e: $7c
	ld   b, b                                        ; $520f: $40
	ret  nc                                          ; $5210: $d0

	ldh  a, [$d8]                                    ; $5211: $f0 $d8
	inc  h                                           ; $5213: $24
	sub  d                                           ; $5214: $92

jr_078_5215:
	adc  c                                           ; $5215: $89
	rst  ToBoot                                         ; $5216: $c7
	ld   hl, $0819                                   ; $5217: $21 $19 $08
	inc  c                                           ; $521a: $0c
	ld   [bc], a                                     ; $521b: $02
	pop  bc                                          ; $521c: $c1
	nop                                              ; $521d: $00
	ccf                                              ; $521e: $3f
	add  l                                           ; $521f: $85
	nop                                              ; $5220: $00
	add  hl, bc                                      ; $5221: $09
	ret  nz                                          ; $5222: $c0

	jr   nz, jr_078_51f5                             ; $5223: $20 $d0

	ld   c, b                                        ; $5225: $48
	ld   h, h                                        ; $5226: $64
	inc  de                                          ; $5227: $13
	adc  b                                           ; $5228: $88
	inc  b                                           ; $5229: $04
	ld   a, h                                        ; $522a: $7c
	rrca                                             ; $522b: $0f
	add  b                                           ; $522c: $80
	ld   a, [bc]                                     ; $522d: $0a
	add  b                                           ; $522e: $80
	dec  b                                           ; $522f: $05
	add  b                                           ; $5230: $80
	ld   a, [bc]                                     ; $5231: $0a
	add  b                                           ; $5232: $80
	dec  b                                           ; $5233: $05
	add  b                                           ; $5234: $80
	ld   a, [bc]                                     ; $5235: $0a
	add  b                                           ; $5236: $80
	ld   bc, $0080                                   ; $5237: $01 $80 $00
	nop                                              ; $523a: $00
	rrca                                             ; $523b: $0f
	add  c                                           ; $523c: $81
	rst  $38                                         ; $523d: $ff
	dec  c                                           ; $523e: $0d
	ld   l, d                                        ; $523f: $6a
	ld   a, a                                        ; $5240: $7f
	ldh  [rIE], a                                    ; $5241: $e0 $ff
	ld   h, b                                        ; $5243: $60
	ld   a, a                                        ; $5244: $7f
	push hl                                          ; $5245: $e5
	rst  $38                                         ; $5246: $ff
	ld   l, a                                        ; $5247: $6f
	ld   a, a                                        ; $5248: $7f
	rst  $28                                         ; $5249: $ef
	rst  $38                                         ; $524a: $ff
	ldh  a, [rIE]                                    ; $524b: $f0 $ff
	add  b                                           ; $524d: $80
	db   $fd                                         ; $524e: $fd
	rlca                                             ; $524f: $07
	cp   d                                           ; $5250: $ba
	ld   a, [$fc1c]                                  ; $5251: $fa $1c $fc
	ld   a, [de]                                     ; $5254: $1a
	ld   a, [$fc5c]                                  ; $5255: $fa $5c $fc
	add  b                                           ; $5258: $80
	ld   e, d                                        ; $5259: $5a
	add  b                                           ; $525a: $80
	cp   h                                           ; $525b: $bc
	ld   bc, $00e0                                   ; $525c: $01 $e0 $00
	add  b                                           ; $525f: $80
	ld   b, b                                        ; $5260: $40
	add  b                                           ; $5261: $80
	add  b                                           ; $5262: $80
	sub  b                                           ; $5263: $90
	nop                                              ; $5264: $00
	add  b                                           ; $5265: $80
	ld   bc, $0201                                   ; $5266: $01 $01 $02
	inc  bc                                          ; $5269: $03
	add  b                                           ; $526a: $80
	rlca                                             ; $526b: $07
	dec  b                                           ; $526c: $05
	ld   c, $0f                                      ; $526d: $0e $0f
	ccf                                              ; $526f: $3f
	nop                                              ; $5270: $00
	ccf                                              ; $5271: $3f
	nop                                              ; $5272: $00
	add  b                                           ; $5273: $80
	ld   a, a                                        ; $5274: $7f
	add  b                                           ; $5275: $80
	rst  $38                                         ; $5276: $ff
	nop                                              ; $5277: $00
	nop                                              ; $5278: $00
	add  e                                           ; $5279: $83
	rst  $38                                         ; $527a: $ff
	dec  b                                           ; $527b: $05
	rrca                                             ; $527c: $0f
	ldh  a, [rIE]                                    ; $527d: $f0 $ff
	nop                                              ; $527f: $00
	rst  $38                                         ; $5280: $ff
	nop                                              ; $5281: $00
	add  d                                           ; $5282: $82
	rst  $38                                         ; $5283: $ff
	nop                                              ; $5284: $00
	nop                                              ; $5285: $00
	add  e                                           ; $5286: $83
	rst  $38                                         ; $5287: $ff
	dec  b                                           ; $5288: $05
	ld   d, h                                        ; $5289: $54
	xor  e                                           ; $528a: $ab
	rst  $38                                         ; $528b: $ff
	nop                                              ; $528c: $00
	rst  $38                                         ; $528d: $ff
	nop                                              ; $528e: $00
	add  d                                           ; $528f: $82
	rst  $38                                         ; $5290: $ff
	nop                                              ; $5291: $00
	nop                                              ; $5292: $00
	add  e                                           ; $5293: $83
	rst  $38                                         ; $5294: $ff
	dec  b                                           ; $5295: $05
	ld   a, b                                        ; $5296: $78
	add  a                                           ; $5297: $87
	rst  $38                                         ; $5298: $ff
	nop                                              ; $5299: $00
	rst  $38                                         ; $529a: $ff
	nop                                              ; $529b: $00
	add  d                                           ; $529c: $82
	rst  $38                                         ; $529d: $ff
	nop                                              ; $529e: $00
	nop                                              ; $529f: $00
	add  e                                           ; $52a0: $83
	rst  $38                                         ; $52a1: $ff
	dec  b                                           ; $52a2: $05
	and  b                                           ; $52a3: $a0
	rst  $38                                         ; $52a4: $ff
	ld   e, a                                        ; $52a5: $5f
	nop                                              ; $52a6: $00
	rst  $38                                         ; $52a7: $ff
	nop                                              ; $52a8: $00
	add  d                                           ; $52a9: $82
	rst  $38                                         ; $52aa: $ff
	nop                                              ; $52ab: $00
	nop                                              ; $52ac: $00
	add  e                                           ; $52ad: $83
	rst  $38                                         ; $52ae: $ff
	dec  b                                           ; $52af: $05

jr_078_52b0:
	dec  hl                                          ; $52b0: $2b
	db   $fc                                         ; $52b1: $fc
	rst  $10                                         ; $52b2: $d7
	nop                                              ; $52b3: $00
	rst  $38                                         ; $52b4: $ff
	nop                                              ; $52b5: $00
	add  d                                           ; $52b6: $82
	rst  $38                                         ; $52b7: $ff
	nop                                              ; $52b8: $00
	nop                                              ; $52b9: $00
	add  e                                           ; $52ba: $83
	rst  $38                                         ; $52bb: $ff
	rlca                                             ; $52bc: $07
	rrca                                             ; $52bd: $0f
	ldh  a, [$df]                                    ; $52be: $f0 $df
	nop                                              ; $52c0: $00
	ld   c, h                                        ; $52c1: $4c
	db   $d3                                         ; $52c2: $d3
	add  c                                           ; $52c3: $81
	pop  bc                                          ; $52c4: $c1
	add  b                                           ; $52c5: $80
	call c, $0212                                    ; $52c6: $dc $12 $02
	sbc  $d3                                         ; $52c9: $de $d3
	rst  JumpTable                                         ; $52cb: $df
	call z, $d3df                                    ; $52cc: $cc $df $d3
	rra                                              ; $52cf: $1f
	ld   l, h                                        ; $52d0: $6c
	db   $e3                                         ; $52d1: $e3
	ld   b, b                                        ; $52d2: $40
	ldh  a, [$c8]                                    ; $52d3: $f0 $c8
	inc  b                                           ; $52d5: $04
	add  b                                           ; $52d6: $80
	add  d                                           ; $52d7: $82
	ret  nz                                          ; $52d8: $c0

	ld   bc, $8030                                   ; $52d9: $01 $30 $80
	db   $10                                         ; $52dc: $10
	dec  e                                           ; $52dd: $1d
	adc  b                                           ; $52de: $88
	and  h                                           ; $52df: $a4
	ldh  [$3d], a                                    ; $52e0: $e0 $3d
	add  c                                           ; $52e2: $81
	add  b                                           ; $52e3: $80
	ret  nz                                          ; $52e4: $c0

	ld   b, b                                        ; $52e5: $40
	ld   [hl], b                                     ; $52e6: $70
	db   $10                                         ; $52e7: $10
	jr   jr_078_52f2                                 ; $52e8: $18 $08

	ld   c, $86                                      ; $52ea: $0e $86
	ld   b, a                                        ; $52ec: $47
	ld   bc, $1821                                   ; $52ed: $01 $21 $18
	nop                                              ; $52f0: $00
	rlca                                             ; $52f1: $07

jr_078_52f2:
	ldh  a, [$b4]                                    ; $52f2: $f0 $b4
	ld   a, h                                        ; $52f4: $7c
	ld   a, [hl+]                                    ; $52f5: $2a
	ld   e, $0c                                      ; $52f6: $1e $0c
	rlca                                             ; $52f8: $07
	dec  b                                           ; $52f9: $05
	inc  bc                                          ; $52fa: $03
	ld   bc, $0080                                   ; $52fb: $01 $80 $00
	add  b                                           ; $52fe: $80
	ret  nz                                          ; $52ff: $c0

	db   $10                                         ; $5300: $10
	ldh  [$de], a                                    ; $5301: $e0 $de
	ld   hl, $0810                                   ; $5303: $21 $10 $08
	inc  l                                           ; $5306: $2c
	ld   a, [hl+]                                    ; $5307: $2a
	call nc, $2ad5                                   ; $5308: $d4 $d5 $2a
	ld   [$fd4d], a                                  ; $530b: $ea $4d $fd
	ld   [hl], d                                     ; $530e: $72
	ld   a, $3c                                      ; $530f: $3e $3c
	rrca                                             ; $5311: $0f
	ld   e, $02                                      ; $5312: $1e $02
	nop                                              ; $5314: $00
	nop                                              ; $5315: $00
	add  c                                           ; $5316: $81
	rrca                                             ; $5317: $0f
	add  b                                           ; $5318: $80
	ld   bc, $0000                                   ; $5319: $01 $00 $00
	add  b                                           ; $531c: $80
	ld   c, $83                                      ; $531d: $0e $83
	rrca                                             ; $531f: $0f
	ld   [bc], a                                     ; $5320: $02
	inc  bc                                          ; $5321: $03
	ld   bc, $8302                                   ; $5322: $01 $02 $83
	rst  $38                                         ; $5325: $ff
	add  b                                           ; $5326: $80
	rra                                              ; $5327: $1f
	nop                                              ; $5328: $00
	jr   nc, jr_078_52b0                             ; $5329: $30 $85

	rst  $38                                         ; $532b: $ff
	ld   bc, $8b4e                                   ; $532c: $01 $4e $8b
	add  b                                           ; $532f: $80
	db   $eb                                         ; $5330: $eb
	inc  bc                                          ; $5331: $03
	di                                               ; $5332: $f3
	ei                                               ; $5333: $fb
	db   $fd                                         ; $5334: $fd
	rst  $38                                         ; $5335: $ff
	add  b                                           ; $5336: $80
	rra                                              ; $5337: $1f
	nop                                              ; $5338: $00
	nop                                              ; $5339: $00
	add  b                                           ; $533a: $80
	ldh  [$81], a                                    ; $533b: $e0 $81
	rst  $38                                         ; $533d: $ff
	nop                                              ; $533e: $00
	nop                                              ; $533f: $00
	add  c                                           ; $5340: $81
	rst  $38                                         ; $5341: $ff
	add  d                                           ; $5342: $82
	cp   $82                                         ; $5343: $fe $82
	rst  $38                                         ; $5345: $ff
	add  b                                           ; $5346: $80
	rrca                                             ; $5347: $0f
	ld   b, $30                                      ; $5348: $06 $30
	cp   $41                                         ; $534a: $fe $41
	add  b                                           ; $534c: $80
	nop                                              ; $534d: $00
	inc  e                                           ; $534e: $1c
	inc  d                                           ; $534f: $14
	add  b                                           ; $5350: $80
	rra                                              ; $5351: $1f
	add  c                                           ; $5352: $81
	cpl                                              ; $5353: $2f
	inc  bc                                          ; $5354: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5355: $cf
	rst  $28                                         ; $5356: $ef
	rst  $30                                         ; $5357: $f7
	rst  $38                                         ; $5358: $ff
	add  b                                           ; $5359: $80
	rrca                                             ; $535a: $0f
	nop                                              ; $535b: $00
	rst  $38                                         ; $535c: $ff
	add  d                                           ; $535d: $82
	nop                                              ; $535e: $00
	add  b                                           ; $535f: $80
	add  b                                           ; $5360: $80
	add  b                                           ; $5361: $80
	ld   hl, sp-$7a                                  ; $5362: $f8 $86
	rst  $38                                         ; $5364: $ff
	add  l                                           ; $5365: $85
	nop                                              ; $5366: $00
	inc  bc                                          ; $5367: $03
	ld   bc, $1e00                                   ; $5368: $01 $00 $1e
	ldh  [$82], a                                    ; $536b: $e0 $82
	ret  nz                                          ; $536d: $c0

	nop                                              ; $536e: $00
	rst  $38                                         ; $536f: $ff
	add  e                                           ; $5370: $83
	nop                                              ; $5371: $00
	inc  b                                           ; $5372: $04
	add  hl, bc                                      ; $5373: $09
	ld   e, $ee                                      ; $5374: $1e $ee
	ld   e, $0a                                      ; $5376: $1e $0a
	add  c                                           ; $5378: $81
	ld   [hl], $80                                   ; $5379: $36 $80
	inc  [hl]                                        ; $537b: $34
	nop                                              ; $537c: $00
	db   $db                                         ; $537d: $db
	add  b                                           ; $537e: $80
	nop                                              ; $537f: $00
	ld   b, $03                                      ; $5380: $06 $03
	jr   c, jr_078_538b                              ; $5382: $38 $07

	rst  ToBoot                                         ; $5384: $c7
	rlca                                             ; $5385: $07
	nop                                              ; $5386: $00
	rlca                                             ; $5387: $07
	add  b                                           ; $5388: $80
	ld   b, $81                                      ; $5389: $06 $81

jr_078_538b:
	inc  b                                           ; $538b: $04
	inc  b                                           ; $538c: $04
	nop                                              ; $538d: $00
	ld   hl, sp+$00                                  ; $538e: $f8 $00
	ld   a, b                                        ; $5390: $78
	add  b                                           ; $5391: $80
	add  b                                           ; $5392: $80
	ret  nz                                          ; $5393: $c0

	nop                                              ; $5394: $00
	ld   b, b                                        ; $5395: $40
	add  e                                           ; $5396: $83
	pop  bc                                          ; $5397: $c1
	nop                                              ; $5398: $00
	add  c                                           ; $5399: $81
	add  b                                           ; $539a: $80
	add  b                                           ; $539b: $80
	ld   [$f700], sp                                 ; $539c: $08 $00 $f7
	db   $f4                                         ; $539f: $f4
	or   h                                           ; $53a0: $b4
	rst  $30                                         ; $53a1: $f7
	ld   [hl], e                                     ; $53a2: $73
	di                                               ; $53a3: $f3
	inc  de                                          ; $53a4: $13
	di                                               ; $53a5: $f3
	add  b                                           ; $53a6: $80
	or   e                                           ; $53a7: $b3
	add  c                                           ; $53a8: $81
	ld   hl, $0181                                   ; $53a9: $21 $81 $01
	nop                                              ; $53ac: $00
	rst  $38                                         ; $53ad: $ff
	add  d                                           ; $53ae: $82
	nop                                              ; $53af: $00
	ld   [$e0c0], sp                                 ; $53b0: $08 $c0 $e0
	ret  nc                                          ; $53b3: $d0

	or   b                                           ; $53b4: $b0
	sbc  b                                           ; $53b5: $98
	dec  de                                          ; $53b6: $1b
	inc  e                                           ; $53b7: $1c
	dec  e                                           ; $53b8: $1d
	inc  e                                           ; $53b9: $1c
	add  b                                           ; $53ba: $80
	ret  c                                           ; $53bb: $d8

	nop                                              ; $53bc: $00
	sbc  $95                                         ; $53bd: $de $95
	nop                                              ; $53bf: $00
	add  [hl]                                        ; $53c0: $86
	rrca                                             ; $53c1: $0f
	add  [hl]                                        ; $53c2: $86
	nop                                              ; $53c3: $00
	add  [hl]                                        ; $53c4: $86
	rst  $38                                         ; $53c5: $ff
	adc  h                                           ; $53c6: $8c
	rrca                                             ; $53c7: $0f
	nop                                              ; $53c8: $00
	inc  bc                                          ; $53c9: $03
	add  b                                           ; $53ca: $80
	rrca                                             ; $53cb: $0f
	inc  bc                                          ; $53cc: $03
	ld   bc, $0f03                                   ; $53cd: $01 $03 $0f
	dec  c                                           ; $53d0: $0d
	add  l                                           ; $53d1: $85
	ld   bc, $0304                                   ; $53d2: $01 $04 $03
	rrca                                             ; $53d5: $0f
	dec  c                                           ; $53d6: $0d
	ld   bc, $85cd                                   ; $53d7: $01 $cd $85
	rst  $38                                         ; $53da: $ff
	add  b                                           ; $53db: $80
	cp   $80                                         ; $53dc: $fe $80
	rst  $38                                         ; $53de: $ff
	add  b                                           ; $53df: $80
	cp   $80                                         ; $53e0: $fe $80
	rst  $38                                         ; $53e2: $ff

jr_078_53e3:
	inc  b                                           ; $53e3: $04
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53e4: $cf
	rst  $38                                         ; $53e5: $ff
	rst  ToBoot                                         ; $53e6: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53e7: $cf
	res  0, b                                        ; $53e8: $cb $80
	ret                                              ; $53ea: $c9


	inc  bc                                          ; $53eb: $03
	ld   sp, hl                                      ; $53ec: $f9
	ei                                               ; $53ed: $fb
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53ee: $cf
	call $c981                                       ; $53ef: $cd $81 $c9
	ld   [bc], a                                     ; $53f2: $02
	set  7, a                                        ; $53f3: $cb $ff
	pop  af                                          ; $53f5: $f1
	adc  l                                           ; $53f6: $8d
	rst  $38                                         ; $53f7: $ff
	ld   [bc], a                                     ; $53f8: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $53f9: $cf
	ldh  a, [$f3]                                    ; $53fa: $f0 $f3
	add  c                                           ; $53fc: $81
	rst  $38                                         ; $53fd: $ff
	ld   b, $9f                                      ; $53fe: $06 $9f
	cp   a                                           ; $5400: $bf
	xor  a                                           ; $5401: $af
	and  a                                           ; $5402: $a7
	xor  a                                           ; $5403: $af
	rst  $38                                         ; $5404: $ff
	rst  $30                                         ; $5405: $f7
	add  c                                           ; $5406: $81
	and  a                                           ; $5407: $a7
	inc  b                                           ; $5408: $04
	dec  hl                                          ; $5409: $2b
	rst  $38                                         ; $540a: $ff
	inc  bc                                          ; $540b: $03
	jp   $80c0                                       ; $540c: $c3 $c0 $80


	db   $fc                                         ; $540f: $fc
	add  c                                           ; $5410: $81
	rst  $38                                         ; $5411: $ff
	nop                                              ; $5412: $00
	cp   $83                                         ; $5413: $fe $83
	rst  $38                                         ; $5415: $ff
	nop                                              ; $5416: $00
	ld   a, [hl]                                     ; $5417: $7e
	add  c                                           ; $5418: $81
	add  b                                           ; $5419: $80
	add  b                                           ; $541a: $80
	nop                                              ; $541b: $00
	adc  b                                           ; $541c: $88
	cp   a                                           ; $541d: $bf
	add  d                                           ; $541e: $82
	nop                                              ; $541f: $00
	add  b                                           ; $5420: $80
	rra                                              ; $5421: $1f
	add  d                                           ; $5422: $82
	cp   a                                           ; $5423: $bf
	rlca                                             ; $5424: $07
	or   e                                           ; $5425: $b3
	cp   e                                           ; $5426: $bb
	or   e                                           ; $5427: $b3
	cp   e                                           ; $5428: $bb
	or   e                                           ; $5429: $b3
	cp   e                                           ; $542a: $bb
	ld   [$8000], sp                                 ; $542b: $08 $00 $80
	ld   bc, $ef82                                   ; $542e: $01 $82 $ef
	nop                                              ; $5431: $00
	xor  $81                                         ; $5432: $ee $81
	rst  $28                                         ; $5434: $ef
	dec  b                                           ; $5435: $05
	xor  $ef                                         ; $5436: $ee $ef
	xor  $ef                                         ; $5438: $ee $ef
	ld   bc, $8400                                   ; $543a: $01 $00 $84
	db   $fd                                         ; $543d: $fd
	add  [hl]                                        ; $543e: $86
	cp   l                                           ; $543f: $bd
	add  b                                           ; $5440: $80
	nop                                              ; $5441: $00
	nop                                              ; $5442: $00
	cp   $81                                         ; $5443: $fe $81
	rst  $38                                         ; $5445: $ff
	nop                                              ; $5446: $00
	rst  $10                                         ; $5447: $d7
	add  c                                           ; $5448: $81
	rst  $30                                         ; $5449: $f7
	ld   [bc], a                                     ; $544a: $02
	rst  $10                                         ; $544b: $d7
	rst  $30                                         ; $544c: $f7
	rst  $10                                         ; $544d: $d7
	add  c                                           ; $544e: $81
	rst  $30                                         ; $544f: $f7
	ld   [$7858], sp                                 ; $5450: $08 $58 $78
	inc  e                                           ; $5453: $1c
	sbc  h                                           ; $5454: $9c
	add  [hl]                                        ; $5455: $86
	rst  $20                                         ; $5456: $e7
	db   $eb                                         ; $5457: $eb
	ei                                               ; $5458: $fb
	ret  z                                           ; $5459: $c8

	add  b                                           ; $545a: $80
	cp   $83                                         ; $545b: $fe $83
	rst  JumpTable                                         ; $545d: $df
	nop                                              ; $545e: $00
	jr   jr_078_53e3                                 ; $545f: $18 $82

	add  b                                           ; $5461: $80
	add  c                                           ; $5462: $81
	pop  bc                                          ; $5463: $c1
	add  hl, bc                                      ; $5464: $09
	ld   d, b                                        ; $5465: $50
	ld   [hl], d                                     ; $5466: $72
	cp   l                                           ; $5467: $bd
	dec  hl                                          ; $5468: $2b
	ld   l, b                                        ; $5469: $68
	ld   [bc], a                                     ; $546a: $02
	dec  b                                           ; $546b: $05
	sub  l                                           ; $546c: $95
	ld   c, a                                        ; $546d: $4f
	ret  nz                                          ; $546e: $c0

	add  b                                           ; $546f: $80
	ldh  [$80], a                                    ; $5470: $e0 $80
	ldh  a, [$0a]                                    ; $5472: $f0 $0a
	or   b                                           ; $5474: $b0
	ld   [hl], b                                     ; $5475: $70
	ld   d, h                                        ; $5476: $54
	db   $f4                                         ; $5477: $f4
	ld   a, $fe                                      ; $5478: $3e $fe
	sbc  d                                           ; $547a: $9a
	cp   $d1                                         ; $547b: $fe $d1
	rst  $38                                         ; $547d: $ff
	ld   [$008b], a                                  ; $547e: $ea $8b $00
	add  b                                           ; $5481: $80
	add  b                                           ; $5482: $80
	add  a                                           ; $5483: $87
	nop                                              ; $5484: $00
	inc  bc                                          ; $5485: $03
	inc  bc                                          ; $5486: $03
	nop                                              ; $5487: $00
	ld   [bc], a                                     ; $5488: $02
	nop                                              ; $5489: $00
	add  c                                           ; $548a: $81
	ld   [bc], a                                     ; $548b: $02
	nop                                              ; $548c: $00
	nop                                              ; $548d: $00
	add  d                                           ; $548e: $82
	ld   bc, $0d01                                   ; $548f: $01 $01 $0d
	ld   c, $85                                      ; $5492: $0e $85

jr_078_5494:
	rrca                                             ; $5494: $0f
	ld   [bc], a                                     ; $5495: $02
	nop                                              ; $5496: $00
	rrca                                             ; $5497: $0f
	adc  $81                                         ; $5498: $ce $81
	cp   $80                                         ; $549a: $fe $80
	db   $fc                                         ; $549c: $fc
	ld   bc, $fe3e                                   ; $549d: $01 $3e $fe
	add  b                                           ; $54a0: $80
	db   $fc                                         ; $54a1: $fc
	add  b                                           ; $54a2: $80
	cp   $80                                         ; $54a3: $fe $80
	db   $fc                                         ; $54a5: $fc
	ld   [bc], a                                     ; $54a6: $02
	ld   a, $fe                                      ; $54a7: $3e $fe
	di                                               ; $54a9: $f3
	add  e                                           ; $54aa: $83
	ret                                              ; $54ab: $c9


	nop                                              ; $54ac: $00
	ld   a, [bc]                                     ; $54ad: $0a
	add  l                                           ; $54ae: $85
	rst  $38                                         ; $54af: $ff
	ld   [bc], a                                     ; $54b0: $02
	nop                                              ; $54b1: $00
	rst  $38                                         ; $54b2: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $54b3: $cf
	add  l                                           ; $54b4: $85
	rst  $38                                         ; $54b5: $ff
	nop                                              ; $54b6: $00
	ld   a, $81                                      ; $54b7: $3e $81
	rst  $38                                         ; $54b9: $ff
	ld   b, $fe                                      ; $54ba: $06 $fe
	rst  $38                                         ; $54bc: $ff
	ccf                                              ; $54bd: $3f
	rst  $38                                         ; $54be: $ff
	or   h                                           ; $54bf: $b4
	rst  $38                                         ; $54c0: $ff
	rst  $30                                         ; $54c1: $f7
	add  e                                           ; $54c2: $83
	and  a                                           ; $54c3: $a7
	nop                                              ; $54c4: $00
	dec  hl                                          ; $54c5: $2b
	add  c                                           ; $54c6: $81
	rst  $38                                         ; $54c7: $ff
	nop                                              ; $54c8: $00
	inc  bc                                          ; $54c9: $03
	add  c                                           ; $54ca: $81
	rst  $38                                         ; $54cb: $ff
	ld   [bc], a                                     ; $54cc: $02
	db   $fd                                         ; $54cd: $fd
	rst  $38                                         ; $54ce: $ff
	db   $fd                                         ; $54cf: $fd
	add  e                                           ; $54d0: $83
	rst  $38                                         ; $54d1: $ff
	nop                                              ; $54d2: $00
	call nz, $f881                                   ; $54d3: $c4 $81 $f8
	nop                                              ; $54d6: $00
	rst  ToBoot                                         ; $54d7: $c7
	add  c                                           ; $54d8: $81
	rst  $38                                         ; $54d9: $ff
	nop                                              ; $54da: $00
	ld   b, a                                        ; $54db: $47
	add  l                                           ; $54dc: $85
	cp   a                                           ; $54dd: $bf
	add  d                                           ; $54de: $82
	ld   bc, $bf82                                   ; $54df: $01 $82 $bf
	dec  b                                           ; $54e2: $05
	or   e                                           ; $54e3: $b3
	cp   e                                           ; $54e4: $bb
	or   e                                           ; $54e5: $b3
	cp   e                                           ; $54e6: $bb
	or   e                                           ; $54e7: $b3
	cp   e                                           ; $54e8: $bb
	add  b                                           ; $54e9: $80
	cp   b                                           ; $54ea: $b8
	nop                                              ; $54eb: $00
	adc  b                                           ; $54ec: $88
	add  c                                           ; $54ed: $81
	add  b                                           ; $54ee: $80
	add  d                                           ; $54ef: $82
	cp   a                                           ; $54f0: $bf
	inc  b                                           ; $54f1: $04
	xor  $ef                                         ; $54f2: $ee $ef
	xor  $ef                                         ; $54f4: $ee $ef
	xor  $81                                         ; $54f6: $ee $81
	rst  $28                                         ; $54f8: $ef
	nop                                              ; $54f9: $00
	pop  hl                                          ; $54fa: $e1
	add  c                                           ; $54fb: $81
	ldh  [$82], a                                    ; $54fc: $e0 $82
	rst  $28                                         ; $54fe: $ef
	add  h                                           ; $54ff: $84
	cp   l                                           ; $5500: $bd
	add  b                                           ; $5501: $80
	cp   h                                           ; $5502: $bc
	add  b                                           ; $5503: $80
	inc  e                                           ; $5504: $1c
	add  b                                           ; $5505: $80
	dec  e                                           ; $5506: $1d
	add  d                                           ; $5507: $82
	db   $fd                                         ; $5508: $fd
	inc  bc                                          ; $5509: $03
	or   $f7                                         ; $550a: $f6 $f7
	rst  $10                                         ; $550c: $d7
	rst  $30                                         ; $550d: $f7
	add  b                                           ; $550e: $80
	rst  $28                                         ; $550f: $ef
	nop                                              ; $5510: $00
	jr   nz, jr_078_5494                             ; $5511: $20 $81

	ld   bc, $fe00                                   ; $5513: $01 $00 $fe
	add  c                                           ; $5516: $81
	rst  $38                                         ; $5517: $ff
	ld   [bc], a                                     ; $5518: $02
	rst  $10                                         ; $5519: $d7
	rst  $30                                         ; $551a: $f7
	add  hl, de                                      ; $551b: $19
	add  e                                           ; $551c: $83
	rst  JumpTable                                         ; $551d: $df
	dec  bc                                          ; $551e: $0b
	ld   e, a                                        ; $551f: $5f
	rst  JumpTable                                         ; $5520: $df
	sbc  h                                           ; $5521: $9c
	rst  $38                                         ; $5522: $ff
	rra                                              ; $5523: $1f
	rst  $38                                         ; $5524: $ff
	rst  $28                                         ; $5525: $ef
	rst  $38                                         ; $5526: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5527: $cf
	rst  $38                                         ; $5528: $ff
	ccf                                              ; $5529: $3f
	sbc  e                                           ; $552a: $9b
	add  b                                           ; $552b: $80
	add  h                                           ; $552c: $84
	add  b                                           ; $552d: $80
	add  b                                           ; $552e: $80
	add  b                                           ; $552f: $80
	sub  e                                           ; $5530: $93
	ld   bc, $e181                                   ; $5531: $01 $81 $e1
	add  b                                           ; $5534: $80
	rst  $30                                         ; $5535: $f7
	dec  d                                           ; $5536: $15
	jp   nc, wPreservedDEduringAnimSpriteSpecLoad                                   ; $5537: $d2 $f2 $c1

	pop  hl                                          ; $553a: $e1
	call nc, $fbff                                   ; $553b: $d4 $ff $fb
	rst  JumpTable                                         ; $553e: $df
	or   a                                           ; $553f: $b7
	cp   a                                           ; $5540: $bf
	rlca                                             ; $5541: $07
	ld   e, a                                        ; $5542: $5f
	ld   c, l                                        ; $5543: $4d
	cp   a                                           ; $5544: $bf
	dec  b                                           ; $5545: $05
	cp   $ce                                         ; $5546: $fe $ce
	cp   a                                           ; $5548: $bf
	dec  de                                          ; $5549: $1b
	ld   a, a                                        ; $554a: $7f
	inc  a                                           ; $554b: $3c
	add  b                                           ; $554c: $80
	add  d                                           ; $554d: $82
	nop                                              ; $554e: $00
	inc  bc                                          ; $554f: $03
	add  b                                           ; $5550: $80
	rst  $38                                         ; $5551: $ff
	ccf                                              ; $5552: $3f
	cp   a                                           ; $5553: $bf
	add  b                                           ; $5554: $80
	ld   a, a                                        ; $5555: $7f
	rlca                                             ; $5556: $07
	rst  $38                                         ; $5557: $ff
	ld   a, a                                        ; $5558: $7f
	cp   a                                           ; $5559: $bf
	rst  $38                                         ; $555a: $ff
	ld   a, [hl-]                                    ; $555b: $3a
	ld   [bc], a                                     ; $555c: $02
	dec  c                                           ; $555d: $0d
	dec  b                                           ; $555e: $05
	add  b                                           ; $555f: $80
	ld   [bc], a                                     ; $5560: $02
	rlca                                             ; $5561: $07
	dec  d                                           ; $5562: $15
	push hl                                          ; $5563: $e5
	ldh  a, [c]                                      ; $5564: $f2
	ld   a, [$fde5]                                  ; $5565: $fa $e5 $fd
	db   $ed                                         ; $5568: $ed
	db   $fd                                         ; $5569: $fd
	add  b                                           ; $556a: $80
	ld   a, [$f002]                                  ; $556b: $fa $02 $f0
	rrca                                             ; $556e: $0f
	inc  bc                                          ; $556f: $03
	add  e                                           ; $5570: $83
	ld   bc, $0303                                   ; $5571: $01 $03 $03
	rrca                                             ; $5574: $0f
	inc  c                                           ; $5575: $0c
	nop                                              ; $5576: $00
	add  b                                           ; $5577: $80
	ld   bc, $0080                                   ; $5578: $01 $80 $00
	ld   bc, $fcce                                   ; $557b: $01 $ce $fc
	add  b                                           ; $557e: $80
	ld   a, [$f480]                                  ; $557f: $fa $80 $f4
	add  b                                           ; $5582: $80
	ld   a, [$7480]                                  ; $5583: $fa $80 $74
	add  b                                           ; $5586: $80
	cp   d                                           ; $5587: $ba
	add  b                                           ; $5588: $80
	ld   [hl], h                                     ; $5589: $74
	add  b                                           ; $558a: $80
	cp   d                                           ; $558b: $ba
	ld   [bc], a                                     ; $558c: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $558d: $cf
	rst  $38                                         ; $558e: $ff
	jp   $c981                                       ; $558f: $c3 $81 $c9


	ld   [bc], a                                     ; $5592: $02
	set  7, a                                        ; $5593: $cb $ff
	db   $fd                                         ; $5595: $fd
	add  c                                           ; $5596: $81
	ret                                              ; $5597: $c9


	add  b                                           ; $5598: $80
	ld   c, c                                        ; $5599: $49
	add  b                                           ; $559a: $80
	adc  c                                           ; $559b: $89
	nop                                              ; $559c: $00
	push bc                                          ; $559d: $c5
	add  l                                           ; $559e: $85
	rst  $38                                         ; $559f: $ff
	add  b                                           ; $55a0: $80
	push af                                          ; $55a1: $f5
	add  b                                           ; $55a2: $80
	ld   a, [$f580]                                  ; $55a3: $fa $80 $f5
	add  b                                           ; $55a6: $80
	ld   a, [$bc00]                                  ; $55a7: $fa $00 $bc
	add  c                                           ; $55aa: $81
	and  a                                           ; $55ab: $a7
	inc  bc                                          ; $55ac: $03
	xor  a                                           ; $55ad: $af
	rst  $38                                         ; $55ae: $ff
	rst  $30                                         ; $55af: $f7
	and  a                                           ; $55b0: $a7
	add  b                                           ; $55b1: $80
	daa                                              ; $55b2: $27
	add  b                                           ; $55b3: $80
	and  a                                           ; $55b4: $a7
	inc  b                                           ; $55b5: $04
	cpl                                              ; $55b6: $2f
	ld   a, a                                        ; $55b7: $7f
	rst  $30                                         ; $55b8: $f7
	and  a                                           ; $55b9: $a7
	db   $db                                         ; $55ba: $db
	add  e                                           ; $55bb: $83
	rst  $38                                         ; $55bc: $ff
	nop                                              ; $55bd: $00
	rst  $28                                         ; $55be: $ef
	add  e                                           ; $55bf: $83
	rst  $38                                         ; $55c0: $ff
	nop                                              ; $55c1: $00
	rst  JumpTable                                         ; $55c2: $df
	add  c                                           ; $55c3: $81
	rst  $38                                         ; $55c4: $ff
	nop                                              ; $55c5: $00
	ld   a, a                                        ; $55c6: $7f
	adc  e                                           ; $55c7: $8b
	cp   a                                           ; $55c8: $bf
	add  b                                           ; $55c9: $80
	sbc  a                                           ; $55ca: $9f
	add  b                                           ; $55cb: $80
	cp   a                                           ; $55cc: $bf
	nop                                              ; $55cd: $00
	or   e                                           ; $55ce: $b3
	add  c                                           ; $55cf: $81
	cp   e                                           ; $55d0: $bb
	ld   b, $b3                                      ; $55d1: $06 $b3
	cp   e                                           ; $55d3: $bb
	or   e                                           ; $55d4: $b3
	cp   e                                           ; $55d5: $bb
	or   e                                           ; $55d6: $b3
	cp   e                                           ; $55d7: $bb
	or   e                                           ; $55d8: $b3
	add  c                                           ; $55d9: $81
	cp   e                                           ; $55da: $bb
	nop                                              ; $55db: $00
	and  $83                                         ; $55dc: $e6 $83
	rst  $28                                         ; $55de: $ef
	ld   [bc], a                                     ; $55df: $02
	xor  $ef                                         ; $55e0: $ee $ef
	xor  $81                                         ; $55e2: $ee $81
	rst  $28                                         ; $55e4: $ef
	inc  b                                           ; $55e5: $04
	xor  $ef                                         ; $55e6: $ee $ef

jr_078_55e8:
	xor  $ef                                         ; $55e8: $ee $ef
	cp   h                                           ; $55ea: $bc
	adc  e                                           ; $55eb: $8b
	cp   l                                           ; $55ec: $bd
	add  b                                           ; $55ed: $80
	adc  l                                           ; $55ee: $8d
	nop                                              ; $55ef: $00
	sub  $81                                         ; $55f0: $d6 $81
	rst  $30                                         ; $55f2: $f7
	inc  bc                                          ; $55f3: $03
	rst  $10                                         ; $55f4: $d7
	rst  $30                                         ; $55f5: $f7
	sub  $f6                                         ; $55f6: $d6 $f6
	add  b                                           ; $55f8: $80
	rst  $30                                         ; $55f9: $f7
	inc  bc                                          ; $55fa: $03
	sub  $f6                                         ; $55fb: $d6 $f6
	rst  $10                                         ; $55fd: $d7
	rst  $30                                         ; $55fe: $f7
	add  b                                           ; $55ff: $80
	or   $00                                         ; $5600: $f6 $00
	ld   a, [de]                                     ; $5602: $1a

jr_078_5603:
	add  c                                           ; $5603: $81
	rst  JumpTable                                         ; $5604: $df
	add  b                                           ; $5605: $80
	ld   e, a                                        ; $5606: $5f
	add  b                                           ; $5607: $80
	sbc  a                                           ; $5608: $9f
	add  b                                           ; $5609: $80
	ld   e, a                                        ; $560a: $5f
	rlca                                             ; $560b: $07
	sbc  e                                           ; $560c: $9b
	sbc  a                                           ; $560d: $9f
	ld   d, a                                        ; $560e: $57
	ld   e, h                                        ; $560f: $5c
	and  h                                           ; $5610: $a4
	or   b                                           ; $5611: $b0
	ld   a, a                                        ; $5612: $7f
	add  b                                           ; $5613: $80
	add  b                                           ; $5614: $80
	add  l                                           ; $5615: $85
	add  b                                           ; $5616: $80
	adc  d                                           ; $5617: $8a
	add  b                                           ; $5618: $80
	ret  nz                                          ; $5619: $c0

	add  b                                           ; $561a: $80
	add  b                                           ; $561b: $80
	add  b                                           ; $561c: $80
	pop  hl                                          ; $561d: $e1
	add  hl, bc                                      ; $561e: $09
	ld   b, h                                        ; $561f: $44
	rst  $30                                         ; $5620: $f7
	inc  c                                           ; $5621: $0c
	rst  $38                                         ; $5622: $ff
	sbc  d                                           ; $5623: $9a
	rst  $38                                         ; $5624: $ff
	ld   e, b                                        ; $5625: $58
	ld   a, a                                        ; $5626: $7f
	inc  a                                           ; $5627: $3c
	ld   a, $80                                      ; $5628: $3e $80
	ld   d, l                                        ; $562a: $55
	add  b                                           ; $562b: $80
	ld   a, [hl+]                                    ; $562c: $2a
	add  d                                           ; $562d: $82
	nop                                              ; $562e: $00
	ld   a, [bc]                                     ; $562f: $0a
	ld   l, l                                        ; $5630: $6d
	ld   l, a                                        ; $5631: $6f
	sbc  l                                           ; $5632: $9d
	rst  $38                                         ; $5633: $ff
	ld   e, a                                        ; $5634: $5f
	rst  $38                                         ; $5635: $ff
	ld   c, a                                        ; $5636: $4f
	rst  $38                                         ; $5637: $ff
	xor  a                                           ; $5638: $af
	rst  $38                                         ; $5639: $ff
	rra                                              ; $563a: $1f
	add  c                                           ; $563b: $81
	ld   a, a                                        ; $563c: $7f
	dec  b                                           ; $563d: $05
	or   b                                           ; $563e: $b0
	rst  $38                                         ; $563f: $ff
	inc  h                                           ; $5640: $24
	ccf                                              ; $5641: $3f
	pop  hl                                          ; $5642: $e1
	push af                                          ; $5643: $f5
	add  b                                           ; $5644: $80
	ld   [$e480], a                                  ; $5645: $ea $80 $e4
	add  b                                           ; $5648: $80
	ldh  [$80], a                                    ; $5649: $e0 $80
	pop  bc                                          ; $564b: $c1
	ld   b, $e0                                      ; $564c: $06 $e0
	ldh  a, [$e8]                                    ; $564e: $f0 $e8
	ld   hl, sp+$56                                  ; $5650: $f8 $56
	or   $5d                                         ; $5652: $f6 $5d
	add  c                                           ; $5654: $81
	nop                                              ; $5655: $00
	ld   [bc], a                                     ; $5656: $02
	ld   [bc], a                                     ; $5657: $02
	ld   c, $0c                                      ; $5658: $0e $0c
	add  c                                           ; $565a: $81
	nop                                              ; $565b: $00
	ld   bc, FarGetAddrBank                                   ; $565c: $01 $09 $0b
	add  b                                           ; $565f: $80
	rlca                                             ; $5660: $07
	add  b                                           ; $5661: $80
	rrca                                             ; $5662: $0f
	nop                                              ; $5663: $00
	nop                                              ; $5664: $00
	add  l                                           ; $5665: $85
	jr   nc, jr_078_55e8                             ; $5666: $30 $80

	ccf                                              ; $5668: $3f
	ld   bc, $2d1d                                   ; $5669: $01 $1d $2d
	add  b                                           ; $566c: $80
	rst  $38                                         ; $566d: $ff
	inc  b                                           ; $566e: $04
	ld   a, [$05ff]                                  ; $566f: $fa $ff $05
	ld   a, $3c                                      ; $5672: $3e $3c
	add  e                                           ; $5674: $83
	ld   [$b508], sp                                 ; $5675: $08 $08 $b5
	cp   a                                           ; $5678: $bf
	rst  $30                                         ; $5679: $f7
	rst  $38                                         ; $567a: $ff
	ld   d, e                                        ; $567b: $53
	rst  $38                                         ; $567c: $ff
	inc  h                                           ; $567d: $24
	rst  $38                                         ; $567e: $ff
	ld   a, a                                        ; $567f: $7f
	add  c                                           ; $5680: $81
	jr   nc, jr_078_5603                             ; $5681: $30 $80

	inc  sp                                          ; $5683: $33
	rlca                                             ; $5684: $07
	ld   c, a                                        ; $5685: $4f
	ld   a, a                                        ; $5686: $7f
	xor  $ff                                         ; $5687: $ee $ff
	ld   b, c                                        ; $5689: $41
	rst  $38                                         ; $568a: $ff
	xor  b                                           ; $568b: $a8
	ld   hl, sp-$80                                  ; $568c: $f8 $80
	add  e                                           ; $568e: $83
	add  hl, bc                                      ; $568f: $09
	rst  $30                                         ; $5690: $f7
	inc  hl                                          ; $5691: $23
	dec  h                                           ; $5692: $25
	ld   l, $ea                                      ; $5693: $2e $ea
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5695: $cf
	ld   e, h                                        ; $5696: $5c
	rst  $38                                         ; $5697: $ff
	and  [hl]                                        ; $5698: $a6
	rst  $38                                         ; $5699: $ff
	add  b                                           ; $569a: $80
	ret  nz                                          ; $569b: $c0

	db   $10                                         ; $569c: $10
	jr   c, jr_078_56de                              ; $569d: $38 $3f

	rlca                                             ; $569f: $07
	rst  $38                                         ; $56a0: $ff
	ld   b, c                                        ; $56a1: $41
	cp   $75                                         ; $56a2: $fe $75
	push af                                          ; $56a4: $f5
	sbc  d                                           ; $56a5: $9a
	ld   a, [$e868]                                  ; $56a6: $fa $68 $e8
	daa                                              ; $56a9: $27
	rlca                                             ; $56aa: $07
	pop  bc                                          ; $56ab: $c1
	rst  $38                                         ; $56ac: $ff
	ld   a, $81                                      ; $56ad: $3e $81
	rst  $38                                         ; $56af: $ff
	dec  b                                           ; $56b0: $05
	ld   [hl], l                                     ; $56b1: $75
	sbc  a                                           ; $56b2: $9f
	jr   c, jr_078_56e4                              ; $56b3: $38 $2f

	inc  d                                           ; $56b5: $14
	ld   d, $80                                      ; $56b6: $16 $80
	nop                                              ; $56b8: $00
	add  d                                           ; $56b9: $82
	rst  $38                                         ; $56ba: $ff
	nop                                              ; $56bb: $00
	nop                                              ; $56bc: $00
	add  c                                           ; $56bd: $81
	rst  $38                                         ; $56be: $ff
	dec  b                                           ; $56bf: $05
	ld   d, [hl]                                     ; $56c0: $56
	rst  $38                                         ; $56c1: $ff
	and  d                                           ; $56c2: $a2
	or   $59                                         ; $56c3: $f6 $59
	ld   e, e                                        ; $56c5: $5b
	add  b                                           ; $56c6: $80
	inc  b                                           ; $56c7: $04
	add  d                                           ; $56c8: $82
	rst  $38                                         ; $56c9: $ff
	add  hl, bc                                      ; $56ca: $09
	ccf                                              ; $56cb: $3f
	rst  $38                                         ; $56cc: $ff
	ret  nz                                          ; $56cd: $c0

	rst  $38                                         ; $56ce: $ff
	ld   a, [de]                                     ; $56cf: $1a
	rst  $38                                         ; $56d0: $ff
	add  c                                           ; $56d1: $81
	rst  $38                                         ; $56d2: $ff
	sbc  e                                           ; $56d3: $9b
	rst  $38                                         ; $56d4: $ff
	add  b                                           ; $56d5: $80
	ld   [bc], a                                     ; $56d6: $02
	add  h                                           ; $56d7: $84
	rst  $38                                         ; $56d8: $ff
	rlca                                             ; $56d9: $07
	nop                                              ; $56da: $00
	rst  $38                                         ; $56db: $ff
	ret  nc                                          ; $56dc: $d0

	rst  $38                                         ; $56dd: $ff

jr_078_56de:
	ld   [hl], l                                     ; $56de: $75
	rst  $38                                         ; $56df: $ff
	cp   b                                           ; $56e0: $b8
	ldh  [c], a                                      ; $56e1: $e2
	add  b                                           ; $56e2: $80
	nop                                              ; $56e3: $00

jr_078_56e4:
	add  h                                           ; $56e4: $84
	rst  $38                                         ; $56e5: $ff
	rlca                                             ; $56e6: $07
	rrca                                             ; $56e7: $0f
	rst  $38                                         ; $56e8: $ff
	inc  b                                           ; $56e9: $04
	rst  $38                                         ; $56ea: $ff
	call nc, $42ff                                   ; $56eb: $d4 $ff $42
	ld   h, d                                        ; $56ee: $62
	add  b                                           ; $56ef: $80
	ld   de, $fe80                                   ; $56f0: $11 $80 $fe
	add  h                                           ; $56f3: $84
	rst  $38                                         ; $56f4: $ff
	dec  b                                           ; $56f5: $05
	inc  bc                                          ; $56f6: $03
	rst  $38                                         ; $56f7: $ff
	ld   d, c                                        ; $56f8: $51
	db   $fd                                         ; $56f9: $fd
	daa                                              ; $56fa: $27
	ld   [hl], a                                     ; $56fb: $77
	add  b                                           ; $56fc: $80
	cpl                                              ; $56fd: $2f
	add  hl, bc                                      ; $56fe: $09
	db   $fc                                         ; $56ff: $fc
	rst  $38                                         ; $5700: $ff
	di                                               ; $5701: $f3
	rst  $38                                         ; $5702: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5703: $cf
	rst  $38                                         ; $5704: $ff
	cp   a                                           ; $5705: $bf
	rst  $38                                         ; $5706: $ff

jr_078_5707:
	rst  JumpTable                                         ; $5707: $df
	and  b                                           ; $5708: $a0
	add  b                                           ; $5709: $80

Jump_078_570a:
	ldh  a, [$80]                                    ; $570a: $f0 $80
	ldh  [rSB], a                                    ; $570c: $e0 $01
	ld   [hl-], a                                    ; $570e: $32
	ldh  a, [c]                                      ; $570f: $f2
	add  b                                           ; $5710: $80
	rst  $38                                         ; $5711: $ff
	ld   [bc], a                                     ; $5712: $02
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5713: $cf
	rst  $38                                         ; $5714: $ff
	ldh  a, [$81]                                    ; $5715: $f0 $81
	rst  $38                                         ; $5717: $ff
	nop                                              ; $5718: $00
	sbc  a                                           ; $5719: $9f
	add  c                                           ; $571a: $81
	ld   h, b                                        ; $571b: $60
	add  b                                           ; $571c: $80
	nop                                              ; $571d: $00
	add  b                                           ; $571e: $80
	dec  b                                           ; $571f: $05
	add  b                                           ; $5720: $80
	rst  $38                                         ; $5721: $ff
	ld   [bc], a                                     ; $5722: $02
	cp   [hl]                                        ; $5723: $be
	rst  $38                                         ; $5724: $ff
	ld   b, c                                        ; $5725: $41
	add  c                                           ; $5726: $81
	rst  $38                                         ; $5727: $ff
	ld   bc, $25da                                   ; $5728: $01 $da $25
	add  b                                           ; $572b: $80
	nop                                              ; $572c: $00
	add  d                                           ; $572d: $82
	rst  $38                                         ; $572e: $ff
	ld   [bc], a                                     ; $572f: $02
	ldh  [rIE], a                                    ; $5730: $e0 $ff
	rra                                              ; $5732: $1f
	add  e                                           ; $5733: $83
	rst  $38                                         ; $5734: $ff
	ld   bc, $54ab                                   ; $5735: $01 $ab $54
	add  b                                           ; $5738: $80
	nop                                              ; $5739: $00
	add  b                                           ; $573a: $80
	add  b                                           ; $573b: $80
	add  b                                           ; $573c: $80
	ldh  [$80], a                                    ; $573d: $e0 $80
	rst  $38                                         ; $573f: $ff
	ld   [bc], a                                     ; $5740: $02
	rrca                                             ; $5741: $0f
	rst  $38                                         ; $5742: $ff
	ldh  a, [$81]                                    ; $5743: $f0 $81
	rst  $38                                         ; $5745: $ff
	dec  b                                           ; $5746: $05
	ld   c, $0f                                      ; $5747: $0e $0f
	ld   a, [bc]                                     ; $5749: $0a
	rrca                                             ; $574a: $0f
	inc  b                                           ; $574b: $04
	rrca                                             ; $574c: $0f
	add  b                                           ; $574d: $80
	nop                                              ; $574e: $00
	add  b                                           ; $574f: $80
	rrca                                             ; $5750: $0f
	nop                                              ; $5751: $00
	nop                                              ; $5752: $00
	add  e                                           ; $5753: $83
	rrca                                             ; $5754: $0f
	inc  bc                                          ; $5755: $03
	ret  nc                                          ; $5756: $d0

	rst  $38                                         ; $5757: $ff
	ld   l, $fe                                      ; $5758: $2e $fe
	add  b                                           ; $575a: $80
	add  c                                           ; $575b: $81
	inc  b                                           ; $575c: $04
	ld   [hl], b                                     ; $575d: $70
	ld   a, a                                        ; $575e: $7f
	adc  a                                           ; $575f: $8f
	rst  $38                                         ; $5760: $ff
	ld   a, a                                        ; $5761: $7f
	add  e                                           ; $5762: $83
	rst  $38                                         ; $5763: $ff
	ld   b, $0f                                      ; $5764: $06 $0f
	ldh  a, [$0c]                                    ; $5766: $f0 $0c
	rrca                                             ; $5768: $0f
	add  e                                           ; $5769: $83
	rst  $38                                         ; $576a: $ff
	ld   a, a                                        ; $576b: $7f
	add  a                                           ; $576c: $87
	rst  $38                                         ; $576d: $ff
	ld   [bc], a                                     ; $576e: $02
	sbc  a                                           ; $576f: $9f
	ld   a, a                                        ; $5770: $7f
	rra                                              ; $5771: $1f
	add  a                                           ; $5772: $87
	rst  $38                                         ; $5773: $ff
	add  b                                           ; $5774: $80
	push af                                          ; $5775: $f5
	add  b                                           ; $5776: $80
	ret  nc                                          ; $5777: $d0

	adc  d                                           ; $5778: $8a
	rst  $38                                         ; $5779: $ff
	add  b                                           ; $577a: $80
	ld   d, d                                        ; $577b: $52
	add  b                                           ; $577c: $80
	jr   z, jr_078_5707                              ; $577d: $28 $88

	rst  $38                                         ; $577f: $ff
	add  b                                           ; $5780: $80
	db   $fd                                         ; $5781: $fd
	add  b                                           ; $5782: $80
	and  b                                           ; $5783: $a0
	add  b                                           ; $5784: $80
	nop                                              ; $5785: $00
	add  [hl]                                        ; $5786: $86
	rst  $38                                         ; $5787: $ff
	add  b                                           ; $5788: $80
	xor  a                                           ; $5789: $af
	add  b                                           ; $578a: $80
	ld   b, b                                        ; $578b: $40
	add  d                                           ; $578c: $82
	nop                                              ; $578d: $00
	adc  b                                           ; $578e: $88
	rst  $38                                         ; $578f: $ff
	add  b                                           ; $5790: $80
	ld   e, a                                        ; $5791: $5f
	add  b                                           ; $5792: $80
	ccf                                              ; $5793: $3f
	add  b                                           ; $5794: $80
	ld   d, a                                        ; $5795: $57
	sub  d                                           ; $5796: $92
	ldh  a, [$80]                                    ; $5797: $f0 $80
	ldh  [$80], a                                    ; $5799: $e0 $80
	or   b                                           ; $579b: $b0
	add  b                                           ; $579c: $80
	ld   d, b                                        ; $579d: $50
	add  b                                           ; $579e: $80
	and  b                                           ; $579f: $a0
	add  b                                           ; $57a0: $80
	ld   d, b                                        ; $57a1: $50
	add  b                                           ; $57a2: $80
	jr   nz, @-$72                                   ; $57a3: $20 $8c

	rst  $38                                         ; $57a5: $ff
	add  b                                           ; $57a6: $80
	jp   nz, $ff86                                   ; $57a7: $c2 $86 $ff

	add  b                                           ; $57aa: $80
	db   $fd                                         ; $57ab: $fd
	add  b                                           ; $57ac: $80
	ret  nz                                          ; $57ad: $c0

	add  b                                           ; $57ae: $80
	ret  nc                                          ; $57af: $d0

	add  b                                           ; $57b0: $80
	xor  b                                           ; $57b1: $a8
	add  [hl]                                        ; $57b2: $86
	rst  $38                                         ; $57b3: $ff
	add  b                                           ; $57b4: $80
	ld   a, a                                        ; $57b5: $7f
	add  b                                           ; $57b6: $80
	ld   a, [bc]                                     ; $57b7: $0a
	add  d                                           ; $57b8: $82
	nop                                              ; $57b9: $00
	adc  b                                           ; $57ba: $88
	rst  $38                                         ; $57bb: $ff
	add  b                                           ; $57bc: $80
	cp   a                                           ; $57bd: $bf
	add  b                                           ; $57be: $80
	ld   e, [hl]                                     ; $57bf: $5e
	add  b                                           ; $57c0: $80
	dec  d                                           ; $57c1: $15
	add  h                                           ; $57c2: $84
	rst  $38                                         ; $57c3: $ff
	add  b                                           ; $57c4: $80
	cp   $80                                         ; $57c5: $fe $80
	db   $f4                                         ; $57c7: $f4
	add  b                                           ; $57c8: $80
	and  b                                           ; $57c9: $a0
	add  b                                           ; $57ca: $80
	ret  nz                                          ; $57cb: $c0

	add  b                                           ; $57cc: $80
	ld   b, b                                        ; $57cd: $40
	add  d                                           ; $57ce: $82
	rst  $38                                         ; $57cf: $ff
	add  b                                           ; $57d0: $80
	cp   a                                           ; $57d1: $bf
	add  b                                           ; $57d2: $80
	ld   a, [hl+]                                    ; $57d3: $2a
	add  b                                           ; $57d4: $80
	nop                                              ; $57d5: $00
	add  b                                           ; $57d6: $80
	ld   bc, $0380                                   ; $57d7: $01 $80 $03
	add  [hl]                                        ; $57da: $86
	rrca                                             ; $57db: $0f
	add  b                                           ; $57dc: $80
	ld   [$0f80], sp                                 ; $57dd: $08 $80 $0f
	add  b                                           ; $57e0: $80
	ld   c, $82                                      ; $57e1: $0e $82
	rrca                                             ; $57e3: $0f
	add  d                                           ; $57e4: $82
	rst  $38                                         ; $57e5: $ff
	add  b                                           ; $57e6: $80
	ld   d, l                                        ; $57e7: $55
	add  b                                           ; $57e8: $80
	nop                                              ; $57e9: $00
	add  b                                           ; $57ea: $80
	ret  nz                                          ; $57eb: $c0

	add  b                                           ; $57ec: $80
	nop                                              ; $57ed: $00
	add  b                                           ; $57ee: $80
	ld   a, [$ff80]                                  ; $57ef: $fa $80 $ff
	add  b                                           ; $57f2: $80
	xor  d                                           ; $57f3: $aa
	add  b                                           ; $57f4: $80
	push de                                          ; $57f5: $d5
	add  h                                           ; $57f6: $84
	nop                                              ; $57f7: $00
	add  b                                           ; $57f8: $80
	ld   [bc], a                                     ; $57f9: $02
	add  b                                           ; $57fa: $80
	xor  l                                           ; $57fb: $ad
	add  b                                           ; $57fc: $80
	cp   $80                                         ; $57fd: $fe $80
	add  b                                           ; $57ff: $80
	add  b                                           ; $5800: $80
	ld   b, b                                        ; $5801: $40
	add  h                                           ; $5802: $84
	nop                                              ; $5803: $00
	add  b                                           ; $5804: $80
	adc  b                                           ; $5805: $88
	add  b                                           ; $5806: $80
	ld   d, h                                        ; $5807: $54
	add  b                                           ; $5808: $80
	xor  d                                           ; $5809: $aa
	adc  h                                           ; $580a: $8c
	nop                                              ; $580b: $00
	add  b                                           ; $580c: $80
	add  b                                           ; $580d: $80
	nop                                              ; $580e: $00
	nop                                              ; $580f: $00
	add  b                                           ; $5810: $80
	rrca                                             ; $5811: $0f
	add  h                                           ; $5812: $84
	rlca                                             ; $5813: $07
	add  d                                           ; $5814: $82
	inc  bc                                          ; $5815: $03
	add  b                                           ; $5816: $80
	dec  bc                                          ; $5817: $0b
	dec  b                                           ; $5818: $05
	rrca                                             ; $5819: $0f
	ld   [hl], b                                     ; $581a: $70
	rst  $38                                         ; $581b: $ff
	adc  a                                           ; $581c: $8f
	rst  $38                                         ; $581d: $ff
	ldh  a, [$89]                                    ; $581e: $f0 $89
	rst  $38                                         ; $5820: $ff
	ld   bc, $02fd                                   ; $5821: $01 $fd $02
	add  b                                           ; $5824: $80
	dec  d                                           ; $5825: $15
	adc  d                                           ; $5826: $8a
	nop                                              ; $5827: $00
	add  b                                           ; $5828: $80
	rst  $38                                         ; $5829: $ff
	add  b                                           ; $582a: $80
	ld   d, l                                        ; $582b: $55
	adc  d                                           ; $582c: $8a
	nop                                              ; $582d: $00
	add  b                                           ; $582e: $80
	add  sp, -$80                                    ; $582f: $e8 $80
	ld   b, b                                        ; $5831: $40
	adc  d                                           ; $5832: $8a
	nop                                              ; $5833: $00
	adc  [hl]                                        ; $5834: $8e
	rst  $38                                         ; $5835: $ff
	add  b                                           ; $5836: $80
	ld   b, b                                        ; $5837: $40
	adc  h                                           ; $5838: $8c
	nop                                              ; $5839: $00
	add  d                                           ; $583a: $82
	rst  $38                                         ; $583b: $ff
	add  b                                           ; $583c: $80
	or   [hl]                                        ; $583d: $b6
	ld   b, $1f                                      ; $583e: $06 $1f
	rst  $38                                         ; $5840: $ff
	db   $dd                                         ; $5841: $dd
	pop  bc                                          ; $5842: $c1
	nop                                              ; $5843: $00
	ld   bc, $8185                                   ; $5844: $01 $85 $81
	add  c                                           ; $5847: $81
	nop                                              ; $5848: $00
	ld   b, $81                                      ; $5849: $06 $81
	rst  $38                                         ; $584b: $ff
	add  b                                           ; $584c: $80
	xor  $80                                         ; $584d: $ee $80
	cp   e                                           ; $584f: $bb
	add  b                                           ; $5850: $80
	ld   d, l                                        ; $5851: $55
	ld   b, $2a                                      ; $5852: $06 $2a
	xor  d                                           ; $5854: $aa
	adc  l                                           ; $5855: $8d
	db   $fd                                         ; $5856: $fd
	ldh  a, [$fe]                                    ; $5857: $f0 $fe
	ld   bc, $ff81                                   ; $5859: $01 $81 $ff
	add  b                                           ; $585c: $80
	xor  $80                                         ; $585d: $ee $80
	cp   e                                           ; $585f: $bb
	add  b                                           ; $5860: $80
	ld   d, l                                        ; $5861: $55
	add  b                                           ; $5862: $80
	xor  d                                           ; $5863: $aa
	add  b                                           ; $5864: $80
	ld   d, l                                        ; $5865: $55
	add  b                                           ; $5866: $80
	ld   [hl+], a                                    ; $5867: $22
	add  b                                           ; $5868: $80
	ld   bc, $0082                                   ; $5869: $01 $82 $00
	add  b                                           ; $586c: $80
	ld   [$2480], sp                                 ; $586d: $08 $80 $24
	add  h                                           ; $5870: $84
	nop                                              ; $5871: $00
	add  b                                           ; $5872: $80
	call c, $bc0e                                    ; $5873: $dc $0e $bc
	db   $fc                                         ; $5876: $fc
	inc  a                                           ; $5877: $3c
	db   $fc                                         ; $5878: $fc
	cp   d                                           ; $5879: $ba
	cp   $90                                         ; $587a: $fe $90
	cp   $94                                         ; $587c: $fe $94
	rst  $38                                         ; $587e: $ff
	sbc  h                                           ; $587f: $9c
	rst  $38                                         ; $5880: $ff
	dec  e                                           ; $5881: $1d
	ld   a, a                                        ; $5882: $7f
	ccf                                              ; $5883: $3f
	add  e                                           ; $5884: $83
	rst  $38                                         ; $5885: $ff
	add  b                                           ; $5886: $80
	xor  a                                           ; $5887: $af
	add  b                                           ; $5888: $80
	rlca                                             ; $5889: $07
	add  b                                           ; $588a: $80
	ld   e, a                                        ; $588b: $5f
	add  d                                           ; $588c: $82
	rst  $38                                         ; $588d: $ff
	add  h                                           ; $588e: $84
	nop                                              ; $588f: $00
	add  b                                           ; $5890: $80
	ld   b, $01                                      ; $5891: $06 $01
	nop                                              ; $5893: $00
	inc  bc                                          ; $5894: $03
	add  b                                           ; $5895: $80
	ld   bc, $0601                                   ; $5896: $01 $01 $06
	ld   [bc], a                                     ; $5899: $02
	add  b                                           ; $589a: $80
	ld   bc, $370b                                   ; $589b: $01 $0b $37
	ld   [hl], b                                     ; $589e: $70
	ld   h, b                                        ; $589f: $60
	ldh  a, [$80]                                    ; $58a0: $f0 $80
	ldh  a, [$90]                                    ; $58a2: $f0 $90
	ldh  a, [$90]                                    ; $58a4: $f0 $90
	ldh  a, [rP1]                                    ; $58a6: $f0 $00
	ld   d, b                                        ; $58a8: $50
	add  b                                           ; $58a9: $80

jr_078_58aa:
	ldh  [$80], a                                    ; $58aa: $e0 $80
	ldh  a, [rAUD4ENV]                               ; $58ac: $f0 $21
	sbc  a                                           ; $58ae: $9f
	rst  $38                                         ; $58af: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58b0: $cf
	rst  $38                                         ; $58b1: $ff
	adc  d                                           ; $58b2: $8a
	rst  $38                                         ; $58b3: $ff

jr_078_58b4:
	ret  nz                                          ; $58b4: $c0

	rst  $38                                         ; $58b5: $ff
	add  sp, -$01                                    ; $58b6: $e8 $ff
	xor  b                                           ; $58b8: $a8
	xor  a                                           ; $58b9: $af
	ld   [hl], c                                     ; $58ba: $71
	ld   a, a                                        ; $58bb: $7f
	ld   [$a1ff], a                                  ; $58bc: $ea $ff $a1
	ret  nz                                          ; $58bf: $c0

	ld   b, b                                        ; $58c0: $40
	ret  nz                                          ; $58c1: $c0

	ldh  [rIE], a                                    ; $58c2: $e0 $ff
	rst  JumpTable                                         ; $58c4: $df
	rst  $38                                         ; $58c5: $ff
	ld   a, a                                        ; $58c6: $7f
	rst  $38                                         ; $58c7: $ff
	ccf                                              ; $58c8: $3f
	rst  $38                                         ; $58c9: $ff
	ccf                                              ; $58ca: $3f
	rst  $38                                         ; $58cb: $ff
	ld   a, a                                        ; $58cc: $7f
	rst  $38                                         ; $58cd: $ff
	jr   nc, jr_078_58d0                             ; $58ce: $30 $00

jr_078_58d0:
	add  b                                           ; $58d0: $80
	ld   bc, $0301                                   ; $58d1: $01 $01 $03
	di                                               ; $58d4: $f3
	add  b                                           ; $58d5: $80
	ld   hl, sp-$80                                  ; $58d6: $f8 $80
	db   $fd                                         ; $58d8: $fd
	add  b                                           ; $58d9: $80
	ld   hl, sp-$80                                  ; $58da: $f8 $80
	ld   sp, hl                                      ; $58dc: $f9
	add  b                                           ; $58dd: $80
	ldh  [c], a                                      ; $58de: $e2
	ld   bc, $d0df                                   ; $58df: $01 $df $d0
	add  b                                           ; $58e2: $80
	or   b                                           ; $58e3: $b0
	add  b                                           ; $58e4: $80
	ld   [hl], b                                     ; $58e5: $70
	ld   de, $b0a0                                   ; $58e6: $11 $a0 $b0
	ld   b, b                                        ; $58e9: $40
	ld   [hl], b                                     ; $58ea: $70
	add  b                                           ; $58eb: $80
	or   b                                           ; $58ec: $b0
	ld   h, b                                        ; $58ed: $60
	ld   [hl], b                                     ; $58ee: $70
	and  b                                           ; $58ef: $a0
	or   b                                           ; $58f0: $b0
	ld   [hl], l                                     ; $58f1: $75
	ld   a, a                                        ; $58f2: $7f
	xor  b                                           ; $58f3: $a8
	cp   a                                           ; $58f4: $bf
	ld   [hl], h                                     ; $58f5: $74
	ld   [hl], a                                     ; $58f6: $77
	xor  d                                           ; $58f7: $aa
	xor  e                                           ; $58f8: $ab
	add  b                                           ; $58f9: $80
	ld   d, $80                                      ; $58fa: $16 $80
	ld   a, [bc]                                     ; $58fc: $0a
	add  b                                           ; $58fd: $80
	nop                                              ; $58fe: $00
	add  b                                           ; $58ff: $80
	ld   [$0f11], sp                                 ; $5900: $08 $11 $0f
	rst  $38                                         ; $5903: $ff
	xor  a                                           ; $5904: $af
	rst  $38                                         ; $5905: $ff
	ccf                                              ; $5906: $3f
	rst  $38                                         ; $5907: $ff
	ccf                                              ; $5908: $3f
	ld   a, a                                        ; $5909: $7f
	sbc  a                                           ; $590a: $9f
	rst  $38                                         ; $590b: $ff
	ld   a, a                                        ; $590c: $7f
	ccf                                              ; $590d: $3f
	ld   [hl], c                                     ; $590e: $71
	ld   a, a                                        ; $590f: $7f
	add  e                                           ; $5910: $83
	adc  a                                           ; $5911: $8f
	db   $e3                                         ; $5912: $e3
	pop  hl                                          ; $5913: $e1
	add  b                                           ; $5914: $80
	ldh  [c], a                                      ; $5915: $e2
	add  b                                           ; $5916: $80
	push hl                                          ; $5917: $e5
	add  b                                           ; $5918: $80
	add  b                                           ; $5919: $80
	add  b                                           ; $591a: $80
	and  b                                           ; $591b: $a0
	add  b                                           ; $591c: $80
	ret  nz                                          ; $591d: $c0

	dec  b                                           ; $591e: $05
	ld   [hl], b                                     ; $591f: $70
	ldh  a, [$30]                                    ; $5920: $f0 $30
	ldh  a, [$1f]                                    ; $5922: $f0 $1f
	ld   d, b                                        ; $5924: $50
	add  b                                           ; $5925: $80
	or   b                                           ; $5926: $b0
	add  b                                           ; $5927: $80
	jr   nz, jr_078_58aa                             ; $5928: $20 $80

	db   $10                                         ; $592a: $10
	add  h                                           ; $592b: $84
	nop                                              ; $592c: $00
	add  b                                           ; $592d: $80
	ld   h, b                                        ; $592e: $60
	nop                                              ; $592f: $00
	ccf                                              ; $5930: $3f
	add  e                                           ; $5931: $83
	jr   nc, jr_078_58b4                             ; $5932: $30 $80

	ld   bc, $ff80                                   ; $5934: $01 $80 $ff
	ld   [bc], a                                     ; $5937: $02
	call c, $23ff                                    ; $5938: $dc $ff $23
	add  c                                           ; $593b: $81
	rst  $38                                         ; $593c: $ff
	ld   bc, $14eb                                   ; $593d: $01 $eb $14
	add  d                                           ; $5940: $82
	nop                                              ; $5941: $00
	add  b                                           ; $5942: $80
	rst  $38                                         ; $5943: $ff
	ld   [bc], a                                     ; $5944: $02
	ldh  [rIE], a                                    ; $5945: $e0 $ff
	rra                                              ; $5947: $1f
	add  e                                           ; $5948: $83
	rst  $38                                         ; $5949: $ff
	ld   bc, $956a                                   ; $594a: $01 $6a $95
	add  d                                           ; $594d: $82
	nop                                              ; $594e: $00
	add  b                                           ; $594f: $80
	ldh  a, [$08]                                    ; $5950: $f0 $08
	ld   a, h                                        ; $5952: $7c
	db   $fc                                         ; $5953: $fc
	sbc  a                                           ; $5954: $9f
	rst  $38                                         ; $5955: $ff
	db   $e3                                         ; $5956: $e3
	rst  $38                                         ; $5957: $ff
	db   $fc                                         ; $5958: $fc
	rst  $38                                         ; $5959: $ff
	sub  b                                           ; $595a: $90
	add  l                                           ; $595b: $85
	ld   h, b                                        ; $595c: $60
	add  b                                           ; $595d: $80
	nop                                              ; $595e: $00
	add  b                                           ; $595f: $80
	ldh  a, [$03]                                    ; $5960: $f0 $03
	ld   [hl], b                                     ; $5962: $70
	ldh  a, [$80]                                    ; $5963: $f0 $80
	ldh  a, [rAUD2LOW]                               ; $5965: $f0 $18
	ld   [bc], a                                     ; $5967: $02
	add  a                                           ; $5968: $87
	nop                                              ; $5969: $00
	add  b                                           ; $596a: $80
	rrca                                             ; $596b: $0f
	add  b                                           ; $596c: $80
	dec  b                                           ; $596d: $05
	add  b                                           ; $596e: $80
	ld   [bc], a                                     ; $596f: $02
	add  b                                           ; $5970: $80
	dec  b                                           ; $5971: $05
	add  l                                           ; $5972: $85
	nop                                              ; $5973: $00
	inc  b                                           ; $5974: $04
	rrca                                             ; $5975: $0f
	di                                               ; $5976: $f3
	rst  $38                                         ; $5977: $ff
	ld   e, h                                        ; $5978: $5c
	ld   e, a                                        ; $5979: $5f
	add  b                                           ; $597a: $80
	xor  e                                           ; $597b: $ab
	add  b                                           ; $597c: $80
	ld   d, l                                        ; $597d: $55
	add  l                                           ; $597e: $85
	nop                                              ; $597f: $00
	ld   [$ffe0], sp                                 ; $5980: $08 $e0 $ff
	db   $e3                                         ; $5983: $e3
	ld   a, a                                        ; $5984: $7f
	db   $fc                                         ; $5985: $fc
	sbc  a                                           ; $5986: $9f
	rst  $28                                         ; $5987: $ef
	di                                               ; $5988: $f3
	db   $fc                                         ; $5989: $fc
	add  [hl]                                        ; $598a: $86
	nop                                              ; $598b: $00
	add  c                                           ; $598c: $81
	rst  $38                                         ; $598d: $ff
	inc  b                                           ; $598e: $04
	ld   a, a                                        ; $598f: $7f
	rst  $38                                         ; $5990: $ff
	add  b                                           ; $5991: $80
	cp   a                                           ; $5992: $bf
	ld   b, b                                        ; $5993: $40
	add  b                                           ; $5994: $80
	xor  d                                           ; $5995: $aa
	add  b                                           ; $5996: $80
	ld   d, l                                        ; $5997: $55
	add  b                                           ; $5998: $80
	xor  d                                           ; $5999: $aa
	add  b                                           ; $599a: $80
	ld   d, l                                        ; $599b: $55
	add  b                                           ; $599c: $80
	xor  d                                           ; $599d: $aa
	add  b                                           ; $599e: $80
	ld   d, l                                        ; $599f: $55
	add  b                                           ; $59a0: $80
	xor  d                                           ; $59a1: $aa
	ld   bc, $4a55                                   ; $59a2: $01 $55 $4a
	add  b                                           ; $59a5: $80
	xor  h                                           ; $59a6: $ac
	add  b                                           ; $59a7: $80
	ld   c, e                                        ; $59a8: $4b
	add  b                                           ; $59a9: $80
	xor  e                                           ; $59aa: $ab
	add  b                                           ; $59ab: $80
	ld   c, e                                        ; $59ac: $4b
	add  b                                           ; $59ad: $80
	xor  e                                           ; $59ae: $ab
	add  b                                           ; $59af: $80
	ld   c, e                                        ; $59b0: $4b
	add  b                                           ; $59b1: $80
	xor  e                                           ; $59b2: $ab
	ld   b, $4b                                      ; $59b3: $06 $4b
	xor  e                                           ; $59b5: $ab
	nop                                              ; $59b6: $00
	push de                                          ; $59b7: $d5
	ld   a, [hl+]                                    ; $59b8: $2a
	ld   d, a                                        ; $59b9: $57
	ld   d, [hl]                                     ; $59ba: $56
	add  b                                           ; $59bb: $80
	cp   [hl]                                        ; $59bc: $be
	add  b                                           ; $59bd: $80
	ld   a, h                                        ; $59be: $7c
	add  hl, bc                                      ; $59bf: $09
	rst  $38                                         ; $59c0: $ff
	ld   [bc], a                                     ; $59c1: $02
	inc  bc                                          ; $59c2: $03
	ld   a, e                                        ; $59c3: $7b
	ld   a, d                                        ; $59c4: $7a
	ld   [bc], a                                     ; $59c5: $02
	ld   b, e                                        ; $59c6: $43
	nop                                              ; $59c7: $00
	ld   d, h                                        ; $59c8: $54
	xor  e                                           ; $59c9: $ab
	add  b                                           ; $59ca: $80
	rra                                              ; $59cb: $1f
	add  b                                           ; $59cc: $80
	xor  d                                           ; $59cd: $aa
	add  b                                           ; $59ce: $80
	rla                                              ; $59cf: $17
	dec  bc                                          ; $59d0: $0b
	xor  a                                           ; $59d1: $af
	and  b                                           ; $59d2: $a0
	db   $10                                         ; $59d3: $10
	rla                                              ; $59d4: $17
	and  a                                           ; $59d5: $a7
	and  b                                           ; $59d6: $a0
	or   h                                           ; $59d7: $b4
	nop                                              ; $59d8: $00
	dec  b                                           ; $59d9: $05
	ld   a, [$6171]                                  ; $59da: $fa $71 $61
	add  b                                           ; $59dd: $80
	ld   [$4180], a                                  ; $59de: $ea $80 $41
	dec  bc                                          ; $59e1: $0b
	ld   a, [$312a]                                  ; $59e2: $fa $2a $31
	or   c                                           ; $59e5: $b1
	cp   d                                           ; $59e6: $ba
	ld   a, [hl-]                                    ; $59e7: $3a
	dec  sp                                          ; $59e8: $3b
	nop                                              ; $59e9: $00
	ld   b, l                                        ; $59ea: $45
	cp   d                                           ; $59eb: $ba
	ld   [hl], l                                     ; $59ec: $75
	ld   [hl], h                                     ; $59ed: $74
	add  b                                           ; $59ee: $80
	ld   [$d480], a                                  ; $59ef: $ea $80 $d4
	add  hl, bc                                      ; $59f2: $09
	rst  $38                                         ; $59f3: $ff
	ld   [bc], a                                     ; $59f4: $02
	ld   bc, $7a79                                   ; $59f5: $01 $79 $7a
	ld   [bc], a                                     ; $59f8: $02
	ld   b, e                                        ; $59f9: $43
	nop                                              ; $59fa: $00
	ld   [hl], l                                     ; $59fb: $75
	adc  d                                           ; $59fc: $8a
	add  b                                           ; $59fd: $80
	dec  d                                           ; $59fe: $15
	add  b                                           ; $59ff: $80
	xor  d                                           ; $5a00: $aa
	add  b                                           ; $5a01: $80
	dec  d                                           ; $5a02: $15
	dec  bc                                          ; $5a03: $0b
	xor  a                                           ; $5a04: $af
	and  b                                           ; $5a05: $a0
	db   $10                                         ; $5a06: $10
	rla                                              ; $5a07: $17
	and  a                                           ; $5a08: $a7
	and  b                                           ; $5a09: $a0
	or   h                                           ; $5a0a: $b4
	nop                                              ; $5a0b: $00
	ld   d, l                                        ; $5a0c: $55
	xor  d                                           ; $5a0d: $aa
	ld   d, c                                        ; $5a0e: $51
	ld   b, c                                        ; $5a0f: $41
	add  b                                           ; $5a10: $80
	xor  d                                           ; $5a11: $aa
	add  b                                           ; $5a12: $80
	ld   b, c                                        ; $5a13: $41
	dec  bc                                          ; $5a14: $0b
	ld   a, [$102a]                                  ; $5a15: $fa $2a $10
	sub  b                                           ; $5a18: $90
	and  b                                           ; $5a19: $a0
	jr   nz, jr_078_5a57                             ; $5a1a: $20 $3b

	nop                                              ; $5a1c: $00
	ld   d, l                                        ; $5a1d: $55
	xor  d                                           ; $5a1e: $aa
	ld   d, c                                        ; $5a1f: $51
	ld   d, b                                        ; $5a20: $50
	add  b                                           ; $5a21: $80
	and  b                                           ; $5a22: $a0
	add  b                                           ; $5a23: $80
	ld   b, b                                        ; $5a24: $40
	nop                                              ; $5a25: $00
	db   $fd                                         ; $5a26: $fd
	add  b                                           ; $5a27: $80
	nop                                              ; $5a28: $00
	add  b                                           ; $5a29: $80
	ld   a, b                                        ; $5a2a: $78
	inc  b                                           ; $5a2b: $04
	nop                                              ; $5a2c: $00
	ld   b, e                                        ; $5a2d: $43
	nop                                              ; $5a2e: $00
	rst  $38                                         ; $5a2f: $ff
	nop                                              ; $5a30: $00
	add  b                                           ; $5a31: $80
	ld   bc, $0280                                   ; $5a32: $01 $80 $02
	add  b                                           ; $5a35: $80
	dec  b                                           ; $5a36: $05
	dec  bc                                          ; $5a37: $0b
	rrca                                             ; $5a38: $0f
	nop                                              ; $5a39: $00
	db   $10                                         ; $5a3a: $10
	rla                                              ; $5a3b: $17
	rlca                                             ; $5a3c: $07
	nop                                              ; $5a3d: $00
	or   h                                           ; $5a3e: $b4
	nop                                              ; $5a3f: $00
	ld   d, l                                        ; $5a40: $55
	xor  d                                           ; $5a41: $aa
	ld   d, c                                        ; $5a42: $51
	ld   b, c                                        ; $5a43: $41
	add  b                                           ; $5a44: $80
	xor  d                                           ; $5a45: $aa
	add  b                                           ; $5a46: $80
	ld   b, c                                        ; $5a47: $41
	dec  bc                                          ; $5a48: $0b
	ld   a, [$112a]                                  ; $5a49: $fa $2a $11
	sub  c                                           ; $5a4c: $91
	xor  d                                           ; $5a4d: $aa
	ld   a, [hl+]                                    ; $5a4e: $2a
	dec  sp                                          ; $5a4f: $3b
	nop                                              ; $5a50: $00
	ld   d, h                                        ; $5a51: $54
	xor  e                                           ; $5a52: $ab
	ld   d, l                                        ; $5a53: $55
	ld   d, h                                        ; $5a54: $54
	add  b                                           ; $5a55: $80
	xor  d                                           ; $5a56: $aa

jr_078_5a57:
	ld   [$5554], sp                                 ; $5a57: $08 $54 $55
	ld   [$1702], a                                  ; $5a5a: $ea $02 $17
	ld   a, e                                        ; $5a5d: $7b
	ld   a, d                                        ; $5a5e: $7a
	ld   [bc], a                                     ; $5a5f: $02
	db   $fc                                         ; $5a60: $fc
	add  b                                           ; $5a61: $80
	nop                                              ; $5a62: $00
	add  b                                           ; $5a63: $80
	ld   bc, $008a                                   ; $5a64: $01 $8a $00
	add  b                                           ; $5a67: $80
	xor  d                                           ; $5a68: $aa
	add  b                                           ; $5a69: $80
	ld   d, l                                        ; $5a6a: $55
	add  b                                           ; $5a6b: $80
	ld   a, [hl+]                                    ; $5a6c: $2a
	add  b                                           ; $5a6d: $80
	ld   d, l                                        ; $5a6e: $55

jr_078_5a6f:
	add  b                                           ; $5a6f: $80
	ld   a, [bc]                                     ; $5a70: $0a
	add  b                                           ; $5a71: $80
	ld   d, l                                        ; $5a72: $55
	add  b                                           ; $5a73: $80
	ld   [bc], a                                     ; $5a74: $02

jr_078_5a75:
	inc  bc                                          ; $5a75: $03
	dec  d                                           ; $5a76: $15
	ld   d, $fc                                      ; $5a77: $16 $fc
	rst  $38                                         ; $5a79: $ff
	add  b                                           ; $5a7a: $80
	ld   a, a                                        ; $5a7b: $7f
	add  b                                           ; $5a7c: $80
	rst  $38                                         ; $5a7d: $ff
	add  b                                           ; $5a7e: $80
	ld   a, a                                        ; $5a7f: $7f
	add  b                                           ; $5a80: $80
	cp   a                                           ; $5a81: $bf
	add  b                                           ; $5a82: $80
	ld   e, a                                        ; $5a83: $5f
	add  b                                           ; $5a84: $80
	xor  a                                           ; $5a85: $af
	ld   bc, $a05f                                   ; $5a86: $01 $5f $a0
	add  b                                           ; $5a89: $80
	cp   a                                           ; $5a8a: $bf
	nop                                              ; $5a8b: $00
	nop                                              ; $5a8c: $00
	adc  d                                           ; $5a8d: $8a
	cp   a                                           ; $5a8e: $bf
	nop                                              ; $5a8f: $00
	rst  $38                                         ; $5a90: $ff
	add  b                                           ; $5a91: $80
	xor  d                                           ; $5a92: $aa
	add  b                                           ; $5a93: $80
	ld   d, l                                        ; $5a94: $55
	add  b                                           ; $5a95: $80
	and  b                                           ; $5a96: $a0
	add  a                                           ; $5a97: $87
	nop                                              ; $5a98: $00
	nop                                              ; $5a99: $00
	rra                                              ; $5a9a: $1f
	add  b                                           ; $5a9b: $80
	xor  e                                           ; $5a9c: $ab
	add  b                                           ; $5a9d: $80
	ld   c, e                                        ; $5a9e: $4b
	adc  c                                           ; $5a9f: $89
	dec  bc                                          ; $5aa0: $0b
	ld   bc, $5f4b                                   ; $5aa1: $01 $4b $5f
	add  b                                           ; $5aa4: $80
	rst  $28                                         ; $5aa5: $ef
	add  b                                           ; $5aa6: $80
	ld   e, a                                        ; $5aa7: $5f
	add  b                                           ; $5aa8: $80
	cp   d                                           ; $5aa9: $ba
	add  b                                           ; $5aaa: $80
	ld   [hl], a                                     ; $5aab: $77
	add  b                                           ; $5aac: $80
	xor  e                                           ; $5aad: $ab
	add  b                                           ; $5aae: $80
	ld   e, a                                        ; $5aaf: $5f
	add  b                                           ; $5ab0: $80
	xor  d                                           ; $5ab1: $aa
	ld   bc, $b7f7                                   ; $5ab2: $01 $f7 $b7
	add  b                                           ; $5ab5: $80
	cp   a                                           ; $5ab6: $bf
	add  b                                           ; $5ab7: $80
	sbc  a                                           ; $5ab8: $9f
	add  b                                           ; $5ab9: $80
	cp   a                                           ; $5aba: $bf
	add  b                                           ; $5abb: $80
	rla                                              ; $5abc: $17
	add  b                                           ; $5abd: $80
	xor  a                                           ; $5abe: $af
	add  b                                           ; $5abf: $80
	dec  d                                           ; $5ac0: $15
	add  b                                           ; $5ac1: $80
	xor  d                                           ; $5ac2: $aa
	ld   bc, $f1b5                                   ; $5ac3: $01 $b5 $f1
	add  b                                           ; $5ac6: $80
	ld   [$d180], a                                  ; $5ac7: $ea $80 $d1
	add  b                                           ; $5aca: $80
	ld   a, [$5180]                                  ; $5acb: $fa $80 $51
	add  b                                           ; $5ace: $80
	xor  d                                           ; $5acf: $aa
	add  b                                           ; $5ad0: $80
	ld   d, c                                        ; $5ad1: $51
	add  b                                           ; $5ad2: $80
	xor  d                                           ; $5ad3: $aa
	ld   bc, $5551                                   ; $5ad4: $01 $51 $55
	add  b                                           ; $5ad7: $80
	xor  d                                           ; $5ad8: $aa
	add  b                                           ; $5ad9: $80
	ld   d, l                                        ; $5ada: $55
	add  b                                           ; $5adb: $80
	xor  d                                           ; $5adc: $aa
	add  b                                           ; $5add: $80
	ld   d, b                                        ; $5ade: $50
	add  b                                           ; $5adf: $80
	adc  b                                           ; $5ae0: $88
	add  b                                           ; $5ae1: $80
	nop                                              ; $5ae2: $00
	add  b                                           ; $5ae3: $80
	add  b                                           ; $5ae4: $80
	ld   bc, $1555                                   ; $5ae5: $01 $55 $15
	add  b                                           ; $5ae8: $80
	xor  b                                           ; $5ae9: $a8
	add  b                                           ; $5aea: $80
	dec  d                                           ; $5aeb: $15
	add  b                                           ; $5aec: $80
	jr   z, jr_078_5a6f                              ; $5aed: $28 $80

	nop                                              ; $5aef: $00
	add  b                                           ; $5af0: $80
	jr   nz, jr_078_5a75                             ; $5af1: $20 $82

	nop                                              ; $5af3: $00
	ld   bc, $5014                                   ; $5af4: $01 $14 $50
	add  b                                           ; $5af7: $80
	add  b                                           ; $5af8: $80
	adc  d                                           ; $5af9: $8a
	nop                                              ; $5afa: $00
	nop                                              ; $5afb: $00
	inc  b                                           ; $5afc: $04
	adc  l                                           ; $5afd: $8d
	nop                                              ; $5afe: $00
	ld   bc, $0040                                   ; $5aff: $01 $40 $00
	add  b                                           ; $5b02: $80
	ld   [bc], a                                     ; $5b03: $02
	add  b                                           ; $5b04: $80
	nop                                              ; $5b05: $00
	add  b                                           ; $5b06: $80
	ld   [bc], a                                     ; $5b07: $02
	add  b                                           ; $5b08: $80
	inc  b                                           ; $5b09: $04
	add  h                                           ; $5b0a: $84
	nop                                              ; $5b0b: $00
	ld   bc, $0145                                   ; $5b0c: $01 $45 $01
	add  b                                           ; $5b0f: $80
	xor  b                                           ; $5b10: $a8
	add  b                                           ; $5b11: $80
	nop                                              ; $5b12: $00
	add  b                                           ; $5b13: $80
	add  b                                           ; $5b14: $80
	add  [hl]                                        ; $5b15: $86
	nop                                              ; $5b16: $00
	ld   bc, $1511                                   ; $5b17: $01 $11 $15
	add  b                                           ; $5b1a: $80
	ld   a, [bc]                                     ; $5b1b: $0a
	add  b                                           ; $5b1c: $80
	dec  b                                           ; $5b1d: $05
	add  b                                           ; $5b1e: $80
	ld   a, [bc]                                     ; $5b1f: $0a
	add  b                                           ; $5b20: $80
	dec  b                                           ; $5b21: $05
	add  b                                           ; $5b22: $80
	ld   [hl+], a                                    ; $5b23: $22
	add  b                                           ; $5b24: $80
	dec  b                                           ; $5b25: $05
	add  b                                           ; $5b26: $80
	ld   a, [bc]                                     ; $5b27: $0a
	nop                                              ; $5b28: $00
	rlca                                             ; $5b29: $07
	add  e                                           ; $5b2a: $83
	ld   hl, sp+$02                                  ; $5b2b: $f8 $02
	jr   c, jr_078_5ba7                              ; $5b2d: $38 $78

	ld   hl, sp-$7b                                  ; $5b2f: $f8 $85
	cp   b                                           ; $5b31: $b8
	inc  bc                                          ; $5b32: $03
	cp   a                                           ; $5b33: $bf
	and  b                                           ; $5b34: $a0
	or   b                                           ; $5b35: $b0
	xor  a                                           ; $5b36: $af
	add  b                                           ; $5b37: $80
	sbc  a                                           ; $5b38: $9f
	add  b                                           ; $5b39: $80
	xor  a                                           ; $5b3a: $af
	add  b                                           ; $5b3b: $80
	sbc  a                                           ; $5b3c: $9f
	add  b                                           ; $5b3d: $80
	xor  a                                           ; $5b3e: $af
	add  b                                           ; $5b3f: $80
	sbc  a                                           ; $5b40: $9f
	add  b                                           ; $5b41: $80
	xor  a                                           ; $5b42: $af
	nop                                              ; $5b43: $00
	rst  $38                                         ; $5b44: $ff
	add  b                                           ; $5b45: $80
	xor  a                                           ; $5b46: $af
	ld   b, $57                                      ; $5b47: $06 $57
	rst  $10                                         ; $5b49: $d7
	dec  hl                                          ; $5b4a: $2b
	ld   e, e                                        ; $5b4b: $5b
	rlca                                             ; $5b4c: $07
	adc  e                                           ; $5b4d: $8b
	add  e                                           ; $5b4e: $83
	add  b                                           ; $5b4f: $80
	ldh  [$80], a                                    ; $5b50: $e0 $80
	ld   hl, sp-$80                                  ; $5b52: $f8 $80
	sbc  b                                           ; $5b54: $98
	adc  [hl]                                        ; $5b55: $8e
	cp   a                                           ; $5b56: $bf
	nop                                              ; $5b57: $00
	rst  $38                                         ; $5b58: $ff
	add  b                                           ; $5b59: $80
	nop                                              ; $5b5a: $00
	adc  e                                           ; $5b5b: $8b
	rst  $38                                         ; $5b5c: $ff
	nop                                              ; $5b5d: $00
	ldh  [$80], a                                    ; $5b5e: $e0 $80
	dec  bc                                          ; $5b60: $0b
	add  [hl]                                        ; $5b61: $86
	ld   [$eb83], a                                  ; $5b62: $ea $83 $eb
	ld   bc, $7581                                   ; $5b65: $01 $81 $75
	add  b                                           ; $5b68: $80
	db   $eb                                         ; $5b69: $eb
	add  b                                           ; $5b6a: $80
	ld   e, l                                        ; $5b6b: $5d
	add  b                                           ; $5b6c: $80
	xor  d                                           ; $5b6d: $aa
	add  b                                           ; $5b6e: $80
	ld   d, l                                        ; $5b6f: $55
	add  b                                           ; $5b70: $80
	ld   a, [$4580]                                  ; $5b71: $fa $80 $45
	add  b                                           ; $5b74: $80
	xor  d                                           ; $5b75: $aa
	inc  bc                                          ; $5b76: $03
	ld   d, l                                        ; $5b77: $55
	dec  d                                           ; $5b78: $15
	cp   d                                           ; $5b79: $ba
	xor  d                                           ; $5b7a: $aa
	add  b                                           ; $5b7b: $80
	dec  b                                           ; $5b7c: $05
	add  b                                           ; $5b7d: $80
	adc  d                                           ; $5b7e: $8a
	add  b                                           ; $5b7f: $80
	inc  b                                           ; $5b80: $04
	ld   bc, $8898                                   ; $5b81: $01 $98 $88
	add  b                                           ; $5b84: $80
	inc  d                                           ; $5b85: $14
	add  b                                           ; $5b86: $80
	nop                                              ; $5b87: $00
	inc  bc                                          ; $5b88: $03
	inc  d                                           ; $5b89: $14
	ld   d, b                                        ; $5b8a: $50
	add  c                                           ; $5b8b: $81
	add  b                                           ; $5b8c: $80
	add  b                                           ; $5b8d: $80
	ld   b, b                                        ; $5b8e: $40
	add  b                                           ; $5b8f: $80
	add  b                                           ; $5b90: $80
	add  b                                           ; $5b91: $80
	nop                                              ; $5b92: $00
	nop                                              ; $5b93: $00
	ld   bc, $0083                                   ; $5b94: $01 $83 $00
	nop                                              ; $5b97: $00
	inc  b                                           ; $5b98: $04
	adc  l                                           ; $5b99: $8d
	nop                                              ; $5b9a: $00
	ld   [bc], a                                     ; $5b9b: $02
	ld   b, b                                        ; $5b9c: $40
	nop                                              ; $5b9d: $00
	db   $10                                         ; $5b9e: $10
	add  l                                           ; $5b9f: $85
	nop                                              ; $5ba0: $00
	nop                                              ; $5ba1: $00
	db   $10                                         ; $5ba2: $10
	add  e                                           ; $5ba3: $83
	nop                                              ; $5ba4: $00
	ld   [bc], a                                     ; $5ba5: $02
	ld   b, h                                        ; $5ba6: $44

jr_078_5ba7:
	nop                                              ; $5ba7: $00
	ld   bc, $0085                                   ; $5ba8: $01 $85 $00
	nop                                              ; $5bab: $00
	ld   bc, $0083                                   ; $5bac: $01 $83 $00
	nop                                              ; $5baf: $00
	inc  b                                           ; $5bb0: $04
	adc  l                                           ; $5bb1: $8d
	nop                                              ; $5bb2: $00
	ld   [bc], a                                     ; $5bb3: $02
	ld   b, b                                        ; $5bb4: $40
	nop                                              ; $5bb5: $00
	db   $10                                         ; $5bb6: $10
	add  l                                           ; $5bb7: $85
	nop                                              ; $5bb8: $00
	nop                                              ; $5bb9: $00
	db   $10                                         ; $5bba: $10
	add  e                                           ; $5bbb: $83
	nop                                              ; $5bbc: $00
	ld   [bc], a                                     ; $5bbd: $02
	ld   b, h                                        ; $5bbe: $44
	nop                                              ; $5bbf: $00
	ld   bc, $0085                                   ; $5bc0: $01 $85 $00
	nop                                              ; $5bc3: $00
	ld   bc, $0083                                   ; $5bc4: $01 $83 $00
	ld   bc, $0501                                   ; $5bc7: $01 $01 $05
	add  b                                           ; $5bca: $80
	ld   a, [bc]                                     ; $5bcb: $0a
	add  b                                           ; $5bcc: $80
	dec  b                                           ; $5bcd: $05
	add  b                                           ; $5bce: $80
	ld   a, [hl+]                                    ; $5bcf: $2a
	add  b                                           ; $5bd0: $80
	ld   b, l                                        ; $5bd1: $45
	add  b                                           ; $5bd2: $80
	ld   a, [hl+]                                    ; $5bd3: $2a
	add  b                                           ; $5bd4: $80
	inc  d                                           ; $5bd5: $14
	add  b                                           ; $5bd6: $80
	xor  b                                           ; $5bd7: $a8
	inc  b                                           ; $5bd8: $04
	ld   b, a                                        ; $5bd9: $47
	cp   b                                           ; $5bda: $b8
	jr   c, jr_078_5c55                              ; $5bdb: $38 $78

	cp   b                                           ; $5bdd: $b8
	add  a                                           ; $5bde: $87
	ld   hl, sp+$03                                  ; $5bdf: $f8 $03
	ld   [hl], b                                     ; $5be1: $70
	ld   hl, sp+$17                                  ; $5be2: $f8 $17
	sbc  a                                           ; $5be4: $9f
	add  b                                           ; $5be5: $80
	xor  a                                           ; $5be6: $af
	add  b                                           ; $5be7: $80
	sub  a                                           ; $5be8: $97
	add  b                                           ; $5be9: $80
	xor  a                                           ; $5bea: $af
	add  b                                           ; $5beb: $80
	sub  a                                           ; $5bec: $97
	add  b                                           ; $5bed: $80
	xor  e                                           ; $5bee: $ab
	add  b                                           ; $5bef: $80
	sub  l                                           ; $5bf0: $95
	add  b                                           ; $5bf1: $80
	xor  d                                           ; $5bf2: $aa
	adc  h                                           ; $5bf3: $8c
	adc  b                                           ; $5bf4: $88
	add  b                                           ; $5bf5: $80
	ld   hl, sp+$00                                  ; $5bf6: $f8 $00
	cp   a                                           ; $5bf8: $bf
	add  b                                           ; $5bf9: $80
	cp   [hl]                                        ; $5bfa: $be
	add  b                                           ; $5bfb: $80
	cp   l                                           ; $5bfc: $bd
	add  b                                           ; $5bfd: $80
	cp   d                                           ; $5bfe: $ba
	add  b                                           ; $5bff: $80
	or   l                                           ; $5c00: $b5
	add  b                                           ; $5c01: $80
	cp   d                                           ; $5c02: $ba
	add  b                                           ; $5c03: $80
	or   l                                           ; $5c04: $b5
	add  b                                           ; $5c05: $80
	xor  d                                           ; $5c06: $aa
	dec  b                                           ; $5c07: $05
	sub  l                                           ; $5c08: $95
	sub  $fd                                         ; $5c09: $d6 $fd
	pop  af                                          ; $5c0b: $f1
	ld   a, [$82ea]                                  ; $5c0c: $fa $ea $82
	rst  $28                                         ; $5c0f: $ef
	add  b                                           ; $5c10: $80
	ldh  [$83], a                                    ; $5c11: $e0 $83
	rst  $28                                         ; $5c13: $ef
	inc  b                                           ; $5c14: $04
	ld   b, h                                        ; $5c15: $44
	nop                                              ; $5c16: $00
	ret  nz                                          ; $5c17: $c0

	nop                                              ; $5c18: $00
	ld   b, b                                        ; $5c19: $40
	add  c                                           ; $5c1a: $81
	nop                                              ; $5c1b: $00
	ld   [bc], a                                     ; $5c1c: $02
	ret  nz                                          ; $5c1d: $c0

	nop                                              ; $5c1e: $00
	ret  nz                                          ; $5c1f: $c0

	add  e                                           ; $5c20: $83
	nop                                              ; $5c21: $00
	ld   bc, $1024                                   ; $5c22: $01 $24 $10
	add  b                                           ; $5c25: $80
	xor  b                                           ; $5c26: $a8
	add  b                                           ; $5c27: $80
	ld   d, b                                        ; $5c28: $50
	add  b                                           ; $5c29: $80
	add  b                                           ; $5c2a: $80
	add  b                                           ; $5c2b: $80
	ld   b, b                                        ; $5c2c: $40
	add  b                                           ; $5c2d: $80
	add  b                                           ; $5c2e: $80
	add  d                                           ; $5c2f: $82
	nop                                              ; $5c30: $00
	ld   bc, $1050                                   ; $5c31: $01 $50 $10
	adc  d                                           ; $5c34: $8a
	nop                                              ; $5c35: $00
	ld   [bc], a                                     ; $5c36: $02
	dec  b                                           ; $5c37: $05
	nop                                              ; $5c38: $00
	ld   b, c                                        ; $5c39: $41
	add  a                                           ; $5c3a: $87
	nop                                              ; $5c3b: $00
	ld   b, $51                                      ; $5c3c: $06 $51
	nop                                              ; $5c3e: $00
	ld   sp, hl                                      ; $5c3f: $f9
	nop                                              ; $5c40: $00
	jp   hl                                          ; $5c41: $e9


	nop                                              ; $5c42: $00
	ld   b, l                                        ; $5c43: $45
	add  e                                           ; $5c44: $83
	nop                                              ; $5c45: $00
	ld   a, [bc]                                     ; $5c46: $0a
	dec  d                                           ; $5c47: $15
	nop                                              ; $5c48: $00
	cp   a                                           ; $5c49: $bf
	nop                                              ; $5c4a: $00
	rst  $38                                         ; $5c4b: $ff
	nop                                              ; $5c4c: $00
	rst  $38                                         ; $5c4d: $ff
	nop                                              ; $5c4e: $00
	cp   $00                                         ; $5c4f: $fe $00
	inc  d                                           ; $5c51: $14
	add  c                                           ; $5c52: $81
	nop                                              ; $5c53: $00
	inc  l                                           ; $5c54: $2c

jr_078_5c55:
	ld   [bc], a                                     ; $5c55: $02
	nop                                              ; $5c56: $00
	rlca                                             ; $5c57: $07
	nop                                              ; $5c58: $00
	rrca                                             ; $5c59: $0f
	nop                                              ; $5c5a: $00
	rra                                              ; $5c5b: $1f
	nop                                              ; $5c5c: $00
	sbc  a                                           ; $5c5d: $9f
	nop                                              ; $5c5e: $00
	sbc  a                                           ; $5c5f: $9f
	nop                                              ; $5c60: $00
	ld   d, c                                        ; $5c61: $51
	nop                                              ; $5c62: $00
	ld   d, b                                        ; $5c63: $50
	nop                                              ; $5c64: $00
	ldh  a, [rP1]                                    ; $5c65: $f0 $00
	pop  af                                          ; $5c67: $f1
	nop                                              ; $5c68: $00
	pop  af                                          ; $5c69: $f1
	nop                                              ; $5c6a: $00
	pop  af                                          ; $5c6b: $f1
	nop                                              ; $5c6c: $00
	ld   sp, hl                                      ; $5c6d: $f9
	nop                                              ; $5c6e: $00
	jp   hl                                          ; $5c6f: $e9


	nop                                              ; $5c70: $00
	ld   b, l                                        ; $5c71: $45
	nop                                              ; $5c72: $00
	ld   b, h                                        ; $5c73: $44
	nop                                              ; $5c74: $00
	db   $ec                                         ; $5c75: $ec
	nop                                              ; $5c76: $00
	ld   hl, sp+$00                                  ; $5c77: $f8 $00
	ld   a, [$fe00]                                  ; $5c79: $fa $00 $fe
	nop                                              ; $5c7c: $00
	cp   $00                                         ; $5c7d: $fe $00
	cp   $00                                         ; $5c7f: $fe $00
	inc  d                                           ; $5c81: $14
	add  l                                           ; $5c82: $85
	nop                                              ; $5c83: $00
	add  hl, bc                                      ; $5c84: $09
	inc  b                                           ; $5c85: $04
	nop                                              ; $5c86: $00
	inc  d                                           ; $5c87: $14
	nop                                              ; $5c88: $00
	ld   a, [de]                                     ; $5c89: $1a
	nop                                              ; $5c8a: $00
	ld   e, $00                                      ; $5c8b: $1e $00
	ld   d, c                                        ; $5c8d: $51
	ld   bc, $0280                                   ; $5c8e: $01 $80 $02
	add  b                                           ; $5c91: $80
	ld   bc, $0a80                                   ; $5c92: $01 $80 $0a
	add  b                                           ; $5c95: $80
	ld   de, $0280                                   ; $5c96: $11 $80 $02
	add  b                                           ; $5c99: $80
	ld   d, b                                        ; $5c9a: $50
	add  b                                           ; $5c9b: $80
	nop                                              ; $5c9c: $00
	ld   bc, $4044                                   ; $5c9d: $01 $44 $40
	add  b                                           ; $5ca0: $80
	jr   nz, @-$7e                                   ; $5ca1: $20 $80

	db   $10                                         ; $5ca3: $10
	add  b                                           ; $5ca4: $80
	and  b                                           ; $5ca5: $a0
	add  d                                           ; $5ca6: $82
	nop                                              ; $5ca7: $00
	inc  c                                           ; $5ca8: $0c
	ld   [$1800], sp                                 ; $5ca9: $08 $00 $18
	nop                                              ; $5cac: $00
	ld   b, a                                        ; $5cad: $47
	ld   hl, sp+$00                                  ; $5cae: $f8 $00
	ld   hl, sp+$00                                  ; $5cb0: $f8 $00
	ld   hl, sp+$10                                  ; $5cb2: $f8 $10
	ld   hl, sp-$48                                  ; $5cb4: $f8 $b8
	add  b                                           ; $5cb6: $80
	ldh  [$80], a                                    ; $5cb7: $e0 $80
	sbc  b                                           ; $5cb9: $98
	add  b                                           ; $5cba: $80
	ld   h, a                                        ; $5cbb: $67
	ld   [bc], a                                     ; $5cbc: $02
	sbc  a                                           ; $5cbd: $9f
	ld   a, [bc]                                     ; $5cbe: $0a
	sub  l                                           ; $5cbf: $95
	add  b                                           ; $5cc0: $80
	xor  d                                           ; $5cc1: $aa
	add  b                                           ; $5cc2: $80
	sub  l                                           ; $5cc3: $95
	add  b                                           ; $5cc4: $80
	add  b                                           ; $5cc5: $80
	nop                                              ; $5cc6: $00
	nop                                              ; $5cc7: $00
	add  b                                           ; $5cc8: $80
	ld   d, l                                        ; $5cc9: $55
	add  b                                           ; $5cca: $80
	xor  d                                           ; $5ccb: $aa
	add  c                                           ; $5ccc: $81
	rst  $38                                         ; $5ccd: $ff
	nop                                              ; $5cce: $00
	rlca                                             ; $5ccf: $07
	adc  l                                           ; $5cd0: $8d
	ld   hl, sp+$00                                  ; $5cd1: $f8 $00
	cp   a                                           ; $5cd3: $bf
	add  b                                           ; $5cd4: $80
	xor  d                                           ; $5cd5: $aa
	add  b                                           ; $5cd6: $80
	sub  l                                           ; $5cd7: $95
	add  b                                           ; $5cd8: $80
	xor  d                                           ; $5cd9: $aa
	add  b                                           ; $5cda: $80
	sub  l                                           ; $5cdb: $95
	add  b                                           ; $5cdc: $80
	xor  b                                           ; $5cdd: $a8
	add  b                                           ; $5cde: $80
	sub  b                                           ; $5cdf: $90
	add  b                                           ; $5ce0: $80
	and  b                                           ; $5ce1: $a0
	ld   [bc], a                                     ; $5ce2: $02
	add  b                                           ; $5ce3: $80
	ld   a, a                                        ; $5ce4: $7f
	ld   c, a                                        ; $5ce5: $4f
	add  b                                           ; $5ce6: $80
	xor  a                                           ; $5ce7: $af
	ld   [bc], a                                     ; $5ce8: $02
	ld   c, a                                        ; $5ce9: $4f
	ld   b, l                                        ; $5cea: $45
	dec  b                                           ; $5ceb: $05
	add  b                                           ; $5cec: $80
	ld   a, [bc]                                     ; $5ced: $0a
	add  b                                           ; $5cee: $80
	ld   b, l                                        ; $5cef: $45
	add  b                                           ; $5cf0: $80
	xor  d                                           ; $5cf1: $aa
	add  b                                           ; $5cf2: $80
	ret  nz                                          ; $5cf3: $c0

	ld   bc, $2be0                                   ; $5cf4: $01 $e0 $2b
	add  c                                           ; $5cf7: $81
	nop                                              ; $5cf8: $00
	ld   [$0080], sp                                 ; $5cf9: $08 $80 $00
	pop  bc                                          ; $5cfc: $c1
	nop                                              ; $5cfd: $00
	jp   nz, $8700                                   ; $5cfe: $c2 $00 $87

	nop                                              ; $5d01: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5d02: $cf
	add  c                                           ; $5d03: $81
	nop                                              ; $5d04: $00
	nop                                              ; $5d05: $00
	cp   $83                                         ; $5d06: $fe $83
	nop                                              ; $5d08: $00
	ld   h, [hl]                                     ; $5d09: $66
	ld   d, l                                        ; $5d0a: $55
	nop                                              ; $5d0b: $00
	xor  e                                           ; $5d0c: $ab
	nop                                              ; $5d0d: $00
	rst  $38                                         ; $5d0e: $ff
	nop                                              ; $5d0f: $00
	rst  $38                                         ; $5d10: $ff
	nop                                              ; $5d11: $00
	ld   a, a                                        ; $5d12: $7f
	nop                                              ; $5d13: $00
	jp   z, $1f00                                    ; $5d14: $ca $00 $1f

	nop                                              ; $5d17: $00
	ccf                                              ; $5d18: $3f
	nop                                              ; $5d19: $00
	ccf                                              ; $5d1a: $3f
	nop                                              ; $5d1b: $00
	ld   a, [hl-]                                    ; $5d1c: $3a
	nop                                              ; $5d1d: $00
	cpl                                              ; $5d1e: $2f
	nop                                              ; $5d1f: $00
	cp   a                                           ; $5d20: $bf
	nop                                              ; $5d21: $00
	rst  $38                                         ; $5d22: $ff
	nop                                              ; $5d23: $00
	sub  h                                           ; $5d24: $94
	nop                                              ; $5d25: $00
	pop  bc                                          ; $5d26: $c1
	nop                                              ; $5d27: $00
	add  c                                           ; $5d28: $81
	nop                                              ; $5d29: $00
	ld   de, $3200                                   ; $5d2a: $11 $00 $32
	nop                                              ; $5d2d: $00
	di                                               ; $5d2e: $f3
	nop                                              ; $5d2f: $00
	ei                                               ; $5d30: $fb
	nop                                              ; $5d31: $00
	add  b                                           ; $5d32: $80
	nop                                              ; $5d33: $00
	sub  $00                                         ; $5d34: $d6 $00
	db   $fc                                         ; $5d36: $fc
	nop                                              ; $5d37: $00
	ld   hl, sp+$00                                  ; $5d38: $f8 $00
	pop  af                                          ; $5d3a: $f1
	nop                                              ; $5d3b: $00
	db   $e3                                         ; $5d3c: $e3
	nop                                              ; $5d3d: $00
	cp   a                                           ; $5d3e: $bf
	nop                                              ; $5d3f: $00
	rst  $38                                         ; $5d40: $ff
	nop                                              ; $5d41: $00
	ld   bc, $b400                                   ; $5d42: $01 $00 $b4
	nop                                              ; $5d45: $00
	rra                                              ; $5d46: $1f
	nop                                              ; $5d47: $00
	rra                                              ; $5d48: $1f
	nop                                              ; $5d49: $00
	rra                                              ; $5d4a: $1f
	nop                                              ; $5d4b: $00
	ld   a, [hl+]                                    ; $5d4c: $2a
	nop                                              ; $5d4d: $00
	ccf                                              ; $5d4e: $3f
	nop                                              ; $5d4f: $00
	cp   a                                           ; $5d50: $bf
	nop                                              ; $5d51: $00
	rst  $38                                         ; $5d52: $ff
	nop                                              ; $5d53: $00
	sub  h                                           ; $5d54: $94
	nop                                              ; $5d55: $00
	pop  bc                                          ; $5d56: $c1
	nop                                              ; $5d57: $00
	add  e                                           ; $5d58: $83
	nop                                              ; $5d59: $00
	inc  de                                          ; $5d5a: $13
	nop                                              ; $5d5b: $00
	ld   [hl+], a                                    ; $5d5c: $22
	nop                                              ; $5d5d: $00
	db   $e3                                         ; $5d5e: $e3
	nop                                              ; $5d5f: $00
	ei                                               ; $5d60: $fb
	nop                                              ; $5d61: $00
	db   $fc                                         ; $5d62: $fc
	nop                                              ; $5d63: $00
	xor  b                                           ; $5d64: $a8
	nop                                              ; $5d65: $00
	cp   $00                                         ; $5d66: $fe $00
	ld   hl, sp+$00                                  ; $5d68: $f8 $00
	pop  af                                          ; $5d6a: $f1
	nop                                              ; $5d6b: $00
	and  e                                           ; $5d6c: $a3
	nop                                              ; $5d6d: $00
	rst  $38                                         ; $5d6e: $ff
	nop                                              ; $5d6f: $00
	rst  $38                                         ; $5d70: $ff
	add  c                                           ; $5d71: $81
	nop                                              ; $5d72: $00
	ld   de, $00b5                                   ; $5d73: $11 $b5 $00
	ld   e, $00                                      ; $5d76: $1e $00
	ld   a, $00                                      ; $5d78: $3e $00
	ccf                                              ; $5d7a: $3f
	nop                                              ; $5d7b: $00
	ld   a, [hl+]                                    ; $5d7c: $2a
	nop                                              ; $5d7d: $00
	ccf                                              ; $5d7e: $3f
	nop                                              ; $5d7f: $00
	cp   a                                           ; $5d80: $bf
	nop                                              ; $5d81: $00
	rra                                              ; $5d82: $1f
	nop                                              ; $5d83: $00
	or   h                                           ; $5d84: $b4
	ld   b, b                                        ; $5d85: $40
	add  b                                           ; $5d86: $80
	nop                                              ; $5d87: $00
	dec  e                                           ; $5d88: $1d
	ret  nz                                          ; $5d89: $c0

	nop                                              ; $5d8a: $00
	ld   de, $3200                                   ; $5d8b: $11 $00 $32
	nop                                              ; $5d8e: $00
	di                                               ; $5d8f: $f3
	nop                                              ; $5d90: $00
	ei                                               ; $5d91: $fb
	nop                                              ; $5d92: $00
	db   $fc                                         ; $5d93: $fc
	nop                                              ; $5d94: $00
	xor  d                                           ; $5d95: $aa
	nop                                              ; $5d96: $00
	ld   hl, sp+$00                                  ; $5d97: $f8 $00
	ld   hl, sp+$00                                  ; $5d99: $f8 $00
	db   $fd                                         ; $5d9b: $fd
	nop                                              ; $5d9c: $00
	xor  e                                           ; $5d9d: $ab
	nop                                              ; $5d9e: $00
	rst  $38                                         ; $5d9f: $ff
	nop                                              ; $5da0: $00
	rst  $38                                         ; $5da1: $ff
	nop                                              ; $5da2: $00
	ld   bc, $f400                                   ; $5da3: $01 $00 $f4
	dec  b                                           ; $5da6: $05
	add  b                                           ; $5da7: $80
	ld   a, [bc]                                     ; $5da8: $0a
	add  b                                           ; $5da9: $80
	dec  b                                           ; $5daa: $05
	add  b                                           ; $5dab: $80
	ld   a, [bc]                                     ; $5dac: $0a
	add  b                                           ; $5dad: $80
	dec  b                                           ; $5dae: $05
	add  b                                           ; $5daf: $80
	ld   a, [bc]                                     ; $5db0: $0a
	add  b                                           ; $5db1: $80
	inc  b                                           ; $5db2: $04
	inc  bc                                          ; $5db3: $03
	nop                                              ; $5db4: $00
	ld   bc, $54a5                                   ; $5db5: $01 $a5 $54
	add  b                                           ; $5db8: $80
	xor  d                                           ; $5db9: $aa
	add  b                                           ; $5dba: $80
	ld   d, h                                        ; $5dbb: $54
	add  b                                           ; $5dbc: $80
	and  b                                           ; $5dbd: $a0
	ld   [$4f40], sp                                 ; $5dbe: $08 $40 $4f
	adc  [hl]                                        ; $5dc1: $8e
	cp   [hl]                                        ; $5dc2: $be
	ccf                                              ; $5dc3: $3f
	ld   a, a                                        ; $5dc4: $7f
	ld   a, [hl]                                     ; $5dc5: $7e
	cp   $ff                                         ; $5dc6: $fe $ff
	add  l                                           ; $5dc8: $85
	nop                                              ; $5dc9: $00
	ld   bc, $50af                                   ; $5dca: $01 $af $50
	add  b                                           ; $5dcd: $80
	xor  b                                           ; $5dce: $a8
	add  b                                           ; $5dcf: $80
	ld   d, b                                        ; $5dd0: $50
	add  b                                           ; $5dd1: $80
	xor  b                                           ; $5dd2: $a8
	nop                                              ; $5dd3: $00
	rst  $38                                         ; $5dd4: $ff
	add  h                                           ; $5dd5: $84
	nop                                              ; $5dd6: $00
	add  hl, bc                                      ; $5dd7: $09
	ld   bc, $54a9                                   ; $5dd8: $01 $a9 $54
	inc  l                                           ; $5ddb: $2c
	jr   z, jr_078_5e36                              ; $5ddc: $28 $58

	ld   b, b                                        ; $5dde: $40
	jr   nz, jr_078_5de1                             ; $5ddf: $20 $00

jr_078_5de1:
	ret  nz                                          ; $5de1: $c0

	add  b                                           ; $5de2: $80
	rra                                              ; $5de3: $1f
	add  b                                           ; $5de4: $80
	ccf                                              ; $5de5: $3f
	add  d                                           ; $5de6: $82
	rst  $38                                         ; $5de7: $ff
	add  [hl]                                        ; $5de8: $86
	nop                                              ; $5de9: $00
	add  d                                           ; $5dea: $82
	rst  $38                                         ; $5deb: $ff
	add  b                                           ; $5dec: $80
	cp   $80                                         ; $5ded: $fe $80
	db   $fc                                         ; $5def: $fc
	add  b                                           ; $5df0: $80
	inc  bc                                          ; $5df1: $03
	add  b                                           ; $5df2: $80
	rlca                                             ; $5df3: $07
	add  b                                           ; $5df4: $80
	rrca                                             ; $5df5: $0f
	add  b                                           ; $5df6: $80
	rra                                              ; $5df7: $1f
	add  b                                           ; $5df8: $80
	add  b                                           ; $5df9: $80
	add  h                                           ; $5dfa: $84
	nop                                              ; $5dfb: $00
	add  [hl]                                        ; $5dfc: $86
	rst  $38                                         ; $5dfd: $ff
	add  d                                           ; $5dfe: $82
	nop                                              ; $5dff: $00
	add  d                                           ; $5e00: $82
	ld   bc, $f884                                   ; $5e01: $01 $84 $f8
	inc  b                                           ; $5e04: $04
	ldh  a, [$f2]                                    ; $5e05: $f0 $f2
	ld   a, l                                        ; $5e07: $7d
	ld   a, d                                        ; $5e08: $7a
	ld   a, [$fd80]                                  ; $5e09: $fa $80 $fd
	add  b                                           ; $5e0c: $80
	ld   a, [$ff00]                                  ; $5e0d: $fa $00 $ff
	add  l                                           ; $5e10: $85
	nop                                              ; $5e11: $00
	ld   bc, $50ae                                   ; $5e12: $01 $ae $50
	add  b                                           ; $5e15: $80
	and  b                                           ; $5e16: $a0
	add  b                                           ; $5e17: $80
	ld   d, b                                        ; $5e18: $50
	add  b                                           ; $5e19: $80
	and  b                                           ; $5e1a: $a0
	nop                                              ; $5e1b: $00
	rst  $38                                         ; $5e1c: $ff
	add  l                                           ; $5e1d: $85
	nop                                              ; $5e1e: $00
	nop                                              ; $5e1f: $00
	ld   bc, $0085                                   ; $5e20: $01 $85 $00
	ld   bc, $05fa                                   ; $5e23: $01 $fa $05
	add  b                                           ; $5e26: $80
	ld   a, [bc]                                     ; $5e27: $0a
	add  b                                           ; $5e28: $80
	dec  b                                           ; $5e29: $05
	add  b                                           ; $5e2a: $80
	ld   a, [bc]                                     ; $5e2b: $0a
	nop                                              ; $5e2c: $00
	rst  $38                                         ; $5e2d: $ff
	add  b                                           ; $5e2e: $80
	nop                                              ; $5e2f: $00
	add  d                                           ; $5e30: $82
	inc  bc                                          ; $5e31: $03
	ld   [bc], a                                     ; $5e32: $02
	ld   bc, $7e81                                   ; $5e33: $01 $81 $7e

jr_078_5e36:
	add  b                                           ; $5e36: $80
	cp   $01                                         ; $5e37: $fe $01
	ld   a, [hl]                                     ; $5e39: $7e
	ld   a, a                                        ; $5e3a: $7f
	add  c                                           ; $5e3b: $81
	rst  $38                                         ; $5e3c: $ff
	ld   [bc], a                                     ; $5e3d: $02
	nop                                              ; $5e3e: $00
	ld   bc, $80fe                                   ; $5e3f: $01 $fe $80
	rst  $38                                         ; $5e42: $ff
	add  b                                           ; $5e43: $80
	cp   $00                                         ; $5e44: $fe $00
	rst  $38                                         ; $5e46: $ff
	add  a                                           ; $5e47: $87
	nop                                              ; $5e48: $00
	ld   [$a050], sp                                 ; $5e49: $08 $50 $a0
	ld   e, b                                        ; $5e4c: $58
	ld   d, b                                        ; $5e4d: $50
	and  h                                           ; $5e4e: $a4
	and  b                                           ; $5e4f: $a0
	db   $fd                                         ; $5e50: $fd
	nop                                              ; $5e51: $00
	ld   bc, $008b                                   ; $5e52: $01 $8b $00
	ld   bc, $01fe                                   ; $5e55: $01 $fe $01
	add  b                                           ; $5e58: $80
	nop                                              ; $5e59: $00
	add  b                                           ; $5e5a: $80
	ld   bc, $8001                                   ; $5e5b: $01 $01 $80
	nop                                              ; $5e5e: $00
	add  c                                           ; $5e5f: $81
	ld   a, [hl]                                     ; $5e60: $7e
	add  b                                           ; $5e61: $80
	ld   a, $80                                      ; $5e62: $3e $80
	ld   e, $09                                      ; $5e64: $1e $09
	ld   c, $ae                                      ; $5e66: $0e $ae
	ld   d, b                                        ; $5e68: $50
	or   b                                           ; $5e69: $b0
	cp   b                                           ; $5e6a: $b8
	ld   e, b                                        ; $5e6b: $58
	ld   e, h                                        ; $5e6c: $5c
	cp   h                                           ; $5e6d: $bc
	cp   [hl]                                        ; $5e6e: $be
	rrca                                             ; $5e6f: $0f
	adc  l                                           ; $5e70: $8d
	nop                                              ; $5e71: $00
	nop                                              ; $5e72: $00
	ldh  a, [$81]                                    ; $5e73: $f0 $81
	nop                                              ; $5e75: $00
	rrca                                             ; $5e76: $0f
	ld   bc, $0200                                   ; $5e77: $01 $00 $02
	nop                                              ; $5e7a: $00
	inc  b                                           ; $5e7b: $04
	nop                                              ; $5e7c: $00
	db   $10                                         ; $5e7d: $10
	ld   [$1030], sp                                 ; $5e7e: $08 $30 $10
	ccf                                              ; $5e81: $3f
	nop                                              ; $5e82: $00
	ld   a, [hl+]                                    ; $5e83: $2a
	dec  d                                           ; $5e84: $15
	db   $eb                                         ; $5e85: $eb
	dec  hl                                          ; $5e86: $2b
	add  b                                           ; $5e87: $80
	ld   d, l                                        ; $5e88: $55
	add  b                                           ; $5e89: $80
	dec  hl                                          ; $5e8a: $2b
	add  b                                           ; $5e8b: $80
	ld   d, l                                        ; $5e8c: $55
	add  b                                           ; $5e8d: $80
	dec  hl                                          ; $5e8e: $2b
	add  b                                           ; $5e8f: $80
	ld   d, l                                        ; $5e90: $55
	nop                                              ; $5e91: $00
	rst  $38                                         ; $5e92: $ff
	add  b                                           ; $5e93: $80
	nop                                              ; $5e94: $00
	add  h                                           ; $5e95: $84
	rst  $38                                         ; $5e96: $ff
	add  b                                           ; $5e97: $80
	cp   $80                                         ; $5e98: $fe $80
	db   $fc                                         ; $5e9a: $fc
	add  b                                           ; $5e9b: $80
	ld   hl, sp-$80                                  ; $5e9c: $f8 $80
	ldh  a, [$80]                                    ; $5e9e: $f0 $80
	nop                                              ; $5ea0: $00
	add  b                                           ; $5ea1: $80
	ret  nz                                          ; $5ea2: $c0

	add  b                                           ; $5ea3: $80
	add  b                                           ; $5ea4: $80
	adc  d                                           ; $5ea5: $8a
	nop                                              ; $5ea6: $00
	add  d                                           ; $5ea7: $82
	rrca                                             ; $5ea8: $0f
	add  h                                           ; $5ea9: $84
	rra                                              ; $5eaa: $1f
	add  d                                           ; $5eab: $82
	ccf                                              ; $5eac: $3f
	ld   [bc], a                                     ; $5ead: $02
	nop                                              ; $5eae: $00
	ld   [bc], a                                     ; $5eaf: $02
	db   $fd                                         ; $5eb0: $fd
	add  b                                           ; $5eb1: $80
	ld   a, [$fd80]                                  ; $5eb2: $fa $80 $fd
	add  b                                           ; $5eb5: $80
	ld   a, [$fd80]                                  ; $5eb6: $fa $80 $fd
	add  b                                           ; $5eb9: $80
	ld   a, [$fd80]                                  ; $5eba: $fa $80 $fd
	inc  bc                                          ; $5ebd: $03
	rst  $38                                         ; $5ebe: $ff
	nop                                              ; $5ebf: $00
	xor  [hl]                                        ; $5ec0: $ae
	ld   d, b                                        ; $5ec1: $50
	add  b                                           ; $5ec2: $80
	and  b                                           ; $5ec3: $a0
	add  b                                           ; $5ec4: $80
	ld   d, b                                        ; $5ec5: $50
	add  b                                           ; $5ec6: $80
	and  b                                           ; $5ec7: $a0
	add  b                                           ; $5ec8: $80
	ld   d, b                                        ; $5ec9: $50
	add  b                                           ; $5eca: $80
	and  b                                           ; $5ecb: $a0
	add  b                                           ; $5ecc: $80
	ld   d, b                                        ; $5ecd: $50
	nop                                              ; $5ece: $00
	cp   $80                                         ; $5ecf: $fe $80
	nop                                              ; $5ed1: $00
	ld   [bc], a                                     ; $5ed2: $02
	ld   a, a                                        ; $5ed3: $7f
	ld   a, [hl]                                     ; $5ed4: $7e
	ld   a, $80                                      ; $5ed5: $3e $80
	ccf                                              ; $5ed7: $3f
	add  b                                           ; $5ed8: $80
	ld   a, $01                                      ; $5ed9: $3e $01
	ccf                                              ; $5edb: $3f
	rra                                              ; $5edc: $1f
	add  b                                           ; $5edd: $80
	ld   e, $81                                      ; $5ede: $1e $81
	rra                                              ; $5ee0: $1f
	ld   [bc], a                                     ; $5ee1: $02
	nop                                              ; $5ee2: $00
	xor  a                                           ; $5ee3: $af
	ld   d, b                                        ; $5ee4: $50
	add  b                                           ; $5ee5: $80
	and  b                                           ; $5ee6: $a0
	add  b                                           ; $5ee7: $80
	ld   d, b                                        ; $5ee8: $50
	add  b                                           ; $5ee9: $80
	and  b                                           ; $5eea: $a0
	add  b                                           ; $5eeb: $80
	ld   d, b                                        ; $5eec: $50
	add  b                                           ; $5eed: $80
	and  b                                           ; $5eee: $a0
	add  b                                           ; $5eef: $80
	ld   d, b                                        ; $5ef0: $50
	ld   [$00ff], sp                                 ; $5ef1: $08 $ff $00
	add  b                                           ; $5ef4: $80
	nop                                              ; $5ef5: $00
	ld   b, b                                        ; $5ef6: $40
	nop                                              ; $5ef7: $00
	jr   nz, jr_078_5efa                             ; $5ef8: $20 $00

jr_078_5efa:
	db   $10                                         ; $5efa: $10
	add  c                                           ; $5efb: $81
	nop                                              ; $5efc: $00
	dec  b                                           ; $5efd: $05
	ld   [$0400], sp                                 ; $5efe: $08 $00 $04
	nop                                              ; $5f01: $00
	db   $fc                                         ; $5f02: $fc
	nop                                              ; $5f03: $00
	add  a                                           ; $5f04: $87
	rst  $38                                         ; $5f05: $ff
	add  b                                           ; $5f06: $80
	ld   a, [$d580]                                  ; $5f07: $fa $80 $d5
	add  b                                           ; $5f0a: $80
	xor  d                                           ; $5f0b: $aa
	add  b                                           ; $5f0c: $80
	ld   d, l                                        ; $5f0d: $55
	add  d                                           ; $5f0e: $82
	rst  $38                                         ; $5f0f: $ff
	add  b                                           ; $5f10: $80
	ld   a, [$5580]                                  ; $5f11: $fa $80 $55
	add  b                                           ; $5f14: $80
	xor  d                                           ; $5f15: $aa
	add  b                                           ; $5f16: $80
	ld   d, l                                        ; $5f17: $55
	inc  bc                                          ; $5f18: $03
	xor  d                                           ; $5f19: $aa
	or   l                                           ; $5f1a: $b5
	ld   c, a                                        ; $5f1b: $4f
	ld   d, b                                        ; $5f1c: $50
	add  d                                           ; $5f1d: $82
	rst  $38                                         ; $5f1e: $ff
	add  b                                           ; $5f1f: $80
	cp   a                                           ; $5f20: $bf
	add  b                                           ; $5f21: $80
	ld   d, l                                        ; $5f22: $55
	add  b                                           ; $5f23: $80
	xor  d                                           ; $5f24: $aa
	add  b                                           ; $5f25: $80
	ld   d, l                                        ; $5f26: $55
	inc  bc                                          ; $5f27: $03
	xor  d                                           ; $5f28: $aa
	ld   d, l                                        ; $5f29: $55
	rst  $38                                         ; $5f2a: $ff
	nop                                              ; $5f2b: $00
	add  [hl]                                        ; $5f2c: $86
	rst  $38                                         ; $5f2d: $ff
	add  b                                           ; $5f2e: $80
	cp   a                                           ; $5f2f: $bf
	add  b                                           ; $5f30: $80
	ld   d, a                                        ; $5f31: $57
	ld   bc, $54ab                                   ; $5f32: $01 $ab $54
	add  d                                           ; $5f35: $82
	rst  $38                                         ; $5f36: $ff
	nop                                              ; $5f37: $00
	nop                                              ; $5f38: $00
	adc  d                                           ; $5f39: $8a
	cp   $00                                         ; $5f3a: $fe $00
	rst  $38                                         ; $5f3c: $ff
	add  [hl]                                        ; $5f3d: $86
	nop                                              ; $5f3e: $00
	add  e                                           ; $5f3f: $83
	rst  $38                                         ; $5f40: $ff
	nop                                              ; $5f41: $00
	nop                                              ; $5f42: $00
	add  d                                           ; $5f43: $82
	rst  $38                                         ; $5f44: $ff
	nop                                              ; $5f45: $00
	nop                                              ; $5f46: $00
	adc  e                                           ; $5f47: $8b
	rst  $38                                         ; $5f48: $ff
	adc  [hl]                                        ; $5f49: $8e
	nop                                              ; $5f4a: $00
	add  d                                           ; $5f4b: $82
	rst  $38                                         ; $5f4c: $ff
	add  b                                           ; $5f4d: $80
	xor  d                                           ; $5f4e: $aa
	add  b                                           ; $5f4f: $80
	ld   d, l                                        ; $5f50: $55
	add  b                                           ; $5f51: $80
	xor  d                                           ; $5f52: $aa
	add  b                                           ; $5f53: $80
	ld   d, l                                        ; $5f54: $55
	inc  bc                                          ; $5f55: $03
	xor  d                                           ; $5f56: $aa
	ld   d, l                                        ; $5f57: $55
	rst  $38                                         ; $5f58: $ff
	ld   bc, $008d                                   ; $5f59: $01 $8d $00
	ld   bc, $0709                                   ; $5f5c: $01 $09 $07
	add  b                                           ; $5f5f: $80
	dec  bc                                          ; $5f60: $0b
	add  b                                           ; $5f61: $80
	rlca                                             ; $5f62: $07
	add  b                                           ; $5f63: $80
	dec  bc                                          ; $5f64: $0b
	add  b                                           ; $5f65: $80
	rlca                                             ; $5f66: $07
	add  b                                           ; $5f67: $80
	dec  bc                                          ; $5f68: $0b
	add  b                                           ; $5f69: $80
	rlca                                             ; $5f6a: $07
	add  b                                           ; $5f6b: $80
	dec  bc                                          ; $5f6c: $0b
	nop                                              ; $5f6d: $00
	ldh  a, [$8d]                                    ; $5f6e: $f0 $8d
	nop                                              ; $5f70: $00
	nop                                              ; $5f71: $00
	rra                                              ; $5f72: $1f
	adc  l                                           ; $5f73: $8d
	and  b                                           ; $5f74: $a0
	db   $10                                         ; $5f75: $10
	xor  b                                           ; $5f76: $a8
	rra                                              ; $5f77: $1f
	rlca                                             ; $5f78: $07
	rra                                              ; $5f79: $1f
	rlca                                             ; $5f7a: $07
	rra                                              ; $5f7b: $1f
	rlca                                             ; $5f7c: $07
	rra                                              ; $5f7d: $1f
	rlca                                             ; $5f7e: $07
	rra                                              ; $5f7f: $1f
	rlca                                             ; $5f80: $07
	rra                                              ; $5f81: $1f
	rlca                                             ; $5f82: $07
	rra                                              ; $5f83: $1f
	rlca                                             ; $5f84: $07
	rra                                              ; $5f85: $1f
	ld   l, a                                        ; $5f86: $6f
	adc  l                                           ; $5f87: $8d
	nop                                              ; $5f88: $00
	nop                                              ; $5f89: $00
	add  b                                           ; $5f8a: $80
	adc  b                                           ; $5f8b: $88
	nop                                              ; $5f8c: $00
	nop                                              ; $5f8d: $00
	rrca                                             ; $5f8e: $0f
	add  b                                           ; $5f8f: $80
	rlca                                             ; $5f90: $07
	add  b                                           ; $5f91: $80
	dec  bc                                          ; $5f92: $0b
	nop                                              ; $5f93: $00
	ld   c, $84                                      ; $5f94: $0e $84
	nop                                              ; $5f96: $00
	add  b                                           ; $5f97: $80
	ld   c, $9f                                      ; $5f98: $0e $9f
	cp   $80                                         ; $5f9a: $fe $80
	ld   a, [$f480]                                  ; $5f9c: $fa $80 $f4
	add  b                                           ; $5f9f: $80
	xor  d                                           ; $5fa0: $aa
	nop                                              ; $5fa1: $00
	rst  $38                                         ; $5fa2: $ff
	add  b                                           ; $5fa3: $80
	ld   [bc], a                                     ; $5fa4: $02
	ld   bc, $1415                                   ; $5fa5: $01 $15 $14
	add  b                                           ; $5fa8: $80
	ld   [bc], a                                     ; $5fa9: $02
	add  b                                           ; $5faa: $80
	inc  b                                           ; $5fab: $04
	add  b                                           ; $5fac: $80
	ld   [bc], a                                     ; $5fad: $02
	add  b                                           ; $5fae: $80
	inc  b                                           ; $5faf: $04
	add  b                                           ; $5fb0: $80
	ld   [bc], a                                     ; $5fb1: $02
	add  b                                           ; $5fb2: $80
	nop                                              ; $5fb3: $00
	adc  e                                           ; $5fb4: $8b
	cp   $01                                         ; $5fb5: $fe $01
	nop                                              ; $5fb7: $00
	cp   $18                                         ; $5fb8: $fe $18
	ld   [bc], a                                     ; $5fba: $02
	add  a                                           ; $5fbb: $87
	nop                                              ; $5fbc: $00
	add  b                                           ; $5fbd: $80
	rrca                                             ; $5fbe: $0f
	add  b                                           ; $5fbf: $80
	dec  b                                           ; $5fc0: $05
	add  b                                           ; $5fc1: $80
	ld   [bc], a                                     ; $5fc2: $02
	add  b                                           ; $5fc3: $80
	dec  b                                           ; $5fc4: $05
	add  l                                           ; $5fc5: $85
	nop                                              ; $5fc6: $00
	inc  b                                           ; $5fc7: $04
	rrca                                             ; $5fc8: $0f
	di                                               ; $5fc9: $f3
	rst  $38                                         ; $5fca: $ff
	ld   e, h                                        ; $5fcb: $5c
	ld   e, a                                        ; $5fcc: $5f
	add  b                                           ; $5fcd: $80
	xor  e                                           ; $5fce: $ab
	add  b                                           ; $5fcf: $80
	ld   d, l                                        ; $5fd0: $55
	add  l                                           ; $5fd1: $85
	nop                                              ; $5fd2: $00
	ld   [$ffe0], sp                                 ; $5fd3: $08 $e0 $ff
	db   $e3                                         ; $5fd6: $e3
	ld   a, a                                        ; $5fd7: $7f
	db   $fc                                         ; $5fd8: $fc
	sbc  a                                           ; $5fd9: $9f
	rst  $28                                         ; $5fda: $ef
	di                                               ; $5fdb: $f3
	db   $fc                                         ; $5fdc: $fc
	add  [hl]                                        ; $5fdd: $86
	nop                                              ; $5fde: $00
	add  c                                           ; $5fdf: $81
	rst  $38                                         ; $5fe0: $ff
	inc  b                                           ; $5fe1: $04
	ld   a, a                                        ; $5fe2: $7f
	rst  $38                                         ; $5fe3: $ff
	add  b                                           ; $5fe4: $80
	cp   a                                           ; $5fe5: $bf
	ld   b, b                                        ; $5fe6: $40
	add  b                                           ; $5fe7: $80
	xor  d                                           ; $5fe8: $aa
	add  b                                           ; $5fe9: $80
	ld   d, l                                        ; $5fea: $55
	add  b                                           ; $5feb: $80
	xor  d                                           ; $5fec: $aa
	add  b                                           ; $5fed: $80
	ld   d, l                                        ; $5fee: $55
	add  b                                           ; $5fef: $80
	xor  d                                           ; $5ff0: $aa
	add  b                                           ; $5ff1: $80
	ld   d, l                                        ; $5ff2: $55
	add  b                                           ; $5ff3: $80
	xor  d                                           ; $5ff4: $aa
	ld   bc, $4a55                                   ; $5ff5: $01 $55 $4a
	add  b                                           ; $5ff8: $80
	xor  h                                           ; $5ff9: $ac
	add  b                                           ; $5ffa: $80
	ld   c, e                                        ; $5ffb: $4b
	add  b                                           ; $5ffc: $80
	xor  e                                           ; $5ffd: $ab
	add  b                                           ; $5ffe: $80
	ld   c, e                                        ; $5fff: $4b
	add  b                                           ; $6000: $80
	xor  e                                           ; $6001: $ab
	add  b                                           ; $6002: $80
	ld   c, e                                        ; $6003: $4b
	add  b                                           ; $6004: $80
	xor  e                                           ; $6005: $ab
	ld   b, $4b                                      ; $6006: $06 $4b
	xor  e                                           ; $6008: $ab
	nop                                              ; $6009: $00
	push de                                          ; $600a: $d5
	ld   a, [hl+]                                    ; $600b: $2a
	ld   d, a                                        ; $600c: $57
	ld   d, [hl]                                     ; $600d: $56
	add  b                                           ; $600e: $80
	cp   [hl]                                        ; $600f: $be
	add  b                                           ; $6010: $80
	ld   a, h                                        ; $6011: $7c
	add  hl, bc                                      ; $6012: $09
	rst  $38                                         ; $6013: $ff
	ld   [bc], a                                     ; $6014: $02
	inc  bc                                          ; $6015: $03
	ld   a, e                                        ; $6016: $7b
	ld   a, d                                        ; $6017: $7a
	ld   [bc], a                                     ; $6018: $02
	ld   b, e                                        ; $6019: $43
	nop                                              ; $601a: $00
	ld   d, h                                        ; $601b: $54
	xor  e                                           ; $601c: $ab
	add  b                                           ; $601d: $80
	rra                                              ; $601e: $1f
	add  b                                           ; $601f: $80
	xor  d                                           ; $6020: $aa
	add  b                                           ; $6021: $80
	rla                                              ; $6022: $17
	dec  bc                                          ; $6023: $0b
	xor  a                                           ; $6024: $af
	and  b                                           ; $6025: $a0
	db   $10                                         ; $6026: $10
	rla                                              ; $6027: $17
	and  a                                           ; $6028: $a7
	and  b                                           ; $6029: $a0
	or   h                                           ; $602a: $b4
	nop                                              ; $602b: $00
	dec  b                                           ; $602c: $05
	ld   a, [$6171]                                  ; $602d: $fa $71 $61
	add  b                                           ; $6030: $80
	ld   [$4180], a                                  ; $6031: $ea $80 $41
	dec  bc                                          ; $6034: $0b
	ld   a, [$312a]                                  ; $6035: $fa $2a $31
	or   c                                           ; $6038: $b1
	cp   d                                           ; $6039: $ba
	ld   a, [hl-]                                    ; $603a: $3a
	dec  sp                                          ; $603b: $3b
	nop                                              ; $603c: $00
	ld   b, l                                        ; $603d: $45
	cp   d                                           ; $603e: $ba
	ld   [hl], l                                     ; $603f: $75
	ld   [hl], h                                     ; $6040: $74
	add  b                                           ; $6041: $80
	ld   [$d480], a                                  ; $6042: $ea $80 $d4
	add  hl, bc                                      ; $6045: $09
	rst  $38                                         ; $6046: $ff
	ld   [bc], a                                     ; $6047: $02
	ld   bc, $7a79                                   ; $6048: $01 $79 $7a
	ld   [bc], a                                     ; $604b: $02
	ld   b, e                                        ; $604c: $43
	nop                                              ; $604d: $00
	ld   [hl], l                                     ; $604e: $75
	adc  d                                           ; $604f: $8a
	add  b                                           ; $6050: $80
	dec  d                                           ; $6051: $15
	add  b                                           ; $6052: $80
	xor  d                                           ; $6053: $aa
	add  b                                           ; $6054: $80
	dec  d                                           ; $6055: $15
	dec  bc                                          ; $6056: $0b
	xor  a                                           ; $6057: $af
	and  b                                           ; $6058: $a0
	db   $10                                         ; $6059: $10
	rla                                              ; $605a: $17
	and  a                                           ; $605b: $a7
	and  b                                           ; $605c: $a0
	or   h                                           ; $605d: $b4
	nop                                              ; $605e: $00
	ld   d, l                                        ; $605f: $55
	xor  d                                           ; $6060: $aa
	ld   d, c                                        ; $6061: $51
	ld   b, c                                        ; $6062: $41
	add  b                                           ; $6063: $80
	xor  d                                           ; $6064: $aa
	add  b                                           ; $6065: $80
	ld   b, c                                        ; $6066: $41
	dec  bc                                          ; $6067: $0b
	ld   a, [$102a]                                  ; $6068: $fa $2a $10
	sub  b                                           ; $606b: $90
	and  b                                           ; $606c: $a0
	jr   nz, jr_078_60aa                             ; $606d: $20 $3b

	nop                                              ; $606f: $00
	ld   d, l                                        ; $6070: $55
	xor  d                                           ; $6071: $aa
	ld   d, c                                        ; $6072: $51
	ld   d, b                                        ; $6073: $50
	add  b                                           ; $6074: $80
	and  b                                           ; $6075: $a0
	add  b                                           ; $6076: $80
	ld   b, b                                        ; $6077: $40
	nop                                              ; $6078: $00
	db   $fd                                         ; $6079: $fd
	add  b                                           ; $607a: $80
	nop                                              ; $607b: $00
	add  b                                           ; $607c: $80
	ld   a, b                                        ; $607d: $78
	inc  b                                           ; $607e: $04
	nop                                              ; $607f: $00
	ld   b, e                                        ; $6080: $43
	nop                                              ; $6081: $00
	rst  $38                                         ; $6082: $ff
	nop                                              ; $6083: $00
	add  b                                           ; $6084: $80
	ld   bc, $0280                                   ; $6085: $01 $80 $02
	add  b                                           ; $6088: $80
	dec  b                                           ; $6089: $05
	dec  bc                                          ; $608a: $0b
	rrca                                             ; $608b: $0f
	nop                                              ; $608c: $00
	db   $10                                         ; $608d: $10
	rla                                              ; $608e: $17
	rlca                                             ; $608f: $07
	nop                                              ; $6090: $00
	or   h                                           ; $6091: $b4
	nop                                              ; $6092: $00
	ld   d, l                                        ; $6093: $55
	xor  d                                           ; $6094: $aa
	ld   d, c                                        ; $6095: $51
	ld   b, c                                        ; $6096: $41
	add  b                                           ; $6097: $80
	xor  d                                           ; $6098: $aa
	add  b                                           ; $6099: $80
	ld   b, c                                        ; $609a: $41
	dec  bc                                          ; $609b: $0b
	ld   a, [$112a]                                  ; $609c: $fa $2a $11
	sub  c                                           ; $609f: $91
	xor  d                                           ; $60a0: $aa
	ld   a, [hl+]                                    ; $60a1: $2a
	dec  sp                                          ; $60a2: $3b
	nop                                              ; $60a3: $00
	ld   d, h                                        ; $60a4: $54
	xor  e                                           ; $60a5: $ab
	ld   d, l                                        ; $60a6: $55
	ld   d, h                                        ; $60a7: $54
	add  b                                           ; $60a8: $80
	xor  d                                           ; $60a9: $aa

jr_078_60aa:
	ld   [$5554], sp                                 ; $60aa: $08 $54 $55
	ld   [$1702], a                                  ; $60ad: $ea $02 $17
	ld   a, e                                        ; $60b0: $7b
	ld   a, d                                        ; $60b1: $7a
	ld   [bc], a                                     ; $60b2: $02
	db   $fc                                         ; $60b3: $fc
	add  b                                           ; $60b4: $80
	nop                                              ; $60b5: $00
	add  b                                           ; $60b6: $80
	ld   bc, $008a                                   ; $60b7: $01 $8a $00
	add  b                                           ; $60ba: $80
	xor  d                                           ; $60bb: $aa
	add  b                                           ; $60bc: $80
	ld   d, l                                        ; $60bd: $55
	add  b                                           ; $60be: $80
	ld   a, [hl+]                                    ; $60bf: $2a
	add  b                                           ; $60c0: $80
	ld   d, l                                        ; $60c1: $55

jr_078_60c2:
	add  b                                           ; $60c2: $80
	ld   a, [bc]                                     ; $60c3: $0a
	add  b                                           ; $60c4: $80
	ld   d, l                                        ; $60c5: $55
	add  b                                           ; $60c6: $80
	ld   [bc], a                                     ; $60c7: $02

jr_078_60c8:
	inc  bc                                          ; $60c8: $03
	dec  d                                           ; $60c9: $15
	ld   d, $fc                                      ; $60ca: $16 $fc
	rst  $38                                         ; $60cc: $ff
	add  b                                           ; $60cd: $80
	ld   a, a                                        ; $60ce: $7f
	add  b                                           ; $60cf: $80
	rst  $38                                         ; $60d0: $ff
	add  b                                           ; $60d1: $80
	ld   a, a                                        ; $60d2: $7f
	add  b                                           ; $60d3: $80
	cp   a                                           ; $60d4: $bf
	add  b                                           ; $60d5: $80
	ld   e, a                                        ; $60d6: $5f
	add  b                                           ; $60d7: $80
	xor  a                                           ; $60d8: $af
	ld   bc, $a05f                                   ; $60d9: $01 $5f $a0
	add  b                                           ; $60dc: $80
	cp   a                                           ; $60dd: $bf
	nop                                              ; $60de: $00
	nop                                              ; $60df: $00
	adc  d                                           ; $60e0: $8a
	cp   a                                           ; $60e1: $bf
	nop                                              ; $60e2: $00
	rst  $38                                         ; $60e3: $ff
	add  b                                           ; $60e4: $80
	xor  d                                           ; $60e5: $aa
	add  b                                           ; $60e6: $80
	ld   d, l                                        ; $60e7: $55
	add  b                                           ; $60e8: $80
	and  b                                           ; $60e9: $a0
	add  a                                           ; $60ea: $87
	nop                                              ; $60eb: $00
	nop                                              ; $60ec: $00
	rra                                              ; $60ed: $1f
	add  b                                           ; $60ee: $80
	xor  e                                           ; $60ef: $ab
	add  b                                           ; $60f0: $80
	ld   c, e                                        ; $60f1: $4b
	adc  c                                           ; $60f2: $89
	dec  bc                                          ; $60f3: $0b
	ld   bc, $5f4b                                   ; $60f4: $01 $4b $5f
	add  b                                           ; $60f7: $80
	rst  $28                                         ; $60f8: $ef
	add  b                                           ; $60f9: $80
	ld   e, a                                        ; $60fa: $5f
	add  b                                           ; $60fb: $80
	cp   d                                           ; $60fc: $ba
	add  b                                           ; $60fd: $80
	ld   [hl], a                                     ; $60fe: $77
	add  b                                           ; $60ff: $80
	xor  e                                           ; $6100: $ab
	add  b                                           ; $6101: $80
	ld   e, a                                        ; $6102: $5f
	add  b                                           ; $6103: $80
	xor  d                                           ; $6104: $aa
	ld   bc, $b7f7                                   ; $6105: $01 $f7 $b7
	add  b                                           ; $6108: $80
	cp   a                                           ; $6109: $bf
	add  b                                           ; $610a: $80
	sbc  a                                           ; $610b: $9f
	add  b                                           ; $610c: $80
	cp   a                                           ; $610d: $bf
	add  b                                           ; $610e: $80
	rla                                              ; $610f: $17
	add  b                                           ; $6110: $80
	xor  a                                           ; $6111: $af
	add  b                                           ; $6112: $80
	dec  d                                           ; $6113: $15
	add  b                                           ; $6114: $80
	xor  d                                           ; $6115: $aa
	ld   bc, $f1b5                                   ; $6116: $01 $b5 $f1
	add  b                                           ; $6119: $80
	ld   [$d180], a                                  ; $611a: $ea $80 $d1
	add  b                                           ; $611d: $80
	ld   a, [$5180]                                  ; $611e: $fa $80 $51
	add  b                                           ; $6121: $80
	xor  d                                           ; $6122: $aa
	add  b                                           ; $6123: $80
	ld   d, c                                        ; $6124: $51
	add  b                                           ; $6125: $80
	xor  d                                           ; $6126: $aa
	ld   bc, $5551                                   ; $6127: $01 $51 $55
	add  b                                           ; $612a: $80
	xor  d                                           ; $612b: $aa
	add  b                                           ; $612c: $80
	ld   d, l                                        ; $612d: $55
	add  b                                           ; $612e: $80
	xor  d                                           ; $612f: $aa
	add  b                                           ; $6130: $80
	ld   d, b                                        ; $6131: $50
	add  b                                           ; $6132: $80
	adc  b                                           ; $6133: $88
	add  b                                           ; $6134: $80
	nop                                              ; $6135: $00
	add  b                                           ; $6136: $80
	add  b                                           ; $6137: $80
	ld   bc, $1555                                   ; $6138: $01 $55 $15
	add  b                                           ; $613b: $80
	xor  b                                           ; $613c: $a8
	add  b                                           ; $613d: $80
	dec  d                                           ; $613e: $15
	add  b                                           ; $613f: $80
	jr   z, jr_078_60c2                              ; $6140: $28 $80

	nop                                              ; $6142: $00
	add  b                                           ; $6143: $80
	jr   nz, jr_078_60c8                             ; $6144: $20 $82

	nop                                              ; $6146: $00
	ld   bc, $5014                                   ; $6147: $01 $14 $50
	add  b                                           ; $614a: $80
	add  b                                           ; $614b: $80
	adc  d                                           ; $614c: $8a
	nop                                              ; $614d: $00
	nop                                              ; $614e: $00
	inc  b                                           ; $614f: $04
	adc  l                                           ; $6150: $8d
	nop                                              ; $6151: $00
	ld   bc, $0040                                   ; $6152: $01 $40 $00
	add  b                                           ; $6155: $80
	ld   [bc], a                                     ; $6156: $02
	add  b                                           ; $6157: $80
	nop                                              ; $6158: $00
	add  b                                           ; $6159: $80
	ld   [bc], a                                     ; $615a: $02
	add  b                                           ; $615b: $80
	inc  b                                           ; $615c: $04
	add  h                                           ; $615d: $84
	nop                                              ; $615e: $00
	ld   bc, $0145                                   ; $615f: $01 $45 $01
	add  b                                           ; $6162: $80
	xor  b                                           ; $6163: $a8
	add  b                                           ; $6164: $80
	nop                                              ; $6165: $00
	add  b                                           ; $6166: $80
	add  b                                           ; $6167: $80
	add  [hl]                                        ; $6168: $86
	nop                                              ; $6169: $00
	ld   bc, $1511                                   ; $616a: $01 $11 $15
	add  b                                           ; $616d: $80
	ld   a, [bc]                                     ; $616e: $0a
	add  b                                           ; $616f: $80
	dec  b                                           ; $6170: $05
	add  b                                           ; $6171: $80
	ld   a, [bc]                                     ; $6172: $0a
	add  b                                           ; $6173: $80
	dec  b                                           ; $6174: $05
	add  b                                           ; $6175: $80
	ld   [hl+], a                                    ; $6176: $22
	add  b                                           ; $6177: $80
	dec  b                                           ; $6178: $05
	add  b                                           ; $6179: $80
	ld   a, [bc]                                     ; $617a: $0a
	nop                                              ; $617b: $00
	rlca                                             ; $617c: $07
	add  e                                           ; $617d: $83
	ld   hl, sp+$02                                  ; $617e: $f8 $02
	jr   c, jr_078_61fa                              ; $6180: $38 $78

	ld   hl, sp-$7b                                  ; $6182: $f8 $85
	cp   b                                           ; $6184: $b8
	inc  bc                                          ; $6185: $03
	cp   a                                           ; $6186: $bf
	and  b                                           ; $6187: $a0
	or   b                                           ; $6188: $b0
	xor  a                                           ; $6189: $af
	add  b                                           ; $618a: $80
	sbc  a                                           ; $618b: $9f
	add  b                                           ; $618c: $80
	xor  a                                           ; $618d: $af
	add  b                                           ; $618e: $80
	sbc  a                                           ; $618f: $9f
	add  b                                           ; $6190: $80
	xor  a                                           ; $6191: $af
	add  b                                           ; $6192: $80
	sbc  a                                           ; $6193: $9f
	add  b                                           ; $6194: $80
	xor  a                                           ; $6195: $af
	nop                                              ; $6196: $00
	rst  $38                                         ; $6197: $ff
	add  b                                           ; $6198: $80
	xor  a                                           ; $6199: $af
	ld   b, $57                                      ; $619a: $06 $57
	rst  $10                                         ; $619c: $d7
	dec  hl                                          ; $619d: $2b
	ld   e, e                                        ; $619e: $5b
	rlca                                             ; $619f: $07
	adc  e                                           ; $61a0: $8b
	add  e                                           ; $61a1: $83
	add  b                                           ; $61a2: $80
	ldh  [$80], a                                    ; $61a3: $e0 $80
	ld   hl, sp-$80                                  ; $61a5: $f8 $80
	sbc  b                                           ; $61a7: $98
	adc  [hl]                                        ; $61a8: $8e
	cp   a                                           ; $61a9: $bf
	nop                                              ; $61aa: $00
	rst  $38                                         ; $61ab: $ff
	add  b                                           ; $61ac: $80
	nop                                              ; $61ad: $00
	adc  e                                           ; $61ae: $8b
	rst  $38                                         ; $61af: $ff
	nop                                              ; $61b0: $00
	ldh  [$80], a                                    ; $61b1: $e0 $80
	dec  bc                                          ; $61b3: $0b
	add  [hl]                                        ; $61b4: $86
	ld   [$eb83], a                                  ; $61b5: $ea $83 $eb
	ld   bc, $7581                                   ; $61b8: $01 $81 $75
	add  b                                           ; $61bb: $80
	db   $eb                                         ; $61bc: $eb
	add  b                                           ; $61bd: $80
	ld   e, l                                        ; $61be: $5d
	add  b                                           ; $61bf: $80
	xor  d                                           ; $61c0: $aa
	add  b                                           ; $61c1: $80
	ld   d, l                                        ; $61c2: $55
	add  b                                           ; $61c3: $80
	ld   a, [$4580]                                  ; $61c4: $fa $80 $45
	add  b                                           ; $61c7: $80
	xor  d                                           ; $61c8: $aa
	inc  bc                                          ; $61c9: $03
	ld   d, l                                        ; $61ca: $55
	dec  d                                           ; $61cb: $15
	cp   d                                           ; $61cc: $ba
	xor  d                                           ; $61cd: $aa
	add  b                                           ; $61ce: $80
	dec  b                                           ; $61cf: $05
	add  b                                           ; $61d0: $80
	adc  d                                           ; $61d1: $8a
	add  b                                           ; $61d2: $80
	inc  b                                           ; $61d3: $04
	ld   bc, $8898                                   ; $61d4: $01 $98 $88
	add  b                                           ; $61d7: $80
	inc  d                                           ; $61d8: $14
	add  b                                           ; $61d9: $80
	nop                                              ; $61da: $00
	inc  bc                                          ; $61db: $03
	inc  d                                           ; $61dc: $14
	ld   d, b                                        ; $61dd: $50
	add  c                                           ; $61de: $81
	add  b                                           ; $61df: $80
	add  b                                           ; $61e0: $80
	ld   b, b                                        ; $61e1: $40
	add  b                                           ; $61e2: $80
	add  b                                           ; $61e3: $80
	add  b                                           ; $61e4: $80
	nop                                              ; $61e5: $00
	nop                                              ; $61e6: $00
	ld   bc, $0083                                   ; $61e7: $01 $83 $00
	nop                                              ; $61ea: $00
	inc  b                                           ; $61eb: $04
	adc  l                                           ; $61ec: $8d
	nop                                              ; $61ed: $00
	ld   [bc], a                                     ; $61ee: $02
	ld   b, b                                        ; $61ef: $40
	nop                                              ; $61f0: $00
	db   $10                                         ; $61f1: $10
	add  l                                           ; $61f2: $85
	nop                                              ; $61f3: $00
	nop                                              ; $61f4: $00
	db   $10                                         ; $61f5: $10
	add  e                                           ; $61f6: $83
	nop                                              ; $61f7: $00
	ld   [bc], a                                     ; $61f8: $02
	ld   b, h                                        ; $61f9: $44

jr_078_61fa:
	nop                                              ; $61fa: $00
	ld   bc, $0085                                   ; $61fb: $01 $85 $00
	nop                                              ; $61fe: $00
	ld   bc, $0083                                   ; $61ff: $01 $83 $00
	nop                                              ; $6202: $00
	inc  b                                           ; $6203: $04
	adc  l                                           ; $6204: $8d
	nop                                              ; $6205: $00
	ld   [bc], a                                     ; $6206: $02
	ld   b, b                                        ; $6207: $40
	nop                                              ; $6208: $00
	db   $10                                         ; $6209: $10
	add  l                                           ; $620a: $85
	nop                                              ; $620b: $00
	nop                                              ; $620c: $00
	db   $10                                         ; $620d: $10
	add  e                                           ; $620e: $83
	nop                                              ; $620f: $00
	ld   [bc], a                                     ; $6210: $02
	ld   b, h                                        ; $6211: $44
	nop                                              ; $6212: $00
	ld   bc, $0085                                   ; $6213: $01 $85 $00
	nop                                              ; $6216: $00
	ld   bc, $0083                                   ; $6217: $01 $83 $00
	ld   bc, $0501                                   ; $621a: $01 $01 $05
	add  b                                           ; $621d: $80
	ld   a, [bc]                                     ; $621e: $0a
	add  b                                           ; $621f: $80
	dec  b                                           ; $6220: $05
	add  b                                           ; $6221: $80
	ld   a, [hl+]                                    ; $6222: $2a
	add  b                                           ; $6223: $80
	ld   b, l                                        ; $6224: $45
	add  b                                           ; $6225: $80
	ld   a, [hl+]                                    ; $6226: $2a
	add  b                                           ; $6227: $80
	inc  d                                           ; $6228: $14
	add  b                                           ; $6229: $80
	xor  b                                           ; $622a: $a8
	inc  b                                           ; $622b: $04
	ld   b, a                                        ; $622c: $47
	cp   b                                           ; $622d: $b8
	jr   c, jr_078_62a8                              ; $622e: $38 $78

	cp   b                                           ; $6230: $b8
	add  a                                           ; $6231: $87
	ld   hl, sp+$03                                  ; $6232: $f8 $03
	ld   [hl], b                                     ; $6234: $70
	ld   hl, sp+$17                                  ; $6235: $f8 $17
	sbc  a                                           ; $6237: $9f
	add  b                                           ; $6238: $80
	xor  a                                           ; $6239: $af
	add  b                                           ; $623a: $80
	sub  a                                           ; $623b: $97
	add  b                                           ; $623c: $80
	xor  a                                           ; $623d: $af
	add  b                                           ; $623e: $80
	sub  a                                           ; $623f: $97
	add  b                                           ; $6240: $80
	xor  e                                           ; $6241: $ab
	add  b                                           ; $6242: $80
	sub  l                                           ; $6243: $95
	add  b                                           ; $6244: $80
	xor  d                                           ; $6245: $aa
	adc  h                                           ; $6246: $8c
	adc  b                                           ; $6247: $88
	add  b                                           ; $6248: $80
	ld   hl, sp+$00                                  ; $6249: $f8 $00
	cp   a                                           ; $624b: $bf
	add  b                                           ; $624c: $80
	cp   [hl]                                        ; $624d: $be
	add  b                                           ; $624e: $80
	cp   l                                           ; $624f: $bd
	add  b                                           ; $6250: $80
	cp   d                                           ; $6251: $ba
	add  b                                           ; $6252: $80
	or   l                                           ; $6253: $b5
	add  b                                           ; $6254: $80
	cp   d                                           ; $6255: $ba
	add  b                                           ; $6256: $80
	or   l                                           ; $6257: $b5
	add  b                                           ; $6258: $80
	xor  d                                           ; $6259: $aa
	dec  b                                           ; $625a: $05
	sub  l                                           ; $625b: $95
	sub  $fd                                         ; $625c: $d6 $fd
	pop  af                                          ; $625e: $f1
	ld   a, [$82ea]                                  ; $625f: $fa $ea $82
	rst  $28                                         ; $6262: $ef
	add  b                                           ; $6263: $80
	ldh  [$83], a                                    ; $6264: $e0 $83
	rst  $28                                         ; $6266: $ef
	inc  b                                           ; $6267: $04
	ld   b, h                                        ; $6268: $44
	nop                                              ; $6269: $00
	ret  nz                                          ; $626a: $c0

	nop                                              ; $626b: $00
	ld   b, b                                        ; $626c: $40
	add  c                                           ; $626d: $81
	nop                                              ; $626e: $00
	ld   [bc], a                                     ; $626f: $02
	ret  nz                                          ; $6270: $c0

	nop                                              ; $6271: $00
	ret  nz                                          ; $6272: $c0

	add  e                                           ; $6273: $83
	nop                                              ; $6274: $00
	ld   bc, $1024                                   ; $6275: $01 $24 $10
	add  b                                           ; $6278: $80
	xor  b                                           ; $6279: $a8
	add  b                                           ; $627a: $80
	ld   d, b                                        ; $627b: $50
	add  b                                           ; $627c: $80
	add  b                                           ; $627d: $80
	add  b                                           ; $627e: $80
	ld   b, b                                        ; $627f: $40
	add  b                                           ; $6280: $80
	add  b                                           ; $6281: $80
	add  d                                           ; $6282: $82
	nop                                              ; $6283: $00
	ld   bc, $1050                                   ; $6284: $01 $50 $10
	adc  d                                           ; $6287: $8a
	nop                                              ; $6288: $00
	ld   [bc], a                                     ; $6289: $02
	dec  b                                           ; $628a: $05
	nop                                              ; $628b: $00
	ld   b, c                                        ; $628c: $41
	add  a                                           ; $628d: $87
	nop                                              ; $628e: $00
	ld   b, $51                                      ; $628f: $06 $51
	nop                                              ; $6291: $00
	ld   sp, hl                                      ; $6292: $f9
	nop                                              ; $6293: $00
	jp   hl                                          ; $6294: $e9


	nop                                              ; $6295: $00
	ld   b, l                                        ; $6296: $45
	add  e                                           ; $6297: $83
	nop                                              ; $6298: $00
	ld   a, [bc]                                     ; $6299: $0a
	dec  d                                           ; $629a: $15
	nop                                              ; $629b: $00
	cp   a                                           ; $629c: $bf
	nop                                              ; $629d: $00
	rst  $38                                         ; $629e: $ff
	nop                                              ; $629f: $00
	rst  $38                                         ; $62a0: $ff
	nop                                              ; $62a1: $00
	cp   $00                                         ; $62a2: $fe $00
	inc  d                                           ; $62a4: $14
	add  c                                           ; $62a5: $81
	nop                                              ; $62a6: $00
	inc  l                                           ; $62a7: $2c

jr_078_62a8:
	ld   [bc], a                                     ; $62a8: $02
	nop                                              ; $62a9: $00
	rlca                                             ; $62aa: $07
	nop                                              ; $62ab: $00
	rrca                                             ; $62ac: $0f
	nop                                              ; $62ad: $00
	rra                                              ; $62ae: $1f
	nop                                              ; $62af: $00
	sbc  a                                           ; $62b0: $9f
	nop                                              ; $62b1: $00
	sbc  a                                           ; $62b2: $9f
	nop                                              ; $62b3: $00
	ld   d, c                                        ; $62b4: $51
	nop                                              ; $62b5: $00
	ld   d, b                                        ; $62b6: $50
	nop                                              ; $62b7: $00
	ldh  a, [rP1]                                    ; $62b8: $f0 $00
	pop  af                                          ; $62ba: $f1
	nop                                              ; $62bb: $00
	pop  af                                          ; $62bc: $f1
	nop                                              ; $62bd: $00
	pop  af                                          ; $62be: $f1
	nop                                              ; $62bf: $00
	ld   sp, hl                                      ; $62c0: $f9
	nop                                              ; $62c1: $00
	jp   hl                                          ; $62c2: $e9


	nop                                              ; $62c3: $00
	ld   b, l                                        ; $62c4: $45
	nop                                              ; $62c5: $00
	ld   b, h                                        ; $62c6: $44
	nop                                              ; $62c7: $00
	db   $ec                                         ; $62c8: $ec
	nop                                              ; $62c9: $00
	ld   hl, sp+$00                                  ; $62ca: $f8 $00
	ld   a, [$fe00]                                  ; $62cc: $fa $00 $fe
	nop                                              ; $62cf: $00
	cp   $00                                         ; $62d0: $fe $00
	cp   $00                                         ; $62d2: $fe $00
	inc  d                                           ; $62d4: $14
	add  l                                           ; $62d5: $85
	nop                                              ; $62d6: $00
	add  hl, bc                                      ; $62d7: $09
	inc  b                                           ; $62d8: $04
	nop                                              ; $62d9: $00
	inc  d                                           ; $62da: $14
	nop                                              ; $62db: $00
	ld   a, [de]                                     ; $62dc: $1a
	nop                                              ; $62dd: $00
	ld   e, $00                                      ; $62de: $1e $00
	ld   d, c                                        ; $62e0: $51
	ld   bc, $0280                                   ; $62e1: $01 $80 $02
	add  b                                           ; $62e4: $80
	ld   bc, $0a80                                   ; $62e5: $01 $80 $0a
	add  b                                           ; $62e8: $80
	ld   de, $0280                                   ; $62e9: $11 $80 $02
	add  b                                           ; $62ec: $80
	ld   d, b                                        ; $62ed: $50
	add  b                                           ; $62ee: $80
	nop                                              ; $62ef: $00
	ld   bc, $4044                                   ; $62f0: $01 $44 $40
	add  b                                           ; $62f3: $80
	jr   nz, @-$7e                                   ; $62f4: $20 $80

	db   $10                                         ; $62f6: $10
	add  b                                           ; $62f7: $80
	and  b                                           ; $62f8: $a0
	add  d                                           ; $62f9: $82
	nop                                              ; $62fa: $00
	inc  c                                           ; $62fb: $0c
	ld   [$1800], sp                                 ; $62fc: $08 $00 $18
	nop                                              ; $62ff: $00
	ld   b, a                                        ; $6300: $47
	ld   hl, sp+$00                                  ; $6301: $f8 $00
	ld   hl, sp+$00                                  ; $6303: $f8 $00
	ld   hl, sp+$10                                  ; $6305: $f8 $10
	ld   hl, sp-$48                                  ; $6307: $f8 $b8
	add  b                                           ; $6309: $80
	ldh  [$80], a                                    ; $630a: $e0 $80
	sbc  b                                           ; $630c: $98
	add  b                                           ; $630d: $80
	ld   h, a                                        ; $630e: $67
	ld   [bc], a                                     ; $630f: $02
	sbc  a                                           ; $6310: $9f
	ld   a, [bc]                                     ; $6311: $0a
	sub  l                                           ; $6312: $95
	add  b                                           ; $6313: $80
	xor  d                                           ; $6314: $aa
	add  b                                           ; $6315: $80
	sub  l                                           ; $6316: $95
	add  b                                           ; $6317: $80
	add  b                                           ; $6318: $80
	nop                                              ; $6319: $00
	nop                                              ; $631a: $00
	add  b                                           ; $631b: $80
	ld   d, l                                        ; $631c: $55
	add  b                                           ; $631d: $80
	xor  d                                           ; $631e: $aa
	add  c                                           ; $631f: $81
	rst  $38                                         ; $6320: $ff
	nop                                              ; $6321: $00
	rlca                                             ; $6322: $07
	adc  l                                           ; $6323: $8d
	ld   hl, sp+$00                                  ; $6324: $f8 $00
	cp   a                                           ; $6326: $bf
	add  b                                           ; $6327: $80
	xor  d                                           ; $6328: $aa
	add  b                                           ; $6329: $80
	sub  l                                           ; $632a: $95
	add  b                                           ; $632b: $80
	xor  d                                           ; $632c: $aa
	add  b                                           ; $632d: $80
	sub  l                                           ; $632e: $95
	add  b                                           ; $632f: $80
	xor  b                                           ; $6330: $a8
	add  b                                           ; $6331: $80
	sub  b                                           ; $6332: $90
	add  b                                           ; $6333: $80
	and  b                                           ; $6334: $a0
	ld   [bc], a                                     ; $6335: $02
	add  b                                           ; $6336: $80
	ld   a, a                                        ; $6337: $7f
	ld   c, a                                        ; $6338: $4f
	add  b                                           ; $6339: $80
	xor  a                                           ; $633a: $af
	ld   [bc], a                                     ; $633b: $02
	ld   c, a                                        ; $633c: $4f
	ld   b, l                                        ; $633d: $45
	dec  b                                           ; $633e: $05
	add  b                                           ; $633f: $80
	ld   a, [bc]                                     ; $6340: $0a
	add  b                                           ; $6341: $80
	ld   b, l                                        ; $6342: $45
	add  b                                           ; $6343: $80
	xor  d                                           ; $6344: $aa
	add  b                                           ; $6345: $80
	ret  nz                                          ; $6346: $c0

	ld   bc, $2be0                                   ; $6347: $01 $e0 $2b
	add  c                                           ; $634a: $81
	nop                                              ; $634b: $00
	ld   [$0080], sp                                 ; $634c: $08 $80 $00
	pop  bc                                          ; $634f: $c1
	nop                                              ; $6350: $00
	jp   nz, $8700                                   ; $6351: $c2 $00 $87

	nop                                              ; $6354: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6355: $cf
	add  c                                           ; $6356: $81
	nop                                              ; $6357: $00
	nop                                              ; $6358: $00
	cp   $83                                         ; $6359: $fe $83
	nop                                              ; $635b: $00
	ld   h, [hl]                                     ; $635c: $66
	ld   d, l                                        ; $635d: $55
	nop                                              ; $635e: $00
	xor  e                                           ; $635f: $ab
	nop                                              ; $6360: $00
	rst  $38                                         ; $6361: $ff
	nop                                              ; $6362: $00
	rst  $38                                         ; $6363: $ff
	nop                                              ; $6364: $00
	ld   a, a                                        ; $6365: $7f
	nop                                              ; $6366: $00
	jp   z, $1f00                                    ; $6367: $ca $00 $1f

	nop                                              ; $636a: $00
	ccf                                              ; $636b: $3f
	nop                                              ; $636c: $00
	ccf                                              ; $636d: $3f
	nop                                              ; $636e: $00
	ld   a, [hl-]                                    ; $636f: $3a
	nop                                              ; $6370: $00
	cpl                                              ; $6371: $2f
	nop                                              ; $6372: $00
	cp   a                                           ; $6373: $bf
	nop                                              ; $6374: $00
	rst  $38                                         ; $6375: $ff
	nop                                              ; $6376: $00
	sub  h                                           ; $6377: $94
	nop                                              ; $6378: $00
	pop  bc                                          ; $6379: $c1
	nop                                              ; $637a: $00
	add  c                                           ; $637b: $81
	nop                                              ; $637c: $00
	ld   de, $3200                                   ; $637d: $11 $00 $32
	nop                                              ; $6380: $00
	di                                               ; $6381: $f3
	nop                                              ; $6382: $00
	ei                                               ; $6383: $fb
	nop                                              ; $6384: $00
	add  b                                           ; $6385: $80
	nop                                              ; $6386: $00
	sub  $00                                         ; $6387: $d6 $00
	db   $fc                                         ; $6389: $fc
	nop                                              ; $638a: $00
	ld   hl, sp+$00                                  ; $638b: $f8 $00
	pop  af                                          ; $638d: $f1
	nop                                              ; $638e: $00
	db   $e3                                         ; $638f: $e3
	nop                                              ; $6390: $00
	cp   a                                           ; $6391: $bf
	nop                                              ; $6392: $00
	rst  $38                                         ; $6393: $ff
	nop                                              ; $6394: $00
	ld   bc, $b400                                   ; $6395: $01 $00 $b4
	nop                                              ; $6398: $00
	rra                                              ; $6399: $1f
	nop                                              ; $639a: $00
	rra                                              ; $639b: $1f
	nop                                              ; $639c: $00
	rra                                              ; $639d: $1f
	nop                                              ; $639e: $00
	ld   a, [hl+]                                    ; $639f: $2a
	nop                                              ; $63a0: $00
	ccf                                              ; $63a1: $3f
	nop                                              ; $63a2: $00
	cp   a                                           ; $63a3: $bf
	nop                                              ; $63a4: $00
	rst  $38                                         ; $63a5: $ff
	nop                                              ; $63a6: $00
	sub  h                                           ; $63a7: $94
	nop                                              ; $63a8: $00
	pop  bc                                          ; $63a9: $c1
	nop                                              ; $63aa: $00
	add  e                                           ; $63ab: $83
	nop                                              ; $63ac: $00
	inc  de                                          ; $63ad: $13
	nop                                              ; $63ae: $00
	ld   [hl+], a                                    ; $63af: $22
	nop                                              ; $63b0: $00
	db   $e3                                         ; $63b1: $e3
	nop                                              ; $63b2: $00
	ei                                               ; $63b3: $fb
	nop                                              ; $63b4: $00
	db   $fc                                         ; $63b5: $fc
	nop                                              ; $63b6: $00
	xor  b                                           ; $63b7: $a8
	nop                                              ; $63b8: $00
	cp   $00                                         ; $63b9: $fe $00
	ld   hl, sp+$00                                  ; $63bb: $f8 $00
	pop  af                                          ; $63bd: $f1
	nop                                              ; $63be: $00
	and  e                                           ; $63bf: $a3
	nop                                              ; $63c0: $00
	rst  $38                                         ; $63c1: $ff
	nop                                              ; $63c2: $00
	rst  $38                                         ; $63c3: $ff
	add  c                                           ; $63c4: $81
	nop                                              ; $63c5: $00
	ld   de, $00b5                                   ; $63c6: $11 $b5 $00
	ld   e, $00                                      ; $63c9: $1e $00
	ld   a, $00                                      ; $63cb: $3e $00
	ccf                                              ; $63cd: $3f
	nop                                              ; $63ce: $00
	ld   a, [hl+]                                    ; $63cf: $2a
	nop                                              ; $63d0: $00
	ccf                                              ; $63d1: $3f
	nop                                              ; $63d2: $00
	cp   a                                           ; $63d3: $bf
	nop                                              ; $63d4: $00
	rra                                              ; $63d5: $1f
	nop                                              ; $63d6: $00
	or   h                                           ; $63d7: $b4
	ld   b, b                                        ; $63d8: $40
	add  b                                           ; $63d9: $80
	nop                                              ; $63da: $00
	dec  e                                           ; $63db: $1d
	ret  nz                                          ; $63dc: $c0

	nop                                              ; $63dd: $00
	ld   de, $3200                                   ; $63de: $11 $00 $32
	nop                                              ; $63e1: $00
	di                                               ; $63e2: $f3
	nop                                              ; $63e3: $00
	ei                                               ; $63e4: $fb
	nop                                              ; $63e5: $00
	db   $fc                                         ; $63e6: $fc
	nop                                              ; $63e7: $00
	xor  d                                           ; $63e8: $aa
	nop                                              ; $63e9: $00
	ld   hl, sp+$00                                  ; $63ea: $f8 $00
	ld   hl, sp+$00                                  ; $63ec: $f8 $00
	db   $fd                                         ; $63ee: $fd
	nop                                              ; $63ef: $00
	xor  e                                           ; $63f0: $ab
	nop                                              ; $63f1: $00
	rst  $38                                         ; $63f2: $ff
	nop                                              ; $63f3: $00
	rst  $38                                         ; $63f4: $ff
	nop                                              ; $63f5: $00
	ld   bc, $f400                                   ; $63f6: $01 $00 $f4
	dec  b                                           ; $63f9: $05
	add  b                                           ; $63fa: $80
	ld   a, [bc]                                     ; $63fb: $0a
	add  b                                           ; $63fc: $80
	dec  b                                           ; $63fd: $05
	add  b                                           ; $63fe: $80

Jump_078_63ff:
	ld   a, [bc]                                     ; $63ff: $0a
	add  b                                           ; $6400: $80
	dec  b                                           ; $6401: $05
	add  b                                           ; $6402: $80
	ld   a, [bc]                                     ; $6403: $0a
	add  b                                           ; $6404: $80
	inc  b                                           ; $6405: $04
	inc  bc                                          ; $6406: $03
	nop                                              ; $6407: $00
	ld   bc, $54a5                                   ; $6408: $01 $a5 $54
	add  b                                           ; $640b: $80
	xor  d                                           ; $640c: $aa
	add  b                                           ; $640d: $80
	ld   d, h                                        ; $640e: $54
	add  b                                           ; $640f: $80
	and  b                                           ; $6410: $a0
	ld   [$4f40], sp                                 ; $6411: $08 $40 $4f
	adc  [hl]                                        ; $6414: $8e
	cp   [hl]                                        ; $6415: $be
	ccf                                              ; $6416: $3f
	ld   a, a                                        ; $6417: $7f
	ld   a, [hl]                                     ; $6418: $7e
	cp   $ff                                         ; $6419: $fe $ff
	add  l                                           ; $641b: $85
	nop                                              ; $641c: $00
	ld   bc, $50af                                   ; $641d: $01 $af $50
	add  b                                           ; $6420: $80
	xor  b                                           ; $6421: $a8
	add  b                                           ; $6422: $80
	ld   d, b                                        ; $6423: $50
	add  b                                           ; $6424: $80
	xor  b                                           ; $6425: $a8
	nop                                              ; $6426: $00
	rst  $38                                         ; $6427: $ff
	add  h                                           ; $6428: $84
	nop                                              ; $6429: $00
	add  hl, bc                                      ; $642a: $09
	ld   bc, $54a9                                   ; $642b: $01 $a9 $54
	inc  l                                           ; $642e: $2c
	jr   z, jr_078_6489                              ; $642f: $28 $58

	ld   b, b                                        ; $6431: $40
	jr   nz, jr_078_6434                             ; $6432: $20 $00

jr_078_6434:
	ret  nz                                          ; $6434: $c0

	add  b                                           ; $6435: $80
	rra                                              ; $6436: $1f
	add  b                                           ; $6437: $80
	ccf                                              ; $6438: $3f
	add  d                                           ; $6439: $82
	rst  $38                                         ; $643a: $ff
	add  [hl]                                        ; $643b: $86
	nop                                              ; $643c: $00
	add  d                                           ; $643d: $82
	rst  $38                                         ; $643e: $ff
	add  b                                           ; $643f: $80
	cp   $80                                         ; $6440: $fe $80
	db   $fc                                         ; $6442: $fc
	add  b                                           ; $6443: $80
	inc  bc                                          ; $6444: $03
	add  b                                           ; $6445: $80
	rlca                                             ; $6446: $07
	add  b                                           ; $6447: $80
	rrca                                             ; $6448: $0f
	add  b                                           ; $6449: $80
	rra                                              ; $644a: $1f
	add  b                                           ; $644b: $80
	add  b                                           ; $644c: $80
	add  h                                           ; $644d: $84
	nop                                              ; $644e: $00
	add  [hl]                                        ; $644f: $86
	rst  $38                                         ; $6450: $ff
	add  d                                           ; $6451: $82
	nop                                              ; $6452: $00
	add  d                                           ; $6453: $82
	ld   bc, $f884                                   ; $6454: $01 $84 $f8
	inc  b                                           ; $6457: $04
	ldh  a, [$f2]                                    ; $6458: $f0 $f2
	ld   a, l                                        ; $645a: $7d
	ld   a, d                                        ; $645b: $7a
	ld   a, [$fd80]                                  ; $645c: $fa $80 $fd
	add  b                                           ; $645f: $80
	ld   a, [$ff00]                                  ; $6460: $fa $00 $ff
	add  l                                           ; $6463: $85
	nop                                              ; $6464: $00
	ld   bc, $50ae                                   ; $6465: $01 $ae $50
	add  b                                           ; $6468: $80
	and  b                                           ; $6469: $a0
	add  b                                           ; $646a: $80
	ld   d, b                                        ; $646b: $50
	add  b                                           ; $646c: $80
	and  b                                           ; $646d: $a0
	nop                                              ; $646e: $00
	rst  $38                                         ; $646f: $ff
	add  l                                           ; $6470: $85
	nop                                              ; $6471: $00
	nop                                              ; $6472: $00
	ld   bc, $0085                                   ; $6473: $01 $85 $00
	ld   bc, $05fa                                   ; $6476: $01 $fa $05
	add  b                                           ; $6479: $80
	ld   a, [bc]                                     ; $647a: $0a
	add  b                                           ; $647b: $80
	dec  b                                           ; $647c: $05
	add  b                                           ; $647d: $80
	ld   a, [bc]                                     ; $647e: $0a
	nop                                              ; $647f: $00
	rst  $38                                         ; $6480: $ff
	add  b                                           ; $6481: $80
	nop                                              ; $6482: $00
	add  d                                           ; $6483: $82
	inc  bc                                          ; $6484: $03
	ld   [bc], a                                     ; $6485: $02
	ld   bc, $7e81                                   ; $6486: $01 $81 $7e

jr_078_6489:
	add  b                                           ; $6489: $80
	cp   $01                                         ; $648a: $fe $01
	ld   a, [hl]                                     ; $648c: $7e
	ld   a, a                                        ; $648d: $7f
	add  c                                           ; $648e: $81
	rst  $38                                         ; $648f: $ff
	ld   [bc], a                                     ; $6490: $02
	nop                                              ; $6491: $00
	ld   bc, $80fe                                   ; $6492: $01 $fe $80
	rst  $38                                         ; $6495: $ff
	add  b                                           ; $6496: $80
	cp   $00                                         ; $6497: $fe $00
	rst  $38                                         ; $6499: $ff
	add  a                                           ; $649a: $87
	nop                                              ; $649b: $00
	ld   [$a050], sp                                 ; $649c: $08 $50 $a0
	ld   e, b                                        ; $649f: $58
	ld   d, b                                        ; $64a0: $50
	and  h                                           ; $64a1: $a4
	and  b                                           ; $64a2: $a0
	db   $fd                                         ; $64a3: $fd
	nop                                              ; $64a4: $00
	ld   bc, $008b                                   ; $64a5: $01 $8b $00
	ld   bc, $01fe                                   ; $64a8: $01 $fe $01
	add  b                                           ; $64ab: $80
	nop                                              ; $64ac: $00
	add  b                                           ; $64ad: $80
	ld   bc, $8001                                   ; $64ae: $01 $01 $80
	nop                                              ; $64b1: $00
	add  c                                           ; $64b2: $81
	ld   a, [hl]                                     ; $64b3: $7e
	add  b                                           ; $64b4: $80
	ld   a, $80                                      ; $64b5: $3e $80
	ld   e, $09                                      ; $64b7: $1e $09
	ld   c, $ae                                      ; $64b9: $0e $ae
	ld   d, b                                        ; $64bb: $50
	or   b                                           ; $64bc: $b0
	cp   b                                           ; $64bd: $b8
	ld   e, b                                        ; $64be: $58
	ld   e, h                                        ; $64bf: $5c
	cp   h                                           ; $64c0: $bc
	cp   [hl]                                        ; $64c1: $be
	rrca                                             ; $64c2: $0f
	adc  l                                           ; $64c3: $8d
	nop                                              ; $64c4: $00
	nop                                              ; $64c5: $00
	ldh  a, [$81]                                    ; $64c6: $f0 $81
	nop                                              ; $64c8: $00
	rrca                                             ; $64c9: $0f
	ld   bc, $0200                                   ; $64ca: $01 $00 $02
	nop                                              ; $64cd: $00
	inc  b                                           ; $64ce: $04
	nop                                              ; $64cf: $00
	db   $10                                         ; $64d0: $10
	ld   [$1030], sp                                 ; $64d1: $08 $30 $10
	ccf                                              ; $64d4: $3f
	nop                                              ; $64d5: $00
	ld   a, [hl+]                                    ; $64d6: $2a
	dec  d                                           ; $64d7: $15
	db   $eb                                         ; $64d8: $eb
	dec  hl                                          ; $64d9: $2b
	add  b                                           ; $64da: $80
	ld   d, l                                        ; $64db: $55
	add  b                                           ; $64dc: $80
	dec  hl                                          ; $64dd: $2b
	add  b                                           ; $64de: $80
	ld   d, l                                        ; $64df: $55
	add  b                                           ; $64e0: $80
	dec  hl                                          ; $64e1: $2b
	add  b                                           ; $64e2: $80
	ld   d, l                                        ; $64e3: $55
	nop                                              ; $64e4: $00
	rst  $38                                         ; $64e5: $ff
	add  b                                           ; $64e6: $80
	nop                                              ; $64e7: $00
	add  h                                           ; $64e8: $84
	rst  $38                                         ; $64e9: $ff
	add  b                                           ; $64ea: $80
	cp   $80                                         ; $64eb: $fe $80
	db   $fc                                         ; $64ed: $fc
	add  b                                           ; $64ee: $80
	ld   hl, sp-$80                                  ; $64ef: $f8 $80
	ldh  a, [$80]                                    ; $64f1: $f0 $80
	nop                                              ; $64f3: $00
	add  b                                           ; $64f4: $80
	ret  nz                                          ; $64f5: $c0

	add  b                                           ; $64f6: $80
	add  b                                           ; $64f7: $80
	adc  d                                           ; $64f8: $8a
	nop                                              ; $64f9: $00
	add  d                                           ; $64fa: $82
	rrca                                             ; $64fb: $0f
	add  h                                           ; $64fc: $84
	rra                                              ; $64fd: $1f
	add  d                                           ; $64fe: $82
	ccf                                              ; $64ff: $3f
	ld   [bc], a                                     ; $6500: $02
	nop                                              ; $6501: $00
	ld   [bc], a                                     ; $6502: $02
	db   $fd                                         ; $6503: $fd
	add  b                                           ; $6504: $80
	ld   a, [$fd80]                                  ; $6505: $fa $80 $fd
	add  b                                           ; $6508: $80
	ld   a, [$fd80]                                  ; $6509: $fa $80 $fd
	add  b                                           ; $650c: $80
	ld   a, [$fd80]                                  ; $650d: $fa $80 $fd
	inc  bc                                          ; $6510: $03
	rst  $38                                         ; $6511: $ff
	nop                                              ; $6512: $00
	xor  [hl]                                        ; $6513: $ae
	ld   d, b                                        ; $6514: $50
	add  b                                           ; $6515: $80
	and  b                                           ; $6516: $a0
	add  b                                           ; $6517: $80
	ld   d, b                                        ; $6518: $50
	add  b                                           ; $6519: $80
	and  b                                           ; $651a: $a0
	add  b                                           ; $651b: $80
	ld   d, b                                        ; $651c: $50
	add  b                                           ; $651d: $80
	and  b                                           ; $651e: $a0
	add  b                                           ; $651f: $80
	ld   d, b                                        ; $6520: $50
	nop                                              ; $6521: $00
	cp   $80                                         ; $6522: $fe $80
	nop                                              ; $6524: $00
	ld   [bc], a                                     ; $6525: $02
	ld   a, a                                        ; $6526: $7f
	ld   a, [hl]                                     ; $6527: $7e
	ld   a, $80                                      ; $6528: $3e $80
	ccf                                              ; $652a: $3f
	add  b                                           ; $652b: $80
	ld   a, $01                                      ; $652c: $3e $01
	ccf                                              ; $652e: $3f
	rra                                              ; $652f: $1f
	add  b                                           ; $6530: $80
	ld   e, $81                                      ; $6531: $1e $81
	rra                                              ; $6533: $1f
	ld   [bc], a                                     ; $6534: $02
	nop                                              ; $6535: $00
	xor  a                                           ; $6536: $af
	ld   d, b                                        ; $6537: $50
	add  b                                           ; $6538: $80
	and  b                                           ; $6539: $a0
	add  b                                           ; $653a: $80
	ld   d, b                                        ; $653b: $50
	add  b                                           ; $653c: $80
	and  b                                           ; $653d: $a0
	add  b                                           ; $653e: $80
	ld   d, b                                        ; $653f: $50
	add  b                                           ; $6540: $80
	and  b                                           ; $6541: $a0
	add  b                                           ; $6542: $80
	ld   d, b                                        ; $6543: $50
	ld   [$00ff], sp                                 ; $6544: $08 $ff $00
	add  b                                           ; $6547: $80
	nop                                              ; $6548: $00
	ld   b, b                                        ; $6549: $40
	nop                                              ; $654a: $00
	jr   nz, jr_078_654d                             ; $654b: $20 $00

jr_078_654d:
	db   $10                                         ; $654d: $10
	add  c                                           ; $654e: $81
	nop                                              ; $654f: $00
	dec  b                                           ; $6550: $05
	ld   [$0400], sp                                 ; $6551: $08 $00 $04
	nop                                              ; $6554: $00
	db   $fc                                         ; $6555: $fc
	nop                                              ; $6556: $00
	add  a                                           ; $6557: $87
	rst  $38                                         ; $6558: $ff
	add  b                                           ; $6559: $80
	ld   a, [$d580]                                  ; $655a: $fa $80 $d5
	add  b                                           ; $655d: $80
	xor  d                                           ; $655e: $aa
	add  b                                           ; $655f: $80
	ld   d, l                                        ; $6560: $55
	add  d                                           ; $6561: $82
	rst  $38                                         ; $6562: $ff
	add  b                                           ; $6563: $80
	ld   a, [$5580]                                  ; $6564: $fa $80 $55
	add  b                                           ; $6567: $80
	xor  d                                           ; $6568: $aa
	add  b                                           ; $6569: $80
	ld   d, l                                        ; $656a: $55
	inc  bc                                          ; $656b: $03
	xor  d                                           ; $656c: $aa
	or   l                                           ; $656d: $b5
	ld   c, a                                        ; $656e: $4f
	ld   d, b                                        ; $656f: $50
	add  d                                           ; $6570: $82
	rst  $38                                         ; $6571: $ff
	add  b                                           ; $6572: $80
	cp   a                                           ; $6573: $bf
	add  b                                           ; $6574: $80
	ld   d, l                                        ; $6575: $55
	add  b                                           ; $6576: $80
	xor  d                                           ; $6577: $aa
	add  b                                           ; $6578: $80
	ld   d, l                                        ; $6579: $55
	inc  bc                                          ; $657a: $03
	xor  d                                           ; $657b: $aa
	ld   d, l                                        ; $657c: $55
	rst  $38                                         ; $657d: $ff
	nop                                              ; $657e: $00
	add  [hl]                                        ; $657f: $86
	rst  $38                                         ; $6580: $ff
	add  b                                           ; $6581: $80
	cp   a                                           ; $6582: $bf
	add  b                                           ; $6583: $80
	ld   d, a                                        ; $6584: $57
	ld   bc, $54ab                                   ; $6585: $01 $ab $54
	add  d                                           ; $6588: $82
	rst  $38                                         ; $6589: $ff
	nop                                              ; $658a: $00
	nop                                              ; $658b: $00
	adc  d                                           ; $658c: $8a
	cp   $00                                         ; $658d: $fe $00
	rst  $38                                         ; $658f: $ff
	add  [hl]                                        ; $6590: $86
	nop                                              ; $6591: $00
	add  e                                           ; $6592: $83
	rst  $38                                         ; $6593: $ff
	nop                                              ; $6594: $00
	nop                                              ; $6595: $00
	add  d                                           ; $6596: $82
	rst  $38                                         ; $6597: $ff
	nop                                              ; $6598: $00
	nop                                              ; $6599: $00
	adc  e                                           ; $659a: $8b
	rst  $38                                         ; $659b: $ff
	adc  [hl]                                        ; $659c: $8e
	nop                                              ; $659d: $00
	add  d                                           ; $659e: $82
	rst  $38                                         ; $659f: $ff
	add  b                                           ; $65a0: $80
	xor  d                                           ; $65a1: $aa
	add  b                                           ; $65a2: $80
	ld   d, l                                        ; $65a3: $55
	add  b                                           ; $65a4: $80
	xor  d                                           ; $65a5: $aa
	add  b                                           ; $65a6: $80
	ld   d, l                                        ; $65a7: $55
	inc  bc                                          ; $65a8: $03
	xor  d                                           ; $65a9: $aa
	ld   d, l                                        ; $65aa: $55
	rst  $38                                         ; $65ab: $ff
	ld   bc, $008d                                   ; $65ac: $01 $8d $00
	ld   bc, $0709                                   ; $65af: $01 $09 $07
	add  b                                           ; $65b2: $80
	dec  bc                                          ; $65b3: $0b
	add  b                                           ; $65b4: $80
	rlca                                             ; $65b5: $07
	add  b                                           ; $65b6: $80
	dec  bc                                          ; $65b7: $0b
	add  b                                           ; $65b8: $80
	rlca                                             ; $65b9: $07
	add  b                                           ; $65ba: $80
	dec  bc                                          ; $65bb: $0b
	add  b                                           ; $65bc: $80
	rlca                                             ; $65bd: $07
	add  b                                           ; $65be: $80
	dec  bc                                          ; $65bf: $0b
	nop                                              ; $65c0: $00
	ldh  a, [$8d]                                    ; $65c1: $f0 $8d
	nop                                              ; $65c3: $00
	nop                                              ; $65c4: $00
	rra                                              ; $65c5: $1f
	adc  l                                           ; $65c6: $8d
	and  b                                           ; $65c7: $a0
	db   $10                                         ; $65c8: $10
	xor  b                                           ; $65c9: $a8
	rra                                              ; $65ca: $1f
	rlca                                             ; $65cb: $07
	rra                                              ; $65cc: $1f
	rlca                                             ; $65cd: $07
	rra                                              ; $65ce: $1f
	rlca                                             ; $65cf: $07
	rra                                              ; $65d0: $1f
	rlca                                             ; $65d1: $07
	rra                                              ; $65d2: $1f
	rlca                                             ; $65d3: $07
	rra                                              ; $65d4: $1f
	rlca                                             ; $65d5: $07
	rra                                              ; $65d6: $1f
	rlca                                             ; $65d7: $07
	rra                                              ; $65d8: $1f
	ld   l, a                                        ; $65d9: $6f
	adc  l                                           ; $65da: $8d
	nop                                              ; $65db: $00
	nop                                              ; $65dc: $00
	add  b                                           ; $65dd: $80
	adc  b                                           ; $65de: $88
	nop                                              ; $65df: $00
	nop                                              ; $65e0: $00
	rrca                                             ; $65e1: $0f
	add  b                                           ; $65e2: $80
	rlca                                             ; $65e3: $07
	add  b                                           ; $65e4: $80
	dec  bc                                          ; $65e5: $0b
	nop                                              ; $65e6: $00
	ld   c, $84                                      ; $65e7: $0e $84
	nop                                              ; $65e9: $00
	add  b                                           ; $65ea: $80
	ld   c, $9f                                      ; $65eb: $0e $9f
	cp   $80                                         ; $65ed: $fe $80
	ld   a, [$f480]                                  ; $65ef: $fa $80 $f4
	add  b                                           ; $65f2: $80
	xor  d                                           ; $65f3: $aa
	nop                                              ; $65f4: $00
	rst  $38                                         ; $65f5: $ff
	add  b                                           ; $65f6: $80
	ld   [bc], a                                     ; $65f7: $02
	ld   bc, $1415                                   ; $65f8: $01 $15 $14
	add  b                                           ; $65fb: $80
	ld   [bc], a                                     ; $65fc: $02
	add  b                                           ; $65fd: $80
	inc  b                                           ; $65fe: $04
	add  b                                           ; $65ff: $80
	ld   [bc], a                                     ; $6600: $02
	add  b                                           ; $6601: $80
	inc  b                                           ; $6602: $04
	add  b                                           ; $6603: $80
	ld   [bc], a                                     ; $6604: $02
	add  b                                           ; $6605: $80
	nop                                              ; $6606: $00
	adc  e                                           ; $6607: $8b
	cp   $01                                         ; $6608: $fe $01
	nop                                              ; $660a: $00
	cp   $e1                                         ; $660b: $fe $e1
	ld   bc, $0086                                   ; $660d: $01 $86 $00
	add  [hl]                                        ; $6610: $86
	rlca                                             ; $6611: $07
	add  [hl]                                        ; $6612: $86
	nop                                              ; $6613: $00
	add  [hl]                                        ; $6614: $86
	rst  $38                                         ; $6615: $ff
	add  [hl]                                        ; $6616: $86
	nop                                              ; $6617: $00
	rlca                                             ; $6618: $07
	ldh  [rIE], a                                    ; $6619: $e0 $ff
	rst  $20                                         ; $661b: $e7
	rst  $38                                         ; $661c: $ff
	ld   sp, hl                                      ; $661d: $f9
	rst  $38                                         ; $661e: $ff
	cp   $ff                                         ; $661f: $fe $ff
	add  [hl]                                        ; $6621: $86
	nop                                              ; $6622: $00
	ld   [$000f], sp                                 ; $6623: $08 $0f $00
	inc  c                                           ; $6626: $0c
	ret  nz                                          ; $6627: $c0

	jp   Jump_078_70f0                               ; $6628: $c3 $f0 $70


	db   $fc                                         ; $662b: $fc
	ld   a, h                                        ; $662c: $7c
	add  l                                           ; $662d: $85
	nop                                              ; $662e: $00
	ld   bc, $3fc0                                   ; $662f: $01 $c0 $3f
	add  b                                           ; $6632: $80
	rrca                                             ; $6633: $0f
	add  b                                           ; $6634: $80
	inc  bc                                          ; $6635: $03
	ld   [bc], a                                     ; $6636: $02
	pop  bc                                          ; $6637: $c1
	ld   bc, $853f                                   ; $6638: $01 $3f $85
	nop                                              ; $663b: $00
	ld   b, $0f                                      ; $663c: $06 $0f
	inc  bc                                          ; $663e: $03
	dec  bc                                          ; $663f: $0b
	add  b                                           ; $6640: $80
	add  [hl]                                        ; $6641: $86
	ldh  [$e1], a                                    ; $6642: $e0 $e1
	add  b                                           ; $6644: $80
	ld   hl, sp-$7b                                  ; $6645: $f8 $85
	nop                                              ; $6647: $00
	inc  bc                                          ; $6648: $03

jr_078_6649:
	ld   bc, $feff                                   ; $6649: $01 $ff $fe
	rst  $38                                         ; $664c: $ff
	add  b                                           ; $664d: $80
	ld   a, a                                        ; $664e: $7f
	ld   [bc], a                                     ; $664f: $02
	sbc  a                                           ; $6650: $9f
	rra                                              ; $6651: $1f
	ld   a, a                                        ; $6652: $7f
	add  l                                           ; $6653: $85
	nop                                              ; $6654: $00
	inc  bc                                          ; $6655: $03
	ld   h, b                                        ; $6656: $60
	ld   e, a                                        ; $6657: $5f
	daa                                              ; $6658: $27
	rst  $20                                         ; $6659: $e7
	add  b                                           ; $665a: $80
	di                                               ; $665b: $f3
	add  b                                           ; $665c: $80
	db   $fd                                         ; $665d: $fd
	nop                                              ; $665e: $00
	rst  $38                                         ; $665f: $ff
	add  l                                           ; $6660: $85
	nop                                              ; $6661: $00
	ld   bc, $fe01                                   ; $6662: $01 $01 $fe
	add  d                                           ; $6665: $82
	rst  $38                                         ; $6666: $ff
	add  b                                           ; $6667: $80
	ld   hl, sp+$00                                  ; $6668: $f8 $00
	rst  $38                                         ; $666a: $ff
	add  l                                           ; $666b: $85
	nop                                              ; $666c: $00
	ld   bc, $7887                                   ; $666d: $01 $87 $78
	add  b                                           ; $6670: $80
	daa                                              ; $6671: $27
	add  b                                           ; $6672: $80
	rrca                                             ; $6673: $0f
	add  b                                           ; $6674: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6675: $cf
	nop                                              ; $6676: $00
	rst  $38                                         ; $6677: $ff
	add  l                                           ; $6678: $85
	nop                                              ; $6679: $00
	ld   bc, $fe01                                   ; $667a: $01 $01 $fe
	add  l                                           ; $667d: $85
	rst  $38                                         ; $667e: $ff
	add  [hl]                                        ; $667f: $86
	nop                                              ; $6680: $00
	nop                                              ; $6681: $00
	rst  $38                                         ; $6682: $ff
	add  d                                           ; $6683: $82
	ld   a, a                                        ; $6684: $7f
	add  b                                           ; $6685: $80
	ccf                                              ; $6686: $3f
	nop                                              ; $6687: $00
	rst  $38                                         ; $6688: $ff
	add  l                                           ; $6689: $85
	nop                                              ; $668a: $00
	ld   bc, $c13e                                   ; $668b: $01 $3e $c1
	add  b                                           ; $668e: $80
	or   $82                                         ; $668f: $f6 $82
	rst  $30                                         ; $6691: $f7
	nop                                              ; $6692: $00
	rst  $38                                         ; $6693: $ff
	add  l                                           ; $6694: $85
	nop                                              ; $6695: $00
	ld   bc, $fd02                                   ; $6696: $01 $02 $fd
	add  b                                           ; $6699: $80
	dec  a                                           ; $669a: $3d
	add  b                                           ; $669b: $80
	push bc                                          ; $669c: $c5
	add  b                                           ; $669d: $80
	ldh  a, [rP1]                                    ; $669e: $f0 $00
	rst  $38                                         ; $66a0: $ff
	add  l                                           ; $66a1: $85
	nop                                              ; $66a2: $00
	inc  bc                                          ; $66a3: $03
	inc  bc                                          ; $66a4: $03
	db   $fc                                         ; $66a5: $fc
	db   $fd                                         ; $66a6: $fd
	db   $fc                                         ; $66a7: $fc
	add  b                                           ; $66a8: $80
	ld   hl, sp+$02                                  ; $66a9: $f8 $02
	ld   a, [$fcf8]                                  ; $66ab: $fa $f8 $fc
	add  l                                           ; $66ae: $85
	nop                                              ; $66af: $00
	inc  bc                                          ; $66b0: $03
	ld   [$1f07], sp                                 ; $66b1: $08 $07 $1f
	rrca                                             ; $66b4: $0f
	add  b                                           ; $66b5: $80
	ld   l, $02                                      ; $66b6: $2e $02
	inc  a                                           ; $66b8: $3c
	inc  e                                           ; $66b9: $1c
	jr   c, jr_078_6649                              ; $66ba: $38 $8d

	rlca                                             ; $66bc: $07
	add  b                                           ; $66bd: $80
	ld   hl, sp-$80                                  ; $66be: $f8 $80
	ldh  a, [$80]                                    ; $66c0: $f0 $80
	ldh  [$82], a                                    ; $66c2: $e0 $82
	ret  nz                                          ; $66c4: $c0

	add  h                                           ; $66c5: $84
	add  b                                           ; $66c6: $80
	add  b                                           ; $66c7: $80
	rst  $38                                         ; $66c8: $ff
	add  b                                           ; $66c9: $80
	rra                                              ; $66ca: $1f
	add  b                                           ; $66cb: $80
	inc  bc                                          ; $66cc: $03
	adc  b                                           ; $66cd: $88
	nop                                              ; $66ce: $00
	dec  b                                           ; $66cf: $05
	ldh  [rIE], a                                    ; $66d0: $e0 $ff
	rst  $20                                         ; $66d2: $e7
	rst  $38                                         ; $66d3: $ff
	ld   hl, sp-$01                                  ; $66d4: $f8 $ff
	add  b                                           ; $66d6: $80
	ld   a, a                                        ; $66d7: $7f
	add  b                                           ; $66d8: $80
	rrca                                             ; $66d9: $0f
	add  b                                           ; $66da: $80
	ld   bc, $0082                                   ; $66db: $01 $82 $00
	dec  c                                           ; $66de: $0d
	rrca                                             ; $66df: $0f
	nop                                              ; $66e0: $00
	inc  c                                           ; $66e1: $0c
	ret  nz                                          ; $66e2: $c0

	jp   $30f0                                       ; $66e3: $c3 $f0 $30


	db   $fc                                         ; $66e6: $fc
	call z, $f3ff                                    ; $66e7: $cc $ff $f3
	rst  $38                                         ; $66ea: $ff
	inc  a                                           ; $66eb: $3c
	ccf                                              ; $66ec: $3f
	add  b                                           ; $66ed: $80
	rrca                                             ; $66ee: $0f
	inc  bc                                          ; $66ef: $03
	ret  nz                                          ; $66f0: $c0

	inc  a                                           ; $66f1: $3c
	inc  c                                           ; $66f2: $0c
	rrca                                             ; $66f3: $0f
	add  b                                           ; $66f4: $80
	rlca                                             ; $66f5: $07
	ld   a, [de]                                     ; $66f6: $1a
	pop  bc                                          ; $66f7: $c1
	ld   bc, $0030                                   ; $66f8: $01 $30 $00
	inc  c                                           ; $66fb: $0c
	ret  nz                                          ; $66fc: $c0

	jp   $30f0                                       ; $66fd: $c3 $f0 $30


	db   $fc                                         ; $6700: $fc
	inc  bc                                          ; $6701: $03
	rlca                                             ; $6702: $07
	scf                                              ; $6703: $37
	nop                                              ; $6704: $00
	ld   [$8680], sp                                 ; $6705: $08 $80 $86
	ldh  [$61], a                                    ; $6708: $e0 $61
	ld   a, b                                        ; $670a: $78
	jr   jr_078_6729                                 ; $670b: $18 $1c

	inc  b                                           ; $670d: $04
	rlca                                             ; $670e: $07
	jp   $c003                                       ; $670f: $c3 $03 $c0


	add  b                                           ; $6712: $80
	db   $fc                                         ; $6713: $fc
	add  b                                           ; $6714: $80
	ld   bc, $ff80                                   ; $6715: $01 $80 $ff
	add  b                                           ; $6718: $80
	ld   a, a                                        ; $6719: $7f
	ld   [$df1f], sp                                 ; $671a: $08 $1f $df
	rrca                                             ; $671d: $0f
	cpl                                              ; $671e: $2f
	inc  bc                                          ; $671f: $03
	dec  de                                          ; $6720: $1b
	ret  nz                                          ; $6721: $c0

	ccf                                              ; $6722: $3f
	rlca                                             ; $6723: $07
	add  b                                           ; $6724: $80
	ccf                                              ; $6725: $3f
	add  b                                           ; $6726: $80
	sbc  a                                           ; $6727: $9f
	add  b                                           ; $6728: $80

jr_078_6729:
	rst  $28                                         ; $6729: $ef
	add  b                                           ; $672a: $80
	di                                               ; $672b: $f3
	ld   bc, $f9ff                                   ; $672c: $01 $ff $f9
	add  b                                           ; $672f: $80
	ld   hl, sp+$01                                  ; $6730: $f8 $01
	rlca                                             ; $6732: $07
	ld   bc, $e780                                   ; $6733: $01 $80 $e7
	add  b                                           ; $6736: $80
	di                                               ; $6737: $f3
	add  b                                           ; $6738: $80
	ld   sp, hl                                      ; $6739: $f9
	add  b                                           ; $673a: $80
	db   $fc                                         ; $673b: $fc
	add  b                                           ; $673c: $80
	ldh  [c], a                                      ; $673d: $e2
	add  b                                           ; $673e: $80
	adc  a                                           ; $673f: $8f
	add  b                                           ; $6740: $80
	ld   a, a                                        ; $6741: $7f
	add  b                                           ; $6742: $80
	ccf                                              ; $6743: $3f
	add  b                                           ; $6744: $80
	db   $fc                                         ; $6745: $fc
	add  b                                           ; $6746: $80
	ldh  [$80], a                                    ; $6747: $e0 $80
	rrca                                             ; $6749: $0f
	add  d                                           ; $674a: $82
	ld   a, a                                        ; $674b: $7f
	add  b                                           ; $674c: $80
	ccf                                              ; $674d: $3f
	add  b                                           ; $674e: $80
	sbc  b                                           ; $674f: $98
	add  b                                           ; $6750: $80
	add  b                                           ; $6751: $80
	add  b                                           ; $6752: $80
	inc  bc                                          ; $6753: $03
	ld   bc, $3cfc                                   ; $6754: $01 $fc $3c
	add  c                                           ; $6757: $81
	rra                                              ; $6758: $1f
	add  c                                           ; $6759: $81
	rst  JumpTable                                         ; $675a: $df
	add  b                                           ; $675b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $675c: $cf
	add  d                                           ; $675d: $82
	nop                                              ; $675e: $00
	add  b                                           ; $675f: $80
	rst  $30                                         ; $6760: $f7
	add  b                                           ; $6761: $80
	ld   [hl], a                                     ; $6762: $77
	add  b                                           ; $6763: $80
	add  a                                           ; $6764: $87
	add  b                                           ; $6765: $80
	ldh  a, [$80]                                    ; $6766: $f0 $80
	or   $80                                         ; $6768: $f6 $80
	rst  $30                                         ; $676a: $f7
	add  b                                           ; $676b: $80
	ld   [hl], a                                     ; $676c: $77
	add  b                                           ; $676d: $80
	rlca                                             ; $676e: $07
	add  d                                           ; $676f: $82
	ei                                               ; $6770: $fb
	add  d                                           ; $6771: $82
	rst  $30                                         ; $6772: $f7
	ld   bc, $071f                                   ; $6773: $01 $1f $07
	add  b                                           ; $6776: $80
	jp   $f401                                       ; $6777: $c3 $01 $f4


	db   $ec                                         ; $677a: $ec
	add  b                                           ; $677b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $677c: $cf
	ld   [bc], a                                     ; $677d: $02
	inc  bc                                          ; $677e: $03
	nop                                              ; $677f: $00
	inc  b                                           ; $6780: $04
	add  b                                           ; $6781: $80
	ldh  a, [rSB]                                    ; $6782: $f0 $01
	ldh  [$e8], a                                    ; $6784: $e0 $e8
	add  b                                           ; $6786: $80
	ldh  [rSB], a                                    ; $6787: $e0 $01
	pop  bc                                          ; $6789: $c1
	pop  de                                          ; $678a: $d1
	add  b                                           ; $678b: $80
	pop  bc                                          ; $678c: $c1
	ld   [$2303], sp                                 ; $678d: $08 $03 $23
	add  a                                           ; $6790: $87
	inc  h                                           ; $6791: $24
	ld   e, h                                        ; $6792: $5c

jr_078_6793:
	jr   c, jr_078_680d                              ; $6793: $38 $78

	ld   [hl], b                                     ; $6795: $70
	ldh  a, [$81]                                    ; $6796: $f0 $81
	ldh  [rTAC], a                                   ; $6798: $e0 $07
	pop  hl                                          ; $679a: $e1
	ret  nz                                          ; $679b: $c0

	jp   nz, $8480                                   ; $679c: $c2 $80 $84

	inc  b                                           ; $679f: $04
	dec  c                                           ; $67a0: $0d
	or   $85                                         ; $67a1: $f6 $85
	rlca                                             ; $67a3: $07
	inc  b                                           ; $67a4: $04
	inc  bc                                          ; $67a5: $03
	rlca                                             ; $67a6: $07
	nop                                              ; $67a7: $00
	rlca                                             ; $67a8: $07
	dec  b                                           ; $67a9: $05
	add  c                                           ; $67aa: $81
	ld   b, $88                                      ; $67ab: $06 $88
	add  b                                           ; $67ad: $80
	ld   b, $20                                      ; $67ae: $06 $20
	ldh  [$81], a                                    ; $67b0: $e0 $81
	ld   a, a                                        ; $67b2: $7f
	inc  a                                           ; $67b3: $3c
	inc  bc                                          ; $67b4: $03
	ld   bc, $008b                                   ; $67b5: $01 $8b $00
	ld   [bc], a                                     ; $67b8: $02
	ld   [$f0f8], sp                                 ; $67b9: $08 $f8 $f0
	adc  l                                           ; $67bc: $8d
	nop                                              ; $67bd: $00
	add  b                                           ; $67be: $80
	ld   bc, $008c                                   ; $67bf: $01 $8c $00
	dec  b                                           ; $67c2: $05
	ldh  a, [rIE]                                    ; $67c3: $f0 $ff
	ld   [hl], e                                     ; $67c5: $73
	ld   a, a                                        ; $67c6: $7f
	inc  e                                           ; $67c7: $1c
	rra                                              ; $67c8: $1f
	add  b                                           ; $67c9: $80
	rlca                                             ; $67ca: $07
	add  b                                           ; $67cb: $80
	ld   bc, $0084                                   ; $67cc: $01 $84 $00
	dec  bc                                          ; $67cf: $0b
	rrca                                             ; $67d0: $0f
	nop                                              ; $67d1: $00
	ld   [$c5c4], sp                                 ; $67d2: $08 $c4 $c5
	rst  $30                                         ; $67d5: $f7
	inc  bc                                          ; $67d6: $03
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $67d7: $cf
	pop  bc                                          ; $67d8: $c1
	di                                               ; $67d9: $f3
	ld   [hl], e                                     ; $67da: $73
	ld   a, e                                        ; $67db: $7b
	add  b                                           ; $67dc: $80
	dec  de                                          ; $67dd: $1b
	add  b                                           ; $67de: $80
	dec  bc                                          ; $67df: $0b
	dec  bc                                          ; $67e0: $0b
	ld   b, $e0                                      ; $67e1: $06 $e0
	ld   hl, $0838                                   ; $67e3: $21 $38 $08
	ld   c, $22                                      ; $67e6: $0e $22
	db   $e3                                         ; $67e8: $e3
	ret  z                                           ; $67e9: $c8

	ld   hl, sp-$10                                  ; $67ea: $f8 $f0
	ld   hl, sp-$80                                  ; $67ec: $f8 $80
	ret  c                                           ; $67ee: $d8

	add  b                                           ; $67ef: $80
	ret  nz                                          ; $67f0: $c0

	ld   bc, $ff07                                   ; $67f1: $01 $07 $ff
	add  b                                           ; $67f4: $80
	ccf                                              ; $67f5: $3f
	inc  b                                           ; $67f6: $04
	rst  JumpTable                                         ; $67f7: $df
	rra                                              ; $67f8: $1f
	add  $e6                                         ; $67f9: $c6 $e6
	ldh  [$84], a                                    ; $67fb: $e0 $84
	nop                                              ; $67fd: $00
	ld   [bc], a                                     ; $67fe: $02

jr_078_67ff:
	rra                                              ; $67ff: $1f
	add  c                                           ; $6800: $81
	sbc  [hl]                                        ; $6801: $9e
	add  b                                           ; $6802: $80
	add  sp, -$80                                    ; $6803: $e8 $80
	ret  nz                                          ; $6805: $c0

	add  a                                           ; $6806: $87
	nop                                              ; $6807: $00
	add  b                                           ; $6808: $80
	rst  $38                                         ; $6809: $ff
	adc  h                                           ; $680a: $8c
	nop                                              ; $680b: $00
	add  b                                           ; $680c: $80

jr_078_680d:
	rst  $38                                         ; $680d: $ff
	add  b                                           ; $680e: $80
	jr   nc, jr_078_6793                             ; $680f: $30 $82

	ld   a, b                                        ; $6811: $78
	add  b                                           ; $6812: $80
	jr   nc, @-$7a                                   ; $6813: $30 $84

	nop                                              ; $6815: $00
	ld   [bc], a                                     ; $6816: $02
	rst  $38                                         ; $6817: $ff
	cp   $01                                         ; $6818: $fe $01
	adc  e                                           ; $681a: $8b
	nop                                              ; $681b: $00
	ld   [bc], a                                     ; $681c: $02
	rst  $38                                         ; $681d: $ff
	jr   nz, jr_078_67ff                             ; $681e: $20 $df

	add  b                                           ; $6820: $80
	ld   e, a                                        ; $6821: $5f
	add  b                                           ; $6822: $80
	ld   c, $87                                      ; $6823: $0e $87
	nop                                              ; $6825: $00
	inc  b                                           ; $6826: $04
	rst  $38                                         ; $6827: $ff
	ret  nz                                          ; $6828: $c0

	rlca                                             ; $6829: $07
	ld   b, [hl]                                     ; $682a: $46
	ld   c, $80                                      ; $682b: $0e $80
	inc  c                                           ; $682d: $0c
	ld   [bc], a                                     ; $682e: $02
	ld   l, b                                        ; $682f: $68
	ld   hl, sp-$20                                  ; $6830: $f8 $e0
	add  h                                           ; $6832: $84
	nop                                              ; $6833: $00
	rlca                                             ; $6834: $07
	ldh  [$f2], a                                    ; $6835: $e0 $f2
	ld   e, $3c                                      ; $6837: $1e $3c
	add  hl, sp                                      ; $6839: $39
	ld   e, c                                        ; $683a: $59
	ld   [hl], c                                     ; $683b: $71
	dec  a                                           ; $683c: $3d
	add  c                                           ; $683d: $81
	ld   a, l                                        ; $683e: $7d
	add  h                                           ; $683f: $84
	dec  a                                           ; $6840: $3d
	nop                                              ; $6841: $00
	sbc  b                                           ; $6842: $98
	add  c                                           ; $6843: $81
	ld   b, $02                                      ; $6844: $06 $02
	nop                                              ; $6846: $00
	rlca                                             ; $6847: $07
	ld   bc, $0685                                   ; $6848: $01 $85 $06
	ld   [bc], a                                     ; $684b: $02
	rlca                                             ; $684c: $07
	nop                                              ; $684d: $00
	rlca                                             ; $684e: $07
	add  c                                           ; $684f: $81
	nop                                              ; $6850: $00
	inc  b                                           ; $6851: $04
	inc  b                                           ; $6852: $04
	db   $fc                                         ; $6853: $fc
	ldh  a, [rIF]                                    ; $6854: $f0 $0f
	rlca                                             ; $6856: $07
	add  e                                           ; $6857: $83
	nop                                              ; $6858: $00
	inc  b                                           ; $6859: $04
	ldh  a, [rP1]                                    ; $685a: $f0 $00

jr_078_685c:
	ldh  [$1f], a                                    ; $685c: $e0 $1f
	rrca                                             ; $685e: $0f
	add  c                                           ; $685f: $81
	nop                                              ; $6860: $00
	inc  b                                           ; $6861: $04
	ld   [$e0f8], sp                                 ; $6862: $08 $f8 $e0
	rra                                              ; $6865: $1f

jr_078_6866:
	rrca                                             ; $6866: $0f
	add  e                                           ; $6867: $83
	nop                                              ; $6868: $00
	inc  c                                           ; $6869: $0c
	ld   b, b                                        ; $686a: $40
	ret  nz                                          ; $686b: $c0

	inc  b                                           ; $686c: $04
	db   $fc                                         ; $686d: $fc
	ld   [hl], b                                     ; $686e: $70
	rrca                                             ; $686f: $0f
	rlca                                             ; $6870: $07
	nop                                              ; $6871: $00
	db   $10                                         ; $6872: $10
	ldh  a, [$c0]                                    ; $6873: $f0 $c0
	ccf                                              ; $6875: $3f
	rra                                              ; $6876: $1f
	add  l                                           ; $6877: $85
	nop                                              ; $6878: $00
	ld   a, [bc]                                     ; $6879: $0a
	jr   nz, jr_078_685c                             ; $687a: $20 $e0

	add  c                                           ; $687c: $81
	ld   a, a                                        ; $687d: $7f
	inc  a                                           ; $687e: $3c
	inc  bc                                          ; $687f: $03
	ld   hl, $80e0                                   ; $6880: $21 $e0 $80
	ld   a, a                                        ; $6883: $7f
	ccf                                              ; $6884: $3f
	add  a                                           ; $6885: $87
	nop                                              ; $6886: $00
	ld   [$f808], sp                                 ; $6887: $08 $08 $f8
	ldh  [$1f], a                                    ; $688a: $e0 $1f
	ld   c, a                                        ; $688c: $4f
	ret  nz                                          ; $688d: $c0

	ld   bc, $72ff                                   ; $688e: $01 $ff $72
	add  a                                           ; $6891: $87
	dec  bc                                          ; $6892: $0b
	ld   b, $4b                                      ; $6893: $06 $4b
	rlc  a                                           ; $6895: $cb $07
	rst  $38                                         ; $6897: $ff
	ld   a, l                                        ; $6898: $7d
	inc  bc                                          ; $6899: $03
	add  $8d                                         ; $689a: $c6 $8d
	ret  nz                                          ; $689c: $c0

	nop                                              ; $689d: $00
	ld   hl, sp-$7f                                  ; $689e: $f8 $81
	nop                                              ; $68a0: $00
	add  b                                           ; $68a1: $80
	ld   h, c                                        ; $68a2: $61
	adc  b                                           ; $68a3: $88
	pop  hl                                          ; $68a4: $e1
	add  b                                           ; $68a5: $80
	nop                                              ; $68a6: $00
	add  c                                           ; $68a7: $81
	rrca                                             ; $68a8: $0f
	adc  c                                           ; $68a9: $89
	ld   [$0701], sp                                 ; $68aa: $08 $01 $07
	nop                                              ; $68ad: $00
	add  c                                           ; $68ae: $81
	rst  $38                                         ; $68af: $ff
	adc  c                                           ; $68b0: $89
	nop                                              ; $68b1: $00
	ld   [bc], a                                     ; $68b2: $02
	rrca                                             ; $68b3: $0f
	ret  z                                           ; $68b4: $c8

	add  $80                                         ; $68b5: $c6 $80
	jp   nz, $fe00                                   ; $68b7: $c2 $00 $fe

	add  b                                           ; $68ba: $80
	rst  $38                                         ; $68bb: $ff
	add  d                                           ; $68bc: $82
	ld   bc, $0082                                   ; $68bd: $01 $82 $00
	add  b                                           ; $68c0: $80
	ld   b, c                                        ; $68c1: $41
	inc  bc                                          ; $68c2: $03
	ld   b, b                                        ; $68c3: $40
	ld   b, c                                        ; $68c4: $41
	ld   b, b                                        ; $68c5: $40
	ld   b, c                                        ; $68c6: $41
	add  b                                           ; $68c7: $80
	ld   [bc], a                                     ; $68c8: $02
	add  b                                           ; $68c9: $80
	inc  bc                                          ; $68ca: $03
	add  b                                           ; $68cb: $80
	ld   [bc], a                                     ; $68cc: $02
	add  d                                           ; $68cd: $82
	ld   b, $80                                      ; $68ce: $06 $80
	nop                                              ; $68d0: $00
	add  b                                           ; $68d1: $80
	ret  nz                                          ; $68d2: $c0

	nop                                              ; $68d3: $00
	jp   nz, Jump_078_4289                           ; $68d4: $c2 $89 $42

	nop                                              ; $68d7: $00
	add  b                                           ; $68d8: $80
	add  c                                           ; $68d9: $81
	nop                                              ; $68da: $00
	add  b                                           ; $68db: $80
	jr   jr_078_6866                                 ; $68dc: $18 $88

	inc  e                                           ; $68de: $1c
	nop                                              ; $68df: $00
	ld   e, h                                        ; $68e0: $5c
	adc  c                                           ; $68e1: $89
	dec  a                                           ; $68e2: $3d
	inc  b                                           ; $68e3: $04
	inc  a                                           ; $68e4: $3c
	dec  a                                           ; $68e5: $3d
	ccf                                              ; $68e6: $3f
	inc  a                                           ; $68e7: $3c
	sbc  h                                           ; $68e8: $9c
	add  c                                           ; $68e9: $81
	rlca                                             ; $68ea: $07
	nop                                              ; $68eb: $00
	nop                                              ; $68ec: $00
	adc  c                                           ; $68ed: $89
	rlca                                             ; $68ee: $07
	ld   bc, $f00f                                   ; $68ef: $01 $0f $f0
	add  b                                           ; $68f2: $80
	rst  $38                                         ; $68f3: $ff
	ld   [bc], a                                     ; $68f4: $02
	rra                                              ; $68f5: $1f
	rst  $38                                         ; $68f6: $ff
	ldh  [$81], a                                    ; $68f7: $e0 $81
	rst  $38                                         ; $68f9: $ff
	add  b                                           ; $68fa: $80
	ldh  a, [$80]                                    ; $68fb: $f0 $80
	ldh  [$80], a                                    ; $68fd: $e0 $80
	ret  nz                                          ; $68ff: $c0

	ld   bc, $00ff                                   ; $6900: $01 $ff $00
	add  d                                           ; $6903: $82
	rst  $38                                         ; $6904: $ff
	nop                                              ; $6905: $00
	nop                                              ; $6906: $00
	add  c                                           ; $6907: $81
	rst  $38                                         ; $6908: $ff
	add  h                                           ; $6909: $84
	nop                                              ; $690a: $00
	inc  bc                                          ; $690b: $03
	ret  nz                                          ; $690c: $c0

	nop                                              ; $690d: $00
	rst  $38                                         ; $690e: $ff
	ret  nz                                          ; $690f: $c0

	add  b                                           ; $6910: $80
	rst  $38                                         ; $6911: $ff
	nop                                              ; $6912: $00
	nop                                              ; $6913: $00
	add  c                                           ; $6914: $81
	rst  $38                                         ; $6915: $ff
	add  [hl]                                        ; $6916: $86
	nop                                              ; $6917: $00
	ld   b, $fc                                      ; $6918: $06 $fc
	nop                                              ; $691a: $00
	ei                                               ; $691b: $fb
	ld   hl, sp+$07                                  ; $691c: $f8 $07
	rst  $38                                         ; $691e: $ff
	ld   hl, sp-$7f                                  ; $691f: $f8 $81
	rst  $38                                         ; $6921: $ff
	add  d                                           ; $6922: $82
	nop                                              ; $6923: $00
	dec  b                                           ; $6924: $05
	ld   [bc], a                                     ; $6925: $02
	inc  bc                                          ; $6926: $03
	ld   bc, $ff00                                   ; $6927: $01 $00 $ff
	nop                                              ; $692a: $00
	add  b                                           ; $692b: $80
	rst  $38                                         ; $692c: $ff
	nop                                              ; $692d: $00
	nop                                              ; $692e: $00
	add  c                                           ; $692f: $81
	rst  $38                                         ; $6930: $ff
	add  e                                           ; $6931: $83
	nop                                              ; $6932: $00
	ld   a, [bc]                                     ; $6933: $0a
	rst  $38                                         ; $6934: $ff
	db   $fd                                         ; $6935: $fd
	inc  bc                                          ; $6936: $03
	jp   $bf03                                       ; $6937: $c3 $03 $bf


	add  c                                           ; $693a: $81
	ld   a, e                                        ; $693b: $7b
	ei                                               ; $693c: $fb
	add  e                                           ; $693d: $83
	ei                                               ; $693e: $fb
	add  b                                           ; $693f: $80
	adc  e                                           ; $6940: $8b
	add  b                                           ; $6941: $80
	dec  bc                                          ; $6942: $0b
	ld   [bc], a                                     ; $6943: $02
	rst  ToBoot                                         ; $6944: $c7
	ld   b, e                                        ; $6945: $43
	add  e                                           ; $6946: $83
	add  b                                           ; $6947: $80
	inc  bc                                          ; $6948: $03
	add  c                                           ; $6949: $81
	rst  $38                                         ; $694a: $ff
	add  [hl]                                        ; $694b: $86
	nop                                              ; $694c: $00
	adc  [hl]                                        ; $694d: $8e
	pop  hl                                          ; $694e: $e1
	ld   bc, $080f                                   ; $694f: $01 $0f $08
	add  b                                           ; $6952: $80
	ld   a, [bc]                                     ; $6953: $0a
	add  b                                           ; $6954: $80
	dec  c                                           ; $6955: $0d
	add  b                                           ; $6956: $80
	ld   a, [bc]                                     ; $6957: $0a
	add  [hl]                                        ; $6958: $86
	rrca                                             ; $6959: $0f
	ld   bc, $00f8                                   ; $695a: $01 $f8 $00
	add  b                                           ; $695d: $80
	xor  d                                           ; $695e: $aa
	add  b                                           ; $695f: $80
	ld   d, l                                        ; $6960: $55
	add  b                                           ; $6961: $80
	xor  d                                           ; $6962: $aa
	adc  d                                           ; $6963: $8a
	rst  $38                                         ; $6964: $ff
	nop                                              ; $6965: $00
	nop                                              ; $6966: $00
	add  c                                           ; $6967: $81
	rst  $38                                         ; $6968: $ff
	add  [hl]                                        ; $6969: $86
	nop                                              ; $696a: $00
	inc  b                                           ; $696b: $04
	add  d                                           ; $696c: $82
	cp   $fc                                         ; $696d: $fe $fc
	cp   $81                                         ; $696f: $fe $81
	add  c                                           ; $6971: $81
	rst  $38                                         ; $6972: $ff
	add  [hl]                                        ; $6973: $86
	nop                                              ; $6974: $00
	ld   bc, $42c2                                   ; $6975: $01 $c2 $42
	add  b                                           ; $6978: $80
	jp   nz, Jump_078_4280                           ; $6979: $c2 $80 $42

	adc  b                                           ; $697c: $88
	jp   nz, $9c00                                   ; $697d: $c2 $00 $9c

	adc  l                                           ; $6980: $8d
	inc  e                                           ; $6981: $1c
	inc  c                                           ; $6982: $0c
	ld   d, l                                        ; $6983: $55
	dec  sp                                          ; $6984: $3b
	jr   c, jr_078_69c6                              ; $6985: $38 $3f

	ld   [hl], $38                                   ; $6987: $36 $38
	jr   nc, @+$3a                                   ; $6989: $30 $38

	dec  sp                                          ; $698b: $3b
	jr   c, jr_078_69cb                              ; $698c: $38 $3d

	ld   sp, $813c                                   ; $698e: $31 $3c $81
	dec  a                                           ; $6991: $3d
	ld   [bc], a                                     ; $6992: $02
	xor  [hl]                                        ; $6993: $ae
	nop                                              ; $6994: $00
	ld   b, b                                        ; $6995: $40
	add  c                                           ; $6996: $81
	nop                                              ; $6997: $00
	nop                                              ; $6998: $00
	add  b                                           ; $6999: $80
	add  h                                           ; $699a: $84
	nop                                              ; $699b: $00
	add  c                                           ; $699c: $81
	add  b                                           ; $699d: $80
	nop                                              ; $699e: $00
	ldh  a, [$81]                                    ; $699f: $f0 $81
	add  b                                           ; $69a1: $80
	sbc  c                                           ; $69a2: $99
	nop                                              ; $69a3: $00
	add  b                                           ; $69a4: $80
	ld   b, $8b                                      ; $69a5: $06 $8b
	nop                                              ; $69a7: $00
	ld   [bc], a                                     ; $69a8: $02
	ld   h, h                                        ; $69a9: $64
	sub  a                                           ; $69aa: $97
	di                                               ; $69ab: $f3
	adc  c                                           ; $69ac: $89
	nop                                              ; $69ad: $00
	dec  b                                           ; $69ae: $05
	inc  b                                           ; $69af: $04
	ld   a, h                                        ; $69b0: $7c
	ld   a, [de]                                     ; $69b1: $1a
	sbc  a                                           ; $69b2: $9f
	ldh  a, [c]                                      ; $69b3: $f2

jr_078_69b4:
	nop                                              ; $69b4: $00
	add  b                                           ; $69b5: $80
	ld   c, $86                                      ; $69b6: $0e $86
	rrca                                             ; $69b8: $0f
	ld   bc, $fe2e                                   ; $69b9: $01 $2e $fe
	add  b                                           ; $69bc: $80
	dec  sp                                          ; $69bd: $3b
	nop                                              ; $69be: $00
	ld   d, e                                        ; $69bf: $53
	add  a                                           ; $69c0: $87
	ld   c, e                                        ; $69c1: $4b
	ld   bc, $7f47                                   ; $69c2: $01 $47 $7f
	add  b                                           ; $69c5: $80

jr_078_69c6:
	ld   [hl], l                                     ; $69c6: $75
	ld   [bc], a                                     ; $69c7: $02
	cp   h                                           ; $69c8: $bc
	cp   [hl]                                        ; $69c9: $be
	ld   a, [hl-]                                    ; $69ca: $3a

jr_078_69cb:
	add  e                                           ; $69cb: $83
	ret  nz                                          ; $69cc: $c0

	add  b                                           ; $69cd: $80
	jp   $c680                                       ; $69ce: $c3 $80 $c6


	ld   b, $45                                      ; $69d1: $06 $45
	call z, $efce                                    ; $69d3: $cc $ce $ef
	adc  e                                           ; $69d6: $8b
	jp   $81f9                                       ; $69d7: $c3 $f9 $81


	pop  hl                                          ; $69da: $e1
	dec  c                                           ; $69db: $0d
	ldh  [rIE], a                                    ; $69dc: $e0 $ff
	ldh  [rIE], a                                    ; $69de: $e0 $ff
	cp   c                                           ; $69e0: $b9
	cp   a                                           ; $69e1: $bf
	cp   l                                           ; $69e2: $bd
	cp   a                                           ; $69e3: $bf
	db   $db                                         ; $69e4: $db
	rst  JumpTable                                         ; $69e5: $df
	ld   a, a                                        ; $69e6: $7f
	ld   a, l                                        ; $69e7: $7d
	dec  c                                           ; $69e8: $0d
	rrca                                             ; $69e9: $0f
	add  c                                           ; $69ea: $81
	nop                                              ; $69eb: $00
	ld   [bc], a                                     ; $69ec: $02
	rst  $38                                         ; $69ed: $ff
	nop                                              ; $69ee: $00
	rst  $38                                         ; $69ef: $ff
	add  b                                           ; $69f0: $80
	add  e                                           ; $69f1: $83
	add  b                                           ; $69f2: $80
	or   a                                           ; $69f3: $b7
	add  b                                           ; $69f4: $80
	add  a                                           ; $69f5: $87
	inc  bc                                          ; $69f6: $03
	halt                                             ; $69f7: $76
	rst  $30                                         ; $69f8: $f7
	ld   a, [hl]                                     ; $69f9: $7e
	rst  $38                                         ; $69fa: $ff
	add  c                                           ; $69fb: $81
	nop                                              ; $69fc: $00
	ld   b, $ff                                      ; $69fd: $06 $ff
	nop                                              ; $69ff: $00
	rst  $38                                         ; $6a00: $ff
	ld   c, l                                        ; $6a01: $4d
	ld   l, l                                        ; $6a02: $6d
	rst  $38                                         ; $6a03: $ff
	rst  JumpTable                                         ; $6a04: $df
	add  b                                           ; $6a05: $80
	ld   sp, $b803                                   ; $6a06: $31 $03 $b8
	cp   c                                           ; $6a09: $b9
	cp   $ff                                         ; $6a0a: $fe $ff
	add  c                                           ; $6a0c: $81
	nop                                              ; $6a0d: $00
	ld   [bc], a                                     ; $6a0e: $02
	rst  $38                                         ; $6a0f: $ff
	nop                                              ; $6a10: $00
	rst  $38                                         ; $6a11: $ff
	add  c                                           ; $6a12: $81
	ld   h, [hl]                                     ; $6a13: $66
	ld   [bc], a                                     ; $6a14: $02
	halt                                             ; $6a15: $76
	ld   c, l                                        ; $6a16: $4d
	ld   e, l                                        ; $6a17: $5d
	add  d                                           ; $6a18: $82
	rst  $38                                         ; $6a19: $ff
	add  c                                           ; $6a1a: $81
	nop                                              ; $6a1b: $00
	ld   [$00ff], sp                                 ; $6a1c: $08 $ff $00
	rst  $38                                         ; $6a1f: $ff
	add  hl, bc                                      ; $6a20: $09
	add  hl, sp                                      ; $6a21: $39
	jp   hl                                          ; $6a22: $e9


	ld   sp, hl                                      ; $6a23: $f9
	ld   hl, sp-$28                                  ; $6a24: $f8 $d8
	add  b                                           ; $6a26: $80
	rrca                                             ; $6a27: $0f
	add  b                                           ; $6a28: $80
	jp   nz, $0280                                   ; $6a29: $c2 $80 $02

	inc  bc                                          ; $6a2c: $03
	nop                                              ; $6a2d: $00
	rst  $38                                         ; $6a2e: $ff
	nop                                              ; $6a2f: $00
	rst  $38                                         ; $6a30: $ff
	add  b                                           ; $6a31: $80
	jr   jr_078_69b4                                 ; $6a32: $18 $80

	add  hl, de                                      ; $6a34: $19
	inc  bc                                          ; $6a35: $03
	cp   a                                           ; $6a36: $bf
	dec  sp                                          ; $6a37: $3b
	ld   a, e                                        ; $6a38: $7b
	rst  $38                                         ; $6a39: $ff
	add  e                                           ; $6a3a: $83
	inc  e                                           ; $6a3b: $1c
	ld   [bc], a                                     ; $6a3c: $02
	db   $fc                                         ; $6a3d: $fc
	inc  e                                           ; $6a3e: $1c
	db   $fc                                         ; $6a3f: $fc
	add  d                                           ; $6a40: $82
	ldh  [rDIV], a                                   ; $6a41: $e0 $04
	dec  [hl]                                        ; $6a43: $35
	push af                                          ; $6a44: $f5
	ld   [hl], h                                     ; $6a45: $74
	db   $f4                                         ; $6a46: $f4
	inc  e                                           ; $6a47: $1c
	adc  c                                           ; $6a48: $89
	dec  a                                           ; $6a49: $3d
	add  b                                           ; $6a4a: $80
	cp   l                                           ; $6a4b: $bd
	inc  b                                           ; $6a4c: $04
	db   $dd                                         ; $6a4d: $dd
	cp   l                                           ; $6a4e: $bd
	rst  $30                                         ; $6a4f: $f7
	rrca                                             ; $6a50: $0f
	ld   b, $81                                      ; $6a51: $06 $81
	rrca                                             ; $6a53: $0f
	ld   [bc], a                                     ; $6a54: $02
	ld   c, $0f                                      ; $6a55: $0e $0f
	ld   c, $86                                      ; $6a57: $0e $86
	rrca                                             ; $6a59: $0f
	nop                                              ; $6a5a: $00
	ld   bc, $fe80                                   ; $6a5b: $01 $80 $fe
	ld   [bc], a                                     ; $6a5e: $02
	db   $fd                                         ; $6a5f: $fd
	rst  $38                                         ; $6a60: $ff
	ldh  [$80], a                                    ; $6a61: $e0 $80
	rst  $38                                         ; $6a63: $ff
	inc  bc                                          ; $6a64: $03
	db   $fc                                         ; $6a65: $fc
	ld   d, a                                        ; $6a66: $57
	di                                               ; $6a67: $f3
	cp   e                                           ; $6a68: $bb
	add  b                                           ; $6a69: $80
	rst  $38                                         ; $6a6a: $ff
	ld   a, [de]                                     ; $6a6b: $1a
	rst  $28                                         ; $6a6c: $ef
	rla                                              ; $6a6d: $17
	ld   h, a                                        ; $6a6e: $67
	dec  sp                                          ; $6a6f: $3b
	ld   a, a                                        ; $6a70: $7f
	db   $db                                         ; $6a71: $db
	rst  $38                                         ; $6a72: $ff
	ccf                                              ; $6a73: $3f
	rst  $38                                         ; $6a74: $ff
	ccf                                              ; $6a75: $3f
	rst  $38                                         ; $6a76: $ff
	ld   a, b                                        ; $6a77: $78
	ld   a, a                                        ; $6a78: $7f
	sub  a                                           ; $6a79: $97
	sub  c                                           ; $6a7a: $91
	add  b                                           ; $6a7b: $80
	add  c                                           ; $6a7c: $81
	ld   b, e                                        ; $6a7d: $43
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a7e: $cf
	ld   a, e                                        ; $6a7f: $7b
	rst  $38                                         ; $6a80: $ff
	rlca                                             ; $6a81: $07
	rst  $28                                         ; $6a82: $ef
	ccf                                              ; $6a83: $3f
	rst  $38                                         ; $6a84: $ff
	ccf                                              ; $6a85: $3f
	rra                                              ; $6a86: $1f
	add  b                                           ; $6a87: $80
	sub  a                                           ; $6a88: $97
	dec  b                                           ; $6a89: $05
	db   $eb                                         ; $6a8a: $eb
	ld   l, e                                        ; $6a8b: $6b
	dec  hl                                          ; $6a8c: $2b
	ld   l, e                                        ; $6a8d: $6b
	rla                                              ; $6a8e: $17
	rst  $10                                         ; $6a8f: $d7
	add  b                                           ; $6a90: $80

jr_078_6a91:
	rst  $38                                         ; $6a91: $ff
	inc  bc                                          ; $6a92: $03
	ld   a, a                                        ; $6a93: $7f
	rst  $38                                         ; $6a94: $ff
	ld   a, a                                        ; $6a95: $7f
	rst  $38                                         ; $6a96: $ff
	add  b                                           ; $6a97: $80
	add  l                                           ; $6a98: $85
	add  b                                           ; $6a99: $80
	inc  bc                                          ; $6a9a: $03
	add  b                                           ; $6a9b: $80
	cp   $04                                         ; $6a9c: $fe $04
	ld   a, l                                        ; $6a9e: $7d
	ld   a, a                                        ; $6a9f: $7f
	cp   [hl]                                        ; $6aa0: $be
	dec  a                                           ; $6aa1: $3d
	halt                                             ; $6aa2: $76
	add  c                                           ; $6aa3: $81
	rst  $38                                         ; $6aa4: $ff
	rlca                                             ; $6aa5: $07
	ld   h, e                                        ; $6aa6: $63
	ld   a, e                                        ; $6aa7: $7b
	ld   h, e                                        ; $6aa8: $63
	db   $fd                                         ; $6aa9: $fd
	ld   [hl], c                                     ; $6aaa: $71
	pop  hl                                          ; $6aab: $e1
	rst  $30                                         ; $6aac: $f7
	jp   hl                                          ; $6aad: $e9


	add  b                                           ; $6aae: $80
	ei                                               ; $6aaf: $fb
	ld   b, $da                                      ; $6ab0: $06 $da
	add  $e1                                         ; $6ab2: $c6 $e1
	push hl                                          ; $6ab4: $e5
	pop  af                                          ; $6ab5: $f1
	ld   sp, hl                                      ; $6ab6: $f9
	rst  $28                                         ; $6ab7: $ef
	add  c                                           ; $6ab8: $81
	rst  $38                                         ; $6ab9: $ff
	nop                                              ; $6aba: $00
	adc  a                                           ; $6abb: $8f
	add  b                                           ; $6abc: $80
	rst  $38                                         ; $6abd: $ff
	inc  b                                           ; $6abe: $04
	pop  af                                          ; $6abf: $f1
	pop  hl                                          ; $6ac0: $e1
	ldh  a, [rAUD1SWEEP]                             ; $6ac1: $f0 $10
	ld   a, a                                        ; $6ac3: $7f
	add  b                                           ; $6ac4: $80
	ei                                               ; $6ac5: $fb
	add  b                                           ; $6ac6: $80
	ld   l, e                                        ; $6ac7: $6b
	rlca                                             ; $6ac8: $07
	db   $dd                                         ; $6ac9: $dd
	rra                                              ; $6aca: $1f
	sbc  a                                           ; $6acb: $9f
	ld   a, a                                        ; $6acc: $7f
	add  sp, -$16                                    ; $6acd: $e8 $ea
	adc  $ee                                         ; $6acf: $ce $ee
	add  b                                           ; $6ad1: $80
	ccf                                              ; $6ad2: $3f
	add  b                                           ; $6ad3: $80
	rra                                              ; $6ad4: $1f
	inc  bc                                          ; $6ad5: $03
	ccf                                              ; $6ad6: $3f
	rra                                              ; $6ad7: $1f
	rst  ToBoot                                         ; $6ad8: $c7
	rst  $20                                         ; $6ad9: $e7
	add  b                                           ; $6ada: $80
	rst  $38                                         ; $6adb: $ff
	add  b                                           ; $6adc: $80
	ld   a, a                                        ; $6add: $7f
	ld   [bc], a                                     ; $6ade: $02
	jr   z, jr_078_6b19                              ; $6adf: $28 $38

	rst  $10                                         ; $6ae1: $d7
	add  b                                           ; $6ae2: $80
	rst  $38                                         ; $6ae3: $ff
	inc  b                                           ; $6ae4: $04
	cp   $56                                         ; $6ae5: $fe $56
	ld   l, a                                        ; $6ae7: $6f
	sbc  $df                                         ; $6ae8: $de $df
	add  c                                           ; $6aea: $81
	adc  [hl]                                        ; $6aeb: $8e
	nop                                              ; $6aec: $00
	adc  a                                           ; $6aed: $8f
	add  b                                           ; $6aee: $80
	adc  e                                           ; $6aef: $8b
	jr   jr_078_6a91                                 ; $6af0: $18 $9f

	rst  $38                                         ; $6af2: $ff
	adc  h                                           ; $6af3: $8c
	db   $ec                                         ; $6af4: $ec
	ldh  [$e1], a                                    ; $6af5: $e0 $e1
	cp   e                                           ; $6af7: $bb
	cp   d                                           ; $6af8: $ba
	ld   e, $9e                                      ; $6af9: $1e $9e

jr_078_6afb:
	adc  [hl]                                        ; $6afb: $8e
	add  [hl]                                        ; $6afc: $86
	ld   a, e                                        ; $6afd: $7b
	di                                               ; $6afe: $f3
	ccf                                              ; $6aff: $3f
	rst  $38                                         ; $6b00: $ff
	ld   e, a                                        ; $6b01: $5f
	rst  JumpTable                                         ; $6b02: $df
	cp   a                                           ; $6b03: $bf
	rst  $38                                         ; $6b04: $ff
	rst  JumpTable                                         ; $6b05: $df
	rst  $38                                         ; $6b06: $ff
	call nz, $fee4                                   ; $6b07: $c4 $e4 $fe
	add  b                                           ; $6b0a: $80
	db   $fd                                         ; $6b0b: $fd
	ld   b, $ff                                      ; $6b0c: $06 $ff
	ldh  a, [c]                                      ; $6b0e: $f2
	ei                                               ; $6b0f: $fb
	scf                                              ; $6b10: $37
	dec  sp                                          ; $6b11: $3b
	db   $db                                         ; $6b12: $db
	rst  JumpTable                                         ; $6b13: $df
	add  b                                           ; $6b14: $80
	ccf                                              ; $6b15: $3f
	add  b                                           ; $6b16: $80
	ld   a, a                                        ; $6b17: $7f
	add  b                                           ; $6b18: $80

jr_078_6b19:
	cp   a                                           ; $6b19: $bf
	add  b                                           ; $6b1a: $80
	call $dd80                                       ; $6b1b: $cd $80 $dd
	add  b                                           ; $6b1e: $80
	rst  JumpTable                                         ; $6b1f: $df
	inc  bc                                          ; $6b20: $03
	add  hl, de                                      ; $6b21: $19
	sbc  a                                           ; $6b22: $9f
	sbc  c                                           ; $6b23: $99
	rra                                              ; $6b24: $1f
	add  d                                           ; $6b25: $82
	ld   hl, sp-$80                                  ; $6b26: $f8 $80
	ld   e, a                                        ; $6b28: $5f
	add  b                                           ; $6b29: $80
	add  hl, bc                                      ; $6b2a: $09
	add  d                                           ; $6b2b: $82
	cp   l                                           ; $6b2c: $bd
	inc  b                                           ; $6b2d: $04
	db   $d3                                         ; $6b2e: $d3
	rst  JumpTable                                         ; $6b2f: $df
	adc  e                                           ; $6b30: $8b
	add  a                                           ; $6b31: $87
	ret                                              ; $6b32: $c9


	add  c                                           ; $6b33: $81
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b34: $cf
	dec  b                                           ; $6b35: $05
	sbc  c                                           ; $6b36: $99
	sbc  a                                           ; $6b37: $9f
	dec  de                                          ; $6b38: $1b
	rra                                              ; $6b39: $1f
	ret  z                                           ; $6b3a: $c8

	ret  nz                                          ; $6b3b: $c0

	add  b                                           ; $6b3c: $80
	ldh  a, [c]                                      ; $6b3d: $f2
	dec  b                                           ; $6b3e: $05
	adc  l                                           ; $6b3f: $8d
	add  a                                           ; $6b40: $87
	inc  b                                           ; $6b41: $04
	inc  bc                                          ; $6b42: $03
	ld   c, $0f                                      ; $6b43: $0e $0f
	add  b                                           ; $6b45: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b46: $cf
	ld   de, $ffef                                   ; $6b47: $11 $ef $ff
	sbc  h                                           ; $6b4a: $9c
	db   $fc                                         ; $6b4b: $fc
	db   $ec                                         ; $6b4c: $ec
	db   $fc                                         ; $6b4d: $fc
	inc  a                                           ; $6b4e: $3c
	ld   e, h                                        ; $6b4f: $5c
	ld   hl, $3c3f                                   ; $6b50: $21 $3f $3c
	cp   $c4                                         ; $6b53: $fe $c4
	jr   jr_078_6afb                                 ; $6b55: $18 $a4

	cp   h                                           ; $6b57: $bc
	rst  $20                                         ; $6b58: $e7
	rrca                                             ; $6b59: $0f
	add  b                                           ; $6b5a: $80
	ld   [$0083], sp                                 ; $6b5b: $08 $83 $00
	nop                                              ; $6b5e: $00
	ld   c, $80                                      ; $6b5f: $0e $80
	rrca                                             ; $6b61: $0f
	ld   b, $00                                      ; $6b62: $06 $00
	rrca                                             ; $6b64: $0f
	ld   bc, $6e0f                                   ; $6b65: $01 $0f $6e
	pop  af                                          ; $6b68: $f1
	ld   h, c                                        ; $6b69: $61
	add  b                                           ; $6b6a: $80
	pop  hl                                          ; $6b6b: $e1
	dec  b                                           ; $6b6c: $05
	ld   h, c                                        ; $6b6d: $61
	nop                                              ; $6b6e: $00
	ld   h, b                                        ; $6b6f: $60
	ld   a, $00                                      ; $6b70: $3e $00
	ld   b, c                                        ; $6b72: $41
	add  b                                           ; $6b73: $80
	nop                                              ; $6b74: $00
	ld   [bc], a                                     ; $6b75: $02
	rst  $38                                         ; $6b76: $ff
	ld   b, b                                        ; $6b77: $40
	ret  nz                                          ; $6b78: $c0

	add  b                                           ; $6b79: $80
	and  b                                           ; $6b7a: $a0
	add  b                                           ; $6b7b: $80
	ld   hl, $e380                                   ; $6b7c: $21 $80 $e3
	rlca                                             ; $6b7f: $07
	ldh  [c], a                                      ; $6b80: $e2
	cp   $bc                                         ; $6b81: $fe $bc
	sbc  $7d                                         ; $6b83: $de $7d
	dec  b                                           ; $6b85: $05
	pop  de                                          ; $6b86: $d1
	ret  c                                           ; $6b87: $d8

	add  b                                           ; $6b88: $80
	nop                                              ; $6b89: $00
	inc  bc                                          ; $6b8a: $03
	rst  $20                                         ; $6b8b: $e7
	ld   a, c                                        ; $6b8c: $79
	inc  d                                           ; $6b8d: $14
	add  l                                           ; $6b8e: $85
	add  d                                           ; $6b8f: $82
	ld   bc, $0080                                   ; $6b90: $01 $80 $00
	add  b                                           ; $6b93: $80
	rlca                                             ; $6b94: $07
	add  c                                           ; $6b95: $81
	rrca                                             ; $6b96: $0f
	dec  d                                           ; $6b97: $15
	rst  $38                                         ; $6b98: $ff
	ld   c, [hl]                                     ; $6b99: $4e
	ld   a, a                                        ; $6b9a: $7f
	ld   a, $ff                                      ; $6b9b: $3e $ff
	and  c                                           ; $6b9d: $a1
	db   $e3                                         ; $6b9e: $e3
	xor  c                                           ; $6b9f: $a9
	rst  $30                                         ; $6ba0: $f7
	add  hl, bc                                      ; $6ba1: $09
	ld   a, e                                        ; $6ba2: $7b
	ret  nc                                          ; $6ba3: $d0

	pop  bc                                          ; $6ba4: $c1
	xor  l                                           ; $6ba5: $ad
	rst  $38                                         ; $6ba6: $ff
	jp   nc, $1fff                                   ; $6ba7: $d2 $ff $1f

	sbc  a                                           ; $6baa: $9f
	and  e                                           ; $6bab: $a3
	ld   h, e                                        ; $6bac: $63
	add  c                                           ; $6bad: $81
	add  e                                           ; $6bae: $83
	pop  bc                                          ; $6baf: $c1
	ld   bc, $c101                                   ; $6bb0: $01 $01 $c1
	add  b                                           ; $6bb3: $80
	jp   $3f03                                       ; $6bb4: $c3 $03 $3f


	rst  $38                                         ; $6bb7: $ff
	xor  $f1                                         ; $6bb8: $ee $f1
	add  b                                           ; $6bba: $80
	ld   h, c                                        ; $6bbb: $61
	ld   [bc], a                                     ; $6bbc: $02
	ld   l, [hl]                                     ; $6bbd: $6e
	rst  $38                                         ; $6bbe: $ff
	ld   [hl], c                                     ; $6bbf: $71
	add  c                                           ; $6bc0: $81
	rst  $38                                         ; $6bc1: $ff
	ld   [bc], a                                     ; $6bc2: $02
	ldh  a, [rIE]                                    ; $6bc3: $f0 $ff
	rst  $28                                         ; $6bc5: $ef
	add  c                                           ; $6bc6: $81
	rst  $38                                         ; $6bc7: $ff
	rla                                              ; $6bc8: $17
	ldh  [rIE], a                                    ; $6bc9: $e0 $ff
	ld   sp, hl                                      ; $6bcb: $f9
	rst  $38                                         ; $6bcc: $ff
	and  $ff                                         ; $6bcd: $e6 $ff
	reti                                             ; $6bcf: $d9


	ld   sp, hl                                      ; $6bd0: $f9
	ldh  a, [$fe]                                    ; $6bd1: $f0 $fe
	ldh  a, [rIE]                                    ; $6bd3: $f0 $ff
	ld   d, b                                        ; $6bd5: $50
	rst  $38                                         ; $6bd6: $ff
	and  c                                           ; $6bd7: $a1
	cp   a                                           ; $6bd8: $bf
	jr   z, @+$01                                    ; $6bd9: $28 $ff

	inc  bc                                          ; $6bdb: $03
	ld   h, a                                        ; $6bdc: $67
	ld   a, e                                        ; $6bdd: $7b
	rst  $38                                         ; $6bde: $ff
	add  e                                           ; $6bdf: $83
	ei                                               ; $6be0: $fb
	add  b                                           ; $6be1: $80
	db   $fc                                         ; $6be2: $fc
	add  b                                           ; $6be3: $80
	cp   $80                                         ; $6be4: $fe $80
	rst  $38                                         ; $6be6: $ff
	add  hl, bc                                      ; $6be7: $09
	cp   a                                           ; $6be8: $bf
	rst  $38                                         ; $6be9: $ff
	ld   a, h                                        ; $6bea: $7c
	rst  $38                                         ; $6beb: $ff
	jp   nz, $ddff                                   ; $6bec: $c2 $ff $dd

	rst  $38                                         ; $6bef: $ff
	db   $ec                                         ; $6bf0: $ec
	ldh  a, [$80]                                    ; $6bf1: $f0 $80
	add  [hl]                                        ; $6bf3: $86
	add  b                                           ; $6bf4: $80
	rra                                              ; $6bf5: $1f
	add  d                                           ; $6bf6: $82
	ccf                                              ; $6bf7: $3f
	ld   [bc], a                                     ; $6bf8: $02
	sbc  a                                           ; $6bf9: $9f
	rst  $38                                         ; $6bfa: $ff
	sbc  a                                           ; $6bfb: $9f
	add  c                                           ; $6bfc: $81
	rst  $38                                         ; $6bfd: $ff
	add  b                                           ; $6bfe: $80
	ld   [hl], d                                     ; $6bff: $72
	ld   bc, $0f0c                                   ; $6c00: $01 $0c $0f
	add  b                                           ; $6c03: $80
	add  d                                           ; $6c04: $82
	ld   bc, $8380                                   ; $6c05: $01 $80 $83
	add  b                                           ; $6c08: $80
	add  b                                           ; $6c09: $80
	dec  c                                           ; $6c0a: $0d
	pop  bc                                          ; $6c0b: $c1
	rst  JumpTable                                         ; $6c0c: $df
	rst  $10                                         ; $6c0d: $d7
	reti                                             ; $6c0e: $d9


	ld   [bc], a                                     ; $6c0f: $02
	ld   c, $e4                                      ; $6c10: $0e $e4
	cp   $f9                                         ; $6c12: $fe $f9
	rst  $38                                         ; $6c14: $ff
	call c, $153e                                    ; $6c15: $dc $3e $15
	rst  $30                                         ; $6c18: $f7
	add  b                                           ; $6c19: $80
	nop                                              ; $6c1a: $00
	add  hl, bc                                      ; $6c1b: $09
	ret  z                                           ; $6c1c: $c8

	ld   hl, sp+$50                                  ; $6c1d: $f8 $50
	ld   h, b                                        ; $6c1f: $60
	jr   c, jr_078_6c42                              ; $6c20: $38 $20

	rst  $20                                         ; $6c22: $e7
	ld   hl, sp-$19                                  ; $6c23: $f8 $e7
	ldh  [$80], a                                    ; $6c25: $e0 $80
	ret  nz                                          ; $6c27: $c0

	add  b                                           ; $6c28: $80
	add  a                                           ; $6c29: $87
	add  b                                           ; $6c2a: $80
	rrca                                             ; $6c2b: $0f
	inc  bc                                          ; $6c2c: $03
	ld   b, b                                        ; $6c2d: $40
	ld   h, a                                        ; $6c2e: $67
	ld   h, c                                        ; $6c2f: $61
	ld   b, [hl]                                     ; $6c30: $46
	add  b                                           ; $6c31: $80
	rrca                                             ; $6c32: $0f
	dec  b                                           ; $6c33: $05
	ld   e, a                                        ; $6c34: $5f
	rst  $38                                         ; $6c35: $ff
	sbc  a                                           ; $6c36: $9f
	ld   a, a                                        ; $6c37: $7f
	ccf                                              ; $6c38: $3f
	ld   a, a                                        ; $6c39: $7f
	add  b                                           ; $6c3a: $80
	rst  $38                                         ; $6c3b: $ff
	add  b                                           ; $6c3c: $80
	ret  nz                                          ; $6c3d: $c0

	ld   a, [bc]                                     ; $6c3e: $0a
	adc  a                                           ; $6c3f: $8f
	rst  $28                                         ; $6c40: $ef
	sub  a                                           ; $6c41: $97

jr_078_6c42:
	rst  $38                                         ; $6c42: $ff
	push af                                          ; $6c43: $f5
	ei                                               ; $6c44: $fb
	pop  af                                          ; $6c45: $f1
	ei                                               ; $6c46: $fb
	db   $e3                                         ; $6c47: $e3
	di                                               ; $6c48: $f3
	db   $e3                                         ; $6c49: $e3
	add  b                                           ; $6c4a: $80
	jp   $c106                                       ; $6c4b: $c3 $06 $c1


	ld   bc, $b100                                   ; $6c4e: $01 $00 $b1
	cp   $f0                                         ; $6c51: $fe $f0
	add  b                                           ; $6c53: $80
	add  b                                           ; $6c54: $80
	ldh  [rSC], a                                    ; $6c55: $e0 $02
	ldh  a, [rIE]                                    ; $6c57: $f0 $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c59: $cf
	add  l                                           ; $6c5a: $85
	rst  $38                                         ; $6c5b: $ff
	ldh  [c], a                                      ; $6c5c: $e2
	ld   bc, $0087                                   ; $6c5d: $01 $87 $00
	add  [hl]                                        ; $6c60: $86
	rrca                                             ; $6c61: $0f
	add  [hl]                                        ; $6c62: $86
	nop                                              ; $6c63: $00
	add  d                                           ; $6c64: $82
	rst  $38                                         ; $6c65: $ff
	add  b                                           ; $6c66: $80
	ld   e, a                                        ; $6c67: $5f
	add  b                                           ; $6c68: $80
	xor  d                                           ; $6c69: $aa
	add  [hl]                                        ; $6c6a: $86
	nop                                              ; $6c6b: $00
	add  b                                           ; $6c6c: $80
	ld   d, b                                        ; $6c6d: $50
	add  b                                           ; $6c6e: $80
	xor  e                                           ; $6c6f: $ab
	add  b                                           ; $6c70: $80
	rst  $38                                         ; $6c71: $ff
	add  b                                           ; $6c72: $80
	cp   $86                                         ; $6c73: $fe $86
	nop                                              ; $6c75: $00
	add  b                                           ; $6c76: $80
	inc  b                                           ; $6c77: $04
	add  b                                           ; $6c78: $80
	and  d                                           ; $6c79: $a2
	add  b                                           ; $6c7a: $80
	rst  $10                                         ; $6c7b: $d7
	add  b                                           ; $6c7c: $80
	adc  a                                           ; $6c7d: $8f
	adc  b                                           ; $6c7e: $88
	nop                                              ; $6c7f: $00
	add  b                                           ; $6c80: $80
	add  d                                           ; $6c81: $82
	add  b                                           ; $6c82: $80
	ld   bc, $ab80                                   ; $6c83: $01 $80 $ab
	add  [hl]                                        ; $6c86: $86
	nop                                              ; $6c87: $00
	add  b                                           ; $6c88: $80
	ld   e, a                                        ; $6c89: $5f
	add  b                                           ; $6c8a: $80
	xor  e                                           ; $6c8b: $ab
	add  b                                           ; $6c8c: $80
	rra                                              ; $6c8d: $1f
	add  b                                           ; $6c8e: $80
	cp   a                                           ; $6c8f: $bf
	add  [hl]                                        ; $6c90: $86
	nop                                              ; $6c91: $00
	add  [hl]                                        ; $6c92: $86
	rst  $38                                         ; $6c93: $ff
	add  [hl]                                        ; $6c94: $86
	nop                                              ; $6c95: $00
	add  [hl]                                        ; $6c96: $86
	rst  $38                                         ; $6c97: $ff
	add  [hl]                                        ; $6c98: $86
	nop                                              ; $6c99: $00
	add  h                                           ; $6c9a: $84
	rst  $38                                         ; $6c9b: $ff
	add  b                                           ; $6c9c: $80
	ld   [$0085], a                                  ; $6c9d: $ea $85 $00
	nop                                              ; $6ca0: $00
	ld   [hl], b                                     ; $6ca1: $70
	add  b                                           ; $6ca2: $80
	adc  a                                           ; $6ca3: $8f
	add  b                                           ; $6ca4: $80
	adc  d                                           ; $6ca5: $8a
	add  b                                           ; $6ca6: $80
	nop                                              ; $6ca7: $00
	ld   bc, $f080                                   ; $6ca8: $01 $80 $f0
	add  [hl]                                        ; $6cab: $86
	nop                                              ; $6cac: $00
	add  b                                           ; $6cad: $80
	ld   d, a                                        ; $6cae: $57
	add  b                                           ; $6caf: $80
	dec  bc                                          ; $6cb0: $0b
	add  b                                           ; $6cb1: $80
	ld   bc, $0280                                   ; $6cb2: $01 $80 $02
	add  [hl]                                        ; $6cb5: $86
	nop                                              ; $6cb6: $00
	add  d                                           ; $6cb7: $82
	rst  $38                                         ; $6cb8: $ff
	add  b                                           ; $6cb9: $80
	ld   e, a                                        ; $6cba: $5f
	ld   bc, $cf8f                                   ; $6cbb: $01 $8f $cf
	add  [hl]                                        ; $6cbe: $86
	nop                                              ; $6cbf: $00
	add  l                                           ; $6cc0: $85
	add  b                                           ; $6cc1: $80
	nop                                              ; $6cc2: $00
	ret  nz                                          ; $6cc3: $c0

	add  l                                           ; $6cc4: $85
	nop                                              ; $6cc5: $00
	add  b                                           ; $6cc6: $80
	rrca                                             ; $6cc7: $0f
	nop                                              ; $6cc8: $00
	ld   [$1082], sp                                 ; $6cc9: $08 $82 $10
	ld   bc, $3930                                   ; $6ccc: $01 $30 $39
	add  d                                           ; $6ccf: $82
	ld   bc, $0081                                   ; $6cd0: $01 $81 $00
	ld   bc, $fffe                                   ; $6cd3: $01 $fe $ff
	add  l                                           ; $6cd6: $85
	nop                                              ; $6cd7: $00
	add  l                                           ; $6cd8: $85
	rst  $38                                         ; $6cd9: $ff
	add  b                                           ; $6cda: $80
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	rst  $38                                         ; $6cdd: $ff
	add  h                                           ; $6cde: $84
	nop                                              ; $6cdf: $00
	add  b                                           ; $6ce0: $80
	dec  c                                           ; $6ce1: $0d
	add  b                                           ; $6ce2: $80
	ld   c, $80                                      ; $6ce3: $0e $80
	dec  c                                           ; $6ce5: $0d
	ld   bc, $0d0e                                   ; $6ce6: $01 $0e $0d
	add  b                                           ; $6ce9: $80
	inc  b                                           ; $6cea: $04
	add  b                                           ; $6ceb: $80
	ld   [$0003], sp                                 ; $6cec: $08 $03 $00
	ld   [bc], a                                     ; $6cef: $02
	nop                                              ; $6cf0: $00
	ld   bc, $0086                                   ; $6cf1: $01 $86 $00
	add  c                                           ; $6cf4: $81
	ld   hl, sp-$80                                  ; $6cf5: $f8 $80
	nop                                              ; $6cf7: $00
	ld   [bc], a                                     ; $6cf8: $02
	ld   a, b                                        ; $6cf9: $78
	ld   [hl], b                                     ; $6cfa: $70
	ldh  a, [$80]                                    ; $6cfb: $f0 $80
	ld   [hl], h                                     ; $6cfd: $74

jr_078_6cfe:
	add  b                                           ; $6cfe: $80
	and  d                                           ; $6cff: $a2
	add  b                                           ; $6d00: $80
	rla                                              ; $6d01: $17
	add  b                                           ; $6d02: $80
	ld   [bc], a                                     ; $6d03: $02
	add  b                                           ; $6d04: $80
	ld   b, b                                        ; $6d05: $40
	add  b                                           ; $6d06: $80
	ld   [$7780], a                                  ; $6d07: $ea $80 $77
	add  b                                           ; $6d0a: $80
	xor  d                                           ; $6d0b: $aa
	add  b                                           ; $6d0c: $80
	rra                                              ; $6d0d: $1f
	add  b                                           ; $6d0e: $80
	xor  a                                           ; $6d0f: $af
	add  d                                           ; $6d10: $82
	rst  $38                                         ; $6d11: $ff
	add  b                                           ; $6d12: $80
	ld   a, a                                        ; $6d13: $7f
	add  b                                           ; $6d14: $80
	xor  a                                           ; $6d15: $af
	add  b                                           ; $6d16: $80
	ld   b, a                                        ; $6d17: $47
	add  b                                           ; $6d18: $80
	xor  d                                           ; $6d19: $aa
	adc  d                                           ; $6d1a: $8a
	rst  $38                                         ; $6d1b: $ff
	add  b                                           ; $6d1c: $80
	rst  JumpTable                                         ; $6d1d: $df
	add  b                                           ; $6d1e: $80
	adc  d                                           ; $6d1f: $8a
	adc  h                                           ; $6d20: $8c
	rst  $38                                         ; $6d21: $ff
	add  b                                           ; $6d22: $80
	ld   a, [$ff88]                                  ; $6d23: $fa $88 $ff
	add  b                                           ; $6d26: $80
	db   $eb                                         ; $6d27: $eb
	add  b                                           ; $6d28: $80
	ld   b, c                                        ; $6d29: $41
	add  b                                           ; $6d2a: $80
	ld   [bc], a                                     ; $6d2b: $02
	adc  h                                           ; $6d2c: $8c
	rst  $38                                         ; $6d2d: $ff
	add  b                                           ; $6d2e: $80
	cp   a                                           ; $6d2f: $bf
	add  b                                           ; $6d30: $80
	call nc, $fe80                                   ; $6d31: $d4 $80 $fe
	adc  c                                           ; $6d34: $89
	rst  $38                                         ; $6d35: $ff
	nop                                              ; $6d36: $00
	adc  a                                           ; $6d37: $8f
	add  b                                           ; $6d38: $80
	nop                                              ; $6d39: $00
	add  b                                           ; $6d3a: $80
	adc  d                                           ; $6d3b: $8a
	add  h                                           ; $6d3c: $84
	adc  a                                           ; $6d3d: $8f
	add  b                                           ; $6d3e: $80
	adc  d                                           ; $6d3f: $8a
	add  b                                           ; $6d40: $80
	add  h                                           ; $6d41: $84
	ld   bc, $f282                                   ; $6d42: $01 $82 $f2
	add  b                                           ; $6d45: $80
	rla                                              ; $6d46: $17
	add  b                                           ; $6d47: $80
	xor  d                                           ; $6d48: $aa
	add  b                                           ; $6d49: $80
	ld   a, a                                        ; $6d4a: $7f
	dec  b                                           ; $6d4b: $05
	rst  $38                                         ; $6d4c: $ff
	ld   sp, hl                                      ; $6d4d: $f9
	ld   a, c                                        ; $6d4e: $79
	ld   [hl], d                                     ; $6d4f: $72
	ldh  a, [$f4]                                    ; $6d50: $f0 $f4
	add  b                                           ; $6d52: $80
	ld   d, h                                        ; $6d53: $54
	ld   bc, $a9a0                                   ; $6d54: $01 $a0 $a9
	add  b                                           ; $6d57: $80
	ld   e, a                                        ; $6d58: $5f
	add  d                                           ; $6d59: $82
	rst  $38                                         ; $6d5a: $ff
	add  b                                           ; $6d5b: $80
	rst  $28                                         ; $6d5c: $ef
	add  b                                           ; $6d5d: $80
	push af                                          ; $6d5e: $f5
	add  b                                           ; $6d5f: $80
	xor  b                                           ; $6d60: $a8
	ld   b, $d4                                      ; $6d61: $06 $d4
	ld   d, h                                        ; $6d63: $54
	ld   [$80c8], sp                                 ; $6d64: $08 $c8 $80
	cp   a                                           ; $6d67: $bf
	add  b                                           ; $6d68: $80
	add  c                                           ; $6d69: $81
	rst  $38                                         ; $6d6a: $ff
	add  b                                           ; $6d6b: $80
	db   $eb                                         ; $6d6c: $eb
	add  b                                           ; $6d6d: $80
	ld   b, l                                        ; $6d6e: $45
	add  b                                           ; $6d6f: $80
	dec  hl                                          ; $6d70: $2b
	ld   b, $07                                      ; $6d71: $06 $07
	jr   jr_078_6d75                                 ; $6d73: $18 $00

jr_078_6d75:
	rla                                              ; $6d75: $17
	ld   [hl], b                                     ; $6d76: $70
	add  b                                           ; $6d77: $80
	nop                                              ; $6d78: $00
	add  c                                           ; $6d79: $81
	ld   [hl], b                                     ; $6d7a: $70
	nop                                              ; $6d7b: $00
	jr   nc, jr_078_6cfe                             ; $6d7c: $30 $80

	inc  [hl]                                        ; $6d7e: $34
	ld   b, $32                                      ; $6d7f: $06 $32
	ld   [hl], $35                                   ; $6d81: $36 $35
	inc  sp                                          ; $6d83: $33
	ld   b, l                                        ; $6d84: $45
	nop                                              ; $6d85: $00
	rst  $38                                         ; $6d86: $ff
	adc  e                                           ; $6d87: $8b
	nop                                              ; $6d88: $00
	ld   [bc], a                                     ; $6d89: $02
	rst  $38                                         ; $6d8a: $ff
	nop                                              ; $6d8b: $00
	rst  $38                                         ; $6d8c: $ff
	adc  c                                           ; $6d8d: $89
	nop                                              ; $6d8e: $00
	add  b                                           ; $6d8f: $80
	ld   bc, $ff05                                   ; $6d90: $01 $05 $ff
	nop                                              ; $6d93: $00
	cp   $00                                         ; $6d94: $fe $00
	ld   c, $00                                      ; $6d96: $0e $00
	add  b                                           ; $6d98: $80
	rrca                                             ; $6d99: $0f
	add  d                                           ; $6d9a: $82
	nop                                              ; $6d9b: $00
	add  h                                           ; $6d9c: $84
	rrca                                             ; $6d9d: $0f
	inc  bc                                          ; $6d9e: $03
	adc  a                                           ; $6d9f: $8f
	ld   [hl], b                                     ; $6da0: $70
	rrca                                             ; $6da1: $0f
	nop                                              ; $6da2: $00
	add  b                                           ; $6da3: $80
	rst  $38                                         ; $6da4: $ff
	add  d                                           ; $6da5: $82
	nop                                              ; $6da6: $00
	add  h                                           ; $6da7: $84
	ld   sp, hl                                      ; $6da8: $f9
	db   $10                                         ; $6da9: $10
	rst  $38                                         ; $6daa: $ff
	nop                                              ; $6dab: $00
	ldh  a, [rAUD1SWEEP]                             ; $6dac: $f0 $10
	sbc  $e2                                         ; $6dae: $de $e2
	ld   h, e                                        ; $6db0: $63
	ld   a, h                                        ; $6db1: $7c
	inc  [hl]                                        ; $6db2: $34
	rrca                                             ; $6db3: $0f
	and  [hl]                                        ; $6db4: $a6
	pop  hl                                          ; $6db5: $e1
	call nz, $f8fc                                   ; $6db6: $c4 $fc $f8
	adc  [hl]                                        ; $6db9: $8e
	pop  af                                          ; $6dba: $f1
	add  e                                           ; $6dbb: $83
	nop                                              ; $6dbc: $00
	ld   a, [bc]                                     ; $6dbd: $0a
	ret  nz                                          ; $6dbe: $c0

	ld   b, b                                        ; $6dbf: $40
	ld   a, b                                        ; $6dc0: $78
	adc  b                                           ; $6dc1: $88
	adc  a                                           ; $6dc2: $8f
	pop  af                                          ; $6dc3: $f1
	pop  de                                          ; $6dc4: $d1
	ld   a, $da                                      ; $6dc5: $3e $da
	add  $fd                                         ; $6dc7: $c6 $fd
	adc  [hl]                                        ; $6dc9: $8e
	nop                                              ; $6dca: $00
	add  b                                           ; $6dcb: $80
	ld   a, h                                        ; $6dcc: $7c
	add  b                                           ; $6dcd: $80
	xor  [hl]                                        ; $6dce: $ae
	add  b                                           ; $6dcf: $80
	dec  e                                           ; $6dd0: $1d
	add  b                                           ; $6dd1: $80
	ld   c, $80                                      ; $6dd2: $0e $80
	ld   e, a                                        ; $6dd4: $5f
	add  b                                           ; $6dd5: $80
	cp   $80                                         ; $6dd6: $fe $80
	ld   a, l                                        ; $6dd8: $7d
	add  b                                           ; $6dd9: $80
	xor  d                                           ; $6dda: $aa
	add  b                                           ; $6ddb: $80
	ld   bc, $2a80                                   ; $6ddc: $01 $80 $2a
	add  b                                           ; $6ddf: $80
	dec  e                                           ; $6de0: $1d
	add  b                                           ; $6de1: $80
	xor  a                                           ; $6de2: $af
	add  b                                           ; $6de3: $80
	rst  $38                                         ; $6de4: $ff
	add  b                                           ; $6de5: $80
	cp   a                                           ; $6de6: $bf
	add  b                                           ; $6de7: $80
	ld   d, l                                        ; $6de8: $55
	add  b                                           ; $6de9: $80
	ld   [$7780], sp                                 ; $6dea: $08 $80 $77
	add  b                                           ; $6ded: $80
	xor  d                                           ; $6dee: $aa
	add  h                                           ; $6def: $84
	rst  $38                                         ; $6df0: $ff
	add  b                                           ; $6df1: $80
	rst  $28                                         ; $6df2: $ef
	add  b                                           ; $6df3: $80
	ld   b, l                                        ; $6df4: $45
	add  b                                           ; $6df5: $80
	xor  b                                           ; $6df6: $a8
	add  b                                           ; $6df7: $80
	push af                                          ; $6df8: $f5
	add  b                                           ; $6df9: $80
	add  d                                           ; $6dfa: $82
	add  b                                           ; $6dfb: $80
	nop                                              ; $6dfc: $00
	add  b                                           ; $6dfd: $80
	and  b                                           ; $6dfe: $a0
	add  b                                           ; $6dff: $80
	call nc, $fe80                                   ; $6e00: $d4 $80 $fe
	add  b                                           ; $6e03: $80
	ld   a, h                                        ; $6e04: $7c
	ld   [bc], a                                     ; $6e05: $02
	xor  d                                           ; $6e06: $aa
	jp   c, $8000                                    ; $6e07: $da $00 $80

	db   $10                                         ; $6e0a: $10
	add  b                                           ; $6e0b: $80
	sbc  b                                           ; $6e0c: $98
	rlca                                             ; $6e0d: $07
	jr   nz, @-$46                                   ; $6e0e: $20 $b8

	stop                                             ; $6e10: $10 $00
	db   $10                                         ; $6e12: $10
	sbc  b                                           ; $6e13: $98
	ld   [bc], a                                     ; $6e14: $02
	nop                                              ; $6e15: $00
	add  b                                           ; $6e16: $80
	ld   d, l                                        ; $6e17: $55
	ld   [$006f], sp                                 ; $6e18: $08 $6f $00
	ld   [hl+], a                                    ; $6e1b: $22
	nop                                              ; $6e1c: $00
	ld   [$0014], sp                                 ; $6e1d: $08 $14 $00
	inc  d                                           ; $6e20: $14
	ld   a, [hl+]                                    ; $6e21: $2a
	add  b                                           ; $6e22: $80
	nop                                              ; $6e23: $00
	nop                                              ; $6e24: $00
	inc  d                                           ; $6e25: $14
	add  b                                           ; $6e26: $80
	nop                                              ; $6e27: $00
	inc  bc                                          ; $6e28: $03
	ld   [$8100], sp                                 ; $6e29: $08 $00 $81
	ld   b, b                                        ; $6e2c: $40
	add  d                                           ; $6e2d: $82
	nop                                              ; $6e2e: $00
	ld   [bc], a                                     ; $6e2f: $02
	jr   nz, jr_078_6e32                             ; $6e30: $20 $00

jr_078_6e32:
	ld   b, b                                        ; $6e32: $40
	add  b                                           ; $6e33: $80
	nop                                              ; $6e34: $00
	dec  b                                           ; $6e35: $05
	ld   b, b                                        ; $6e36: $40
	jr   nz, jr_078_6e39                             ; $6e37: $20 $00

jr_078_6e39:
	rra                                              ; $6e39: $1f
	ld   b, b                                        ; $6e3a: $40
	adc  a                                           ; $6e3b: $8f
	adc  c                                           ; $6e3c: $89
	nop                                              ; $6e3d: $00
	inc  bc                                          ; $6e3e: $03
	rrca                                             ; $6e3f: $0f
	nop                                              ; $6e40: $00
	ldh  [rIE], a                                    ; $6e41: $e0 $ff
	adc  d                                           ; $6e43: $8a
	nop                                              ; $6e44: $00
	nop                                              ; $6e45: $00
	rst  $38                                         ; $6e46: $ff
	add  b                                           ; $6e47: $80
	nop                                              ; $6e48: $00
	ld   bc, $01fe                                   ; $6e49: $01 $fe $01
	adc  c                                           ; $6e4c: $89
	nop                                              ; $6e4d: $00
	nop                                              ; $6e4e: $00
	rst  $38                                         ; $6e4f: $ff
	add  b                                           ; $6e50: $80
	ld   a, a                                        ; $6e51: $7f
	ld   bc, $ef00                                   ; $6e52: $01 $00 $ef
	add  [hl]                                        ; $6e55: $86
	rra                                              ; $6e56: $1f
	add  c                                           ; $6e57: $81
	rrca                                             ; $6e58: $0f
	nop                                              ; $6e59: $00
	ldh  [$80], a                                    ; $6e5a: $e0 $80
	rst  $38                                         ; $6e5c: $ff
	ld   bc, $ff00                                   ; $6e5d: $01 $00 $ff
	add  e                                           ; $6e60: $83
	rrca                                             ; $6e61: $0f
	add  d                                           ; $6e62: $82
	nop                                              ; $6e63: $00
	add  b                                           ; $6e64: $80
	rrca                                             ; $6e65: $0f
	add  b                                           ; $6e66: $80
	rlca                                             ; $6e67: $07
	add  b                                           ; $6e68: $80
	inc  bc                                          ; $6e69: $03
	nop                                              ; $6e6a: $00
	add  hl, bc                                      ; $6e6b: $09
	add  e                                           ; $6e6c: $83
	ld   sp, hl                                      ; $6e6d: $f9
	add  d                                           ; $6e6e: $82
	ld   bc, $f984                                   ; $6e6f: $01 $84 $f9
	nop                                              ; $6e72: $00

jr_078_6e73:
	add  b                                           ; $6e73: $80
	add  b                                           ; $6e74: $80
	ldh  [rAUD1LEN], a                               ; $6e75: $e0 $11
	db   $fc                                         ; $6e77: $fc
	sbc  h                                           ; $6e78: $9c
	cp   $e2                                         ; $6e79: $fe $e2
	cp   $8d                                         ; $6e7b: $fe $8d
	adc  a                                           ; $6e7d: $8f
	add  b                                           ; $6e7e: $80
	ldh  a, [$e0]                                    ; $6e7f: $f0 $e0
	sbc  $ca                                         ; $6e81: $de $ca
	add  $c2                                         ; $6e83: $c6 $c2
	ldh  a, [$e3]                                    ; $6e85: $f0 $e3
	sbc  d                                           ; $6e87: $9a
	adc  d                                           ; $6e88: $8a
	add  b                                           ; $6e89: $80
	ldh  [c], a                                      ; $6e8a: $e2
	add  c                                           ; $6e8b: $81
	ei                                               ; $6e8c: $fb
	ld   b, $9b                                      ; $6e8d: $06 $9b
	ei                                               ; $6e8f: $fb
	add  a                                           ; $6e90: $87
	sbc  a                                           ; $6e91: $9f
	add  d                                           ; $6e92: $82
	db   $e3                                         ; $6e93: $e3
	sbc  [hl]                                        ; $6e94: $9e
	add  e                                           ; $6e95: $83
	nop                                              ; $6e96: $00
	inc  b                                           ; $6e97: $04
	ld   b, b                                        ; $6e98: $40
	ret  nz                                          ; $6e99: $c0

	adc  b                                           ; $6e9a: $88
	ld   hl, sp-$10                                  ; $6e9b: $f8 $f0
	add  b                                           ; $6e9d: $80
	cp   $03                                         ; $6e9e: $fe $03
	rst  $38                                         ; $6ea0: $ff
	ccf                                              ; $6ea1: $3f
	rst  $38                                         ; $6ea2: $ff
	ccf                                              ; $6ea3: $3f
	add  c                                           ; $6ea4: $81
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	db   $10                                         ; $6ea7: $10
	add  [hl]                                        ; $6ea8: $86
	ld   [$8800], sp                                 ; $6ea9: $08 $00 $88
	add  b                                           ; $6eac: $80
	ret  z                                           ; $6ead: $c8

	nop                                              ; $6eae: $00
	sbc  b                                           ; $6eaf: $98
	adc  c                                           ; $6eb0: $89
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	ld   c, $81                                      ; $6eb3: $0e $81
	ld   b, $00                                      ; $6eb5: $06 $00
	ld   [$0084], sp                                 ; $6eb7: $08 $84 $00
	add  b                                           ; $6eba: $80
	ld   bc, $0380                                   ; $6ebb: $01 $80 $03
	ld   bc, $e007                                   ; $6ebe: $01 $07 $e0
	add  b                                           ; $6ec1: $80
	ld   h, b                                        ; $6ec2: $60
	ld   bc, $8067                                   ; $6ec3: $01 $67 $80
	add  h                                           ; $6ec6: $84
	nop                                              ; $6ec7: $00
	add  e                                           ; $6ec8: $83
	rst  $38                                         ; $6ec9: $ff
	add  c                                           ; $6eca: $81
	nop                                              ; $6ecb: $00
	ld   [bc], a                                     ; $6ecc: $02
	rst  $38                                         ; $6ecd: $ff
	ld   [hl], l                                     ; $6ece: $75
	ld   d, d                                        ; $6ecf: $52
	add  b                                           ; $6ed0: $80
	ld   e, d                                        ; $6ed1: $5a
	nop                                              ; $6ed2: $00
	ld   e, a                                        ; $6ed3: $5f
	add  b                                           ; $6ed4: $80
	rlca                                             ; $6ed5: $07
	ld   [bc], a                                     ; $6ed6: $02
	add  a                                           ; $6ed7: $87
	add  b                                           ; $6ed8: $80
	add  a                                           ; $6ed9: $87
	add  b                                           ; $6eda: $80
	add  l                                           ; $6edb: $85
	add  b                                           ; $6edc: $80
	dec  b                                           ; $6edd: $05
	inc  bc                                          ; $6ede: $03
	rlca                                             ; $6edf: $07
	adc  a                                           ; $6ee0: $8f
	ld   [hl], c                                     ; $6ee1: $71
	nop                                              ; $6ee2: $00
	add  c                                           ; $6ee3: $81
	add  b                                           ; $6ee4: $80
	add  d                                           ; $6ee5: $82
	nop                                              ; $6ee6: $00
	rlca                                             ; $6ee7: $07
	ld   b, b                                        ; $6ee8: $40
	ld   d, b                                        ; $6ee9: $50
	ld   [hl], b                                     ; $6eea: $70
	ld   l, b                                        ; $6eeb: $68
	ld   a, b                                        ; $6eec: $78
	inc  d                                           ; $6eed: $14
	sbc  h                                           ; $6eee: $9c
	jp   hl                                          ; $6eef: $e9


	add  b                                           ; $6ef0: $80
	jr   nz, jr_078_6e73                             ; $6ef1: $20 $80

	ld   b, b                                        ; $6ef3: $40
	add  d                                           ; $6ef4: $82
	ld   h, b                                        ; $6ef5: $60
	add  b                                           ; $6ef6: $80
	jr   nz, @-$7b                                   ; $6ef7: $20 $83

	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	sub  b                                           ; $6efb: $90
	add  b                                           ; $6efc: $80
	rrca                                             ; $6efd: $0f
	add  b                                           ; $6efe: $80
	inc  bc                                          ; $6eff: $03
	adc  c                                           ; $6f00: $89
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	ld   [bc], a                                     ; $6f03: $02
	add  d                                           ; $6f04: $82
	rst  $38                                         ; $6f05: $ff
	add  b                                           ; $6f06: $80
	ld   a, a                                        ; $6f07: $7f
	add  b                                           ; $6f08: $80
	rra                                              ; $6f09: $1f
	add  l                                           ; $6f0a: $85
	inc  bc                                          ; $6f0b: $03
	nop                                              ; $6f0c: $00
	ld   bc, $ff86                                   ; $6f0d: $01 $86 $ff
	add  b                                           ; $6f10: $80
	ld   hl, sp-$80                                  ; $6f11: $f8 $80
	ret  nz                                          ; $6f13: $c0

	add  d                                           ; $6f14: $82
	nop                                              ; $6f15: $00
	add  b                                           ; $6f16: $80
	rst  $38                                         ; $6f17: $ff
	add  b                                           ; $6f18: $80
	ld   hl, sp-$80                                  ; $6f19: $f8 $80
	ldh  [$87], a                                    ; $6f1b: $e0 $87
	nop                                              ; $6f1d: $00
	ld   bc, $010e                                   ; $6f1e: $01 $0e $01
	add  d                                           ; $6f21: $82
	nop                                              ; $6f22: $00
	add  b                                           ; $6f23: $80
	ld   bc, $0082                                   ; $6f24: $01 $82 $00
	nop                                              ; $6f27: $00
	ld   bc, $0d81                                   ; $6f28: $01 $81 $0d
	nop                                              ; $6f2b: $00
	dec  b                                           ; $6f2c: $05
	add  c                                           ; $6f2d: $81
	ld   sp, hl                                      ; $6f2e: $f9
	add  b                                           ; $6f2f: $80
	ld   a, c                                        ; $6f30: $79
	add  d                                           ; $6f31: $82
	ld   sp, hl                                      ; $6f32: $f9
	add  b                                           ; $6f33: $80
	ld   a, c                                        ; $6f34: $79
	add  b                                           ; $6f35: $80
	ld   sp, hl                                      ; $6f36: $f9
	add  b                                           ; $6f37: $80
	sbc  c                                           ; $6f38: $99
	ld   bc, $cab0                                   ; $6f39: $01 $b0 $ca

jr_078_6f3c:
	add  h                                           ; $6f3c: $84
	jp   nz, $fa0a                                   ; $6f3d: $c2 $0a $fa

	ldh  a, [c]                                      ; $6f40: $f2
	or   d                                           ; $6f41: $b2
	cp   $c6                                         ; $6f42: $fe $c6
	cp   $89                                         ; $6f44: $fe $89
	adc  a                                           ; $6f46: $8f
	add  d                                           ; $6f47: $82
	jp   c, $84fa                                    ; $6f48: $da $fa $84

	jp   z, $cb00                                    ; $6f4b: $ca $00 $cb

	add  b                                           ; $6f4e: $80
	db   $eb                                         ; $6f4f: $eb
	jr   jr_078_6f3c                                 ; $6f50: $18 $ea

	ei                                               ; $6f52: $fb
	adc  e                                           ; $6f53: $8b
	ei                                               ; $6f54: $fb
	rrca                                             ; $6f55: $0f
	rst  $38                                         ; $6f56: $ff
	ld   hl, sp-$61                                  ; $6f57: $f8 $9f
	rst  JumpTable                                         ; $6f59: $df
	sub  e                                           ; $6f5a: $93
	sbc  e                                           ; $6f5b: $9b
	sub  d                                           ; $6f5c: $92
	sub  e                                           ; $6f5d: $93
	sub  d                                           ; $6f5e: $92
	jp   nc, $3af2                                   ; $6f5f: $d2 $f2 $3a

	cp   $c3                                         ; $6f62: $fe $c3
	rst  $38                                         ; $6f64: $ff
	call z, $c8e8                                    ; $6f65: $cc $e8 $c8
	add  sp, $28                                     ; $6f68: $e8 $28
	add  b                                           ; $6f6a: $80
	add  sp, -$7f                                    ; $6f6b: $e8 $81
	ld   c, b                                        ; $6f6d: $48
	ld   bc, $486f                                   ; $6f6e: $01 $6f $48
	add  b                                           ; $6f71: $80
	ld   c, e                                        ; $6f72: $4b
	inc  b                                           ; $6f73: $04
	ld   c, b                                        ; $6f74: $48
	ret  z                                           ; $6f75: $c8

	scf                                              ; $6f76: $37
	ld   b, $0e                                      ; $6f77: $06 $0e
	add  c                                           ; $6f79: $81
	ld   a, a                                        ; $6f7a: $7f
	add  b                                           ; $6f7b: $80
	nop                                              ; $6f7c: $00
	dec  b                                           ; $6f7d: $05
	ld   b, b                                        ; $6f7e: $40
	rra                                              ; $6f7f: $1f
	sbc  $02                                         ; $6f80: $de $02
	cp   $fd                                         ; $6f82: $fe $fd
	add  b                                           ; $6f84: $80
	nop                                              ; $6f85: $00
	dec  b                                           ; $6f86: $05
	ld   a, b                                        ; $6f87: $78
	ld   h, [hl]                                     ; $6f88: $66
	rst  $20                                         ; $6f89: $e7
	cp   $f8                                         ; $6f8a: $fe $f8
	rst  $38                                         ; $6f8c: $ff
	add  b                                           ; $6f8d: $80
	rlca                                             ; $6f8e: $07
	ld   a, [bc]                                     ; $6f8f: $0a
	ld   [$2cb8], sp                                 ; $6f90: $08 $b8 $2c
	cpl                                              ; $6f93: $2f
	inc  c                                           ; $6f94: $0c
	cp   h                                           ; $6f95: $bc
	sbc  h                                           ; $6f96: $9c
	cpl                                              ; $6f97: $2f
	or   b                                           ; $6f98: $b0
	ld   c, c                                        ; $6f99: $49
	ld   l, l                                        ; $6f9a: $6d
	add  c                                           ; $6f9b: $81
	ld   c, c                                        ; $6f9c: $49
	nop                                              ; $6f9d: $00
	adc  l                                           ; $6f9e: $8d
	add  c                                           ; $6f9f: $81
	rst  $38                                         ; $6fa0: $ff
	inc  bc                                          ; $6fa1: $03
	rra                                              ; $6fa2: $1f
	add  hl, bc                                      ; $6fa3: $09
	call $80e9                                       ; $6fa4: $cd $e9 $80
	ret                                              ; $6fa7: $c9


	inc  bc                                          ; $6fa8: $03
	dec  l                                           ; $6fa9: $2d
	rrca                                             ; $6faa: $0f
	adc  a                                           ; $6fab: $8f
	inc  c                                           ; $6fac: $0c
	add  b                                           ; $6fad: $80
	ld   c, $82                                      ; $6fae: $0e $82
	adc  [hl]                                        ; $6fb0: $8e
	inc  bc                                          ; $6fb1: $03
	adc  h                                           ; $6fb2: $8c
	rrca                                             ; $6fb3: $0f
	adc  a                                           ; $6fb4: $8f
	inc  c                                           ; $6fb5: $0c
	add  b                                           ; $6fb6: $80
	ld   c, $10                                      ; $6fb7: $0e $10
	add  d                                           ; $6fb9: $82
	db   $ec                                         ; $6fba: $ec
	db   $e4                                         ; $6fbb: $e4
	db   $fc                                         ; $6fbc: $fc
	ld   hl, sp-$44                                  ; $6fbd: $f8 $bc
	xor  h                                           ; $6fbf: $ac
	cp   h                                           ; $6fc0: $bc
	cp   $f8                                         ; $6fc1: $fe $f8
	xor  c                                           ; $6fc3: $a9
	ld   hl, sp-$15                                  ; $6fc4: $f8 $eb
	cp   b                                           ; $6fc6: $b8
	cp   c                                           ; $6fc7: $b9
	cp   b                                           ; $6fc8: $b8
	call nz, $0084                                   ; $6fc9: $c4 $84 $00
	inc  bc                                          ; $6fcc: $03
	rrca                                             ; $6fcd: $0f
	ld   h, b                                        ; $6fce: $60
	nop                                              ; $6fcf: $00
	rst  $38                                         ; $6fd0: $ff
	add  c                                           ; $6fd1: $81
	nop                                              ; $6fd2: $00
	ld   [bc], a                                     ; $6fd3: $02
	add  b                                           ; $6fd4: $80
	nop                                              ; $6fd5: $00
	add  b                                           ; $6fd6: $80
	add  h                                           ; $6fd7: $84
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	rst  $38                                         ; $6fda: $ff
	add  b                                           ; $6fdb: $80
	nop                                              ; $6fdc: $00
	inc  b                                           ; $6fdd: $04
	rst  $38                                         ; $6fde: $ff
	nop                                              ; $6fdf: $00
	ld   bc, $0300                                   ; $6fe0: $01 $00 $03
	add  b                                           ; $6fe3: $80
	ld   bc, $0382                                   ; $6fe4: $01 $82 $03
	add  b                                           ; $6fe7: $80
	ld   bc, $fd00                                   ; $6fe8: $01 $00 $fd
	add  b                                           ; $6feb: $80
	nop                                              ; $6fec: $00
	add  b                                           ; $6fed: $80
	ld   e, a                                        ; $6fee: $5f
	add  c                                           ; $6fef: $81
	rst  JumpTable                                         ; $6ff0: $df
	ld   bc, $7f5f                                   ; $6ff1: $01 $5f $7f
	add  h                                           ; $6ff4: $84
	nop                                              ; $6ff5: $00
	inc  bc                                          ; $6ff6: $03
	rst  $38                                         ; $6ff7: $ff
	nop                                              ; $6ff8: $00
	rst  $38                                         ; $6ff9: $ff
	nop                                              ; $6ffa: $00
	add  h                                           ; $6ffb: $84
	rst  $38                                         ; $6ffc: $ff
	add  h                                           ; $6ffd: $84
	nop                                              ; $6ffe: $00
	inc  bc                                          ; $6fff: $03
	rst  $38                                         ; $7000: $ff
	nop                                              ; $7001: $00
	ld   hl, sp+$05                                  ; $7002: $f8 $05
	add  b                                           ; $7004: $80
	db   $fd                                         ; $7005: $fd
	add  c                                           ; $7006: $81
	rst  $38                                         ; $7007: $ff
	nop                                              ; $7008: $00
	ldh  a, [c]                                      ; $7009: $f2
	add  [hl]                                        ; $700a: $86
	nop                                              ; $700b: $00
	add  d                                           ; $700c: $82
	rrca                                             ; $700d: $0f
	add  c                                           ; $700e: $81
	ld   bc, $b802                                   ; $700f: $01 $02 $b8
	add  hl, bc                                      ; $7012: $09
	ld   e, c                                        ; $7013: $59
	add  b                                           ; $7014: $80
	add  hl, bc                                      ; $7015: $09
	add  c                                           ; $7016: $81
	add  hl, de                                      ; $7017: $19
	add  d                                           ; $7018: $82
	ld   e, c                                        ; $7019: $59
	add  c                                           ; $701a: $81
	nop                                              ; $701b: $00
	rlca                                             ; $701c: $07
	ld   e, e                                        ; $701d: $5b
	set  6, b                                        ; $701e: $cb $f0
	ldh  [$fe], a                                    ; $7020: $e0 $fe
	or   $ce                                         ; $7022: $f6 $ce
	add  $83                                         ; $7024: $c6 $83
	jp   nz, $4282                                   ; $7026: $c2 $82 $42

	rlca                                             ; $7029: $07
	call c, $a39f                                    ; $702a: $dc $9f $a3
	db   $e3                                         ; $702d: $e3
	jp   nz, $e9fa                                   ; $702e: $c2 $fa $e9

	ret  c                                           ; $7031: $d8

	add  [hl]                                        ; $7032: $86
	jp   z, Jump_078_570a                            ; $7033: $ca $0a $57

	rst  $38                                         ; $7036: $ff
	pop  hl                                          ; $7037: $e1
	rst  $38                                         ; $7038: $ff
	cp   $3f                                         ; $7039: $fe $3f
	cp   e                                           ; $703b: $bb
	ld   h, $a3                                      ; $703c: $26 $a3
	ld   [hl+], a                                    ; $703e: $22
	and  d                                           ; $703f: $a2
	add  e                                           ; $7040: $83
	ld   [hl+], a                                    ; $7041: $22
	ld   bc, $cb68                                   ; $7042: $01 $68 $cb
	add  b                                           ; $7045: $80
	ret  z                                           ; $7046: $c8

	inc  bc                                          ; $7047: $03
	add  hl, bc                                      ; $7048: $09
	ret                                              ; $7049: $c9


	ret  z                                           ; $704a: $c8

	ld   c, b                                        ; $704b: $48
	add  b                                           ; $704c: $80
	ld   c, d                                        ; $704d: $4a
	nop                                              ; $704e: $00
	ld   c, b                                        ; $704f: $48
	add  e                                           ; $7050: $83
	ld   c, d                                        ; $7051: $4a
	ld   bc, $febc                                   ; $7052: $01 $bc $fe
	add  b                                           ; $7055: $80
	nop                                              ; $7056: $00
	add  b                                           ; $7057: $80
	db   $fc                                         ; $7058: $fc
	ld   bc, $0100                                   ; $7059: $01 $00 $01
	add  b                                           ; $705c: $80
	add  [hl]                                        ; $705d: $86
	nop                                              ; $705e: $00
	nop                                              ; $705f: $00
	add  d                                           ; $7060: $82
	add  [hl]                                        ; $7061: $86
	add  hl, bc                                      ; $7062: $09
	cp   $60                                         ; $7063: $fe $60
	inc  l                                           ; $7065: $2c
	dec  c                                           ; $7066: $0d
	cp   a                                           ; $7067: $bf
	sbc  b                                           ; $7068: $98
	daa                                              ; $7069: $27
	add  hl, sp                                      ; $706a: $39
	jr   nz, jr_078_70a0                             ; $706b: $20 $33

	add  e                                           ; $706d: $83
	jr   nz, jr_078_7072                             ; $706e: $20 $02

	jr   z, jr_078_7092                              ; $7070: $28 $20

jr_078_7072:
	ld   e, h                                        ; $7072: $5c
	add  b                                           ; $7073: $80
	rst  $38                                         ; $7074: $ff
	add  b                                           ; $7075: $80
	rst  JumpTable                                         ; $7076: $df
	dec  b                                           ; $7077: $05
	jp   hl                                          ; $7078: $e9


	adc  l                                           ; $7079: $8d
	ld   l, c                                        ; $707a: $69
	ld   c, c                                        ; $707b: $49
	add  hl, bc                                      ; $707c: $09
	dec  c                                           ; $707d: $0d
	add  c                                           ; $707e: $81
	rra                                              ; $707f: $1f
	inc  b                                           ; $7080: $04
	ld   e, a                                        ; $7081: $5f
	rra                                              ; $7082: $1f
	db   $fd                                         ; $7083: $fd
	adc  [hl]                                        ; $7084: $8e
	adc  h                                           ; $7085: $8c
	add  b                                           ; $7086: $80
	adc  a                                           ; $7087: $8f
	ld   [bc], a                                     ; $7088: $02
	inc  c                                           ; $7089: $0c
	adc  [hl]                                        ; $708a: $8e
	ld   c, $80                                      ; $708b: $0e $80
	ld   e, $0a                                      ; $708d: $1e $0a
	sbc  h                                           ; $708f: $9c
	sbc  a                                           ; $7090: $9f
	xor  a                                           ; $7091: $af

jr_078_7092:
	scf                                              ; $7092: $37
	ld   [de], a                                     ; $7093: $12
	ld   [bc], a                                     ; $7094: $02
	ld   d, h                                        ; $7095: $54
	ld   hl, sp-$58                                  ; $7096: $f8 $a8
	ld   hl, sp-$18                                  ; $7098: $f8 $e8
	add  c                                           ; $709a: $81
	cp   b                                           ; $709b: $b8
	add  b                                           ; $709c: $80
	ld   hl, sp+$01                                  ; $709d: $f8 $01
	xor  b                                           ; $709f: $a8

jr_078_70a0:
	ld   hl, sp-$80                                  ; $70a0: $f8 $80
	ret  nc                                          ; $70a2: $d0

	add  b                                           ; $70a3: $80
	xor  b                                           ; $70a4: $a8
	ld   bc, $4044                                   ; $70a5: $01 $44 $40
	add  b                                           ; $70a8: $80
	jr   nz, @-$7e                                   ; $70a9: $20 $80

	db   $10                                         ; $70ab: $10
	ld   b, $08                                      ; $70ac: $06 $08
	nop                                              ; $70ae: $00
	inc  c                                           ; $70af: $0c
	nop                                              ; $70b0: $00
	rlca                                             ; $70b1: $07
	ld   bc, $8103                                   ; $70b2: $01 $03 $81
	nop                                              ; $70b5: $00
	inc  c                                           ; $70b6: $0c
	dec  b                                           ; $70b7: $05
	ld   b, $0a                                      ; $70b8: $06 $0a
	inc  c                                           ; $70ba: $0c
	inc  d                                           ; $70bb: $14
	jr   jr_078_70e6                                 ; $70bc: $18 $28

	jr   nc, jr_078_7110                             ; $70be: $30 $50

	ld   h, b                                        ; $70c0: $60
	and  b                                           ; $70c1: $a0
	ret  nz                                          ; $70c2: $c0

	ld   b, b                                        ; $70c3: $40
	add  c                                           ; $70c4: $81
	add  b                                           ; $70c5: $80
	nop                                              ; $70c6: $00
	and  b                                           ; $70c7: $a0
	adc  b                                           ; $70c8: $88
	ld   e, b                                        ; $70c9: $58
	nop                                              ; $70ca: $00
	ld   e, a                                        ; $70cb: $5f
	add  b                                           ; $70cc: $80
	add  b                                           ; $70cd: $80
	ld   [bc], a                                     ; $70ce: $02
	rst  $38                                         ; $70cf: $ff
	nop                                              ; $70d0: $00
	add  b                                           ; $70d1: $80
	adc  b                                           ; $70d2: $88
	nop                                              ; $70d3: $00
	ld   [bc], a                                     ; $70d4: $02
	rst  $38                                         ; $70d5: $ff
	nop                                              ; $70d6: $00
	rst  $38                                         ; $70d7: $ff
	add  b                                           ; $70d8: $80
	nop                                              ; $70d9: $00
	nop                                              ; $70da: $00
	ld   [bc], a                                     ; $70db: $02
	adc  b                                           ; $70dc: $88
	ld   bc, $fd05                                   ; $70dd: $01 $05 $fd
	nop                                              ; $70e0: $00
	inc  b                                           ; $70e1: $04
	rst  $38                                         ; $70e2: $ff
	ld   b, $0d                                      ; $70e3: $06 $0d
	add  c                                           ; $70e5: $81

jr_078_70e6:
	ld   bc, $0e01                                   ; $70e6: $01 $01 $0e
	nop                                              ; $70e9: $00
	add  d                                           ; $70ea: $82
	rrca                                             ; $70eb: $0f
	ld   [bc], a                                     ; $70ec: $02
	nop                                              ; $70ed: $00
	rrca                                             ; $70ee: $0f
	nop                                              ; $70ef: $00

Jump_078_70f0:
	add  c                                           ; $70f0: $81
	rrca                                             ; $70f1: $0f
	dec  c                                           ; $70f2: $0d
	rst  $38                                         ; $70f3: $ff
	ld   e, e                                        ; $70f4: $5b
	nop                                              ; $70f5: $00
	ld   e, e                                        ; $70f6: $5b
	rst  JumpTable                                         ; $70f7: $df
	nop                                              ; $70f8: $00
	rst  JumpTable                                         ; $70f9: $df
	rst  $38                                         ; $70fa: $ff
	ldh  [rIE], a                                    ; $70fb: $e0 $ff
	nop                                              ; $70fd: $00
	rst  $38                                         ; $70fe: $ff
	ld   e, $fe                                      ; $70ff: $1e $fe
	add  b                                           ; $7101: $80
	ld   bc, $ff0b                                   ; $7102: $01 $0b $ff
	ld   b, d                                        ; $7105: $42
	cp   l                                           ; $7106: $bd
	nop                                              ; $7107: $00
	ld   a, a                                        ; $7108: $7f
	rst  $38                                         ; $7109: $ff
	ld   a, a                                        ; $710a: $7f
	rst  $38                                         ; $710b: $ff
	nop                                              ; $710c: $00
	rst  $38                                         ; $710d: $ff
	nop                                              ; $710e: $00
	rst  $38                                         ; $710f: $ff

jr_078_7110:
	add  b                                           ; $7110: $80
	ld   bc, $ff33                                   ; $7111: $01 $33 $ff
	nop                                              ; $7114: $00
	add  d                                           ; $7115: $82
	jp   z, $00b6                                    ; $7116: $ca $b6 $00

	cp   $ff                                         ; $7119: $fe $ff
	add  b                                           ; $711b: $80
	rst  $38                                         ; $711c: $ff
	nop                                              ; $711d: $00
	rst  $38                                         ; $711e: $ff
	add  b                                           ; $711f: $80
	nop                                              ; $7120: $00
	rst  $38                                         ; $7121: $ff
	nop                                              ; $7122: $00
	add  b                                           ; $7123: $80
	rst  $38                                         ; $7124: $ff
	ld   a, a                                        ; $7125: $7f
	db   $e3                                         ; $7126: $e3
	inc  e                                           ; $7127: $1c
	nop                                              ; $7128: $00
	cp   $ff                                         ; $7129: $fe $ff
	nop                                              ; $712b: $00
	rst  $38                                         ; $712c: $ff
	ld   bc, $e0ff                                   ; $712d: $01 $ff $e0
	rra                                              ; $7130: $1f
	add  b                                           ; $7131: $80
	rst  $38                                         ; $7132: $ff
	ld   b, b                                        ; $7133: $40
	ret  nz                                          ; $7134: $c0

	rst  $30                                         ; $7135: $f7
	jp   z, $1528                                    ; $7136: $ca $28 $15

	ld   bc, $01ff                                   ; $7139: $01 $ff $01
	rst  $38                                         ; $713c: $ff
	nop                                              ; $713d: $00
	rst  $38                                         ; $713e: $ff
	rlca                                             ; $713f: $07
	ld   hl, sp+$07                                  ; $7140: $f8 $07
	nop                                              ; $7142: $00
	db   $fc                                         ; $7143: $fc
	rlca                                             ; $7144: $07
	inc  bc                                          ; $7145: $03
	rst  $38                                         ; $7146: $ff
	add  b                                           ; $7147: $80
	ld   d, l                                        ; $7148: $55
	add  b                                           ; $7149: $80
	rst  $38                                         ; $714a: $ff
	dec  c                                           ; $714b: $0d
	rlca                                             ; $714c: $07
	rst  $38                                         ; $714d: $ff
	rlca                                             ; $714e: $07
	rst  $38                                         ; $714f: $ff
	nop                                              ; $7150: $00
	rra                                              ; $7151: $1f
	add  c                                           ; $7152: $81
	ld   a, [hl]                                     ; $7153: $7e
	ld   hl, $e9c2                                   ; $7154: $21 $c2 $e9
	xor  d                                           ; $7157: $aa
	dec  d                                           ; $7158: $15
	ld   d, l                                        ; $7159: $55
	add  b                                           ; $715a: $80
	rst  $38                                         ; $715b: $ff
	dec  bc                                          ; $715c: $0b
	cp   $ff                                         ; $715d: $fe $ff
	add  c                                           ; $715f: $81
	cp   $1e                                         ; $7160: $fe $1e
	pop  hl                                          ; $7162: $e1
	sbc  [hl]                                        ; $7163: $9e
	nop                                              ; $7164: $00
	ldh  [c], a                                      ; $7165: $e2
	inc  bc                                          ; $7166: $03
	ld   d, h                                        ; $7167: $54
	xor  d                                           ; $7168: $aa
	add  b                                           ; $7169: $80
	ld   d, l                                        ; $716a: $55
	add  b                                           ; $716b: $80
	rst  $38                                         ; $716c: $ff
	dec  c                                           ; $716d: $0d
	ccf                                              ; $716e: $3f
	rst  $38                                         ; $716f: $ff
	ret  nz                                          ; $7170: $c0

	rra                                              ; $7171: $1f
	jr   @+$01                                       ; $7172: $18 $ff

	ld   b, a                                        ; $7174: $47
	ld   a, a                                        ; $7175: $7f
	ccf                                              ; $7176: $3f
	rst  $38                                         ; $7177: $ff
	ld   b, l                                        ; $7178: $45
	cp   l                                           ; $7179: $bd
	ld   [bc], a                                     ; $717a: $02
	adc  d                                           ; $717b: $8a
	add  b                                           ; $717c: $80
	adc  a                                           ; $717d: $8f
	ld   [bc], a                                     ; $717e: $02
	rrca                                             ; $717f: $0f
	adc  a                                           ; $7180: $8f
	rrca                                             ; $7181: $0f
	add  e                                           ; $7182: $83
	adc  a                                           ; $7183: $8f
	inc  bc                                          ; $7184: $03
	adc  [hl]                                        ; $7185: $8e
	adc  a                                           ; $7186: $8f
	dec  h                                           ; $7187: $25
	ld   d, b                                        ; $7188: $50
	add  b                                           ; $7189: $80
	xor  b                                           ; $718a: $a8
	add  h                                           ; $718b: $84
	ld   hl, sp+$21                                  ; $718c: $f8 $21
	add  sp, -$08                                    ; $718e: $e8 $f8
	ret  nz                                          ; $7190: $c0

	ld   hl, sp-$60                                  ; $7191: $f8 $a0
	pop  af                                          ; $7193: $f1
	ld   a, [hl]                                     ; $7194: $7e
	nop                                              ; $7195: $00
	rlca                                             ; $7196: $07
	nop                                              ; $7197: $00
	inc  c                                           ; $7198: $0c
	nop                                              ; $7199: $00
	jr   jr_078_719c                                 ; $719a: $18 $00

jr_078_719c:
	jr   nc, jr_078_719e                             ; $719c: $30 $00

jr_078_719e:
	ld   h, b                                        ; $719e: $60
	nop                                              ; $719f: $00
	ret  nz                                          ; $71a0: $c0

	nop                                              ; $71a1: $00
	add  b                                           ; $71a2: $80
	nop                                              ; $71a3: $00
	add  b                                           ; $71a4: $80
	ld   b, c                                        ; $71a5: $41
	add  c                                           ; $71a6: $81
	ld   hl, $3341                                   ; $71a7: $21 $41 $33
	inc  bc                                          ; $71aa: $03
	dec  de                                          ; $71ab: $1b
	inc  bc                                          ; $71ac: $03
	rrca                                             ; $71ad: $0f
	inc  bc                                          ; $71ae: $03
	dec  bc                                          ; $71af: $0b
	add  b                                           ; $71b0: $80
	dec  c                                           ; $71b1: $0d
	ld   [bc], a                                     ; $71b2: $02
	ld   c, $3e                                      ; $71b3: $0e $3e
	cp   a                                           ; $71b5: $bf
	adc  l                                           ; $71b6: $8d
	nop                                              ; $71b7: $00
	nop                                              ; $71b8: $00
	add  b                                           ; $71b9: $80
	adc  l                                           ; $71ba: $8d
	nop                                              ; $71bb: $00
	nop                                              ; $71bc: $00
	inc  b                                           ; $71bd: $04
	adc  d                                           ; $71be: $8a
	ld   b, $81                                      ; $71bf: $06 $81
	ld   [bc], a                                     ; $71c1: $02
	ld   [bc], a                                     ; $71c2: $02
	rlca                                             ; $71c3: $07
	ld   bc, $800f                                   ; $71c4: $01 $0f $80
	nop                                              ; $71c7: $00
	add  c                                           ; $71c8: $81
	rrca                                             ; $71c9: $0f
	add  b                                           ; $71ca: $80
	ld   [$070b], sp                                 ; $71cb: $08 $0b $07
	nop                                              ; $71ce: $00
	add  hl, bc                                      ; $71cf: $09
	ld   bc, $0f00                                   ; $71d0: $01 $00 $0f
	rst  $38                                         ; $71d3: $ff
	nop                                              ; $71d4: $00
	add  b                                           ; $71d5: $80
	rst  $38                                         ; $71d6: $ff
	ld   a, a                                        ; $71d7: $7f
	rst  $38                                         ; $71d8: $ff
	add  b                                           ; $71d9: $80
	ldh  [rDIV], a                                   ; $71da: $e0 $04
	rra                                              ; $71dc: $1f
	nop                                              ; $71dd: $00
	db   $e4                                         ; $71de: $e4
	rlca                                             ; $71df: $07
	inc  bc                                          ; $71e0: $03
	add  c                                           ; $71e1: $81
	rst  $38                                         ; $71e2: $ff
	dec  bc                                          ; $71e3: $0b
	ld   a, a                                        ; $71e4: $7f
	rst  $38                                         ; $71e5: $ff
	ld   a, h                                        ; $71e6: $7c
	db   $fc                                         ; $71e7: $fc
	add  e                                           ; $71e8: $83
	add  b                                           ; $71e9: $80
	ld   a, [hl]                                     ; $71ea: $7e
	inc  bc                                          ; $71eb: $03
	sub  c                                           ; $71ec: $91
	rra                                              ; $71ed: $1f
	rrca                                             ; $71ee: $0f
	rst  $38                                         ; $71ef: $ff
	add  b                                           ; $71f0: $80
	ldh  a, [$09]                                    ; $71f1: $f0 $09
	rrca                                             ; $71f3: $0f
	nop                                              ; $71f4: $00
	rst  $38                                         ; $71f5: $ff
	ldh  a, [rIF]                                    ; $71f6: $f0 $0f
	nop                                              ; $71f8: $00
	ld   hl, sp+$0f                                  ; $71f9: $f8 $0f
	rlca                                             ; $71fb: $07
	rst  $38                                         ; $71fc: $ff
	add  b                                           ; $71fd: $80
	ld   hl, sp+$20                                  ; $71fe: $f8 $20
	add  a                                           ; $7200: $87
	add  b                                           ; $7201: $80
	ld   a, b                                        ; $7202: $78
	add  b                                           ; $7203: $80
	inc  b                                           ; $7204: $04
	rlca                                             ; $7205: $07
	jp   $e000                                       ; $7206: $c3 $00 $e0


	ccf                                              ; $7209: $3f
	inc  e                                           ; $720a: $1c
	db   $fc                                         ; $720b: $fc
	add  e                                           ; $720c: $83
	add  h                                           ; $720d: $84
	ld   a, b                                        ; $720e: $78
	nop                                              ; $720f: $00
	add  h                                           ; $7210: $84
	rlca                                             ; $7211: $07
	ld   b, e                                        ; $7212: $43
	ld   a, a                                        ; $7213: $7f
	ccf                                              ; $7214: $3f
	rst  $38                                         ; $7215: $ff
	ld   a, h                                        ; $7216: $7c
	db   $fc                                         ; $7217: $fc
	ld   b, e                                        ; $7218: $43
	ret  nz                                          ; $7219: $c0

	inc  a                                           ; $721a: $3c
	nop                                              ; $721b: $00
	jp   nz, $2103                                   ; $721c: $c2 $03 $21

	ccf                                              ; $721f: $3f
	rra                                              ; $7220: $1f
	add  e                                           ; $7221: $83
	rst  $38                                         ; $7222: $ff
	ld   b, $3f                                      ; $7223: $06 $3f
	nop                                              ; $7225: $00
	jp   nz, $2103                                   ; $7226: $c2 $03 $21

	ccf                                              ; $7229: $3f
	rra                                              ; $722a: $1f
	add  e                                           ; $722b: $83
	rst  $38                                         ; $722c: $ff
	ld   b, $fe                                      ; $722d: $06 $fe
	rst  $38                                         ; $722f: $ff
	cp   $ff                                         ; $7230: $fe $ff
	rst  $28                                         ; $7232: $ef
	rra                                              ; $7233: $1f
	rrca                                             ; $7234: $0f
	add  l                                           ; $7235: $85
	rst  $38                                         ; $7236: $ff
	inc  b                                           ; $7237: $04
	ldh  [rIE], a                                    ; $7238: $e0 $ff
	rra                                              ; $723a: $1f
	rst  $38                                         ; $723b: $ff
	nop                                              ; $723c: $00
	add  l                                           ; $723d: $85
	rst  $38                                         ; $723e: $ff
	ld   [$fff8], sp                                 ; $723f: $08 $f8 $ff
	ld   hl, sp-$01                                  ; $7242: $f8 $ff
	nop                                              ; $7244: $00
	rst  $38                                         ; $7245: $ff
	add  c                                           ; $7246: $81
	rst  $38                                         ; $7247: $ff
	ld   [hl], h                                     ; $7248: $74
	add  b                                           ; $7249: $80
	rst  $38                                         ; $724a: $ff
	inc  h                                           ; $724b: $24
	adc  a                                           ; $724c: $8f
	add  h                                           ; $724d: $84
	adc  a                                           ; $724e: $8f
	add  l                                           ; $724f: $85
	adc  a                                           ; $7250: $8f
	ld   a, [de]                                     ; $7251: $1a
	sbc  [hl]                                        ; $7252: $9e
	inc  e                                           ; $7253: $1c
	sbc  l                                           ; $7254: $9d
	ld   hl, $04b3                                   ; $7255: $21 $b3 $04
	rla                                              ; $7258: $17
	db   $10                                         ; $7259: $10
	rla                                              ; $725a: $17
	rst  $28                                         ; $725b: $ef
	add  sp, $00                                     ; $725c: $e8 $00
	sbc  a                                           ; $725e: $9f
	ret  c                                           ; $725f: $d8

	ld   a, a                                        ; $7260: $7f
	daa                                              ; $7261: $27
	rst  $38                                         ; $7262: $ff
	ldh  [$fe], a                                    ; $7263: $e0 $fe
	db   $fc                                         ; $7265: $fc
	cp   $3c                                         ; $7266: $fe $3c
	ret  nz                                          ; $7268: $c0

	ld   sp, hl                                      ; $7269: $f9
	ld   bc, $00f8                                   ; $726a: $01 $f8 $00
	add  hl, bc                                      ; $726d: $09
	adc  b                                           ; $726e: $88
	ld   [$8088], sp                                 ; $726f: $08 $88 $80
	nop                                              ; $7272: $00
	add  hl, bc                                      ; $7273: $09
	ld   a, b                                        ; $7274: $78
	ld   a, h                                        ; $7275: $7c
	inc  b                                           ; $7276: $04
	ld   a, h                                        ; $7277: $7c
	ld   a, b                                        ; $7278: $78
	ld   hl, sp-$80                                  ; $7279: $f8 $80
	db   $fc                                         ; $727b: $fc
	add  c                                           ; $727c: $81
	nop                                              ; $727d: $00
	add  l                                           ; $727e: $85
	rst  $38                                         ; $727f: $ff
	inc  bc                                          ; $7280: $03
	ld   a, a                                        ; $7281: $7f
	ld   a, h                                        ; $7282: $7c
	ld   a, [hl]                                     ; $7283: $7e
	ld   a, a                                        ; $7284: $7f
	add  c                                           ; $7285: $81
	ld   a, [hl]                                     ; $7286: $7e
	nop                                              ; $7287: $00
	db   $fc                                         ; $7288: $fc
	add  [hl]                                        ; $7289: $86
	nop                                              ; $728a: $00
	nop                                              ; $728b: $00
	ld   a, a                                        ; $728c: $7f
	add  b                                           ; $728d: $80
	nop                                              ; $728e: $00
	nop                                              ; $728f: $00
	rst  $38                                         ; $7290: $ff
	adc  d                                           ; $7291: $8a
	nop                                              ; $7292: $00
	inc  bc                                          ; $7293: $03
	rst  $38                                         ; $7294: $ff
	nop                                              ; $7295: $00
	inc  bc                                          ; $7296: $03
	db   $fc                                         ; $7297: $fc
	add  c                                           ; $7298: $81
	nop                                              ; $7299: $00
	nop                                              ; $729a: $00
	inc  b                                           ; $729b: $04
	add  h                                           ; $729c: $84
	ld   [bc], a                                     ; $729d: $02
	add  b                                           ; $729e: $80
	ld   a, [bc]                                     ; $729f: $0a
	ld   [bc], a                                     ; $72a0: $02
	ei                                               ; $72a1: $fb
	nop                                              ; $72a2: $00
	ldh  a, [$80]                                    ; $72a3: $f0 $80
	rra                                              ; $72a5: $1f
	ld   bc, $7010                                   ; $72a6: $01 $10 $70
	add  e                                           ; $72a9: $83
	ld   [bc], a                                     ; $72aa: $02
	add  [hl]                                        ; $72ab: $86
	nop                                              ; $72ac: $00
	ld   bc, $0c03                                   ; $72ad: $01 $03 $0c
	add  b                                           ; $72b0: $80
	rrca                                             ; $72b1: $0f
	add  b                                           ; $72b2: $80
	inc  bc                                          ; $72b3: $03
	ld   [bc], a                                     ; $72b4: $02
	nop                                              ; $72b5: $00
	inc  c                                           ; $72b6: $0c
	inc  bc                                          ; $72b7: $03
	add  l                                           ; $72b8: $85
	nop                                              ; $72b9: $00
	ld   bc, $c03f                                   ; $72ba: $01 $3f $c0
	add  b                                           ; $72bd: $80
	jr   nc, @-$7e                                   ; $72be: $30 $80

	call z, $f380                                    ; $72c0: $cc $80 $f3
	nop                                              ; $72c3: $00
	rst  $38                                         ; $72c4: $ff
	add  l                                           ; $72c5: $85
	nop                                              ; $72c6: $00
	nop                                              ; $72c7: $00
	rst  $38                                         ; $72c8: $ff
	add  l                                           ; $72c9: $85
	nop                                              ; $72ca: $00
	nop                                              ; $72cb: $00
	rst  $38                                         ; $72cc: $ff
	add  l                                           ; $72cd: $85

jr_078_72ce:
	nop                                              ; $72ce: $00
	nop                                              ; $72cf: $00
	rst  $38                                         ; $72d0: $ff
	add  l                                           ; $72d1: $85
	nop                                              ; $72d2: $00
	nop                                              ; $72d3: $00
	rst  $38                                         ; $72d4: $ff
	add  l                                           ; $72d5: $85
	nop                                              ; $72d6: $00
	ld   bc, $2bd4                                   ; $72d7: $01 $d4 $2b
	add  b                                           ; $72da: $80
	ld   bc, $0280                                   ; $72db: $01 $80 $02
	add  b                                           ; $72de: $80
	nop                                              ; $72df: $00
	nop                                              ; $72e0: $00
	rst  $38                                         ; $72e1: $ff
	add  [hl]                                        ; $72e2: $86
	nop                                              ; $72e3: $00
	add  e                                           ; $72e4: $83
	rst  $38                                         ; $72e5: $ff
	add  b                                           ; $72e6: $80
	ld   e, a                                        ; $72e7: $5f
	nop                                              ; $72e8: $00
	rst  $38                                         ; $72e9: $ff
	add  [hl]                                        ; $72ea: $86
	nop                                              ; $72eb: $00
	add  [hl]                                        ; $72ec: $86
	rst  $38                                         ; $72ed: $ff
	add  [hl]                                        ; $72ee: $86
	nop                                              ; $72ef: $00
	add  [hl]                                        ; $72f0: $86
	rst  $38                                         ; $72f1: $ff
	add  [hl]                                        ; $72f2: $86
	nop                                              ; $72f3: $00
	add  [hl]                                        ; $72f4: $86
	rst  $38                                         ; $72f5: $ff
	add  [hl]                                        ; $72f6: $86
	nop                                              ; $72f7: $00
	add  e                                           ; $72f8: $83
	rst  $38                                         ; $72f9: $ff
	add  b                                           ; $72fa: $80
	cp   $00                                         ; $72fb: $fe $00
	rst  $38                                         ; $72fd: $ff
	add  l                                           ; $72fe: $85
	nop                                              ; $72ff: $00

jr_078_7300:
	ld   bc, $9768                                   ; $7300: $01 $68 $97
	add  b                                           ; $7303: $80
	and  a                                           ; $7304: $a7
	add  b                                           ; $7305: $80
	ld   [hl], a                                     ; $7306: $77
	add  b                                           ; $7307: $80
	and  e                                           ; $7308: $a3
	nop                                              ; $7309: $00
	rst  $38                                         ; $730a: $ff
	add  [hl]                                        ; $730b: $86
	nop                                              ; $730c: $00
	add  [hl]                                        ; $730d: $86
	rst  $38                                         ; $730e: $ff
	add  [hl]                                        ; $730f: $86
	nop                                              ; $7310: $00
	add  [hl]                                        ; $7311: $86
	rst  $38                                         ; $7312: $ff
	add  [hl]                                        ; $7313: $86
	nop                                              ; $7314: $00
	add  [hl]                                        ; $7315: $86
	rst  $38                                         ; $7316: $ff
	add  [hl]                                        ; $7317: $86
	nop                                              ; $7318: $00
	add  [hl]                                        ; $7319: $86
	rst  $38                                         ; $731a: $ff
	add  l                                           ; $731b: $85
	nop                                              ; $731c: $00
	ld   bc, $fe01                                   ; $731d: $01 $01 $fe
	add  b                                           ; $7320: $80
	db   $f4                                         ; $7321: $f4
	add  b                                           ; $7322: $80
	ldh  [c], a                                      ; $7323: $e2
	add  b                                           ; $7324: $80
	call nc, $f000                                   ; $7325: $d4 $00 $f0
	adc  l                                           ; $7328: $8d
	rrca                                             ; $7329: $0f
	ld   bc, $3cc3                                   ; $732a: $01 $c3 $3c
	add  b                                           ; $732d: $80
	adc  a                                           ; $732e: $8f
	add  b                                           ; $732f: $80
	and  e                                           ; $7330: $a3
	add  b                                           ; $7331: $80
	cp   h                                           ; $7332: $bc
	add  b                                           ; $7333: $80
	and  e                                           ; $7334: $a3
	add  h                                           ; $7335: $84
	and  h                                           ; $7336: $a4
	add  b                                           ; $7337: $80
	ret  nz                                          ; $7338: $c0

	add  b                                           ; $7339: $80
	jr   nz, @-$7e                                   ; $733a: $20 $80

	ret  z                                           ; $733c: $c8

	add  b                                           ; $733d: $80
	ld   [hl], d                                     ; $733e: $72
	add  b                                           ; $733f: $80
	sbc  h                                           ; $7340: $9c
	add  b                                           ; $7341: $80
	ld   h, a                                        ; $7342: $67
	add  b                                           ; $7343: $80
	sbc  c                                           ; $7344: $99
	add  b                                           ; $7345: $80
	add  h                                           ; $7346: $84
	add  [hl]                                        ; $7347: $86
	nop                                              ; $7348: $00
	add  b                                           ; $7349: $80
	add  b                                           ; $734a: $80
	add  b                                           ; $734b: $80
	jr   nz, jr_078_72ce                             ; $734c: $20 $80

	ret  z                                           ; $734e: $c8

	add  b                                           ; $734f: $80
	ld   [hl], d                                     ; $7350: $72
	adc  [hl]                                        ; $7351: $8e
	nop                                              ; $7352: $00
	add  b                                           ; $7353: $80
	rrca                                             ; $7354: $0f
	add  b                                           ; $7355: $80
	dec  d                                           ; $7356: $15
	add  b                                           ; $7357: $80
	ld   [bc], a                                     ; $7358: $02
	add  b                                           ; $7359: $80
	ld   bc, $0086                                   ; $735a: $01 $86 $00
	add  h                                           ; $735d: $84
	rst  $38                                         ; $735e: $ff
	add  b                                           ; $735f: $80
	ld   e, a                                        ; $7360: $5f
	add  b                                           ; $7361: $80
	dec  bc                                          ; $7362: $0b
	add  b                                           ; $7363: $80
	ld   bc, $0082                                   ; $7364: $01 $82 $00
	adc  b                                           ; $7367: $88
	rst  $38                                         ; $7368: $ff
	add  b                                           ; $7369: $80
	ld   a, a                                        ; $736a: $7f
	add  b                                           ; $736b: $80
	rrca                                             ; $736c: $0f
	add  b                                           ; $736d: $80
	dec  d                                           ; $736e: $15
	add  [hl]                                        ; $736f: $86
	rst  $38                                         ; $7370: $ff
	add  d                                           ; $7371: $82
	cp   $03                                         ; $7372: $fe $03
	rst  $38                                         ; $7374: $ff
	cp   $1e                                         ; $7375: $fe $1e
	inc  e                                           ; $7377: $1c
	add  c                                           ; $7378: $81
	db   $fc                                         ; $7379: $fc
	add  c                                           ; $737a: $81
	ld   hl, sp-$80                                  ; $737b: $f8 $80
	jr   jr_078_7300                                 ; $737d: $18 $81

	rst  $28                                         ; $737f: $ef
	ld   [$dfe8], sp                                 ; $7380: $08 $e8 $df
	ld   d, b                                        ; $7383: $50
	db   $10                                         ; $7384: $10
	ld   d, b                                        ; $7385: $50
	inc  h                                           ; $7386: $24
	db   $eb                                         ; $7387: $eb
	inc  sp                                          ; $7388: $33
	or   e                                           ; $7389: $b3
	add  b                                           ; $738a: $80
	or   l                                           ; $738b: $b5
	add  b                                           ; $738c: $80
	cp   c                                           ; $738d: $b9
	add  c                                           ; $738e: $81
	cp   l                                           ; $738f: $bd
	ld   bc, $7c3d                                   ; $7390: $01 $3d $7c
	add  c                                           ; $7393: $81
	add  e                                           ; $7394: $83
	nop                                              ; $7395: $00
	nop                                              ; $7396: $00
	add  c                                           ; $7397: $81
	rst  $38                                         ; $7398: $ff
	add  b                                           ; $7399: $80
	rst  ToBoot                                         ; $739a: $c7
	add  b                                           ; $739b: $80
	cp   e                                           ; $739c: $bb
	add  b                                           ; $739d: $80
	ld   a, e                                        ; $739e: $7b
	ld   [bc], a                                     ; $739f: $02
	ld   a, a                                        ; $73a0: $7f
	ld   [hl], e                                     ; $73a1: $73
	ld   [hl], b                                     ; $73a2: $70
	add  c                                           ; $73a3: $81
	ld   h, d                                        ; $73a4: $62
	nop                                              ; $73a5: $00
	pop  hl                                          ; $73a6: $e1
	adc  e                                           ; $73a7: $8b
	rst  $38                                         ; $73a8: $ff
	add  b                                           ; $73a9: $80
	pop  hl                                          ; $73aa: $e1
	add  [hl]                                        ; $73ab: $86
	rst  $38                                         ; $73ac: $ff
	add  b                                           ; $73ad: $80
	cp   $80                                         ; $73ae: $fe $80
	db   $fc                                         ; $73b0: $fc
	add  b                                           ; $73b1: $80
	ldh  [$80], a                                    ; $73b2: $e0 $80
	nop                                              ; $73b4: $00
	add  b                                           ; $73b5: $80
	rst  $38                                         ; $73b6: $ff
	add  b                                           ; $73b7: $80
	db   $fd                                         ; $73b8: $fd
	add  b                                           ; $73b9: $80
	ld   hl, sp-$80                                  ; $73ba: $f8 $80
	call nz, $2080                                   ; $73bc: $c4 $80 $20
	add  [hl]                                        ; $73bf: $86
	nop                                              ; $73c0: $00
	add  b                                           ; $73c1: $80
	ld   b, b                                        ; $73c2: $40
	add  b                                           ; $73c3: $80
	add  b                                           ; $73c4: $80
	adc  b                                           ; $73c5: $88
	nop                                              ; $73c6: $00
	nop                                              ; $73c7: $00
	ldh  a, [$8d]                                    ; $73c8: $f0 $8d
	rrca                                             ; $73ca: $0f
	nop                                              ; $73cb: $00
	ld   e, e                                        ; $73cc: $5b
	add  c                                           ; $73cd: $81
	and  h                                           ; $73ce: $a4
	add  b                                           ; $73cf: $80
	cp   h                                           ; $73d0: $bc
	add  b                                           ; $73d1: $80
	adc  a                                           ; $73d2: $8f
	add  b                                           ; $73d3: $80
	or   b                                           ; $73d4: $b0
	add  b                                           ; $73d5: $80
	cp   a                                           ; $73d6: $bf
	add  b                                           ; $73d7: $80
	and  e                                           ; $73d8: $a3
	add  b                                           ; $73d9: $80
	and  b                                           ; $73da: $a0
	add  [hl]                                        ; $73db: $86
	sub  l                                           ; $73dc: $95
	add  b                                           ; $73dd: $80
	push af                                          ; $73de: $f5
	add  b                                           ; $73df: $80
	dec  c                                           ; $73e0: $0d
	add  b                                           ; $73e1: $80
	pop  af                                          ; $73e2: $f1
	add  b                                           ; $73e3: $80
	dec  a                                           ; $73e4: $3d
	ld   b, $1c                                      ; $73e5: $06 $1c
	sbc  h                                           ; $73e7: $9c
	add  a                                           ; $73e8: $87
	rst  $20                                         ; $73e9: $e7
	pop  hl                                          ; $73ea: $e1
	ld   sp, hl                                      ; $73eb: $f9
	ld   hl, sp-$80                                  ; $73ec: $f8 $80
	cp   $85                                         ; $73ee: $fe $85
	rst  $38                                         ; $73f0: $ff
	ld   bc, $807f                                   ; $73f1: $01 $7f $80
	add  b                                           ; $73f4: $80
	nop                                              ; $73f5: $00
	add  b                                           ; $73f6: $80
	ret  nz                                          ; $73f7: $c0

	add  b                                           ; $73f8: $80
	ld   [hl], b                                     ; $73f9: $70
	ld   b, $1e                                      ; $73fa: $06 $1e
	sbc  [hl]                                        ; $73fc: $9e
	add  a                                           ; $73fd: $87
	rst  $20                                         ; $73fe: $e7
	pop  hl                                          ; $73ff: $e1
	ld   sp, hl                                      ; $7400: $f9
	ld   hl, sp-$80                                  ; $7401: $f8 $80
	cp   $83                                         ; $7403: $fe $83
	nop                                              ; $7405: $00
	add  b                                           ; $7406: $80
	ld   bc, $0f80                                   ; $7407: $01 $80 $0f
	add  b                                           ; $740a: $80
	cp   h                                           ; $740b: $bc
	inc  b                                           ; $740c: $04
	ldh  [$e3], a                                    ; $740d: $e0 $e3
	add  e                                           ; $740f: $83
	sbc  a                                           ; $7410: $9f
	rra                                              ; $7411: $1f
	add  c                                           ; $7412: $81
	nop                                              ; $7413: $00
	add  b                                           ; $7414: $80
	rrca                                             ; $7415: $0f
	add  b                                           ; $7416: $80
	db   $fc                                         ; $7417: $fc
	add  b                                           ; $7418: $80
	ldh  [rP1], a                                    ; $7419: $e0 $00
	nop                                              ; $741b: $00
	add  b                                           ; $741c: $80
	rra                                              ; $741d: $1f
	add  d                                           ; $741e: $82
	rst  $38                                         ; $741f: $ff
	nop                                              ; $7420: $00
	nop                                              ; $7421: $00
	add  b                                           ; $7422: $80
	ld   a, a                                        ; $7423: $7f
	add  b                                           ; $7424: $80
	ldh  [$80], a                                    ; $7425: $e0 $80
	inc  bc                                          ; $7427: $03
	add  b                                           ; $7428: $80
	rrca                                             ; $7429: $0f
	add  b                                           ; $742a: $80
	ldh  [$80], a                                    ; $742b: $e0 $80
	rrca                                             ; $742d: $0f
	add  b                                           ; $742e: $80
	nop                                              ; $742f: $00
	ld   b, $03                                      ; $7430: $06 $03
	nop                                              ; $7432: $00
	ldh  a, [$fc]                                    ; $7433: $f0 $fc
	dec  c                                           ; $7435: $0d
	add  hl, bc                                      ; $7436: $09
	adc  c                                           ; $7437: $89
	add  c                                           ; $7438: $81
	ld   [$6201], a                                  ; $7439: $ea $01 $62
	ld   a, [bc]                                     ; $743c: $0a
	add  b                                           ; $743d: $80
	ei                                               ; $743e: $fb
	add  b                                           ; $743f: $80
	nop                                              ; $7440: $00
	ld   b, $87                                      ; $7441: $06 $87
	ld   b, b                                        ; $7443: $40
	ld   b, a                                        ; $7444: $47
	ld   e, a                                        ; $7445: $5f
	rst  JumpTable                                         ; $7446: $df
	ret  nz                                          ; $7447: $c0

	pop  bc                                          ; $7448: $c1
	add  b                                           ; $7449: $80
	rra                                              ; $744a: $1f
	ld   c, $ff                                      ; $744b: $0e $ff
	cp   $00                                         ; $744d: $fe $00
	ldh  [rIE], a                                    ; $744f: $e0 $ff
	rra                                              ; $7451: $1f
	nop                                              ; $7452: $00
	ld   hl, sp+$06                                  ; $7453: $f8 $06
	cp   $fc                                         ; $7455: $fe $fc
	inc  e                                           ; $7457: $1c
	ld   d, b                                        ; $7458: $50
	jr   jr_078_74ba                                 ; $7459: $18 $5f

	add  b                                           ; $745b: $80
	rra                                              ; $745c: $1f
	nop                                              ; $745d: $00
	rst  $30                                         ; $745e: $f7
	add  b                                           ; $745f: $80
	nop                                              ; $7460: $00
	add  b                                           ; $7461: $80
	rst  $38                                         ; $7462: $ff
	rlca                                             ; $7463: $07
	nop                                              ; $7464: $00
	inc  e                                           ; $7465: $1c
	ld   [bc], a                                     ; $7466: $02
	ld   c, $ee                                      ; $7467: $0e $ee
	cp   $00                                         ; $7469: $fe $00
	ld   [$ea81], sp                                 ; $746b: $08 $81 $ea
	inc  b                                           ; $746e: $04
	add  sp, $0a                                     ; $746f: $e8 $0a
	dec  sp                                          ; $7471: $3b
	ei                                               ; $7472: $fb
	ret  nz                                          ; $7473: $c0

	add  c                                           ; $7474: $81
	nop                                              ; $7475: $00
	add  hl, bc                                      ; $7476: $09
	ld   a, a                                        ; $7477: $7f
	rst  $38                                         ; $7478: $ff
	add  e                                           ; $7479: $83
	inc  bc                                          ; $747a: $03
	nop                                              ; $747b: $00
	ldh  [$e8], a                                    ; $747c: $e0 $e8
	ld   hl, sp-$0f                                  ; $747e: $f8 $f1
	ld   bc, $fc80                                   ; $7480: $01 $80 $fc
	add  d                                           ; $7483: $82
	nop                                              ; $7484: $00
	add  b                                           ; $7485: $80
	add  b                                           ; $7486: $80
	add  b                                           ; $7487: $80
	db   $fc                                         ; $7488: $fc
	add  b                                           ; $7489: $80
	ccf                                              ; $748a: $3f
	add  b                                           ; $748b: $80
	nop                                              ; $748c: $00
	ld   bc, $ffc0                                   ; $748d: $01 $c0 $ff
	add  e                                           ; $7490: $83
	ccf                                              ; $7491: $3f
	add  e                                           ; $7492: $83
	nop                                              ; $7493: $00
	add  b                                           ; $7494: $80
	ldh  [$80], a                                    ; $7495: $e0 $80
	cp   $80                                         ; $7497: $fe $80

jr_078_7499:
	rlca                                             ; $7499: $07
	nop                                              ; $749a: $00
	nop                                              ; $749b: $00
	add  b                                           ; $749c: $80
	ld   hl, sp-$80                                  ; $749d: $f8 $80
	rst  $38                                         ; $749f: $ff
	nop                                              ; $74a0: $00
	nop                                              ; $74a1: $00
	add  b                                           ; $74a2: $80
	ld   bc, $0080                                   ; $74a3: $01 $80 $00
	add  b                                           ; $74a6: $80
	inc  bc                                          ; $74a7: $03
	add  b                                           ; $74a8: $80
	inc  e                                           ; $74a9: $1c
	add  b                                           ; $74aa: $80
	pop  hl                                          ; $74ab: $e1
	add  b                                           ; $74ac: $80
	rrca                                             ; $74ad: $0f
	add  b                                           ; $74ae: $80
	ld   [$f000], sp                                 ; $74af: $08 $00 $f0
	add  a                                           ; $74b2: $87
	rrca                                             ; $74b3: $0f
	add  b                                           ; $74b4: $80
	rlca                                             ; $74b5: $07
	add  b                                           ; $74b6: $80
	ld   a, [bc]                                     ; $74b7: $0a
	add  b                                           ; $74b8: $80
	dec  b                                           ; $74b9: $05

jr_078_74ba:
	nop                                              ; $74ba: $00
	ld   e, a                                        ; $74bb: $5f
	add  a                                           ; $74bc: $87
	and  b                                           ; $74bd: $a0
	add  b                                           ; $74be: $80
	cp   a                                           ; $74bf: $bf
	add  d                                           ; $74c0: $82
	and  b                                           ; $74c1: $a0
	add  b                                           ; $74c2: $80
	add  c                                           ; $74c3: $81
	adc  b                                           ; $74c4: $88
	add  l                                           ; $74c5: $85
	add  b                                           ; $74c6: $80
	db   $fd                                         ; $74c7: $fd
	add  b                                           ; $74c8: $80
	add  l                                           ; $74c9: $85
	nop                                              ; $74ca: $00
	nop                                              ; $74cb: $00
	sbc  l                                           ; $74cc: $9d
	rst  $38                                         ; $74cd: $ff
	nop                                              ; $74ce: $00
	ld   a, a                                        ; $74cf: $7f
	add  e                                           ; $74d0: $83
	rst  $38                                         ; $74d1: $ff
	add  e                                           ; $74d2: $83
	cp   $02                                         ; $74d3: $fe $02
	rst  $38                                         ; $74d5: $ff
	cp   $ff                                         ; $74d6: $fe $ff
	add  b                                           ; $74d8: $80
	ld   a, a                                        ; $74d9: $7f
	ld   b, $1f                                      ; $74da: $06 $1f
	rst  $38                                         ; $74dc: $ff
	rrca                                             ; $74dd: $0f
	rst  $38                                         ; $74de: $ff
	rst  $28                                         ; $74df: $ef
	ccf                                              ; $74e0: $3f
	ld   a, a                                        ; $74e1: $7f
	add  d                                           ; $74e2: $82
	ld   e, a                                        ; $74e3: $5f
	ld   bc, $1fdf                                   ; $74e4: $01 $df $1f
	add  c                                           ; $74e7: $81
	rst  $38                                         ; $74e8: $ff
	nop                                              ; $74e9: $00
	rra                                              ; $74ea: $1f
	add  b                                           ; $74eb: $80
	db   $e4                                         ; $74ec: $e4
	add  b                                           ; $74ed: $80
	ldh  [c], a                                      ; $74ee: $e2
	add  b                                           ; $74ef: $80
	pop  hl                                          ; $74f0: $e1
	add  b                                           ; $74f1: $80
	ldh  [c], a                                      ; $74f2: $e2
	add  b                                           ; $74f3: $80
	db   $e4                                         ; $74f4: $e4
	add  b                                           ; $74f5: $80
	add  sp, -$80                                    ; $74f6: $e8 $80
	ldh  a, [rSB]                                    ; $74f8: $f0 $01
	add  sp, $02                                     ; $74fa: $e8 $02
	add  b                                           ; $74fc: $80
	ld   c, d                                        ; $74fd: $4a
	add  b                                           ; $74fe: $80
	adc  e                                           ; $74ff: $8b
	add  b                                           ; $7500: $80
	ld   a, [bc]                                     ; $7501: $0a
	add  b                                           ; $7502: $80
	adc  d                                           ; $7503: $8a
	add  b                                           ; $7504: $80
	ld   e, d                                        ; $7505: $5a
	ld   bc, $282a                                   ; $7506: $01 $2a $28
	add  b                                           ; $7509: $80
	ld   e, d                                        ; $750a: $5a
	ld   bc, $838b                                   ; $750b: $01 $8b $83
	add  b                                           ; $750e: $80
	add  d                                           ; $750f: $82
	add  b                                           ; $7510: $80
	dec  b                                           ; $7511: $05
	add  b                                           ; $7512: $80
	adc  b                                           ; $7513: $88
	add  b                                           ; $7514: $80
	ld   d, b                                        ; $7515: $50
	add  b                                           ; $7516: $80
	jr   nz, jr_078_7499                             ; $7517: $20 $80

	ld   d, c                                        ; $7519: $51
	add  b                                           ; $751a: $80
	adc  d                                           ; $751b: $8a
	add  b                                           ; $751c: $80
	inc  b                                           ; $751d: $04
	add  b                                           ; $751e: $80
	ld   a, [bc]                                     ; $751f: $0a
	add  b                                           ; $7520: $80
	ld   de, $a080                                   ; $7521: $11 $80 $a0
	add  b                                           ; $7524: $80
	ld   b, c                                        ; $7525: $41
	add  b                                           ; $7526: $80
	and  d                                           ; $7527: $a2
	add  b                                           ; $7528: $80
	inc  d                                           ; $7529: $14
	add  b                                           ; $752a: $80
	ld   [$1401], sp                                 ; $752b: $08 $01 $14
	ld   e, $80                                      ; $752e: $1e $80
	ld   a, [hl+]                                    ; $7530: $2a
	add  b                                           ; $7531: $80
	ld   c, e                                        ; $7532: $4b
	add  b                                           ; $7533: $80
	adc  d                                           ; $7534: $8a
	add  b                                           ; $7535: $80
	ld   c, d                                        ; $7536: $4a
	add  b                                           ; $7537: $80
	ld   a, [hl+]                                    ; $7538: $2a
	ld   bc, $121a                                   ; $7539: $01 $1a $12
	add  b                                           ; $753c: $80
	ld   a, [hl+]                                    ; $753d: $2a
	ld   bc, $484b                                   ; $753e: $01 $4b $48
	add  b                                           ; $7541: $80
	add  c                                           ; $7542: $81
	add  b                                           ; $7543: $80
	ld   b, l                                        ; $7544: $45
	add  b                                           ; $7545: $80
	add  hl, hl                                      ; $7546: $29
	add  b                                           ; $7547: $80
	ld   de, $2980                                   ; $7548: $11 $80 $29
	add  b                                           ; $754b: $80
	ld   b, l                                        ; $754c: $45
	add  b                                           ; $754d: $80
	add  e                                           ; $754e: $83
	rlca                                             ; $754f: $07
	dec  b                                           ; $7550: $05
	rst  ToBoot                                         ; $7551: $c7
	rst  $38                                         ; $7552: $ff
	ld   hl, sp-$01                                  ; $7553: $f8 $ff
	ei                                               ; $7555: $fb
	cp   $ff                                         ; $7556: $fe $ff
	add  e                                           ; $7558: $83
	db   $fd                                         ; $7559: $fd
	nop                                              ; $755a: $00
	db   $fc                                         ; $755b: $fc
	add  c                                           ; $755c: $81
	rst  $38                                         ; $755d: $ff
	ld   [bc], a                                     ; $755e: $02
	ccf                                              ; $755f: $3f
	rst  $38                                         ; $7560: $ff
	ld   a, a                                        ; $7561: $7f
	add  b                                           ; $7562: $80
	rst  $38                                         ; $7563: $ff
	nop                                              ; $7564: $00
	ld   a, a                                        ; $7565: $7f
	add  e                                           ; $7566: $83
	ccf                                              ; $7567: $3f
	ld   bc, $3fff                                   ; $7568: $01 $ff $3f
	add  c                                           ; $756b: $81
	rst  $38                                         ; $756c: $ff
	ld   bc, $8c73                                   ; $756d: $01 $73 $8c
	adc  b                                           ; $7570: $88
	call z, $cf80                                    ; $7571: $cc $80 $cf
	add  b                                           ; $7574: $80
	db   $fc                                         ; $7575: $fc
	ld   bc, $0af5                                   ; $7576: $01 $f5 $0a
	add  b                                           ; $7579: $80
	dec  b                                           ; $757a: $05
	add  b                                           ; $757b: $80
	ld   a, [bc]                                     ; $757c: $0a
	add  b                                           ; $757d: $80
	ld   bc, $0086                                   ; $757e: $01 $86 $00
	nop                                              ; $7581: $00
	ld   e, a                                        ; $7582: $5f
	add  l                                           ; $7583: $85
	and  b                                           ; $7584: $a0
	add  b                                           ; $7585: $80
	cp   a                                           ; $7586: $bf
	add  h                                           ; $7587: $84
	and  b                                           ; $7588: $a0
	add  [hl]                                        ; $7589: $86
	add  l                                           ; $758a: $85
	add  b                                           ; $758b: $80
	db   $fd                                         ; $758c: $fd
	add  h                                           ; $758d: $84
	add  l                                           ; $758e: $85

jr_078_758f:
	nop                                              ; $758f: $00
	nop                                              ; $7590: $00
	add  h                                           ; $7591: $84
	rst  $38                                         ; $7592: $ff
	add  b                                           ; $7593: $80
	cp   $80                                         ; $7594: $fe $80
	ld   hl, sp-$80                                  ; $7596: $f8 $80
	ldh  a, [$81]                                    ; $7598: $f0 $81
	rst  $38                                         ; $759a: $ff
	rlca                                             ; $759b: $07
	ld   bc, $080e                                   ; $759c: $01 $0e $08
	jr   jr_078_75b2                                 ; $759f: $18 $11

	db   $10                                         ; $75a1: $10
	rst  $20                                         ; $75a2: $e7
	nop                                              ; $75a3: $00
	add  b                                           ; $75a4: $80
	jr   c, jr_078_75b2                              ; $75a5: $38 $0b

	ld   a, d                                        ; $75a7: $7a
	ld   a, h                                        ; $75a8: $7c
	jp   $06c2                                       ; $75a9: $c3 $c2 $06


	rlca                                             ; $75ac: $07
	ccf                                              ; $75ad: $3f
	inc  a                                           ; $75ae: $3c
	inc  e                                           ; $75af: $1c
	ld   e, $20                                      ; $75b0: $1e $20

jr_078_75b2:
	ld   hl, $0180                                   ; $75b2: $21 $80 $01
	dec  c                                           ; $75b5: $0d
	jr   c, jr_078_75d8                              ; $75b6: $38 $20

	rst  ToBoot                                         ; $75b8: $c7
	db   $10                                         ; $75b9: $10
	inc  a                                           ; $75ba: $3c
	ld   [hl], b                                     ; $75bb: $70
	call Call_078_784e                               ; $75bc: $cd $4e $78
	cp   a                                           ; $75bf: $bf
	ld   a, e                                        ; $75c0: $7b
	ld   a, a                                        ; $75c1: $7f
	dec  d                                           ; $75c2: $15
	rst  $10                                         ; $75c3: $d7
	add  b                                           ; $75c4: $80
	rlc  b                                           ; $75c5: $cb $00
	add  e                                           ; $75c7: $83
	add  b                                           ; $75c8: $80
	ld   [bc], a                                     ; $75c9: $02
	dec  bc                                          ; $75ca: $0b
	ld   b, d                                        ; $75cb: $42
	ld   d, [hl]                                     ; $75cc: $56
	sub  [hl]                                        ; $75cd: $96
	ld   l, h                                        ; $75ce: $6c
	ld   l, l                                        ; $75cf: $6d
	pop  hl                                          ; $75d0: $e1
	push hl                                          ; $75d1: $e5
	db   $e4                                         ; $75d2: $e4
	db   $e3                                         ; $75d3: $e3
	ldh  [c], a                                      ; $75d4: $e2
	push hl                                          ; $75d5: $e5
	db   $e4                                         ; $75d6: $e4
	add  b                                           ; $75d7: $80

jr_078_75d8:
	add  sp, $07                                     ; $75d8: $e8 $07
	ldh  a, [$71]                                    ; $75da: $f0 $71
	ld   h, b                                        ; $75dc: $60
	ld   b, b                                        ; $75dd: $40
	ld   h, b                                        ; $75de: $60
	and  b                                           ; $75df: $a0
	and  c                                           ; $75e0: $a1
	ld   [hl], c                                     ; $75e1: $71
	add  b                                           ; $75e2: $80
	ld   a, [hl-]                                    ; $75e3: $3a
	ld   [bc], a                                     ; $75e4: $02
	dec  sp                                          ; $75e5: $3b
	db   $e3                                         ; $75e6: $e3
	ld   a, d                                        ; $75e7: $7a
	add  b                                           ; $75e8: $80
	ld   a, [$ea02]                                  ; $75e9: $fa $02 $ea
	ld   a, [$80e2]                                  ; $75ec: $fa $e2 $80
	inc  bc                                          ; $75ef: $03
	add  b                                           ; $75f0: $80
	xor  d                                           ; $75f1: $aa
	add  b                                           ; $75f2: $80
	ld   a, [hl+]                                    ; $75f3: $2a

jr_078_75f4:
	add  b                                           ; $75f4: $80
	ld   a, [bc]                                     ; $75f5: $0a
	add  b                                           ; $75f6: $80
	ld   de, $a080                                   ; $75f7: $11 $80 $a0
	add  b                                           ; $75fa: $80
	ld   b, c                                        ; $75fb: $41
	add  b                                           ; $75fc: $80
	and  d                                           ; $75fd: $a2
	add  b                                           ; $75fe: $80
	inc  d                                           ; $75ff: $14
	add  b                                           ; $7600: $80
	ld   [$1480], sp                                 ; $7601: $08 $80 $14
	add  b                                           ; $7604: $80
	ld   [hl+], a                                    ; $7605: $22
	add  b                                           ; $7606: $80
	ld   b, c                                        ; $7607: $41
	add  b                                           ; $7608: $80
	add  d                                           ; $7609: $82
	add  b                                           ; $760a: $80
	ld   b, h                                        ; $760b: $44
	add  b                                           ; $760c: $80
	jr   z, jr_078_758f                              ; $760d: $28 $80

	db   $10                                         ; $760f: $10
	add  b                                           ; $7610: $80
	jr   z, @+$13                                    ; $7611: $28 $11

	ld   b, l                                        ; $7613: $45
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7614: $cf
	nop                                              ; $7615: $00
	add  b                                           ; $7616: $80
	nop                                              ; $7617: $00
	add  b                                           ; $7618: $80
	nop                                              ; $7619: $00
	ret  nz                                          ; $761a: $c0

	nop                                              ; $761b: $00
	ld   h, d                                        ; $761c: $62
	inc  bc                                          ; $761d: $03
	ld   a, d                                        ; $761e: $7a
	jr   z, jr_078_75f4                              ; $761f: $28 $d3

	dec  d                                           ; $7621: $15
	db   $fc                                         ; $7622: $fc
	jr   c, @+$7c                                    ; $7623: $38 $7a

	add  b                                           ; $7625: $80
	adc  c                                           ; $7626: $89
	add  b                                           ; $7627: $80
	ld   d, c                                        ; $7628: $51
	add  b                                           ; $7629: $80
	ld   hl, $5180                                   ; $762a: $21 $80 $51
	add  b                                           ; $762d: $80
	adc  e                                           ; $762e: $8b
	add  b                                           ; $762f: $80
	dec  b                                           ; $7630: $05
	add  b                                           ; $7631: $80
	adc  e                                           ; $7632: $8b
	ld   bc, $9051                                   ; $7633: $01 $51 $90
	adc  l                                           ; $7636: $8d
	rst  $38                                         ; $7637: $ff
	ld   bc, $ff3e                                   ; $7638: $01 $3e $ff
	add  c                                           ; $763b: $81
	cp   $89                                         ; $763c: $fe $89
	rst  $38                                         ; $763e: $ff
	inc  b                                           ; $763f: $04
	ld   a, $c1                                      ; $7640: $3e $c1
	inc  c                                           ; $7642: $0c
	dec  c                                           ; $7643: $0d
	push bc                                          ; $7644: $c5
	add  e                                           ; $7645: $83
	call $c901                                       ; $7646: $cd $01 $c9
	ret  nz                                          ; $7649: $c0

	add  b                                           ; $764a: $80
	inc  bc                                          ; $764b: $03
	add  b                                           ; $764c: $80
	sbc  h                                           ; $764d: $9c
	nop                                              ; $764e: $00
	rst  $38                                         ; $764f: $ff
	adc  l                                           ; $7650: $8d
	nop                                              ; $7651: $00
	nop                                              ; $7652: $00
	ld   e, a                                        ; $7653: $5f
	add  c                                           ; $7654: $81
	and  b                                           ; $7655: $a0
	add  b                                           ; $7656: $80
	cp   a                                           ; $7657: $bf
	add  h                                           ; $7658: $84
	and  b                                           ; $7659: $a0
	inc  bc                                          ; $765a: $03
	cp   b                                           ; $765b: $b8
	cp   a                                           ; $765c: $bf
	and  a                                           ; $765d: $a7
	and  b                                           ; $765e: $a0
	add  d                                           ; $765f: $82
	add  l                                           ; $7660: $85
	add  b                                           ; $7661: $80
	db   $fd                                         ; $7662: $fd
	add  b                                           ; $7663: $80
	add  l                                           ; $7664: $85
	inc  de                                          ; $7665: $13
	add  h                                           ; $7666: $84
	add  l                                           ; $7667: $85
	add  c                                           ; $7668: $81
	cp   $7f                                         ; $7669: $fe $7f
	add  c                                           ; $766b: $81
	ld   [hl], c                                     ; $766c: $71
	pop  af                                          ; $766d: $f1
	cp   $00                                         ; $766e: $fe $00
	ld   b, $00                                      ; $7670: $06 $00
	ld   [$f300], sp                                 ; $7672: $08 $00 $f3
	nop                                              ; $7675: $00
	rst  $38                                         ; $7676: $ff
	nop                                              ; $7677: $00
	rst  $38                                         ; $7678: $ff
	inc  bc                                          ; $7679: $03
	add  b                                           ; $767a: $80
	di                                               ; $767b: $f3
	add  b                                           ; $767c: $80
	rst  $38                                         ; $767d: $ff
	add  b                                           ; $767e: $80
	ld   c, $80                                      ; $767f: $0e $80
	sbc  b                                           ; $7681: $98
	rlca                                             ; $7682: $07
	inc  sp                                          ; $7683: $33
	inc  de                                          ; $7684: $13
	rst  $10                                         ; $7685: $d7
	rla                                              ; $7686: $17
	db   $fc                                         ; $7687: $fc
	inc  c                                           ; $7688: $0c
	db   $e3                                         ; $7689: $e3
	di                                               ; $768a: $f3
	add  b                                           ; $768b: $80
	ei                                               ; $768c: $fb
	add  b                                           ; $768d: $80
	ld   hl, sp-$80                                  ; $768e: $f8 $80
	inc  bc                                          ; $7690: $03
	dec  b                                           ; $7691: $05
	add  hl, sp                                      ; $7692: $39
	ld   bc, $98e0                                   ; $7693: $01 $e0 $98
	rst  $38                                         ; $7696: $ff
	cp   h                                           ; $7697: $bc
	add  b                                           ; $7698: $80
	inc  c                                           ; $7699: $0c
	ld   [$86c5], sp                                 ; $769a: $08 $c5 $86
	jp   nz, $8002                                   ; $769d: $c2 $02 $80

	nop                                              ; $76a0: $00
	ld   a, b                                        ; $76a1: $78
	rst  $38                                         ; $76a2: $ff
	add  a                                           ; $76a3: $87
	add  b                                           ; $76a4: $80
	ld   a, b                                        ; $76a5: $78
	add  b                                           ; $76a6: $80
	inc  a                                           ; $76a7: $3c
	ld   [bc], a                                     ; $76a8: $02
	cp   h                                           ; $76a9: $bc
	ld   b, e                                        ; $76aa: $43
	rst  $38                                         ; $76ab: $ff
	add  d                                           ; $76ac: $82
	add  b                                           ; $76ad: $80
	inc  b                                           ; $76ae: $04
	nop                                              ; $76af: $00
	sbc  h                                           ; $76b0: $9c
	inc  e                                           ; $76b1: $1c
	xor  d                                           ; $76b2: $aa
	ld   [hl+], a                                    ; $76b3: $22
	add  b                                           ; $76b4: $80
	inc  c                                           ; $76b5: $0c
	dec  bc                                          ; $76b6: $0b
	ld   a, [bc]                                     ; $76b7: $0a
	inc  c                                           ; $76b8: $0c
	rrca                                             ; $76b9: $0f
	ld   sp, hl                                      ; $76ba: $f9
	ld   hl, sp+$00                                  ; $76bb: $f8 $00
	ld   bc, $0607                                   ; $76bd: $01 $07 $06
	ld   c, $fe                                      ; $76c0: $0e $fe
	ld   hl, sp-$80                                  ; $76c2: $f8 $80
	ld   a, [hl+]                                    ; $76c4: $2a
	ld   bc, $393b                                   ; $76c5: $01 $3b $39
	add  b                                           ; $76c8: $80
	ld   a, [hl+]                                    ; $76c9: $2a
	add  b                                           ; $76ca: $80
	ld   l, e                                        ; $76cb: $6b
	add  b                                           ; $76cc: $80
	xor  d                                           ; $76cd: $aa
	add  b                                           ; $76ce: $80
	ld   l, d                                        ; $76cf: $6a
	add  b                                           ; $76d0: $80
	ld   a, [hl+]                                    ; $76d1: $2a
	ld   bc, $303a                                   ; $76d2: $01 $3a $30
	add  b                                           ; $76d5: $80
	ld   [hl+], a                                    ; $76d6: $22
	add  b                                           ; $76d7: $80
	ld   b, c                                        ; $76d8: $41
	add  b                                           ; $76d9: $80
	add  d                                           ; $76da: $82
	inc  bc                                          ; $76db: $03
	ld   b, h                                        ; $76dc: $44
	ld   e, d                                        ; $76dd: $5a
	ld   a, $0b                                      ; $76de: $3e $0b
	add  c                                           ; $76e0: $81
	dec  hl                                          ; $76e1: $2b
	ld   [bc], a                                     ; $76e2: $02
	ld   a, [hl+]                                    ; $76e3: $2a
	ld   l, d                                        ; $76e4: $6a
	ld   b, b                                        ; $76e5: $40
	add  b                                           ; $76e6: $80
	add  d                                           ; $76e7: $82
	add  b                                           ; $76e8: $80
	dec  b                                           ; $76e9: $05
	add  b                                           ; $76ea: $80
	adc  b                                           ; $76eb: $88
	add  b                                           ; $76ec: $80
	ld   d, c                                        ; $76ed: $51
	add  b                                           ; $76ee: $80
	jr   nz, @+$04                                   ; $76ef: $20 $02

	db   $10                                         ; $76f1: $10
	ld   l, $3e                                      ; $76f2: $2e $3e
	add  b                                           ; $76f4: $80
	ld   a, a                                        ; $76f5: $7f
	db   $10                                         ; $76f6: $10
	add  h                                           ; $76f7: $84
	ld   e, c                                        ; $76f8: $59
	db   $dd                                         ; $76f9: $dd
	rst  $28                                         ; $76fa: $ef
	ld   e, h                                        ; $76fb: $5c
	ld   b, b                                        ; $76fc: $40
	ld   [hl], c                                     ; $76fd: $71
	ld   l, l                                        ; $76fe: $6d
	adc  h                                           ; $76ff: $8c
	ret  c                                           ; $7700: $d8

	cp   [hl]                                        ; $7701: $be
	ld   e, a                                        ; $7702: $5f
	ld   d, e                                        ; $7703: $53
	and  [hl]                                        ; $7704: $a6
	and  d                                           ; $7705: $a2
	inc  de                                          ; $7706: $13
	rra                                              ; $7707: $1f
	add  b                                           ; $7708: $80
	pop  hl                                          ; $7709: $e1
	ld   bc, $1191                                   ; $770a: $01 $91 $11
	add  b                                           ; $770d: $80
	jp   $b504                                       ; $770e: $c3 $04 $b5


	add  hl, hl                                      ; $7711: $29
	sbc  l                                           ; $7712: $9d
	xor  d                                           ; $7713: $aa

jr_078_7714:
	ld   a, [hl+]                                    ; $7714: $2a
	add  d                                           ; $7715: $82
	xor  d                                           ; $7716: $aa
	nop                                              ; $7717: $00
	ret  nz                                          ; $7718: $c0

	add  e                                           ; $7719: $83
	rst  $38                                         ; $771a: $ff
	nop                                              ; $771b: $00
	cp   $81                                         ; $771c: $fe $81
	pop  bc                                          ; $771e: $c1
	add  b                                           ; $771f: $80
	ret  nz                                          ; $7720: $c0

	add  b                                           ; $7721: $80
	rst  JumpTable                                         ; $7722: $df
	add  b                                           ; $7723: $80
	cp   a                                           ; $7724: $bf
	nop                                              ; $7725: $00
	nop                                              ; $7726: $00
	add  c                                           ; $7727: $81
	rst  $38                                         ; $7728: $ff
	ld   [bc], a                                     ; $7729: $02
	ld   d, a                                        ; $772a: $57
	xor  a                                           ; $772b: $af
	ld   d, e                                        ; $772c: $53
	add  e                                           ; $772d: $83
	ld   d, h                                        ; $772e: $54
	add  b                                           ; $772f: $80
	inc  d                                           ; $7730: $14
	add  b                                           ; $7731: $80
	sub  l                                           ; $7732: $95
	adc  h                                           ; $7733: $8c
	sub  b                                           ; $7734: $90
	add  b                                           ; $7735: $80
	stop                                             ; $7736: $10 $00
	rst  $38                                         ; $7738: $ff
	add  b                                           ; $7739: $80
	nop                                              ; $773a: $00
	ld   [bc], a                                     ; $773b: $02
	rlca                                             ; $773c: $07
	ld   b, $0e                                      ; $773d: $06 $0e
	add  b                                           ; $773f: $80
	nop                                              ; $7740: $00
	add  [hl]                                        ; $7741: $86
	ld   a, [bc]                                     ; $7742: $0a
	ld   bc, $17e7                                   ; $7743: $01 $e7 $17
	add  b                                           ; $7746: $80
	sbc  a                                           ; $7747: $9f
	add  b                                           ; $7748: $80
	ld   c, a                                        ; $7749: $4f
	add  b                                           ; $774a: $80
	add  a                                           ; $774b: $87
	add  b                                           ; $774c: $80
	sbc  e                                           ; $774d: $9b
	add  b                                           ; $774e: $80
	sbc  c                                           ; $774f: $99
	add  b                                           ; $7750: $80
	sbc  [hl]                                        ; $7751: $9e
	add  b                                           ; $7752: $80
	sbc  a                                           ; $7753: $9f
	add  b                                           ; $7754: $80
	db   $fd                                         ; $7755: $fd
	add  b                                           ; $7756: $80
	rst  $38                                         ; $7757: $ff
	add  b                                           ; $7758: $80
	cp   $80                                         ; $7759: $fe $80
	ld   a, [$5480]                                  ; $775b: $fa $80 $54
	add  b                                           ; $775e: $80
	ld   [$7c80], a                                  ; $775f: $ea $80 $7c
	add  b                                           ; $7762: $80
	add  c                                           ; $7763: $81
	add  d                                           ; $7764: $82
	db   $fd                                         ; $7765: $fd
	add  b                                           ; $7766: $80
	call nc, $a880                                   ; $7767: $d4 $80 $a8
	add  b                                           ; $776a: $80
	call nc, $2280                                   ; $776b: $d4 $80 $22
	add  b                                           ; $776e: $80
	ld   c, $80                                      ; $776f: $0e $80
	cp   $80                                         ; $7771: $fe $80
	ld   hl, sp-$80                                  ; $7773: $f8 $80
	db   $fc                                         ; $7775: $fc
	add  b                                           ; $7776: $80
	ld   e, h                                        ; $7777: $5c
	add  b                                           ; $7778: $80
	and  e                                           ; $7779: $a3
	add  b                                           ; $777a: $80
	rst  $38                                         ; $777b: $ff
	add  b                                           ; $777c: $80
	nop                                              ; $777d: $00
	add  d                                           ; $777e: $82
	ld   a, a                                        ; $777f: $7f
	add  h                                           ; $7780: $84
	nop                                              ; $7781: $00
	add  b                                           ; $7782: $80
	ldh  a, [$80]                                    ; $7783: $f0 $80
	ld   hl, sp-$80                                  ; $7785: $f8 $80
	ld   e, b                                        ; $7787: $58
	add  b                                           ; $7788: $80
	ld   d, b                                        ; $7789: $50
	add  b                                           ; $778a: $80
	ld   c, b                                        ; $778b: $48
	nop                                              ; $778c: $00
	jr   jr_078_7714                                 ; $778d: $18 $85

	sbc  h                                           ; $778f: $9c
	nop                                              ; $7790: $00
	ld   a, e                                        ; $7791: $7b
	add  c                                           ; $7792: $81
	rst  $38                                         ; $7793: $ff
	add  d                                           ; $7794: $82
	nop                                              ; $7795: $00
	nop                                              ; $7796: $00
	xor  $85                                         ; $7797: $ee $85
	cp   $01                                         ; $7799: $fe $01
	db   $ec                                         ; $779b: $ec
	db   $fc                                         ; $779c: $fc
	add  b                                           ; $779d: $80
	ldh  a, [$80]                                    ; $779e: $f0 $80
	nop                                              ; $77a0: $00
	ld   [bc], a                                     ; $77a1: $02
	db   $10                                         ; $77a2: $10
	rra                                              ; $77a3: $1f
	dec  b                                           ; $77a4: $05
	add  e                                           ; $77a5: $83
	ld   a, [hl+]                                    ; $77a6: $2a
	add  b                                           ; $77a7: $80
	jr   nz, @+$06                                   ; $77a8: $20 $04

	jr   nc, jr_078_781c                             ; $77aa: $30 $70

	ld   l, b                                        ; $77ac: $68
	ld   hl, sp-$10                                  ; $77ad: $f8 $f0
	add  b                                           ; $77af: $80
	nop                                              ; $77b0: $00
	dec  b                                           ; $77b1: $05
	ret  nz                                          ; $77b2: $c0

	ld   l, d                                        ; $77b3: $6a
	xor  d                                           ; $77b4: $aa
	ld   hl, $3f2f                                   ; $77b5: $21 $2f $3f
	add  b                                           ; $77b8: $80
	ld   a, a                                        ; $77b9: $7f
	add  d                                           ; $77ba: $82
	rst  $38                                         ; $77bb: $ff
	ld   bc, $4f7f                                   ; $77bc: $01 $7f $4f
	add  c                                           ; $77bf: $81
	ld   bc, $9880                                   ; $77c0: $01 $80 $98
	dec  b                                           ; $77c3: $05
	jr   jr_078_7801                                 ; $77c4: $18 $3b

	jr   jr_078_7820                                 ; $77c6: $18 $58

	ld   e, $3c                                      ; $77c8: $1e $3c
	add  b                                           ; $77ca: $80
	ld   h, h                                        ; $77cb: $64
	nop                                              ; $77cc: $00
	ld   h, l                                        ; $77cd: $65
	add  b                                           ; $77ce: $80
	ld   l, l                                        ; $77cf: $6d
	add  c                                           ; $77d0: $81
	inc  h                                           ; $77d1: $24
	nop                                              ; $77d2: $00
	adc  l                                           ; $77d3: $8d
	add  b                                           ; $77d4: $80
	add  e                                           ; $77d5: $83
	inc  b                                           ; $77d6: $04
	or   e                                           ; $77d7: $b3
	add  e                                           ; $77d8: $83
	adc  e                                           ; $77d9: $8b
	adc  c                                           ; $77da: $89
	adc  a                                           ; $77db: $8f
	add  b                                           ; $77dc: $80
	add  b                                           ; $77dd: $80
	nop                                              ; $77de: $00
	or   b                                           ; $77df: $b0
	add  b                                           ; $77e0: $80
	cp   a                                           ; $77e1: $bf
	add  c                                           ; $77e2: $81
	add  b                                           ; $77e3: $80
	add  b                                           ; $77e4: $80
	xor  d                                           ; $77e5: $aa
	ld   bc, $ff80                                   ; $77e6: $01 $80 $ff
	add  b                                           ; $77e9: $80
	add  c                                           ; $77ea: $81
	add  b                                           ; $77eb: $80
	nop                                              ; $77ec: $00
	add  b                                           ; $77ed: $80
	ld   bc, $7f00                                   ; $77ee: $01 $00 $7f
	add  b                                           ; $77f1: $80
	rst  $38                                         ; $77f2: $ff
	add  c                                           ; $77f3: $81
	nop                                              ; $77f4: $00
	add  b                                           ; $77f5: $80
	call z, $8c00                                    ; $77f6: $cc $00 $8c
	add  b                                           ; $77f9: $80
	sbc  l                                           ; $77fa: $9d
	ld   [bc], a                                     ; $77fb: $02
	cp   l                                           ; $77fc: $bd
	xor  a                                           ; $77fd: $af
	cp   [hl]                                        ; $77fe: $be
	add  c                                           ; $77ff: $81
	or   d                                           ; $7800: $b2

jr_078_7801:
	add  b                                           ; $7801: $80
	or   [hl]                                        ; $7802: $b6
	add  c                                           ; $7803: $81
	sub  d                                           ; $7804: $92
	add  b                                           ; $7805: $80
	ld   d, b                                        ; $7806: $50
	nop                                              ; $7807: $00
	ld   b, c                                        ; $7808: $41
	add  b                                           ; $7809: $80
	pop  bc                                          ; $780a: $c1
	add  b                                           ; $780b: $80
	reti                                             ; $780c: $d9


	add  c                                           ; $780d: $81
	db   $dd                                         ; $780e: $dd
	nop                                              ; $780f: $00
	rst  JumpTable                                         ; $7810: $df
	add  b                                           ; $7811: $80
	db   $db                                         ; $7812: $db
	nop                                              ; $7813: $00
	ld   b, e                                        ; $7814: $43
	add  b                                           ; $7815: $80
	ld   b, b                                        ; $7816: $40
	add  b                                           ; $7817: $80
	ld   h, b                                        ; $7818: $60
	add  b                                           ; $7819: $80
	inc  e                                           ; $781a: $1c
	add  b                                           ; $781b: $80

jr_078_781c:
	adc  a                                           ; $781c: $8f
	add  d                                           ; $781d: $82
	and  b                                           ; $781e: $a0
	add  b                                           ; $781f: $80

jr_078_7820:
	ld   [$2a80], a                                  ; $7820: $ea $80 $2a
	add  b                                           ; $7823: $80
	ld   [bc], a                                     ; $7824: $02
	nop                                              ; $7825: $00
	ld   a, [$0a8b]                                  ; $7826: $fa $8b $0a
	add  b                                           ; $7829: $80
	nop                                              ; $782a: $00
	ld   bc, $9f6f                                   ; $782b: $01 $6f $9f
	add  b                                           ; $782e: $80
	adc  a                                           ; $782f: $8f
	add  b                                           ; $7830: $80
	sub  a                                           ; $7831: $97
	add  b                                           ; $7832: $80
	adc  d                                           ; $7833: $8a
	add  b                                           ; $7834: $80
	sub  l                                           ; $7835: $95
	add  b                                           ; $7836: $80
	adc  d                                           ; $7837: $8a
	add  b                                           ; $7838: $80
	dec  d                                           ; $7839: $15
	add  b                                           ; $783a: $80
	adc  d                                           ; $783b: $8a
	add  b                                           ; $783c: $80
	ldh  [$80], a                                    ; $783d: $e0 $80
	cp   $82                                         ; $783f: $fe $82
	rst  $38                                         ; $7841: $ff
	add  b                                           ; $7842: $80
	ld   e, a                                        ; $7843: $5f
	add  b                                           ; $7844: $80
	xor  a                                           ; $7845: $af
	add  b                                           ; $7846: $80
	ld   d, a                                        ; $7847: $57
	add  b                                           ; $7848: $80
	xor  a                                           ; $7849: $af
	add  b                                           ; $784a: $80
	cp   $80                                         ; $784b: $fe $80
	ld   a, [hl]                                     ; $784d: $7e

Call_078_784e:
	add  d                                           ; $784e: $82
	ld   a, $80                                      ; $784f: $3e $80
	sbc  b                                           ; $7851: $98
	add  b                                           ; $7852: $80
	add  d                                           ; $7853: $82
	add  b                                           ; $7854: $80
	sub  h                                           ; $7855: $94
	add  b                                           ; $7856: $80
	adc  d                                           ; $7857: $8a
	add  b                                           ; $7858: $80
	ld   a, a                                        ; $7859: $7f
	add  b                                           ; $785a: $80
	ld   l, d                                        ; $785b: $6a
	add  b                                           ; $785c: $80
	ld   d, l                                        ; $785d: $55
	add  b                                           ; $785e: $80
	ld   l, d                                        ; $785f: $6a
	add  b                                           ; $7860: $80
	ld   d, l                                        ; $7861: $55
	add  b                                           ; $7862: $80
	ld   l, d                                        ; $7863: $6a
	add  b                                           ; $7864: $80
	ld   d, l                                        ; $7865: $55
	add  b                                           ; $7866: $80
	ld   a, [hl+]                                    ; $7867: $2a
	add  b                                           ; $7868: $80
	ld   d, b                                        ; $7869: $50
	add  b                                           ; $786a: $80
	ld   l, b                                        ; $786b: $68
	add  b                                           ; $786c: $80
	ld   d, b                                        ; $786d: $50
	add  c                                           ; $786e: $81
	ld   b, b                                        ; $786f: $40
	ld   [bc], a                                     ; $7870: $02
	ld   e, a                                        ; $7871: $5f
	ld   b, h                                        ; $7872: $44
	ld   e, e                                        ; $7873: $5b
	add  b                                           ; $7874: $80
	ld   b, [hl]                                     ; $7875: $46
	add  b                                           ; $7876: $80
	ld   e, h                                        ; $7877: $5c
	add  c                                           ; $7878: $81
	nop                                              ; $7879: $00
	add  b                                           ; $787a: $80
	ld   bc, $0780                                   ; $787b: $01 $80 $07
	add  b                                           ; $787e: $80
	rra                                              ; $787f: $1f
	add  b                                           ; $7880: $80
	ld   a, a                                        ; $7881: $7f
	add  e                                           ; $7882: $83
	rst  $38                                         ; $7883: $ff
	nop                                              ; $7884: $00
	ret  nz                                          ; $7885: $c0

	add  b                                           ; $7886: $80
	ldh  [rSC], a                                    ; $7887: $e0 $02
	ldh  a, [$d0]                                    ; $7889: $f0 $d0
	rst  JumpTable                                         ; $788b: $df
	add  b                                           ; $788c: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $788d: $cf
	nop                                              ; $788e: $00
	ret  nz                                          ; $788f: $c0

	add  b                                           ; $7890: $80
	add  b                                           ; $7891: $80
	add  b                                           ; $7892: $80
	nop                                              ; $7893: $00
	add  b                                           ; $7894: $80
	add  b                                           ; $7895: $80
	ld   bc, $20c0                                   ; $7896: $01 $c0 $20
	add  b                                           ; $7899: $80
	ld   c, $80                                      ; $789a: $0e $80
	ld   l, $00                                      ; $789c: $2e $00
	xor  $80                                         ; $789e: $ee $80
	adc  $00                                         ; $78a0: $ce $00
	ld   c, $80                                      ; $78a2: $0e $80
	ld   l, $80                                      ; $78a4: $2e $80
	ld   l, [hl]                                     ; $78a6: $6e
	add  b                                           ; $78a7: $80
	ld   c, $01                                      ; $78a8: $0e $01
	ld   e, $1f                                      ; $78aa: $1e $1f
	add  h                                           ; $78ac: $84
	ld   c, e                                        ; $78ad: $4b
	add  b                                           ; $78ae: $80
	ld   c, c                                        ; $78af: $49
	add  h                                           ; $78b0: $84
	ld   b, c                                        ; $78b1: $41
	nop                                              ; $78b2: $00
	ld   bc, $2482                                   ; $78b3: $01 $82 $24
	add  b                                           ; $78b6: $80
	inc  a                                           ; $78b7: $3c
	add  b                                           ; $78b8: $80
	rst  $38                                         ; $78b9: $ff
	add  [hl]                                        ; $78ba: $86
	nop                                              ; $78bb: $00
	nop                                              ; $78bc: $00
	add  b                                           ; $78bd: $80
	add  h                                           ; $78be: $84
	cp   a                                           ; $78bf: $bf
	add  a                                           ; $78c0: $87
	add  b                                           ; $78c1: $80
	nop                                              ; $78c2: $00
	nop                                              ; $78c3: $00
	add  b                                           ; $78c4: $80
	sbc  $04                                         ; $78c5: $de $04
	ret  c                                           ; $78c7: $d8

	sub  $de                                         ; $78c8: $d6 $de
	reti                                             ; $78ca: $d9


	add  hl, bc                                      ; $78cb: $09
	add  h                                           ; $78cc: $84
	ld   [$0080], sp                                 ; $78cd: $08 $80 $00
	add  d                                           ; $78d0: $82
	sub  d                                           ; $78d1: $92
	add  b                                           ; $78d2: $80
	sbc  [hl]                                        ; $78d3: $9e

jr_078_78d4:
	add  b                                           ; $78d4: $80
	rst  $38                                         ; $78d5: $ff
	add  [hl]                                        ; $78d6: $86
	add  b                                           ; $78d7: $80
	add  b                                           ; $78d8: $80
	ld   d, b                                        ; $78d9: $50
	nop                                              ; $78da: $00
	ld   b, b                                        ; $78db: $40
	add  c                                           ; $78dc: $81
	ld   d, e                                        ; $78dd: $53
	add  b                                           ; $78de: $80

jr_078_78df:
	db   $d3                                         ; $78df: $d3
	add  c                                           ; $78e0: $81
	ld   d, e                                        ; $78e1: $53
	add  e                                           ; $78e2: $83
	ld   b, e                                        ; $78e3: $43
	ld   bc, $e023                                   ; $78e4: $01 $23 $e0
	add  c                                           ; $78e7: $81
	jp   z, $ea00                                    ; $78e8: $ca $00 $ea

	add  b                                           ; $78eb: $80
	ldh  [c], a                                      ; $78ec: $e2
	nop                                              ; $78ed: $00
	ldh  [$80], a                                    ; $78ee: $e0 $80
	ld   hl, sp-$7d                                  ; $78f0: $f8 $83
	rst  $38                                         ; $78f2: $ff
	ld   sp, $8401                                   ; $78f3: $31 $01 $84
	nop                                              ; $78f6: $00
	ld   a, [bc]                                     ; $78f7: $0a
	ld   a, [bc]                                     ; $78f8: $0a
	nop                                              ; $78f9: $00
	rrca                                             ; $78fa: $0f
	nop                                              ; $78fb: $00
	rrca                                             ; $78fc: $0f
	nop                                              ; $78fd: $00
	rrca                                             ; $78fe: $0f
	nop                                              ; $78ff: $00
	rrca                                             ; $7900: $0f
	nop                                              ; $7901: $00
	ld   a, [bc]                                     ; $7902: $0a
	add  e                                           ; $7903: $83
	nop                                              ; $7904: $00
	ld   a, [bc]                                     ; $7905: $0a
	xor  d                                           ; $7906: $aa
	nop                                              ; $7907: $00
	rst  $38                                         ; $7908: $ff
	nop                                              ; $7909: $00
	rst  $38                                         ; $790a: $ff
	nop                                              ; $790b: $00
	rst  $38                                         ; $790c: $ff
	nop                                              ; $790d: $00
	rst  $38                                         ; $790e: $ff
	nop                                              ; $790f: $00
	xor  d                                           ; $7910: $aa
	add  e                                           ; $7911: $83
	nop                                              ; $7912: $00
	ld   a, [bc]                                     ; $7913: $0a
	xor  d                                           ; $7914: $aa
	nop                                              ; $7915: $00
	rst  $38                                         ; $7916: $ff
	nop                                              ; $7917: $00
	rst  $38                                         ; $7918: $ff
	nop                                              ; $7919: $00
	rst  $38                                         ; $791a: $ff
	nop                                              ; $791b: $00
	rst  $38                                         ; $791c: $ff
	nop                                              ; $791d: $00
	xor  d                                           ; $791e: $aa
	add  e                                           ; $791f: $83
	nop                                              ; $7920: $00
	ld   a, [bc]                                     ; $7921: $0a
	and  h                                           ; $7922: $a4
	nop                                              ; $7923: $00
	push af                                          ; $7924: $f5
	nop                                              ; $7925: $00
	push de                                          ; $7926: $d5
	nop                                              ; $7927: $00
	sub  h                                           ; $7928: $94
	nop                                              ; $7929: $00
	ld   d, h                                        ; $792a: $54
	nop                                              ; $792b: $00
	ld   b, h                                        ; $792c: $44
	add  e                                           ; $792d: $83
	nop                                              ; $792e: $00
	ld   [bc], a                                     ; $792f: $02
	ld   b, b                                        ; $7930: $40
	nop                                              ; $7931: $00
	ld   b, b                                        ; $7932: $40
	adc  l                                           ; $7933: $8d
	nop                                              ; $7934: $00
	add  b                                           ; $7935: $80
	ld   de, $0480                                   ; $7936: $11 $80 $04
	add  b                                           ; $7939: $80
	ld   bc, $0480                                   ; $793a: $01 $80 $04
	add  [hl]                                        ; $793d: $86
	nop                                              ; $793e: $00
	ld   bc, $0afa                                   ; $793f: $01 $fa $0a
	add  b                                           ; $7942: $80
	dec  b                                           ; $7943: $05
	inc  b                                           ; $7944: $04
	adc  d                                           ; $7945: $8a
	ld   [bc], a                                     ; $7946: $02
	dec  b                                           ; $7947: $05
	ld   b, l                                        ; $7948: $45
	jr   c, jr_078_78d4                              ; $7949: $38 $89

	nop                                              ; $794b: $00
	add  b                                           ; $794c: $80
	add  b                                           ; $794d: $80
	adc  c                                           ; $794e: $89
	nop                                              ; $794f: $00
	ld   [bc], a                                     ; $7950: $02
	inc  bc                                          ; $7951: $03
	ld   bc, $8202                                   ; $7952: $01 $02 $82
	inc  b                                           ; $7955: $04
	add  a                                           ; $7956: $87
	nop                                              ; $7957: $00
	ld   [bc], a                                     ; $7958: $02
	ldh  [$c0], a                                    ; $7959: $e0 $c0
	jr   nz, jr_078_78df                             ; $795b: $20 $82

	db   $10                                         ; $795d: $10
	adc  b                                           ; $795e: $88
	nop                                              ; $795f: $00
	add  b                                           ; $7960: $80
	ld   bc, $0080                                   ; $7961: $01 $80 $00
	add  b                                           ; $7964: $80
	ld   bc, $0086                                   ; $7965: $01 $86 $00
	add  b                                           ; $7968: $80
	xor  d                                           ; $7969: $aa
	add  b                                           ; $796a: $80
	ld   d, l                                        ; $796b: $55
	inc  b                                           ; $796c: $04
	xor  e                                           ; $796d: $ab
	xor  b                                           ; $796e: $a8
	ld   d, h                                        ; $796f: $54
	ld   d, b                                        ; $7970: $50
	rlca                                             ; $7971: $07
	add  l                                           ; $7972: $85
	nop                                              ; $7973: $00
	ld   [$80ff], sp                                 ; $7974: $08 $ff $80
	add  c                                           ; $7977: $81
	ld   b, $0d                                      ; $7978: $06 $0d
	dec  b                                           ; $797a: $05
	ld   a, [de]                                     ; $797b: $1a
	ld   a, [hl+]                                    ; $797c: $2a
	ret  nz                                          ; $797d: $c0

	add  l                                           ; $797e: $85
	nop                                              ; $797f: $00
	add  b                                           ; $7980: $80
	ld   d, l                                        ; $7981: $55
	add  b                                           ; $7982: $80
	xor  d                                           ; $7983: $aa
	add  b                                           ; $7984: $80
	ld   d, l                                        ; $7985: $55
	add  b                                           ; $7986: $80
	xor  d                                           ; $7987: $aa
	add  [hl]                                        ; $7988: $86
	nop                                              ; $7989: $00
	add  b                                           ; $798a: $80
	ld   d, l                                        ; $798b: $55
	add  b                                           ; $798c: $80
	xor  d                                           ; $798d: $aa
	add  b                                           ; $798e: $80
	ld   d, l                                        ; $798f: $55
	add  b                                           ; $7990: $80
	xor  d                                           ; $7991: $aa
	add  [hl]                                        ; $7992: $86
	nop                                              ; $7993: $00
	ld   c, b                                        ; $7994: $48
	ld   d, l                                        ; $7995: $55
	nop                                              ; $7996: $00
	rst  $38                                         ; $7997: $ff
	nop                                              ; $7998: $00
	rst  $38                                         ; $7999: $ff
	nop                                              ; $799a: $00
	db   $fd                                         ; $799b: $fd
	inc  bc                                          ; $799c: $03
	xor  [hl]                                        ; $799d: $ae
	nop                                              ; $799e: $00
	rrca                                             ; $799f: $0f
	nop                                              ; $79a0: $00
	rrca                                             ; $79a1: $0f
	nop                                              ; $79a2: $00
	rrca                                             ; $79a3: $0f
	nop                                              ; $79a4: $00
	rrca                                             ; $79a5: $0f
	nop                                              ; $79a6: $00
	rrca                                             ; $79a7: $0f

jr_078_79a8:
	nop                                              ; $79a8: $00
	rrca                                             ; $79a9: $0f
	nop                                              ; $79aa: $00
	rrca                                             ; $79ab: $0f
	nop                                              ; $79ac: $00
	ld   e, a                                        ; $79ad: $5f
	nop                                              ; $79ae: $00
	rst  $38                                         ; $79af: $ff
	nop                                              ; $79b0: $00
	rst  $38                                         ; $79b1: $ff
	nop                                              ; $79b2: $00
	rst  $38                                         ; $79b3: $ff
	nop                                              ; $79b4: $00
	rst  $38                                         ; $79b5: $ff
	nop                                              ; $79b6: $00
	rst  $38                                         ; $79b7: $ff
	nop                                              ; $79b8: $00
	rst  $38                                         ; $79b9: $ff
	nop                                              ; $79ba: $00
	rst  $38                                         ; $79bb: $ff
	nop                                              ; $79bc: $00
	rst  $38                                         ; $79bd: $ff
	nop                                              ; $79be: $00
	db   $fd                                         ; $79bf: $fd
	nop                                              ; $79c0: $00
	db   $fd                                         ; $79c1: $fd
	nop                                              ; $79c2: $00
	db   $fd                                         ; $79c3: $fd
	nop                                              ; $79c4: $00
	db   $fd                                         ; $79c5: $fd
	nop                                              ; $79c6: $00
	db   $fd                                         ; $79c7: $fd
	nop                                              ; $79c8: $00
	ld   sp, hl                                      ; $79c9: $f9
	nop                                              ; $79ca: $00
	push af                                          ; $79cb: $f5
	nop                                              ; $79cc: $00
	or   h                                           ; $79cd: $b4
	nop                                              ; $79ce: $00
	ld   d, b                                        ; $79cf: $50
	nop                                              ; $79d0: $00
	ld   d, b                                        ; $79d1: $50
	nop                                              ; $79d2: $00
	ld   d, b                                        ; $79d3: $50
	nop                                              ; $79d4: $00
	ld   d, b                                        ; $79d5: $50
	nop                                              ; $79d6: $00
	ld   d, b                                        ; $79d7: $50
	nop                                              ; $79d8: $00
	ld   d, b                                        ; $79d9: $50
	nop                                              ; $79da: $00
	ld   d, b                                        ; $79db: $50
	nop                                              ; $79dc: $00
	ld   b, b                                        ; $79dd: $40
	adc  l                                           ; $79de: $8d
	nop                                              ; $79df: $00
	inc  de                                          ; $79e0: $13
	ld   bc, $0100                                   ; $79e1: $01 $00 $01
	nop                                              ; $79e4: $00
	ld   bc, $0100                                   ; $79e5: $01 $00 $01
	nop                                              ; $79e8: $00
	ld   bc, $0100                                   ; $79e9: $01 $00 $01
	nop                                              ; $79ec: $00
	ld   bc, $0100                                   ; $79ed: $01 $00 $01
	nop                                              ; $79f0: $00
	ld   a, $02                                      ; $79f1: $3e $02
	ld   h, c                                        ; $79f3: $61
	ld   b, c                                        ; $79f4: $41
	add  b                                           ; $79f5: $80
	ld   [bc], a                                     ; $79f6: $02
	ld   bc, $4153                                   ; $79f7: $01 $53 $41
	add  b                                           ; $79fa: $80
	db   $10                                         ; $79fb: $10
	ld   bc, $4049                                   ; $79fc: $01 $49 $40
	add  b                                           ; $79ff: $80
	db   $10                                         ; $7a00: $10
	inc  bc                                          ; $7a01: $03
	ld   c, h                                        ; $7a02: $4c
	ld   c, b                                        ; $7a03: $48
	add  e                                           ; $7a04: $83
	add  b                                           ; $7a05: $80
	add  b                                           ; $7a06: $80
	nop                                              ; $7a07: $00
	add  b                                           ; $7a08: $80
	add  b                                           ; $7a09: $80
	add  b                                           ; $7a0a: $80
	ld   b, b                                        ; $7a0b: $40
	add  b                                           ; $7a0c: $80
	and  b                                           ; $7a0d: $a0
	add  b                                           ; $7a0e: $80
	ld   d, b                                        ; $7a0f: $50
	add  b                                           ; $7a10: $80
	xor  d                                           ; $7a11: $aa
	inc  bc                                          ; $7a12: $03
	push de                                          ; $7a13: $d5
	ld   d, l                                        ; $7a14: $55
	add  h                                           ; $7a15: $84
	inc  b                                           ; $7a16: $04
	add  b                                           ; $7a17: $80
	ld   [bc], a                                     ; $7a18: $02
	add  b                                           ; $7a19: $80
	ld   bc, $0083                                   ; $7a1a: $01 $83 $00

jr_078_7a1d:
	ld   [bc], a                                     ; $7a1d: $02
	rlca                                             ; $7a1e: $07
	rrca                                             ; $7a1f: $0f
	ld   [$5080], sp                                 ; $7a20: $08 $80 $50
	add  b                                           ; $7a23: $80
	db   $10                                         ; $7a24: $10
	add  b                                           ; $7a25: $80
	jr   nz, jr_078_79a8                             ; $7a26: $20 $80

	ret  nz                                          ; $7a28: $c0

	add  h                                           ; $7a29: $84
	nop                                              ; $7a2a: $00
	add  b                                           ; $7a2b: $80
	add  d                                           ; $7a2c: $82
	add  b                                           ; $7a2d: $80
	ld   d, l                                        ; $7a2e: $55
	add  b                                           ; $7a2f: $80
	ld   [bc], a                                     ; $7a30: $02
	add  b                                           ; $7a31: $80
	dec  b                                           ; $7a32: $05
	add  b                                           ; $7a33: $80
	ld   a, [bc]                                     ; $7a34: $0a
	add  b                                           ; $7a35: $80
	dec  d                                           ; $7a36: $15
	dec  d                                           ; $7a37: $15
	dec  hl                                          ; $7a38: $2b
	ld   a, [hl+]                                    ; $7a39: $2a
	ld   d, [hl]                                     ; $7a3a: $56
	ld   d, h                                        ; $7a3b: $54
	xor  h                                           ; $7a3c: $ac
	xor  b                                           ; $7a3d: $a8
	ld   e, c                                        ; $7a3e: $59
	ld   b, d                                        ; $7a3f: $42
	or   e                                           ; $7a40: $b3
	and  b                                           ; $7a41: $a0
	ld   d, b                                        ; $7a42: $50
	ld   b, c                                        ; $7a43: $41
	db   $e3                                         ; $7a44: $e3
	pop  bc                                          ; $7a45: $c1
	add  $0a                                         ; $7a46: $c6 $0a
	dec  b                                           ; $7a48: $05
	dec  d                                           ; $7a49: $15
	ld   c, b                                        ; $7a4a: $48
	jr   z, jr_078_7a1d                              ; $7a4b: $28 $d0

	ld   d, b                                        ; $7a4d: $50
	add  b                                           ; $7a4e: $80
	add  b                                           ; $7a4f: $80
	inc  bc                                          ; $7a50: $03
	push de                                          ; $7a51: $d5
	ld   d, l                                        ; $7a52: $55
	ld   a, [hl+]                                    ; $7a53: $2a
	xor  d                                           ; $7a54: $aa
	add  b                                           ; $7a55: $80
	ld   d, l                                        ; $7a56: $55
	add  b                                           ; $7a57: $80
	xor  d                                           ; $7a58: $aa
	add  b                                           ; $7a59: $80
	dec  b                                           ; $7a5a: $05
	add  h                                           ; $7a5b: $84
	nop                                              ; $7a5c: $00
	inc  e                                           ; $7a5d: $1c
	ld   d, l                                        ; $7a5e: $55
	nop                                              ; $7a5f: $00
	rst  $38                                         ; $7a60: $ff
	nop                                              ; $7a61: $00
	rst  $38                                         ; $7a62: $ff
	nop                                              ; $7a63: $00
	rst  $38                                         ; $7a64: $ff
	nop                                              ; $7a65: $00
	cp   $01                                         ; $7a66: $fe $01
	db   $fc                                         ; $7a68: $fc
	rlca                                             ; $7a69: $07
	add  sp, $1f                                     ; $7a6a: $e8 $1f
	ld   h, c                                        ; $7a6c: $61
	rra                                              ; $7a6d: $1f
	ld   [hl], d                                     ; $7a6e: $72
	nop                                              ; $7a6f: $00
	db   $fd                                         ; $7a70: $fd
	rlca                                             ; $7a71: $07
	jp   hl                                          ; $7a72: $e9


	rra                                              ; $7a73: $1f
	jp   $877f                                       ; $7a74: $c3 $7f $87


	rst  $38                                         ; $7a77: $ff
	rra                                              ; $7a78: $1f
	rst  $38                                         ; $7a79: $ff
	ld   a, a                                        ; $7a7a: $7f
	add  c                                           ; $7a7b: $81
	rst  $38                                         ; $7a7c: $ff
	ld   d, b                                        ; $7a7d: $50
	xor  d                                           ; $7a7e: $aa
	inc  bc                                          ; $7a7f: $03
	cp   $03                                         ; $7a80: $fe $03
	rst  $38                                         ; $7a82: $ff
	inc  bc                                          ; $7a83: $03
	rst  $38                                         ; $7a84: $ff
	inc  bc                                          ; $7a85: $03
	rst  $38                                         ; $7a86: $ff
	inc  bc                                          ; $7a87: $03
	rst  $38                                         ; $7a88: $ff
	inc  bc                                          ; $7a89: $03
	rst  $38                                         ; $7a8a: $ff
	inc  bc                                          ; $7a8b: $03
	rst  $38                                         ; $7a8c: $ff
	inc  bc                                          ; $7a8d: $03
	xor  h                                           ; $7a8e: $ac
	nop                                              ; $7a8f: $00
	rrca                                             ; $7a90: $0f
	nop                                              ; $7a91: $00
	rrca                                             ; $7a92: $0f
	nop                                              ; $7a93: $00
	rrca                                             ; $7a94: $0f
	nop                                              ; $7a95: $00
	rrca                                             ; $7a96: $0f
	nop                                              ; $7a97: $00
	rrca                                             ; $7a98: $0f
	nop                                              ; $7a99: $00
	rrca                                             ; $7a9a: $0f
	nop                                              ; $7a9b: $00
	rrca                                             ; $7a9c: $0f
	nop                                              ; $7a9d: $00
	ld   e, a                                        ; $7a9e: $5f
	nop                                              ; $7a9f: $00
	rst  $38                                         ; $7aa0: $ff
	nop                                              ; $7aa1: $00
	rst  $38                                         ; $7aa2: $ff
	nop                                              ; $7aa3: $00
	rst  $38                                         ; $7aa4: $ff
	nop                                              ; $7aa5: $00
	rst  $38                                         ; $7aa6: $ff
	nop                                              ; $7aa7: $00
	rst  $38                                         ; $7aa8: $ff
	nop                                              ; $7aa9: $00
	rst  $38                                         ; $7aaa: $ff
	nop                                              ; $7aab: $00
	rst  $38                                         ; $7aac: $ff
	nop                                              ; $7aad: $00
	ei                                               ; $7aae: $fb
	nop                                              ; $7aaf: $00
	push af                                          ; $7ab0: $f5
	nop                                              ; $7ab1: $00
	push af                                          ; $7ab2: $f5
	nop                                              ; $7ab3: $00
	push af                                          ; $7ab4: $f5
	nop                                              ; $7ab5: $00
	push af                                          ; $7ab6: $f5
	nop                                              ; $7ab7: $00
	push af                                          ; $7ab8: $f5
	nop                                              ; $7ab9: $00
	push af                                          ; $7aba: $f5
	nop                                              ; $7abb: $00
	push af                                          ; $7abc: $f5
	nop                                              ; $7abd: $00
	and  h                                           ; $7abe: $a4
	nop                                              ; $7abf: $00
	ld   b, b                                        ; $7ac0: $40
	nop                                              ; $7ac1: $00
	ld   b, b                                        ; $7ac2: $40
	nop                                              ; $7ac3: $00
	ld   b, b                                        ; $7ac4: $40
	nop                                              ; $7ac5: $00
	ld   b, b                                        ; $7ac6: $40
	nop                                              ; $7ac7: $00
	ld   b, b                                        ; $7ac8: $40
	nop                                              ; $7ac9: $00
	ld   b, b                                        ; $7aca: $40
	nop                                              ; $7acb: $00
	ld   b, b                                        ; $7acc: $40
	nop                                              ; $7acd: $00
	ld   b, b                                        ; $7ace: $40
	adc  l                                           ; $7acf: $8d
	nop                                              ; $7ad0: $00
	inc  de                                          ; $7ad1: $13
	ld   bc, $0100                                   ; $7ad2: $01 $00 $01
	nop                                              ; $7ad5: $00
	ld   bc, $0100                                   ; $7ad6: $01 $00 $01
	nop                                              ; $7ad9: $00
	ld   bc, $0100                                   ; $7ada: $01 $00 $01
	nop                                              ; $7add: $00
	ld   bc, $0100                                   ; $7ade: $01 $00 $01
	nop                                              ; $7ae1: $00
	rla                                              ; $7ae2: $17
	inc  d                                           ; $7ae3: $14
	ld   c, b                                        ; $7ae4: $48

jr_078_7ae5:
	ld   c, d                                        ; $7ae5: $4a
	add  b                                           ; $7ae6: $80
	inc  d                                           ; $7ae7: $14
	ld   bc, $4b4a                                   ; $7ae8: $01 $4a $4b
	add  b                                           ; $7aeb: $80
	dec  d                                           ; $7aec: $15
	add  b                                           ; $7aed: $80
	ld   c, d                                        ; $7aee: $4a
	add  b                                           ; $7aef: $80
	dec  d                                           ; $7af0: $15
	add  b                                           ; $7af1: $80
	ld   c, d                                        ; $7af2: $4a
	inc  b                                           ; $7af3: $04
	xor  d                                           ; $7af4: $aa
	ld   a, [hl+]                                    ; $7af5: $2a
	ld   d, l                                        ; $7af6: $55
	dec  d                                           ; $7af7: $15
	ccf                                              ; $7af8: $3f
	add  c                                           ; $7af9: $81
	nop                                              ; $7afa: $00
	ld   [bc], a                                     ; $7afb: $02
	ld   d, l                                        ; $7afc: $55
	ld   a, [hl+]                                    ; $7afd: $2a
	nop                                              ; $7afe: $00
	add  e                                           ; $7aff: $83
	add  b                                           ; $7b00: $80
	add  b                                           ; $7b01: $80
	xor  b                                           ; $7b02: $a8
	add  b                                           ; $7b03: $80
	ld   d, l                                        ; $7b04: $55
	nop                                              ; $7b05: $00
	rst  $38                                         ; $7b06: $ff
	add  c                                           ; $7b07: $81
	nop                                              ; $7b08: $00
	ld   bc, $aa55                                   ; $7b09: $01 $55 $aa
	add  h                                           ; $7b0c: $84
	nop                                              ; $7b0d: $00
	add  b                                           ; $7b0e: $80
	xor  d                                           ; $7b0f: $aa
	add  b                                           ; $7b10: $80
	ld   d, l                                        ; $7b11: $55
	nop                                              ; $7b12: $00
	rst  $38                                         ; $7b13: $ff
	add  c                                           ; $7b14: $81
	nop                                              ; $7b15: $00
	ld   bc, $ab54                                   ; $7b16: $01 $54 $ab
	add  h                                           ; $7b19: $84
	ld   bc, $bd09                                   ; $7b1a: $01 $09 $bd
	add  l                                           ; $7b1d: $85
	jp   nz, $808a                                   ; $7b1e: $c2 $8a $80

	db   $10                                         ; $7b21: $10
	ld   b, b                                        ; $7b22: $40
	jr   nz, jr_078_7ae5                             ; $7b23: $20 $c0

	ld   b, b                                        ; $7b25: $40
	add  b                                           ; $7b26: $80
	add  b                                           ; $7b27: $80
	add  b                                           ; $7b28: $80
	ld   b, b                                        ; $7b29: $40
	ld   [bc], a                                     ; $7b2a: $02
	add  b                                           ; $7b2b: $80
	add  c                                           ; $7b2c: $81
	ld   bc, $0084                                   ; $7b2d: $01 $84 $00
	inc  bc                                          ; $7b30: $03
	inc  bc                                          ; $7b31: $03
	nop                                              ; $7b32: $00
	rlca                                             ; $7b33: $07
	nop                                              ; $7b34: $00
	add  d                                           ; $7b35: $82
	rlca                                             ; $7b36: $07
	add  hl, bc                                      ; $7b37: $09
	add  a                                           ; $7b38: $87
	add  e                                           ; $7b39: $83
	inc  c                                           ; $7b3a: $0c
	nop                                              ; $7b3b: $00
	inc  a                                           ; $7b3c: $3c
	inc  b                                           ; $7b3d: $04
	db   $fc                                         ; $7b3e: $fc
	inc  c                                           ; $7b3f: $0c
	db   $fc                                         ; $7b40: $fc
	inc  a                                           ; $7b41: $3c
	add  l                                           ; $7b42: $85
	db   $fc                                         ; $7b43: $fc
	nop                                              ; $7b44: $00
	add  sp, -$73                                    ; $7b45: $e8 $8d
	rra                                              ; $7b47: $1f
	nop                                              ; $7b48: $00
	dec  c                                           ; $7b49: $0d
	adc  l                                           ; $7b4a: $8d
	rst  $38                                         ; $7b4b: $ff
	ld   d, b                                        ; $7b4c: $50
	xor  e                                           ; $7b4d: $ab
	inc  bc                                          ; $7b4e: $03
	rst  $38                                         ; $7b4f: $ff
	inc  bc                                          ; $7b50: $03
	rst  $38                                         ; $7b51: $ff
	inc  bc                                          ; $7b52: $03
	rst  $38                                         ; $7b53: $ff
	inc  bc                                          ; $7b54: $03
	rst  $38                                         ; $7b55: $ff
	inc  bc                                          ; $7b56: $03
	rst  $38                                         ; $7b57: $ff
	inc  bc                                          ; $7b58: $03
	rst  $38                                         ; $7b59: $ff
	inc  bc                                          ; $7b5a: $03
	rst  $38                                         ; $7b5b: $ff
	inc  bc                                          ; $7b5c: $03
	xor  h                                           ; $7b5d: $ac
	nop                                              ; $7b5e: $00
	rrca                                             ; $7b5f: $0f
	nop                                              ; $7b60: $00
	rrca                                             ; $7b61: $0f
	nop                                              ; $7b62: $00
	rrca                                             ; $7b63: $0f
	nop                                              ; $7b64: $00
	rrca                                             ; $7b65: $0f
	nop                                              ; $7b66: $00
	rrca                                             ; $7b67: $0f
	nop                                              ; $7b68: $00
	rrca                                             ; $7b69: $0f
	nop                                              ; $7b6a: $00
	rrca                                             ; $7b6b: $0f
	nop                                              ; $7b6c: $00
	ld   e, a                                        ; $7b6d: $5f
	nop                                              ; $7b6e: $00
	rst  $38                                         ; $7b6f: $ff
	nop                                              ; $7b70: $00
	rst  $38                                         ; $7b71: $ff
	nop                                              ; $7b72: $00
	rst  $38                                         ; $7b73: $ff
	nop                                              ; $7b74: $00
	rst  $38                                         ; $7b75: $ff
	nop                                              ; $7b76: $00
	rst  $38                                         ; $7b77: $ff
	nop                                              ; $7b78: $00
	rst  $38                                         ; $7b79: $ff
	nop                                              ; $7b7a: $00

jr_078_7b7b:
	rst  $38                                         ; $7b7b: $ff
	nop                                              ; $7b7c: $00
	ei                                               ; $7b7d: $fb
	nop                                              ; $7b7e: $00
	push af                                          ; $7b7f: $f5
	nop                                              ; $7b80: $00
	push af                                          ; $7b81: $f5
	nop                                              ; $7b82: $00
	push af                                          ; $7b83: $f5
	nop                                              ; $7b84: $00
	push af                                          ; $7b85: $f5
	nop                                              ; $7b86: $00
	push af                                          ; $7b87: $f5
	nop                                              ; $7b88: $00
	push af                                          ; $7b89: $f5
	nop                                              ; $7b8a: $00
	push af                                          ; $7b8b: $f5
	nop                                              ; $7b8c: $00
	and  h                                           ; $7b8d: $a4
	nop                                              ; $7b8e: $00
	ld   b, b                                        ; $7b8f: $40
	nop                                              ; $7b90: $00
	ld   b, b                                        ; $7b91: $40
	nop                                              ; $7b92: $00
	ld   b, b                                        ; $7b93: $40
	nop                                              ; $7b94: $00
	ld   b, b                                        ; $7b95: $40
	nop                                              ; $7b96: $00
	ld   b, b                                        ; $7b97: $40
	nop                                              ; $7b98: $00
	ld   b, b                                        ; $7b99: $40
	nop                                              ; $7b9a: $00
	ld   b, b                                        ; $7b9b: $40
	nop                                              ; $7b9c: $00
	ld   b, b                                        ; $7b9d: $40
	adc  l                                           ; $7b9e: $8d
	nop                                              ; $7b9f: $00
	jr   nz, jr_078_7ba3                             ; $7ba0: $20 $01

	nop                                              ; $7ba2: $00

jr_078_7ba3:
	ld   bc, $0100                                   ; $7ba3: $01 $00 $01
	nop                                              ; $7ba6: $00
	ld   bc, $0100                                   ; $7ba7: $01 $00 $01
	nop                                              ; $7baa: $00
	ld   bc, $0100                                   ; $7bab: $01 $00 $01
	nop                                              ; $7bae: $00
	ld   bc, $1500                                   ; $7baf: $01 $00 $15
	nop                                              ; $7bb2: $00
	ld   e, a                                        ; $7bb3: $5f
	nop                                              ; $7bb4: $00
	ld   e, a                                        ; $7bb5: $5f
	nop                                              ; $7bb6: $00
	ld   e, a                                        ; $7bb7: $5f
	nop                                              ; $7bb8: $00
	ld   e, a                                        ; $7bb9: $5f
	nop                                              ; $7bba: $00
	ld   e, a                                        ; $7bbb: $5f
	nop                                              ; $7bbc: $00
	ld   e, a                                        ; $7bbd: $5f
	nop                                              ; $7bbe: $00
	ld   e, a                                        ; $7bbf: $5f
	nop                                              ; $7bc0: $00
	jp   z, $808d                                    ; $7bc1: $ca $8d $80

	adc  [hl]                                        ; $7bc4: $8e
	nop                                              ; $7bc5: $00
	adc  [hl]                                        ; $7bc6: $8e
	ld   bc, $4110                                   ; $7bc7: $01 $10 $41
	rlca                                             ; $7bca: $07
	ret  nz                                          ; $7bcb: $c0

	rra                                              ; $7bcc: $1f
	pop  bc                                          ; $7bcd: $c1
	ccf                                              ; $7bce: $3f
	rst  ToBoot                                         ; $7bcf: $c7
	ccf                                              ; $7bd0: $3f
	cp   a                                           ; $7bd1: $bf
	ccf                                              ; $7bd2: $3f
	cp   a                                           ; $7bd3: $bf
	ccf                                              ; $7bd4: $3f
	cp   h                                           ; $7bd5: $bc
	ccf                                              ; $7bd6: $3f
	and  b                                           ; $7bd7: $a0
	ccf                                              ; $7bd8: $3f
	rlca                                             ; $7bd9: $07
	add  a                                           ; $7bda: $87
	add  a                                           ; $7bdb: $87
	ld   [bc], a                                     ; $7bdc: $02
	add  h                                           ; $7bdd: $84
	add  a                                           ; $7bde: $87
	add  h                                           ; $7bdf: $84
	add  b                                           ; $7be0: $80
	add  a                                           ; $7be1: $87
	ld   bc, $0686                                   ; $7be2: $01 $86 $06
	add  l                                           ; $7be5: $85
	db   $fc                                         ; $7be6: $fc
	inc  b                                           ; $7be7: $04
	call nz, $04fc                                   ; $7be8: $c4 $fc $04
	db   $fc                                         ; $7beb: $fc
	inc  a                                           ; $7bec: $3c
	add  b                                           ; $7bed: $80
	call nz, $0401                                   ; $7bee: $c4 $01 $04
	db   $10                                         ; $7bf1: $10
	add  e                                           ; $7bf2: $83
	rra                                              ; $7bf3: $1f
	nop                                              ; $7bf4: $00
	db   $10                                         ; $7bf5: $10
	add  c                                           ; $7bf6: $81
	rra                                              ; $7bf7: $1f
	nop                                              ; $7bf8: $00
	jr   jr_078_7b7b                                 ; $7bf9: $18 $80

	rra                                              ; $7bfb: $1f
	add  c                                           ; $7bfc: $81
	inc  e                                           ; $7bfd: $1c
	nop                                              ; $7bfe: $00
	ld   b, $81                                      ; $7bff: $06 $81
	rst  $38                                         ; $7c01: $ff
	nop                                              ; $7c02: $00
	inc  bc                                          ; $7c03: $03
	add  c                                           ; $7c04: $81
	rst  $38                                         ; $7c05: $ff
	nop                                              ; $7c06: $00
	inc  bc                                          ; $7c07: $03
	add  b                                           ; $7c08: $80
	rst  $38                                         ; $7c09: $ff
	ld   d, l                                        ; $7c0a: $55
	inc  bc                                          ; $7c0b: $03
	dec  hl                                          ; $7c0c: $2b
	inc  bc                                          ; $7c0d: $03
	ld   a, a                                        ; $7c0e: $7f
	inc  bc                                          ; $7c0f: $03
	ld   [bc], a                                     ; $7c10: $02
	inc  bc                                          ; $7c11: $03
	rst  $38                                         ; $7c12: $ff
	inc  bc                                          ; $7c13: $03
	rst  $38                                         ; $7c14: $ff
	inc  bc                                          ; $7c15: $03
	rst  $38                                         ; $7c16: $ff
	inc  bc                                          ; $7c17: $03
	rst  $38                                         ; $7c18: $ff
	inc  bc                                          ; $7c19: $03
	rst  $38                                         ; $7c1a: $ff
	inc  bc                                          ; $7c1b: $03
	rst  $38                                         ; $7c1c: $ff
	inc  bc                                          ; $7c1d: $03
	rst  $38                                         ; $7c1e: $ff
	inc  bc                                          ; $7c1f: $03
	xor  l                                           ; $7c20: $ad
	nop                                              ; $7c21: $00
	rrca                                             ; $7c22: $0f
	nop                                              ; $7c23: $00
	rrca                                             ; $7c24: $0f
	nop                                              ; $7c25: $00
	rrca                                             ; $7c26: $0f
	nop                                              ; $7c27: $00
	rrca                                             ; $7c28: $0f
	nop                                              ; $7c29: $00
	rrca                                             ; $7c2a: $0f
	nop                                              ; $7c2b: $00
	rrca                                             ; $7c2c: $0f
	nop                                              ; $7c2d: $00
	rrca                                             ; $7c2e: $0f
	nop                                              ; $7c2f: $00
	ld   e, a                                        ; $7c30: $5f
	nop                                              ; $7c31: $00
	rst  $38                                         ; $7c32: $ff
	nop                                              ; $7c33: $00
	rst  $38                                         ; $7c34: $ff
	nop                                              ; $7c35: $00
	rst  $38                                         ; $7c36: $ff
	nop                                              ; $7c37: $00
	rst  $38                                         ; $7c38: $ff
	nop                                              ; $7c39: $00
	rst  $38                                         ; $7c3a: $ff
	nop                                              ; $7c3b: $00
	rst  $38                                         ; $7c3c: $ff
	nop                                              ; $7c3d: $00
	rst  $38                                         ; $7c3e: $ff
	nop                                              ; $7c3f: $00
	ei                                               ; $7c40: $fb
	nop                                              ; $7c41: $00
	push de                                          ; $7c42: $d5
	nop                                              ; $7c43: $00
	push de                                          ; $7c44: $d5
	nop                                              ; $7c45: $00
	push de                                          ; $7c46: $d5
	nop                                              ; $7c47: $00
	push de                                          ; $7c48: $d5
	nop                                              ; $7c49: $00
	push de                                          ; $7c4a: $d5
	nop                                              ; $7c4b: $00
	push de                                          ; $7c4c: $d5
	nop                                              ; $7c4d: $00
	push de                                          ; $7c4e: $d5
	nop                                              ; $7c4f: $00
	add  h                                           ; $7c50: $84
	nop                                              ; $7c51: $00
	ld   b, b                                        ; $7c52: $40
	nop                                              ; $7c53: $00
	ld   b, b                                        ; $7c54: $40
	nop                                              ; $7c55: $00
	ld   b, b                                        ; $7c56: $40
	nop                                              ; $7c57: $00
	ld   b, b                                        ; $7c58: $40
	nop                                              ; $7c59: $00
	ld   b, b                                        ; $7c5a: $40
	nop                                              ; $7c5b: $00
	ld   b, b                                        ; $7c5c: $40
	nop                                              ; $7c5d: $00
	ld   b, b                                        ; $7c5e: $40
	nop                                              ; $7c5f: $00
	ld   b, b                                        ; $7c60: $40
	adc  l                                           ; $7c61: $8d
	nop                                              ; $7c62: $00
	add  b                                           ; $7c63: $80
	ld   bc, $0080                                   ; $7c64: $01 $80 $00
	add  b                                           ; $7c67: $80
	ld   bc, $0280                                   ; $7c68: $01 $80 $02
	add  b                                           ; $7c6b: $80
	dec  b                                           ; $7c6c: $05
	rlca                                             ; $7c6d: $07
	ld   a, [bc]                                     ; $7c6e: $0a
	dec  bc                                          ; $7c6f: $0b
	ld   e, $1f                                      ; $7c70: $1e $1f
	ld   a, [$10ff]                                  ; $7c72: $fa $ff $10
	dec  d                                           ; $7c75: $15
	add  b                                           ; $7c76: $80
	ld   c, d                                        ; $7c77: $4a
	add  b                                           ; $7c78: $80
	ld   d, a                                        ; $7c79: $57
	ld   a, [bc]                                     ; $7c7a: $0a
	xor  d                                           ; $7c7b: $aa
	xor  a                                           ; $7c7c: $af
	ld   b, c                                        ; $7c7d: $41
	ld   a, a                                        ; $7c7e: $7f
	dec  sp                                          ; $7c7f: $3b
	rst  $38                                         ; $7c80: $ff
	xor  e                                           ; $7c81: $ab
	rst  $38                                         ; $7c82: $ff
	xor  e                                           ; $7c83: $ab
	rst  $38                                         ; $7c84: $ff
	ld   a, a                                        ; $7c85: $7f
	add  c                                           ; $7c86: $81
	add  b                                           ; $7c87: $80
	nop                                              ; $7c88: $00
	ld   a, a                                        ; $7c89: $7f
	adc  c                                           ; $7c8a: $89
	rst  $38                                         ; $7c8b: $ff
	nop                                              ; $7c8c: $00
	add  b                                           ; $7c8d: $80
	add  c                                           ; $7c8e: $81
	nop                                              ; $7c8f: $00
	adc  d                                           ; $7c90: $8a
	rst  $38                                         ; $7c91: $ff
	add  d                                           ; $7c92: $82
	ld   bc, $d40c                                   ; $7c93: $01 $0c $d4
	rst  $38                                         ; $7c96: $ff
	jp   $c3ff                                       ; $7c97: $c3 $ff $c3


	rst  $38                                         ; $7c9a: $ff
	jp   $c3ff                                       ; $7c9b: $c3 $ff $c3


	rst  $38                                         ; $7c9e: $ff
	jp   $37ff                                       ; $7c9f: $c3 $ff $37


	add  b                                           ; $7ca2: $80
	inc  a                                           ; $7ca3: $3c
	add  c                                           ; $7ca4: $81
	jr   nc, jr_078_7ca7                             ; $7ca5: $30 $00

jr_078_7ca7:
	ldh  a, [$87]                                    ; $7ca7: $f0 $87
	jr   nc, jr_078_7cab                             ; $7ca9: $30 $00

jr_078_7cab:
	ld   d, h                                        ; $7cab: $54
	add  l                                           ; $7cac: $85
	add  [hl]                                        ; $7cad: $86
	nop                                              ; $7cae: $00
	cp   $83                                         ; $7caf: $fe $83
	add  [hl]                                        ; $7cb1: $86
	ld   [bc], a                                     ; $7cb2: $02
	ld   b, $86                                      ; $7cb3: $06 $86
	cp   $87                                         ; $7cb5: $fe $87
	inc  b                                           ; $7cb7: $04
	nop                                              ; $7cb8: $00
	rlca                                             ; $7cb9: $07
	add  e                                           ; $7cba: $83
	inc  b                                           ; $7cbb: $04
	nop                                              ; $7cbc: $00
	dec  de                                          ; $7cbd: $1b
	add  a                                           ; $7cbe: $87
	inc  e                                           ; $7cbf: $1c
	nop                                              ; $7cc0: $00
	db   $fc                                         ; $7cc1: $fc
	add  e                                           ; $7cc2: $83
	inc  e                                           ; $7cc3: $1c
	ld   b, c                                        ; $7cc4: $41
	ld   c, [hl]                                     ; $7cc5: $4e
	inc  bc                                          ; $7cc6: $03
	rst  $38                                         ; $7cc7: $ff
	inc  bc                                          ; $7cc8: $03
	rst  $38                                         ; $7cc9: $ff
	inc  bc                                          ; $7cca: $03
	rst  $38                                         ; $7ccb: $ff
	inc  bc                                          ; $7ccc: $03
	rst  $38                                         ; $7ccd: $ff
	inc  bc                                          ; $7cce: $03
	rst  $38                                         ; $7ccf: $ff
	inc  bc                                          ; $7cd0: $03
	rst  $38                                         ; $7cd1: $ff
	inc  bc                                          ; $7cd2: $03
	rst  $38                                         ; $7cd3: $ff
	inc  bc                                          ; $7cd4: $03
	ld   [bc], a                                     ; $7cd5: $02
	inc  bc                                          ; $7cd6: $03
	rst  $38                                         ; $7cd7: $ff
	inc  bc                                          ; $7cd8: $03
	rst  $38                                         ; $7cd9: $ff
	inc  bc                                          ; $7cda: $03
	rst  $38                                         ; $7cdb: $ff
	inc  bc                                          ; $7cdc: $03
	rst  $38                                         ; $7cdd: $ff
	inc  bc                                          ; $7cde: $03
	rst  $38                                         ; $7cdf: $ff
	inc  bc                                          ; $7ce0: $03
	rst  $38                                         ; $7ce1: $ff
	inc  bc                                          ; $7ce2: $03
	rst  $38                                         ; $7ce3: $ff
	inc  bc                                          ; $7ce4: $03
	xor  l                                           ; $7ce5: $ad
	nop                                              ; $7ce6: $00
	rrca                                             ; $7ce7: $0f
	nop                                              ; $7ce8: $00
	rrca                                             ; $7ce9: $0f
	nop                                              ; $7cea: $00
	rrca                                             ; $7ceb: $0f
	nop                                              ; $7cec: $00
	rrca                                             ; $7ced: $0f
	nop                                              ; $7cee: $00
	rrca                                             ; $7cef: $0f
	nop                                              ; $7cf0: $00
	rrca                                             ; $7cf1: $0f
	nop                                              ; $7cf2: $00
	rrca                                             ; $7cf3: $0f
	nop                                              ; $7cf4: $00
	ld   e, a                                        ; $7cf5: $5f
	nop                                              ; $7cf6: $00
	rst  $38                                         ; $7cf7: $ff
	nop                                              ; $7cf8: $00
	rst  $38                                         ; $7cf9: $ff
	nop                                              ; $7cfa: $00
	rst  $38                                         ; $7cfb: $ff

Call_078_7cfc:
	nop                                              ; $7cfc: $00
	rst  $38                                         ; $7cfd: $ff
	nop                                              ; $7cfe: $00

Call_078_7cff:
	db   $fd                                         ; $7cff: $fd
	nop                                              ; $7d00: $00
	ld   sp, hl                                      ; $7d01: $f9
	nop                                              ; $7d02: $00
	push af                                          ; $7d03: $f5
	nop                                              ; $7d04: $00
	or   l                                           ; $7d05: $b5
	ld   de, $4480                                   ; $7d06: $11 $80 $44
	add  b                                           ; $7d09: $80
	ld   de, $4480                                   ; $7d0a: $11 $80 $44
	add  b                                           ; $7d0d: $80
	ld   de, $4480                                   ; $7d0e: $11 $80 $44
	add  b                                           ; $7d11: $80
	ld   de, $4f80                                   ; $7d12: $11 $80 $4f
	add  b                                           ; $7d15: $80
	nop                                              ; $7d16: $00
	add  b                                           ; $7d17: $80
	ld   b, b                                        ; $7d18: $40
	add  b                                           ; $7d19: $80
	db   $10                                         ; $7d1a: $10
	add  b                                           ; $7d1b: $80
	ld   b, l                                        ; $7d1c: $45
	add  b                                           ; $7d1d: $80
	ld   e, $03                                      ; $7d1e: $1e $03
	ld   h, c                                        ; $7d20: $61
	ld   h, l                                        ; $7d21: $65
	ld   h, [hl]                                     ; $7d22: $66
	and  $80                                         ; $7d23: $e6 $80
	rst  $38                                         ; $7d25: $ff
	ld   bc, $0387                                   ; $7d26: $01 $87 $03
	add  b                                           ; $7d29: $80
	dec  c                                           ; $7d2a: $0d
	add  b                                           ; $7d2b: $80
	ld   a, [hl]                                     ; $7d2c: $7e
	add  b                                           ; $7d2d: $80
	push de                                          ; $7d2e: $d5
	add  b                                           ; $7d2f: $80
	rst  $28                                         ; $7d30: $ef
	ld   [hl], $5c                                   ; $7d31: $36 $5c
	ld   e, a                                        ; $7d33: $5f
	ld   hl, sp-$01                                  ; $7d34: $f8 $ff
	cp   $ff                                         ; $7d36: $fe $ff
	ldh  a, [rIE]                                    ; $7d38: $f0 $ff
	ld   [hl+], a                                    ; $7d3a: $22
	ld   a, a                                        ; $7d3b: $7f
	add  d                                           ; $7d3c: $82
	rst  $38                                         ; $7d3d: $ff
	adc  d                                           ; $7d3e: $8a
	rst  $38                                         ; $7d3f: $ff
	ld   c, d                                        ; $7d40: $4a
	rst  $38                                         ; $7d41: $ff
	ld   b, d                                        ; $7d42: $42
	rst  $38                                         ; $7d43: $ff
	ld   [bc], a                                     ; $7d44: $02
	rst  $38                                         ; $7d45: $ff
	ld   [bc], a                                     ; $7d46: $02
	rst  $38                                         ; $7d47: $ff
	rlca                                             ; $7d48: $07
	rst  $38                                         ; $7d49: $ff
	xor  a                                           ; $7d4a: $af
	rst  $38                                         ; $7d4b: $ff
	xor  a                                           ; $7d4c: $af
	rst  $38                                         ; $7d4d: $ff
	xor  a                                           ; $7d4e: $af
	rst  $38                                         ; $7d4f: $ff
	cp   a                                           ; $7d50: $bf
	rst  $38                                         ; $7d51: $ff
	cp   a                                           ; $7d52: $bf
	rst  $38                                         ; $7d53: $ff
	cp   a                                           ; $7d54: $bf
	rst  $38                                         ; $7d55: $ff
	cp   a                                           ; $7d56: $bf
	rst  $38                                         ; $7d57: $ff
	nop                                              ; $7d58: $00
	ld   a, a                                        ; $7d59: $7f
	ccf                                              ; $7d5a: $3f
	ld   a, a                                        ; $7d5b: $7f
	rra                                              ; $7d5c: $1f
	ld   a, a                                        ; $7d5d: $7f
	rrca                                             ; $7d5e: $0f
	ld   a, a                                        ; $7d5f: $7f
	ld   b, a                                        ; $7d60: $47
	ld   a, a                                        ; $7d61: $7f
	ld   h, e                                        ; $7d62: $63
	ld   a, a                                        ; $7d63: $7f
	ld   [hl], c                                     ; $7d64: $71
	ld   a, a                                        ; $7d65: $7f
	ld   a, d                                        ; $7d66: $7a
	ld   a, a                                        ; $7d67: $7f
	nop                                              ; $7d68: $00
	adc  c                                           ; $7d69: $89
	rst  $38                                         ; $7d6a: $ff
	inc  d                                           ; $7d6b: $14
	ld   d, l                                        ; $7d6c: $55
	rst  $38                                         ; $7d6d: $ff
	nop                                              ; $7d6e: $00
	rst  $38                                         ; $7d6f: $ff
	add  b                                           ; $7d70: $80
	cp   $c2                                         ; $7d71: $fe $c2
	cp   $c2                                         ; $7d73: $fe $c2
	cp   $c2                                         ; $7d75: $fe $c2
	cp   $c2                                         ; $7d77: $fe $c2
	cp   $82                                         ; $7d79: $fe $82
	cp   $06                                         ; $7d7b: $fe $06
	cp   $0e                                         ; $7d7d: $fe $0e
	cp   $bf                                         ; $7d7f: $fe $bf
	adc  l                                           ; $7d81: $8d
	jr   nc, jr_078_7d84                             ; $7d82: $30 $00

jr_078_7d84:
	xor  h                                           ; $7d84: $ac
	add  c                                           ; $7d85: $81
	add  [hl]                                        ; $7d86: $86
	nop                                              ; $7d87: $00
	ld   b, $89                                      ; $7d88: $06 $89
	add  [hl]                                        ; $7d8a: $86
	ld   [bc], a                                     ; $7d8b: $02
	ld   a, l                                        ; $7d8c: $7d
	inc  b                                           ; $7d8d: $04
	nop                                              ; $7d8e: $00
	add  l                                           ; $7d8f: $85
	inc  b                                           ; $7d90: $04
	nop                                              ; $7d91: $00
	nop                                              ; $7d92: $00
	add  e                                           ; $7d93: $83
	inc  b                                           ; $7d94: $04
	nop                                              ; $7d95: $00
	ei                                               ; $7d96: $fb
	adc  l                                           ; $7d97: $8d
	inc  e                                           ; $7d98: $1c
	db   $10                                         ; $7d99: $10
	adc  $03                                         ; $7d9a: $ce $03
	ld   a, a                                        ; $7d9c: $7f
	inc  bc                                          ; $7d9d: $03
	ld   a, a                                        ; $7d9e: $7f
	inc  bc                                          ; $7d9f: $03
	dec  sp                                          ; $7da0: $3b
	rlca                                             ; $7da1: $07
	ccf                                              ; $7da2: $3f
	rlca                                             ; $7da3: $07
	ccf                                              ; $7da4: $3f
	rlca                                             ; $7da5: $07
	ccf                                              ; $7da6: $3f
	rlca                                             ; $7da7: $07
	ccf                                              ; $7da8: $3f
	rlca                                             ; $7da9: $07
	ld   [$038d], a                                  ; $7daa: $ea $8d $03
	ld   bc, $05f9                                   ; $7dad: $01 $f9 $05
	add  b                                           ; $7db0: $80
	ld   a, [bc]                                     ; $7db1: $0a
	add  b                                           ; $7db2: $80
	dec  b                                           ; $7db3: $05
	add  b                                           ; $7db4: $80
	ld   a, [bc]                                     ; $7db5: $0a
	inc  b                                           ; $7db6: $04
	inc  b                                           ; $7db7: $04
	dec  b                                           ; $7db8: $05
	nop                                              ; $7db9: $00
	rrca                                             ; $7dba: $0f
	inc  bc                                          ; $7dbb: $03
	add  c                                           ; $7dbc: $81
	rrca                                             ; $7dbd: $0f
	ld   a, [bc]                                     ; $7dbe: $0a
	ld   d, e                                        ; $7dbf: $53
	ld   d, c                                        ; $7dc0: $51
	add  [hl]                                        ; $7dc1: $86
	add  a                                           ; $7dc2: $87
	ld   d, b                                        ; $7dc3: $50
	ld   e, a                                        ; $7dc4: $5f
	add  l                                           ; $7dc5: $85
	rst  $38                                         ; $7dc6: $ff
	rrca                                             ; $7dc7: $0f
	rst  $38                                         ; $7dc8: $ff
	ld   a, a                                        ; $7dc9: $7f
	add  e                                           ; $7dca: $83
	rst  $38                                         ; $7dcb: $ff
	inc  b                                           ; $7dcc: $04
	ld   c, e                                        ; $7dcd: $4b
	ld   a, a                                        ; $7dce: $7f
	rra                                              ; $7dcf: $1f
	rst  $38                                         ; $7dd0: $ff
	ccf                                              ; $7dd1: $3f
	add  c                                           ; $7dd2: $81
	rst  $38                                         ; $7dd3: $ff

jr_078_7dd4:
	jr   c, jr_078_7dd4                              ; $7dd4: $38 $fe

	rst  $38                                         ; $7dd6: $ff
	ld   hl, sp-$01                                  ; $7dd7: $f8 $ff
	pop  af                                          ; $7dd9: $f1
	rst  $38                                         ; $7dda: $ff
	sub  a                                           ; $7ddb: $97
	rst  $38                                         ; $7ddc: $ff
	ld   a, [bc]                                     ; $7ddd: $0a
	rst  $38                                         ; $7dde: $ff
	db   $fc                                         ; $7ddf: $fc
	rst  $38                                         ; $7de0: $ff
	push hl                                          ; $7de1: $e5
	rst  $38                                         ; $7de2: $ff
	add  a                                           ; $7de3: $87
	rst  $38                                         ; $7de4: $ff
	sbc  a                                           ; $7de5: $9f
	rst  $38                                         ; $7de6: $ff
	cp   $ff                                         ; $7de7: $fe $ff
	db   $fc                                         ; $7de9: $fc
	rst  $38                                         ; $7dea: $ff
	db   $f4                                         ; $7deb: $f4
	rst  $38                                         ; $7dec: $ff
	or   $ff                                         ; $7ded: $f6 $ff
	inc  l                                           ; $7def: $2c
	rst  $38                                         ; $7df0: $ff
	db   $e4                                         ; $7df1: $e4
	rst  $38                                         ; $7df2: $ff
	and  $ff                                         ; $7df3: $e6 $ff
	adc  $ff                                         ; $7df5: $ce $ff
	ld   c, [hl]                                     ; $7df7: $4e
	rst  $38                                         ; $7df8: $ff
	ld   l, h                                        ; $7df9: $6c
	rst  $38                                         ; $7dfa: $ff
	db   $e4                                         ; $7dfb: $e4
	rst  $38                                         ; $7dfc: $ff
	ld   c, b                                        ; $7dfd: $48
	rst  $38                                         ; $7dfe: $ff
	ld   c, d                                        ; $7dff: $4a
	rst  $38                                         ; $7e00: $ff
	sbc  d                                           ; $7e01: $9a
	rst  $38                                         ; $7e02: $ff
	cp   d                                           ; $7e03: $ba
	rst  $38                                         ; $7e04: $ff
	ld   l, e                                        ; $7e05: $6b
	rst  $38                                         ; $7e06: $ff
	ld   c, e                                        ; $7e07: $4b
	rst  $38                                         ; $7e08: $ff
	dec  de                                          ; $7e09: $1b
	rst  $38                                         ; $7e0a: $ff
	dec  sp                                          ; $7e0b: $3b
	rst  $38                                         ; $7e0c: $ff
	ld   a, a                                        ; $7e0d: $7f
	adc  e                                           ; $7e0e: $8b
	rst  $38                                         ; $7e0f: $ff
	ld   [bc], a                                     ; $7e10: $02
	cp   $ff                                         ; $7e11: $fe $ff
	ld   a, [hl]                                     ; $7e13: $7e
	add  c                                           ; $7e14: $81
	ld   a, a                                        ; $7e15: $7f
	add  c                                           ; $7e16: $81
	nop                                              ; $7e17: $00
	add  d                                           ; $7e18: $82
	ld   bc, $fe83                                   ; $7e19: $01 $83 $fe
	nop                                              ; $7e1c: $00
	ld   bc, $ff81                                   ; $7e1d: $01 $81 $ff
	add  c                                           ; $7e20: $81
	nop                                              ; $7e21: $00
	add  d                                           ; $7e22: $82
	db   $fc                                         ; $7e23: $fc
	add  d                                           ; $7e24: $82
	inc  bc                                          ; $7e25: $03
	ld   bc, $ff01                                   ; $7e26: $01 $01 $ff
	add  c                                           ; $7e29: $81
	cp   $81                                         ; $7e2a: $fe $81
	nop                                              ; $7e2c: $00
	add  b                                           ; $7e2d: $80
	rra                                              ; $7e2e: $1f
	add  b                                           ; $7e2f: $80
	rrca                                             ; $7e30: $0f
	add  d                                           ; $7e31: $82
	ldh  a, [$03]                                    ; $7e32: $f0 $03
	ld   hl, sp+$3b                                  ; $7e34: $f8 $3b
	ldh  a, [$f3]                                    ; $7e36: $f0 $f3
	add  b                                           ; $7e38: $80
	db   $ec                                         ; $7e39: $ec
	ld   b, $e3                                      ; $7e3a: $06 $e3
	ld   h, e                                        ; $7e3c: $63
	ld   h, b                                        ; $7e3d: $60
	nop                                              ; $7e3e: $00
	and  b                                           ; $7e3f: $a0
	sub  b                                           ; $7e40: $90
	db   $10                                         ; $7e41: $10
	add  b                                           ; $7e42: $80
	ld   [$0480], sp                                 ; $7e43: $08 $80 $04
	nop                                              ; $7e46: $00
	inc  bc                                          ; $7e47: $03
	adc  c                                           ; $7e48: $89
	add  [hl]                                        ; $7e49: $86
	inc  b                                           ; $7e4a: $04
	call nc, $acd7                                   ; $7e4b: $d4 $d7 $ac
	xor  a                                           ; $7e4e: $af
	ld   a, l                                        ; $7e4f: $7d
	adc  d                                           ; $7e50: $8a
	inc  b                                           ; $7e51: $04
	inc  bc                                          ; $7e52: $03
	add  h                                           ; $7e53: $84
	inc  b                                           ; $7e54: $04
	call nz, $8dbb                                   ; $7e55: $c4 $bb $8d
	inc  e                                           ; $7e58: $1c
	db   $10                                         ; $7e59: $10
	adc  $07                                         ; $7e5a: $ce $07
	ccf                                              ; $7e5c: $3f
	rlca                                             ; $7e5d: $07
	ccf                                              ; $7e5e: $3f
	inc  bc                                          ; $7e5f: $03
	ccf                                              ; $7e60: $3f
	inc  bc                                          ; $7e61: $03
	rra                                              ; $7e62: $1f
	inc  bc                                          ; $7e63: $03
	rra                                              ; $7e64: $1f
	inc  bc                                          ; $7e65: $03
	rra                                              ; $7e66: $1f
	inc  bc                                          ; $7e67: $03
	rrca                                             ; $7e68: $0f
	inc  bc                                          ; $7e69: $03
	ld   a, [$038d]                                  ; $7e6a: $fa $8d $03
	nop                                              ; $7e6d: $00
	pop  af                                          ; $7e6e: $f1
	add  l                                           ; $7e6f: $85
	rrca                                             ; $7e70: $0f
	ld   [de], a                                     ; $7e71: $12
	ld   c, $0f                                      ; $7e72: $0e $0f
	ld   a, [bc]                                     ; $7e74: $0a
	rrca                                             ; $7e75: $0f
	inc  bc                                          ; $7e76: $03
	rrca                                             ; $7e77: $0f
	rlca                                             ; $7e78: $07
	rrca                                             ; $7e79: $0f
	ld   hl, sp-$01                                  ; $7e7a: $f8 $ff
	db   $fc                                         ; $7e7c: $fc
	rst  $38                                         ; $7e7d: $ff
	push hl                                          ; $7e7e: $e5
	rst  $38                                         ; $7e7f: $ff
	add  a                                           ; $7e80: $87
	rst  $38                                         ; $7e81: $ff
	rra                                              ; $7e82: $1f
	rst  $38                                         ; $7e83: $ff
	ld   a, a                                        ; $7e84: $7f
	add  c                                           ; $7e85: $81
	rst  $38                                         ; $7e86: $ff
	ld   a, $fe                                      ; $7e87: $3e $fe
	rst  $38                                         ; $7e89: $ff
	ld   l, d                                        ; $7e8a: $6a
	rst  $38                                         ; $7e8b: $ff
	ld   a, a                                        ; $7e8c: $7f
	rst  $38                                         ; $7e8d: $ff
	cp   $ff                                         ; $7e8e: $fe $ff
	ld   hl, sp-$01                                  ; $7e90: $f8 $ff
	pop  af                                          ; $7e92: $f1
	rst  $38                                         ; $7e93: $ff
	rst  $10                                         ; $7e94: $d7
	rst  $38                                         ; $7e95: $ff
	dec  e                                           ; $7e96: $1d
	rst  $38                                         ; $7e97: $ff
	inc  a                                           ; $7e98: $3c
	rst  $38                                         ; $7e99: $ff
	ld   e, d                                        ; $7e9a: $5a
	rst  $38                                         ; $7e9b: $ff
	adc  [hl]                                        ; $7e9c: $8e
	rst  $38                                         ; $7e9d: $ff
	cp   [hl]                                        ; $7e9e: $be
	rst  $38                                         ; $7e9f: $ff
	db   $ec                                         ; $7ea0: $ec
	rst  $38                                         ; $7ea1: $ff
	and  $ff                                         ; $7ea2: $e6 $ff
	xor  h                                           ; $7ea4: $ac
	rst  $38                                         ; $7ea5: $ff
	adc  h                                           ; $7ea6: $8c
	rst  $38                                         ; $7ea7: $ff
	add  h                                           ; $7ea8: $84
	rst  $38                                         ; $7ea9: $ff
	ld   d, h                                        ; $7eaa: $54
	rst  $38                                         ; $7eab: $ff
	call nc, Call_078_44ff                           ; $7eac: $d4 $ff $44
	rst  $38                                         ; $7eaf: $ff
	ld   b, h                                        ; $7eb0: $44
	rst  $38                                         ; $7eb1: $ff
	ld   d, h                                        ; $7eb2: $54
	rst  $38                                         ; $7eb3: $ff
	ld   [hl], h                                     ; $7eb4: $74
	rst  $38                                         ; $7eb5: $ff
	ld   h, l                                        ; $7eb6: $65
	rst  $38                                         ; $7eb7: $ff
	rst  ToBoot                                         ; $7eb8: $c7
	rst  $38                                         ; $7eb9: $ff
	rst  ToBoot                                         ; $7eba: $c7
	rst  $38                                         ; $7ebb: $ff
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7ebc: $cf
	rst  $38                                         ; $7ebd: $ff
	rst  JumpTable                                         ; $7ebe: $df
	rst  $38                                         ; $7ebf: $ff
	ld   a, a                                        ; $7ec0: $7f
	rst  $38                                         ; $7ec1: $ff
	ld   a, a                                        ; $7ec2: $7f
	rst  $38                                         ; $7ec3: $ff
	ld   a, a                                        ; $7ec4: $7f
	rst  $38                                         ; $7ec5: $ff
	ld   a, a                                        ; $7ec6: $7f
	add  c                                           ; $7ec7: $81
	rst  $38                                         ; $7ec8: $ff
	ld   [bc], a                                     ; $7ec9: $02
	cp   $ff                                         ; $7eca: $fe $ff
	db   $fd                                         ; $7ecc: $fd
	add  c                                           ; $7ecd: $81
	db   $fc                                         ; $7ece: $fc
	add  e                                           ; $7ecf: $83
	ld   hl, sp+$02                                  ; $7ed0: $f8 $02
	rst  $38                                         ; $7ed2: $ff
	rst  $30                                         ; $7ed3: $f7
	rst  $38                                         ; $7ed4: $ff
	add  b                                           ; $7ed5: $80
	rst  $30                                         ; $7ed6: $f7
	nop                                              ; $7ed7: $00
	rrca                                             ; $7ed8: $0f
	add  b                                           ; $7ed9: $80
	cp   $86                                         ; $7eda: $fe $86
	ld   bc, $fe84                                   ; $7edc: $01 $84 $fe
	add  b                                           ; $7edf: $80
	ld   bc, $fe82                                   ; $7ee0: $01 $82 $fe
	add  d                                           ; $7ee3: $82
	rst  $38                                         ; $7ee4: $ff
	add  h                                           ; $7ee5: $84
	nop                                              ; $7ee6: $00
	add  b                                           ; $7ee7: $80
	db   $fc                                         ; $7ee8: $fc
	add  b                                           ; $7ee9: $80
	ld   bc, $0084                                   ; $7eea: $01 $84 $00
	add  d                                           ; $7eed: $82
	rst  $38                                         ; $7eee: $ff
	dec  b                                           ; $7eef: $05
	ld   a, a                                        ; $7ef0: $7f
	ld   a, l                                        ; $7ef1: $7d
	ld   [bc], a                                     ; $7ef2: $02
	ld   bc, $feff                                   ; $7ef3: $01 $ff $fe
	add  d                                           ; $7ef6: $82
	rst  $38                                         ; $7ef7: $ff
	add  b                                           ; $7ef8: $80
	ld   a, a                                        ; $7ef9: $7f
	add  d                                           ; $7efa: $82
	add  b                                           ; $7efb: $80
	ld   bc, $b8c0                                   ; $7efc: $01 $c0 $b8
	add  c                                           ; $7eff: $81
	db   $fc                                         ; $7f00: $fc
	rlca                                             ; $7f01: $07
	ld   a, h                                        ; $7f02: $7c
	db   $fc                                         ; $7f03: $fc
	ld   a, h                                        ; $7f04: $7c
	db   $fc                                         ; $7f05: $fc
	cp   h                                           ; $7f06: $bc
	db   $fc                                         ; $7f07: $fc
	call c, $801c                                    ; $7f08: $dc $1c $80
	inc  c                                           ; $7f0b: $0c
	add  hl, bc                                      ; $7f0c: $09
	ld   b, $02                                      ; $7f0d: $06 $02
	cp   b                                           ; $7f0f: $b8
	db   $f4                                         ; $7f10: $f4
	add  h                                           ; $7f11: $84
	db   $fc                                         ; $7f12: $fc
	call nz, $f4fc                                   ; $7f13: $c4 $fc $f4
	db   $fc                                         ; $7f16: $fc
	add  b                                           ; $7f17: $80
	cp   $80                                         ; $7f18: $fe $80
	db   $fd                                         ; $7f1a: $fd
	add  b                                           ; $7f1b: $80
	cp   $80                                         ; $7f1c: $fe $80
	db   $fd                                         ; $7f1e: $fd
	nop                                              ; $7f1f: $00
	inc  bc                                          ; $7f20: $03
	adc  c                                           ; $7f21: $89
	inc  e                                           ; $7f22: $1c
	inc  d                                           ; $7f23: $14
	cp   h                                           ; $7f24: $bc
	cp   [hl]                                        ; $7f25: $be
	ld   e, b                                        ; $7f26: $58
	ld   e, a                                        ; $7f27: $5f
	db   $eb                                         ; $7f28: $eb
	inc  bc                                          ; $7f29: $03
	rrca                                             ; $7f2a: $0f
	inc  bc                                          ; $7f2b: $03

jr_078_7f2c:
	rrca                                             ; $7f2c: $0f
	inc  bc                                          ; $7f2d: $03
	rrca                                             ; $7f2e: $0f
	inc  bc                                          ; $7f2f: $03
	rrca                                             ; $7f30: $0f
	inc  bc                                          ; $7f31: $03
	rrca                                             ; $7f32: $0f
	inc  bc                                          ; $7f33: $03
	rrca                                             ; $7f34: $0f
	inc  bc                                          ; $7f35: $03
	rrca                                             ; $7f36: $0f
	inc  bc                                          ; $7f37: $03
	ld   a, [$038d]                                  ; $7f38: $fa $8d $03
	rla                                              ; $7f3b: $17
	nop                                              ; $7f3c: $00
	inc  hl                                          ; $7f3d: $23
	cp   [hl]                                        ; $7f3e: $be
	ld   a, [hl]                                     ; $7f3f: $7e
	dec  [hl]                                        ; $7f40: $35
	db   $fd                                         ; $7f41: $fd
	or   l                                           ; $7f42: $b5
	jp   $0e83                                       ; $7f43: $c3 $83 $0e


	add  hl, bc                                      ; $7f46: $09
	ld   a, [bc]                                     ; $7f47: $0a
	ld   c, l                                        ; $7f48: $4d
	call $febe                                       ; $7f49: $cd $be $fe
	cp   l                                           ; $7f4c: $bd
	ld   a, l                                        ; $7f4d: $7d
	ld   c, [hl]                                     ; $7f4e: $4e
	ld   a, [hl]                                     ; $7f4f: $7e
	dec  [hl]                                        ; $7f50: $35
	db   $fd                                         ; $7f51: $fd
	or   l                                           ; $7f52: $b5
	jp   $0e8b                                       ; $7f53: $c3 $8b $0e


	ld   a, [bc]                                     ; $7f56: $0a
	rrca                                             ; $7f57: $0f
	ld   c, h                                        ; $7f58: $4c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $7f59: $cf
	or   h                                           ; $7f5a: $b4
	rst  $38                                         ; $7f5b: $ff
	or   [hl]                                        ; $7f5c: $b6
	ld   a, a                                        ; $7f5d: $7f
	ld   c, l                                        ; $7f5e: $4d
	adc  d                                           ; $7f5f: $8a
	db   $ed                                         ; $7f60: $ed
	push de                                          ; $7f61: $d5
	add  b                                           ; $7f62: $80
	ld   a, d                                        ; $7f63: $7a
	add  b                                           ; $7f64: $80
	cp   a                                           ; $7f65: $bf
	dec  bc                                          ; $7f66: $0b
	rst  $38                                         ; $7f67: $ff
	ld   a, a                                        ; $7f68: $7f
	ld   a, [de]                                     ; $7f69: $1a
	rst  JumpTable                                         ; $7f6a: $df
	jr   nc, jr_078_7f2c                             ; $7f6b: $30 $bf

	sub  b                                           ; $7f6d: $90
	or   a                                           ; $7f6e: $b7
	ld   e, l                                        ; $7f6f: $5d
	adc  b                                           ; $7f70: $88
	add  sp, -$30                                    ; $7f71: $e8 $d0
	add  b                                           ; $7f73: $80
	ld   l, b                                        ; $7f74: $68
	add  b                                           ; $7f75: $80
	or   b                                           ; $7f76: $b0
	ld   [$6aea], sp                                 ; $7f77: $08 $ea $6a
	sub  h                                           ; $7f7a: $94
	ld   d, h                                        ; $7f7b: $54
	or   d                                           ; $7f7c: $b2
	cp   d                                           ; $7f7d: $ba
	dec  d                                           ; $7f7e: $15
	dec  [hl]                                        ; $7f7f: $35
	ld   l, b                                        ; $7f80: $68
	rst  $38                                         ; $7f81: $ff
	nop                                              ; $7f82: $00
	rst  $38                                         ; $7f83: $ff
	nop                                              ; $7f84: $00
	rst  $38                                         ; $7f85: $ff
	nop                                              ; $7f86: $00
	rst  $38                                         ; $7f87: $ff
	nop                                              ; $7f88: $00
	rst  $38                                         ; $7f89: $ff
	nop                                              ; $7f8a: $00
	rst  $38                                         ; $7f8b: $ff
	nop                                              ; $7f8c: $00
	rst  $38                                         ; $7f8d: $ff
	nop                                              ; $7f8e: $00
	rst  $38                                         ; $7f8f: $ff
	nop                                              ; $7f90: $00
	rst  $38                                         ; $7f91: $ff
	nop                                              ; $7f92: $00
	rst  $38                                         ; $7f93: $ff
	nop                                              ; $7f94: $00
	rst  $38                                         ; $7f95: $ff
	nop                                              ; $7f96: $00
	rst  $38                                         ; $7f97: $ff
	nop                                              ; $7f98: $00
	rst  $38                                         ; $7f99: $ff
	nop                                              ; $7f9a: $00
	rst  $38                                         ; $7f9b: $ff
	nop                                              ; $7f9c: $00
	rst  $38                                         ; $7f9d: $ff
	nop                                              ; $7f9e: $00
	xor  [hl]                                        ; $7f9f: $ae
	nop                                              ; $7fa0: $00
	inc  hl                                          ; $7fa1: $23
	nop                                              ; $7fa2: $00
	ld   bc, $00ff                                   ; $7fa3: $01 $ff $00
	add  b                                           ; $7fa6: $80
	rst  $38                                         ; $7fa7: $ff
	add  b                                           ; $7fa8: $80
	ld   bc, $008b                                   ; $7fa9: $01 $8b $00
	add  b                                           ; $7fac: $80
	rlca                                             ; $7fad: $07
	adc  e                                           ; $7fae: $8b
	nop                                              ; $7faf: $00
	ld   [bc], a                                     ; $7fb0: $02
	rlca                                             ; $7fb1: $07
	rst  $38                                         ; $7fb2: $ff
	ld   hl, sp-$75                                  ; $7fb3: $f8 $8b
	nop                                              ; $7fb5: $00
	add  b                                           ; $7fb6: $80
	ld   hl, sp-$80                                  ; $7fb7: $f8 $80
	ld   [$0982], sp                                 ; $7fb9: $08 $82 $09
	inc  bc                                          ; $7fbc: $03
	ld   a, [bc]                                     ; $7fbd: $0a
	dec  bc                                          ; $7fbe: $0b
	dec  b                                           ; $7fbf: $05
	rlca                                             ; $7fc0: $07
	add  b                                           ; $7fc1: $80
	inc  bc                                          ; $7fc2: $03
	inc  b                                           ; $7fc3: $04
	dec  hl                                          ; $7fc4: $2b
	inc  l                                           ; $7fc5: $2c
	inc  e                                           ; $7fc6: $1c
	ld   e, $06                                      ; $7fc7: $1e $06
	add  d                                           ; $7fc9: $82
	ld   c, $80                                      ; $7fca: $0e $80
	adc  [hl]                                        ; $7fcc: $8e
	add  b                                           ; $7fcd: $80
	adc  h                                           ; $7fce: $8c
	add  b                                           ; $7fcf: $80
	add  c                                           ; $7fd0: $81
	ld   bc, $7f80                                   ; $7fd1: $01 $80 $7f
	rst  $38                                         ; $7fd4: $ff
	nop                                              ; $7fd5: $00
	rst  $38                                         ; $7fd6: $ff
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
	sbc  [hl]                                        ; $7ff2: $9e
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
