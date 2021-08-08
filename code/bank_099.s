; Disassembly of "OR"
; This file was created with:
; mgbdis v1.4 - Game Boy ROM disassembler by Matt Currie and contributors.
; https://github.com/mattcurrie/mgbdis

INCLUDE "includes.s"

SECTION "ROM Bank $099", ROMX[$4000], BANK[$99]

	ld   [hl], b                                     ; $4000: $70
	ld   bc, $0e04                                   ; $4001: $01 $04 $0e
	nop                                              ; $4004: $00
	inc  de                                          ; $4005: $13
	add  b                                           ; $4006: $80
	and  d                                           ; $4007: $a2
	add  c                                           ; $4008: $81
	add  b                                           ; $4009: $80
	ld   [$80c1], sp                                 ; $400a: $08 $c1 $80
	ld   [bc], a                                     ; $400d: $02
	add  b                                           ; $400e: $80
	adc  h                                           ; $400f: $8c
	add  b                                           ; $4010: $80
	ldh  a, [$8c]                                    ; $4011: $f0 $8c
	ldh  a, [$81]                                    ; $4013: $f0 $81
	db   $fc                                         ; $4015: $fc
	inc  c                                           ; $4016: $0c
	nop                                              ; $4017: $00
	ret  nz                                          ; $4018: $c0

	inc  c                                           ; $4019: $0c
	call z, $de1e                                    ; $401a: $cc $1e $de
	ld   a, $fe                                      ; $401d: $3e $fe
	ld   hl, sp-$02                                  ; $401f: $f8 $fe
	ld   b, [hl]                                     ; $4021: $46
	db   $fc                                         ; $4022: $fc
	cp   h                                           ; $4023: $bc
	sub  d                                           ; $4024: $92
	nop                                              ; $4025: $00
	add  h                                           ; $4026: $84
	inc  bc                                          ; $4027: $03
	add  b                                           ; $4028: $80
	ld   bc, $009d                                   ; $4029: $01 $9d $00
	add  b                                           ; $402c: $80
	ld   bc, $0680                                   ; $402d: $01 $80 $06
	adc  [hl]                                        ; $4030: $8e

jr_099_4031:
	nop                                              ; $4031: $00
	ld   bc, $7870                                   ; $4032: $01 $70 $78
	add  b                                           ; $4035: $80
	ld   hl, sp-$80                                  ; $4036: $f8 $80
	ld   a, b                                        ; $4038: $78
	add  b                                           ; $4039: $80
	jr   c, @+$03                                    ; $403a: $38 $01

	ldh  a, [$fc]                                    ; $403c: $f0 $fc

jr_099_403e:
	add  b                                           ; $403e: $80
	ld   a, h                                        ; $403f: $7c
	add  b                                           ; $4040: $80
	inc  a                                           ; $4041: $3c
	add  b                                           ; $4042: $80
	inc  c                                           ; $4043: $0c
	inc  bc                                          ; $4044: $03
	inc  b                                           ; $4045: $04
	nop                                              ; $4046: $00
	ld   [$820c], sp                                 ; $4047: $08 $0c $82
	inc  e                                           ; $404a: $1c
	nop                                              ; $404b: $00
	db   $38, $83                                    ; $404c: $38 $83
	ld   a, $03                                      ; $404e: $3e $03
	inc  c                                           ; $4050: $0c
	rrca                                             ; $4051: $0f
	dec  c                                           ; $4052: $0d
	inc  c                                           ; $4053: $0c
	adc  h                                           ; $4054: $8c
	nop                                              ; $4055: $00
	add  b                                           ; $4056: $80
	ld   [de], a                                     ; $4057: $12
	add  b                                           ; $4058: $80
	rra                                              ; $4059: $1f
	ld   bc, $1f1e                                   ; $405a: $01 $1e $1f
	add  b                                           ; $405d: $80
	ccf                                              ; $405e: $3f
	add  hl, bc                                      ; $405f: $09
	add  hl, sp                                      ; $4060: $39
	ld   a, $26                                      ; $4061: $3e $26
	jr   c, @+$22                                    ; $4063: $38 $20

	ld   a, $18                                      ; $4065: $3e $18
	rra                                              ; $4067: $1f
	ld   c, $0f                                      ; $4068: $0e $0f
	add  b                                           ; $406a: $80
	rlca                                             ; $406b: $07
	add  b                                           ; $406c: $80
	ld   [bc], a                                     ; $406d: $02
	add  b                                           ; $406e: $80
	nop                                              ; $406f: $00
	add  d                                           ; $4070: $82
	ld   bc, $0084                                   ; $4071: $01 $84 $00
	ld   [bc], a                                     ; $4074: $02
	ld   h, b                                        ; $4075: $60

Call_099_4076:
	ld   [hl], b                                     ; $4076: $70
	ldh  [$81], a                                    ; $4077: $e0 $81
	ld   hl, sp+$00                                  ; $4079: $f8 $00
	ldh  a, [$81]                                    ; $407b: $f0 $81
	db   $fc                                         ; $407d: $fc
	inc  bc                                          ; $407e: $03
	jr   c, jr_099_40bf                              ; $407f: $38 $3e

	add  d                                           ; $4081: $82
	add  b                                           ; $4082: $80
	add  b                                           ; $4083: $80
	ldh  [$80], a                                    ; $4084: $e0 $80
	ld   [hl], b                                     ; $4086: $70
	add  e                                           ; $4087: $83
	ld   a, b                                        ; $4088: $78
	nop                                              ; $4089: $00
	ld   a, h                                        ; $408a: $7c
	add  b                                           ; $408b: $80
	db   $fc                                         ; $408c: $fc
	ld   [bc], a                                     ; $408d: $02
	ld   h, h                                        ; $408e: $64
	ld   a, b                                        ; $408f: $78
	jr   @-$7e                                       ; $4090: $18 $80

	jr   nz, jr_099_4031                             ; $4092: $20 $9d

	nop                                              ; $4094: $00
	ld   [bc], a                                     ; $4095: $02
	inc  bc                                          ; $4096: $03
	nop                                              ; $4097: $00
	ld   bc, $0081                                   ; $4098: $01 $81 $00
	nop                                              ; $409b: $00
	ld   [bc], a                                     ; $409c: $02
	add  l                                           ; $409d: $85
	nop                                              ; $409e: $00
	add  b                                           ; $409f: $80
	ld   bc, $0806                                   ; $40a0: $01 $06 $08
	nop                                              ; $40a3: $00
	sbc  b                                           ; $40a4: $98
	nop                                              ; $40a5: $00
	jr   nz, jr_099_40a8                             ; $40a6: $20 $00

jr_099_40a8:
	db   $10                                         ; $40a8: $10
	add  c                                           ; $40a9: $81
	nop                                              ; $40aa: $00
	inc  c                                           ; $40ab: $0c
	ldh  [rP1], a                                    ; $40ac: $e0 $00
	ld   h, b                                        ; $40ae: $60
	nop                                              ; $40af: $00
	db   $ec                                         ; $40b0: $ec
	nop                                              ; $40b1: $00

jr_099_40b2:
	ret  nc                                          ; $40b2: $d0

	ld   bc, $0121                                   ; $40b3: $01 $21 $01
	dec  h                                           ; $40b6: $25
	ld   bc, $9f19                                   ; $40b7: $01 $19 $9f
	nop                                              ; $40ba: $00
	add  b                                           ; $40bb: $80
	jr   nz, jr_099_403e                             ; $40bc: $20 $80

	ld   b, b                                        ; $40be: $40

jr_099_40bf:
	add  b                                           ; $40bf: $80
	call nz, Call_099_6980                           ; $40c0: $c4 $80 $69
	add  b                                           ; $40c3: $80
	halt                                             ; $40c4: $76
	add  b                                           ; $40c5: $80
	ld   a, $80                                      ; $40c6: $3e $80
	inc  b                                           ; $40c8: $04
	ld   bc, $0405                                   ; $40c9: $01 $05 $04
	add  b                                           ; $40cc: $80
	nop                                              ; $40cd: $00
	ld   b, $04                                      ; $40ce: $06 $04
	nop                                              ; $40d0: $00
	dec  b                                           ; $40d1: $05
	nop                                              ; $40d2: $00
	dec  b                                           ; $40d3: $05
	db   $10                                         ; $40d4: $10
	dec  d                                           ; $40d5: $15
	add  l                                           ; $40d6: $85
	nop                                              ; $40d7: $00
	dec  bc                                          ; $40d8: $0b
	ld   bc, $2100                                   ; $40d9: $01 $00 $21
	nop                                              ; $40dc: $00
	ld   [$0100], sp                                 ; $40dd: $08 $00 $01
	nop                                              ; $40e0: $00
	ld   a, c                                        ; $40e1: $79
	ld   [$181c], sp                                 ; $40e2: $08 $1c $18
	add  [hl]                                        ; $40e5: $86
	inc  e                                           ; $40e6: $1c
	inc  b                                           ; $40e7: $04
	ld   e, h                                        ; $40e8: $5c
	ld   a, [hl]                                     ; $40e9: $7e
	rst  $38                                         ; $40ea: $ff
	inc  a                                           ; $40eb: $3c
	cp   l                                           ; $40ec: $bd
	add  l                                           ; $40ed: $85
	nop                                              ; $40ee: $00
	add  b                                           ; $40ef: $80
	ld   [$8403], sp                                 ; $40f0: $08 $03 $84

Jump_099_40f3:
	inc  b                                           ; $40f3: $04
	jp   nc, $8012                                   ; $40f4: $d2 $12 $80

	dec  bc                                          ; $40f7: $0b
	ld   bc, $07e7                                   ; $40f8: $01 $e7 $07
	add  b                                           ; $40fb: $80
	inc  b                                           ; $40fc: $04
	nop                                              ; $40fd: $00
	ldh  a, [$83]                                    ; $40fe: $f0 $83
	nop                                              ; $4100: $00
	ld   b, $50                                      ; $4101: $06 $50
	nop                                              ; $4103: $00
	ld   c, b                                        ; $4104: $48
	nop                                              ; $4105: $00
	sbc  h                                           ; $4106: $9c
	nop                                              ; $4107: $00
	ret  z                                           ; $4108: $c8

	add  c                                           ; $4109: $81
	ldh  [$0b], a                                    ; $410a: $e0 $0b
	ret  nc                                          ; $410c: $d0

	ret  nz                                          ; $410d: $c0

	pop  hl                                          ; $410e: $e1
	nop                                              ; $410f: $00
	inc  b                                           ; $4110: $04
	ldh  a, [$71]                                    ; $4111: $f0 $71
	ldh  a, [$60]                                    ; $4113: $f0 $60
	ldh  [$e8], a                                    ; $4115: $e0 $e8
	ldh  [$80], a                                    ; $4117: $e0 $80
	ret  nz                                          ; $4119: $c0

	ld   b, $90                                      ; $411a: $06 $90
	add  b                                           ; $411c: $80
	ld   h, b                                        ; $411d: $60
	nop                                              ; $411e: $00
	add  b                                           ; $411f: $80
	nop                                              ; $4120: $00
	add  b                                           ; $4121: $80
	add  e                                           ; $4122: $83
	nop                                              ; $4123: $00
	inc  b                                           ; $4124: $04
	add  b                                           ; $4125: $80
	nop                                              ; $4126: $00
	ld   h, b                                        ; $4127: $60
	nop                                              ; $4128: $00
	ld   b, b                                        ; $4129: $40
	add  c                                           ; $412a: $81
	nop                                              ; $412b: $00
	nop                                              ; $412c: $00
	jr   nz, jr_099_40b2                             ; $412d: $20 $83

	nop                                              ; $412f: $00
	add  b                                           ; $4130: $80
	add  b                                           ; $4131: $80
	add  b                                           ; $4132: $80
	nop                                              ; $4133: $00
	add  b                                           ; $4134: $80
	add  b                                           ; $4135: $80
	ld   d, $84                                      ; $4136: $16 $84
	add  b                                           ; $4138: $80
	ld   b, $00                                      ; $4139: $06 $00
	ld   [bc], a                                     ; $413b: $02
	nop                                              ; $413c: $00
	inc  b                                           ; $413d: $04
	nop                                              ; $413e: $00
	ld   a, [bc]                                     ; $413f: $0a
	nop                                              ; $4140: $00
	ld   [de], a                                     ; $4141: $12
	nop                                              ; $4142: $00
	inc  [hl]                                        ; $4143: $34
	nop                                              ; $4144: $00
	jr   c, @-$7e                                    ; $4145: $38 $80

	or   b                                           ; $4147: $b0
	add  b                                           ; $4148: $80
	sub  b                                           ; $4149: $90
	add  b                                           ; $414a: $80
	sbc  b                                           ; $414b: $98
	add  b                                           ; $414c: $80
	xor  b                                           ; $414d: $a8
	sub  l                                           ; $414e: $95
	nop                                              ; $414f: $00
	ld   [bc], a                                     ; $4150: $02
	inc  bc                                          ; $4151: $03
	nop                                              ; $4152: $00
	inc  bc                                          ; $4153: $03
	adc  c                                           ; $4154: $89
	nop                                              ; $4155: $00
	add  b                                           ; $4156: $80
	ld   bc, $1004                                   ; $4157: $01 $04 $10
	nop                                              ; $415a: $00
	jr   nc, jr_099_415d                             ; $415b: $30 $00

jr_099_415d:
	add  b                                           ; $415d: $80
	add  c                                           ; $415e: $81
	nop                                              ; $415f: $00
	inc  c                                           ; $4160: $0c
	ret  nz                                          ; $4161: $c0

	nop                                              ; $4162: $00
	ld   h, b                                        ; $4163: $60
	nop                                              ; $4164: $00
	ldh  [rP1], a                                    ; $4165: $e0 $00
	db   $ec                                         ; $4167: $ec
	nop                                              ; $4168: $00
	db   $10                                         ; $4169: $10
	ld   bc, $0121                                   ; $416a: $01 $21 $01
	dec  a                                           ; $416d: $3d
	add  b                                           ; $416e: $80
	ld   bc, $009f                                   ; $416f: $01 $9f $00
	add  b                                           ; $4172: $80
	jr   nz, @-$7e                                   ; $4173: $20 $80

	ld   b, b                                        ; $4175: $40
	add  b                                           ; $4176: $80
	ret  z                                           ; $4177: $c8

	add  b                                           ; $4178: $80
	ld   [hl], c                                     ; $4179: $71
	add  b                                           ; $417a: $80
	or   $80                                         ; $417b: $f6 $80
	ld   a, [hl]                                     ; $417d: $7e
	add  b                                           ; $417e: $80

jr_099_417f:
	inc  b                                           ; $417f: $04
	add  b                                           ; $4180: $80
	ld   [$0100], sp                                 ; $4181: $08 $00 $01
	add  c                                           ; $4184: $81
	nop                                              ; $4185: $00
	inc  b                                           ; $4186: $04
	dec  b                                           ; $4187: $05
	nop                                              ; $4188: $00
	ld   sp, $3500                                   ; $4189: $31 $00 $35
	add  l                                           ; $418c: $85
	nop                                              ; $418d: $00
	db   $10                                         ; $418e: $10
	ld   bc, $2100                                   ; $418f: $01 $00 $21
	nop                                              ; $4192: $00
	ld   [$0100], sp                                 ; $4193: $08 $00 $01
	nop                                              ; $4196: $00
	ld   [hl], b                                     ; $4197: $70
	nop                                              ; $4198: $00
	ld   [$d100], sp                                 ; $4199: $08 $00 $d1
	ld   d, c                                        ; $419c: $51
	ld   [hl], c                                     ; $419d: $71
	ld   de, $81b3                                   ; $419e: $11 $b3 $81
	and  c                                           ; $41a1: $a1
	inc  b                                           ; $41a2: $04
	and  e                                           ; $41a3: $a3
	ld   l, d                                        ; $41a4: $6a
	db   $eb                                         ; $41a5: $eb
	inc  a                                           ; $41a6: $3c
	cp   l                                           ; $41a7: $bd
	add  l                                           ; $41a8: $85
	nop                                              ; $41a9: $00
	add  b                                           ; $41aa: $80
	ld   [$8401], sp                                 ; $41ab: $08 $01 $84
	inc  b                                           ; $41ae: $04
	add  b                                           ; $41af: $80
	ld   [de], a                                     ; $41b0: $12
	ld   bc, $0bcb                                   ; $41b1: $01 $cb $0b
	add  b                                           ; $41b4: $80
	rrca                                             ; $41b5: $0f
	ld   bc, $2909                                   ; $41b6: $01 $09 $29
	add  h                                           ; $41b9: $84
	jr   nz, jr_099_41c2                             ; $41ba: $20 $06

	ld   h, b                                        ; $41bc: $60
	nop                                              ; $41bd: $00
	ld   c, b                                        ; $41be: $48
	nop                                              ; $41bf: $00
	sbc  h                                           ; $41c0: $9c
	nop                                              ; $41c1: $00

jr_099_41c2:
	ret  z                                           ; $41c2: $c8

	add  c                                           ; $41c3: $81
	ldh  [rAUD1HIGH], a                              ; $41c4: $e0 $14
	ret  nc                                          ; $41c6: $d0

	ret  nz                                          ; $41c7: $c0

	pop  hl                                          ; $41c8: $e1
	nop                                              ; $41c9: $00
	inc  d                                           ; $41ca: $14
	ldh  [$61], a                                    ; $41cb: $e0 $61
	ldh  [rBCPS], a                                  ; $41cd: $e0 $68
	ldh  [$f0], a                                    ; $41cf: $e0 $f0
	ret  nz                                          ; $41d1: $c0

	ldh  a, [$c0]                                    ; $41d2: $f0 $c0
	sub  b                                           ; $41d4: $90
	add  b                                           ; $41d5: $80
	ld   h, b                                        ; $41d6: $60
	nop                                              ; $41d7: $00
	add  b                                           ; $41d8: $80
	nop                                              ; $41d9: $00
	add  b                                           ; $41da: $80
	add  c                                           ; $41db: $81
	nop                                              ; $41dc: $00
	nop                                              ; $41dd: $00
	add  b                                           ; $41de: $80
	add  c                                           ; $41df: $81
	nop                                              ; $41e0: $00
	ld   [bc], a                                     ; $41e1: $02
	ld   b, b                                        ; $41e2: $40
	nop                                              ; $41e3: $00
	ld   b, b                                        ; $41e4: $40
	add  a                                           ; $41e5: $87
	nop                                              ; $41e6: $00
	add  b                                           ; $41e7: $80
	add  b                                           ; $41e8: $80
	add  b                                           ; $41e9: $80
	nop                                              ; $41ea: $00
	add  b                                           ; $41eb: $80
	add  b                                           ; $41ec: $80
	inc  b                                           ; $41ed: $04
	inc  b                                           ; $41ee: $04
	nop                                              ; $41ef: $00
	inc  b                                           ; $41f0: $04
	nop                                              ; $41f1: $00
	inc  b                                           ; $41f2: $04
	add  c                                           ; $41f3: $81
	nop                                              ; $41f4: $00
	ld   b, $0e                                      ; $41f5: $06 $0e
	nop                                              ; $41f7: $00
	ld   d, $00                                      ; $41f8: $16 $00
	inc  d                                           ; $41fa: $14
	nop                                              ; $41fb: $00
	jr   z, jr_099_417f                              ; $41fc: $28 $81

	add  b                                           ; $41fe: $80
	inc  b                                           ; $41ff: $04
	sub  b                                           ; $4200: $90
	add  b                                           ; $4201: $80
	and  b                                           ; $4202: $a0
	add  b                                           ; $4203: $80
	sub  b                                           ; $4204: $90
	sub  l                                           ; $4205: $95
	nop                                              ; $4206: $00
	ld   [bc], a                                     ; $4207: $02
	ld   bc, $0300                                   ; $4208: $01 $00 $03
	add  c                                           ; $420b: $81
	nop                                              ; $420c: $00
	nop                                              ; $420d: $00
	ld   [bc], a                                     ; $420e: $02
	add  e                                           ; $420f: $83
	nop                                              ; $4210: $00
	add  b                                           ; $4211: $80
	ld   bc, $0086                                   ; $4212: $01 $86 $00
	ld   c, $50                                      ; $4215: $0e $50
	nop                                              ; $4217: $00
	jr   nz, jr_099_421a                             ; $4218: $20 $00

jr_099_421a:
	jr   nc, jr_099_421c                             ; $421a: $30 $00

jr_099_421c:
	ld   h, b                                        ; $421c: $60
	nop                                              ; $421d: $00
	call nz, $e800                                   ; $421e: $c4 $00 $e8
	ld   bc, $0111                                   ; $4221: $01 $11 $01
	dec  e                                           ; $4224: $1d
	add  b                                           ; $4225: $80
	ld   bc, $009f                                   ; $4226: $01 $9f $00
	add  b                                           ; $4229: $80
	jr   nz, @-$7e                                   ; $422a: $20 $80

	ret  nz                                          ; $422c: $c0

	add  b                                           ; $422d: $80
	ret  z                                           ; $422e: $c8

	add  b                                           ; $422f: $80
	pop  af                                          ; $4230: $f1
	add  b                                           ; $4231: $80
	or   $80                                         ; $4232: $f6 $80
	ld   a, h                                        ; $4234: $7c
	inc  c                                           ; $4235: $0c
	add  hl, bc                                      ; $4236: $09
	ld   [$0003], sp                                 ; $4237: $08 $03 $00
	ld   b, $00                                      ; $423a: $06 $00
	dec  b                                           ; $423c: $05

jr_099_423d:
	nop                                              ; $423d: $00
	dec  de                                          ; $423e: $1b
	nop                                              ; $423f: $00
	dec  c                                           ; $4240: $0d
	nop                                              ; $4241: $00
	rla                                              ; $4242: $17
	add  l                                           ; $4243: $85
	nop                                              ; $4244: $00
	jr   jr_099_4248                                 ; $4245: $18 $01

	nop                                              ; $4247: $00

jr_099_4248:
	ld   hl, $0800                                   ; $4248: $21 $00 $08

Jump_099_424b:
	nop                                              ; $424b: $00
	ld   h, c                                        ; $424c: $61
	nop                                              ; $424d: $00
	jr   jr_099_4250                                 ; $424e: $18 $00

jr_099_4250:
	ret  nz                                          ; $4250: $c0

	nop                                              ; $4251: $00
	or   d                                           ; $4252: $b2
	nop                                              ; $4253: $00
	ld   h, c                                        ; $4254: $61
	jr   nz, jr_099_423d                             ; $4255: $20 $e6

	ld   b, d                                        ; $4257: $42
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4258: $cf
	add  h                                           ; $4259: $84
	sbc  l                                           ; $425a: $9d
	ld   c, [hl]                                     ; $425b: $4e
	rst  JumpTable                                         ; $425c: $df
	inc  a                                           ; $425d: $3c
	cp   l                                           ; $425e: $bd
	add  l                                           ; $425f: $85
	nop                                              ; $4260: $00
	add  b                                           ; $4261: $80
	ld   [$8401], sp                                 ; $4262: $08 $01 $84
	inc  b                                           ; $4265: $04
	add  b                                           ; $4266: $80
	ld   [de], a                                     ; $4267: $12
	ld   bc, $0bcb                                   ; $4268: $01 $cb $0b
	add  b                                           ; $426b: $80
	rlca                                             ; $426c: $07
	add  b                                           ; $426d: $80
	inc  b                                           ; $426e: $04
	add  d                                           ; $426f: $82
	nop                                              ; $4270: $00
	ld   [$40c0], sp                                 ; $4271: $08 $c0 $40
	ret  nz                                          ; $4274: $c0

	add  b                                           ; $4275: $80
	ret  z                                           ; $4276: $c8

	nop                                              ; $4277: $00
	sbc  h                                           ; $4278: $9c
	nop                                              ; $4279: $00
	ret  z                                           ; $427a: $c8

	add  c                                           ; $427b: $81
	ldh  [$0b], a                                    ; $427c: $e0 $0b
	ret  nc                                          ; $427e: $d0

	ret  nz                                          ; $427f: $c0

	pop  hl                                          ; $4280: $e1
	nop                                              ; $4281: $00
	inc  d                                           ; $4282: $14
	ldh  [rBCPD], a                                  ; $4283: $e0 $69
	ldh  [$78], a                                    ; $4285: $e0 $78
	ret  nz                                          ; $4287: $c0

	ret  c                                           ; $4288: $d8

	ldh  [$80], a                                    ; $4289: $e0 $80
	ret  nz                                          ; $428b: $c0

	ld   [$8090], sp                                 ; $428c: $08 $90 $80
	ld   h, b                                        ; $428f: $60
	nop                                              ; $4290: $00
	add  b                                           ; $4291: $80
	nop                                              ; $4292: $00
	add  b                                           ; $4293: $80
	nop                                              ; $4294: $00
	add  b                                           ; $4295: $80
	adc  a                                           ; $4296: $8f
	nop                                              ; $4297: $00
	add  b                                           ; $4298: $80
	add  b                                           ; $4299: $80
	add  b                                           ; $429a: $80
	nop                                              ; $429b: $00
	add  d                                           ; $429c: $82
	add  b                                           ; $429d: $80
	inc  b                                           ; $429e: $04
	inc  b                                           ; $429f: $04
	nop                                              ; $42a0: $00
	inc  b                                           ; $42a1: $04
	nop                                              ; $42a2: $00
	inc  b                                           ; $42a3: $04
	add  c                                           ; $42a4: $81
	nop                                              ; $42a5: $00
	ld   b, $1e                                      ; $42a6: $06 $1e
	nop                                              ; $42a8: $00
	ld   a, $00                                      ; $42a9: $3e $00
	inc  [hl]                                        ; $42ab: $34
	add  b                                           ; $42ac: $80
	or   b                                           ; $42ad: $b0
	add  c                                           ; $42ae: $81
	add  b                                           ; $42af: $80
	nop                                              ; $42b0: $00
	and  b                                           ; $42b1: $a0
	add  b                                           ; $42b2: $80
	add  b                                           ; $42b3: $80
	sub  [hl]                                        ; $42b4: $96
	nop                                              ; $42b5: $00
	add  d                                           ; $42b6: $82
	ccf                                              ; $42b7: $3f
	add  b                                           ; $42b8: $80
	scf                                              ; $42b9: $37
	add  b                                           ; $42ba: $80
	jr   nc, jr_099_42be                             ; $42bb: $30 $01

	rra                                              ; $42bd: $1f

jr_099_42be:
	inc  de                                          ; $42be: $13
	add  c                                           ; $42bf: $81
	rra                                              ; $42c0: $1f
	ld   [bc], a                                     ; $42c1: $02
	rla                                              ; $42c2: $17
	rrca                                             ; $42c3: $0f
	dec  bc                                          ; $42c4: $0b
	add  b                                           ; $42c5: $80
	rrca                                             ; $42c6: $0f
	inc  bc                                          ; $42c7: $03
	rlca                                             ; $42c8: $07
	dec  b                                           ; $42c9: $05
	ld   bc, $8003                                   ; $42ca: $01 $03 $80
	nop                                              ; $42cd: $00
	add  l                                           ; $42ce: $85
	ld   bc, $4302                                   ; $42cf: $01 $02 $43
	inc  a                                           ; $42d2: $3c
	ld   a, [hl]                                     ; $42d3: $7e
	add  b                                           ; $42d4: $80
	rst  $38                                         ; $42d5: $ff
	ld   [bc], a                                     ; $42d6: $02
	ld   a, [hl]                                     ; $42d7: $7e
	rst  $38                                         ; $42d8: $ff
	ld   a, [hl]                                     ; $42d9: $7e
	add  b                                           ; $42da: $80
	rst  $38                                         ; $42db: $ff
	add  b                                           ; $42dc: $80
	rst  $30                                         ; $42dd: $f7
	nop                                              ; $42de: $00
	rst  $28                                         ; $42df: $ef
	add  c                                           ; $42e0: $81
	rst  $30                                         ; $42e1: $f7
	dec  b                                           ; $42e2: $05
	rst  $20                                         ; $42e3: $e7
	rst  $38                                         ; $42e4: $ff
	rst  $10                                         ; $42e5: $d7
	db   $d3                                         ; $42e6: $d3
	ei                                               ; $42e7: $fb
	rst  $38                                         ; $42e8: $ff
	add  b                                           ; $42e9: $80

jr_099_42ea:
	and  $09                                         ; $42ea: $e6 $09
	rst  $38                                         ; $42ec: $ff
	inc  a                                           ; $42ed: $3c
	ld   a, a                                        ; $42ee: $7f
	add  b                                           ; $42ef: $80
	db   $fc                                         ; $42f0: $fc
	ret  nz                                          ; $42f1: $c0

	pop  hl                                          ; $42f2: $e1
	ldh  [$fc], a                                    ; $42f3: $e0 $fc
	ld   [bc], a                                     ; $42f5: $02
	add  b                                           ; $42f6: $80
	inc  bc                                          ; $42f7: $03
	add  b                                           ; $42f8: $80
	ld   bc, $0087                                   ; $42f9: $01 $87 $00
	add  b                                           ; $42fc: $80
	ld   bc, $0780                                   ; $42fd: $01 $80 $07
	add  b                                           ; $4300: $80
	inc  e                                           ; $4301: $1c
	add  b                                           ; $4302: $80
	ld   [hl], e                                     ; $4303: $73
	dec  b                                           ; $4304: $05
	ld   l, [hl]                                     ; $4305: $6e
	ld   c, [hl]                                     ; $4306: $4e
	ld   a, c                                        ; $4307: $79
	ld   a, b                                        ; $4308: $78
	cp   $df                                         ; $4309: $fe $df
	add  c                                           ; $430b: $81

jr_099_430c:
	rst  $38                                         ; $430c: $ff
	add  hl, bc                                      ; $430d: $09
	db   $fd                                         ; $430e: $fd
	db   $fc                                         ; $430f: $fc
	rst  $38                                         ; $4310: $ff
	ld   a, l                                        ; $4311: $7d
	cp   $ba                                         ; $4312: $fe $ba
	cp   $d6                                         ; $4314: $fe $d6
	ld   a, h                                        ; $4316: $7c
	ld   l, h                                        ; $4317: $6c
	add  b                                           ; $4318: $80
	jr   jr_099_431d                                 ; $4319: $18 $02

	db   $10                                         ; $431b: $10
	ld   d, b                                        ; $431c: $50

jr_099_431d:
	ld   b, b                                        ; $431d: $40
	add  b                                           ; $431e: $80
	and  b                                           ; $431f: $a0
	add  b                                           ; $4320: $80
	ld   h, b                                        ; $4321: $60
	ld   d, $c0                                      ; $4322: $16 $c0
	ld   b, h                                        ; $4324: $44
	ld   [$3084], sp                                 ; $4325: $08 $84 $30
	jr   jr_099_42ea                                 ; $4328: $18 $c0

	ldh  [rP1], a                                    ; $432a: $e0 $00
	db   $fc                                         ; $432c: $fc
	nop                                              ; $432d: $00

jr_099_432e:
	ld   a, h                                        ; $432e: $7c
	nop                                              ; $432f: $00
	add  d                                           ; $4330: $82
	db   $fc                                         ; $4331: $fc
	cp   $7c                                         ; $4332: $fe $7c
	cp   $ba                                         ; $4334: $fe $ba
	db   $fc                                         ; $4336: $fc
	call nc, $6878                                   ; $4337: $d4 $78 $68
	add  b                                           ; $433a: $80
	jr   jr_099_433f                                 ; $433b: $18 $02

	db   $10                                         ; $433d: $10
	ld   d, b                                        ; $433e: $50

jr_099_433f:
	ld   b, b                                        ; $433f: $40
	add  b                                           ; $4340: $80
	and  b                                           ; $4341: $a0
	add  b                                           ; $4342: $80
	ld   h, b                                        ; $4343: $60
	ld   d, $c0                                      ; $4344: $16 $c0
	ld   b, h                                        ; $4346: $44
	ld   [$3084], sp                                 ; $4347: $08 $84 $30
	jr   jr_099_430c                                 ; $434a: $18 $c0

	ldh  [rP1], a                                    ; $434c: $e0 $00
	db   $fc                                         ; $434e: $fc
	nop                                              ; $434f: $00

jr_099_4350:
	ld   a, h                                        ; $4350: $7c
	nop                                              ; $4351: $00
	add  d                                           ; $4352: $82
	db   $fc                                         ; $4353: $fc
	cp   $7c                                         ; $4354: $fe $7c
	db   $fc                                         ; $4356: $fc
	cp   b                                           ; $4357: $b8
	ld   hl, sp-$30                                  ; $4358: $f8 $d0
	ld   a, b                                        ; $435a: $78
	ld   l, b                                        ; $435b: $68
	add  b                                           ; $435c: $80
	stop                                             ; $435d: $10 $00
	nop                                              ; $435f: $00
	add  b                                           ; $4360: $80
	ld   b, b                                        ; $4361: $40
	add  b                                           ; $4362: $80
	and  b                                           ; $4363: $a0
	add  b                                           ; $4364: $80
	ld   h, b                                        ; $4365: $60
	ld   d, $c0                                      ; $4366: $16 $c0
	ld   b, h                                        ; $4368: $44
	ld   [$3084], sp                                 ; $4369: $08 $84 $30
	jr   jr_099_432e                                 ; $436c: $18 $c0

	ldh  [rP1], a                                    ; $436e: $e0 $00
	db   $fc                                         ; $4370: $fc
	nop                                              ; $4371: $00
	ld   a, h                                        ; $4372: $7c
	nop                                              ; $4373: $00
	add  d                                           ; $4374: $82
	db   $fc                                         ; $4375: $fc
	cp   $7c                                         ; $4376: $fe $7c
	db   $fc                                         ; $4378: $fc
	cp   b                                           ; $4379: $b8
	db   $fc                                         ; $437a: $fc
	call nc, $6878                                   ; $437b: $d4 $78 $68
	add  b                                           ; $437e: $80
	jr   jr_099_4383                                 ; $437f: $18 $02

	db   $10                                         ; $4381: $10
	ld   d, b                                        ; $4382: $50

jr_099_4383:
	ld   b, b                                        ; $4383: $40
	add  b                                           ; $4384: $80
	and  b                                           ; $4385: $a0
	add  b                                           ; $4386: $80
	ld   h, b                                        ; $4387: $60
	dec  c                                           ; $4388: $0d
	ret  nz                                          ; $4389: $c0

	ld   b, h                                        ; $438a: $44
	ld   [$3084], sp                                 ; $438b: $08 $84 $30
	jr   jr_099_4350                                 ; $438e: $18 $c0

	ldh  [rP1], a                                    ; $4390: $e0 $00
	db   $fc                                         ; $4392: $fc
	nop                                              ; $4393: $00
	ld   a, h                                        ; $4394: $7c
	nop                                              ; $4395: $00
	add  b                                           ; $4396: $80
	sbc  a                                           ; $4397: $9f
	nop                                              ; $4398: $00
	nop                                              ; $4399: $00
	rst  $38                                         ; $439a: $ff
	add  b                                           ; $439b: $80
	nop                                              ; $439c: $00
	add  b                                           ; $439d: $80
	ld   [hl], a                                     ; $439e: $77
	add  b                                           ; $439f: $80
	ld   d, l                                        ; $43a0: $55
	add  b                                           ; $43a1: $80
	halt                                             ; $43a2: $76
	ld   bc, $5545                                   ; $43a3: $01 $45 $55
	add  b                                           ; $43a6: $80
	ld   b, l                                        ; $43a7: $45
	ld   bc, $ef00                                   ; $43a8: $01 $00 $ef
	adc  a                                           ; $43ab: $8f
	nop                                              ; $43ac: $00
	nop                                              ; $43ad: $00
	rst  $38                                         ; $43ae: $ff
	add  b                                           ; $43af: $80
	nop                                              ; $43b0: $00
	add  b                                           ; $43b1: $80
	ld   [hl], a                                     ; $43b2: $77
	add  b                                           ; $43b3: $80
	ld   b, h                                        ; $43b4: $44
	add  b                                           ; $43b5: $80
	ld   [hl], a                                     ; $43b6: $77
	add  b                                           ; $43b7: $80
	ld   b, c                                        ; $43b8: $41
	add  b                                           ; $43b9: $80
	ld   [hl], a                                     ; $43ba: $77
	ld   bc, $ff00                                   ; $43bb: $01 $00 $ff
	adc  a                                           ; $43be: $8f
	nop                                              ; $43bf: $00
	nop                                              ; $43c0: $00
	ld   hl, sp-$80                                  ; $43c1: $f8 $80
	nop                                              ; $43c3: $00
	add  b                                           ; $43c4: $80
	ld   [hl], b                                     ; $43c5: $70
	add  b                                           ; $43c6: $80
	ld   b, b                                        ; $43c7: $40
	add  b                                           ; $43c8: $80
	ld   [hl], b                                     ; $43c9: $70
	add  b                                           ; $43ca: $80
	db   $10                                         ; $43cb: $10
	add  b                                           ; $43cc: $80
	ld   [hl], b                                     ; $43cd: $70
	ld   bc, $f800                                   ; $43ce: $01 $00 $f8
	adc  a                                           ; $43d1: $8f
	nop                                              ; $43d2: $00
	nop                                              ; $43d3: $00
	rst  $38                                         ; $43d4: $ff
	add  b                                           ; $43d5: $80
	nop                                              ; $43d6: $00
	add  b                                           ; $43d7: $80
	ld   [hl], a                                     ; $43d8: $77
	add  b                                           ; $43d9: $80
	ld   b, d                                        ; $43da: $42
	add  b                                           ; $43db: $80
	ld   [hl], d                                     ; $43dc: $72
	add  b                                           ; $43dd: $80
	ld   [de], a                                     ; $43de: $12
	add  b                                           ; $43df: $80
	ld   [hl], d                                     ; $43e0: $72
	ld   bc, $ff00                                   ; $43e1: $01 $00 $ff
	adc  a                                           ; $43e4: $8f
	nop                                              ; $43e5: $00
	nop                                              ; $43e6: $00
	rst  $38                                         ; $43e7: $ff
	add  b                                           ; $43e8: $80
	nop                                              ; $43e9: $00
	add  b                                           ; $43ea: $80
	ld   [hl], a                                     ; $43eb: $77
	add  b                                           ; $43ec: $80
	ld   d, l                                        ; $43ed: $55
	add  b                                           ; $43ee: $80
	halt                                             ; $43ef: $76
	add  d                                           ; $43f0: $82
	ld   d, l                                        ; $43f1: $55
	ld   bc, $ff00                                   ; $43f2: $01 $00 $ff
	adc  a                                           ; $43f5: $8f
	nop                                              ; $43f6: $00
	nop                                              ; $43f7: $00
	ld   hl, sp-$80                                  ; $43f8: $f8 $80
	nop                                              ; $43fa: $00
	add  b                                           ; $43fb: $80
	ld   [hl], b                                     ; $43fc: $70
	ld   bc, $2820                                   ; $43fd: $01 $20 $28
	add  h                                           ; $4400: $84
	jr   nz, jr_099_4404                             ; $4401: $20 $01

	nop                                              ; $4403: $00

jr_099_4404:
	ldh  a, [$97]                                    ; $4404: $f0 $97
	nop                                              ; $4406: $00
	add  hl, bc                                      ; $4407: $09
	db   $fc                                         ; $4408: $fc
	nop                                              ; $4409: $00
	cp   $0c                                         ; $440a: $fe $0c
	halt                                             ; $440c: $76
	ld   b, $c2                                      ; $440d: $06 $c2
	ld   h, d                                        ; $440f: $62
	and  [hl]                                        ; $4410: $a6
	ld   b, b                                        ; $4411: $40
	add  b                                           ; $4412: $80
	ld   e, b                                        ; $4413: $58
	ld   [bc], a                                     ; $4414: $02
	nop                                              ; $4415: $00
	ld   b, b                                        ; $4416: $40
	ld   a, b                                        ; $4417: $78
	adc  a                                           ; $4418: $8f
	nop                                              ; $4419: $00
	add  hl, bc                                      ; $441a: $09
	ccf                                              ; $441b: $3f
	nop                                              ; $441c: $00
	ld   a, a                                        ; $441d: $7f
	jr   nc, @+$70                                   ; $441e: $30 $6e

	ld   h, b                                        ; $4420: $60
	ld   b, e                                        ; $4421: $43
	ld   d, d                                        ; $4422: $52
	ld   [hl], c                                     ; $4423: $71
	ld   [bc], a                                     ; $4424: $02
	add  b                                           ; $4425: $80
	ld   c, $02                                      ; $4426: $0e $02
	nop                                              ; $4428: $00
	ld   [bc], a                                     ; $4429: $02
	ld   e, $85                                      ; $442a: $1e $85
	nop                                              ; $442c: $00
	ld   a, [bc]                                     ; $442d: $0a
	ld   a, $41                                      ; $442e: $3e $41
	nop                                              ; $4430: $00
	ccf                                              ; $4431: $3f
	ld   a, [hl]                                     ; $4432: $7e
	ld   b, c                                        ; $4433: $41
	ldh  [$7e], a                                    ; $4434: $e0 $7e
	sbc  a                                           ; $4436: $9f
	ld   bc, $937f                                   ; $4437: $01 $7f $93
	nop                                              ; $443a: $00
	ld   bc, $0008                                   ; $443b: $01 $08 $00
	add  b                                           ; $443e: $80
	add  b                                           ; $443f: $80
	nop                                              ; $4440: $00
	rst  $30                                         ; $4441: $f7
	add  b                                           ; $4442: $80
	push bc                                          ; $4443: $c5
	inc  bc                                          ; $4444: $03
	and  e                                           ; $4445: $a3
	or   d                                           ; $4446: $b2
	sub  l                                           ; $4447: $95
	ld   a, e                                        ; $4448: $7b
	sub  a                                           ; $4449: $97
	nop                                              ; $444a: $00
	nop                                              ; $444b: $00
	rst  $38                                         ; $444c: $ff
	add  b                                           ; $444d: $80
	ld   d, l                                        ; $444e: $55
	inc  bc                                          ; $444f: $03
	ld   d, d                                        ; $4450: $52
	ret  nz                                          ; $4451: $c0

	sub  h                                           ; $4452: $94
	ld   sp, hl                                      ; $4453: $f9
	sub  e                                           ; $4454: $93
	nop                                              ; $4455: $00
	ld   a, [bc]                                     ; $4456: $0a
	inc  d                                           ; $4457: $14
	inc  c                                           ; $4458: $0c
	ld   h, $1a                                      ; $4459: $26 $1a
	jp   $0025                                       ; $445b: $c3 $25 $00


	add  c                                           ; $445e: $81
	add  d                                           ; $445f: $82
	ld   [bc], a                                     ; $4460: $02
	jp   $0093                                       ; $4461: $c3 $93 $00


	ld   bc, $d040                                   ; $4464: $01 $40 $d0
	add  b                                           ; $4467: $80
	ld   b, b                                        ; $4468: $40
	ld   b, $e7                                      ; $4469: $06 $e7
	and  h                                           ; $446b: $a4
	inc  l                                           ; $446c: $2c
	xor  d                                           ; $446d: $aa
	dec  sp                                          ; $446e: $3b
	ld   e, c                                        ; $446f: $59
	scf                                              ; $4470: $37
	sub  a                                           ; $4471: $97
	nop                                              ; $4472: $00
	ld   b, $de                                      ; $4473: $06 $de
	and  d                                           ; $4475: $a2
	add  b                                           ; $4476: $80
	sub  h                                           ; $4477: $94
	sub  [hl]                                        ; $4478: $96
	or   d                                           ; $4479: $b2
	ld   c, h                                        ; $447a: $4c
	and  b                                           ; $447b: $a0
	nop                                              ; $447c: $00
	add  h                                           ; $447d: $84
	ld   bc, $8784                                   ; $447e: $01 $84 $87
	sub  d                                           ; $4481: $92
	nop                                              ; $4482: $00
	add  h                                           ; $4483: $84
	add  b                                           ; $4484: $80
	add  h                                           ; $4485: $84
	ldh  [$8f], a                                    ; $4486: $e0 $8f
	nop                                              ; $4488: $00
	inc  bc                                          ; $4489: $03
	db   $fc                                         ; $448a: $fc
	nop                                              ; $448b: $00
	ld   a, [$8108]                                  ; $448c: $fa $08 $81
	ld   c, $07                                      ; $448f: $0e $07
	ld   b, $fa                                      ; $4491: $06 $fa
	nop                                              ; $4493: $00
	sbc  h                                           ; $4494: $9c
	ld   e, b                                        ; $4495: $58
	nop                                              ; $4496: $00
	ld   b, b                                        ; $4497: $40
	ld   a, b                                        ; $4498: $78
	adc  a                                           ; $4499: $8f
	nop                                              ; $449a: $00
	inc  b                                           ; $449b: $04
	ccf                                              ; $449c: $3f
	nop                                              ; $449d: $00
	ld   e, a                                        ; $449e: $5f
	db   $10                                         ; $449f: $10
	ld   [hl], b                                     ; $44a0: $70
	add  b                                           ; $44a1: $80
	ld   [hl], e                                     ; $44a2: $73
	rlca                                             ; $44a3: $07
	ld   h, e                                        ; $44a4: $63
	ld   e, h                                        ; $44a5: $5c
	nop                                              ; $44a6: $00
	dec  l                                           ; $44a7: $2d
	rrca                                             ; $44a8: $0f
	ld   bc, $1f03                                   ; $44a9: $01 $03 $1f
	sub  d                                           ; $44ac: $92
	nop                                              ; $44ad: $00
	add  d                                           ; $44ae: $82
	ld   bc, $f980                                   ; $44af: $01 $80 $f9
	add  b                                           ; $44b2: $80
	inc  bc                                          ; $44b3: $03
	add  d                                           ; $44b4: $82
	add  a                                           ; $44b5: $87
	sub  d                                           ; $44b6: $92
	nop                                              ; $44b7: $00
	add  b                                           ; $44b8: $80
	add  b                                           ; $44b9: $80
	add  b                                           ; $44ba: $80
	adc  h                                           ; $44bb: $8c
	add  b                                           ; $44bc: $80
	sbc  h                                           ; $44bd: $9c
	add  b                                           ; $44be: $80
	ret  nz                                          ; $44bf: $c0

	add  d                                           ; $44c0: $82
	ldh  [$85], a                                    ; $44c1: $e0 $85
	nop                                              ; $44c3: $00
	ld   [bc], a                                     ; $44c4: $02
	ld   b, b                                        ; $44c5: $40
	nop                                              ; $44c6: $00
	ld   b, b                                        ; $44c7: $40
	add  a                                           ; $44c8: $87
	nop                                              ; $44c9: $00
	add  b                                           ; $44ca: $80
	add  b                                           ; $44cb: $80
	add  b                                           ; $44cc: $80
	nop                                              ; $44cd: $00
	add  b                                           ; $44ce: $80
	add  b                                           ; $44cf: $80
	add  d                                           ; $44d0: $82
	nop                                              ; $44d1: $00
	nop                                              ; $44d2: $00
	inc  b                                           ; $44d3: $04
	add  c                                           ; $44d4: $81
	nop                                              ; $44d5: $00
	ld   b, $0e                                      ; $44d6: $06 $0e
	nop                                              ; $44d8: $00
	ld   d, $00                                      ; $44d9: $16 $00
	inc  d                                           ; $44db: $14
	nop                                              ; $44dc: $00
	inc  d                                           ; $44dd: $14
	add  c                                           ; $44de: $81
	ldh  [rAUD1HIGH], a                              ; $44df: $e0 $14
	ret  nc                                          ; $44e1: $d0

	ret  nz                                          ; $44e2: $c0

	pop  hl                                          ; $44e3: $e1
	nop                                              ; $44e4: $00
	inc  d                                           ; $44e5: $14
	ldh  [$61], a                                    ; $44e6: $e0 $61
	ldh  [$78], a                                    ; $44e8: $e0 $78
	ldh  [$f0], a                                    ; $44ea: $e0 $f0
	ret  nz                                          ; $44ec: $c0

	ldh  [$c0], a                                    ; $44ed: $e0 $c0
	sub  b                                           ; $44ef: $90
	add  b                                           ; $44f0: $80
	ld   h, b                                        ; $44f1: $60
	nop                                              ; $44f2: $00
	add  b                                           ; $44f3: $80
	nop                                              ; $44f4: $00
	add  b                                           ; $44f5: $80
	add  c                                           ; $44f6: $81
	nop                                              ; $44f7: $00
	nop                                              ; $44f8: $00
	add  b                                           ; $44f9: $80
	add  c                                           ; $44fa: $81
	nop                                              ; $44fb: $00
	ld   [bc], a                                     ; $44fc: $02
	ld   b, d                                        ; $44fd: $42
	inc  a                                           ; $44fe: $3c
	ld   a, [hl]                                     ; $44ff: $7e
	add  b                                           ; $4500: $80
	rst  $38                                         ; $4501: $ff
	ld   [bc], a                                     ; $4502: $02
	ld   a, [hl]                                     ; $4503: $7e
	rst  $38                                         ; $4504: $ff
	ld   a, [hl]                                     ; $4505: $7e
	add  b                                           ; $4506: $80
	rst  $38                                         ; $4507: $ff
	add  b                                           ; $4508: $80
	rst  $30                                         ; $4509: $f7
	nop                                              ; $450a: $00
	rst  $28                                         ; $450b: $ef
	add  c                                           ; $450c: $81
	rst  $30                                         ; $450d: $f7
	dec  b                                           ; $450e: $05
	rst  $20                                         ; $450f: $e7
	rst  $38                                         ; $4510: $ff
	rst  $10                                         ; $4511: $d7
	db   $d3                                         ; $4512: $d3
	ei                                               ; $4513: $fb
	rst  $38                                         ; $4514: $ff
	add  b                                           ; $4515: $80
	and  $05                                         ; $4516: $e6 $05
	rst  $38                                         ; $4518: $ff
	inc  a                                           ; $4519: $3c
	ld   a, a                                        ; $451a: $7f
	add  b                                           ; $451b: $80
	db   $fc                                         ; $451c: $fc
	ret  nz                                          ; $451d: $c0

	add  b                                           ; $451e: $80
	ldh  [rP1], a                                    ; $451f: $e0 $00
	rst  $38                                         ; $4521: $ff
	sbc  l                                           ; $4522: $9d
	nop                                              ; $4523: $00
	db   $fc                                         ; $4524: $fc
	nop                                              ; $4525: $00
	add  hl, de                                      ; $4526: $19
	inc  bc                                          ; $4527: $03
	nop                                              ; $4528: $00
	rrca                                             ; $4529: $0f
	inc  bc                                          ; $452a: $03
	rra                                              ; $452b: $1f
	rrca                                             ; $452c: $0f
	ccf                                              ; $452d: $3f
	rra                                              ; $452e: $1f
	ld   a, h                                        ; $452f: $7c
	inc  a                                           ; $4530: $3c
	inc  de                                          ; $4531: $13
	inc  sp                                          ; $4532: $33
	add  l                                           ; $4533: $85
	ld   h, a                                        ; $4534: $67
	ld   b, c                                        ; $4535: $41
	ld   c, a                                        ; $4536: $4f
	ld   c, e                                        ; $4537: $4b

jr_099_4538:
	sbc  a                                           ; $4538: $9f
	or   c                                           ; $4539: $b1
	dec  sp                                          ; $453a: $3b
	ld   [bc], a                                     ; $453b: $02
	scf                                              ; $453c: $37
	ld   b, d                                        ; $453d: $42
	ld   l, a                                        ; $453e: $6f
	ld   b, h                                        ; $453f: $44
	ld   c, [hl]                                     ; $4540: $4e
	add  b                                           ; $4541: $80
	sbc  $80                                         ; $4542: $de $80
	sbc  l                                           ; $4544: $9d
	add  b                                           ; $4545: $80
	cp   l                                           ; $4546: $bd
	nop                                              ; $4547: $00
	cp   $85                                         ; $4548: $fe $85
	nop                                              ; $454a: $00
	nop                                              ; $454b: $00
	ld   [bc], a                                     ; $454c: $02
	sub  l                                           ; $454d: $95
	nop                                              ; $454e: $00
	nop                                              ; $454f: $00
	ld   [bc], a                                     ; $4550: $02
	add  e                                           ; $4551: $83
	nop                                              ; $4552: $00
	nop                                              ; $4553: $00
	ld   bc, $0081                                   ; $4554: $01 $81 $00
	ld   [bc], a                                     ; $4557: $02
	ld   bc, $0300                                   ; $4558: $01 $00 $03
	add  c                                           ; $455b: $81
	ld   bc, $0008                                   ; $455c: $01 $08 $00
	ld   bc, $010d                                   ; $455f: $01 $0d $01
	inc  e                                           ; $4562: $1c
	dec  c                                           ; $4563: $0d
	dec  [hl]                                        ; $4564: $35
	dec  e                                           ; $4565: $1d
	inc  b                                           ; $4566: $04
	add  c                                           ; $4567: $81
	inc  e                                           ; $4568: $1c
	rlca                                             ; $4569: $07
	dec  c                                           ; $456a: $0d
	dec  e                                           ; $456b: $1d
	reti                                             ; $456c: $d9


	add  hl, de                                      ; $456d: $19
	push bc                                          ; $456e: $c5
	call nz, $9495                                   ; $456f: $c4 $95 $94
	add  b                                           ; $4572: $80
	or   h                                           ; $4573: $b4
	ld   b, $b5                                      ; $4574: $06 $b5
	or   h                                           ; $4576: $b4
	ld   [bc], a                                     ; $4577: $02
	nop                                              ; $4578: $00
	add  hl, de                                      ; $4579: $19
	nop                                              ; $457a: $00
	call nz, $c081                                   ; $457b: $c4 $81 $c0
	ld   b, c                                        ; $457e: $41
	and  b                                           ; $457f: $a0
	add  b                                           ; $4580: $80
	ld   b, d                                        ; $4581: $42
	nop                                              ; $4582: $00
	adc  h                                           ; $4583: $8c
	nop                                              ; $4584: $00
	ld   a, h                                        ; $4585: $7c
	nop                                              ; $4586: $00
	ldh  a, [c]                                      ; $4587: $f2
	nop                                              ; $4588: $00
	add  b                                           ; $4589: $80
	nop                                              ; $458a: $00
	ld   [bc], a                                     ; $458b: $02
	nop                                              ; $458c: $00
	inc  b                                           ; $458d: $04
	inc  bc                                          ; $458e: $03
	ld   h, h                                        ; $458f: $64
	rst  $38                                         ; $4590: $ff
	cpl                                              ; $4591: $2f
	rst  $38                                         ; $4592: $ff
	adc  a                                           ; $4593: $8f
	ld   a, a                                        ; $4594: $7f
	reti                                             ; $4595: $d9


	ccf                                              ; $4596: $3f
	cpl                                              ; $4597: $2f
	rrca                                             ; $4598: $0f
	add  l                                           ; $4599: $85
	inc  sp                                          ; $459a: $33
	or   b                                           ; $459b: $b0
	call nz, $3b74                                   ; $459c: $c4 $74 $3b
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $459f: $cf
	ld   bc, $003f                                   ; $45a0: $01 $3f $00
	ld   a, [bc]                                     ; $45a3: $0a
	ld   bc, $01b1                                   ; $45a4: $01 $b1 $01
	ld   a, l                                        ; $45a7: $7d
	nop                                              ; $45a8: $00
	ld   e, e                                        ; $45a9: $5b
	jr   jr_099_4538                                 ; $45aa: $18 $8c

	inc  b                                           ; $45ac: $04
	rrca                                             ; $45ad: $0f
	ld   bc, $0086                                   ; $45ae: $01 $86 $00
	ret  nz                                          ; $45b1: $c0

	add  b                                           ; $45b2: $80
	ldh  [$c0], a                                    ; $45b3: $e0 $c0
	ld   [hl], b                                     ; $45b5: $70
	ldh  [$b8], a                                    ; $45b6: $e0 $b8
	ldh  a, [$dc]                                    ; $45b8: $f0 $dc
	ld   hl, sp-$48                                  ; $45ba: $f8 $b8
	ld   hl, sp+$4e                                  ; $45bc: $f8 $4e
	db   $fc                                         ; $45be: $fc
	db   $ec                                         ; $45bf: $ec
	db   $fc                                         ; $45c0: $fc
	add  b                                           ; $45c1: $80
	ld   a, h                                        ; $45c2: $7c
	ld   bc, $3e3f                                   ; $45c3: $01 $3f $3e
	add  b                                           ; $45c6: $80
	sbc  [hl]                                        ; $45c7: $9e
	add  b                                           ; $45c8: $80
	sbc  d                                           ; $45c9: $9a
	add  b                                           ; $45ca: $80
	jp   z, $cc80                                    ; $45cb: $ca $80 $cc

	add  d                                           ; $45ce: $82
	db   $e4                                         ; $45cf: $e4
	add  d                                           ; $45d0: $82
	ld   h, d                                        ; $45d1: $62
	ld   bc, $626a                                   ; $45d2: $01 $6a $62
	add  h                                           ; $45d5: $84
	ld   [hl+], a                                    ; $45d6: $22
	add  b                                           ; $45d7: $80
	jr   nz, jr_099_45da                             ; $45d8: $20 $00

jr_099_45da:
	ld   de, $0081                                   ; $45da: $11 $81 $00
	ld   [$0022], sp                                 ; $45dd: $08 $22 $00
	ld   [$4400], sp                                 ; $45e0: $08 $00 $44
	nop                                              ; $45e3: $00
	sbc  b                                           ; $45e4: $98
	nop                                              ; $45e5: $00
	db   $10                                         ; $45e6: $10
	add  c                                           ; $45e7: $81
	nop                                              ; $45e8: $00
	rlca                                             ; $45e9: $07
	db   $f4                                         ; $45ea: $f4
	ret  z                                           ; $45eb: $c8

	jp   z, $c1c8                                    ; $45ec: $ca $c8 $c1

	add  b                                           ; $45ef: $80
	add  d                                           ; $45f0: $82
	ld   [bc], a                                     ; $45f1: $02
	add  b                                           ; $45f2: $80
	rst  $20                                         ; $45f3: $e7
	add  b                                           ; $45f4: $80
	rst  $30                                         ; $45f5: $f7
	add  b                                           ; $45f6: $80
	inc  hl                                          ; $45f7: $23
	inc  bc                                          ; $45f8: $03
	add  b                                           ; $45f9: $80
	nop                                              ; $45fa: $00
	ld   e, h                                        ; $45fb: $5c
	inc  e                                           ; $45fc: $1c
	add  b                                           ; $45fd: $80
	ld   e, $04                                      ; $45fe: $1e $04
	xor  b                                           ; $4600: $a8
	add  hl, bc                                      ; $4601: $09
	pop  hl                                          ; $4602: $e1
	rlca                                             ; $4603: $07
	add  a                                           ; $4604: $87
	add  b                                           ; $4605: $80

Jump_099_4606:
	inc  a                                           ; $4606: $3c
	dec  b                                           ; $4607: $05
	ldh  [$e6], a                                    ; $4608: $e0 $e6
	nop                                              ; $460a: $00
	dec  sp                                          ; $460b: $3b
	nop                                              ; $460c: $00
	jp   nz, $0081                                   ; $460d: $c2 $81 $00

	ld   [de], a                                     ; $4610: $12
	ld   bc, $0700                                   ; $4611: $01 $00 $07
	ld   bc, $05cd                                   ; $4614: $01 $cd $05
	inc  h                                           ; $4617: $24
	dec  b                                           ; $4618: $05
	ld   de, $3c04                                   ; $4619: $11 $04 $3c
	jr   c, jr_099_4684                              ; $461c: $38 $66

	nop                                              ; $461e: $00
	ld   e, $04                                      ; $461f: $1e $04
	db   $fc                                         ; $4621: $fc
	ld   b, b                                        ; $4622: $40
	ret  nz                                          ; $4623: $c0

	add  b                                           ; $4624: $80
	ld   [bc], a                                     ; $4625: $02
	rlca                                             ; $4626: $07
	ld   a, $ff                                      ; $4627: $3e $ff
	inc  a                                           ; $4629: $3c
	ld   a, [hl]                                     ; $462a: $7e
	ld   a, b                                        ; $462b: $78
	db   $fc                                         ; $462c: $fc
	ldh  [rAUD2LOW], a                               ; $462d: $e0 $18
	add  c                                           ; $462f: $81
	nop                                              ; $4630: $00
	ld   b, $80                                      ; $4631: $06 $80
	nop                                              ; $4633: $00
	ld   b, b                                        ; $4634: $40
	nop                                              ; $4635: $00
	ld   h, b                                        ; $4636: $60
	ld   b, b                                        ; $4637: $40
	nop                                              ; $4638: $00
	add  c                                           ; $4639: $81
	ld   b, b                                        ; $463a: $40
	ld   [bc], a                                     ; $463b: $02
	ldh  a, [hScriptOpcodeParams]                                    ; $463c: $f0 $a0
	add  b                                           ; $463e: $80
	add  e                                           ; $463f: $83
	and  b                                           ; $4640: $a0
	nop                                              ; $4641: $00
	ldh  [$81], a                                    ; $4642: $e0 $81
	ret  nz                                          ; $4644: $c0

	inc  bc                                          ; $4645: $03
	ret  z                                           ; $4646: $c8

	ret  nz                                          ; $4647: $c0

	call nc, $80d0                                   ; $4648: $d4 $d0 $80
	sub  b                                           ; $464b: $90
	ld   [bc], a                                     ; $464c: $02
	inc  c                                           ; $464d: $0c
	rst  JumpTable                                         ; $464e: $df
	adc  $80                                         ; $464f: $ce $80
	rst  JumpTable                                         ; $4651: $df
	dec  b                                           ; $4652: $05
	sbc  $bc                                         ; $4653: $de $bc
	db   $fc                                         ; $4655: $fc
	db   $fd                                         ; $4656: $fd
	db   $fc                                         ; $4657: $fc
	ld   a, h                                        ; $4658: $7c
	add  e                                           ; $4659: $83
	db   $fc                                         ; $465a: $fc
	ld   bc, $02fd                                   ; $465b: $01 $fd $02
	add  e                                           ; $465e: $83
	add  b                                           ; $465f: $80
	add  b                                           ; $4660: $80
	nop                                              ; $4661: $00
	nop                                              ; $4662: $00
	ld   bc, $0082                                   ; $4663: $01 $82 $00
	add  b                                           ; $4666: $80
	ld   b, b                                        ; $4667: $40
	ld   c, $64                                      ; $4668: $0e $64
	jr   jr_099_46bf                                 ; $466a: $18 $53

	ld   d, b                                        ; $466c: $50
	ldh  [$e2], a                                    ; $466d: $e0 $e2
	ldh  a, [c]                                      ; $466f: $f2
	push af                                          ; $4670: $f5
	dec  b                                           ; $4671: $05
	ld   a, [bc]                                     ; $4672: $0a
	ld   [$1505], a                                  ; $4673: $ea $05 $15
	ld   [bc], a                                     ; $4676: $02
	ld   a, [bc]                                     ; $4677: $0a
	add  a                                           ; $4678: $87
	nop                                              ; $4679: $00
	ld   bc, $0185                                   ; $467a: $01 $85 $01
	add  d                                           ; $467d: $82
	nop                                              ; $467e: $00
	ld   [bc], a                                     ; $467f: $02
	ld   b, d                                        ; $4680: $42
	add  b                                           ; $4681: $80
	ld   b, c                                        ; $4682: $41
	add  c                                           ; $4683: $81

jr_099_4684:
	nop                                              ; $4684: $00
	rla                                              ; $4685: $17
	add  b                                           ; $4686: $80
	nop                                              ; $4687: $00
	ld   a, h                                        ; $4688: $7c
	nop                                              ; $4689: $00
	rra                                              ; $468a: $1f
	sbc  h                                           ; $468b: $9c
	adc  a                                           ; $468c: $8f
	rrca                                             ; $468d: $0f
	ld   a, l                                        ; $468e: $7d
	ld   a, a                                        ; $468f: $7f
	inc  [hl]                                        ; $4690: $34
	ccf                                              ; $4691: $3f
	jr   nc, jr_099_46d3                             ; $4692: $30 $3f

	ld   e, d                                        ; $4694: $5a
	ld   e, a                                        ; $4695: $5f
	ld   b, e                                        ; $4696: $43
	ld   c, a                                        ; $4697: $4f
	inc  l                                           ; $4698: $2c
	daa                                              ; $4699: $27
	dec  [hl]                                        ; $469a: $35
	inc  sp                                          ; $469b: $33
	sbc  d                                           ; $469c: $9a
	sbc  b                                           ; $469d: $98
	add  b                                           ; $469e: $80
	call c, Call_099_4e80                            ; $469f: $dc $80 $4e
	nop                                              ; $46a2: $00
	rst  $38                                         ; $46a3: $ff
	add  l                                           ; $46a4: $85
	nop                                              ; $46a5: $00
	ld   de, $0080                                   ; $46a6: $11 $80 $00
	ldh  [$80], a                                    ; $46a9: $e0 $80
	ld   hl, sp-$20                                  ; $46ab: $f8 $e0
	inc  [hl]                                        ; $46ad: $34
	or   b                                           ; $46ae: $b0
	ld   a, [bc]                                     ; $46af: $0a
	ret  z                                           ; $46b0: $c8

	and  l                                           ; $46b1: $a5
	db   $e4                                         ; $46b2: $e4
	ld   [hl], b                                     ; $46b3: $70
	ldh  a, [$38]                                    ; $46b4: $f0 $38
	ld   hl, sp-$44                                  ; $46b6: $f8 $bc
	db   $fc                                         ; $46b8: $fc
	add  b                                           ; $46b9: $80
	sbc  $01                                         ; $46ba: $de $01
	ld   l, l                                        ; $46bc: $6d
	ld   l, h                                        ; $46bd: $6c
	add  b                                           ; $46be: $80

jr_099_46bf:
	inc  d                                           ; $46bf: $14
	nop                                              ; $46c0: $00
	rst  $38                                         ; $46c1: $ff
	add  c                                           ; $46c2: $81
	cp   $80                                         ; $46c3: $fe $80
	ld   a, $01                                      ; $46c5: $3e $01
	inc  c                                           ; $46c7: $0c
	dec  c                                           ; $46c8: $0d
	add  b                                           ; $46c9: $80
	dec  e                                           ; $46ca: $1d
	nop                                              ; $46cb: $00
	ld   sp, hl                                      ; $46cc: $f9
	add  e                                           ; $46cd: $83
	ei                                               ; $46ce: $fb
	nop                                              ; $46cf: $00
	rst  $30                                         ; $46d0: $f7
	add  c                                           ; $46d1: $81
	pop  af                                          ; $46d2: $f1

jr_099_46d3:
	nop                                              ; $46d3: $00
	di                                               ; $46d4: $f3
	add  c                                           ; $46d5: $81
	ldh  a, [rP1]                                    ; $46d6: $f0 $00
	jp   hl                                          ; $46d8: $e9


	add  e                                           ; $46d9: $83
	ldh  [rSC], a                                    ; $46da: $e0 $02
	ld   hl, sp-$10                                  ; $46dc: $f8 $f0
	jr   c, @-$73                                    ; $46de: $38 $8b

	ld   b, b                                        ; $46e0: $40
	add  c                                           ; $46e1: $81
	ld   h, b                                        ; $46e2: $60
	add  c                                           ; $46e3: $81
	cp   a                                           ; $46e4: $bf
	db   $10                                         ; $46e5: $10
	xor  a                                           ; $46e6: $af
	cp   a                                           ; $46e7: $bf
	or   e                                           ; $46e8: $b3
	rst  $38                                         ; $46e9: $ff
	db   $fd                                         ; $46ea: $fd
	ld   a, a                                        ; $46eb: $7f
	rst  $38                                         ; $46ec: $ff
	ccf                                              ; $46ed: $3f
	ld   e, [hl]                                     ; $46ee: $5e
	rrca                                             ; $46ef: $0f
	rra                                              ; $46f0: $1f
	nop                                              ; $46f1: $00
	ld   c, [hl]                                     ; $46f2: $4e
	add  b                                           ; $46f3: $80
	add  c                                           ; $46f4: $81
	add  b                                           ; $46f5: $80
	ldh  [$83], a                                    ; $46f6: $e0 $83
	ret  nz                                          ; $46f8: $c0

	nop                                              ; $46f9: $00
	ldh  a, [$87]                                    ; $46fa: $f0 $87
	ldh  [rP1], a                                    ; $46fc: $e0 $00
	ret  nc                                          ; $46fe: $d0

	add  e                                           ; $46ff: $83
	ret  nz                                          ; $4700: $c0

	rlca                                             ; $4701: $07
	add  b                                           ; $4702: $80
	ret  nz                                          ; $4703: $c0

	ld   h, b                                        ; $4704: $60
	add  b                                           ; $4705: $80
	ret  nz                                          ; $4706: $c0

	nop                                              ; $4707: $00
	jr   @+$69                                       ; $4708: $18 $67

	add  b                                           ; $470a: $80
	inc  sp                                          ; $470b: $33
	add  b                                           ; $470c: $80
	add  hl, de                                      ; $470d: $19
	ld   [$0c8c], sp                                 ; $470e: $08 $8c $0c
	ld   b, [hl]                                     ; $4711: $46
	ld   b, $20                                      ; $4712: $06 $20
	nop                                              ; $4714: $00
	ld   de, $0e00                                   ; $4715: $11 $00 $0e
	adc  a                                           ; $4718: $8f
	nop                                              ; $4719: $00
	inc  c                                           ; $471a: $0c
	db   $f4                                         ; $471b: $f4
	ld   [$8084], sp                                 ; $471c: $08 $84 $80
	ret  z                                           ; $471f: $c8

	ret  nz                                          ; $4720: $c0

	sub  b                                           ; $4721: $90
	add  b                                           ; $4722: $80
	jr   nz, jr_099_4725                             ; $4723: $20 $00

jr_099_4725:
	ld   b, b                                        ; $4725: $40
	nop                                              ; $4726: $00
	add  b                                           ; $4727: $80
	sub  c                                           ; $4728: $91

jr_099_4729:
	nop                                              ; $4729: $00

jr_099_472a:
	inc  d                                           ; $472a: $14
	ldh  [rP1], a                                    ; $472b: $e0 $00
	ret  nz                                          ; $472d: $c0

	nop                                              ; $472e: $00
	ld   h, b                                        ; $472f: $60
	nop                                              ; $4730: $00
	sbc  h                                           ; $4731: $9c
	nop                                              ; $4732: $00
	ld   a, $00                                      ; $4733: $3e $00
	inc  hl                                          ; $4735: $23
	nop                                              ; $4736: $00
	add  hl, de                                      ; $4737: $19
	nop                                              ; $4738: $00
	ld   a, $00                                      ; $4739: $3e $00
	add  hl, de                                      ; $473b: $19
	ld   e, $82                                      ; $473c: $1e $82
	rra                                              ; $473e: $1f
	ld   e, l                                        ; $473f: $5d
	add  b                                           ; $4740: $80
	rra                                              ; $4741: $1f
	add  c                                           ; $4742: $81
	ld   e, $00                                      ; $4743: $1e $00
	ld   e, l                                        ; $4745: $5d
	add  c                                           ; $4746: $81
	dec  a                                           ; $4747: $3d
	nop                                              ; $4748: $00
	dec  de                                          ; $4749: $1b
	add  c                                           ; $474a: $81
	dec  sp                                          ; $474b: $3b
	add  d                                           ; $474c: $82
	scf                                              ; $474d: $37
	inc  b                                           ; $474e: $04
	ld   l, $2f                                      ; $474f: $2e $2f
	xor  a                                           ; $4751: $af
	ld   l, a                                        ; $4752: $6f
	ld   e, l                                        ; $4753: $5d
	add  c                                           ; $4754: $81
	ld   e, a                                        ; $4755: $5f
	ld   [bc], a                                     ; $4756: $02
	ld   e, e                                        ; $4757: $5b
	ld   e, a                                        ; $4758: $5f
	ld   [hl], a                                     ; $4759: $77
	add  l                                           ; $475a: $85
	ccf                                              ; $475b: $3f
	dec  bc                                          ; $475c: $0b
	scf                                              ; $475d: $37
	ld   a, a                                        ; $475e: $7f
	rst  JumpTable                                         ; $475f: $df
	ccf                                              ; $4760: $3f
	cpl                                              ; $4761: $2f
	ccf                                              ; $4762: $3f
	ld   [hl], a                                     ; $4763: $77
	rra                                              ; $4764: $1f
	rst  JumpTable                                         ; $4765: $df
	cp   $ff                                         ; $4766: $fe $ff
	db   $fd                                         ; $4768: $fd
	add  e                                           ; $4769: $83
	db   $fc                                         ; $476a: $fc
	add  [hl]                                        ; $476b: $86
	ld   hl, sp-$7b                                  ; $476c: $f8 $85
	ldh  a, [rP1]                                    ; $476e: $f0 $00
	ld   hl, sp-$7f                                  ; $4770: $f8 $81
	ldh  [rTMA], a                                   ; $4772: $e0 $06
	db   $f4                                         ; $4774: $f4
	ret  nz                                          ; $4775: $c0

	ldh  [$80], a                                    ; $4776: $e0 $80
	ld   b, d                                        ; $4778: $42
	nop                                              ; $4779: $00
	inc  bc                                          ; $477a: $03
	add  c                                           ; $477b: $81
	ld   bc, $0d02                                   ; $477c: $01 $02 $0d

jr_099_477f:
	ld   bc, $811d                                   ; $477f: $01 $1d $81
	dec  c                                           ; $4782: $0d
	ld   bc, Func_1d3d                                   ; $4783: $01 $3d $1d
	add  d                                           ; $4786: $82
	inc  e                                           ; $4787: $1c
	inc  b                                           ; $4788: $04
	ld   c, c                                        ; $4789: $49
	add  hl, bc                                      ; $478a: $09
	add  c                                           ; $478b: $81
	ld   hl, $8020                                   ; $478c: $21 $20 $80
	ld   d, b                                        ; $478f: $50
	ld   b, $a8                                      ; $4790: $06 $a8
	xor  c                                           ; $4792: $a9
	ld   d, b                                        ; $4793: $50
	ld   d, [hl]                                     ; $4794: $56
	jr   nz, jr_099_477f                             ; $4795: $20 $e8

	ret  nz                                          ; $4797: $c0

	add  d                                           ; $4798: $82
	ldh  [rSB], a                                    ; $4799: $e0 $01
	ld   hl, sp-$10                                  ; $479b: $f8 $f0
	add  b                                           ; $479d: $80
	ret  nc                                          ; $479e: $d0

	add  h                                           ; $479f: $84
	sub  b                                           ; $47a0: $90
	add  b                                           ; $47a1: $80
	db   $10                                         ; $47a2: $10
	add  b                                           ; $47a3: $80
	jr   nz, jr_099_47a6                             ; $47a4: $20 $00

jr_099_47a6:
	jr   z, jr_099_4729                              ; $47a6: $28 $81

	jr   nz, jr_099_472a                             ; $47a8: $20 $80

	ld   b, b                                        ; $47aa: $40
	ld   bc, $4050                                   ; $47ab: $01 $50 $40
	add  b                                           ; $47ae: $80
	add  b                                           ; $47af: $80
	inc  b                                           ; $47b0: $04
	jr   nz, jr_099_47b3                             ; $47b1: $20 $00

jr_099_47b3:
	ld   b, b                                        ; $47b3: $40
	nop                                              ; $47b4: $00
	add  b                                           ; $47b5: $80
	add  e                                           ; $47b6: $83
	nop                                              ; $47b7: $00
	rla                                              ; $47b8: $17
	inc  bc                                          ; $47b9: $03
	nop                                              ; $47ba: $00
	rra                                              ; $47bb: $1f
	inc  bc                                          ; $47bc: $03
	ld   a, a                                        ; $47bd: $7f
	rra                                              ; $47be: $1f
	ld   hl, sp+$78                                  ; $47bf: $f8 $78
	ld   h, c                                        ; $47c1: $61
	pop  hl                                          ; $47c2: $e1
	rrca                                             ; $47c3: $0f
	adc  a                                           ; $47c4: $8f
	rra                                              ; $47c5: $1f
	ccf                                              ; $47c6: $3f
	rra                                              ; $47c7: $1f
	ld   a, a                                        ; $47c8: $7f
	ld   l, a                                        ; $47c9: $6f
	rst  $38                                         ; $47ca: $ff
	ld   b, a                                        ; $47cb: $47
	rst  $30                                         ; $47cc: $f7
	adc  $ee                                         ; $47cd: $ce $ee
	sbc  l                                           ; $47cf: $9d
	db   $dd                                         ; $47d0: $dd
	add  b                                           ; $47d1: $80
	sbc  c                                           ; $47d2: $99
	add  b                                           ; $47d3: $80
	ld   [hl-], a                                    ; $47d4: $32
	add  b                                           ; $47d5: $80
	ld   h, $80                                      ; $47d6: $26 $80
	ld   b, h                                        ; $47d8: $44
	add  b                                           ; $47d9: $80
	adc  b                                           ; $47da: $88
	add  b                                           ; $47db: $80
	db   $10                                         ; $47dc: $10
	add  b                                           ; $47dd: $80
	nop                                              ; $47de: $00
	inc  b                                           ; $47df: $04
	pop  bc                                          ; $47e0: $c1
	ld   bc, $0030                                   ; $47e1: $01 $30 $00
	rrca                                             ; $47e4: $0f
	adc  l                                           ; $47e5: $8d
	nop                                              ; $47e6: $00
	rrca                                             ; $47e7: $0f
	ld   bc, $0300                                   ; $47e8: $01 $00 $03
	ld   bc, $0304                                   ; $47eb: $01 $04 $03
	ld   a, [bc]                                     ; $47ee: $0a
	rlca                                             ; $47ef: $07
	inc  e                                           ; $47f0: $1c
	ld   c, $00                                      ; $47f1: $0e $00
	inc  c                                           ; $47f3: $0c
	jr   nc, @+$1b                                   ; $47f4: $30 $19

	ld   [de], a                                     ; $47f6: $12
	inc  de                                          ; $47f7: $13
	add  b                                           ; $47f8: $80
	rla                                              ; $47f9: $17
	add  b                                           ; $47fa: $80
	rlca                                             ; $47fb: $07
	ld   bc, $0626                                   ; $47fc: $01 $26 $06
	add  b                                           ; $47ff: $80
	inc  b                                           ; $4800: $04
	add  hl, bc                                      ; $4801: $09
	inc  d                                           ; $4802: $14
	inc  b                                           ; $4803: $04
	ld   [$0400], sp                                 ; $4804: $08 $00 $04
	nop                                              ; $4807: $00
	inc  bc                                          ; $4808: $03
	nop                                              ; $4809: $00
	ld   h, $59                                      ; $480a: $26 $59
	add  b                                           ; $480c: $80
	ld   b, b                                        ; $480d: $40
	ld   bc, $c041                                   ; $480e: $01 $41 $c0
	add  b                                           ; $4811: $80
	call z, $dd09                                    ; $4812: $cc $09 $dd
	call c, $9899                                    ; $4815: $dc $99 $98
	ld   [hl], $30                                   ; $4818: $36 $30
	ld   [$1000], sp                                 ; $481a: $08 $00 $10
	nop                                              ; $481d: $00
	add  b                                           ; $481e: $80
	ret  nz                                          ; $481f: $c0

	ld   b, $a0                                      ; $4820: $06 $a0
	add  b                                           ; $4822: $80
	inc  e                                           ; $4823: $1c
	nop                                              ; $4824: $00
	ld   [hl+], a                                    ; $4825: $22
	inc  e                                           ; $4826: $1c
	dec  e                                           ; $4827: $1d
	add  b                                           ; $4828: $80
	ld   a, $0f                                      ; $4829: $3e $0f
	daa                                              ; $482b: $27
	ccf                                              ; $482c: $3f
	ld   bc, $01dd                                   ; $482d: $01 $dd $01
	ld   d, c                                        ; $4830: $51
	nop                                              ; $4831: $00
	jr   nz, jr_099_4834                             ; $4832: $20 $00

jr_099_4834:
	ld   bc, $b600                                   ; $4834: $01 $00 $b6
	nop                                              ; $4837: $00
	add  hl, de                                      ; $4838: $19
	nop                                              ; $4839: $00
	call nz, $0081                                   ; $483a: $c4 $81 $00
	add  hl, bc                                      ; $483d: $09
	ld   h, b                                        ; $483e: $60
	nop                                              ; $483f: $00
	jp   nz, $8c00                                   ; $4840: $c2 $00 $8c

	nop                                              ; $4843: $00
	ld   a, h                                        ; $4844: $7c
	inc  c                                           ; $4845: $0c
	cp   $7e                                         ; $4846: $fe $7e
	add  b                                           ; $4848: $80
	cp   $80                                         ; $4849: $fe $80
	db   $fc                                         ; $484b: $fc
	inc  hl                                          ; $484c: $23
	ei                                               ; $484d: $fb
	ld   hl, sp-$38                                  ; $484e: $f8 $c8
	nop                                              ; $4850: $00
	ld   b, d                                        ; $4851: $42

jr_099_4852:
	ld   b, b                                        ; $4852: $40
	ret                                              ; $4853: $c9


	add  b                                           ; $4854: $80
	add  d                                           ; $4855: $82
	nop                                              ; $4856: $00
	push hl                                          ; $4857: $e5
	nop                                              ; $4858: $00
	stop                                             ; $4859: $10 $00
	call nc, $a300                                   ; $485b: $d4 $00 $a3
	nop                                              ; $485e: $00
	ld   e, h                                        ; $485f: $5c
	nop                                              ; $4860: $00
	ld   [bc], a                                     ; $4861: $02
	nop                                              ; $4862: $00
	or   a                                           ; $4863: $b7
	nop                                              ; $4864: $00
	rst  $28                                         ; $4865: $ef
	add  c                                           ; $4866: $81
	ccf                                              ; $4867: $3f
	inc  b                                           ; $4868: $04
	db   $fc                                         ; $4869: $fc
	jr   nz, jr_099_4852                             ; $486a: $20 $e6

	ld   b, $3d                                      ; $486c: $06 $3d
	inc  a                                           ; $486e: $3c
	ld   a, [hl-]                                    ; $486f: $3a
	dec  sp                                          ; $4870: $3b
	add  b                                           ; $4871: $80
	ld   a, e                                        ; $4872: $7b
	add  b                                           ; $4873: $80
	ld   [hl], a                                     ; $4874: $77
	add  b                                           ; $4875: $80
	rst  $30                                         ; $4876: $f7
	add  b                                           ; $4877: $80
	or   $82                                         ; $4878: $f6 $82
	db   $ec                                         ; $487a: $ec
	inc  bc                                          ; $487b: $03
	add  sp, -$17                                    ; $487c: $e8 $e9
	ld   h, c                                        ; $487e: $61
	ld   h, e                                        ; $487f: $63
	add  d                                           ; $4880: $82
	ld   h, d                                        ; $4881: $62
	nop                                              ; $4882: $00
	ld   [hl+], a                                    ; $4883: $22
	add  b                                           ; $4884: $80
	ld   a, [hl+]                                    ; $4885: $2a
	add  hl, hl                                      ; $4886: $29
	jr   z, jr_099_4852                              ; $4887: $28 $c9

	jp   nz, $c2c3                                   ; $4889: $c2 $c3 $c2

	rst  ToBoot                                         ; $488c: $c7
	ld   b, l                                        ; $488d: $45
	ld   b, b                                        ; $488e: $40
	pop  bc                                          ; $488f: $c1
	ret  z                                           ; $4890: $c8

	call nc, $b190                                   ; $4891: $d4 $90 $b1
	dec  a                                           ; $4894: $3d
	ld   b, e                                        ; $4895: $43
	ld   b, b                                        ; $4896: $40
	ld   [bc], a                                     ; $4897: $02
	db   $10                                         ; $4898: $10
	inc  b                                           ; $4899: $04
	ld   de, $8082                                   ; $489a: $11 $82 $80
	db   $10                                         ; $489d: $10
	ld   de, $2110                                   ; $489e: $11 $10 $21
	ld   b, b                                        ; $48a1: $40
	ld   [hl], d                                     ; $48a2: $72
	add  c                                           ; $48a3: $81
	ld   a, e                                        ; $48a4: $7b
	nop                                              ; $48a5: $00
	ld   b, b                                        ; $48a6: $40
	nop                                              ; $48a7: $00
	or   [hl]                                        ; $48a8: $b6
	ld   h, l                                        ; $48a9: $65
	ld   l, [hl]                                     ; $48aa: $6e
	add  h                                           ; $48ab: $84
	ld   a, b                                        ; $48ac: $78
	nop                                              ; $48ad: $00
	jp   $393d                                       ; $48ae: $c3 $3d $39


	add  b                                           ; $48b1: $80
	cp   b                                           ; $48b2: $b8
	inc  bc                                          ; $48b3: $03
	cp   c                                           ; $48b4: $b9
	add  hl, sp                                      ; $48b5: $39
	dec  sp                                          ; $48b6: $3b
	inc  sp                                          ; $48b7: $33
	add  b                                           ; $48b8: $80
	inc  [hl]                                        ; $48b9: $34
	rla                                              ; $48ba: $17
	jr   nc, jr_099_48dd                             ; $48bb: $30 $20

	ld   h, $c2                                      ; $48bd: $26 $c2
	ld   [$2040], sp                                 ; $48bf: $08 $40 $20
	jr   nc, jr_099_4904                             ; $48c2: $30 $40

	ld   b, c                                        ; $48c4: $41
	nop                                              ; $48c5: $00
	pop  af                                          ; $48c6: $f1
	nop                                              ; $48c7: $00
	jp   $fbc0                                       ; $48c8: $c3 $c0 $fb


	pop  hl                                          ; $48cb: $e1
	dec  a                                           ; $48cc: $3d
	ld   de, $0027                                   ; $48cd: $11 $27 $00
	jp   nc, $a6ac                                   ; $48d0: $d2 $ac $a6

	add  b                                           ; $48d3: $80
	ld   h, $09                                      ; $48d4: $26 $09
	and  [hl]                                        ; $48d6: $a6

jr_099_48d7:
	ld   [bc], a                                     ; $48d7: $02
	ld   b, d                                        ; $48d8: $42
	add  e                                           ; $48d9: $83
	inc  de                                          ; $48da: $13
	ld   b, e                                        ; $48db: $43
	dec  bc                                          ; $48dc: $0b

jr_099_48dd:
	sbc  e                                           ; $48dd: $9b
	dec  de                                          ; $48de: $1b
	sbc  c                                           ; $48df: $99
	add  b                                           ; $48e0: $80
	add  hl, bc                                      ; $48e1: $09
	nop                                              ; $48e2: $00
	and  c                                           ; $48e3: $a1
	add  b                                           ; $48e4: $80
	add  c                                           ; $48e5: $81
	dec  c                                           ; $48e6: $0d
	ld   de, $8101                                   ; $48e7: $11 $01 $81
	ld   b, l                                        ; $48ea: $45
	add  h                                           ; $48eb: $84
	inc  b                                           ; $48ec: $04
	inc  d                                           ; $48ed: $14
	nop                                              ; $48ee: $00
	jp   hl                                          ; $48ef: $e9


	ld   c, b                                        ; $48f0: $48
	ld   c, d                                        ; $48f1: $4a
	jr   z, jr_099_490c                              ; $48f2: $28 $18

	dec  sp                                          ; $48f4: $3b
	add  b                                           ; $48f5: $80
	ld   a, e                                        ; $48f6: $7b
	add  b                                           ; $48f7: $80
	ld   [hl], a                                     ; $48f8: $77
	add  b                                           ; $48f9: $80
	rst  $30                                         ; $48fa: $f7
	add  b                                           ; $48fb: $80
	or   $82                                         ; $48fc: $f6 $82
	db   $ec                                         ; $48fe: $ec
	inc  b                                           ; $48ff: $04

Call_099_4900:
	add  sp, -$17                                    ; $4900: $e8 $e9
	ld   h, c                                        ; $4902: $61
	ld   h, b                                        ; $4903: $60

jr_099_4904:
	ld   h, c                                        ; $4904: $61
	add  c                                           ; $4905: $81
	ld   h, d                                        ; $4906: $62
	nop                                              ; $4907: $00
	ld   [hl+], a                                    ; $4908: $22
	add  b                                           ; $4909: $80
	ld   a, [hl+]                                    ; $490a: $2a
	add  hl, hl                                      ; $490b: $29

jr_099_490c:
	jr   z, jr_099_48d7                              ; $490c: $28 $c9

	jp   nz, $c2c3                                   ; $490e: $c2 $c3 $c2

	rst  ToBoot                                         ; $4911: $c7
	ld   b, l                                        ; $4912: $45
	ld   b, b                                        ; $4913: $40
	pop  bc                                          ; $4914: $c1
	ret  z                                           ; $4915: $c8

	call nc, $b190                                   ; $4916: $d4 $90 $b1
	ld   hl, $7c63                                   ; $4919: $21 $63 $7c
	add  b                                           ; $491c: $80
	cp   d                                           ; $491d: $ba
	ld   b, h                                        ; $491e: $44
	ld   [hl], c                                     ; $491f: $71
	ldh  a, [c]                                      ; $4920: $f2
	ld   hl, sp+$00                                  ; $4921: $f8 $00
	dec  b                                           ; $4923: $05
	nop                                              ; $4924: $00
	ld   de, $5244                                   ; $4925: $11 $44 $52
	add  c                                           ; $4928: $81
	ld   a, e                                        ; $4929: $7b
	nop                                              ; $492a: $00
	ld   b, b                                        ; $492b: $40
	nop                                              ; $492c: $00
	or   [hl]                                        ; $492d: $b6
	ld   h, l                                        ; $492e: $65
	ld   l, [hl]                                     ; $492f: $6e
	add  h                                           ; $4930: $84
	ld   a, b                                        ; $4931: $78
	nop                                              ; $4932: $00
	jp   $393d                                       ; $4933: $c3 $3d $39


	add  b                                           ; $4936: $80
	cp   b                                           ; $4937: $b8
	dec  e                                           ; $4938: $1d
	cp   c                                           ; $4939: $b9
	add  hl, sp                                      ; $493a: $39
	dec  sp                                          ; $493b: $3b
	jr   nc, jr_099_4972                             ; $493c: $30 $34

	scf                                              ; $493e: $37
	jr   nc, jr_099_4964                             ; $493f: $30 $23

	inc  h                                           ; $4941: $24
	ret  nz                                          ; $4942: $c0

	ld   [$2447], sp                                 ; $4943: $08 $47 $24
	inc  a                                           ; $4946: $3c
	ld   c, b                                        ; $4947: $48
	ld   b, b                                        ; $4948: $40
	dec  b                                           ; $4949: $05
	pop  af                                          ; $494a: $f1
	nop                                              ; $494b: $00
	jp   $fbc0                                       ; $494c: $c3 $c0 $fb


	pop  hl                                          ; $494f: $e1
	dec  a                                           ; $4950: $3d
	ld   de, $0027                                   ; $4951: $11 $27 $00
	jp   nc, $a6ac                                   ; $4954: $d2 $ac $a6

	add  b                                           ; $4957: $80
	ld   h, $1c                                      ; $4958: $26 $1c

jr_099_495a:
	and  [hl]                                        ; $495a: $a6
	ld   [bc], a                                     ; $495b: $02
	ld   b, d                                        ; $495c: $42
	inc  bc                                          ; $495d: $03
	inc  de                                          ; $495e: $13
	db   $e3                                         ; $495f: $e3
	dec  bc                                          ; $4960: $0b
	cp   e                                           ; $4961: $bb
	ld   e, e                                        ; $4962: $5b
	add  hl, de                                      ; $4963: $19

jr_099_4964:
	add  hl, hl                                      ; $4964: $29
	reti                                             ; $4965: $d9


	ld   bc, $0121                                   ; $4966: $01 $21 $01
	add  c                                           ; $4969: $81
	ld   hl, $4581                                   ; $496a: $21 $81 $45
	add  h                                           ; $496d: $84
	inc  b                                           ; $496e: $04
	inc  d                                           ; $496f: $14
	nop                                              ; $4970: $00
	jp   hl                                          ; $4971: $e9


jr_099_4972:
	ld   c, b                                        ; $4972: $48
	ld   c, d                                        ; $4973: $4a
	jr   z, jr_099_498e                              ; $4974: $28 $18

	dec  sp                                          ; $4976: $3b
	add  b                                           ; $4977: $80
	ld   a, e                                        ; $4978: $7b
	add  b                                           ; $4979: $80
	ld   [hl], a                                     ; $497a: $77
	add  b                                           ; $497b: $80
	rst  $30                                         ; $497c: $f7
	add  b                                           ; $497d: $80
	or   $82                                         ; $497e: $f6 $82
	db   $ec                                         ; $4980: $ec
	ld   [bc], a                                     ; $4981: $02
	add  sp, -$17                                    ; $4982: $e8 $e9
	ld   h, c                                        ; $4984: $61
	add  b                                           ; $4985: $80
	ld   h, e                                        ; $4986: $63
	inc  bc                                          ; $4987: $03
	ld   h, d                                        ; $4988: $62
	ld   h, e                                        ; $4989: $63
	ld   h, d                                        ; $498a: $62
	ld   [hl+], a                                    ; $498b: $22
	add  b                                           ; $498c: $80
	ld   a, [hl+]                                    ; $498d: $2a

jr_099_498e:
	inc  d                                           ; $498e: $14
	jr   z, jr_099_495a                              ; $498f: $28 $c9

jr_099_4991:
	jp   nz, $c2c3                                   ; $4991: $c2 $c3 $c2

	rst  ToBoot                                         ; $4994: $c7
	ld   b, l                                        ; $4995: $45
	ld   b, b                                        ; $4996: $40
	pop  bc                                          ; $4997: $c1
	ret  z                                           ; $4998: $c8

	call nc, $b190                                   ; $4999: $d4 $90 $b1
	ld   hl, $7c63                                   ; $499c: $21 $63 $7c
	add  b                                           ; $499f: $80
	cp   d                                           ; $49a0: $ba
	ld   b, h                                        ; $49a1: $44
	ld   bc, $8082                                   ; $49a2: $01 $82 $80
	nop                                              ; $49a5: $00
	ld   [bc], a                                     ; $49a6: $02
	add  e                                           ; $49a7: $83
	add  d                                           ; $49a8: $82
	rst  $38                                         ; $49a9: $ff
	add  b                                           ; $49aa: $80
	ld   [bc], a                                     ; $49ab: $02
	dec  c                                           ; $49ac: $0d
	add  l                                           ; $49ad: $85
	ld   a, e                                        ; $49ae: $7b
	nop                                              ; $49af: $00
	ld   b, b                                        ; $49b0: $40
	nop                                              ; $49b1: $00
	or   [hl]                                        ; $49b2: $b6
	ld   h, l                                        ; $49b3: $65
	ld   l, [hl]                                     ; $49b4: $6e
	add  h                                           ; $49b5: $84
	ld   a, b                                        ; $49b6: $78
	nop                                              ; $49b7: $00
	jp   $393d                                       ; $49b8: $c3 $3d $39


	add  b                                           ; $49bb: $80
	cp   b                                           ; $49bc: $b8
	dec  e                                           ; $49bd: $1d

jr_099_49be:
	cp   c                                           ; $49be: $b9
	add  hl, sp                                      ; $49bf: $39
	dec  sp                                          ; $49c0: $3b
	jr   nc, jr_099_49f7                             ; $49c1: $30 $34

	scf                                              ; $49c3: $37
	jr   nc, jr_099_49e9                             ; $49c4: $30 $23

	inc  h                                           ; $49c6: $24
	ret  nz                                          ; $49c7: $c0

	ld   [$2040], sp                                 ; $49c8: $08 $40 $20
	inc  a                                           ; $49cb: $3c
	ld   c, h                                        ; $49cc: $4c
	ld   b, a                                        ; $49cd: $47
	nop                                              ; $49ce: $00
	ldh  a, [rDIV]                                   ; $49cf: $f0 $04
	jp   $fbc0                                       ; $49d1: $c3 $c0 $fb


	pop  hl                                          ; $49d4: $e1
	dec  a                                           ; $49d5: $3d
	ld   de, $0027                                   ; $49d6: $11 $27 $00
	jp   nc, $a6ac                                   ; $49d9: $d2 $ac $a6

	add  b                                           ; $49dc: $80
	ld   h, $0b                                      ; $49dd: $26 $0b
	and  [hl]                                        ; $49df: $a6
	ld   [bc], a                                     ; $49e0: $02
	ld   b, d                                        ; $49e1: $42
	inc  bc                                          ; $49e2: $03
	inc  de                                          ; $49e3: $13
	db   $e3                                         ; $49e4: $e3
	dec  bc                                          ; $49e5: $0b
	cp   e                                           ; $49e6: $bb
	ld   e, e                                        ; $49e7: $5b
	add  hl, de                                      ; $49e8: $19

jr_099_49e9:
	add  hl, hl                                      ; $49e9: $29
	add  hl, de                                      ; $49ea: $19
	add  c                                           ; $49eb: $81
	ld   bc, $e100                                   ; $49ec: $01 $00 $e1
	add  b                                           ; $49ef: $80
	ld   bc, $2510                                   ; $49f0: $01 $10 $25
	call nz, $1404                                   ; $49f3: $c4 $04 $14
	nop                                              ; $49f6: $00

jr_099_49f7:
	jp   hl                                          ; $49f7: $e9


	ld   c, b                                        ; $49f8: $48
	ld   c, d                                        ; $49f9: $4a
	jr   z, jr_099_49be                              ; $49fa: $28 $c2

	inc  b                                           ; $49fc: $04
	ld   h, $08                                      ; $49fd: $26 $08
	ld   c, b                                        ; $49ff: $48
	jr   nz, jr_099_4a80                             ; $4a00: $20 $7e

	nop                                              ; $4a02: $00

jr_099_4a03:
	add  b                                           ; $4a03: $80
	jr   jr_099_4a0f                                 ; $4a04: $18 $09

	rst  JumpTable                                         ; $4a06: $df
	cp   h                                           ; $4a07: $bc
	rst  ToBoot                                         ; $4a08: $c7
	add  d                                           ; $4a09: $82
	inc  b                                           ; $4a0a: $04
	nop                                              ; $4a0b: $00
	ld   [hl], $12                                   ; $4a0c: $36 $12
	inc  a                                           ; $4a0e: $3c

jr_099_4a0f:
	jr   jr_099_4991                                 ; $4a0f: $18 $80

	nop                                              ; $4a11: $00
	add  d                                           ; $4a12: $82
	ret  nz                                          ; $4a13: $c0

	dec  c                                           ; $4a14: $0d
	add  e                                           ; $4a15: $83
	ld   [bc], a                                     ; $4a16: $02
	ld   a, [hl]                                     ; $4a17: $7e
	sbc  b                                           ; $4a18: $98
	sbc  c                                           ; $4a19: $99
	ld   h, b                                        ; $4a1a: $60
	add  b                                           ; $4a1b: $80
	inc  b                                           ; $4a1c: $04
	ld   h, $08                                      ; $4a1d: $26 $08
	ld   c, b                                        ; $4a1f: $48
	jr   nz, jr_099_4aa0                             ; $4a20: $20 $7e

	nop                                              ; $4a22: $00
	add  b                                           ; $4a23: $80
	jr   @+$0e                                       ; $4a24: $18 $0c

	rst  JumpTable                                         ; $4a26: $df
	cp   h                                           ; $4a27: $bc
	rst  ToBoot                                         ; $4a28: $c7
	add  d                                           ; $4a29: $82
	inc  b                                           ; $4a2a: $04
	nop                                              ; $4a2b: $00
	ld   a, $5a                                      ; $4a2c: $3e $5a
	ld   h, $66                                      ; $4a2e: $26 $66
	inc  e                                           ; $4a30: $1c
	jr   z, jr_099_4a03                              ; $4a31: $28 $d0

	add  c                                           ; $4a33: $81
	ret  nz                                          ; $4a34: $c0

	ld   b, $83                                      ; $4a35: $06 $83
	ld   [bc], a                                     ; $4a37: $02
	ld   a, [hl]                                     ; $4a38: $7e
	sbc  b                                           ; $4a39: $98
	sbc  c                                           ; $4a3a: $99
	ld   h, b                                        ; $4a3b: $60
	sbc  [hl]                                        ; $4a3c: $9e
	rst  $38                                         ; $4a3d: $ff
	nop                                              ; $4a3e: $00
	rst  $38                                         ; $4a3f: $ff
	nop                                              ; $4a40: $00
	rst  $38                                         ; $4a41: $ff
	nop                                              ; $4a42: $00
	rst  $38                                         ; $4a43: $ff
	nop                                              ; $4a44: $00
	ld   sp, hl                                      ; $4a45: $f9
	nop                                              ; $4a46: $00
	inc  e                                           ; $4a47: $1c
	ld   bc, $0080                                   ; $4a48: $01 $80 $00
	nop                                              ; $4a4b: $00
	ld   bc, $0081                                   ; $4a4c: $01 $81 $00
	ld   [bc], a                                     ; $4a4f: $02
	ld   [bc], a                                     ; $4a50: $02
	ld   bc, $8100                                   ; $4a51: $01 $00 $81
	ld   bc, $0203                                   ; $4a54: $01 $03 $02
	nop                                              ; $4a57: $00
	ld   [bc], a                                     ; $4a58: $02
	nop                                              ; $4a59: $00
	add  b                                           ; $4a5a: $80
	ld   bc, $0000                                   ; $4a5b: $01 $00 $00
	add  l                                           ; $4a5e: $85
	ld   bc, $0300                                   ; $4a5f: $01 $00 $03
	add  c                                           ; $4a62: $81
	nop                                              ; $4a63: $00
	nop                                              ; $4a64: $00
	ld   bc, $0093                                   ; $4a65: $01 $93 $00
	nop                                              ; $4a68: $00
	ld   bc, $0081                                   ; $4a69: $01 $81 $00
	inc  b                                           ; $4a6c: $04
	ld   b, $00                                      ; $4a6d: $06 $00
	ld   c, $06                                      ; $4a6f: $0e $06
	rra                                              ; $4a71: $1f
	add  c                                           ; $4a72: $81
	rrca                                             ; $4a73: $0f
	jr   nz, jr_099_4a95                             ; $4a74: $20 $1f

	nop                                              ; $4a76: $00
	rlca                                             ; $4a77: $07
	nop                                              ; $4a78: $00
	ld   [$3707], sp                                 ; $4a79: $08 $07 $37
	rrca                                             ; $4a7c: $0f
	ld   c, h                                        ; $4a7d: $4c
	ccf                                              ; $4a7e: $3f
	or   d                                           ; $4a7f: $b2

jr_099_4a80:
	ld   a, a                                        ; $4a80: $7f
	ld   c, l                                        ; $4a81: $4d
	ld   a, a                                        ; $4a82: $7f
	dec  sp                                          ; $4a83: $3b
	ld   a, a                                        ; $4a84: $7f
	scf                                              ; $4a85: $37

jr_099_4a86:
	ccf                                              ; $4a86: $3f
	adc  a                                           ; $4a87: $8f
	dec  de                                          ; $4a88: $1b
	ld   e, e                                        ; $4a89: $5b
	rla                                              ; $4a8a: $17
	ld   d, $0f                                      ; $4a8b: $16 $0f
	add  hl, bc                                      ; $4a8d: $09
	rra                                              ; $4a8e: $1f
	ld   d, [hl]                                     ; $4a8f: $56
	ccf                                              ; $4a90: $3f
	xor  l                                           ; $4a91: $ad
	ld   a, a                                        ; $4a92: $7f
	ld   h, e                                        ; $4a93: $63
	ld   b, a                                        ; $4a94: $47

jr_099_4a95:
	ld   b, [hl]                                     ; $4a95: $46
	add  b                                           ; $4a96: $80
	rlca                                             ; $4a97: $07
	add  c                                           ; $4a98: $81
	rst  $30                                         ; $4a99: $f7
	inc  b                                           ; $4a9a: $04
	scf                                              ; $4a9b: $37
	rst  $30                                         ; $4a9c: $f7
	or   [hl]                                        ; $4a9d: $b6
	rst  $30                                         ; $4a9e: $f7
	ld   [hl], a                                     ; $4a9f: $77

jr_099_4aa0:
	add  d                                           ; $4aa0: $82
	rst  $30                                         ; $4aa1: $f7
	add  b                                           ; $4aa2: $80
	db   $f4                                         ; $4aa3: $f4
	add  c                                           ; $4aa4: $81
	ld   hl, sp+$04                                  ; $4aa5: $f8 $04
	cp   b                                           ; $4aa7: $b8
	cp   $3e                                         ; $4aa8: $fe $3e
	rst  $38                                         ; $4aaa: $ff
	ld   a, a                                        ; $4aab: $7f
	add  b                                           ; $4aac: $80
	cp   $80                                         ; $4aad: $fe $80
	ld   sp, hl                                      ; $4aaf: $f9
	rlca                                             ; $4ab0: $07
	and  $e7                                         ; $4ab1: $e6 $e7
	sbc  h                                           ; $4ab3: $9c
	sbc  [hl]                                        ; $4ab4: $9e
	jr   c, jr_099_4af3                              ; $4ab5: $38 $3c

	ld   [hl], b                                     ; $4ab7: $70
	ld   a, b                                        ; $4ab8: $78
	add  b                                           ; $4ab9: $80
	ldh  [rSB], a                                    ; $4aba: $e0 $01
	ld   h, b                                        ; $4abc: $60
	ld   [hl], b                                     ; $4abd: $70
	add  c                                           ; $4abe: $81
	ld   b, b                                        ; $4abf: $40
	inc  b                                           ; $4ac0: $04
	ret  nz                                          ; $4ac1: $c0

	nop                                              ; $4ac2: $00
	jr   nc, jr_099_4ac5                             ; $4ac3: $30 $00

jr_099_4ac5:
	ld   d, b                                        ; $4ac5: $50
	adc  l                                           ; $4ac6: $8d
	nop                                              ; $4ac7: $00
	add  d                                           ; $4ac8: $82
	rst  $38                                         ; $4ac9: $ff
	nop                                              ; $4aca: $00
	ld   a, a                                        ; $4acb: $7f
	add  c                                           ; $4acc: $81
	rst  $38                                         ; $4acd: $ff
	ld   [bc], a                                     ; $4ace: $02
	cp   a                                           ; $4acf: $bf
	rst  $38                                         ; $4ad0: $ff
	ccf                                              ; $4ad1: $3f
	add  b                                           ; $4ad2: $80
	cp   $80                                         ; $4ad3: $fe $80
	ld   b, $0d                                      ; $4ad5: $06 $0d
	nop                                              ; $4ad7: $00
	ld   bc, $0100                                   ; $4ad8: $01 $00 $01
	nop                                              ; $4adb: $00
	inc  bc                                          ; $4adc: $03
	nop                                              ; $4add: $00
	inc  c                                           ; $4ade: $0c
	ldh  [$f0], a                                    ; $4adf: $e0 $f0
	nop                                              ; $4ae1: $00
	ld   h, b                                        ; $4ae2: $60
	nop                                              ; $4ae3: $00
	add  b                                           ; $4ae4: $80
	add  c                                           ; $4ae5: $81
	nop                                              ; $4ae6: $00
	add  c                                           ; $4ae7: $81
	rst  $38                                         ; $4ae8: $ff
	inc  bc                                          ; $4ae9: $03
	jp   $00df                                       ; $4aea: $c3 $df $00


	ld   h, e                                        ; $4aed: $63
	add  c                                           ; $4aee: $81
	nop                                              ; $4aef: $00
	ld   b, $80                                      ; $4af0: $06 $80
	nop                                              ; $4af2: $00

jr_099_4af3:
	ld   [$3800], sp                                 ; $4af3: $08 $00 $38
	nop                                              ; $4af6: $00
	jr   nc, jr_099_4a86                             ; $4af7: $30 $8d

	nop                                              ; $4af9: $00
	nop                                              ; $4afa: $00
	rst  $38                                         ; $4afb: $ff
	add  b                                           ; $4afc: $80
	add  b                                           ; $4afd: $80
	add  b                                           ; $4afe: $80
	adc  [hl]                                        ; $4aff: $8e
	dec  b                                           ; $4b00: $05
	ld   e, $9e                                      ; $4b01: $1e $9e
	ld   e, $5e                                      ; $4b03: $1e $5e
	inc  e                                           ; $4b05: $1c
	inc  a                                           ; $4b06: $3c
	add  b                                           ; $4b07: $80
	inc  c                                           ; $4b08: $0c
	inc  bc                                          ; $4b09: $03
	nop                                              ; $4b0a: $00
	ld   de, $0e00                                   ; $4b0b: $11 $00 $0e
	adc  l                                           ; $4b0e: $8d
	nop                                              ; $4b0f: $00
	nop                                              ; $4b10: $00
	rst  $38                                         ; $4b11: $ff
	add  b                                           ; $4b12: $80
	ccf                                              ; $4b13: $3f
	add  b                                           ; $4b14: $80
	ld   h, c                                        ; $4b15: $61
	add  b                                           ; $4b16: $80
	ld   c, a                                        ; $4b17: $4f
	add  b                                           ; $4b18: $80
	cp   a                                           ; $4b19: $bf
	inc  bc                                          ; $4b1a: $03
	add  b                                           ; $4b1b: $80
	cp   a                                           ; $4b1c: $bf
	nop                                              ; $4b1d: $00
	ret  nz                                          ; $4b1e: $c0

	sub  c                                           ; $4b1f: $91
	nop                                              ; $4b20: $00
	nop                                              ; $4b21: $00
	cp   $81                                         ; $4b22: $fe $81
	rst  $38                                         ; $4b24: $ff
	nop                                              ; $4b25: $00
	cp   $82                                         ; $4b26: $fe $82
	rst  $38                                         ; $4b28: $ff
	inc  bc                                          ; $4b29: $03
	ccf                                              ; $4b2a: $3f
	rst  $38                                         ; $4b2b: $ff
	rra                                              ; $4b2c: $1f
	ccf                                              ; $4b2d: $3f
	add  e                                           ; $4b2e: $83
	rrca                                             ; $4b2f: $0f
	inc  b                                           ; $4b30: $04
	inc  c                                           ; $4b31: $0c
	rrca                                             ; $4b32: $0f
	ld   c, $0f                                      ; $4b33: $0e $0f
	dec  c                                           ; $4b35: $0d
	add  b                                           ; $4b36: $80
	rrca                                             ; $4b37: $0f
	rrca                                             ; $4b38: $0f
	inc  bc                                          ; $4b39: $03
	add  e                                           ; $4b3a: $83
	ld   bc, $00c1                                   ; $4b3b: $01 $c1 $00
	ld   h, b                                        ; $4b3e: $60
	nop                                              ; $4b3f: $00
	jp   Jump_099_7af8                               ; $4b40: $c3 $f8 $7a


	db   $fc                                         ; $4b43: $fc
	cp   h                                           ; $4b44: $bc
	db   $fc                                         ; $4b45: $fc
	db   $dd                                         ; $4b46: $dd
	cp   $7e                                         ; $4b47: $fe $7e
	add  d                                           ; $4b49: $82
	cp   $07                                         ; $4b4a: $fe $07

jr_099_4b4c:
	db   $fc                                         ; $4b4c: $fc
	ld   e, a                                        ; $4b4d: $5f
	ld   hl, sp-$06                                  ; $4b4e: $f8 $fa
	ldh  a, [$b1]                                    ; $4b50: $f0 $b1
	or   $76                                         ; $4b52: $f6 $76
	add  b                                           ; $4b54: $80
	rst  $30                                         ; $4b55: $f7
	dec  b                                           ; $4b56: $05
	rst  $28                                         ; $4b57: $ef
	db   $ec                                         ; $4b58: $ec
	rst  $28                                         ; $4b59: $ef
	db   $ed                                         ; $4b5a: $ed
	rst  $28                                         ; $4b5b: $ef
	xor  $80                                         ; $4b5c: $ee $80
	rst  JumpTable                                         ; $4b5e: $df
	add  b                                           ; $4b5f: $80
	ld   e, a                                        ; $4b60: $5f
	add  b                                           ; $4b61: $80
	ccf                                              ; $4b62: $3f
	add  b                                           ; $4b63: $80
	rst  $38                                         ; $4b64: $ff
	add  b                                           ; $4b65: $80
	ld   a, a                                        ; $4b66: $7f
	add  hl, bc                                      ; $4b67: $09
	ccf                                              ; $4b68: $3f
	add  hl, sp                                      ; $4b69: $39
	sbc  a                                           ; $4b6a: $9f
	sbc  d                                           ; $4b6b: $9a
	ld   c, a                                        ; $4b6c: $4f
	call $2e2f                                       ; $4b6d: $cd $2f $2e
	scf                                              ; $4b70: $37
	ld   [hl], a                                     ; $4b71: $77
	add  b                                           ; $4b72: $80
	rla                                              ; $4b73: $17
	ld   bc, $3b1b                                   ; $4b74: $01 $1b $3b
	add  b                                           ; $4b77: $80
	dec  bc                                          ; $4b78: $0b
	add  c                                           ; $4b79: $81
	dec  c                                           ; $4b7a: $0d
	nop                                              ; $4b7b: $00
	dec  l                                           ; $4b7c: $2d
	add  b                                           ; $4b7d: $80
	dec  e                                           ; $4b7e: $1d
	add  b                                           ; $4b7f: $80
	inc  e                                           ; $4b80: $1c
	inc  hl                                          ; $4b81: $23
	ld   [$0037], sp                                 ; $4b82: $08 $37 $00
	add  b                                           ; $4b85: $80
	nop                                              ; $4b86: $00
	ld   b, b                                        ; $4b87: $40
	add  b                                           ; $4b88: $80
	and  b                                           ; $4b89: $a0
	ret  nz                                          ; $4b8a: $c0

	ret  nc                                          ; $4b8b: $d0

	ldh  [$28], a                                    ; $4b8c: $e0 $28
	ldh  a, [rLY]                                    ; $4b8e: $f0 $44
	ld   hl, sp-$4e                                  ; $4b90: $f8 $b2
	db   $fc                                         ; $4b92: $fc
	reti                                             ; $4b93: $d9


	cp   $ec                                         ; $4b94: $fe $ec
	cp   $f6                                         ; $4b96: $fe $f6
	cp   $fa                                         ; $4b98: $fe $fa

jr_099_4b9a:
	cp   $fc                                         ; $4b9a: $fe $fc
	cp   $ff                                         ; $4b9c: $fe $ff
	call c, $e85e                                    ; $4b9e: $dc $5e $e8
	xor  h                                           ; $4ba1: $ac
	ldh  a, [$d0]                                    ; $4ba2: $f0 $d0
	ldh  a, [$64]                                    ; $4ba4: $f0 $64
	add  c                                           ; $4ba6: $81
	ld   hl, sp+$00                                  ; $4ba7: $f8 $00
	or   b                                           ; $4ba9: $b0
	add  c                                           ; $4baa: $81
	ld   hl, sp+$01                                  ; $4bab: $f8 $01
	call nc, $80f0                                   ; $4bad: $d4 $f0 $80
	ldh  [rP1], a                                    ; $4bb0: $e0 $00
	add  sp, -$80                                    ; $4bb2: $e8 $80
	ldh  [$82], a                                    ; $4bb4: $e0 $82
	ld   h, b                                        ; $4bb6: $60
	dec  b                                           ; $4bb7: $05
	jr   nz, jr_099_4b9a                             ; $4bb8: $20 $e0

	nop                                              ; $4bba: $00
	jr   nz, jr_099_4bbd                             ; $4bbb: $20 $00

jr_099_4bbd:
	db   $10                                         ; $4bbd: $10
	add  e                                           ; $4bbe: $83
	nop                                              ; $4bbf: $00
	nop                                              ; $4bc0: $00
	rst  $38                                         ; $4bc1: $ff
	add  b                                           ; $4bc2: $80
	dec  d                                           ; $4bc3: $15
	add  b                                           ; $4bc4: $80
	adc  l                                           ; $4bc5: $8d
	ld   c, $e0                                      ; $4bc6: $0e $e0
	rst  $28                                         ; $4bc8: $ef
	nop                                              ; $4bc9: $00
	jr   nc, jr_099_4b4c                             ; $4bca: $30 $80

	ret  nz                                          ; $4bcc: $c0

	nop                                              ; $4bcd: $00
	sub  d                                           ; $4bce: $92
	nop                                              ; $4bcf: $00
	ld   l, h                                        ; $4bd0: $6c
	nop                                              ; $4bd1: $00
	xor  l                                           ; $4bd2: $ad
	ld   c, [hl]                                     ; $4bd3: $4e
	db   $fc                                         ; $4bd4: $fc
	sbc  a                                           ; $4bd5: $9f
	add  b                                           ; $4bd6: $80
	rst  $38                                         ; $4bd7: $ff
	ld   a, [bc]                                     ; $4bd8: $0a
	db   $fd                                         ; $4bd9: $fd
	rst  $38                                         ; $4bda: $ff
	db   $e3                                         ; $4bdb: $e3
	rst  $38                                         ; $4bdc: $ff
	rra                                              ; $4bdd: $1f
	ld   a, h                                        ; $4bde: $7c
	rst  $38                                         ; $4bdf: $ff
	nop                                              ; $4be0: $00
	cp   h                                           ; $4be1: $bc
	nop                                              ; $4be2: $00
	ccf                                              ; $4be3: $3f
	add  b                                           ; $4be4: $80
	ld   a, b                                        ; $4be5: $78
	add  b                                           ; $4be6: $80
	cp   h                                           ; $4be7: $bc
	add  b                                           ; $4be8: $80
	rst  JumpTable                                         ; $4be9: $df
	dec  c                                           ; $4bea: $0d
	add  sp, -$17                                    ; $4beb: $e8 $e9
	push af                                          ; $4bed: $f5
	rst  $30                                         ; $4bee: $f7
	db   $eb                                         ; $4bef: $eb
	rst  $28                                         ; $4bf0: $ef
	ld   h, a                                        ; $4bf1: $67
	ld   l, h                                        ; $4bf2: $6c
	inc  c                                           ; $4bf3: $0c
	jp   hl                                          ; $4bf4: $e9


	dec  bc                                          ; $4bf5: $0b
	ld   [hl], $10                                   ; $4bf6: $36 $10
	inc  de                                          ; $4bf8: $13
	add  e                                           ; $4bf9: $83
	db   $10                                         ; $4bfa: $10
	add  hl, bc                                      ; $4bfb: $09
	cpl                                              ; $4bfc: $2f
	dec  bc                                          ; $4bfd: $0b
	rla                                              ; $4bfe: $17
	inc  b                                           ; $4bff: $04
	ld   de, $2001                                   ; $4c00: $11 $01 $20
	jr   @+$54                                       ; $4c03: $18 $52

	ld   a, [hl-]                                    ; $4c05: $3a
	add  b                                           ; $4c06: $80
	scf                                              ; $4c07: $37
	inc  b                                           ; $4c08: $04
	daa                                              ; $4c09: $27
	scf                                              ; $4c0a: $37
	ld   l, l                                        ; $4c0b: $6d
	dec  c                                           ; $4c0c: $0d
	inc  l                                           ; $4c0d: $2c
	add  b                                           ; $4c0e: $80
	inc  c                                           ; $4c0f: $0c
	inc  de                                          ; $4c10: $13
	dec  c                                           ; $4c11: $0d
	daa                                              ; $4c12: $27
	ld   b, $4b                                      ; $4c13: $06 $4b
	dec  sp                                          ; $4c15: $3b
	or   l                                           ; $4c16: $b5
	ld   a, l                                        ; $4c17: $7d
	ld   a, d                                        ; $4c18: $7a
	ld   a, [hl]                                     ; $4c19: $7e
	ld   a, l                                        ; $4c1a: $7d
	ld   a, a                                        ; $4c1b: $7f
	db   $fd                                         ; $4c1c: $fd
	ccf                                              ; $4c1d: $3f
	ld   h, d                                        ; $4c1e: $62
	ld   e, $20                                      ; $4c1f: $1e $20
	nop                                              ; $4c21: $00
	ld   e, $00                                      ; $4c22: $1e $00
	cp   $80                                         ; $4c24: $fe $80
	xor  b                                           ; $4c26: $a8
	add  b                                           ; $4c27: $80
	ld   l, a                                        ; $4c28: $6f
	ld   [bc], a                                     ; $4c29: $02
	inc  bc                                          ; $4c2a: $03
	ld   a, a                                        ; $4c2b: $7f
	ld   a, h                                        ; $4c2c: $7c
	add  d                                           ; $4c2d: $82
	rst  $38                                         ; $4c2e: $ff
	add  b                                           ; $4c2f: $80
	ld   l, a                                        ; $4c30: $6f
	add  b                                           ; $4c31: $80
	rrca                                             ; $4c32: $0f
	ld   [bc], a                                     ; $4c33: $02
	ld   h, e                                        ; $4c34: $63
	inc  de                                          ; $4c35: $13
	add  c                                           ; $4c36: $81
	add  c                                           ; $4c37: $81
	dec  c                                           ; $4c38: $0d
	add  b                                           ; $4c39: $80
	dec  e                                           ; $4c3a: $1d
	dec  b                                           ; $4c3b: $05
	rst  $38                                         ; $4c3c: $ff
	ei                                               ; $4c3d: $fb
	rst  $38                                         ; $4c3e: $ff
	rst  $20                                         ; $4c3f: $e7
	rst  $38                                         ; $4c40: $ff
	rra                                              ; $4c41: $1f
	add  b                                           ; $4c42: $80
	db   $fc                                         ; $4c43: $fc
	add  d                                           ; $4c44: $82
	nop                                              ; $4c45: $00
	add  b                                           ; $4c46: $80
	ld   bc, $0000                                   ; $4c47: $01 $00 $00
	add  b                                           ; $4c4a: $80
	ld   c, [hl]                                     ; $4c4b: $4e
	add  b                                           ; $4c4c: $80
	ld   b, d                                        ; $4c4d: $42
	add  b                                           ; $4c4e: $80
	ld   b, h                                        ; $4c4f: $44
	ld   [bc], a                                     ; $4c50: $02
	adc  $ef                                         ; $4c51: $ce $ef
	ld   hl, $fe82                                   ; $4c53: $21 $82 $fe
	ld   bc, $0100                                   ; $4c56: $01 $00 $01
	add  b                                           ; $4c59: $80
	ld   [hl], c                                     ; $4c5a: $71
	add  b                                           ; $4c5b: $80
	ld   bc, $ff02                                   ; $4c5c: $01 $02 $ff
	nop                                              ; $4c5f: $00
	ld   bc, $0081                                   ; $4c60: $01 $81 $00
	inc  e                                           ; $4c63: $1c
	db   $fc                                         ; $4c64: $fc
	ld   hl, sp-$04                                  ; $4c65: $f8 $fc
	jr   nc, jr_099_4ca1                             ; $4c67: $30 $38

	add  b                                           ; $4c69: $80
	adc  b                                           ; $4c6a: $88
	ld   [hl], b                                     ; $4c6b: $70
	ld   [hl], c                                     ; $4c6c: $71
	ld   [hl], b                                     ; $4c6d: $70
	ld   h, d                                        ; $4c6e: $62
	ld   [hl], b                                     ; $4c6f: $70
	ret  nc                                          ; $4c70: $d0

	or   b                                           ; $4c71: $b0
	add  $c0                                         ; $4c72: $c6 $c0
	add  sp, -$20                                    ; $4c74: $e8 $e0
	pop  hl                                          ; $4c76: $e1
	ldh  [$e6], a                                    ; $4c77: $e0 $e6
	ldh  [$e9], a                                    ; $4c79: $e0 $e9
	ldh  [$c6], a                                    ; $4c7b: $e0 $c6
	ret  nz                                          ; $4c7d: $c0

	and  b                                           ; $4c7e: $a0
	cp   b                                           ; $4c7f: $b8
	dec  de                                          ; $4c80: $1b
	add  c                                           ; $4c81: $81
	inc  a                                           ; $4c82: $3c
	ld   bc, $3c38                                   ; $4c83: $01 $38 $3c
	add  b                                           ; $4c86: $80
	cp   h                                           ; $4c87: $bc
	ld   bc, $d8e2                                   ; $4c88: $01 $e2 $d8
	add  d                                           ; $4c8b: $82
	ldh  [$80], a                                    ; $4c8c: $e0 $80
	add  sp, -$80                                    ; $4c8e: $e8 $80
	ret  z                                           ; $4c90: $c8

	dec  de                                          ; $4c91: $1b
	nop                                              ; $4c92: $00
	jr   nc, jr_099_4cc7                             ; $4c93: $30 $32

	db   $fc                                         ; $4c95: $fc
	ld   sp, hl                                      ; $4c96: $f9
	db   $fc                                         ; $4c97: $fc
	db   $fd                                         ; $4c98: $fd
	db   $fc                                         ; $4c99: $fc
	ldh  a, [c]                                      ; $4c9a: $f2
	ld   hl, sp-$3c                                  ; $4c9b: $f8 $c4
	ldh  a, [$28]                                    ; $4c9d: $f0 $28
	ldh  [rAUD1SWEEP], a                             ; $4c9f: $e0 $10

jr_099_4ca1:
	nop                                              ; $4ca1: $00
	ldh  [rP1], a                                    ; $4ca2: $e0 $00
	or   b                                           ; $4ca4: $b0
	ld   a, a                                        ; $4ca5: $7f
	ld   d, b                                        ; $4ca6: $50
	ld   a, a                                        ; $4ca7: $7f
	and  b                                           ; $4ca8: $a0
	ccf                                              ; $4ca9: $3f
	ld   e, a                                        ; $4caa: $5f
	rra                                              ; $4cab: $1f
	cpl                                              ; $4cac: $2f
	rrca                                             ; $4cad: $0f
	add  b                                           ; $4cae: $80
	rlca                                             ; $4caf: $07
	ld   bc, $0706                                   ; $4cb0: $01 $06 $07
	add  b                                           ; $4cb3: $80
	dec  bc                                          ; $4cb4: $0b
	nop                                              ; $4cb5: $00
	ld   d, $81                                      ; $4cb6: $16 $81
	rlca                                             ; $4cb8: $07
	ld   [$030b], sp                                 ; $4cb9: $08 $0b $03
	inc  b                                           ; $4cbc: $04
	nop                                              ; $4cbd: $00
	inc  bc                                          ; $4cbe: $03
	nop                                              ; $4cbf: $00
	inc  bc                                          ; $4cc0: $03
	nop                                              ; $4cc1: $00
	inc  b                                           ; $4cc2: $04
	add  c                                           ; $4cc3: $81
	inc  bc                                          ; $4cc4: $03
	dec  b                                           ; $4cc5: $05
	add  h                                           ; $4cc6: $84

jr_099_4cc7:
	nop                                              ; $4cc7: $00
	ld   b, b                                        ; $4cc8: $40
	nop                                              ; $4cc9: $00
	and  b                                           ; $4cca: $a0
	add  b                                           ; $4ccb: $80
	add  b                                           ; $4ccc: $80
	ret  nz                                          ; $4ccd: $c0

	inc  bc                                          ; $4cce: $03
	ld   [hl], b                                     ; $4ccf: $70
	ldh  [$e8], a                                    ; $4cd0: $e0 $e8
	ldh  [$84], a                                    ; $4cd2: $e0 $84
	ldh  a, [rP1]                                    ; $4cd4: $f0 $00
	or   b                                           ; $4cd6: $b0
	add  l                                           ; $4cd7: $85
	ldh  a, [rSC]                                    ; $4cd8: $f0 $02
	or   b                                           ; $4cda: $b0
	ldh  a, [rBCPS]                                  ; $4cdb: $f0 $68
	add  c                                           ; $4cdd: $81
	ldh  [rP1], a                                    ; $4cde: $e0 $00
	ldh  a, [$83]                                    ; $4ce0: $f0 $83
	nop                                              ; $4ce2: $00
	ld   a, [bc]                                     ; $4ce3: $0a
	add  b                                           ; $4ce4: $80
	nop                                              ; $4ce5: $00
	ret  nz                                          ; $4ce6: $c0

	add  b                                           ; $4ce7: $80
	ldh  [$c0], a                                    ; $4ce8: $e0 $c0
	ld   [hl], b                                     ; $4cea: $70
	ldh  [rAUD4LEN], a                               ; $4ceb: $e0 $20
	ldh  [$58], a                                    ; $4ced: $e0 $58
	add  l                                           ; $4cef: $85
	ld   d, b                                        ; $4cf0: $50
	ld   bc, $d010                                   ; $4cf1: $01 $10 $d0
	add  b                                           ; $4cf4: $80
	and  b                                           ; $4cf5: $a0
	ld   de, $20e8                                   ; $4cf6: $11 $e8 $20
	sub  b                                           ; $4cf9: $90
	nop                                              ; $4cfa: $00
	ret  c                                           ; $4cfb: $d8

	ld   c, b                                        ; $4cfc: $48
	ld   c, h                                        ; $4cfd: $4c
	db   $10                                         ; $4cfe: $10
	ld   d, e                                        ; $4cff: $53
	nop                                              ; $4d00: $00
	inc  h                                           ; $4d01: $24
	jr   jr_099_4d7d                                 ; $4d02: $18 $79

	ld   [$7078], sp                                 ; $4d04: $08 $78 $70
	db   $fd                                         ; $4d07: $fd
	ld   hl, sp-$80                                  ; $4d08: $f8 $80
	push bc                                          ; $4d0a: $c5
	add  b                                           ; $4d0b: $80
	ld   sp, hl                                      ; $4d0c: $f9
	add  b                                           ; $4d0d: $80
	db   $fd                                         ; $4d0e: $fd
	add  b                                           ; $4d0f: $80
	nop                                              ; $4d10: $00
	add  b                                           ; $4d11: $80
	ld   [bc], a                                     ; $4d12: $02
	nop                                              ; $4d13: $00
	ld   c, l                                        ; $4d14: $4d
	add  c                                           ; $4d15: $81
	inc  c                                           ; $4d16: $0c
	nop                                              ; $4d17: $00
	ld   a, [de]                                     ; $4d18: $1a
	add  e                                           ; $4d19: $83
	jr   jr_099_4d21                                 ; $4d1a: $18 $05

	ld   hl, sp+$38                                  ; $4d1c: $f8 $38
	or   h                                           ; $4d1e: $b4
	jr   nc, jr_099_4d95                             ; $4d1f: $30 $74

jr_099_4d21:
	ld   [hl], b                                     ; $4d21: $70
	add  b                                           ; $4d22: $80
	db   $10                                         ; $4d23: $10
	ld   b, $56                                      ; $4d24: $06 $56
	db   $10                                         ; $4d26: $10
	jr   nz, jr_099_4d29                             ; $4d27: $20 $00

jr_099_4d29:
	inc  bc                                          ; $4d29: $03
	nop                                              ; $4d2a: $00
	sbc  c                                           ; $4d2b: $99
	adc  l                                           ; $4d2c: $8d
	nop                                              ; $4d2d: $00
	rrca                                             ; $4d2e: $0f
	rrca                                             ; $4d2f: $0f
	add  hl, bc                                      ; $4d30: $09
	ld   a, c                                        ; $4d31: $79
	ld   b, [hl]                                     ; $4d32: $46
	rst  ToBoot                                         ; $4d33: $c7
	jr   nz, jr_099_4d58                             ; $4d34: $20 $22

	call nz, $04d7                                   ; $4d36: $c4 $d7 $04
	rst  $30                                         ; $4d39: $f7
	inc  bc                                          ; $4d3a: $03
	cp   a                                           ; $4d3b: $bf
	rra                                              ; $4d3c: $1f
	rst  $30                                         ; $4d3d: $f7
	or   a                                           ; $4d3e: $b7
	add  b                                           ; $4d3f: $80
	add  e                                           ; $4d40: $83
	add  b                                           ; $4d41: $80
	ld   a, [hl]                                     ; $4d42: $7e
	add  b                                           ; $4d43: $80
	ld   a, $80                                      ; $4d44: $3e $80
	add  b                                           ; $4d46: $80
	add  b                                           ; $4d47: $80
	ld   h, b                                        ; $4d48: $60
	dec  c                                           ; $4d49: $0d
	xor  l                                           ; $4d4a: $ad
	jr   nz, jr_099_4d85                             ; $4d4b: $20 $38

	jr   nc, jr_099_4d85                             ; $4d4d: $30 $36

	jr   nc, jr_099_4d85                             ; $4d4f: $30 $34

	jr   nc, @+$3e                                   ; $4d51: $30 $3c

	jr   c, @+$5a                                    ; $4d53: $38 $58

	jr   @+$20                                       ; $4d55: $18 $1e

	inc  e                                           ; $4d57: $1c

jr_099_4d58:
	add  b                                           ; $4d58: $80
	jr   jr_099_4d61                                 ; $4d59: $18 $06

	ld   d, b                                        ; $4d5b: $50
	ld   d, $04                                      ; $4d5c: $16 $04
	inc  c                                           ; $4d5e: $0c
	ret  nz                                          ; $4d5f: $c0

	db   $10                                         ; $4d60: $10

jr_099_4d61:
	and  b                                           ; $4d61: $a0
	adc  l                                           ; $4d62: $8d
	nop                                              ; $4d63: $00
	ld   a, [bc]                                     ; $4d64: $0a
	ld   [$1800], sp                                 ; $4d65: $08 $00 $18
	nop                                              ; $4d68: $00
	ld   sp, $6200                                   ; $4d69: $31 $00 $62
	ld   bc, $00c5                                   ; $4d6c: $01 $c5 $00
	adc  b                                           ; $4d6f: $88
	add  b                                           ; $4d70: $80
	nop                                              ; $4d71: $00
	dec  c                                           ; $4d72: $0d
	dec  b                                           ; $4d73: $05
	ld   d, $0f                                      ; $4d74: $16 $0f
	cpl                                              ; $4d76: $2f
	rrca                                             ; $4d77: $0f
	ld   l, c                                        ; $4d78: $69
	dec  c                                           ; $4d79: $0d
	call z, $240e                                    ; $4d7a: $cc $0e $24

jr_099_4d7d:
	rrca                                             ; $4d7d: $0f
	add  [hl]                                        ; $4d7e: $86
	rrca                                             ; $4d7f: $0f
	ld   l, a                                        ; $4d80: $6f
	add  e                                           ; $4d81: $83
	rlca                                             ; $4d82: $07
	ld   c, $29                                      ; $4d83: $0e $29

jr_099_4d85:
	dec  sp                                          ; $4d85: $3b
	or   a                                           ; $4d86: $b7
	dec  c                                           ; $4d87: $0d
	add  hl, bc                                      ; $4d88: $09
	pop  af                                          ; $4d89: $f1
	ret  z                                           ; $4d8a: $c8

	db   $fd                                         ; $4d8b: $fd
	pop  bc                                          ; $4d8c: $c1
	rrca                                             ; $4d8d: $0f
	ld   [$71c3], sp                                 ; $4d8e: $08 $c3 $71
	or   e                                           ; $4d91: $b3
	add  e                                           ; $4d92: $83
	add  b                                           ; $4d93: $80
	add  c                                           ; $4d94: $81

jr_099_4d95:
	rlca                                             ; $4d95: $07
	jp   $dfc5                                       ; $4d96: $c3 $c5 $df


	ld   d, a                                        ; $4d99: $57
	xor  a                                           ; $4d9a: $af
	and  a                                           ; $4d9b: $a7
	rrca                                             ; $4d9c: $0f
	rst  $30                                         ; $4d9d: $f7
	add  l                                           ; $4d9e: $85
	rst  $38                                         ; $4d9f: $ff
	add  d                                           ; $4da0: $82
	cp   $80                                         ; $4da1: $fe $80
	db   $fd                                         ; $4da3: $fd
	ld   [bc], a                                     ; $4da4: $02
	db   $fc                                         ; $4da5: $fc
	rst  $38                                         ; $4da6: $ff
	ei                                               ; $4da7: $fb
	add  b                                           ; $4da8: $80
	cp   $06                                         ; $4da9: $fe $06
	db   $fd                                         ; $4dab: $fd
	ld   a, [$fcff]                                  ; $4dac: $fa $ff $fc
	cp   $fa                                         ; $4daf: $fe $fa
	db   $fc                                         ; $4db1: $fc
	add  b                                           ; $4db2: $80
	cp   $03                                         ; $4db3: $fe $03
	ld   a, [$feff]                                  ; $4db5: $fa $ff $fe
	rst  $38                                         ; $4db8: $ff
	add  b                                           ; $4db9: $80
	cp   $80                                         ; $4dba: $fe $80
	db   $fc                                         ; $4dbc: $fc

jr_099_4dbd:
	jr   jr_099_4dbd                                 ; $4dbd: $18 $fe

	rst  $38                                         ; $4dbf: $ff
	cp   [hl]                                        ; $4dc0: $be
	cp   a                                           ; $4dc1: $bf
	ld   e, $c0                                      ; $4dc2: $1e $c0
	ld   d, b                                        ; $4dc4: $50
	ldh  [$e1], a                                    ; $4dc5: $e0 $e1
	ldh  [$60], a                                    ; $4dc7: $e0 $60
	ldh  [$e8], a                                    ; $4dc9: $e0 $e8
	nop                                              ; $4dcb: $00
	add  b                                           ; $4dcc: $80
	ldh  a, [$b4]                                    ; $4dcd: $f0 $b4
	ld   hl, sp+$38                                  ; $4dcf: $f8 $38
	nop                                              ; $4dd1: $00
	ld   [bc], a                                     ; $4dd2: $02
	db   $10                                         ; $4dd3: $10
	add  b                                           ; $4dd4: $80
	sbc  b                                           ; $4dd5: $98
	ld   de, $1880                                   ; $4dd6: $11 $80 $18
	ld   [$7a7e], sp                                 ; $4dd9: $08 $7e $7a
	sbc  $f6                                         ; $4ddc: $de $f6
	or   [hl]                                        ; $4dde: $b6
	add  [hl]                                        ; $4ddf: $86
	inc  c                                           ; $4de0: $0c
	db   $f4                                         ; $4de1: $f4
	db   $fc                                         ; $4de2: $fc
	add  b                                           ; $4de3: $80
	rst  $38                                         ; $4de4: $ff
	add  hl, bc                                      ; $4de5: $09
	ld   sp, hl                                      ; $4de6: $f9
	rst  $38                                         ; $4de7: $ff
	cp   $f8                                         ; $4de8: $fe $f8
	ld   sp, hl                                      ; $4dea: $f9
	ei                                               ; $4deb: $fb
	ld   sp, hl                                      ; $4dec: $f9
	ei                                               ; $4ded: $fb
	ld   a, e                                        ; $4dee: $7b
	ld   a, a                                        ; $4def: $7f
	add  b                                           ; $4df0: $80
	dec  a                                           ; $4df1: $3d
	inc  de                                          ; $4df2: $13
	ld   [$555e], sp                                 ; $4df3: $08 $5e $55
	ld   c, a                                        ; $4df6: $4f
	ld   c, e                                        ; $4df7: $4b
	inc  de                                          ; $4df8: $13
	ld   d, b                                        ; $4df9: $50
	nop                                              ; $4dfa: $00
	inc  a                                           ; $4dfb: $3c
	nop                                              ; $4dfc: $00
	ld   [hl], c                                     ; $4dfd: $71
	nop                                              ; $4dfe: $00
	ld   a, b                                        ; $4dff: $78
	nop                                              ; $4e00: $00
	adc  l                                           ; $4e01: $8d
	nop                                              ; $4e02: $00
	dec  a                                           ; $4e03: $3d
	nop                                              ; $4e04: $00
	ld   a, d                                        ; $4e05: $7a
	cp   a                                           ; $4e06: $bf
	add  b                                           ; $4e07: $80
	rst  $38                                         ; $4e08: $ff
	ld   [bc], a                                     ; $4e09: $02
	rra                                              ; $4e0a: $1f
	ld   a, a                                        ; $4e0b: $7f
	and  a                                           ; $4e0c: $a7
	add  b                                           ; $4e0d: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4e0e: $cf
	inc  b                                           ; $4e0f: $04
	rst  $28                                         ; $4e10: $ef
	rst  $20                                         ; $4e11: $e7
	rst  $28                                         ; $4e12: $ef
	cp   a                                           ; $4e13: $bf
	rst  JumpTable                                         ; $4e14: $df
	add  b                                           ; $4e15: $80
	ld   a, [hl]                                     ; $4e16: $7e
	ld   a, [de]                                     ; $4e17: $1a
	or   b                                           ; $4e18: $b0
	ld   sp, hl                                      ; $4e19: $f9
	adc  c                                           ; $4e1a: $89
	add  $47                                         ; $4e1b: $c6 $47
	jr   nz, jr_099_4e45                             ; $4e1d: $20 $26

	ret  nz                                          ; $4e1f: $c0

	db   $d3                                         ; $4e20: $d3
	nop                                              ; $4e21: $00
	rst  $30                                         ; $4e22: $f7
	nop                                              ; $4e23: $00
	cp   h                                           ; $4e24: $bc
	nop                                              ; $4e25: $00
	add  sp, $00                                     ; $4e26: $e8 $00
	ld   b, b                                        ; $4e28: $40
	nop                                              ; $4e29: $00
	jr   jr_099_4e2c                                 ; $4e2a: $18 $00

jr_099_4e2c:
	ld   sp, $6200                                   ; $4e2c: $31 $00 $62
	ld   bc, $03c5                                   ; $4e2f: $01 $c5 $03
	adc  e                                           ; $4e32: $8b
	add  b                                           ; $4e33: $80
	nop                                              ; $4e34: $00
	dec  c                                           ; $4e35: $0d
	inc  b                                           ; $4e36: $04
	rla                                              ; $4e37: $17
	rrca                                             ; $4e38: $0f
	cpl                                              ; $4e39: $2f
	rrca                                             ; $4e3a: $0f
	ld   l, c                                        ; $4e3b: $69
	dec  c                                           ; $4e3c: $0d
	call z, $240e                                    ; $4e3d: $cc $0e $24
	rrca                                             ; $4e40: $0f
	add  [hl]                                        ; $4e41: $86
	rrca                                             ; $4e42: $0f
	ld   l, a                                        ; $4e43: $6f
	add  e                                           ; $4e44: $83

jr_099_4e45:
	rlca                                             ; $4e45: $07
	jr   jr_099_4e71                                 ; $4e46: $18 $29

	dec  sp                                          ; $4e48: $3b
	or   a                                           ; $4e49: $b7
	dec  c                                           ; $4e4a: $0d
	add  hl, bc                                      ; $4e4b: $09
	pop  af                                          ; $4e4c: $f1
	adc  b                                           ; $4e4d: $88
	db   $fd                                         ; $4e4e: $fd
	ld   sp, hl                                      ; $4e4f: $f9
	rst  $38                                         ; $4e50: $ff
	cp   h                                           ; $4e51: $bc
	ccf                                              ; $4e52: $3f
	dec  bc                                          ; $4e53: $0b
	rrca                                             ; $4e54: $0f
	dec  b                                           ; $4e55: $05
	inc  bc                                          ; $4e56: $03
	add  e                                           ; $4e57: $83
	jp   $dfc5                                       ; $4e58: $c3 $c5 $df


	ld   d, a                                        ; $4e5b: $57
	xor  a                                           ; $4e5c: $af
	and  a                                           ; $4e5d: $a7
	rrca                                             ; $4e5e: $0f
	rst  $30                                         ; $4e5f: $f7
	add  l                                           ; $4e60: $85
	rst  $38                                         ; $4e61: $ff
	add  d                                           ; $4e62: $82
	cp   $80                                         ; $4e63: $fe $80
	db   $fd                                         ; $4e65: $fd
	ld   [bc], a                                     ; $4e66: $02
	db   $fc                                         ; $4e67: $fc
	rst  $38                                         ; $4e68: $ff
	ei                                               ; $4e69: $fb
	add  b                                           ; $4e6a: $80
	cp   $01                                         ; $4e6b: $fe $01
	db   $fd                                         ; $4e6d: $fd
	ld   a, [$ff81]                                  ; $4e6e: $fa $81 $ff

jr_099_4e71:
	nop                                              ; $4e71: $00
	ld   hl, sp-$80                                  ; $4e72: $f8 $80
	rst  $38                                         ; $4e74: $ff
	ld   [bc], a                                     ; $4e75: $02
	db   $fc                                         ; $4e76: $fc
	ld   hl, sp-$04                                  ; $4e77: $f8 $fc
	add  b                                           ; $4e79: $80
	rst  $38                                         ; $4e7a: $ff
	add  b                                           ; $4e7b: $80
	cp   $80                                         ; $4e7c: $fe $80
	ld   hl, sp+$10                                  ; $4e7e: $f8 $10

Call_099_4e80:
	cp   $ff                                         ; $4e80: $fe $ff
	cp   [hl]                                        ; $4e82: $be
	cp   a                                           ; $4e83: $bf
	ld   e, $c0                                      ; $4e84: $1e $c0
	ld   d, b                                        ; $4e86: $50
	ldh  [$e1], a                                    ; $4e87: $e0 $e1
	ldh  [$60], a                                    ; $4e89: $e0 $60
	ldh  [$e8], a                                    ; $4e8b: $e0 $e8
	nop                                              ; $4e8d: $00
	add  b                                           ; $4e8e: $80
	ldh  a, [$94]                                    ; $4e8f: $f0 $94
	add  c                                           ; $4e91: $81
	ld   hl, sp+$04                                  ; $4e92: $f8 $04
	ld   a, [$1cfc]                                  ; $4e94: $fa $fc $1c
	inc  c                                           ; $4e97: $0c
	dec  c                                           ; $4e98: $0d
	add  b                                           ; $4e99: $80
	ld   [bc], a                                     ; $4e9a: $02
	inc  hl                                          ; $4e9b: $23
	ld   h, d                                        ; $4e9c: $62
	ld   [hl], d                                     ; $4e9d: $72
	jp   nc, $befe                                   ; $4e9e: $d2 $fe $be

	add  [hl]                                        ; $4ea1: $86
	inc  c                                           ; $4ea2: $0c
	db   $f4                                         ; $4ea3: $f4
	db   $fc                                         ; $4ea4: $fc
	rst  $30                                         ; $4ea5: $f7
	nop                                              ; $4ea6: $00
	jr   jr_099_4ea9                                 ; $4ea7: $18 $00

jr_099_4ea9:
	ld   sp, $6200                                   ; $4ea9: $31 $00 $62
	ld   bc, $03c5                                   ; $4eac: $01 $c5 $03
	adc  e                                           ; $4eaf: $8b
	rlca                                             ; $4eb0: $07
	ld   b, $07                                      ; $4eb1: $06 $07
	ld   d, $0f                                      ; $4eb3: $16 $0f
	cpl                                              ; $4eb5: $2f
	add  hl, bc                                      ; $4eb6: $09
	ld   l, c                                        ; $4eb7: $69
	inc  c                                           ; $4eb8: $0c
	ret  z                                           ; $4eb9: $c8

	ld   c, $24                                      ; $4eba: $0e $24
	rrca                                             ; $4ebc: $0f
	add  [hl]                                        ; $4ebd: $86
	rrca                                             ; $4ebe: $0f
	ld   l, a                                        ; $4ebf: $6f
	add  e                                           ; $4ec0: $83
	rlca                                             ; $4ec1: $07
	ld   a, [bc]                                     ; $4ec2: $0a
	add  hl, hl                                      ; $4ec3: $29
	dec  sp                                          ; $4ec4: $3b
	or   a                                           ; $4ec5: $b7
	dec  c                                           ; $4ec6: $0d
	add  hl, bc                                      ; $4ec7: $09
	pop  af                                          ; $4ec8: $f1
	adc  b                                           ; $4ec9: $88
	db   $fd                                         ; $4eca: $fd
	ld   sp, hl                                      ; $4ecb: $f9
	rst  $38                                         ; $4ecc: $ff
	ld   a, h                                        ; $4ecd: $7c
	add  e                                           ; $4ece: $83
	rst  $38                                         ; $4ecf: $ff
	ld   [bc], a                                     ; $4ed0: $02
	daa                                              ; $4ed1: $27
	rst  $38                                         ; $4ed2: $ff
	rst  JumpTable                                         ; $4ed3: $df
	add  b                                           ; $4ed4: $80
	ld   a, a                                        ; $4ed5: $7f
	add  b                                           ; $4ed6: $80
	rlca                                             ; $4ed7: $07
	ld   bc, $f70f                                   ; $4ed8: $01 $0f $f7
	add  l                                           ; $4edb: $85
	rst  $38                                         ; $4edc: $ff
	add  d                                           ; $4edd: $82
	cp   $80                                         ; $4ede: $fe $80
	db   $fd                                         ; $4ee0: $fd
	ld   [bc], a                                     ; $4ee1: $02
	db   $fc                                         ; $4ee2: $fc
	rst  $38                                         ; $4ee3: $ff
	ei                                               ; $4ee4: $fb
	add  b                                           ; $4ee5: $80
	cp   $01                                         ; $4ee6: $fe $01
	db   $fd                                         ; $4ee8: $fd
	ld   a, [$ff85]                                  ; $4ee9: $fa $85 $ff
	ld   [bc], a                                     ; $4eec: $02
	ld   sp, hl                                      ; $4eed: $f9
	rst  $38                                         ; $4eee: $ff
	cp   $80                                         ; $4eef: $fe $80
	rst  $38                                         ; $4ef1: $ff
	nop                                              ; $4ef2: $00
	ld   hl, sp-$80                                  ; $4ef3: $f8 $80
	db   $fc                                         ; $4ef5: $fc
	db   $10                                         ; $4ef6: $10
	cp   $ff                                         ; $4ef7: $fe $ff
	cp   [hl]                                        ; $4ef9: $be
	cp   a                                           ; $4efa: $bf
	ld   e, $c0                                      ; $4efb: $1e $c0
	ld   d, b                                        ; $4efd: $50
	ldh  [$e1], a                                    ; $4efe: $e0 $e1
	ldh  [$60], a                                    ; $4f00: $e0 $60
	ldh  [$e8], a                                    ; $4f02: $e0 $e8
	nop                                              ; $4f04: $00
	add  b                                           ; $4f05: $80
	ldh  a, [$94]                                    ; $4f06: $f0 $94
	add  c                                           ; $4f08: $81
	ld   hl, sp+$00                                  ; $4f09: $f8 $00
	ld   [$fc81], a                                  ; $4f0b: $ea $81 $fc
	ld   b, $fd                                      ; $4f0e: $06 $fd
	cp   $ee                                         ; $4f10: $fe $ee
	cp   $1e                                         ; $4f12: $fe $1e
	ldh  [c], a                                      ; $4f14: $e2
	and  $80                                         ; $4f15: $e6 $80
	ld   b, $02                                      ; $4f17: $06 $02
	inc  c                                           ; $4f19: $0c
	db   $f4                                         ; $4f1a: $f4
	db   $fc                                         ; $4f1b: $fc
	add  b                                           ; $4f1c: $80
	rst  $38                                         ; $4f1d: $ff
	inc  b                                           ; $4f1e: $04
	ld   sp, hl                                      ; $4f1f: $f9
	ei                                               ; $4f20: $fb
	ld   a, [$fbfc]                                  ; $4f21: $fa $fc $fb
	add  c                                           ; $4f24: $81
	rst  $38                                         ; $4f25: $ff
	add  b                                           ; $4f26: $80
	ld   a, a                                        ; $4f27: $7f
	add  b                                           ; $4f28: $80
	ccf                                              ; $4f29: $3f
	inc  de                                          ; $4f2a: $13
	rrca                                             ; $4f2b: $0f
	ld   e, a                                        ; $4f2c: $5f
	ld   d, a                                        ; $4f2d: $57
	ld   c, a                                        ; $4f2e: $4f
	ld   c, e                                        ; $4f2f: $4b
	inc  de                                          ; $4f30: $13
	ld   d, b                                        ; $4f31: $50
	nop                                              ; $4f32: $00
	inc  a                                           ; $4f33: $3c
	nop                                              ; $4f34: $00
	ld   [hl], c                                     ; $4f35: $71
	nop                                              ; $4f36: $00
	ld   a, b                                        ; $4f37: $78
	nop                                              ; $4f38: $00
	adc  l                                           ; $4f39: $8d
	nop                                              ; $4f3a: $00
	dec  a                                           ; $4f3b: $3d
	nop                                              ; $4f3c: $00
	ld   a, d                                        ; $4f3d: $7a
	cp   a                                           ; $4f3e: $bf
	add  b                                           ; $4f3f: $80
	rst  $38                                         ; $4f40: $ff
	inc  b                                           ; $4f41: $04
	ld   a, a                                        ; $4f42: $7f
	rst  $38                                         ; $4f43: $ff
	add  a                                           ; $4f44: $87
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $4f45: $cf
	scf                                              ; $4f46: $37
	add  e                                           ; $4f47: $83
	rst  $38                                         ; $4f48: $ff
	add  b                                           ; $4f49: $80
	cp   $10                                         ; $4f4a: $fe $10
	ldh  a, [$f9]                                    ; $4f4c: $f0 $f9
	adc  c                                           ; $4f4e: $89
	add  $47                                         ; $4f4f: $c6 $47
	jr   nz, jr_099_4f79                             ; $4f51: $20 $26

	ret  nz                                          ; $4f53: $c0

	db   $d3                                         ; $4f54: $d3
	nop                                              ; $4f55: $00

jr_099_4f56:
	rst  $30                                         ; $4f56: $f7
	nop                                              ; $4f57: $00
	cp   h                                           ; $4f58: $bc
	nop                                              ; $4f59: $00
	add  sp, $00                                     ; $4f5a: $e8 $00
	ld   c, b                                        ; $4f5c: $48
	rst  $38                                         ; $4f5d: $ff
	nop                                              ; $4f5e: $00
	rst  $38                                         ; $4f5f: $ff
	nop                                              ; $4f60: $00
	rst  $38                                         ; $4f61: $ff
	nop                                              ; $4f62: $00
	rst  $38                                         ; $4f63: $ff
	nop                                              ; $4f64: $00
	ld   sp, hl                                      ; $4f65: $f9
	nop                                              ; $4f66: $00
	inc  [hl]                                        ; $4f67: $34
	ld   bc, $0007                                   ; $4f68: $01 $07 $00
	dec  de                                          ; $4f6b: $1b
	dec  bc                                          ; $4f6c: $0b
	and  a                                           ; $4f6d: $a7
	sbc  [hl]                                        ; $4f6e: $9e
	sub  [hl]                                        ; $4f6f: $96
	adc  h                                           ; $4f70: $8c
	ld   c, h                                        ; $4f71: $4c
	add  b                                           ; $4f72: $80
	add  hl, bc                                      ; $4f73: $09
	add  b                                           ; $4f74: $80
	dec  de                                          ; $4f75: $1b
	ld   bc, $9313                                   ; $4f76: $01 $13 $93

jr_099_4f79:
	add  b                                           ; $4f79: $80
	sub  [hl]                                        ; $4f7a: $96
	add  b                                           ; $4f7b: $80
	sub  $80                                         ; $4f7c: $d6 $80
	ld   b, d                                        ; $4f7e: $42
	add  b                                           ; $4f7f: $80
	and  e                                           ; $4f80: $a3
	inc  b                                           ; $4f81: $04
	add  hl, bc                                      ; $4f82: $09
	ld   sp, hl                                      ; $4f83: $f9
	ldh  a, [c]                                      ; $4f84: $f2
	rst  $38                                         ; $4f85: $ff
	db   $fd                                         ; $4f86: $fd
	adc  b                                           ; $4f87: $88
	rst  $38                                         ; $4f88: $ff
	add  e                                           ; $4f89: $83
	ld   a, a                                        ; $4f8a: $7f
	nop                                              ; $4f8b: $00
	rst  $38                                         ; $4f8c: $ff
	add  e                                           ; $4f8d: $83
	ccf                                              ; $4f8e: $3f
	nop                                              ; $4f8f: $00
	ld   a, a                                        ; $4f90: $7f
	add  c                                           ; $4f91: $81
	rra                                              ; $4f92: $1f
	ld   bc, $0f3f                                   ; $4f93: $01 $3f $0f
	add  b                                           ; $4f96: $80
	rra                                              ; $4f97: $1f
	ld   [$0f17], sp                                 ; $4f98: $08 $17 $0f
	dec  bc                                          ; $4f9b: $0b
	rlca                                             ; $4f9c: $07
	inc  b                                           ; $4f9d: $04
	inc  bc                                          ; $4f9e: $03
	ld   [bc], a                                     ; $4f9f: $02
	nop                                              ; $4fa0: $00
	ld   bc, $0080                                   ; $4fa1: $01 $80 $00
	ld   bc, $0001                                   ; $4fa4: $01 $01 $00
	add  d                                           ; $4fa7: $82
	inc  b                                           ; $4fa8: $04
	add  e                                           ; $4fa9: $83
	ld   [bc], a                                     ; $4faa: $02
	adc  b                                           ; $4fab: $88
	nop                                              ; $4fac: $00
	add  c                                           ; $4fad: $81
	ld   [bc], a                                     ; $4fae: $02
	add  h                                           ; $4faf: $84
	nop                                              ; $4fb0: $00
	ld   b, $1a                                      ; $4fb1: $06 $1a
	add  hl, bc                                      ; $4fb3: $09
	and  l                                           ; $4fb4: $a5
	sbc  [hl]                                        ; $4fb5: $9e
	sub  [hl]                                        ; $4fb6: $96
	adc  h                                           ; $4fb7: $8c
	ld   c, h                                        ; $4fb8: $4c
	add  b                                           ; $4fb9: $80
	add  hl, bc                                      ; $4fba: $09
	add  b                                           ; $4fbb: $80
	dec  de                                          ; $4fbc: $1b
	ld   bc, $9313                                   ; $4fbd: $01 $13 $93
	add  b                                           ; $4fc0: $80
	sub  [hl]                                        ; $4fc1: $96
	add  b                                           ; $4fc2: $80
	sub  $80                                         ; $4fc3: $d6 $80
	ld   b, d                                        ; $4fc5: $42
	add  b                                           ; $4fc6: $80
	and  e                                           ; $4fc7: $a3
	inc  b                                           ; $4fc8: $04
	ld   l, c                                        ; $4fc9: $69
	sbc  c                                           ; $4fca: $99
	dec  bc                                          ; $4fcb: $0b
	ld   b, $02                                      ; $4fcc: $06 $02
	add  e                                           ; $4fce: $83
	nop                                              ; $4fcf: $00
	ld   bc, $9669                                   ; $4fd0: $01 $69 $96
	add  b                                           ; $4fd3: $80
	jr   nz, jr_099_4f56                             ; $4fd4: $20 $80

	ld   b, e                                        ; $4fd6: $43
	add  b                                           ; $4fd7: $80
	adc  $80                                         ; $4fd8: $ce $80
	sbc  b                                           ; $4fda: $98
	add  b                                           ; $4fdb: $80
	inc  sp                                          ; $4fdc: $33
	add  b                                           ; $4fdd: $80
	ld   h, h                                        ; $4fde: $64
	add  b                                           ; $4fdf: $80
	ld   h, e                                        ; $4fe0: $63
	add  b                                           ; $4fe1: $80
	ld   b, h                                        ; $4fe2: $44
	dec  b                                           ; $4fe3: $05
	ld   d, $17                                      ; $4fe4: $16 $17
	ld   l, c                                        ; $4fe6: $69
	ld   [hl], a                                     ; $4fe7: $77
	ld   h, e                                        ; $4fe8: $63
	add  e                                           ; $4fe9: $83
	add  b                                           ; $4fea: $80
	inc  bc                                          ; $4feb: $03
	add  h                                           ; $4fec: $84
	ld   bc, $8006                                   ; $4fed: $01 $06 $80
	nop                                              ; $4ff0: $00
	add  b                                           ; $4ff1: $80
	ld   [hl], b                                     ; $4ff2: $70
	ld   d, b                                        ; $4ff3: $50
	ret  nz                                          ; $4ff4: $c0

	db   $10                                         ; $4ff5: $10
	add  d                                           ; $4ff6: $82
	nop                                              ; $4ff7: $00
	ld   [bc], a                                     ; $4ff8: $02
	ld   [$f0f4], sp                                 ; $4ff9: $08 $f4 $f0
	add  b                                           ; $4ffc: $80
	add  b                                           ; $4ffd: $80
	inc  bc                                          ; $4ffe: $03
	inc  c                                           ; $4fff: $0c
	ld   c, $b8                                      ; $5000: $0e $b8
	cp   c                                           ; $5002: $b9
	add  b                                           ; $5003: $80
	ld   h, b                                        ; $5004: $60
	add  b                                           ; $5005: $80
	ld   b, [hl]                                     ; $5006: $46
	add  b                                           ; $5007: $80
	add  hl, de                                      ; $5008: $19
	add  b                                           ; $5009: $80
	add  b                                           ; $500a: $80
	ld   bc, $c808                                   ; $500b: $01 $08 $c8
	add  b                                           ; $500e: $80
	ldh  [rP1], a                                    ; $500f: $e0 $00
	ccf                                              ; $5011: $3f
	add  d                                           ; $5012: $82
	nop                                              ; $5013: $00
	add  b                                           ; $5014: $80
	add  b                                           ; $5015: $80
	add  d                                           ; $5016: $82
	nop                                              ; $5017: $00
	nop                                              ; $5018: $00
	add  b                                           ; $5019: $80
	add  b                                           ; $501a: $80
	nop                                              ; $501b: $00
	nop                                              ; $501c: $00
	add  b                                           ; $501d: $80
	add  h                                           ; $501e: $84
	nop                                              ; $501f: $00
	add  b                                           ; $5020: $80
	add  b                                           ; $5021: $80
	sub  c                                           ; $5022: $91
	nop                                              ; $5023: $00
	rlca                                             ; $5024: $07
	add  b                                           ; $5025: $80
	nop                                              ; $5026: $00
	ld   b, b                                        ; $5027: $40
	add  b                                           ; $5028: $80
	or   b                                           ; $5029: $b0
	ret  nz                                          ; $502a: $c0

	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $502b: $cf
	ret  nz                                          ; $502c: $c0

	add  b                                           ; $502d: $80
	pop  bc                                          ; $502e: $c1
	nop                                              ; $502f: $00
	ret  nz                                          ; $5030: $c0

	add  b                                           ; $5031: $80
	ret  nc                                          ; $5032: $d0

	dec  b                                           ; $5033: $05
	ret  c                                           ; $5034: $d8

	ret  nc                                          ; $5035: $d0

	db   $ec                                         ; $5036: $ec
	ret  z                                           ; $5037: $c8

	xor  $ae                                         ; $5038: $ee $ae
	add  c                                           ; $503a: $81
	rst  $28                                         ; $503b: $ef
	dec  b                                           ; $503c: $05
	sbc  h                                           ; $503d: $9c
	nop                                              ; $503e: $00
	db   $fc                                         ; $503f: $fc
	ldh  [$7f], a                                    ; $5040: $e0 $7f
	ld   a, h                                        ; $5042: $7c
	add  b                                           ; $5043: $80
	rra                                              ; $5044: $1f
	add  b                                           ; $5045: $80
	rrca                                             ; $5046: $0f
	add  b                                           ; $5047: $80
	rlca                                             ; $5048: $07
	add  b                                           ; $5049: $80
	inc  bc                                          ; $504a: $03
	add  b                                           ; $504b: $80
	add  c                                           ; $504c: $81
	add  b                                           ; $504d: $80
	ret  nz                                          ; $504e: $c0

	add  b                                           ; $504f: $80
	ldh  [$80], a                                    ; $5050: $e0 $80
	ldh  a, [$80]                                    ; $5052: $f0 $80
	ld   hl, sp-$80                                  ; $5054: $f8 $80
	db   $fc                                         ; $5056: $fc
	ld   b, $f8                                      ; $5057: $06 $f8
	ld   a, [$fbf2]                                  ; $5059: $fa $f2 $fb
	db   $eb                                         ; $505c: $eb
	rst  $30                                         ; $505d: $f7
	add  sp, -$7d                                    ; $505e: $e8 $83
	nop                                              ; $5060: $00
	dec  c                                           ; $5061: $0d
	ret  nz                                          ; $5062: $c0

	nop                                              ; $5063: $00
	ldh  [$c0], a                                    ; $5064: $e0 $c0
	ldh  a, [$e0]                                    ; $5066: $f0 $e0
	ld   hl, sp-$10                                  ; $5068: $f8 $f0
	call z, $bec8                                    ; $506a: $cc $c8 $be
	cp   h                                           ; $506d: $bc
	ld   b, b                                        ; $506e: $40
	ld   a, h                                        ; $506f: $7c
	add  c                                           ; $5070: $81

jr_099_5071:
	inc  a                                           ; $5071: $3c
	ld   bc, $1d1c                                   ; $5072: $01 $1c $1d
	add  b                                           ; $5075: $80
	ld   c, $80                                      ; $5076: $0e $80
	ld   b, $80                                      ; $5078: $06 $80
	nop                                              ; $507a: $00
	dec  e                                           ; $507b: $1d
	add  b                                           ; $507c: $80
	ld   a, a                                        ; $507d: $7f
	nop                                              ; $507e: $00
	rlca                                             ; $507f: $07
	inc  b                                           ; $5080: $04
	dec  c                                           ; $5081: $0d
	ld   bc, $4675                                   ; $5082: $01 $75 $46
	ld   e, a                                        ; $5085: $5f
	db   $10                                         ; $5086: $10
	rst  JumpTable                                         ; $5087: $df
	ld   h, e                                        ; $5088: $63
	ld   a, [hl]                                     ; $5089: $7e
	ld   c, $78                                      ; $508a: $0e $78
	jr   c, jr_099_5071                              ; $508c: $38 $e3

	ldh  [$84], a                                    ; $508e: $e0 $84
	adc  e                                           ; $5090: $8b
	or   b                                           ; $5091: $b0
	adc  h                                           ; $5092: $8c
	pop  bc                                          ; $5093: $c1
	ldh  a, [rP1]                                    ; $5094: $f0 $00
	ld   b, $78                                      ; $5096: $06 $78
	nop                                              ; $5098: $00
	add  b                                           ; $5099: $80
	add  l                                           ; $509a: $85
	nop                                              ; $509b: $00
	inc  e                                           ; $509c: $1c
	inc  bc                                          ; $509d: $03
	inc  b                                           ; $509e: $04
	dec  bc                                          ; $509f: $0b
	inc  de                                          ; $50a0: $13
	ld   h, a                                        ; $50a1: $67
	ld   b, a                                        ; $50a2: $47
	rst  JumpTable                                         ; $50a3: $df
	inc  de                                          ; $50a4: $13
	ld   e, a                                        ; $50a5: $5f
	ld   h, e                                        ; $50a6: $63
	rst  $38                                         ; $50a7: $ff
	rrca                                             ; $50a8: $0f
	ld   hl, sp+$38                                  ; $50a9: $f8 $38
	db   $e3                                         ; $50ab: $e3
	ldh  [$84], a                                    ; $50ac: $e0 $84
	adc  e                                           ; $50ae: $8b
	jr   nc, jr_099_50bd                             ; $50af: $30 $0c

	ld   b, c                                        ; $50b1: $41
	or   b                                           ; $50b2: $b0
	ld   bc, $18c7                                   ; $50b3: $01 $c7 $18
	nop                                              ; $50b6: $00
	db   $10                                         ; $50b7: $10
	ld   [hl], b                                     ; $50b8: $70

jr_099_50b9:
	add  b                                           ; $50b9: $80
	adc  c                                           ; $50ba: $89
	nop                                              ; $50bb: $00
	inc  bc                                          ; $50bc: $03

jr_099_50bd:
	ret  nz                                          ; $50bd: $c0

	nop                                              ; $50be: $00
	and  b                                           ; $50bf: $a0
	add  b                                           ; $50c0: $80
	add  [hl]                                        ; $50c1: $86
	ret  nz                                          ; $50c2: $c0

	add  b                                           ; $50c3: $80
	add  b                                           ; $50c4: $80
	rlca                                             ; $50c5: $07
	jr   nz, jr_099_50c8                             ; $50c6: $20 $00

jr_099_50c8:
	ld   b, b                                        ; $50c8: $40
	nop                                              ; $50c9: $00
	add  b                                           ; $50ca: $80
	nop                                              ; $50cb: $00
	adc  h                                           ; $50cc: $8c
	ld   b, b                                        ; $50cd: $40
	add  b                                           ; $50ce: $80
	ld   c, d                                        ; $50cf: $4a
	dec  bc                                          ; $50d0: $0b
	xor  b                                           ; $50d1: $a8
	ld   [bc], a                                     ; $50d2: $02
	rla                                              ; $50d3: $17
	ld   b, e                                        ; $50d4: $43
	dec  bc                                          ; $50d5: $0b
	add  hl, hl                                      ; $50d6: $29
	adc  b                                           ; $50d7: $88
	jr   jr_099_5132                                 ; $50d8: $18 $58

	sbc  b                                           ; $50da: $98
	inc  c                                           ; $50db: $0c
	ld   c, h                                        ; $50dc: $4c
	add  b                                           ; $50dd: $80
	inc  b                                           ; $50de: $04
	add  b                                           ; $50df: $80
	nop                                              ; $50e0: $00
	nop                                              ; $50e1: $00
	add  b                                           ; $50e2: $80
	add  c                                           ; $50e3: $81
	nop                                              ; $50e4: $00
	ld   [bc], a                                     ; $50e5: $02
	ret  nz                                          ; $50e6: $c0

	nop                                              ; $50e7: $00
	ld   h, b                                        ; $50e8: $60
	add  c                                           ; $50e9: $81
	nop                                              ; $50ea: $00
	ld   b, $30                                      ; $50eb: $06 $30
	nop                                              ; $50ed: $00
	sub  b                                           ; $50ee: $90
	nop                                              ; $50ef: $00
	ret  nz                                          ; $50f0: $c0

	add  b                                           ; $50f1: $80
	nop                                              ; $50f2: $00
	add  d                                           ; $50f3: $82
	add  b                                           ; $50f4: $80
	dec  b                                           ; $50f5: $05
	nop                                              ; $50f6: $00
	jr   nz, jr_099_50b9                             ; $50f7: $20 $c0

	ret  nc                                          ; $50f9: $d0

	ldh  [$e8], a                                    ; $50fa: $e0 $e8
	add  e                                           ; $50fc: $83
	ldh  a, [rP1]                                    ; $50fd: $f0 $00
	ld   hl, sp-$7d                                  ; $50ff: $f8 $83
	ldh  [rP1], a                                    ; $5101: $e0 $00
	add  sp, -$7d                                    ; $5103: $e8 $83
	ldh  a, [rP1]                                    ; $5105: $f0 $00
	ld   [$0081], sp                                 ; $5107: $08 $81 $00
	inc  b                                           ; $510a: $04
	add  b                                           ; $510b: $80
	nop                                              ; $510c: $00
	ret  nz                                          ; $510d: $c0

	add  b                                           ; $510e: $80
	nop                                              ; $510f: $00
	add  h                                           ; $5110: $84
	add  b                                           ; $5111: $80
	inc  bc                                          ; $5112: $03
	nop                                              ; $5113: $00
	ld   b, b                                        ; $5114: $40
	nop                                              ; $5115: $00
	ret  nz                                          ; $5116: $c0

	add  e                                           ; $5117: $83
	nop                                              ; $5118: $00
	ld   [$0080], sp                                 ; $5119: $08 $80 $00
	ldh  [rP1], a                                    ; $511c: $e0 $00
	jr   nc, jr_099_5120                             ; $511e: $30 $00

jr_099_5120:
	jr   jr_099_5122                                 ; $5120: $18 $00

jr_099_5122:
	ld   [$0085], sp                                 ; $5122: $08 $85 $00
	ld   b, $03                                      ; $5125: $06 $03
	nop                                              ; $5127: $00
	rrca                                             ; $5128: $0f
	inc  bc                                          ; $5129: $03
	rla                                              ; $512a: $17
	rlca                                             ; $512b: $07
	scf                                              ; $512c: $37
	add  c                                           ; $512d: $81
	rla                                              ; $512e: $17
	nop                                              ; $512f: $00
	ld   [hl], a                                     ; $5130: $77
	add  c                                           ; $5131: $81

jr_099_5132:
	scf                                              ; $5132: $37
	ld   bc, $37b7                                   ; $5133: $01 $b7 $37
	add  d                                           ; $5136: $82
	ld   d, a                                        ; $5137: $57
	add  b                                           ; $5138: $80
	sbc  e                                           ; $5139: $9b
	add  b                                           ; $513a: $80
	xor  e                                           ; $513b: $ab
	nop                                              ; $513c: $00
	rst  $38                                         ; $513d: $ff
	add  c                                           ; $513e: $81
	nop                                              ; $513f: $00
	dec  b                                           ; $5140: $05
	rlca                                             ; $5141: $07
	nop                                              ; $5142: $00
	ccf                                              ; $5143: $3f
	rlca                                             ; $5144: $07
	rst  $38                                         ; $5145: $ff
	ccf                                              ; $5146: $3f
	add  d                                           ; $5147: $82
	cp   $82                                         ; $5148: $fe $82
	db   $fd                                         ; $514a: $fd
	add  d                                           ; $514b: $82
	ei                                               ; $514c: $fb
	add  b                                           ; $514d: $80
	rst  $30                                         ; $514e: $f7
	inc  c                                           ; $514f: $0c
	db   $d3                                         ; $5150: $d3
	di                                               ; $5151: $f3
	cp   h                                           ; $5152: $bc
	db   $fc                                         ; $5153: $fc
	jp   $6fe3                                       ; $5154: $c3 $e3 $6f


	rst  $28                                         ; $5157: $ef
	jr   c, jr_099_515a                              ; $5158: $38 $00

jr_099_515a:
	ld   a, b                                        ; $515a: $78
	ld   b, $87                                      ; $515b: $06 $87
	add  b                                           ; $515d: $80
	ld   l, l                                        ; $515e: $6d
	ld   bc, $9f9d                                   ; $515f: $01 $9d $9f
	add  b                                           ; $5162: $80
	ld   a, e                                        ; $5163: $7b
	nop                                              ; $5164: $00
	ei                                               ; $5165: $fb
	add  b                                           ; $5166: $80
	ld   a, [$f881]                                  ; $5167: $fa $81 $f8
	add  c                                           ; $516a: $81
	ldh  a, [rDIV]                                   ; $516b: $f0 $04
	or   $d6                                         ; $516d: $f6 $d6
	push de                                          ; $516f: $d5
	or   h                                           ; $5170: $b4
	or   l                                           ; $5171: $b5
	add  b                                           ; $5172: $80
	ld   h, h                                        ; $5173: $64
	add  e                                           ; $5174: $83
	db   $e4                                         ; $5175: $e4
	nop                                              ; $5176: $00
	rra                                              ; $5177: $1f
	add  e                                           ; $5178: $83
	nop                                              ; $5179: $00
	inc  bc                                          ; $517a: $03
	inc  bc                                          ; $517b: $03
	nop                                              ; $517c: $00
	ld   b, $02                                      ; $517d: $06 $02
	add  b                                           ; $517f: $80
	inc  bc                                          ; $5180: $03
	inc  d                                           ; $5181: $14
	rrca                                             ; $5182: $0f
	rlca                                             ; $5183: $07
	rla                                              ; $5184: $17
	rlca                                             ; $5185: $07
	dec  sp                                          ; $5186: $3b
	dec  de                                          ; $5187: $1b
	adc  $3e                                         ; $5188: $ce $3e
	ld   d, a                                        ; $518a: $57
	rst  $38                                         ; $518b: $ff
	db   $e3                                         ; $518c: $e3
	rst  $38                                         ; $518d: $ff
	sbc  e                                           ; $518e: $9b
	rst  $38                                         ; $518f: $ff
	rst  $20                                         ; $5190: $e7
	rst  $38                                         ; $5191: $ff
	ei                                               ; $5192: $fb
	ld   a, a                                        ; $5193: $7f
	ld   a, h                                        ; $5194: $7c

jr_099_5195:
	cp   a                                           ; $5195: $bf
	ld   b, b                                        ; $5196: $40
	add  c                                           ; $5197: $81
	nop                                              ; $5198: $00
	rrca                                             ; $5199: $0f
	inc  bc                                          ; $519a: $03
	nop                                              ; $519b: $00
	inc  c                                           ; $519c: $0c
	inc  bc                                          ; $519d: $03
	inc  sp                                          ; $519e: $33
	rrca                                             ; $519f: $0f
	ld   c, a                                        ; $51a0: $4f
	ccf                                              ; $51a1: $3f
	adc  a                                           ; $51a2: $8f
	ld   a, a                                        ; $51a3: $7f
	or   a                                           ; $51a4: $b7
	ei                                               ; $51a5: $fb
	rst  $38                                         ; $51a6: $ff
	db   $fd                                         ; $51a7: $fd
	rst  $38                                         ; $51a8: $ff
	cp   $8b                                         ; $51a9: $fe $8b
	rst  $38                                         ; $51ab: $ff
	adc  c                                           ; $51ac: $89
	nop                                              ; $51ad: $00
	ld   b, $01                                      ; $51ae: $06 $01
	nop                                              ; $51b0: $00
	rlca                                             ; $51b1: $07
	ld   bc, $070f                                   ; $51b2: $01 $0f $07
	rra                                              ; $51b5: $1f
	add  c                                           ; $51b6: $81
	rrca                                             ; $51b7: $0f
	nop                                              ; $51b8: $00
	ccf                                              ; $51b9: $3f
	add  a                                           ; $51ba: $87
	rra                                              ; $51bb: $1f
	nop                                              ; $51bc: $00
	ccf                                              ; $51bd: $3f
	adc  l                                           ; $51be: $8d
	nop                                              ; $51bf: $00
	nop                                              ; $51c0: $00
	ld   bc, $0081                                   ; $51c1: $01 $81 $00
	nop                                              ; $51c4: $00
	inc  bc                                          ; $51c5: $03
	add  e                                           ; $51c6: $83
	ld   bc, $0700                                   ; $51c7: $01 $00 $07
	add  e                                           ; $51ca: $83
	inc  bc                                          ; $51cb: $03
	inc  b                                           ; $51cc: $04
	jr   nz, jr_099_51ee                             ; $51cd: $20 $1f

	rlca                                             ; $51cf: $07
	rra                                              ; $51d0: $1f
	ccf                                              ; $51d1: $3f
	add  b                                           ; $51d2: $80
	rrca                                             ; $51d3: $0f
	add  hl, bc                                      ; $51d4: $09
	inc  bc                                          ; $51d5: $03
	inc  hl                                          ; $51d6: $23
	jr   jr_099_5231                                 ; $51d7: $18 $58

	inc  a                                           ; $51d9: $3c
	call z, Call_099_777f                            ; $51da: $cc $7f $77
	ld   a, a                                        ; $51dd: $7f

jr_099_51de:
	ei                                               ; $51de: $fb
	add  c                                           ; $51df: $81
	rst  $38                                         ; $51e0: $ff
	nop                                              ; $51e1: $00
	db   $fd                                         ; $51e2: $fd
	add  c                                           ; $51e3: $81
	rst  $38                                         ; $51e4: $ff
	nop                                              ; $51e5: $00
	cp   $85                                         ; $51e6: $fe $85
	rst  $38                                         ; $51e8: $ff
	ld   a, [bc]                                     ; $51e9: $0a
	ldh  a, [rP1]                                    ; $51ea: $f0 $00
	ld   e, $00                                      ; $51ec: $1e $00

jr_099_51ee:
	ld   [hl-], a                                    ; $51ee: $32
	nop                                              ; $51ef: $00
	ld   h, l                                        ; $51f0: $65
	ld   [bc], a                                     ; $51f1: $02
	ld   [$d404], sp                                 ; $51f2: $08 $04 $d4
	add  c                                           ; $51f5: $81
	inc  c                                           ; $51f6: $0c
	add  b                                           ; $51f7: $80
	ld   [$2802], sp                                 ; $51f8: $08 $02 $28
	jr   jr_099_5195                                 ; $51fb: $18 $98

	add  c                                           ; $51fd: $81
	jr   @+$0c                                       ; $51fe: $18 $0a

	sbc  b                                           ; $5200: $98
	jr   jr_099_525b                                 ; $5201: $18 $58

	ld   [$0098], sp                                 ; $5203: $08 $98 $00
	ld   l, h                                        ; $5206: $6c
	nop                                              ; $5207: $00
	ld   bc, $0500                                   ; $5208: $01 $00 $05
	rst  $38                                         ; $520b: $ff
	nop                                              ; $520c: $00
	call c, $0300                                    ; $520d: $dc $00 $03
	ld   b, e                                        ; $5210: $43
	add  b                                           ; $5211: $80
	db   $fc                                         ; $5212: $fc
	ret  nz                                          ; $5213: $c0

	add  b                                           ; $5214: $80
	add  [hl]                                        ; $5215: $86
	dec  b                                           ; $5216: $05
	ld   h, a                                        ; $5217: $67
	rlca                                             ; $5218: $07
	daa                                              ; $5219: $27
	rla                                              ; $521a: $17
	ld   d, a                                        ; $521b: $57
	rlca                                             ; $521c: $07
	add  b                                           ; $521d: $80
	inc  bc                                          ; $521e: $03
	inc  bc                                          ; $521f: $03
	ld   b, e                                        ; $5220: $43
	inc  hl                                          ; $5221: $23
	ld   h, b                                        ; $5222: $60

jr_099_5223:
	inc  bc                                          ; $5223: $03
	add  b                                           ; $5224: $80
	inc  de                                          ; $5225: $13
	ld   bc, $3337                                   ; $5226: $01 $37 $33
	add  c                                           ; $5229: $81
	db   $eb                                         ; $522a: $eb
	ld   [bc], a                                     ; $522b: $02
	db   $e3                                         ; $522c: $e3
	db   $d3                                         ; $522d: $d3
	jp   $c780                                       ; $522e: $c3 $80 $c7


jr_099_5231:
	ld   [$87b7], sp                                 ; $5231: $08 $b7 $87
	ldh  [c], a                                      ; $5234: $e2
	dec  c                                           ; $5235: $0d
	ld   c, b                                        ; $5236: $48
	ld   [$0383], sp                                 ; $5237: $08 $83 $03
	ld   b, $80                                      ; $523a: $06 $80
	ld   d, $0f                                      ; $523c: $16 $0f
	ld   [hl], $7a                                   ; $523e: $36 $7a
	ld   [hl-], a                                    ; $5240: $32
	ld   sp, $9010                                   ; $5241: $31 $10 $90
	db   $10                                         ; $5244: $10
	ld   l, c                                        ; $5245: $69
	add  a                                           ; $5246: $87
	ld   b, a                                        ; $5247: $47
	dec  bc                                          ; $5248: $0b
	ld   a, [bc]                                     ; $5249: $0a
	inc  c                                           ; $524a: $0c
	sub  e                                           ; $524b: $93
	db   $10                                         ; $524c: $10
	ld   bc, $0085                                   ; $524d: $01 $85 $00
	ld   a, [bc]                                     ; $5250: $0a
	inc  de                                          ; $5251: $13
	inc  bc                                          ; $5252: $03
	ld   [hl+], a                                    ; $5253: $22
	ld   [bc], a                                     ; $5254: $02
	ldh  a, [rP1]                                    ; $5255: $f0 $00
	jr   c, jr_099_5259                              ; $5257: $38 $00

jr_099_5259:
	ldh  a, [rP1]                                    ; $5259: $f0 $00

jr_099_525b:
	jr   jr_099_51de                                 ; $525b: $18 $81

	nop                                              ; $525d: $00
	inc  d                                           ; $525e: $14
	jr   nc, jr_099_5261                             ; $525f: $30 $00

jr_099_5261:
	inc  de                                          ; $5261: $13
	ld   bc, $0129                                   ; $5262: $01 $29 $01
	add  e                                           ; $5265: $83
	db   $10                                         ; $5266: $10
	add  $0a                                         ; $5267: $c6 $0a
	ld   a, d                                        ; $5269: $7a
	rrca                                             ; $526a: $0f
	ccf                                              ; $526b: $3f
	inc  bc                                          ; $526c: $03
	dec  hl                                          ; $526d: $2b
	inc  h                                           ; $526e: $24
	inc  e                                           ; $526f: $1c
	rra                                              ; $5270: $1f
	ret  nc                                          ; $5271: $d0

	ret  nz                                          ; $5272: $c0

	ret  c                                           ; $5273: $d8

	add  c                                           ; $5274: $81
	ret  nz                                          ; $5275: $c0

	add  c                                           ; $5276: $81
	add  b                                           ; $5277: $80
	ld   [bc], a                                     ; $5278: $02
	nop                                              ; $5279: $00
	dec  c                                           ; $527a: $0d
	ld   bc, $0380                                   ; $527b: $01 $80 $03
	ld   [bc], a                                     ; $527e: $02
	dec  sp                                          ; $527f: $3b
	nop                                              ; $5280: $00
	and  l                                           ; $5281: $a5
	add  e                                           ; $5282: $83
	inc  b                                           ; $5283: $04
	add  b                                           ; $5284: $80
	nop                                              ; $5285: $00
	ld   bc, $0001                                   ; $5286: $01 $01 $00
	add  b                                           ; $5289: $80
	add  b                                           ; $528a: $80
	add  b                                           ; $528b: $80
	ret  nz                                          ; $528c: $c0

	ld   b, $e1                                      ; $528d: $06 $e1
	nop                                              ; $528f: $00
	jp   z, $0800                                    ; $5290: $ca $00 $08

	nop                                              ; $5293: $00
	inc  b                                           ; $5294: $04
	add  c                                           ; $5295: $81
	nop                                              ; $5296: $00
	ld   [$0008], sp                                 ; $5297: $08 $08 $00
	add  b                                           ; $529a: $80
	nop                                              ; $529b: $00
	add  b                                           ; $529c: $80
	nop                                              ; $529d: $00
	inc  de                                          ; $529e: $13
	inc  bc                                          ; $529f: $03
	jr   nz, jr_099_5223                             ; $52a0: $20 $81

	nop                                              ; $52a2: $00
	ld   e, $01                                      ; $52a3: $1e $01
	nop                                              ; $52a5: $00
	ld   [bc], a                                     ; $52a6: $02
	ld   bc, $0305                                   ; $52a7: $01 $05 $03
	dec  bc                                          ; $52aa: $0b
	nop                                              ; $52ab: $00
	ld   sp, $ee2e                                   ; $52ac: $31 $2e $ee
	sbc  $60                                         ; $52af: $de $60
	nop                                              ; $52b1: $00
	adc  [hl]                                        ; $52b2: $8e
	ld   b, b                                        ; $52b3: $40
	ld   a, h                                        ; $52b4: $7c
	nop                                              ; $52b5: $00
	ld   [hl], b                                     ; $52b6: $70
	add  b                                           ; $52b7: $80
	ld   c, $00                                      ; $52b8: $0e $00
	db   $fc                                         ; $52ba: $fc
	nop                                              ; $52bb: $00
	pop  af                                          ; $52bc: $f1
	nop                                              ; $52bd: $00
	ld   b, $00                                      ; $52be: $06 $00
	jr   c, jr_099_52f9                              ; $52c0: $38 $37

	ld   [hl], a                                     ; $52c2: $77
	add  b                                           ; $52c3: $80
	ld   l, a                                        ; $52c4: $6f
	dec  de                                          ; $52c5: $1b
	ld   l, [hl]                                     ; $52c6: $6e
	ld   l, a                                        ; $52c7: $6f
	ld   c, c                                        ; $52c8: $49
	ld   c, [hl]                                     ; $52c9: $4e
	ld   b, h                                        ; $52ca: $44
	db   $db                                         ; $52cb: $db
	ld   bc, $2276                                   ; $52cc: $01 $76 $22
	dec  hl                                          ; $52cf: $2b
	nop                                              ; $52d0: $00
	ld   h, d                                        ; $52d1: $62
	push bc                                          ; $52d2: $c5
	db   $d3                                         ; $52d3: $d3
	add  e                                           ; $52d4: $83
	sbc  $4e                                         ; $52d5: $de $4e
	add  hl, sp                                      ; $52d7: $39
	ld   sp, $e7ef                                   ; $52d8: $31 $ef $e7
	sbc  h                                           ; $52db: $9c
	sbc  b                                           ; $52dc: $98
	ld   [hl], h                                     ; $52dd: $74
	ld   [hl], b                                     ; $52de: $70
	ld   b, d                                        ; $52df: $42
	ld   b, h                                        ; $52e0: $44
	ld   b, $80                                      ; $52e1: $06 $80
	cp   a                                           ; $52e3: $bf
	add  b                                           ; $52e4: $80
	rst  JumpTable                                         ; $52e5: $df
	jr   jr_099_5347                                 ; $52e6: $18 $5f

	rst  JumpTable                                         ; $52e8: $df
	rra                                              ; $52e9: $1f
	ld   e, a                                        ; $52ea: $5f
	rrca                                             ; $52eb: $0f
	cpl                                              ; $52ec: $2f
	inc  b                                           ; $52ed: $04
	inc  e                                           ; $52ee: $1c
	nop                                              ; $52ef: $00
	dec  b                                           ; $52f0: $05
	nop                                              ; $52f1: $00
	push bc                                          ; $52f2: $c5
	rst  ToBoot                                         ; $52f3: $c7
	ei                                               ; $52f4: $fb
	ld   hl, sp-$03                                  ; $52f5: $f8 $fd
	ld   hl, sp-$06                                  ; $52f7: $f8 $fa

jr_099_52f9:
	ldh  [$ec], a                                    ; $52f9: $e0 $ec
	add  b                                           ; $52fb: $80
	sub  b                                           ; $52fc: $90

jr_099_52fd:
	jr   nz, jr_099_533f                             ; $52fd: $20 $40

	add  b                                           ; $52ff: $80
	add  b                                           ; $5300: $80
	nop                                              ; $5301: $00
	ld   [bc], a                                     ; $5302: $02
	rst  $38                                         ; $5303: $ff
	nop                                              ; $5304: $00
	rst  $38                                         ; $5305: $ff
	add  b                                           ; $5306: $80
	add  b                                           ; $5307: $80
	adc  c                                           ; $5308: $89
	nop                                              ; $5309: $00
	ld   bc, $fc03                                   ; $530a: $01 $03 $fc
	add  b                                           ; $530d: $80
	ccf                                              ; $530e: $3f
	ld   [$0fcf], sp                                 ; $530f: $08 $cf $0f
	scf                                              ; $5312: $37
	rlca                                             ; $5313: $07
	dec  bc                                          ; $5314: $0b
	inc  bc                                          ; $5315: $03
	dec  b                                           ; $5316: $05
	ld   bc, $8102                                   ; $5317: $01 $02 $81
	nop                                              ; $531a: $00
	add  hl, bc                                      ; $531b: $09
	ld   h, [hl]                                     ; $531c: $66
	rlca                                             ; $531d: $07
	xor  a                                           ; $531e: $af
	rrca                                             ; $531f: $0f
	cp   a                                           ; $5320: $bf
	sbc  [hl]                                        ; $5321: $9e
	cp   $ed                                         ; $5322: $fe $ed
	db   $fd                                         ; $5324: $fd
	di                                               ; $5325: $f3
	add  b                                           ; $5326: $80
	xor  e                                           ; $5327: $ab

jr_099_5328:
	ld   bc, $5457                                   ; $5328: $01 $57 $54
	add  b                                           ; $532b: $80
	and  c                                           ; $532c: $a1
	nop                                              ; $532d: $00
	inc  bc                                          ; $532e: $03
	add  b                                           ; $532f: $80
	cp   h                                           ; $5330: $bc
	ld   e, $7c                                      ; $5331: $1e $7c
	ld   a, a                                        ; $5333: $7f
	cp   $ff                                         ; $5334: $fe $ff
	ld   sp, hl                                      ; $5336: $f9
	cp   $e2                                         ; $5337: $fe $e2
	db   $fd                                         ; $5339: $fd
	sbc  c                                           ; $533a: $99
	and  $24                                         ; $533b: $e6 $24
	db   $db                                         ; $533d: $db
	sbc  c                                           ; $533e: $99

jr_099_533f:
	push hl                                          ; $533f: $e5
	inc  b                                           ; $5340: $04
	ld   a, b                                        ; $5341: $78
	jr   jr_099_5328                                 ; $5342: $18 $e4

	inc  h                                           ; $5344: $24
	db   $db                                         ; $5345: $db
	sbc  b                                           ; $5346: $98

jr_099_5347:
	ld   h, b                                        ; $5347: $60
	ld   b, b                                        ; $5348: $40
	cp   c                                           ; $5349: $b9
	sbc  b                                           ; $534a: $98
	ld   [hl], d                                     ; $534b: $72
	ld   h, b                                        ; $534c: $60
	ret  nc                                          ; $534d: $d0

	call nz, Call_099_4076                           ; $534e: $c4 $76 $40
	add  b                                           ; $5351: $80
	ld   c, b                                        ; $5352: $48
	dec  d                                           ; $5353: $15
	xor  b                                           ; $5354: $a8
	ld   [bc], a                                     ; $5355: $02
	ld   d, [hl]                                     ; $5356: $56
	ld   [bc], a                                     ; $5357: $02
	ld   [hl+], a                                    ; $5358: $22
	nop                                              ; $5359: $00
	sub  b                                           ; $535a: $90
	nop                                              ; $535b: $00
	ret  nz                                          ; $535c: $c0

	nop                                              ; $535d: $00
	ld   b, b                                        ; $535e: $40
	nop                                              ; $535f: $00
	rst  $38                                         ; $5360: $ff
	ld   c, $ae                                      ; $5361: $0e $ae
	ld   c, $3d                                      ; $5363: $0e $3d
	inc  b                                           ; $5365: $04
	ld   b, b                                        ; $5366: $40
	nop                                              ; $5367: $00
	rlca                                             ; $5368: $07
	rla                                              ; $5369: $17
	add  e                                           ; $536a: $83
	daa                                              ; $536b: $27
	ld   [bc], a                                     ; $536c: $02
	rlca                                             ; $536d: $07
	sbc  b                                           ; $536e: $98
	add  b                                           ; $536f: $80
	add  b                                           ; $5370: $80
	ldh  [$80], a                                    ; $5371: $e0 $80

jr_099_5373:
	ld   hl, sp-$80                                  ; $5373: $f8 $80
	db   $fc                                         ; $5375: $fc
	add  b                                           ; $5376: $80
	cp   $02                                         ; $5377: $fe $02
	rst  $38                                         ; $5379: $ff
	ccf                                              ; $537a: $3f
	jr   nc, jr_099_52fd                             ; $537b: $30 $80

	ld   d, b                                        ; $537d: $50
	dec  bc                                          ; $537e: $0b
	or   b                                           ; $537f: $b0
	ld   c, a                                        ; $5380: $4f
	nop                                              ; $5381: $00
	ld   e, $0e                                      ; $5382: $1e $0e
	inc  a                                           ; $5384: $3c
	inc  e                                           ; $5385: $1c
	ld   a, e                                        ; $5386: $7b
	jr   c, jr_099_53bd                              ; $5387: $38 $34

	jr   nc, jr_099_5373                             ; $5389: $30 $e8

	add  e                                           ; $538b: $83
	ld   h, b                                        ; $538c: $60
	ld   [bc], a                                     ; $538d: $02
	ldh  a, [rP1]                                    ; $538e: $f0 $00
	add  b                                           ; $5390: $80
	add  c                                           ; $5391: $81
	nop                                              ; $5392: $00
	ld   a, [bc]                                     ; $5393: $0a
	ldh  [rP1], a                                    ; $5394: $e0 $00
	ld   a, b                                        ; $5396: $78
	nop                                              ; $5397: $00
	inc  e                                           ; $5398: $1c
	nop                                              ; $5399: $00
	ld   b, $00                                      ; $539a: $06 $00
	rlca                                             ; $539c: $07
	nop                                              ; $539d: $00
	dec  b                                           ; $539e: $05
	adc  c                                           ; $539f: $89
	nop                                              ; $53a0: $00
	inc  b                                           ; $53a1: $04
	ld   bc, $0700                                   ; $53a2: $01 $00 $07
	ld   bc, $8107                                   ; $53a5: $01 $07 $81
	nop                                              ; $53a8: $00
	inc  h                                           ; $53a9: $24
	ld   bc, $0700                                   ; $53aa: $01 $00 $07
	ld   bc, $021e                                   ; $53ad: $01 $1e $02
	ld   a, l                                        ; $53b0: $7d
	add  hl, de                                      ; $53b1: $19
	and  $24                                         ; $53b2: $e6 $24
	db   $db                                         ; $53b4: $db
	sbc  c                                           ; $53b5: $99
	ld   b, $02                                      ; $53b6: $06 $02
	dec  e                                           ; $53b8: $1d
	add  hl, de                                      ; $53b9: $19
	ld   h, [hl]                                     ; $53ba: $66
	inc  h                                           ; $53bb: $24
	db   $db                                         ; $53bc: $db

jr_099_53bd:
	sbc  c                                           ; $53bd: $99
	ld   h, a                                        ; $53be: $67
	ld   b, [hl]                                     ; $53bf: $46
	cp   l                                           ; $53c0: $bd
	sbc  h                                           ; $53c1: $9c
	ld   [hl], b                                     ; $53c2: $70
	ld   h, b                                        ; $53c3: $60
	ret  nc                                          ; $53c4: $d0

	ret  nz                                          ; $53c5: $c0

	ld   h, a                                        ; $53c6: $67
	ld   b, [hl]                                     ; $53c7: $46
	cp   l                                           ; $53c8: $bd
	sbc  h                                           ; $53c9: $9c
	ld   [hl], c                                     ; $53ca: $71
	ld   h, b                                        ; $53cb: $60
	pop  de                                          ; $53cc: $d1
	rst  ToBoot                                         ; $53cd: $c7
	rlca                                             ; $53ce: $07
	add  e                                           ; $53cf: $83
	rra                                              ; $53d0: $1f
	rlca                                             ; $53d1: $07
	rrca                                             ; $53d2: $0f
	rra                                              ; $53d3: $1f
	rla                                              ; $53d4: $17
	ld   b, $6e                                      ; $53d5: $06 $6e
	ld   c, $9e                                      ; $53d7: $0e $9e
	rra                                              ; $53d9: $1f
	adc  b                                           ; $53da: $88
	rst  $38                                         ; $53db: $ff
	add  d                                           ; $53dc: $82
	nop                                              ; $53dd: $00
	nop                                              ; $53de: $00
	add  b                                           ; $53df: $80
	add  c                                           ; $53e0: $81
	nop                                              ; $53e1: $00
	ld   [bc], a                                     ; $53e2: $02
	ld   b, b                                        ; $53e3: $40
	add  b                                           ; $53e4: $80
	and  b                                           ; $53e5: $a0
	add  c                                           ; $53e6: $81
	ret  nz                                          ; $53e7: $c0

	ld   bc, $e0d0                                   ; $53e8: $01 $d0 $e0
	add  b                                           ; $53eb: $80
	ld   [$0e80], sp                                 ; $53ec: $08 $80 $0e
	nop                                              ; $53ef: $00
	rrca                                             ; $53f0: $0f
	add  b                                           ; $53f1: $80
	rlca                                             ; $53f2: $07
	add  b                                           ; $53f3: $80
	dec  bc                                          ; $53f4: $0b
	add  b                                           ; $53f5: $80
	inc  b                                           ; $53f6: $04
	rlca                                             ; $53f7: $07
	rlca                                             ; $53f8: $07
	scf                                              ; $53f9: $37
	rla                                              ; $53fa: $17
	ld   h, a                                        ; $53fb: $67
	cpl                                              ; $53fc: $2f
	adc  b                                           ; $53fd: $88
	ret  c                                           ; $53fe: $d8

	db   $dd                                         ; $53ff: $dd
	add  c                                           ; $5400: $81
	db   $ec                                         ; $5401: $ec
	nop                                              ; $5402: $00
	xor  $80                                         ; $5403: $ee $80
	or   $04                                         ; $5405: $f6 $04
	ld   a, [$7c7a]                                  ; $5407: $fa $7a $7c
	inc  e                                           ; $540a: $1c
	rra                                              ; $540b: $1f
	add  b                                           ; $540c: $80
	rlca                                             ; $540d: $07
	ld   bc, $40a0                                   ; $540e: $01 $a0 $40
	add  d                                           ; $5411: $82
	ret  nz                                          ; $5412: $c0

	add  b                                           ; $5413: $80
	ld   b, b                                        ; $5414: $40
	ld   [$0010], sp                                 ; $5415: $08 $10 $00
	ld   [$9490], sp                                 ; $5418: $08 $90 $94
	ld   hl, sp-$07                                  ; $541b: $f8 $f9
	ld   hl, sp+$07                                  ; $541d: $f8 $07
	add  c                                           ; $541f: $81
	nop                                              ; $5420: $00
	nop                                              ; $5421: $00
	inc  bc                                          ; $5422: $03
	add  c                                           ; $5423: $81
	nop                                              ; $5424: $00
	inc  h                                           ; $5425: $24
	ld   bc, $0c00                                   ; $5426: $01 $00 $0c
	nop                                              ; $5429: $00
	ld   b, [hl]                                     ; $542a: $46
	nop                                              ; $542b: $00
	ld   l, a                                        ; $542c: $6f
	nop                                              ; $542d: $00
	and  h                                           ; $542e: $a4
	ld   b, $c5                                      ; $542f: $06 $c5
	add  hl, bc                                      ; $5431: $09
	ld   a, [bc]                                     ; $5432: $0a
	inc  d                                           ; $5433: $14
	dec  d                                           ; $5434: $15
	dec  bc                                          ; $5435: $0b
	adc  e                                           ; $5436: $8b
	dec  d                                           ; $5437: $15
	ld   [hl], h                                     ; $5438: $74
	ld   [bc], a                                     ; $5439: $02
	jp   $2000                                       ; $543a: $c3 $00 $20


	nop                                              ; $543d: $00
	ret  c                                           ; $543e: $d8

	ld   b, [hl]                                     ; $543f: $46
	cp   l                                           ; $5440: $bd
	sbc  h                                           ; $5441: $9c
	ld   [hl], b                                     ; $5442: $70
	ld   h, c                                        ; $5443: $61
	jp   nc, $08c4                                   ; $5444: $d2 $c4 $08

	db   $10                                         ; $5447: $10
	jr   nz, jr_099_548a                             ; $5448: $20 $40

	add  b                                           ; $544a: $80
	add  c                                           ; $544b: $81
	nop                                              ; $544c: $00
	ld   b, $ff                                      ; $544d: $06 $ff
	db   $10                                         ; $544f: $10
	jr   nz, jr_099_5492                             ; $5450: $20 $40

	add  b                                           ; $5452: $80
	nop                                              ; $5453: $00
	ld   [$0087], sp                                 ; $5454: $08 $87 $00
	nop                                              ; $5457: $00
	ld   hl, sp-$7d                                  ; $5458: $f8 $83
	rrca                                             ; $545a: $0f
	ld   bc, $0f07                                   ; $545b: $01 $07 $0f
	add  a                                           ; $545e: $87
	rlca                                             ; $545f: $07
	adc  l                                           ; $5460: $8d
	rst  $38                                         ; $5461: $ff
	inc  b                                           ; $5462: $04
	ld   hl, sp-$20                                  ; $5463: $f8 $e0
	push hl                                          ; $5465: $e5
	ldh  [$e3], a                                    ; $5466: $e0 $e3
	add  c                                           ; $5468: $81
	jp   hl                                          ; $5469: $e9


	nop                                              ; $546a: $00
	add  sp, -$80                                    ; $546b: $e8 $80
	db   $ec                                         ; $546d: $ec
	add  b                                           ; $546e: $80
	push hl                                          ; $546f: $e5
	add  b                                           ; $5470: $80
	db   $e3                                         ; $5471: $e3
	rlca                                             ; $5472: $07
	rst  ToBoot                                         ; $5473: $c7
	and  a                                           ; $5474: $a7
	ld   l, a                                        ; $5475: $6f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5476: $cf
	rst  JumpTable                                         ; $5477: $df
	sbc  a                                           ; $5478: $9f
	cp   a                                           ; $5479: $bf
	ccf                                              ; $547a: $3f
	add  b                                           ; $547b: $80
	ld   a, a                                        ; $547c: $7f
	add  l                                           ; $547d: $85
	rst  $38                                         ; $547e: $ff
	rst  $38                                         ; $547f: $ff
	nop                                              ; $5480: $00
	rst  $38                                         ; $5481: $ff
	nop                                              ; $5482: $00
	call c, $b300                                    ; $5483: $dc $00 $b3
	ld   bc, $0086                                   ; $5486: $01 $86 $00
	add  [hl]                                        ; $5489: $86

jr_099_548a:
	rrca                                             ; $548a: $0f
	add  [hl]                                        ; $548b: $86
	nop                                              ; $548c: $00
	add  [hl]                                        ; $548d: $86
	rst  $38                                         ; $548e: $ff
	add  [hl]                                        ; $548f: $86
	nop                                              ; $5490: $00
	nop                                              ; $5491: $00

jr_099_5492:
	rst  $38                                         ; $5492: $ff
	add  l                                           ; $5493: $85
	xor  $00                                         ; $5494: $ee $00
	ld   de, $0085                                   ; $5496: $11 $85 $00
	ld   [$36cf], sp                                 ; $5499: $08 $cf $36
	ld   h, $36                                      ; $549c: $26 $36
	ld   h, $36                                      ; $549e: $26 $36
	ld   h, $36                                      ; $54a0: $26 $36
	jp   hl                                          ; $54a2: $e9


	add  l                                           ; $54a3: $85
	nop                                              ; $54a4: $00
	nop                                              ; $54a5: $00
	rst  $28                                         ; $54a6: $ef
	add  l                                           ; $54a7: $85
	rst  $38                                         ; $54a8: $ff
	nop                                              ; $54a9: $00
	db   $10                                         ; $54aa: $10
	add  l                                           ; $54ab: $85
	nop                                              ; $54ac: $00
	nop                                              ; $54ad: $00
	add  e                                           ; $54ae: $83
	add  b                                           ; $54af: $80
	adc  c                                           ; $54b0: $89
	add  b                                           ; $54b1: $80
	add  c                                           ; $54b2: $81
	add  c                                           ; $54b3: $81
	adc  c                                           ; $54b4: $89
	nop                                              ; $54b5: $00
	ld   a, [bc]                                     ; $54b6: $0a
	add  l                                           ; $54b7: $85
	nop                                              ; $54b8: $00
	nop                                              ; $54b9: $00
	ldh  a, [$85]                                    ; $54ba: $f0 $85
	rst  $38                                         ; $54bc: $ff
	nop                                              ; $54bd: $00
	rrca                                             ; $54be: $0f
	add  l                                           ; $54bf: $85
	nop                                              ; $54c0: $00
	nop                                              ; $54c1: $00
	dec  e                                           ; $54c2: $1d
	add  l                                           ; $54c3: $85
	rst  $28                                         ; $54c4: $ef
	nop                                              ; $54c5: $00
	ldh  a, [c]                                      ; $54c6: $f2
	add  l                                           ; $54c7: $85
	nop                                              ; $54c8: $00
	ld   bc, $8ff0                                   ; $54c9: $01 $f0 $8f
	add  b                                           ; $54cc: $80
	sub  a                                           ; $54cd: $97
	add  b                                           ; $54ce: $80
	adc  a                                           ; $54cf: $8f
	add  b                                           ; $54d0: $80
	sub  a                                           ; $54d1: $97
	nop                                              ; $54d2: $00
	ld   a, a                                        ; $54d3: $7f
	add  [hl]                                        ; $54d4: $86
	nop                                              ; $54d5: $00
	add  l                                           ; $54d6: $85
	rst  $38                                         ; $54d7: $ff
	nop                                              ; $54d8: $00
	ldh  a, [$8d]                                    ; $54d9: $f0 $8d
	rrca                                             ; $54db: $0f
	sbc  b                                           ; $54dc: $98
	rst  $38                                         ; $54dd: $ff
	add  b                                           ; $54de: $80
	db   $fd                                         ; $54df: $fd
	add  b                                           ; $54e0: $80
	ld   a, [$d580]                                  ; $54e1: $fa $80 $d5
	nop                                              ; $54e4: $00
	rst  $38                                         ; $54e5: $ff
	adc  l                                           ; $54e6: $8d
	xor  $10                                         ; $54e7: $ee $10
	sbc  $36                                         ; $54e9: $de $36
	ld   h, $36                                      ; $54eb: $26 $36
	ld   h, $36                                      ; $54ed: $26 $36
	ld   h, $36                                      ; $54ef: $26 $36
	ld   h, $36                                      ; $54f1: $26 $36
	ld   h, $36                                      ; $54f3: $26 $36
	ld   h, $36                                      ; $54f5: $26 $36
	ld   h, $36                                      ; $54f7: $26 $36
	ld   b, $8d                                      ; $54f9: $06 $8d
	rst  $38                                         ; $54fb: $ff
	nop                                              ; $54fc: $00
	sub  e                                           ; $54fd: $93
	add  h                                           ; $54fe: $84
	xor  c                                           ; $54ff: $a9
	add  h                                           ; $5500: $84
	sub  c                                           ; $5501: $91
	add  b                                           ; $5502: $80
	and  c                                           ; $5503: $a1
	ld   bc, $fa89                                   ; $5504: $01 $89 $fa
	adc  l                                           ; $5507: $8d
	rst  $38                                         ; $5508: $ff
	nop                                              ; $5509: $00
	ld   [de], a                                     ; $550a: $12
	adc  l                                           ; $550b: $8d
	rst  $28                                         ; $550c: $ef
	ld   bc, $8f02                                   ; $550d: $01 $02 $8f
	add  b                                           ; $5510: $80
	sub  a                                           ; $5511: $97
	add  b                                           ; $5512: $80
	adc  a                                           ; $5513: $8f
	add  b                                           ; $5514: $80
	sub  a                                           ; $5515: $97
	add  b                                           ; $5516: $80
	adc  a                                           ; $5517: $8f
	add  b                                           ; $5518: $80
	sub  a                                           ; $5519: $97
	add  b                                           ; $551a: $80
	adc  a                                           ; $551b: $8f
	add  b                                           ; $551c: $80
	sub  a                                           ; $551d: $97
	nop                                              ; $551e: $00
	ld   a, a                                        ; $551f: $7f
	add  a                                           ; $5520: $87
	rst  $38                                         ; $5521: $ff
	add  b                                           ; $5522: $80
	nop                                              ; $5523: $00
	nop                                              ; $5524: $00
	rst  $38                                         ; $5525: $ff
	add  c                                           ; $5526: $81
	nop                                              ; $5527: $00
	ld   [$f03f], sp                                 ; $5528: $08 $3f $f0
	pop  bc                                          ; $552b: $c1
	ld   sp, hl                                      ; $552c: $f9
	ldh  a, [$fc]                                    ; $552d: $f0 $fc
	ld   hl, sp-$02                                  ; $552f: $f8 $fe
	db   $fc                                         ; $5531: $fc
	add  d                                           ; $5532: $82
	cp   $01                                         ; $5533: $fe $01
	rst  $38                                         ; $5535: $ff
	cp   $87                                         ; $5536: $fe $87
	rst  $38                                         ; $5538: $ff
	add  b                                           ; $5539: $80
	add  sp, $06                                     ; $553a: $e8 $06
	rlca                                             ; $553c: $07
	inc  b                                           ; $553d: $04
	db   $e4                                         ; $553e: $e4
	ldh  [$f0], a                                    ; $553f: $e0 $f0
	ldh  [$e8], a                                    ; $5541: $e0 $e8
	add  l                                           ; $5543: $85
	rst  $38                                         ; $5544: $ff
	add  b                                           ; $5545: $80
	ld   e, a                                        ; $5546: $5f
	add  b                                           ; $5547: $80
	add  b                                           ; $5548: $80
	inc  b                                           ; $5549: $04
	sbc  a                                           ; $554a: $9f
	rra                                              ; $554b: $1f
	ccf                                              ; $554c: $3f
	rra                                              ; $554d: $1f
	ld   e, [hl]                                     ; $554e: $5e
	add  a                                           ; $554f: $87
	cp   $80                                         ; $5550: $fe $80
	nop                                              ; $5552: $00
	add  b                                           ; $5553: $80
	db   $f4                                         ; $5554: $f4
	add  b                                           ; $5555: $80
	cp   $00                                         ; $5556: $fe $00
	nop                                              ; $5558: $00
	adc  c                                           ; $5559: $89
	rst  $38                                         ; $555a: $ff
	add  b                                           ; $555b: $80
	ld   e, a                                        ; $555c: $5f
	add  b                                           ; $555d: $80
	xor  e                                           ; $555e: $ab
	add  [hl]                                        ; $555f: $86
	rrca                                             ; $5560: $0f
	add  b                                           ; $5561: $80
	ld   c, $80                                      ; $5562: $0e $80
	dec  c                                           ; $5564: $0d
	add  b                                           ; $5565: $80
	ld   a, [bc]                                     ; $5566: $0a
	add  b                                           ; $5567: $80
	dec  b                                           ; $5568: $05
	add  b                                           ; $5569: $80
	cp   $80                                         ; $556a: $fe $80
	db   $fd                                         ; $556c: $fd
	add  b                                           ; $556d: $80
	ld   a, [$d580]                                  ; $556e: $fa $80 $d5
	add  b                                           ; $5571: $80
	xor  d                                           ; $5572: $aa
	add  b                                           ; $5573: $80
	ld   d, l                                        ; $5574: $55
	add  b                                           ; $5575: $80
	xor  d                                           ; $5576: $aa
	add  b                                           ; $5577: $80
	ld   d, l                                        ; $5578: $55
	add  b                                           ; $5579: $80
	xor  d                                           ; $557a: $aa
	add  b                                           ; $557b: $80
	ld   d, l                                        ; $557c: $55
	add  b                                           ; $557d: $80
	xor  d                                           ; $557e: $aa
	add  b                                           ; $557f: $80
	ld   d, l                                        ; $5580: $55
	add  b                                           ; $5581: $80
	xor  d                                           ; $5582: $aa
	add  b                                           ; $5583: $80
	ld   d, l                                        ; $5584: $55
	add  b                                           ; $5585: $80
	xor  d                                           ; $5586: $aa
	add  b                                           ; $5587: $80
	ld   d, l                                        ; $5588: $55
	db   $10                                         ; $5589: $10
	rst  $20                                         ; $558a: $e7
	rst  $38                                         ; $558b: $ff
	rst  $30                                         ; $558c: $f7
	rst  $38                                         ; $558d: $ff
	rst  $30                                         ; $558e: $f7
	rst  $38                                         ; $558f: $ff
	di                                               ; $5590: $f3
	rst  $38                                         ; $5591: $ff
	di                                               ; $5592: $f3
	rst  $38                                         ; $5593: $ff
	di                                               ; $5594: $f3
	rst  $38                                         ; $5595: $ff
	pop  af                                          ; $5596: $f1
	rst  $38                                         ; $5597: $ff
	pop  af                                          ; $5598: $f1
	rst  $38                                         ; $5599: $ff
	sub  a                                           ; $559a: $97
	add  b                                           ; $559b: $80
	sbc  c                                           ; $559c: $99
	add  b                                           ; $559d: $80
	xor  c                                           ; $559e: $a9
	add  b                                           ; $559f: $80
	sbc  c                                           ; $55a0: $99
	add  a                                           ; $55a1: $87
	sub  c                                           ; $55a2: $91
	nop                                              ; $55a3: $00
	ldh  [c], a                                      ; $55a4: $e2
	adc  c                                           ; $55a5: $89
	rst  $38                                         ; $55a6: $ff
	inc  b                                           ; $55a7: $04
	rst  $28                                         ; $55a8: $ef
	rst  $38                                         ; $55a9: $ff
	add  a                                           ; $55aa: $87
	rst  $38                                         ; $55ab: $ff
	ld   h, a                                        ; $55ac: $67
	add  c                                           ; $55ad: $81
	rst  $38                                         ; $55ae: $ff
	ld   c, $da                                      ; $55af: $0e $da
	cp   $36                                         ; $55b1: $fe $36
	jp   c, $37f8                                    ; $55b3: $da $f8 $37

	rst  $20                                         ; $55b6: $e7
	pop  hl                                          ; $55b7: $e1
	add  hl, de                                      ; $55b8: $19
	ret  nz                                          ; $55b9: $c0

	rst  $20                                         ; $55ba: $e7
	add  b                                           ; $55bb: $80
	and  b                                           ; $55bc: $a0
	ld   a, a                                        ; $55bd: $7f
	ld   l, a                                        ; $55be: $6f
	add  b                                           ; $55bf: $80
	ld   a, a                                        ; $55c0: $7f
	dec  bc                                          ; $55c1: $0b
	rst  $38                                         ; $55c2: $ff
	ld   e, $ef                                      ; $55c3: $1e $ef
	rst  $20                                         ; $55c5: $e7
	xor  $6f                                         ; $55c6: $ee $6f
	rst  $28                                         ; $55c8: $ef
	cp   a                                           ; $55c9: $bf
	ld   [hl], a                                     ; $55ca: $77
	ld   [hl], d                                     ; $55cb: $72
	ld   [hl], a                                     ; $55cc: $77
	ld   d, d                                        ; $55cd: $52
	add  e                                           ; $55ce: $83
	nop                                              ; $55cf: $00
	ld   [bc], a                                     ; $55d0: $02
	ld   h, a                                        ; $55d1: $67
	jr   nz, jr_099_560f                             ; $55d2: $20 $3b

	add  b                                           ; $55d4: $80
	dec  bc                                          ; $55d5: $0b
	dec  b                                           ; $55d6: $05
	ld   c, e                                        ; $55d7: $4b
	call nc, $e8e4                                   ; $55d8: $d4 $e4 $e8
	ret  nc                                          ; $55db: $d0

	adc  b                                           ; $55dc: $88
	add  e                                           ; $55dd: $83
	nop                                              ; $55de: $00
	ld   a, [bc]                                     ; $55df: $0a
	sbc  a                                           ; $55e0: $9f
	inc  e                                           ; $55e1: $1c
	ld   a, h                                        ; $55e2: $7c
	ld   c, h                                        ; $55e3: $4c
	ld   b, h                                        ; $55e4: $44
	ld   c, [hl]                                     ; $55e5: $4e
	xor  [hl]                                        ; $55e6: $ae
	adc  [hl]                                        ; $55e7: $8e
	ld   e, [hl]                                     ; $55e8: $5e
	dec  e                                           ; $55e9: $1d
	ld   a, d                                        ; $55ea: $7a
	add  e                                           ; $55eb: $83
	nop                                              ; $55ec: $00
	dec  bc                                          ; $55ed: $0b
	cp   [hl]                                        ; $55ee: $be
	ret  z                                           ; $55ef: $c8

	add  sp, -$1c                                    ; $55f0: $e8 $e4
	sub  h                                           ; $55f2: $94
	ld   [hl], d                                     ; $55f3: $72
	ld   b, d                                        ; $55f4: $42
	ld   a, [hl]                                     ; $55f5: $7e
	ld   b, b                                        ; $55f6: $40
	ld   a, $de                                      ; $55f7: $3e $de
	rst  $38                                         ; $55f9: $ff
	add  b                                           ; $55fa: $80
	cp   a                                           ; $55fb: $bf
	add  b                                           ; $55fc: $80
	ld   d, a                                        ; $55fd: $57
	add  b                                           ; $55fe: $80
	xor  d                                           ; $55ff: $aa
	add  b                                           ; $5600: $80
	ld   d, l                                        ; $5601: $55
	add  b                                           ; $5602: $80
	xor  d                                           ; $5603: $aa
	add  b                                           ; $5604: $80
	ld   d, l                                        ; $5605: $55
	add  b                                           ; $5606: $80
	xor  d                                           ; $5607: $aa
	add  [hl]                                        ; $5608: $86
	ldh  a, [$80]                                    ; $5609: $f0 $80
	ld   [hl], b                                     ; $560b: $70
	add  b                                           ; $560c: $80
	or   b                                           ; $560d: $b0
	add  b                                           ; $560e: $80

jr_099_560f:
	ld   d, b                                        ; $560f: $50
	add  b                                           ; $5610: $80
	and  b                                           ; $5611: $a0
	add  b                                           ; $5612: $80
	ld   a, [bc]                                     ; $5613: $0a
	add  b                                           ; $5614: $80
	dec  b                                           ; $5615: $05
	add  b                                           ; $5616: $80
	ld   a, [bc]                                     ; $5617: $0a
	add  b                                           ; $5618: $80
	dec  b                                           ; $5619: $05
	add  b                                           ; $561a: $80
	ld   a, [bc]                                     ; $561b: $0a
	add  b                                           ; $561c: $80
	dec  b                                           ; $561d: $05
	add  b                                           ; $561e: $80
	ld   a, [bc]                                     ; $561f: $0a
	add  b                                           ; $5620: $80
	dec  b                                           ; $5621: $05
	add  b                                           ; $5622: $80
	xor  d                                           ; $5623: $aa
	add  b                                           ; $5624: $80
	ld   d, l                                        ; $5625: $55
	add  b                                           ; $5626: $80
	xor  d                                           ; $5627: $aa
	add  b                                           ; $5628: $80
	ld   d, l                                        ; $5629: $55
	add  b                                           ; $562a: $80
	xor  d                                           ; $562b: $aa
	add  b                                           ; $562c: $80
	ld   d, h                                        ; $562d: $54
	add  b                                           ; $562e: $80
	and  b                                           ; $562f: $a0
	add  b                                           ; $5630: $80
	ld   b, b                                        ; $5631: $40
	add  b                                           ; $5632: $80
	xor  d                                           ; $5633: $aa
	add  b                                           ; $5634: $80
	ld   d, b                                        ; $5635: $50
	add  b                                           ; $5636: $80
	and  b                                           ; $5637: $a0
	add  b                                           ; $5638: $80

jr_099_5639:
	ld   b, b                                        ; $5639: $40
	add  [hl]                                        ; $563a: $86
	nop                                              ; $563b: $00
	nop                                              ; $563c: $00
	rst  JumpTable                                         ; $563d: $df
	adc  l                                           ; $563e: $8d
	ld   [hl], $08                                   ; $563f: $36 $08
	inc  c                                           ; $5641: $0c
	rst  $38                                         ; $5642: $ff
	ldh  a, [rIE]                                    ; $5643: $f0 $ff
	ldh  a, [rIE]                                    ; $5645: $f0 $ff
	ldh  a, [rIE]                                    ; $5647: $f0 $ff
	push af                                          ; $5649: $f5
	add  c                                           ; $564a: $81
	rst  $38                                         ; $564b: $ff
	ld   a, [bc]                                     ; $564c: $0a
	cp   $ff                                         ; $564d: $fe $ff
	ld   sp, hl                                      ; $564f: $f9
	rst  $38                                         ; $5650: $ff
	sbc  d                                           ; $5651: $9a
	and  c                                           ; $5652: $a1
	and  b                                           ; $5653: $a0
	and  c                                           ; $5654: $a1
	dec  l                                           ; $5655: $2d
	add  c                                           ; $5656: $81
	ld   sp, $8f80                                   ; $5657: $31 $80 $8f
	inc  bc                                          ; $565a: $03
	ld   a, a                                        ; $565b: $7f
	cp   a                                           ; $565c: $bf
	rst  $38                                         ; $565d: $ff
	ld   a, a                                        ; $565e: $7f
	add  c                                           ; $565f: $81
	rst  $38                                         ; $5660: $ff
	inc  b                                           ; $5661: $04
	ld   a, h                                        ; $5662: $7c
	rst  $38                                         ; $5663: $ff
	ld   a, l                                        ; $5664: $7d
	rst  $38                                         ; $5665: $ff
	cp   $89                                         ; $5666: $fe $89
	rst  $38                                         ; $5668: $ff
	nop                                              ; $5669: $00
	dec  e                                           ; $566a: $1d
	add  l                                           ; $566b: $85
	rst  $28                                         ; $566c: $ef
	inc  b                                           ; $566d: $04
	ld   l, a                                        ; $566e: $6f
	rst  $28                                         ; $566f: $ef
	xor  a                                           ; $5670: $af
	rst  $28                                         ; $5671: $ef
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5672: $cf
	add  c                                           ; $5673: $81
	rst  $28                                         ; $5674: $ef
	dec  bc                                          ; $5675: $0b
	ldh  [$cf], a                                    ; $5676: $e0 $cf
	db   $fc                                         ; $5678: $fc
	cp   [hl]                                        ; $5679: $be
	cp   l                                           ; $567a: $bd
	ld   a, h                                        ; $567b: $7c
	ld   a, d                                        ; $567c: $7a
	ld   hl, sp-$0f                                  ; $567d: $f8 $f1
	ldh  a, [$f5]                                    ; $567f: $f0 $f5
	ldh  a, [$80]                                    ; $5681: $f0 $80
	ldh  [rDIV], a                                   ; $5683: $e0 $04
	ret  z                                           ; $5685: $c8

	ldh  [$d0], a                                    ; $5686: $e0 $d0
	nop                                              ; $5688: $00
	ld   b, b                                        ; $5689: $40
	add  e                                           ; $568a: $83
	nop                                              ; $568b: $00
	nop                                              ; $568c: $00
	add  b                                           ; $568d: $80
	add  l                                           ; $568e: $85
	nop                                              ; $568f: $00
	ld   [bc], a                                     ; $5690: $02
	ld   a, a                                        ; $5691: $7f
	scf                                              ; $5692: $37
	ccf                                              ; $5693: $3f
	add  c                                           ; $5694: $81
	dec  sp                                          ; $5695: $3b
	inc  b                                           ; $5696: $04
	inc  sp                                          ; $5697: $33
	dec  sp                                          ; $5698: $3b
	inc  hl                                          ; $5699: $23
	dec  sp                                          ; $569a: $3b
	ccf                                              ; $569b: $3f
	add  e                                           ; $569c: $83
	dec  a                                           ; $569d: $3d
	inc  c                                           ; $569e: $0c
	inc  hl                                          ; $569f: $23
	cp   [hl]                                        ; $56a0: $be
	ld   l, [hl]                                     ; $56a1: $6e
	sbc  $c2                                         ; $56a2: $de $c2
	rst  JumpTable                                         ; $56a4: $df
	ld   a, $ef                                      ; $56a5: $3e $ef
	xor  a                                           ; $56a7: $af
	rst  $28                                         ; $56a8: $ef
	rst  $20                                         ; $56a9: $e7
	rst  $28                                         ; $56aa: $ef
	ld   a, a                                        ; $56ab: $7f
	add  c                                           ; $56ac: $81
	rst  $30                                         ; $56ad: $f7
	inc  b                                           ; $56ae: $04
	ld   c, a                                        ; $56af: $4f
	add  hl, sp                                      ; $56b0: $39
	ld   c, c                                        ; $56b1: $49
	ld   [hl], e                                     ; $56b2: $73
	inc  sp                                          ; $56b3: $33
	add  b                                           ; $56b4: $80
	add  $80                                         ; $56b5: $c6 $80
	jr   jr_099_5639                                 ; $56b7: $18 $80

	ld   h, c                                        ; $56b9: $61
	add  b                                           ; $56ba: $80
	add  [hl]                                        ; $56bb: $86
	add  b                                           ; $56bc: $80
	ld   [hl], b                                     ; $56bd: $70
	inc  bc                                          ; $56be: $03
	jr   c, jr_099_5700                              ; $56bf: $38 $3f

	sbc  [hl]                                        ; $56c1: $9e
	sbc  b                                           ; $56c2: $98
	add  b                                           ; $56c3: $80
	ld   b, [hl]                                     ; $56c4: $46
	add  b                                           ; $56c5: $80
	ld   a, [hl]                                     ; $56c6: $7e
	ld   a, [bc]                                     ; $56c7: $0a
	or   [hl]                                        ; $56c8: $b6
	or   h                                           ; $56c9: $b4
	ld   l, [hl]                                     ; $56ca: $6e
	ld   l, d                                        ; $56cb: $6a
	sbc  h                                           ; $56cc: $9c
	sub  h                                           ; $56cd: $94
	inc  a                                           ; $56ce: $3c
	inc  l                                           ; $56cf: $2c
	ret  c                                           ; $56d0: $d8

	sub  d                                           ; $56d1: $92
	ld   d, l                                        ; $56d2: $55
	add  b                                           ; $56d3: $80
	ld   a, [bc]                                     ; $56d4: $0a
	add  b                                           ; $56d5: $80
	dec  b                                           ; $56d6: $05
	adc  b                                           ; $56d7: $88
	nop                                              ; $56d8: $00
	add  b                                           ; $56d9: $80
	ld   d, l                                        ; $56da: $55
	add  b                                           ; $56db: $80
	xor  d                                           ; $56dc: $aa
	add  b                                           ; $56dd: $80
	ld   d, l                                        ; $56de: $55
	add  b                                           ; $56df: $80
	xor  d                                           ; $56e0: $aa
	add  b                                           ; $56e1: $80
	ld   d, l                                        ; $56e2: $55
	add  b                                           ; $56e3: $80
	ld   a, [hl+]                                    ; $56e4: $2a
	add  b                                           ; $56e5: $80
	dec  b                                           ; $56e6: $05
	add  b                                           ; $56e7: $80
	ld   [bc], a                                     ; $56e8: $02
	add  b                                           ; $56e9: $80
	ld   a, [bc]                                     ; $56ea: $0a
	add  b                                           ; $56eb: $80
	dec  b                                           ; $56ec: $05
	add  b                                           ; $56ed: $80
	ld   a, [bc]                                     ; $56ee: $0a
	add  b                                           ; $56ef: $80
	inc  b                                           ; $56f0: $04
	add  b                                           ; $56f1: $80
	ld   [$0084], sp                                 ; $56f2: $08 $84 $00
	add  b                                           ; $56f5: $80
	add  b                                           ; $56f6: $80
	sbc  h                                           ; $56f7: $9c
	nop                                              ; $56f8: $00
	nop                                              ; $56f9: $00
	rst  $28                                         ; $56fa: $ef
	add  e                                           ; $56fb: $83
	rst  $38                                         ; $56fc: $ff
	nop                                              ; $56fd: $00
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $56fe: $cf
	add  e                                           ; $56ff: $83

jr_099_5700:
	rst  $38                                         ; $5700: $ff
	nop                                              ; $5701: $00
	sbc  a                                           ; $5702: $9f
	add  c                                           ; $5703: $81
	rst  $38                                         ; $5704: $ff
	nop                                              ; $5705: $00
	cp   a                                           ; $5706: $bf
	add  a                                           ; $5707: $87
	rst  $38                                         ; $5708: $ff

jr_099_5709:
	ld   b, $fc                                      ; $5709: $06 $fc
	rst  $38                                         ; $570b: $ff
	ldh  [rIE], a                                    ; $570c: $e0 $ff
	inc  bc                                          ; $570e: $03
	rst  $38                                         ; $570f: $ff
	rra                                              ; $5710: $1f
	add  c                                           ; $5711: $81
	rst  $38                                         ; $5712: $ff
	ld   b, $fc                                      ; $5713: $06 $fc
	rst  $38                                         ; $5715: $ff
	ldh  [rIE], a                                    ; $5716: $e0 $ff
	inc  bc                                          ; $5718: $03
	rst  $38                                         ; $5719: $ff
	rra                                              ; $571a: $1f
	add  e                                           ; $571b: $83
	rst  $38                                         ; $571c: $ff
	ld   b, $fd                                      ; $571d: $06 $fd
	rst  $28                                         ; $571f: $ef
	sbc  a                                           ; $5720: $9f
	rst  $38                                         ; $5721: $ff
	rrca                                             ; $5722: $0f
	rst  $38                                         ; $5723: $ff
	ld   a, a                                        ; $5724: $7f
	add  a                                           ; $5725: $87
	rst  $38                                         ; $5726: $ff
	ld   [bc], a                                     ; $5727: $02
	ldh  [c], a                                      ; $5728: $e2
	ret  nz                                          ; $5729: $c0

	ldh  [$84], a                                    ; $572a: $e0 $84
	add  b                                           ; $572c: $80
	add  d                                           ; $572d: $82
	nop                                              ; $572e: $00
	add  b                                           ; $572f: $80
	add  b                                           ; $5730: $80
	ld   bc, $c000                                   ; $5731: $01 $00 $c0
	add  a                                           ; $5734: $87
	nop                                              ; $5735: $00
	nop                                              ; $5736: $00
	ld   bc, $0081                                   ; $5737: $01 $81 $00
	ld   [bc], a                                     ; $573a: $02
	ld   bc, $6300                                   ; $573b: $01 $00 $63
	add  e                                           ; $573e: $83
	dec  a                                           ; $573f: $3d
	nop                                              ; $5740: $00
	cp   l                                           ; $5741: $bd
	add  e                                           ; $5742: $83
	dec  a                                           ; $5743: $3d
	inc  b                                           ; $5744: $04
	add  hl, sp                                      ; $5745: $39
	ld   a, e                                        ; $5746: $7b
	ld   e, e                                        ; $5747: $5b
	ld   a, e                                        ; $5748: $7b
	inc  [hl]                                        ; $5749: $34
	add  l                                           ; $574a: $85
	rst  $30                                         ; $574b: $f7
	nop                                              ; $574c: $00
	push hl                                          ; $574d: $e5
	add  c                                           ; $574e: $81
	rst  $28                                         ; $574f: $ef
	nop                                              ; $5750: $00
	ld   c, d                                        ; $5751: $4a
	add  b                                           ; $5752: $80
	rst  $28                                         ; $5753: $ef
	dec  e                                           ; $5754: $1d
	sbc  $e1                                         ; $5755: $de $e1
	add  a                                           ; $5757: $87
	rlca                                             ; $5758: $07
	ldh  [$83], a                                    ; $5759: $e0 $83
	rst  $38                                         ; $575b: $ff
	ld   a, h                                        ; $575c: $7c
	db   $e3                                         ; $575d: $e3
	add  e                                           ; $575e: $83
	rst  $38                                         ; $575f: $ff
	ld   a, [$f7ff]                                  ; $5760: $fa $ff $f7
	rst  $38                                         ; $5763: $ff
	sbc  a                                           ; $5764: $9f
	rst  $38                                         ; $5765: $ff
	adc  l                                           ; $5766: $8d
	db   $10                                         ; $5767: $10
	ld   l, b                                        ; $5768: $68
	ld   a, h                                        ; $5769: $7c
	sbc  [hl]                                        ; $576a: $9e
	cp   $7e                                         ; $576b: $fe $7e
	cp   $de                                         ; $576d: $fe $de
	cp   $7e                                         ; $576f: $fe $7e
	cp   $fc                                         ; $5771: $fe $fc
	add  c                                           ; $5773: $81
	cp   $01                                         ; $5774: $fe $01
	ld   e, b                                        ; $5776: $58
	ld   bc, $008c                                   ; $5777: $01 $8c $00
	add  b                                           ; $577a: $80
	ld   d, b                                        ; $577b: $50
	add  b                                           ; $577c: $80
	and  b                                           ; $577d: $a0
	add  b                                           ; $577e: $80
	ld   d, b                                        ; $577f: $50
	add  b                                           ; $5780: $80
	jr   nz, jr_099_5709                             ; $5781: $20 $86

	nop                                              ; $5783: $00
	nop                                              ; $5784: $00
	sbc  $81                                         ; $5785: $de $81
	scf                                              ; $5787: $37
	inc  d                                           ; $5788: $14
	inc  sp                                          ; $5789: $33
	scf                                              ; $578a: $37
	inc  sp                                          ; $578b: $33
	scf                                              ; $578c: $37
	ld   [hl-], a                                    ; $578d: $32
	scf                                              ; $578e: $37
	inc  sp                                          ; $578f: $33
	scf                                              ; $5790: $37
	inc  sp                                          ; $5791: $33
	scf                                              ; $5792: $37
	inc  sp                                          ; $5793: $33
	scf                                              ; $5794: $37
	ld   d, b                                        ; $5795: $50
	rst  $38                                         ; $5796: $ff
	jr   nz, @+$01                                   ; $5797: $20 $ff

	add  a                                           ; $5799: $87
	rst  $38                                         ; $579a: $ff
	sbc  a                                           ; $579b: $9f
	rst  $38                                         ; $579c: $ff
	ld   a, a                                        ; $579d: $7f
	sub  l                                           ; $579e: $95
	rst  $38                                         ; $579f: $ff
	nop                                              ; $57a0: $00
	db   $fd                                         ; $57a1: $fd
	adc  l                                           ; $57a2: $8d
	rst  $38                                         ; $57a3: $ff
	inc  b                                           ; $57a4: $04
	ld   h, d                                        ; $57a5: $62
	nop                                              ; $57a6: $00
	ld   [hl], b                                     ; $57a7: $70
	nop                                              ; $57a8: $00
	db   $10                                         ; $57a9: $10
	add  c                                           ; $57aa: $81
	nop                                              ; $57ab: $00
	nop                                              ; $57ac: $00
	ld   b, b                                        ; $57ad: $40
	add  c                                           ; $57ae: $81
	nop                                              ; $57af: $00
	nop                                              ; $57b0: $00
	and  b                                           ; $57b1: $a0
	add  b                                           ; $57b2: $80
	nop                                              ; $57b3: $00
	inc  bc                                          ; $57b4: $03
	add  b                                           ; $57b5: $80
	ld   h, c                                        ; $57b6: $61
	nop                                              ; $57b7: $00
	ld   bc, $008b                                   ; $57b8: $01 $8b $00
	ld   bc, $7f6d                                   ; $57bb: $01 $6d $7f
	add  d                                           ; $57be: $82
	ld   a, e                                        ; $57bf: $7b
	add  d                                           ; $57c0: $82
	dec  sp                                          ; $57c1: $3b
	add  c                                           ; $57c2: $81
	dec  de                                          ; $57c3: $1b
	nop                                              ; $57c4: $00
	ld   e, e                                        ; $57c5: $5b
	add  b                                           ; $57c6: $80
	ld   d, e                                        ; $57c7: $53
	ld   bc, rAUDTERM                                   ; $57c8: $01 $25 $ff
	adc  b                                           ; $57cb: $88
	db   $fd                                         ; $57cc: $fd
	add  d                                           ; $57cd: $82
	db   $dd                                         ; $57ce: $dd
	nop                                              ; $57cf: $00
	push hl                                          ; $57d0: $e5
	adc  e                                           ; $57d1: $8b
	rst  $38                                         ; $57d2: $ff
	add  b                                           ; $57d3: $80
	rst  $30                                         ; $57d4: $f7
	nop                                              ; $57d5: $00
	dec  a                                           ; $57d6: $3d
	add  l                                           ; $57d7: $85
	cp   $83                                         ; $57d8: $fe $83
	or   $00                                         ; $57da: $f6 $00
	ldh  a, [$80]                                    ; $57dc: $f0 $80
	ld   [hl], b                                     ; $57de: $70
	inc  c                                           ; $57df: $0c
	adc  h                                           ; $57e0: $8c
	scf                                              ; $57e1: $37
	inc  sp                                          ; $57e2: $33
	scf                                              ; $57e3: $37
	inc  sp                                          ; $57e4: $33
	scf                                              ; $57e5: $37
	inc  sp                                          ; $57e6: $33
	scf                                              ; $57e7: $37
	inc  sp                                          ; $57e8: $33
	scf                                              ; $57e9: $37
	inc  sp                                          ; $57ea: $33
	scf                                              ; $57eb: $37
	inc  sp                                          ; $57ec: $33
	add  c                                           ; $57ed: $81
	scf                                              ; $57ee: $37
	nop                                              ; $57ef: $00
	inc  de                                          ; $57f0: $13
	adc  c                                           ; $57f1: $89
	rst  $38                                         ; $57f2: $ff
	inc  b                                           ; $57f3: $04
	db   $fc                                         ; $57f4: $fc
	rst  $38                                         ; $57f5: $ff
	jp   $c0ff                                       ; $57f6: $c3 $ff $c0


	add  l                                           ; $57f9: $85
	rst  $38                                         ; $57fa: $ff
	inc  b                                           ; $57fb: $04
	ld   hl, sp-$01                                  ; $57fc: $f8 $ff
	rst  ToBoot                                         ; $57fe: $c7
	rst  $38                                         ; $57ff: $ff
	ccf                                              ; $5800: $3f
	add  c                                           ; $5801: $81
	rst  $38                                         ; $5802: $ff
	nop                                              ; $5803: $00
	nop                                              ; $5804: $00
	add  c                                           ; $5805: $81
	rst  $38                                         ; $5806: $ff
	inc  b                                           ; $5807: $04
	ld   hl, sp-$01                                  ; $5808: $f8 $ff
	add  a                                           ; $580a: $87
	rst  $38                                         ; $580b: $ff
	ld   a, a                                        ; $580c: $7f
	add  l                                           ; $580d: $85
	rst  $38                                         ; $580e: $ff
	inc  b                                           ; $580f: $04
	ld   [bc], a                                     ; $5810: $02
	rst  $38                                         ; $5811: $ff
	sbc  a                                           ; $5812: $9f
	rst  $28                                         ; $5813: $ef
	ld   l, a                                        ; $5814: $6f
	add  c                                           ; $5815: $81
	rst  $28                                         ; $5816: $ef
	add  b                                           ; $5817: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5818: $cf
	add  b                                           ; $5819: $80
	rst  $28                                         ; $581a: $ef
	add  b                                           ; $581b: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $581c: $cf
	add  b                                           ; $581d: $80
	adc  a                                           ; $581e: $8f
	ld   [bc], a                                     ; $581f: $02
	ld   a, [$525a]                                  ; $5820: $fa $5a $52
	add  l                                           ; $5823: $85
	ld   b, [hl]                                     ; $5824: $46
	ld   bc, $4676                                   ; $5825: $01 $76 $46
	add  b                                           ; $5828: $80
	ld   b, $03                                      ; $5829: $06 $03
	add  [hl]                                        ; $582b: $86
	inc  b                                           ; $582c: $04
	and  c                                           ; $582d: $a1
	rst  JumpTable                                         ; $582e: $df
	add  b                                           ; $582f: $80
	sbc  a                                           ; $5830: $9f
	add  [hl]                                        ; $5831: $86
	sbc  e                                           ; $5832: $9b
	add  d                                           ; $5833: $82
	adc  e                                           ; $5834: $8b
	ld   bc, $f3eb                                   ; $5835: $01 $eb $f3
	adc  b                                           ; $5838: $88
	ldh  a, [c]                                      ; $5839: $f2
	inc  b                                           ; $583a: $04
	ld   [hl], d                                     ; $583b: $72
	ldh  [c], a                                      ; $583c: $e2
	ld   h, d                                        ; $583d: $62
	ldh  [c], a                                      ; $583e: $e2
	add  l                                           ; $583f: $85
	adc  l                                           ; $5840: $8d
	stop                                             ; $5841: $10 $00
	call $3783                                       ; $5843: $cd $83 $37
	ld   a, [bc]                                     ; $5846: $0a
	dec  [hl]                                        ; $5847: $35
	scf                                              ; $5848: $37
	dec  h                                           ; $5849: $25
	scf                                              ; $584a: $37
	dec  h                                           ; $584b: $25
	scf                                              ; $584c: $37
	dec  h                                           ; $584d: $25
	scf                                              ; $584e: $37
	dec  h                                           ; $584f: $25
	scf                                              ; $5850: $37
	rst  $28                                         ; $5851: $ef
	add  c                                           ; $5852: $81
	rst  $38                                         ; $5853: $ff
	nop                                              ; $5854: $00
	ld   a, a                                        ; $5855: $7f
	add  c                                           ; $5856: $81
	rst  $38                                         ; $5857: $ff
	nop                                              ; $5858: $00
	cp   a                                           ; $5859: $bf
	add  c                                           ; $585a: $81
	rst  $38                                         ; $585b: $ff
	nop                                              ; $585c: $00
	rst  JumpTable                                         ; $585d: $df
	add  c                                           ; $585e: $81
	rst  $38                                         ; $585f: $ff
	nop                                              ; $5860: $00
	rra                                              ; $5861: $1f
	adc  e                                           ; $5862: $8b
	rst  $38                                         ; $5863: $ff
	ld   [bc], a                                     ; $5864: $02
	ldh  [rIE], a                                    ; $5865: $e0 $ff
	ldh  [$81], a                                    ; $5867: $e0 $81
	rst  $38                                         ; $5869: $ff
	add  b                                           ; $586a: $80
	cp   $80                                         ; $586b: $fe $80
	rst  $38                                         ; $586d: $ff
	add  b                                           ; $586e: $80
	cp   $03                                         ; $586f: $fe $03
	push af                                          ; $5871: $f5
	db   $fd                                         ; $5872: $fd
	dec  bc                                          ; $5873: $0b
	ei                                               ; $5874: $fb
	add  b                                           ; $5875: $80
	rst  $38                                         ; $5876: $ff
	ld   bc, $af5a                                   ; $5877: $01 $5a $af
	add  b                                           ; $587a: $80
	ld   c, a                                        ; $587b: $4f
	add  b                                           ; $587c: $80
	xor  a                                           ; $587d: $af
	add  b                                           ; $587e: $80
	ld   c, a                                        ; $587f: $4f
	add  b                                           ; $5880: $80
	xor  a                                           ; $5881: $af
	add  b                                           ; $5882: $80
	ld   c, a                                        ; $5883: $4f
	add  b                                           ; $5884: $80
	xor  a                                           ; $5885: $af
	add  b                                           ; $5886: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5887: $cf
	ld   bc, $8b06                                   ; $5888: $01 $06 $8b
	add  b                                           ; $588b: $80
	sub  a                                           ; $588c: $97
	add  b                                           ; $588d: $80
	adc  e                                           ; $588e: $8b
	add  b                                           ; $588f: $80
	sub  a                                           ; $5890: $97
	add  b                                           ; $5891: $80
	adc  e                                           ; $5892: $8b
	add  b                                           ; $5893: $80
	sub  a                                           ; $5894: $97
	add  b                                           ; $5895: $80
	adc  e                                           ; $5896: $8b
	add  b                                           ; $5897: $80
	sub  a                                           ; $5898: $97
	add  d                                           ; $5899: $82
	nop                                              ; $589a: $00
	add  b                                           ; $589b: $80
	ld   a, $80                                      ; $589c: $3e $80
	nop                                              ; $589e: $00
	add  b                                           ; $589f: $80
	ld   d, $00                                      ; $58a0: $16 $00
	sub  [hl]                                        ; $58a2: $96
	add  c                                           ; $58a3: $81
	ld   d, $02                                      ; $58a4: $16 $02
	sub  [hl]                                        ; $58a6: $96
	ld   d, $af                                      ; $58a7: $16 $af
	add  e                                           ; $58a9: $83
	and  b                                           ; $58aa: $a0
	adc  b                                           ; $58ab: $88
	add  b                                           ; $58ac: $80
	nop                                              ; $58ad: $00
	ld   [hl], c                                     ; $58ae: $71
	add  a                                           ; $58af: $87
	adc  e                                           ; $58b0: $8b
	nop                                              ; $58b1: $00
	adc  b                                           ; $58b2: $88
	add  e                                           ; $58b3: $83
	adc  e                                           ; $58b4: $8b
	nop                                              ; $58b5: $00
	jp   hl                                          ; $58b6: $e9


	add  b                                           ; $58b7: $80
	ldh  [c], a                                      ; $58b8: $e2
	add  a                                           ; $58b9: $87
	ld   [$ca81], a                                  ; $58ba: $ea $81 $ca
	ld   bc, $adea                                   ; $58bd: $01 $ea $ad
	add  d                                           ; $58c0: $82
	db   $10                                         ; $58c1: $10
	add  d                                           ; $58c2: $82
	sub  b                                           ; $58c3: $90
	nop                                              ; $58c4: $00
	adc  b                                           ; $58c5: $88
	add  b                                           ; $58c6: $80
	add  b                                           ; $58c7: $80
	add  c                                           ; $58c8: $81
	adc  b                                           ; $58c9: $88
	inc  de                                          ; $58ca: $13
	adc  d                                           ; $58cb: $8a
	ld   b, a                                        ; $58cc: $47
	scf                                              ; $58cd: $37
	dec  h                                           ; $58ce: $25
	scf                                              ; $58cf: $37
	dec  h                                           ; $58d0: $25
	scf                                              ; $58d1: $37
	inc  h                                           ; $58d2: $24
	ld   [hl], $26                                   ; $58d3: $36 $26
	ld   [hl], $26                                   ; $58d5: $36 $26
	ld   [hl], $26                                   ; $58d7: $36 $26
	ld   [hl], $26                                   ; $58d9: $36 $26
	ld   [hl], $0e                                   ; $58db: $36 $0e
	rst  $38                                         ; $58dd: $ff
	pop  af                                          ; $58de: $f1
	add  l                                           ; $58df: $85
	rst  $38                                         ; $58e0: $ff
	ld   b, $ef                                      ; $58e1: $06 $ef
	rst  $38                                         ; $58e3: $ff
	rst  $28                                         ; $58e4: $ef
	rst  $38                                         ; $58e5: $ff
	rst  $28                                         ; $58e6: $ef
	rst  $38                                         ; $58e7: $ff
	ld   hl, sp-$73                                  ; $58e8: $f8 $8d
	rst  $38                                         ; $58ea: $ff
	ld   bc, $af5a                                   ; $58eb: $01 $5a $af
	add  b                                           ; $58ee: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58ef: $cf
	add  b                                           ; $58f0: $80
	rst  $28                                         ; $58f1: $ef
	add  b                                           ; $58f2: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $58f3: $cf
	add  [hl]                                        ; $58f4: $86
	rst  $28                                         ; $58f5: $ef
	ld   bc, $830e                                   ; $58f6: $01 $0e $83
	add  b                                           ; $58f9: $80
	add  l                                           ; $58fa: $85
	add  b                                           ; $58fb: $80
	add  e                                           ; $58fc: $83
	add  b                                           ; $58fd: $80
	add  l                                           ; $58fe: $85
	add  b                                           ; $58ff: $80
	add  e                                           ; $5900: $83
	add  b                                           ; $5901: $80
	add  l                                           ; $5902: $85
	add  b                                           ; $5903: $80
	add  e                                           ; $5904: $83
	add  b                                           ; $5905: $80
	add  l                                           ; $5906: $85
	add  b                                           ; $5907: $80
	ld   d, $01                                      ; $5908: $16 $01
	ld   d, [hl]                                     ; $590a: $56
	ld   d, $80                                      ; $590b: $16 $80
	nop                                              ; $590d: $00
	nop                                              ; $590e: $00
	ld   e, $85                                      ; $590f: $1e $85
	nop                                              ; $5911: $00
	inc  bc                                          ; $5912: $03
	ld   e, $0e                                      ; $5913: $1e $0e
	pop  hl                                          ; $5915: $e1
	and  b                                           ; $5916: $a0
	add  b                                           ; $5917: $80
	ret  nz                                          ; $5918: $c0

	nop                                              ; $5919: $00
	and  b                                           ; $591a: $a0
	add  b                                           ; $591b: $80
	add  b                                           ; $591c: $80
	add  c                                           ; $591d: $81
	and  b                                           ; $591e: $a0
	add  h                                           ; $591f: $84
	add  b                                           ; $5920: $80
	nop                                              ; $5921: $00
	ld   [hl], d                                     ; $5922: $72
	add  d                                           ; $5923: $82
	xor  e                                           ; $5924: $ab
	add  b                                           ; $5925: $80
	and  e                                           ; $5926: $a3
	add  d                                           ; $5927: $82
	xor  e                                           ; $5928: $ab

jr_099_5929:
	nop                                              ; $5929: $00
	db   $eb                                         ; $592a: $eb
	add  b                                           ; $592b: $80
	rlc  d                                           ; $592c: $cb $02
	adc  d                                           ; $592e: $8a
	adc  h                                           ; $592f: $8c
	xor  a                                           ; $5930: $af
	add  h                                           ; $5931: $84
	ld   [$e280], a                                  ; $5932: $ea $80 $e2
	add  e                                           ; $5935: $83
	jp   hl                                          ; $5936: $e9


	ld   a, [bc]                                     ; $5937: $0a
	ld   h, b                                        ; $5938: $60
	jr   nz, jr_099_5929                             ; $5939: $20 $ee

	ld   c, $06                                      ; $593b: $0e $06
	ld   e, $1c                                      ; $593d: $1e $1c
	ld   e, $0c                                      ; $593f: $1e $0c
	ld   a, $3a                                      ; $5941: $3e $3a
	add  c                                           ; $5943: $81
	ld   a, $1c                                      ; $5944: $3e $1c
	ld   e, $7e                                      ; $5946: $1e $7e
	ld   [hl], d                                     ; $5948: $72
	ld   a, [hl]                                     ; $5949: $7e
	add  b                                           ; $594a: $80
	ld   [hl], $26                                   ; $594b: $36 $26
	ld   [hl], $26                                   ; $594d: $36 $26
	ld   [hl], $26                                   ; $594f: $36 $26
	ld   [hl], $26                                   ; $5951: $36 $26
	ld   [hl], $26                                   ; $5953: $36 $26
	ld   [hl], $26                                   ; $5955: $36 $26
	ld   [hl], $26                                   ; $5957: $36 $26
	ld   [hl], $00                                   ; $5959: $36 $00
	rst  $38                                         ; $595b: $ff
	rst  $28                                         ; $595c: $ef
	rst  $38                                         ; $595d: $ff
	rst  $28                                         ; $595e: $ef
	rst  $38                                         ; $595f: $ff
	rst  $28                                         ; $5960: $ef
	rst  $38                                         ; $5961: $ff
	rst  $28                                         ; $5962: $ef
	add  l                                           ; $5963: $85
	rst  $38                                         ; $5964: $ff
	db   $10                                         ; $5965: $10
	ld   c, a                                        ; $5966: $4f
	nop                                              ; $5967: $00
	stop                                             ; $5968: $10 $00
	adc  b                                           ; $596a: $88
	nop                                              ; $596b: $00
	ld   b, e                                        ; $596c: $43
	inc  bc                                          ; $596d: $03
	dec  b                                           ; $596e: $05
	ld   bc, $0080                                   ; $596f: $01 $80 $00
	ld   [bc], a                                     ; $5972: $02
	nop                                              ; $5973: $00
	ld   bc, $ff00                                   ; $5974: $01 $00 $ff
	add  b                                           ; $5977: $80
	and  b                                           ; $5978: $a0
	add  d                                           ; $5979: $82
	cpl                                              ; $597a: $2f
	add  h                                           ; $597b: $84
	rrca                                             ; $597c: $0f
	add  d                                           ; $597d: $82
	cpl                                              ; $597e: $2f
	add  b                                           ; $597f: $80
	pop  hl                                          ; $5980: $e1
	adc  h                                           ; $5981: $8c
	rst  $38                                         ; $5982: $ff
	add  b                                           ; $5983: $80
	pop  bc                                          ; $5984: $c1
	add  d                                           ; $5985: $82
	cp   $87                                         ; $5986: $fe $87
	rst  $38                                         ; $5988: $ff
	ld   bc, $7eb7                                   ; $5989: $01 $b7 $7e
	add  b                                           ; $598c: $80

jr_099_598d:
	cp   $01                                         ; $598d: $fe $01
	and  $fe                                         ; $598f: $e6 $fe
	add  b                                           ; $5991: $80
	ld   a, [hl]                                     ; $5992: $7e
	ld   [bc], a                                     ; $5993: $02
	ld   e, $be                                      ; $5994: $1e $be
	cp   h                                           ; $5996: $bc
	add  c                                           ; $5997: $81
	cp   $02                                         ; $5998: $fe $02
	jp   c, $1ff6                                    ; $599a: $da $f6 $1f

	rst  $38                                         ; $599d: $ff
	nop                                              ; $599e: $00
	xor  h                                           ; $599f: $ac
	nop                                              ; $59a0: $00
	pop  af                                          ; $59a1: $f1
	nop                                              ; $59a2: $00
	ld   de, $0003                                   ; $59a3: $11 $03 $00
	rrca                                             ; $59a6: $0f
	inc  bc                                          ; $59a7: $03
	dec  e                                           ; $59a8: $1d
	rrca                                             ; $59a9: $0f
	ld   bc, $2b0f                                   ; $59aa: $01 $0f $2b
	rra                                              ; $59ad: $1f
	inc  de                                          ; $59ae: $13
	rra                                              ; $59af: $1f
	ld   b, a                                        ; $59b0: $47
	ccf                                              ; $59b1: $3f
	inc  [hl]                                        ; $59b2: $34
	ccf                                              ; $59b3: $3f
	dec  e                                           ; $59b4: $1d
	ld   a, $80                                      ; $59b5: $3e $80
	inc  a                                           ; $59b7: $3c
	rlca                                             ; $59b8: $07
	push af                                          ; $59b9: $f5
	ld   a, c                                        ; $59ba: $79
	ld   a, b                                        ; $59bb: $78
	ld   a, c                                        ; $59bc: $79
	ld   a, e                                        ; $59bd: $7b
	ld   [hl], e                                     ; $59be: $73
	ld   [hl], d                                     ; $59bf: $72
	ld   [hl], e                                     ; $59c0: $73
	add  d                                           ; $59c1: $82
	ld   h, a                                        ; $59c2: $67
	ld   a, [de]                                     ; $59c3: $1a
	rst  $28                                         ; $59c4: $ef
	ldh  [$f8], a                                    ; $59c5: $e0 $f8
	ldh  a, [$34]                                    ; $59c7: $f0 $34
	jr   c, jr_099_598d                              ; $59c9: $38 $c2

	call z, $e4e0                                    ; $59cb: $cc $e0 $e4
	pop  de                                          ; $59ce: $d1
	ldh  a, [$c8]                                    ; $59cf: $f0 $c8
	ld   hl, sp-$5c                                  ; $59d1: $f8 $a4
	db   $fc                                         ; $59d3: $fc
	ld   [bc], a                                     ; $59d4: $02
	ld   a, [hl]                                     ; $59d5: $7e
	rra                                              ; $59d6: $1f
	dec  sp                                          ; $59d7: $3b
	dec  b                                           ; $59d8: $05
	sbc  l                                           ; $59d9: $9d
	sub  [hl]                                        ; $59da: $96
	sbc  $4e                                         ; $59db: $de $4e
	adc  $a7                                         ; $59dd: $ce $a7
	add  c                                           ; $59df: $81
	rst  $20                                         ; $59e0: $e7
	add  b                                           ; $59e1: $80
	di                                               ; $59e2: $f3
	nop                                              ; $59e3: $00
	rst  $38                                         ; $59e4: $ff
	adc  e                                           ; $59e5: $8b
	nop                                              ; $59e6: $00
	nop                                              ; $59e7: $00
	add  b                                           ; $59e8: $80
	add  e                                           ; $59e9: $83
	nop                                              ; $59ea: $00
	nop                                              ; $59eb: $00
	ret  nz                                          ; $59ec: $c0

	add  c                                           ; $59ed: $81
	add  b                                           ; $59ee: $80
	ld   bc, $c0e0                                   ; $59ef: $01 $e0 $c0
	add  b                                           ; $59f2: $80
	ld   b, b                                        ; $59f3: $40
	add  d                                           ; $59f4: $82
	nop                                              ; $59f5: $00
	add  d                                           ; $59f6: $82
	add  b                                           ; $59f7: $80
	add  [hl]                                        ; $59f8: $86
	ret  nz                                          ; $59f9: $c0

	add  d                                           ; $59fa: $82
	add  b                                           ; $59fb: $80
	ld   bc, $80a0                                   ; $59fc: $01 $a0 $80
	add  b                                           ; $59ff: $80
	nop                                              ; $5a00: $00
	inc  b                                           ; $5a01: $04
	ld   b, b                                        ; $5a02: $40
	nop                                              ; $5a03: $00
	ld   b, b                                        ; $5a04: $40
	nop                                              ; $5a05: $00
	and  b                                           ; $5a06: $a0
	add  b                                           ; $5a07: $80
	add  b                                           ; $5a08: $80

jr_099_5a09:
	add  d                                           ; $5a09: $82
	ret  nz                                          ; $5a0a: $c0

	dec  bc                                          ; $5a0b: $0b
	add  b                                           ; $5a0c: $80
	ld   a, [hl-]                                    ; $5a0d: $3a
	dec  h                                           ; $5a0e: $25
	and  h                                           ; $5a0f: $a4
	inc  h                                           ; $5a10: $24
	ld   c, [hl]                                     ; $5a11: $4e

jr_099_5a12:
	ld   c, $a0                                      ; $5a12: $0e $a0
	nop                                              ; $5a14: $00
	ld   e, b                                        ; $5a15: $58
	nop                                              ; $5a16: $00
	inc  bc                                          ; $5a17: $03
	add  b                                           ; $5a18: $80
	add  e                                           ; $5a19: $83
	dec  b                                           ; $5a1a: $05
	inc  bc                                          ; $5a1b: $03
	dec  b                                           ; $5a1c: $05
	add  c                                           ; $5a1d: $81
	add  d                                           ; $5a1e: $82
	add  b                                           ; $5a1f: $80
	add  c                                           ; $5a20: $81
	add  b                                           ; $5a21: $80
	add  b                                           ; $5a22: $80
	rlca                                             ; $5a23: $07
	nop                                              ; $5a24: $00
	jr   nz, jr_099_5a27                             ; $5a25: $20 $00

jr_099_5a27:
	jr   jr_099_5a09                                 ; $5a27: $18 $e0

	and  $f8                                         ; $5a29: $e6 $f8
	ld   sp, hl                                      ; $5a2b: $f9
	add  b                                           ; $5a2c: $80
	cp   $05                                         ; $5a2d: $fe $05
	rst  $38                                         ; $5a2f: $ff

jr_099_5a30:
	ld   a, b                                        ; $5a30: $78
	add  b                                           ; $5a31: $80
	cp   h                                           ; $5a32: $bc
	cp   b                                           ; $5a33: $b8
	ld   [hl], $81                                   ; $5a34: $36 $81
	inc  a                                           ; $5a36: $3c
	ld   bc, $3c30                                   ; $5a37: $01 $30 $3c
	add  b                                           ; $5a3a: $80
	sbc  h                                           ; $5a3b: $9c
	inc  bc                                          ; $5a3c: $03
	jr   jr_099_5a5b                                 ; $5a3d: $18 $1c

	reti                                             ; $5a3f: $d9


	ret  c                                           ; $5a40: $d8

	add  b                                           ; $5a41: $80
	inc  bc                                          ; $5a42: $03
	ld   bc, $0382                                   ; $5a43: $01 $82 $03
	add  b                                           ; $5a46: $80
	inc  sp                                          ; $5a47: $33
	ld   bc, $3b3a                                   ; $5a48: $01 $3a $3b
	add  b                                           ; $5a4b: $80
	inc  sp                                          ; $5a4c: $33
	ld   bc, $1d5d                                   ; $5a4d: $01 $5d $1d
	add  b                                           ; $5a50: $80
	inc  c                                           ; $5a51: $0c
	ld   [$00e0], sp                                 ; $5a52: $08 $e0 $00
	ld   e, a                                        ; $5a55: $5f
	nop                                              ; $5a56: $00
	ret  nz                                          ; $5a57: $c0

	add  b                                           ; $5a58: $80
	nop                                              ; $5a59: $00
	add  b                                           ; $5a5a: $80

jr_099_5a5b:
	ldh  [$81], a                                    ; $5a5b: $e0 $81
	ret  nz                                          ; $5a5d: $c0

	dec  bc                                          ; $5a5e: $0b
	nop                                              ; $5a5f: $00
	add  b                                           ; $5a60: $80
	sub  b                                           ; $5a61: $90
	add  b                                           ; $5a62: $80
	jr   c, jr_099_5a95                              ; $5a63: $38 $30

	inc  l                                           ; $5a65: $2c
	jr   c, jr_099_5a98                              ; $5a66: $38 $30

	jr   c, jr_099_5a12                              ; $5a68: $38 $a8

	cp   b                                           ; $5a6a: $b8
	add  b                                           ; $5a6b: $80
	jr   c, jr_099_5a6f                              ; $5a6c: $38 $01

	sub  b                                           ; $5a6e: $90

jr_099_5a6f:
	sbc  b                                           ; $5a6f: $98
	add  b                                           ; $5a70: $80
	sub  b                                           ; $5a71: $90
	inc  e                                           ; $5a72: $1c
	ld   [bc], a                                     ; $5a73: $02
	nop                                              ; $5a74: $00
	dec  bc                                          ; $5a75: $0b
	nop                                              ; $5a76: $00
	jp   nc, $3400                                   ; $5a77: $d2 $00 $34

	nop                                              ; $5a7a: $00
	add  hl, de                                      ; $5a7b: $19
	ld   bc, $010d                                   ; $5a7c: $01 $0d $01
	add  hl, bc                                      ; $5a7f: $09

Call_099_5a80:
	ld   bc, $001c                                   ; $5a80: $01 $1c $00
	jr   nc, jr_099_5a85                             ; $5a83: $30 $00

jr_099_5a85:
	ld   h, l                                        ; $5a85: $65
	nop                                              ; $5a86: $00
	jp   z, $9400                                    ; $5a87: $ca $00 $94

	nop                                              ; $5a8a: $00
	jr   nz, jr_099_5a8d                             ; $5a8b: $20 $00

jr_099_5a8d:
	ld   c, b                                        ; $5a8d: $48
	jr   nz, jr_099_5a30                             ; $5a8e: $20 $a0

	add  d                                           ; $5a90: $82
	ld   h, b                                        ; $5a91: $60
	add  c                                           ; $5a92: $81
	ldh  [$08], a                                    ; $5a93: $e0 $08

jr_099_5a95:
	ld   a, [hl+]                                    ; $5a95: $2a
	nop                                              ; $5a96: $00
	rra                                              ; $5a97: $1f

jr_099_5a98:
	nop                                              ; $5a98: $00
	ld   e, $00                                      ; $5a99: $1e $00
	dec  h                                           ; $5a9b: $25
	ld   bc, $8115                                   ; $5a9c: $01 $15 $81

jr_099_5a9f:
	dec  b                                           ; $5a9f: $05
	nop                                              ; $5aa0: $00
	dec  d                                           ; $5aa1: $15
	add  c                                           ; $5aa2: $81
	dec  b                                           ; $5aa3: $05
	add  d                                           ; $5aa4: $82
	inc  b                                           ; $5aa5: $04
	add  b                                           ; $5aa6: $80
	ld   b, $01                                      ; $5aa7: $06 $01
	ld   d, $06                                      ; $5aa9: $16 $06
	add  b                                           ; $5aab: $80
	ld   [bc], a                                     ; $5aac: $02
	add  b                                           ; $5aad: $80
	inc  bc                                          ; $5aae: $03
	dec  de                                          ; $5aaf: $1b
	ld   a, [bc]                                     ; $5ab0: $0a
	ld   [bc], a                                     ; $5ab1: $02
	ld   bc, $f600                                   ; $5ab2: $01 $00 $f6
	nop                                              ; $5ab5: $00
	ld   a, [hl]                                     ; $5ab6: $7e
	ld   [hl], b                                     ; $5ab7: $70
	ld   sp, hl                                      ; $5ab8: $f9
	cp   $f6                                         ; $5ab9: $fe $f6
	ld   sp, hl                                      ; $5abb: $f9
	or   c                                           ; $5abc: $b1
	db   $fc                                         ; $5abd: $fc
	adc  h                                           ; $5abe: $8c
	cp   $54                                         ; $5abf: $fe $54
	ld   a, a                                        ; $5ac1: $7f
	ld   a, $7f                                      ; $5ac2: $3e $7f
	push de                                          ; $5ac4: $d5
	cp   a                                           ; $5ac5: $bf
	xor  d                                           ; $5ac6: $aa
	cp   [hl]                                        ; $5ac7: $be
	db   $ed                                         ; $5ac8: $ed
	rst  JumpTable                                         ; $5ac9: $df
	ld   c, a                                        ; $5aca: $4f
	ld   e, a                                        ; $5acb: $5f
	add  b                                           ; $5acc: $80
	ld   l, a                                        ; $5acd: $6f
	add  b                                           ; $5ace: $80
	ld   h, $80                                      ; $5acf: $26 $80
	db   $10                                         ; $5ad1: $10
	ld   [bc], a                                     ; $5ad2: $02
	dec  de                                          ; $5ad3: $1b
	nop                                              ; $5ad4: $00
	db   $e4                                         ; $5ad5: $e4
	add  c                                           ; $5ad6: $81
	nop                                              ; $5ad7: $00
	rlca                                             ; $5ad8: $07
	add  b                                           ; $5ad9: $80
	nop                                              ; $5ada: $00
	ld   b, b                                        ; $5adb: $40
	add  b                                           ; $5adc: $80
	jr   nz, jr_099_5a9f                             ; $5add: $20 $c0

	jr   nc, jr_099_5b41                             ; $5adf: $30 $60

	add  b                                           ; $5ae1: $80
	jr   nz, jr_099_5ae5                             ; $5ae2: $20 $01

	sbc  b                                           ; $5ae4: $98

jr_099_5ae5:
	sub  b                                           ; $5ae5: $90
	add  d                                           ; $5ae6: $82
	ret  nz                                          ; $5ae7: $c0

	ld   [bc], a                                     ; $5ae8: $02
	ld   [rROMB1], sp                                 ; $5ae9: $08 $00 $30
	add  c                                           ; $5aec: $81
	nop                                              ; $5aed: $00
	ld   [bc], a                                     ; $5aee: $02
	ld   b, b                                        ; $5aef: $40
	nop                                              ; $5af0: $00
	add  b                                           ; $5af1: $80
	add  c                                           ; $5af2: $81
	nop                                              ; $5af3: $00
	inc  c                                           ; $5af4: $0c
	inc  bc                                          ; $5af5: $03
	ld   bc, $0105                                   ; $5af6: $01 $05 $01
	nop                                              ; $5af9: $00
	ld   [bc], a                                     ; $5afa: $02
	jp   z, Jump_099_4606                            ; $5afb: $ca $06 $46

	ld   b, $96                                      ; $5afe: $06 $96
	ld   c, $2e                                      ; $5b00: $0e $2e
	add  b                                           ; $5b02: $80
	ld   c, $81                                      ; $5b03: $0e $81
	ld   e, $82                                      ; $5b05: $1e $82
	inc  e                                           ; $5b07: $1c
	nop                                              ; $5b08: $00
	ld   e, h                                        ; $5b09: $5c
	add  a                                           ; $5b0a: $87
	inc  a                                           ; $5b0b: $3c
	ld   [bc], a                                     ; $5b0c: $02
	ldh  a, [$e0]                                    ; $5b0d: $f0 $e0
	ld   h, b                                        ; $5b0f: $60
	add  a                                           ; $5b10: $87
	ldh  [rP1], a                                    ; $5b11: $e0 $00
	ldh  a, [$8f]                                    ; $5b13: $f0 $8f
	ret  nz                                          ; $5b15: $c0

	inc  bc                                          ; $5b16: $03
	add  b                                           ; $5b17: $80
	ret  nz                                          ; $5b18: $c0

	jr   jr_099_5b62                                 ; $5b19: $18 $47

	add  h                                           ; $5b1b: $84
	ld   c, [hl]                                     ; $5b1c: $4e
	nop                                              ; $5b1d: $00
	adc  h                                           ; $5b1e: $8c
	add  c                                           ; $5b1f: $81
	inc  c                                           ; $5b20: $0c
	nop                                              ; $5b21: $00
	inc  d                                           ; $5b22: $14
	add  c                                           ; $5b23: $81
	inc  b                                           ; $5b24: $04
	ld   [bc], a                                     ; $5b25: $02
	ld   b, h                                        ; $5b26: $44
	inc  b                                           ; $5b27: $04
	ld   a, [bc]                                     ; $5b28: $0a
	add  c                                           ; $5b29: $81
	nop                                              ; $5b2a: $00
	ld   a, [bc]                                     ; $5b2b: $0a
	jr   c, jr_099_5b2e                              ; $5b2c: $38 $00

jr_099_5b2e:
	inc  hl                                          ; $5b2e: $23
	inc  e                                           ; $5b2f: $1c
	db   $dd                                         ; $5b30: $dd
	ld   a, $36                                      ; $5b31: $3e $36
	rst  $38                                         ; $5b33: $ff
	di                                               ; $5b34: $f3
	rst  $20                                         ; $5b35: $e7
	inc  e                                           ; $5b36: $1c
	add  a                                           ; $5b37: $87
	nop                                              ; $5b38: $00
	ld   a, [bc]                                     ; $5b39: $0a
	rlca                                             ; $5b3a: $07
	nop                                              ; $5b3b: $00
	dec  de                                          ; $5b3c: $1b
	rlca                                             ; $5b3d: $07
	dec  sp                                          ; $5b3e: $3b
	rra                                              ; $5b3f: $1f
	ld   a, a                                        ; $5b40: $7f

jr_099_5b41:
	ccf                                              ; $5b41: $3f
	cp   a                                           ; $5b42: $bf
	ld   a, a                                        ; $5b43: $7f
	ccf                                              ; $5b44: $3f
	add  c                                           ; $5b45: $81
	ld   a, a                                        ; $5b46: $7f
	ld   c, $7c                                      ; $5b47: $0e $7c
	db   $fc                                         ; $5b49: $fc
	cp   [hl]                                        ; $5b4a: $be
	cp   a                                           ; $5b4b: $bf
	ld   [bc], a                                     ; $5b4c: $02
	jp   $fdc0                                       ; $5b4d: $c3 $c0 $fd


	adc  h                                           ; $5b50: $8c
	ld   [bc], a                                     ; $5b51: $02
	ld   b, e                                        ; $5b52: $43
	ld   bc, $2921                                   ; $5b53: $01 $21 $29
	ld   a, e                                        ; $5b56: $7b
	add  b                                           ; $5b57: $80
	jr   jr_099_5b5c                                 ; $5b58: $18 $02

	add  hl, de                                      ; $5b5a: $19
	cp   e                                           ; $5b5b: $bb

jr_099_5b5c:
	ld   [$6b80], sp                                 ; $5b5c: $08 $80 $6b
	ld   bc, $a76f                                   ; $5b5f: $01 $6f $a7

jr_099_5b62:
	add  b                                           ; $5b62: $80
	daa                                              ; $5b63: $27
	ld   bc, $00a0                                   ; $5b64: $01 $a0 $00
	add  b                                           ; $5b67: $80
	add  h                                           ; $5b68: $84
	add  b                                           ; $5b69: $80
	ld   e, $24                                      ; $5b6a: $1e $24
	ld   a, c                                        ; $5b6c: $79
	ld   a, b                                        ; $5b6d: $78
	ld   h, [hl]                                     ; $5b6e: $66
	ld   h, b                                        ; $5b6f: $60
	ld   e, b                                        ; $5b70: $58
	ld   b, b                                        ; $5b71: $40
	jr   nc, jr_099_5b74                             ; $5b72: $30 $00

jr_099_5b74:
	ld   c, a                                        ; $5b74: $4f
	ld   h, c                                        ; $5b75: $61
	and  c                                           ; $5b76: $a1
	and  b                                           ; $5b77: $a0
	ld   sp, $d2b0                                   ; $5b78: $31 $b0 $d2
	db   $10                                         ; $5b7b: $10
	inc  l                                           ; $5b7c: $2c
	ld   c, h                                        ; $5b7d: $4c
	sbc  h                                           ; $5b7e: $9c
	and  d                                           ; $5b7f: $a2
	xor  [hl]                                        ; $5b80: $ae
	and  c                                           ; $5b81: $a1
	cp   l                                           ; $5b82: $bd
	and  l                                           ; $5b83: $a5
	ld   [hl], l                                     ; $5b84: $75
	dec  l                                           ; $5b85: $2d
	and  h                                           ; $5b86: $a4
	jr   nz, jr_099_5bab                             ; $5b87: $20 $22

	jr   nz, @-$30                                   ; $5b89: $20 $ce

	ld   [$e41c], sp                                 ; $5b8b: $08 $1c $e4
	and  $e1                                         ; $5b8e: $e6 $e1
	push hl                                          ; $5b90: $e5
	add  c                                           ; $5b91: $81
	db   $e3                                         ; $5b92: $e3
	jr   nz, jr_099_5ba9                             ; $5b93: $20 $14

	rst  $38                                         ; $5b95: $ff
	ld   a, a                                        ; $5b96: $7f
	rst  $38                                         ; $5b97: $ff
	cp   a                                           ; $5b98: $bf
	ccf                                              ; $5b99: $3f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5b9a: $cf
	rrca                                             ; $5b9b: $0f
	ld   b, e                                        ; $5b9c: $43
	inc  hl                                          ; $5b9d: $23
	jr   nz, jr_099_5bac                             ; $5b9e: $20 $0c

	inc  a                                           ; $5ba0: $3c
	inc  bc                                          ; $5ba1: $03
	ccf                                              ; $5ba2: $3f
	nop                                              ; $5ba3: $00
	ccf                                              ; $5ba4: $3f
	nop                                              ; $5ba5: $00
	adc  [hl]                                        ; $5ba6: $8e
	nop                                              ; $5ba7: $00
	ld   b, b                                        ; $5ba8: $40

jr_099_5ba9:
	nop                                              ; $5ba9: $00
	add  b                                           ; $5baa: $80

jr_099_5bab:
	nop                                              ; $5bab: $00

jr_099_5bac:
	ld   de, $1c00                                   ; $5bac: $11 $00 $1c
	nop                                              ; $5baf: $00
	ld   a, [bc]                                     ; $5bb0: $0a
	nop                                              ; $5bb1: $00
	rrca                                             ; $5bb2: $0f
	nop                                              ; $5bb3: $00
	ld   a, [bc]                                     ; $5bb4: $0a
	add  l                                           ; $5bb5: $85
	nop                                              ; $5bb6: $00
	nop                                              ; $5bb7: $00
	ld   bc, $008b                                   ; $5bb8: $01 $8b $00
	nop                                              ; $5bbb: $00
	inc  bc                                          ; $5bbc: $03
	add  a                                           ; $5bbd: $87
	ld   bc, $0400                                   ; $5bbe: $01 $00 $04
	add  l                                           ; $5bc1: $85
	inc  bc                                          ; $5bc2: $03
	nop                                              ; $5bc3: $00
	dec  bc                                          ; $5bc4: $0b
	add  l                                           ; $5bc5: $85
	rlca                                             ; $5bc6: $07
	inc  bc                                          ; $5bc7: $03
	rla                                              ; $5bc8: $17
	rlca                                             ; $5bc9: $07
	rst  $20                                         ; $5bca: $e7
	rrca                                             ; $5bcb: $0f
	add  b                                           ; $5bcc: $80
	ld   l, a                                        ; $5bcd: $6f
	add  b                                           ; $5bce: $80
	rst  $28                                         ; $5bcf: $ef
	add  b                                           ; $5bd0: $80
	adc  a                                           ; $5bd1: $8f

jr_099_5bd2:
	add  b                                           ; $5bd2: $80
	cpl                                              ; $5bd3: $2f
	ld   bc, $e7ef                                   ; $5bd4: $01 $ef $e7
	add  b                                           ; $5bd7: $80
	rst  $30                                         ; $5bd8: $f7
	nop                                              ; $5bd9: $00
	ld   hl, sp-$7f                                  ; $5bda: $f8 $81
	nop                                              ; $5bdc: $00
	dec  d                                           ; $5bdd: $15
	inc  bc                                          ; $5bde: $03

jr_099_5bdf:
	nop                                              ; $5bdf: $00
	rrca                                             ; $5be0: $0f
	inc  bc                                          ; $5be1: $03
	ld   de, $2507                                   ; $5be2: $11 $07 $25
	rrca                                             ; $5be5: $0f
	ld   c, c                                        ; $5be6: $49
	dec  e                                           ; $5be7: $1d
	dec  bc                                          ; $5be8: $0b
	dec  sp                                          ; $5be9: $3b
	adc  d                                           ; $5bea: $8a
	daa                                              ; $5beb: $27
	ld   [$890f], sp                                 ; $5bec: $08 $0f $89
	rrca                                             ; $5bef: $0f
	ld   a, d                                        ; $5bf0: $7a
	ld   a, [hl]                                     ; $5bf1: $7e
	ld   l, b                                        ; $5bf2: $68
	ld   [$0080], sp                                 ; $5bf3: $08 $80 $00
	rlca                                             ; $5bf6: $07
	stop                                             ; $5bf7: $10 $00
	ld   c, $02                                      ; $5bf9: $0e $02
	dec  de                                          ; $5bfb: $1b
	ldh  [$94], a                                    ; $5bfc: $e0 $94
	sub  b                                           ; $5bfe: $90
	add  b                                           ; $5bff: $80
	jr   c, jr_099_5c09                              ; $5c00: $38 $07

	ld   a, a                                        ; $5c02: $7f
	ld   e, l                                        ; $5c03: $5d
	ld   d, a                                        ; $5c04: $57
	ld   [hl], $a4                                   ; $5c05: $36 $a4
	ld   h, h                                        ; $5c07: $64
	ld   c, h                                        ; $5c08: $4c

jr_099_5c09:
	call z, $1880                                    ; $5c09: $cc $80 $18
	ld   b, $21                                      ; $5c0c: $06 $21
	jr   nz, jr_099_5bd2                             ; $5c0e: $20 $c2

	nop                                              ; $5c10: $00
	inc  [hl]                                        ; $5c11: $34
	nop                                              ; $5c12: $00
	ld   [$0087], sp                                 ; $5c13: $08 $87 $00
	ld   [bc], a                                     ; $5c16: $02
	inc  bc                                          ; $5c17: $03
	db   $fd                                         ; $5c18: $fd
	ld   sp, hl                                      ; $5c19: $f9
	add  e                                           ; $5c1a: $83
	db   $fd                                         ; $5c1b: $fd
	nop                                              ; $5c1c: $00
	push af                                          ; $5c1d: $f5
	add  c                                           ; $5c1e: $81
	ei                                               ; $5c1f: $fb
	ld   c, $cb                                      ; $5c20: $0e $cb
	rst  $30                                         ; $5c22: $f7
	or   a                                           ; $5c23: $b7
	rst  $38                                         ; $5c24: $ff
	ld   a, a                                        ; $5c25: $7f
	db   $fc                                         ; $5c26: $fc
	rst  $38                                         ; $5c27: $ff
	ld   hl, sp-$04                                  ; $5c28: $f8 $fc
	ldh  [$f8], a                                    ; $5c2a: $e0 $f8
	add  b                                           ; $5c2c: $80
	ldh  [rP1], a                                    ; $5c2d: $e0 $00
	add  b                                           ; $5c2f: $80
	add  e                                           ; $5c30: $83
	nop                                              ; $5c31: $00
	ld   b, $0b                                      ; $5c32: $06 $0b
	db   $f4                                         ; $5c34: $f4
	db   $e4                                         ; $5c35: $e4
	db   $f4                                         ; $5c36: $f4
	sub  b                                           ; $5c37: $90
	db   $f4                                         ; $5c38: $f4
	ld   [hl], h                                     ; $5c39: $74
	add  d                                           ; $5c3a: $82
	or   $05                                         ; $5c3b: $f6 $05
	ldh  [c], a                                      ; $5c3d: $e2
	ld   a, [$e682]                                  ; $5c3e: $fa $82 $e6
	nop                                              ; $5c41: $00
	add  d                                           ; $5c42: $82
	add  c                                           ; $5c43: $81
	nop                                              ; $5c44: $00
	nop                                              ; $5c45: $00
	ld   bc, $0089                                   ; $5c46: $01 $89 $00
	add  e                                           ; $5c49: $83
	rst  $38                                         ; $5c4a: $ff
	add  b                                           ; $5c4b: $80
	ld   a, a                                        ; $5c4c: $7f
	add  b                                           ; $5c4d: $80
	ld   [hl], b                                     ; $5c4e: $70
	ld   bc, $fc7c                                   ; $5c4f: $01 $7c $fc
	add  b                                           ; $5c52: $80
	ccf                                              ; $5c53: $3f
	ld   bc, $7e3e                                   ; $5c54: $01 $3e $7e
	add  [hl]                                        ; $5c57: $86
	rra                                              ; $5c58: $1f
	add  a                                           ; $5c59: $87
	rrca                                             ; $5c5a: $0f
	nop                                              ; $5c5b: $00
	jr   nc, jr_099_5bdf                             ; $5c5c: $30 $81

	nop                                              ; $5c5e: $00
	ld   c, $40                                      ; $5c5f: $0e $40
	nop                                              ; $5c61: $00
	ld   [hl], b                                     ; $5c62: $70
	nop                                              ; $5c63: $00
	ld   l, h                                        ; $5c64: $6c
	nop                                              ; $5c65: $00
	cpl                                              ; $5c66: $2f
	nop                                              ; $5c67: $00
	ccf                                              ; $5c68: $3f
	jr   nc, @+$11                                   ; $5c69: $30 $0f

	inc  c                                           ; $5c6b: $0c
	inc  bc                                          ; $5c6c: $03
	inc  sp                                          ; $5c6d: $33
	or   c                                           ; $5c6e: $b1
	add  b                                           ; $5c6f: $80
	dec  a                                           ; $5c70: $3d
	add  b                                           ; $5c71: $80
	ld   a, l                                        ; $5c72: $7d
	ld   bc, $fcfd                                   ; $5c73: $01 $fd $fc
	add  b                                           ; $5c76: $80
	db   $ec                                         ; $5c77: $ec
	rla                                              ; $5c78: $17
	ldh  a, [$f2]                                    ; $5c79: $f0 $f2
	ld   a, [$f5fd]                                  ; $5c7b: $fa $fd $f5
	rrca                                             ; $5c7e: $0f
	nop                                              ; $5c7f: $00
	ld   bc, $0200                                   ; $5c80: $01 $00 $02
	nop                                              ; $5c83: $00
	inc  c                                           ; $5c84: $0c
	nop                                              ; $5c85: $00
	dec  a                                           ; $5c86: $3d
	nop                                              ; $5c87: $00
	pop  af                                          ; $5c88: $f1
	nop                                              ; $5c89: $00
	rst  JumpTable                                         ; $5c8a: $df
	inc  bc                                          ; $5c8b: $03
	ld   a, h                                        ; $5c8c: $7c
	inc  e                                           ; $5c8d: $1c
	ldh  [$63], a                                    ; $5c8e: $e0 $63
	ld   b, e                                        ; $5c90: $43
	add  d                                           ; $5c91: $82
	ld   e, a                                        ; $5c92: $5f
	ld   bc, $9e5e                                   ; $5c93: $01 $5e $9e
	add  b                                           ; $5c96: $80
	cp   b                                           ; $5c97: $b8
	dec  bc                                          ; $5c98: $0b
	cp   a                                           ; $5c99: $bf
	ccf                                              ; $5c9a: $3f
	inc  bc                                          ; $5c9b: $03
	add  e                                           ; $5c9c: $83
	adc  a                                           ; $5c9d: $8f
	rla                                              ; $5c9e: $17
	ret  nz                                          ; $5c9f: $c0

	call nc, $e9e0                                   ; $5ca0: $d4 $e0 $e9
	ldh  a, [$f4]                                    ; $5ca3: $f0 $f4
	add  b                                           ; $5ca5: $80
	ld   hl, sp+$0a                                  ; $5ca6: $f8 $0a
	ldh  a, [$fd]                                    ; $5ca8: $f0 $fd
	db   $ec                                         ; $5caa: $ec
	db   $fc                                         ; $5cab: $fc
	call c, $b8f9                                    ; $5cac: $dc $f9 $b8
	ldh  a, [c]                                      ; $5caf: $f2
	ld   [hl], b                                     ; $5cb0: $70
	db   $e4                                         ; $5cb1: $e4
	ldh  [$80], a                                    ; $5cb2: $e0 $80
	ret  nz                                          ; $5cb4: $c0

	ld   [bc], a                                     ; $5cb5: $02
	xor  b                                           ; $5cb6: $a8
	add  b                                           ; $5cb7: $80
	ld   b, b                                        ; $5cb8: $40
	add  c                                           ; $5cb9: $81
	nop                                              ; $5cba: $00
	nop                                              ; $5cbb: $00
	add  b                                           ; $5cbc: $80
	add  c                                           ; $5cbd: $81
	nop                                              ; $5cbe: $00
	nop                                              ; $5cbf: $00
	call nc, $0081                                   ; $5cc0: $d4 $81 $00
	dec  c                                           ; $5cc3: $0d
	add  b                                           ; $5cc4: $80
	nop                                              ; $5cc5: $00
	add  b                                           ; $5cc6: $80
	nop                                              ; $5cc7: $00
	and  b                                           ; $5cc8: $a0
	nop                                              ; $5cc9: $00
	ld   [$9200], sp                                 ; $5cca: $08 $00 $92
	nop                                              ; $5ccd: $00
	dec  bc                                          ; $5cce: $0b
	ld   a, [bc]                                     ; $5ccf: $0a
	push bc                                          ; $5cd0: $c5
	dec  b                                           ; $5cd1: $05
	add  b                                           ; $5cd2: $80
	ld   a, [de]                                     ; $5cd3: $1a
	add  b                                           ; $5cd4: $80
	inc  b                                           ; $5cd5: $04
	ld   [bc], a                                     ; $5cd6: $02
	ld   hl, $1400                                   ; $5cd7: $21 $00 $14
	add  c                                           ; $5cda: $81
	nop                                              ; $5cdb: $00
	nop                                              ; $5cdc: $00
	db   $10                                         ; $5cdd: $10
	add  c                                           ; $5cde: $81
	nop                                              ; $5cdf: $00
	nop                                              ; $5ce0: $00
	sub  a                                           ; $5ce1: $97
	add  c                                           ; $5ce2: $81
	ld   [hl], d                                     ; $5ce3: $72
	ld   a, [bc]                                     ; $5ce4: $0a
	ld   h, b                                        ; $5ce5: $60
	ld   h, c                                        ; $5ce6: $61
	ldh  [$e5], a                                    ; $5ce7: $e0 $e5
	db   $e4                                         ; $5ce9: $e4
	db   $ec                                         ; $5cea: $ec
	ret  z                                           ; $5ceb: $c8

	call $dac9                                       ; $5cec: $cd $c9 $da
	ret  c                                           ; $5cef: $d8

	add  b                                           ; $5cf0: $80
	ret  nc                                          ; $5cf1: $d0

	inc  bc                                          ; $5cf2: $03
	call nz, $c8c0                                   ; $5cf3: $c4 $c0 $c8
	ld   c, b                                        ; $5cf6: $48
	add  b                                           ; $5cf7: $80
	ld   c, c                                        ; $5cf8: $49
	ld   [hl], $48                                   ; $5cf9: $36 $48
	ld   c, l                                        ; $5cfb: $4d
	ld   b, h                                        ; $5cfc: $44
	ld   d, l                                        ; $5cfd: $55
	ld   d, b                                        ; $5cfe: $50
	ld   [de], a                                     ; $5cff: $12
	db   $10                                         ; $5d00: $10
	ld   d, c                                        ; $5d01: $51
	ld   d, d                                        ; $5d02: $52
	ld   c, l                                        ; $5d03: $4d
	xor  [hl]                                        ; $5d04: $ae
	xor  $2e                                         ; $5d05: $ee $2e
	ld   b, [hl]                                     ; $5d07: $46
	sub  [hl]                                        ; $5d08: $96
	sub  $36                                         ; $5d09: $d6 $36
	ld   [de], a                                     ; $5d0b: $12
	ld   a, [bc]                                     ; $5d0c: $0a
	jr   jr_099_5d1b                                 ; $5d0d: $18 $0c

	ld   b, h                                        ; $5d0f: $44
	ld   [bc], a                                     ; $5d10: $02
	ld   d, [hl]                                     ; $5d11: $56
	sub  b                                           ; $5d12: $90
	sub  c                                           ; $5d13: $91
	sub  b                                           ; $5d14: $90
	sub  c                                           ; $5d15: $91
	ld   d, b                                        ; $5d16: $50
	ld   d, c                                        ; $5d17: $51
	nop                                              ; $5d18: $00
	db   $f4                                         ; $5d19: $f4
	add  h                                           ; $5d1a: $84

jr_099_5d1b:
	push bc                                          ; $5d1b: $c5
	ld   [bc], a                                     ; $5d1c: $02
	sbc  l                                           ; $5d1d: $9d
	ret  nc                                          ; $5d1e: $d0

	ld   hl, sp+$00                                  ; $5d1f: $f8 $00
	ldh  a, [rP1]                                    ; $5d21: $f0 $00
	rst  $30                                         ; $5d23: $f7
	ret  z                                           ; $5d24: $c8

	ld   b, b                                        ; $5d25: $40
	inc  sp                                          ; $5d26: $33
	ld   h, d                                        ; $5d27: $62
	ld   sp, $0020                                   ; $5d28: $31 $20 $00
	jr   nz, @+$13                                   ; $5d2b: $20 $11

	dec  [hl]                                        ; $5d2d: $35
	db   $10                                         ; $5d2e: $10
	ld   h, h                                        ; $5d2f: $64
	ld   [bc], a                                     ; $5d30: $02
	add  c                                           ; $5d31: $81
	ld   [de], a                                     ; $5d32: $12
	dec  bc                                          ; $5d33: $0b
	inc  d                                           ; $5d34: $14
	add  h                                           ; $5d35: $84
	nop                                              ; $5d36: $00
	xor  a                                           ; $5d37: $af
	ld   hl, $0065                                   ; $5d38: $21 $65 $00
	ccf                                              ; $5d3b: $3f
	ld   a, [bc]                                     ; $5d3c: $0a
	ld   e, $00                                      ; $5d3d: $1e $00
	rrca                                             ; $5d3f: $0f
	add  c                                           ; $5d40: $81
	nop                                              ; $5d41: $00
	ld   bc, $738c                                   ; $5d42: $01 $8c $73
	add  b                                           ; $5d45: $80
	add  hl, sp                                      ; $5d46: $39
	ld   a, [bc]                                     ; $5d47: $0a
	add  hl, de                                      ; $5d48: $19
	reti                                             ; $5d49: $d9


	call $246d                                       ; $5d4a: $cd $6d $24
	ld   h, h                                        ; $5d4d: $64
	inc  h                                           ; $5d4e: $24
	add  h                                           ; $5d4f: $84
	nop                                              ; $5d50: $00
	ld   b, b                                        ; $5d51: $40
	ld   [$2881], sp                                 ; $5d52: $08 $81 $28
	ld   b, $a8                                      ; $5d55: $06 $a8
	xor  d                                           ; $5d57: $aa
	ld   [$eb6a], a                                  ; $5d58: $ea $6a $eb
	ld   c, c                                        ; $5d5b: $49
	ret                                              ; $5d5c: $c9


	add  b                                           ; $5d5d: $80
	xor  c                                           ; $5d5e: $a9
	dec  b                                           ; $5d5f: $05
	ld   c, c                                        ; $5d60: $49
	ld   b, c                                        ; $5d61: $41
	pop  bc                                          ; $5d62: $c1
	push hl                                          ; $5d63: $e5
	and  l                                           ; $5d64: $a5
	ldh  a, [c]                                      ; $5d65: $f2
	add  c                                           ; $5d66: $81
	ld   [hl], d                                     ; $5d67: $72
	db   $10                                         ; $5d68: $10
	ld   h, b                                        ; $5d69: $60
	ld   h, c                                        ; $5d6a: $61
	ldh  [$e4], a                                    ; $5d6b: $e0 $e4
	push hl                                          ; $5d6d: $e5
	db   $ec                                         ; $5d6e: $ec
	call $cfcc                                       ; $5d6f: $cd $cc $cf
	reti                                             ; $5d72: $d9


	rst  JumpTable                                         ; $5d73: $df
	jp   nc, $c4d6                                   ; $5d74: $d2 $d6 $c4

	add  $c8                                         ; $5d77: $c6 $c8
	ld   c, h                                        ; $5d79: $4c
	add  b                                           ; $5d7a: $80
	ld   c, c                                        ; $5d7b: $49
	ld   c, $48                                      ; $5d7c: $0e $48
	ld   c, l                                        ; $5d7e: $4d
	ld   b, h                                        ; $5d7f: $44
	ld   d, l                                        ; $5d80: $55
	ld   d, b                                        ; $5d81: $50
	ld   [de], a                                     ; $5d82: $12

jr_099_5d83:
	db   $10                                         ; $5d83: $10
	ld   d, c                                        ; $5d84: $51
	ld   d, d                                        ; $5d85: $52
	ld   c, l                                        ; $5d86: $4d
	xor  [hl]                                        ; $5d87: $ae
	xor  $2e                                         ; $5d88: $ee $2e
	ld   b, [hl]                                     ; $5d8a: $46
	sub  [hl]                                        ; $5d8b: $96
	add  b                                           ; $5d8c: $80
	ld   d, $34                                      ; $5d8d: $16 $34
	ldh  a, [c]                                      ; $5d8f: $f2
	ld   a, [bc]                                     ; $5d90: $0a
	ld   hl, sp+$04                                  ; $5d91: $f8 $04
	db   $fc                                         ; $5d93: $fc
	ld   [de], a                                     ; $5d94: $12
	ld   e, $00                                      ; $5d95: $1e $00
	ld   c, c                                        ; $5d97: $49
	db   $10                                         ; $5d98: $10
	ld   d, c                                        ; $5d99: $51
	ret  nc                                          ; $5d9a: $d0

	pop  de                                          ; $5d9b: $d1
	nop                                              ; $5d9c: $00
	db   $f4                                         ; $5d9d: $f4
	add  h                                           ; $5d9e: $84
	push bc                                          ; $5d9f: $c5
	ld   [bc], a                                     ; $5da0: $02
	sbc  l                                           ; $5da1: $9d
	ret  nc                                          ; $5da2: $d0

	ld   hl, sp+$00                                  ; $5da3: $f8 $00
	ldh  a, [rP1]                                    ; $5da5: $f0 $00
	rst  $30                                         ; $5da7: $f7
	ret  z                                           ; $5da8: $c8

	ld   b, b                                        ; $5da9: $40
	inc  sp                                          ; $5daa: $33
	ld   l, b                                        ; $5dab: $68
	jr   nz, @+$0d                                   ; $5dac: $20 $0b

	nop                                              ; $5dae: $00
	rra                                              ; $5daf: $1f
	nop                                              ; $5db0: $00
	ccf                                              ; $5db1: $3f
	ld   [$0078], sp                                 ; $5db2: $08 $78 $00
	inc  h                                           ; $5db5: $24
	nop                                              ; $5db6: $00
	inc  h                                           ; $5db7: $24
	ld   d, $86                                      ; $5db8: $16 $86
	nop                                              ; $5dba: $00
	xor  a                                           ; $5dbb: $af
	ld   hl, $0065                                   ; $5dbc: $21 $65 $00
	ccf                                              ; $5dbf: $3f
	ld   a, [bc]                                     ; $5dc0: $0a
	ld   e, $00                                      ; $5dc1: $1e $00
	rrca                                             ; $5dc3: $0f
	add  c                                           ; $5dc4: $81
	nop                                              ; $5dc5: $00
	ld   bc, $738c                                   ; $5dc6: $01 $8c $73
	add  b                                           ; $5dc9: $80
	add  hl, sp                                      ; $5dca: $39
	inc  d                                           ; $5dcb: $14
	add  hl, de                                      ; $5dcc: $19
	reti                                             ; $5dcd: $d9


	call $e46d                                       ; $5dce: $cd $6d $e4
	inc  h                                           ; $5dd1: $24
	db   $e4                                         ; $5dd2: $e4
	add  h                                           ; $5dd3: $84
	ret  nz                                          ; $5dd4: $c0

	ld   b, b                                        ; $5dd5: $40
	ret  z                                           ; $5dd6: $c8

	jr   z, jr_099_5e41                              ; $5dd7: $28 $68

	jr   z, jr_099_5d83                              ; $5dd9: $28 $a8

	xor  d                                           ; $5ddb: $aa
	ld   [$eb6a], a                                  ; $5ddc: $ea $6a $eb
	ld   c, c                                        ; $5ddf: $49
	ret                                              ; $5de0: $c9


	add  b                                           ; $5de1: $80
	xor  c                                           ; $5de2: $a9
	dec  b                                           ; $5de3: $05
	ld   c, c                                        ; $5de4: $49
	ld   b, c                                        ; $5de5: $41
	pop  bc                                          ; $5de6: $c1
	push hl                                          ; $5de7: $e5
	and  l                                           ; $5de8: $a5
	ldh  a, [c]                                      ; $5de9: $f2
	add  c                                           ; $5dea: $81
	ld   [hl], d                                     ; $5deb: $72
	ld   b, $60                                      ; $5dec: $06 $60
	ld   h, c                                        ; $5dee: $61
	ldh  [$e4], a                                    ; $5def: $e0 $e4
	push hl                                          ; $5df1: $e5
	db   $ec                                         ; $5df2: $ec
	call $cc80                                       ; $5df3: $cd $80 $cc
	ld   bc, $d8da                                   ; $5df6: $01 $da $d8
	add  b                                           ; $5df9: $80
	call nc, $c414                                   ; $5dfa: $d4 $14 $c4
	rst  ToBoot                                         ; $5dfd: $c7
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5dfe: $cf
	ld   c, a                                        ; $5dff: $4f
	ld   c, b                                        ; $5e00: $48
	ld   c, [hl]                                     ; $5e01: $4e
	ld   c, d                                        ; $5e02: $4a
	ld   c, a                                        ; $5e03: $4f
	ld   b, h                                        ; $5e04: $44
	ld   d, l                                        ; $5e05: $55
	ld   d, b                                        ; $5e06: $50
	ld   [de], a                                     ; $5e07: $12
	db   $10                                         ; $5e08: $10
	ld   d, c                                        ; $5e09: $51
	ld   d, d                                        ; $5e0a: $52
	ld   c, l                                        ; $5e0b: $4d
	xor  [hl]                                        ; $5e0c: $ae
	xor  $2e                                         ; $5e0d: $ee $2e
	ld   b, [hl]                                     ; $5e0f: $46
	sub  [hl]                                        ; $5e10: $96
	add  b                                           ; $5e11: $80
	ld   d, $24                                      ; $5e12: $16 $24
	ldh  a, [c]                                      ; $5e14: $f2
	ld   a, [bc]                                     ; $5e15: $0a
	ld   hl, sp+$04                                  ; $5e16: $f8 $04
	inc  c                                           ; $5e18: $0c
	ld   [bc], a                                     ; $5e19: $02
	ld   b, $00                                      ; $5e1a: $06 $00
	ld   bc, $f900                                   ; $5e1c: $01 $00 $f9
	add  b                                           ; $5e1f: $80
	sbc  c                                           ; $5e20: $99
	db   $10                                         ; $5e21: $10
	db   $f4                                         ; $5e22: $f4
	add  h                                           ; $5e23: $84
	push bc                                          ; $5e24: $c5
	ld   [bc], a                                     ; $5e25: $02
	sbc  l                                           ; $5e26: $9d
	ret  nc                                          ; $5e27: $d0

	ld   hl, sp+$00                                  ; $5e28: $f8 $00
	ldh  a, [rP1]                                    ; $5e2a: $f0 $00
	rst  $30                                         ; $5e2c: $f7
	ret  z                                           ; $5e2d: $c8

	ld   b, b                                        ; $5e2e: $40
	inc  sp                                          ; $5e2f: $33
	ld   l, b                                        ; $5e30: $68
	jr   nz, @+$0d                                   ; $5e31: $20 $0b

	nop                                              ; $5e33: $00
	rra                                              ; $5e34: $1f
	nop                                              ; $5e35: $00
	jr   nc, jr_099_5e38                             ; $5e36: $30 $00

jr_099_5e38:
	ld   h, b                                        ; $5e38: $60
	add  c                                           ; $5e39: $81
	nop                                              ; $5e3a: $00
	inc  c                                           ; $5e3b: $0c
	ld   a, [de]                                     ; $5e3c: $1a
	ld   h, $b3                                      ; $5e3d: $26 $b3
	nop                                              ; $5e3f: $00
	xor  a                                           ; $5e40: $af

jr_099_5e41:
	inc  hl                                          ; $5e41: $23
	ld   h, a                                        ; $5e42: $67
	nop                                              ; $5e43: $00
	ccf                                              ; $5e44: $3f
	ld   a, [bc]                                     ; $5e45: $0a
	ld   e, $00                                      ; $5e46: $1e $00
	rrca                                             ; $5e48: $0f
	add  c                                           ; $5e49: $81
	nop                                              ; $5e4a: $00
	ld   bc, $738c                                   ; $5e4b: $01 $8c $73
	add  b                                           ; $5e4e: $80
	add  hl, sp                                      ; $5e4f: $39
	rlca                                             ; $5e50: $07
	add  hl, de                                      ; $5e51: $19
	reti                                             ; $5e52: $d9


	call $e46d                                       ; $5e53: $cd $6d $e4
	inc  h                                           ; $5e56: $24
	ld   h, h                                        ; $5e57: $64
	inc  b                                           ; $5e58: $04
	add  b                                           ; $5e59: $80
	nop                                              ; $5e5a: $00
	nop                                              ; $5e5b: $00
	ld   [$2881], sp                                 ; $5e5c: $08 $81 $28
	nop                                              ; $5e5f: $00
	add  sp, -$80                                    ; $5e60: $e8 $80
	ld   a, [hl+]                                    ; $5e62: $2a
	inc  bc                                          ; $5e63: $03
	ld   l, d                                        ; $5e64: $6a
	db   $eb                                         ; $5e65: $eb
	ld   c, c                                        ; $5e66: $49
	ret                                              ; $5e67: $c9


	add  b                                           ; $5e68: $80
	xor  c                                           ; $5e69: $a9
	inc  [hl]                                        ; $5e6a: $34
	ld   c, c                                        ; $5e6b: $49

jr_099_5e6c:
	ld   b, c                                        ; $5e6c: $41
	pop  bc                                          ; $5e6d: $c1
	push hl                                          ; $5e6e: $e5
	and  l                                           ; $5e6f: $a5
	ld   e, d                                        ; $5e70: $5a
	ld   bc, $0018                                   ; $5e71: $01 $18 $00
	ld   a, [de]                                     ; $5e74: $1a
	ld   [bc], a                                     ; $5e75: $02
	ld   b, [hl]                                     ; $5e76: $46
	ld   b, b                                        ; $5e77: $40
	ld   d, e                                        ; $5e78: $53
	jr   nz, @-$2d                                   ; $5e79: $20 $d1

	nop                                              ; $5e7b: $00
	ld   [$445c], a                                  ; $5e7c: $ea $5c $44
	ld   d, b                                        ; $5e7f: $50
	nop                                              ; $5e80: $00
	jr   nz, jr_099_5eb7                             ; $5e81: $20 $34

	ld   [hl+], a                                    ; $5e83: $22
	ld   [$0814], sp                                 ; $5e84: $08 $14 $08
	nop                                              ; $5e87: $00
	jp   $ff00                                       ; $5e88: $c3 $00 $ff


	nop                                              ; $5e8b: $00
	db   $fd                                         ; $5e8c: $fd
	nop                                              ; $5e8d: $00
	rst  $30                                         ; $5e8e: $f7
	nop                                              ; $5e8f: $00
	inc  de                                          ; $5e90: $13
	ld   bc, $0018                                   ; $5e91: $01 $18 $00
	ld   a, [de]                                     ; $5e94: $1a
	ld   [bc], a                                     ; $5e95: $02
	ld   b, [hl]                                     ; $5e96: $46
	ld   b, b                                        ; $5e97: $40
	ld   d, e                                        ; $5e98: $53
	jr   nz, jr_099_5e6c                             ; $5e99: $20 $d1

	nop                                              ; $5e9b: $00
	cp   $58                                         ; $5e9c: $fe $58
	ld   a, [hl-]                                    ; $5e9e: $3a
	inc  e                                           ; $5e9f: $1c
	add  [hl]                                        ; $5ea0: $86
	nop                                              ; $5ea1: $00
	ld   [$00c3], sp                                 ; $5ea2: $08 $c3 $00
	rst  $38                                         ; $5ea5: $ff
	nop                                              ; $5ea6: $00
	db   $fd                                         ; $5ea7: $fd
	nop                                              ; $5ea8: $00
	rst  $30                                         ; $5ea9: $f7
	nop                                              ; $5eaa: $00
	ld   [hl], $ff                                   ; $5eab: $36 $ff
	nop                                              ; $5ead: $00
	rst  $38                                         ; $5eae: $ff
	nop                                              ; $5eaf: $00
	rst  $38                                         ; $5eb0: $ff
	nop                                              ; $5eb1: $00
	rst  $38                                         ; $5eb2: $ff
	nop                                              ; $5eb3: $00
	rst  $38                                         ; $5eb4: $ff
	nop                                              ; $5eb5: $00
	sbc  b                                           ; $5eb6: $98

jr_099_5eb7:
	nop                                              ; $5eb7: $00
	db   $fd                                         ; $5eb8: $fd
	nop                                              ; $5eb9: $00
	jr   nz, jr_099_5ecb                             ; $5eba: $20 $0f

	inc  bc                                          ; $5ebc: $03
	inc  de                                          ; $5ebd: $13
	rrca                                             ; $5ebe: $0f
	dec  l                                           ; $5ebf: $2d
	rra                                              ; $5ec0: $1f
	ld   d, c                                        ; $5ec1: $51
	ccf                                              ; $5ec2: $3f
	xor  e                                           ; $5ec3: $ab
	ld   a, a                                        ; $5ec4: $7f
	ld   d, a                                        ; $5ec5: $57
	ld   a, a                                        ; $5ec6: $7f
	or   $3f                                         ; $5ec7: $f6 $3f
	dec  [hl]                                        ; $5ec9: $35
	ccf                                              ; $5eca: $3f

jr_099_5ecb:
	dec  hl                                          ; $5ecb: $2b
	ccf                                              ; $5ecc: $3f
	ld   d, $3f                                      ; $5ecd: $16 $3f
	ld   l, a                                        ; $5ecf: $6f
	rra                                              ; $5ed0: $1f
	dec  e                                           ; $5ed1: $1d
	rra                                              ; $5ed2: $1f
	cpl                                              ; $5ed3: $2f
	rrca                                             ; $5ed4: $0f
	inc  de                                          ; $5ed5: $13
	rlca                                             ; $5ed6: $07
	rrca                                             ; $5ed7: $0f
	ld   bc, $0007                                   ; $5ed8: $01 $07 $00
	cp   $80                                         ; $5edb: $fe $80
	pop  af                                          ; $5edd: $f1

jr_099_5ede:
	add  b                                           ; $5ede: $80
	pop  hl                                          ; $5edf: $e1
	add  b                                           ; $5ee0: $80
	pop  af                                          ; $5ee1: $f1
	add  b                                           ; $5ee2: $80
	adc  $04                                         ; $5ee3: $ce $04
	cp   a                                           ; $5ee5: $bf
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5ee6: $cf
	rrca                                             ; $5ee7: $0f
	cp   a                                           ; $5ee8: $bf
	ccf                                              ; $5ee9: $3f
	add  b                                           ; $5eea: $80
	ld   a, a                                        ; $5eeb: $7f
	add  c                                           ; $5eec: $81
	rst  $38                                         ; $5eed: $ff
	db   $10                                         ; $5eee: $10
	cp   $f6                                         ; $5eef: $fe $f6
	ldh  a, [$e8]                                    ; $5ef1: $f0 $e8
	ldh  [c], a                                      ; $5ef3: $e2
	db   $d3                                         ; $5ef4: $d3
	push bc                                          ; $5ef5: $c5
	and  a                                           ; $5ef6: $a7
	adc  e                                           ; $5ef7: $8b
	ld   c, e                                        ; $5ef8: $4b
	dec  de                                          ; $5ef9: $1b
	sbc  e                                           ; $5efa: $9b
	dec  de                                          ; $5efb: $1b
	sbc  c                                           ; $5efc: $99
	ld   a, l                                        ; $5efd: $7d
	ld   a, a                                        ; $5efe: $7f
	ld   a, e                                        ; $5eff: $7b
	add  b                                           ; $5f00: $80
	cp   e                                           ; $5f01: $bb
	db   $10                                         ; $5f02: $10
	sbc  d                                           ; $5f03: $9a
	sub  e                                           ; $5f04: $93
	pop  af                                          ; $5f05: $f1
	ld   b, d                                        ; $5f06: $42
	ld   b, e                                        ; $5f07: $43
	add  c                                           ; $5f08: $81
	add  e                                           ; $5f09: $83
	di                                               ; $5f0a: $f3
	rst  $30                                         ; $5f0b: $f7
	rst  ToBoot                                         ; $5f0c: $c7
	rst  JumpTable                                         ; $5f0d: $df
	dec  de                                          ; $5f0e: $1b
	dec  sp                                          ; $5f0f: $3b
	daa                                              ; $5f10: $27
	ld   h, a                                        ; $5f11: $67
	ld   c, e                                        ; $5f12: $4b
	res  0, b                                        ; $5f13: $cb $80
	add  a                                           ; $5f15: $87
	add  b                                           ; $5f16: $80
	rrca                                             ; $5f17: $0f
	ld   [de], a                                     ; $5f18: $12
	ld   e, a                                        ; $5f19: $5f
	ld   c, [hl]                                     ; $5f1a: $4e
	cp   $dc                                         ; $5f1b: $fe $dc
	db   $ed                                         ; $5f1d: $ed
	reti                                             ; $5f1e: $d9


	ld   sp, hl                                      ; $5f1f: $f9
	db   $fd                                         ; $5f20: $fd
	cp   $fc                                         ; $5f21: $fe $fc
	rst  $38                                         ; $5f23: $ff
	ld   b, [hl]                                     ; $5f24: $46
	ld   b, a                                        ; $5f25: $47
	db   $d3                                         ; $5f26: $d3
	db   $db                                         ; $5f27: $db
	pop  bc                                          ; $5f28: $c1
	call $d5d1                                       ; $5f29: $cd $d1 $d5
	add  b                                           ; $5f2c: $80
	jp   c, $c407                                    ; $5f2d: $da $07 $c4

	call $d4c9                                       ; $5f30: $cd $c9 $d4
	sub  $c8                                         ; $5f33: $d6 $c8
	ld   c, c                                        ; $5f35: $49
	ld   e, h                                        ; $5f36: $5c
	add  b                                           ; $5f37: $80
	ld   e, b                                        ; $5f38: $58
	dec  e                                           ; $5f39: $1d
	ld   [hl], b                                     ; $5f3a: $70
	ld   h, b                                        ; $5f3b: $60
	jr   nz, jr_099_5ede                             ; $5f3c: $20 $a0

	sbc  b                                           ; $5f3e: $98
	sub  b                                           ; $5f3f: $90
	adc  b                                           ; $5f40: $88
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f41: $cf
	rst  JumpTable                                         ; $5f42: $df
	ccf                                              ; $5f43: $3f
	rra                                              ; $5f44: $1f
	ld   a, a                                        ; $5f45: $7f
	ld   h, a                                        ; $5f46: $67
	rst  $20                                         ; $5f47: $e7
	add  a                                           ; $5f48: $87
	rst  $10                                         ; $5f49: $d7
	add  a                                           ; $5f4a: $87
	or   a                                           ; $5f4b: $b7
	add  a                                           ; $5f4c: $87
	and  a                                           ; $5f4d: $a7
	push de                                          ; $5f4e: $d5
	ld   d, l                                        ; $5f4f: $55
	dec  h                                           ; $5f50: $25
	dec  [hl]                                        ; $5f51: $35
	ld   d, $a6                                      ; $5f52: $16 $a6
	or   [hl]                                        ; $5f54: $b6
	ld   d, [hl]                                     ; $5f55: $56
	push bc                                          ; $5f56: $c5
	ld   [hl], l                                     ; $5f57: $75
	add  b                                           ; $5f58: $80
	dec  [hl]                                        ; $5f59: $35
	add  b                                           ; $5f5a: $80
	dec  d                                           ; $5f5b: $15
	dec  b                                           ; $5f5c: $05
	jr   @+$0c                                       ; $5f5d: $18 $0a

	ld   [bc], a                                     ; $5f5f: $02
	ld   b, $25                                      ; $5f60: $06 $25
	call c, $de80                                    ; $5f62: $dc $80 $de
	dec  b                                           ; $5f65: $05
	cp   l                                           ; $5f66: $bd
	pop  hl                                          ; $5f67: $e1
	jp   $ecac                                       ; $5f68: $c3 $ac $ec


	pop  bc                                          ; $5f6b: $c1
	add  b                                           ; $5f6c: $80
	pop  hl                                          ; $5f6d: $e1
	ld   a, [bc]                                     ; $5f6e: $0a
	pop  af                                          ; $5f6f: $f1
	ldh  a, [$f8]                                    ; $5f70: $f0 $f8
	ld   sp, hl                                      ; $5f72: $f9
	db   $fd                                         ; $5f73: $fd
	db   $e4                                         ; $5f74: $e4
	and  $f2                                         ; $5f75: $e6 $f2
	di                                               ; $5f77: $f3
	ld   sp, hl                                      ; $5f78: $f9
	ld   a, c                                        ; $5f79: $79
	add  b                                           ; $5f7a: $80
	ld   d, b                                        ; $5f7b: $50
	add  hl, bc                                      ; $5f7c: $09
	ld   h, b                                        ; $5f7d: $60
	and  b                                           ; $5f7e: $a0
	or   l                                           ; $5f7f: $b5
	push bc                                          ; $5f80: $c5
	rst  JumpTable                                         ; $5f81: $df
	di                                               ; $5f82: $f3
	rst  $28                                         ; $5f83: $ef
	dec  c                                           ; $5f84: $0d
	cp   [hl]                                        ; $5f85: $be
	cp   a                                           ; $5f86: $bf
	add  b                                           ; $5f87: $80
	sbc  a                                           ; $5f88: $9f
	add  b                                           ; $5f89: $80
	rrca                                             ; $5f8a: $0f
	add  b                                           ; $5f8b: $80
	di                                               ; $5f8c: $f3
	ld   [bc], a                                     ; $5f8d: $02
	db   $fd                                         ; $5f8e: $fd
	rst  $38                                         ; $5f8f: $ff
	db   $fd                                         ; $5f90: $fd
	add  b                                           ; $5f91: $80
	cp   $00                                         ; $5f92: $fe $00
	rst  $38                                         ; $5f94: $ff
	add  b                                           ; $5f95: $80
	ccf                                              ; $5f96: $3f
	add  b                                           ; $5f97: $80
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $5f98: $cf
	add  b                                           ; $5f99: $80
	ld   h, a                                        ; $5f9a: $67
	dec  b                                           ; $5f9b: $05
	inc  sp                                          ; $5f9c: $33
	or   e                                           ; $5f9d: $b3
	cp   c                                           ; $5f9e: $b9
	ld   sp, hl                                      ; $5f9f: $f9
	ld   e, h                                        ; $5fa0: $5c
	ld   a, h                                        ; $5fa1: $7c
	add  b                                           ; $5fa2: $80
	ld   l, [hl]                                     ; $5fa3: $6e
	dec  hl                                          ; $5fa4: $2b
	xor  a                                           ; $5fa5: $af
	cp   a                                           ; $5fa6: $bf
	or   $89                                         ; $5fa7: $f6 $89
	ld   h, b                                        ; $5fa9: $60
	adc  b                                           ; $5faa: $88
	ldh  a, [$ac]                                    ; $5fab: $f0 $ac
	ld   hl, sp-$32                                  ; $5fad: $f8 $ce
	db   $fc                                         ; $5faf: $fc
	rst  $30                                         ; $5fb0: $f7
	cp   $fa                                         ; $5fb1: $fe $fa
	or   $35                                         ; $5fb3: $f6 $35
	ld   hl, sp-$28                                  ; $5fb5: $f8 $d8
	db   $fc                                         ; $5fb7: $fc
	ld   l, l                                        ; $5fb8: $6d
	cp   $b6                                         ; $5fb9: $fe $b6
	cp   $da                                         ; $5fbb: $fe $da
	cp   $fc                                         ; $5fbd: $fe $fc
	cp   $e9                                         ; $5fbf: $fe $e9
	ld   hl, sp-$0a                                  ; $5fc1: $f8 $f6
	ld   [hl], b                                     ; $5fc3: $70
	ld   a, b                                        ; $5fc4: $78
	nop                                              ; $5fc5: $00
	ld   [hl], b                                     ; $5fc6: $70
	nop                                              ; $5fc7: $00
	adc  [hl]                                        ; $5fc8: $8e
	ldh  a, [$72]                                    ; $5fc9: $f0 $72
	ldh  a, [$a8]                                    ; $5fcb: $f0 $a8
	add  sp, -$38                                    ; $5fcd: $e8 $c8
	add  sp, -$08                                    ; $5fcf: $e8 $f8
	add  b                                           ; $5fd1: $80
	ret  c                                           ; $5fd2: $d8

	ld   bc, $d058                                   ; $5fd3: $01 $58 $d0
	add  b                                           ; $5fd6: $80
	sub  b                                           ; $5fd7: $90
	ld   de, $f8b0                                   ; $5fd8: $11 $b0 $f8
	ret  c                                           ; $5fdb: $d8

	adc  $dc                                         ; $5fdc: $ce $dc
	rst  JumpTable                                         ; $5fde: $df
	sbc  $db                                         ; $5fdf: $de $db
	rst  JumpTable                                         ; $5fe1: $df
	reti                                             ; $5fe2: $d9


	rst  JumpTable                                         ; $5fe3: $df
	sub  [hl]                                        ; $5fe4: $96
	xor  l                                           ; $5fe5: $ad
	xor  a                                           ; $5fe6: $af
	xor  [hl]                                        ; $5fe7: $ae
	cp   d                                           ; $5fe8: $ba
	or   [hl]                                        ; $5fe9: $b6
	db   $db                                         ; $5fea: $db
	add  e                                           ; $5feb: $83
	nop                                              ; $5fec: $00
	nop                                              ; $5fed: $00
	add  b                                           ; $5fee: $80
	add  c                                           ; $5fef: $81
	nop                                              ; $5ff0: $00
	nop                                              ; $5ff1: $00
	ret  nz                                          ; $5ff2: $c0

	add  c                                           ; $5ff3: $81
	add  b                                           ; $5ff4: $80
	nop                                              ; $5ff5: $00
	ld   h, b                                        ; $5ff6: $60
	add  b                                           ; $5ff7: $80
	ret  nz                                          ; $5ff8: $c0

	add  e                                           ; $5ff9: $83
	ld   b, b                                        ; $5ffa: $40
	nop                                              ; $5ffb: $00
	add  b                                           ; $5ffc: $80
	add  c                                           ; $5ffd: $81
	nop                                              ; $5ffe: $00
	ld   [bc], a                                     ; $5fff: $02
	jr   nz, jr_099_6002                             ; $6000: $20 $00

jr_099_6002:
	ld   b, b                                        ; $6002: $40
	add  c                                           ; $6003: $81
	nop                                              ; $6004: $00
	inc  c                                           ; $6005: $0c
	rst  $30                                         ; $6006: $f7
	ld   a, [hl+]                                    ; $6007: $2a
	ld   a, [hl-]                                    ; $6008: $3a
	sbc  d                                           ; $6009: $9a
	sub  b                                           ; $600a: $90
	ld   d, [hl]                                     ; $600b: $56
	ld   b, b                                        ; $600c: $40
	dec  b                                           ; $600d: $05
	ld   sp, hl                                      ; $600e: $f9
	ld   bc, $0007                                   ; $600f: $01 $07 $00
	ld   bc, $0083                                   ; $6012: $01 $83 $00
	ld   c, $60                                      ; $6015: $0e $60
	nop                                              ; $6017: $00
	ret  nz                                          ; $6018: $c0

	nop                                              ; $6019: $00
	ld   b, b                                        ; $601a: $40
	nop                                              ; $601b: $00
	and  b                                           ; $601c: $a0
	nop                                              ; $601d: $00
	ld   h, b                                        ; $601e: $60
	nop                                              ; $601f: $00
	jr   nc, jr_099_6022                             ; $6020: $30 $00

jr_099_6022:
	jr   jr_099_6024                                 ; $6022: $18 $00

jr_099_6024:
	add  b                                           ; $6024: $80
	add  c                                           ; $6025: $81
	nop                                              ; $6026: $00
	inc  c                                           ; $6027: $0c
	ret  nz                                          ; $6028: $c0

	nop                                              ; $6029: $00
	add  hl, de                                      ; $602a: $19
	nop                                              ; $602b: $00
	and  b                                           ; $602c: $a0
	nop                                              ; $602d: $00
	ei                                               ; $602e: $fb
	ldh  a, [$96]                                    ; $602f: $f0 $96
	sub  b                                           ; $6031: $90
	ld   l, b                                        ; $6032: $68
	ld   [$81c8], sp                                 ; $6033: $08 $c8 $81
	adc  b                                           ; $6036: $88
	ld   b, $f8                                      ; $6037: $06 $f8
	ret  c                                           ; $6039: $d8

	ldh  a, [c]                                      ; $603a: $f2
	db   $f4                                         ; $603b: $f4
	db   $e4                                         ; $603c: $e4
	db   $ec                                         ; $603d: $ec
	call $de83                                       ; $603e: $cd $83 $de
	nop                                              ; $6041: $00
	sbc  h                                           ; $6042: $9c
	add  c                                           ; $6043: $81
	cp   l                                           ; $6044: $bd
	inc  bc                                          ; $6045: $03
	inc  a                                           ; $6046: $3c
	ld   a, h                                        ; $6047: $7c
	ld   b, [hl]                                     ; $6048: $46
	add  $80                                         ; $6049: $c6 $80
	ldh  a, [$08]                                    ; $604b: $f0 $08
	ld   hl, sp-$68                                  ; $604d: $f8 $98
	sbc  l                                           ; $604f: $9d
	ld   c, l                                        ; $6050: $4d
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6051: $cf
	and  a                                           ; $6052: $a7
	daa                                              ; $6053: $27
	inc  sp                                          ; $6054: $33
	di                                               ; $6055: $f3
	add  b                                           ; $6056: $80
	inc  de                                          ; $6057: $13
	dec  bc                                          ; $6058: $0b
	db   $10                                         ; $6059: $10
	ld   de, $1210                                   ; $605a: $11 $10 $12
	db   $10                                         ; $605d: $10
	ld   d, h                                        ; $605e: $54
	jr   nz, @-$5e                                   ; $605f: $20 $a0

	ld   h, b                                        ; $6061: $60
	ld   h, h                                        ; $6062: $64
	ldh  [$9c], a                                    ; $6063: $e0 $9c
	add  e                                           ; $6065: $83
	nop                                              ; $6066: $00
	nop                                              ; $6067: $00
	ld   b, b                                        ; $6068: $40
	adc  c                                           ; $6069: $89
	add  b                                           ; $606a: $80
	ld   [bc], a                                     ; $606b: $02
	ret  nz                                          ; $606c: $c0

	nop                                              ; $606d: $00
	add  b                                           ; $606e: $80
	adc  c                                           ; $606f: $89
	nop                                              ; $6070: $00
	inc  b                                           ; $6071: $04
	inc  de                                          ; $6072: $13
	nop                                              ; $6073: $00
	rlca                                             ; $6074: $07
	nop                                              ; $6075: $00
	inc  c                                           ; $6076: $0c
	add  c                                           ; $6077: $81
	nop                                              ; $6078: $00
	inc  b                                           ; $6079: $04
	ld   h, b                                        ; $607a: $60
	nop                                              ; $607b: $00
	add  h                                           ; $607c: $84
	ld   a, b                                        ; $607d: $78
	ld   a, e                                        ; $607e: $7b
	add  b                                           ; $607f: $80
	db   $fc                                         ; $6080: $fc
	add  h                                           ; $6081: $84
	rst  $38                                         ; $6082: $ff
	inc  bc                                          ; $6083: $03
	ret  nz                                          ; $6084: $c0

	rst  $30                                         ; $6085: $f7
	add  b                                           ; $6086: $80
	call z, $0081                                    ; $6087: $cc $81 $00
	nop                                              ; $608a: $00
	add  b                                           ; $608b: $80
	add  c                                           ; $608c: $81
	nop                                              ; $608d: $00
	db   $10                                         ; $608e: $10
	ld   d, $0c                                      ; $608f: $16 $0c
	inc  l                                           ; $6091: $2c
	inc  e                                           ; $6092: $1c
	db   $dd                                         ; $6093: $dd
	ld   a, $fa                                      ; $6094: $3e $fa
	cp   $ce                                         ; $6096: $fe $ce
	cp   $f6                                         ; $6098: $fe $f6
	cp   $2e                                         ; $609a: $fe $2e
	cp   $de                                         ; $609c: $fe $de
	ld   hl, sp-$05                                  ; $609e: $f8 $fb
	add  c                                           ; $60a0: $81
	ld   hl, sp+$10                                  ; $60a1: $f8 $10
	db   $fc                                         ; $60a3: $fc
	ldh  a, [$f8]                                    ; $60a4: $f0 $f8
	ld   h, b                                        ; $60a6: $60
	ldh  [$80], a                                    ; $60a7: $e0 $80
	ret  c                                           ; $60a9: $d8

	ret  nz                                          ; $60aa: $c0

	call z, $f6c0                                    ; $60ab: $cc $c0 $f6
	ldh  [$ce], a                                    ; $60ae: $e0 $ce
	dec  bc                                          ; $60b0: $0b
	dec  hl                                          ; $60b1: $2b
	inc  bc                                          ; $60b2: $03
	inc  d                                           ; $60b3: $14
	add  h                                           ; $60b4: $84
	dec  b                                           ; $60b5: $05
	nop                                              ; $60b6: $00
	inc  b                                           ; $60b7: $04
	add  b                                           ; $60b8: $80
	dec  b                                           ; $60b9: $05
	ld   [de], a                                     ; $60ba: $12
	add  hl, de                                      ; $60bb: $19
	dec  bc                                          ; $60bc: $0b
	add  hl, bc                                      ; $60bd: $09
	dec  bc                                          ; $60be: $0b
	dec  sp                                          ; $60bf: $3b
	dec  de                                          ; $60c0: $1b
	add  hl, de                                      ; $60c1: $19

jr_099_60c2:
	dec  de                                          ; $60c2: $1b
	ld   a, d                                        ; $60c3: $7a
	dec  a                                           ; $60c4: $3d
	db   $ed                                         ; $60c5: $ed
	ld   a, h                                        ; $60c6: $7c
	add  $fe                                         ; $60c7: $c6 $fe
	cp   [hl]                                        ; $60c9: $be
	cp   d                                           ; $60ca: $ba
	ld   c, $b7                                      ; $60cb: $0e $b7
	ld   l, [hl]                                     ; $60cd: $6e
	add  a                                           ; $60ce: $87
	nop                                              ; $60cf: $00
	nop                                              ; $60d0: $00
	ld   bc, $0081                                   ; $60d1: $01 $81 $00
	nop                                              ; $60d4: $00
	inc  bc                                          ; $60d5: $03
	add  a                                           ; $60d6: $87
	ld   bc, $0200                                   ; $60d7: $01 $00 $02
	add  c                                           ; $60da: $81
	nop                                              ; $60db: $00
	nop                                              ; $60dc: $00
	ld   bc, $0081                                   ; $60dd: $01 $81 $00
	inc  bc                                          ; $60e0: $03
	sbc  c                                           ; $60e1: $99
	ld   [hl], a                                     ; $60e2: $77
	ld   e, l                                        ; $60e3: $5d
	ld   l, [hl]                                     ; $60e4: $6e
	add  d                                           ; $60e5: $82
	ld   l, d                                        ; $60e6: $6a
	ld   b, $27                                      ; $60e7: $06 $27
	ld   l, h                                        ; $60e9: $6c
	ld   l, d                                        ; $60ea: $6a
	ld   b, b                                        ; $60eb: $40
	ld   [hl], h                                     ; $60ec: $74
	nop                                              ; $60ed: $00
	ld   c, b                                        ; $60ee: $48
	add  l                                           ; $60ef: $85
	nop                                              ; $60f0: $00
	ld   [bc], a                                     ; $60f1: $02
	add  h                                           ; $60f2: $84
	nop                                              ; $60f3: $00
	dec  c                                           ; $60f4: $0d
	add  c                                           ; $60f5: $81
	nop                                              ; $60f6: $00
	jr   jr_099_6113                                 ; $60f7: $18 $1a

	ld   bc, $0335                                   ; $60f9: $01 $35 $03
	adc  e                                           ; $60fc: $8b
	ld   d, d                                        ; $60fd: $52
	ld   [de], a                                     ; $60fe: $12
	sub  e                                           ; $60ff: $93
	adc  e                                           ; $6100: $8b
	sbc  c                                           ; $6101: $99
	sub  l                                           ; $6102: $95
	ld   c, h                                        ; $6103: $4c
	jp   z, Jump_099_7102                            ; $6104: $ca $02 $71

	nop                                              ; $6107: $00
	inc  c                                           ; $6108: $0c
	nop                                              ; $6109: $00
	inc  bc                                          ; $610a: $03
	nop                                              ; $610b: $00
	ld   sp, $7c00                                   ; $610c: $31 $00 $7c
	nop                                              ; $610f: $00
	adc  $81                                         ; $6110: $ce $81
	nop                                              ; $6112: $00

jr_099_6113:
	ld   bc, $40c3                                   ; $6113: $01 $c3 $40
	add  b                                           ; $6116: $80
	ldh  a, [rDIV]                                   ; $6117: $f0 $04
	db   $e4                                         ; $6119: $e4
	ldh  [$c2], a                                    ; $611a: $e0 $c2
	add  b                                           ; $611c: $80
	ld   b, a                                        ; $611d: $47
	add  e                                           ; $611e: $83
	nop                                              ; $611f: $00
	nop                                              ; $6120: $00
	ld   bc, $0083                                   ; $6121: $01 $83 $00
	nop                                              ; $6124: $00
	ld   [bc], a                                     ; $6125: $02
	add  l                                           ; $6126: $85
	ld   bc, $0302                                   ; $6127: $01 $02 $03
	nop                                              ; $612a: $00
	ld   [bc], a                                     ; $612b: $02
	add  c                                           ; $612c: $81
	ld   bc, $0300                                   ; $612d: $01 $00 $03
	add  c                                           ; $6130: $81
	nop                                              ; $6131: $00
	ld   b, $01                                      ; $6132: $06 $01
	nop                                              ; $6134: $00
	and  l                                           ; $6135: $a5
	nop                                              ; $6136: $00
	dec  de                                          ; $6137: $1b
	nop                                              ; $6138: $00
	adc  [hl]                                        ; $6139: $8e
	add  c                                           ; $613a: $81
	nop                                              ; $613b: $00
	nop                                              ; $613c: $00
	jr   z, jr_099_60c2                              ; $613d: $28 $83

	nop                                              ; $613f: $00
	inc  e                                           ; $6140: $1c
	sub  h                                           ; $6141: $94
	nop                                              ; $6142: $00
	ret  nz                                          ; $6143: $c0

	inc  bc                                          ; $6144: $03
	ld   l, l                                        ; $6145: $6d
	ld   bc, $0115                                   ; $6146: $01 $15 $01
	jr   z, jr_099_614b                              ; $6149: $28 $00

jr_099_614b:
	ld   e, $00                                      ; $614b: $1e $00
	ld   b, $00                                      ; $614d: $06 $00
	rrca                                             ; $614f: $0f
	rlca                                             ; $6150: $07
	rra                                              ; $6151: $1f
	rrca                                             ; $6152: $0f
	ld   c, $0f                                      ; $6153: $0e $0f
	dec  d                                           ; $6155: $15
	rlca                                             ; $6156: $07
	inc  bc                                          ; $6157: $03
	rlca                                             ; $6158: $07
	inc  c                                           ; $6159: $0c
	inc  bc                                          ; $615a: $03
	ld   [bc], a                                     ; $615b: $02
	inc  bc                                          ; $615c: $03
	add  hl, bc                                      ; $615d: $09
	add  c                                           ; $615e: $81
	rlca                                             ; $615f: $07
	ld   [bc], a                                     ; $6160: $02
	rrca                                             ; $6161: $0f
	inc  bc                                          ; $6162: $03
	ld   b, $81                                      ; $6163: $06 $81
	ld   bc, $0080                                   ; $6165: $01 $80 $00
	ld   a, [bc]                                     ; $6168: $0a
	inc  b                                           ; $6169: $04
	nop                                              ; $616a: $00
	dec  c                                           ; $616b: $0d
	ld   bc, $031f                                   ; $616c: $01 $1f $03
	inc  sp                                          ; $616f: $33
	inc  bc                                          ; $6170: $03
	ld   l, a                                        ; $6171: $6f

jr_099_6172:
	rlca                                             ; $6172: $07
	and  d                                           ; $6173: $a2
	add  d                                           ; $6174: $82
	ld   [hl], a                                     ; $6175: $77
	dec  bc                                          ; $6176: $0b
	or   a                                           ; $6177: $b7
	add  c                                           ; $6178: $81
	xor  [hl]                                        ; $6179: $ae
	adc  [hl]                                        ; $617a: $8e
	ld   c, $fb                                      ; $617b: $0e $fb
	inc  b                                           ; $617d: $04
	ld   h, [hl]                                     ; $617e: $66
	nop                                              ; $617f: $00
	sbc  b                                           ; $6180: $98
	ld   h, b                                        ; $6181: $60
	ldh  [$81], a                                    ; $6182: $e0 $81
	jr   nz, jr_099_618c                             ; $6184: $20 $06

	ld   [hl], b                                     ; $6186: $70
	nop                                              ; $6187: $00
	ld   l, $00                                      ; $6188: $2e $00
	jr   jr_099_618c                                 ; $618a: $18 $00

jr_099_618c:
	inc  sp                                          ; $618c: $33
	add  c                                           ; $618d: $81
	nop                                              ; $618e: $00
	ld   [bc], a                                     ; $618f: $02
	ld   bc, $6000                                   ; $6190: $01 $00 $60
	add  c                                           ; $6193: $81
	nop                                              ; $6194: $00
	ld   [bc], a                                     ; $6195: $02
	ret  nz                                          ; $6196: $c0

	nop                                              ; $6197: $00
	add  b                                           ; $6198: $80
	add  c                                           ; $6199: $81
	nop                                              ; $619a: $00
	inc  e                                           ; $619b: $1c
	ld   h, b                                        ; $619c: $60
	nop                                              ; $619d: $00
	ret  nc                                          ; $619e: $d0

	nop                                              ; $619f: $00
	add  sp, $00                                     ; $61a0: $e8 $00
	sub  h                                           ; $61a2: $94
	nop                                              ; $61a3: $00
	ldh  [$c0], a                                    ; $61a4: $e0 $c0
	jp   $c1c0                                       ; $61a6: $c3 $c0 $c1


	ret  nz                                          ; $61a9: $c0

	jp   nz, $b4c0                                   ; $61aa: $c2 $c0 $b4

	add  b                                           ; $61ad: $80
	ld   b, b                                        ; $61ae: $40
	nop                                              ; $61af: $00
	add  h                                           ; $61b0: $84
	nop                                              ; $61b1: $00
	xor  $e0                                         ; $61b2: $ee $e0
	ldh  a, [$c0]                                    ; $61b4: $f0 $c0
	db   $e3                                         ; $61b6: $e3
	nop                                              ; $61b7: $00
	ret  nz                                          ; $61b8: $c0

	add  l                                           ; $61b9: $85
	nop                                              ; $61ba: $00
	ld   [bc], a                                     ; $61bb: $02
	ld   b, $00                                      ; $61bc: $06 $00
	inc  bc                                          ; $61be: $03
	add  c                                           ; $61bf: $81
	nop                                              ; $61c0: $00
	db   $10                                         ; $61c1: $10
	inc  c                                           ; $61c2: $0c
	nop                                              ; $61c3: $00
	sbc  b                                           ; $61c4: $98
	nop                                              ; $61c5: $00
	ldh  [rP1], a                                    ; $61c6: $e0 $00
	ld   c, b                                        ; $61c8: $48
	db   $10                                         ; $61c9: $10
	inc  d                                           ; $61ca: $14
	jr   jr_099_6207                                 ; $61cb: $18 $3a

	inc  c                                           ; $61cd: $0c
	rst  $28                                         ; $61ce: $ef
	ld   e, d                                        ; $61cf: $5a
	ld   e, c                                        ; $61d0: $59
	ld   b, b                                        ; $61d1: $40
	ld   c, [hl]                                     ; $61d2: $4e
	add  c                                           ; $61d3: $81
	ret  nz                                          ; $61d4: $c0

	nop                                              ; $61d5: $00
	ret  z                                           ; $61d6: $c8

	add  e                                           ; $61d7: $83
	ldh  [rDIV], a                                   ; $61d8: $e0 $04
	db   $e4                                         ; $61da: $e4
	ld   [hl], b                                     ; $61db: $70
	ldh  a, [$30]                                    ; $61dc: $f0 $30
	ld   [hl], d                                     ; $61de: $72
	add  b                                           ; $61df: $80
	inc  e                                           ; $61e0: $1c
	add  hl, bc                                      ; $61e1: $09
	ld   [$0029], sp                                 ; $61e2: $08 $29 $00
	ld   e, $00                                      ; $61e5: $1e $00
	ld   b, $00                                      ; $61e7: $06 $00
	rrca                                             ; $61e9: $0f
	nop                                              ; $61ea: $00
	jr   @-$7d                                       ; $61eb: $18 $81

	nop                                              ; $61ed: $00
	nop                                              ; $61ee: $00
	jr   jr_099_6172                                 ; $61ef: $18 $81

	nop                                              ; $61f1: $00
	nop                                              ; $61f2: $00
	inc  c                                           ; $61f3: $0c

jr_099_61f4:
	add  c                                           ; $61f4: $81
	nop                                              ; $61f5: $00
	nop                                              ; $61f6: $00
	inc  c                                           ; $61f7: $0c
	add  c                                           ; $61f8: $81
	nop                                              ; $61f9: $00
	ld   [bc], a                                     ; $61fa: $02
	inc  c                                           ; $61fb: $0c
	nop                                              ; $61fc: $00
	ld   b, $81                                      ; $61fd: $06 $81
	nop                                              ; $61ff: $00
	jr   z, jr_099_6203                              ; $6200: $28 $01

	nop                                              ; $6202: $00

jr_099_6203:
	inc  b                                           ; $6203: $04
	nop                                              ; $6204: $00
	add  hl, bc                                      ; $6205: $09
	inc  b                                           ; $6206: $04

jr_099_6207:
	ld   d, $08                                      ; $6207: $16 $08
	jr   z, jr_099_6223                              ; $6209: $28 $18

	ld   e, h                                        ; $620b: $5c
	jr   nc, jr_099_6248                             ; $620c: $30 $3a

	db   $ed                                         ; $620e: $ed
	ld   a, d                                        ; $620f: $7a
	jp   c, $c6d2                                    ; $6210: $da $d2 $c6

	ldh  [$95], a                                    ; $6213: $e0 $95
	ret                                              ; $6215: $c9


	dec  hl                                          ; $6216: $2b
	adc  e                                           ; $6217: $8b
	ld   e, d                                        ; $6218: $5a
	ld   b, d                                        ; $6219: $42
	ld   d, h                                        ; $621a: $54
	inc  b                                           ; $621b: $04
	and  a                                           ; $621c: $a7
	add  [hl]                                        ; $621d: $86
	and  [hl]                                        ; $621e: $a6
	ld   h, $66                                      ; $621f: $26 $66
	rlca                                             ; $6221: $07
	ld   d, a                                        ; $6222: $57

jr_099_6223:
	ld   d, [hl]                                     ; $6223: $56
	ld   d, d                                        ; $6224: $52
	ld   d, e                                        ; $6225: $53
	db   $d3                                         ; $6226: $d3
	jp   nc, $c3c2                                   ; $6227: $d2 $c2 $c3

	add  b                                           ; $622a: $80
	ret                                              ; $622b: $c9


	rrca                                             ; $622c: $0f
	ld   c, c                                        ; $622d: $49
	ld   c, $60                                      ; $622e: $0e $60
	halt                                             ; $6230: $76
	ldh  [c], a                                      ; $6231: $e2
	db   $f4                                         ; $6232: $f4
	ld   [$c030], sp                                 ; $6233: $08 $30 $c0
	ld   hl, sp+$08                                  ; $6236: $f8 $08
	inc  l                                           ; $6238: $2c
	inc  b                                           ; $6239: $04
	inc  h                                           ; $623a: $24
	add  b                                           ; $623b: $80
	inc  b                                           ; $623c: $04
	add  b                                           ; $623d: $80
	nop                                              ; $623e: $00
	ld   b, $50                                      ; $623f: $06 $50
	ld   b, b                                        ; $6241: $40
	jr   nz, jr_099_61f4                             ; $6242: $20 $b0

	ld   [$00f0], sp                                 ; $6244: $08 $f0 $00
	add  b                                           ; $6247: $80

jr_099_6248:
	ld   d, b                                        ; $6248: $50
	add  b                                           ; $6249: $80
	and  c                                           ; $624a: $a1
	add  d                                           ; $624b: $82
	nop                                              ; $624c: $00
	ld   c, $17                                      ; $624d: $0e $17
	rlca                                             ; $624f: $07
	ld   h, a                                        ; $6250: $67
	ld   b, a                                        ; $6251: $47
	cpl                                              ; $6252: $2f
	db   $10                                         ; $6253: $10
	inc  c                                           ; $6254: $0c
	inc  bc                                          ; $6255: $03
	rrca                                             ; $6256: $0f
	ld   [$101a], sp                                 ; $6257: $08 $1a $10
	ld   [de], a                                     ; $625a: $12
	nop                                              ; $625b: $00
	db   $10                                         ; $625c: $10
	add  b                                           ; $625d: $80
	nop                                              ; $625e: $00
	ld   b, $05                                      ; $625f: $06 $05
	ld   bc, $0602                                   ; $6261: $01 $02 $06
	ld   [$0007], sp                                 ; $6264: $08 $07 $00
	add  b                                           ; $6267: $80
	adc  d                                           ; $6268: $8a
	ld   [bc], a                                     ; $6269: $02
	add  l                                           ; $626a: $85
	dec  b                                           ; $626b: $05
	add  b                                           ; $626c: $80
	add  c                                           ; $626d: $81
	nop                                              ; $626e: $00
	ld   a, [bc]                                     ; $626f: $0a
	adc  [hl]                                        ; $6270: $8e
	ld   d, a                                        ; $6271: $57
	ld   e, $6b                                      ; $6272: $1e $6b
	ld   l, a                                        ; $6274: $6f
	dec  h                                           ; $6275: $25
	rlca                                             ; $6276: $07
	sub  d                                           ; $6277: $92
	add  d                                           ; $6278: $82
	ld   c, b                                        ; $6279: $48
	ld   b, c                                        ; $627a: $41
	add  b                                           ; $627b: $80
	dec  l                                           ; $627c: $2d
	ld   a, [bc]                                     ; $627d: $0a
	add  [hl]                                        ; $627e: $86
	ld   [bc], a                                     ; $627f: $02
	ld   h, [hl]                                     ; $6280: $66
	ld   h, $2b                                      ; $6281: $26 $2b
	add  hl, hl                                      ; $6283: $29
	dec  hl                                          ; $6284: $2b
	db   $eb                                         ; $6285: $eb
	ld   l, l                                        ; $6286: $6d
	db   $ec                                         ; $6287: $ec
	ld   c, l                                        ; $6288: $4d
	add  b                                           ; $6289: $80
	call Call_099_4900                               ; $628a: $cd $00 $49
	add  b                                           ; $628d: $80
	ld   c, h                                        ; $628e: $4c
	rra                                              ; $628f: $1f
	inc  c                                           ; $6290: $0c
	add  b                                           ; $6291: $80
	adc  b                                           ; $6292: $88
	dec  c                                           ; $6293: $0d
	db   $ed                                         ; $6294: $ed
	ld   a, d                                        ; $6295: $7a
	jp   c, $c6d2                                    ; $6296: $da $d2 $c6

	ldh  [$95], a                                    ; $6299: $e0 $95
	ret                                              ; $629b: $c9


	dec  hl                                          ; $629c: $2b
	adc  e                                           ; $629d: $8b
	ld   e, e                                        ; $629e: $5b
	ld   b, e                                        ; $629f: $43
	ld   d, a                                        ; $62a0: $57
	rlca                                             ; $62a1: $07
	and  h                                           ; $62a2: $a4
	add  l                                           ; $62a3: $85
	and  [hl]                                        ; $62a4: $a6
	ld   h, $66                                      ; $62a5: $26 $66
	rlca                                             ; $62a7: $07
	ld   d, a                                        ; $62a8: $57
	ld   d, [hl]                                     ; $62a9: $56
	ld   d, d                                        ; $62aa: $52
	ld   d, e                                        ; $62ab: $53
	db   $d3                                         ; $62ac: $d3
	jp   nc, $c3c2                                   ; $62ad: $d2 $c2 $c3

	add  b                                           ; $62b0: $80
	ret                                              ; $62b1: $c9


	ld   [$0e49], sp                                 ; $62b2: $08 $49 $0e
	ld   h, b                                        ; $62b5: $60
	halt                                             ; $62b6: $76
	ldh  [c], a                                      ; $62b7: $e2
	db   $f4                                         ; $62b8: $f4
	ld   [$c030], sp                                 ; $62b9: $08 $30 $c0
	add  d                                           ; $62bc: $82
	add  b                                           ; $62bd: $80
	dec  bc                                          ; $62be: $0b
	ld   hl, sp+$08                                  ; $62bf: $f8 $08
	inc  c                                           ; $62c1: $0c
	inc  b                                           ; $62c2: $04
	add  h                                           ; $62c3: $84
	db   $10                                         ; $62c4: $10
	inc  [hl]                                        ; $62c5: $34
	nop                                              ; $62c6: $00
	and  b                                           ; $62c7: $a0
	ld   [$00f0], sp                                 ; $62c8: $08 $f0 $00
	add  b                                           ; $62cb: $80
	ld   d, b                                        ; $62cc: $50
	add  b                                           ; $62cd: $80
	and  c                                           ; $62ce: $a1
	add  d                                           ; $62cf: $82
	nop                                              ; $62d0: $00
	rlca                                             ; $62d1: $07
	rla                                              ; $62d2: $17
	rlca                                             ; $62d3: $07
	ld   h, a                                        ; $62d4: $67
	ld   b, a                                        ; $62d5: $47
	cpl                                              ; $62d6: $2f
	db   $10                                         ; $62d7: $10
	inc  c                                           ; $62d8: $0c
	inc  bc                                          ; $62d9: $03
	add  b                                           ; $62da: $80
	ld   bc, $0080                                   ; $62db: $01 $80 $00
	ld   [bc], a                                     ; $62de: $02
	rrca                                             ; $62df: $0f
	ld   [$8018], sp                                 ; $62e0: $08 $18 $80
	db   $10                                         ; $62e3: $10
	ld   b, $04                                      ; $62e4: $06 $04
	ld   d, $00                                      ; $62e6: $16 $00
	ld   [bc], a                                     ; $62e8: $02
	ld   [$0007], sp                                 ; $62e9: $08 $07 $00
	add  b                                           ; $62ec: $80
	adc  d                                           ; $62ed: $8a
	ld   [bc], a                                     ; $62ee: $02
	add  l                                           ; $62ef: $85
	dec  b                                           ; $62f0: $05
	add  b                                           ; $62f1: $80
	add  c                                           ; $62f2: $81
	nop                                              ; $62f3: $00
	ld   a, [bc]                                     ; $62f4: $0a
	adc  [hl]                                        ; $62f5: $8e
	ld   d, a                                        ; $62f6: $57
	ld   e, $6b                                      ; $62f7: $1e $6b
	ld   l, a                                        ; $62f9: $6f
	dec  h                                           ; $62fa: $25
	rlca                                             ; $62fb: $07
	sub  d                                           ; $62fc: $92
	add  d                                           ; $62fd: $82
	ret  z                                           ; $62fe: $c8

	pop  bc                                          ; $62ff: $c1
	add  b                                           ; $6300: $80
	db   $ed                                         ; $6301: $ed
	ld   a, [bc]                                     ; $6302: $0a
	ld   h, [hl]                                     ; $6303: $66
	ld   h, d                                        ; $6304: $62
	ld   b, $c6                                      ; $6305: $06 $c6
	dec  hl                                          ; $6307: $2b
	add  hl, hl                                      ; $6308: $29
	dec  hl                                          ; $6309: $2b
	db   $eb                                         ; $630a: $eb
	ld   l, l                                        ; $630b: $6d
	db   $ec                                         ; $630c: $ec
	ld   c, l                                        ; $630d: $4d
	add  b                                           ; $630e: $80
	call Call_099_4900                               ; $630f: $cd $00 $49
	add  b                                           ; $6312: $80
	ld   c, h                                        ; $6313: $4c
	rra                                              ; $6314: $1f
	inc  c                                           ; $6315: $0c
	add  b                                           ; $6316: $80
	adc  b                                           ; $6317: $88
	dec  c                                           ; $6318: $0d
	db   $ed                                         ; $6319: $ed
	ld   a, d                                        ; $631a: $7a
	jp   c, $c6d2                                    ; $631b: $da $d2 $c6

	ldh  [$95], a                                    ; $631e: $e0 $95
	ret                                              ; $6320: $c9


	dec  hl                                          ; $6321: $2b
	adc  e                                           ; $6322: $8b
	ld   e, e                                        ; $6323: $5b
	ld   b, e                                        ; $6324: $43
	ld   d, a                                        ; $6325: $57
	rlca                                             ; $6326: $07
	and  a                                           ; $6327: $a7
	add  a                                           ; $6328: $87
	and  h                                           ; $6329: $a4
	inc  h                                           ; $632a: $24
	ld   h, [hl]                                     ; $632b: $66
	ld   b, $57                                      ; $632c: $06 $57
	ld   d, [hl]                                     ; $632e: $56
	ld   d, d                                        ; $632f: $52
	ld   d, e                                        ; $6330: $53
	db   $d3                                         ; $6331: $d3
	jp   nc, $c3c2                                   ; $6332: $d2 $c2 $c3

	add  b                                           ; $6335: $80
	ret                                              ; $6336: $c9


	ld   [$0e49], sp                                 ; $6337: $08 $49 $0e
	ld   h, b                                        ; $633a: $60
	halt                                             ; $633b: $76
	ldh  [c], a                                      ; $633c: $e2
	db   $f4                                         ; $633d: $f4
	ld   [$c030], sp                                 ; $633e: $08 $30 $c0
	add  d                                           ; $6341: $82
	add  b                                           ; $6342: $80
	add  d                                           ; $6343: $82
	nop                                              ; $6344: $00
	add  b                                           ; $6345: $80
	adc  h                                           ; $6346: $8c
	nop                                              ; $6347: $00
	db   $fc                                         ; $6348: $fc
	add  b                                           ; $6349: $80
	nop                                              ; $634a: $00
	ld   [bc], a                                     ; $634b: $02
	inc  b                                           ; $634c: $04
	ld   hl, sp+$00                                  ; $634d: $f8 $00
	add  b                                           ; $634f: $80
	ld   d, b                                        ; $6350: $50
	add  b                                           ; $6351: $80
	and  c                                           ; $6352: $a1
	add  d                                           ; $6353: $82
	nop                                              ; $6354: $00
	rlca                                             ; $6355: $07
	rla                                              ; $6356: $17
	rlca                                             ; $6357: $07
	ld   h, a                                        ; $6358: $67
	ld   b, a                                        ; $6359: $47
	cpl                                              ; $635a: $2f
	db   $10                                         ; $635b: $10
	inc  c                                           ; $635c: $0c
	inc  bc                                          ; $635d: $03
	add  b                                           ; $635e: $80
	ld   bc, $0084                                   ; $635f: $01 $84 $00
	add  b                                           ; $6362: $80
	jr   jr_099_6365                                 ; $6363: $18 $00

jr_099_6365:
	rra                                              ; $6365: $1f
	add  b                                           ; $6366: $80
	nop                                              ; $6367: $00
	ld   [bc], a                                     ; $6368: $02
	db   $10                                         ; $6369: $10
	rrca                                             ; $636a: $0f
	nop                                              ; $636b: $00
	add  b                                           ; $636c: $80
	adc  d                                           ; $636d: $8a
	ld   [bc], a                                     ; $636e: $02
	add  l                                           ; $636f: $85
	dec  b                                           ; $6370: $05
	add  b                                           ; $6371: $80
	add  c                                           ; $6372: $81
	nop                                              ; $6373: $00
	ld   a, [bc]                                     ; $6374: $0a
	adc  [hl]                                        ; $6375: $8e
	ld   d, a                                        ; $6376: $57
	ld   e, $6b                                      ; $6377: $1e $6b
	ld   l, a                                        ; $6379: $6f
	dec  h                                           ; $637a: $25
	rlca                                             ; $637b: $07
	sub  d                                           ; $637c: $92
	add  d                                           ; $637d: $82
	ret  z                                           ; $637e: $c8

	pop  bc                                          ; $637f: $c1
	add  b                                           ; $6380: $80
	db   $ed                                         ; $6381: $ed
	dec  b                                           ; $6382: $05
	and  $62                                         ; $6383: $e6 $62
	ld   h, [hl]                                     ; $6385: $66
	and  $8b                                         ; $6386: $e6 $8b
	adc  c                                           ; $6388: $89
	add  b                                           ; $6389: $80
	dec  hl                                          ; $638a: $2b
	ld   [bc], a                                     ; $638b: $02
	ld   l, l                                        ; $638c: $6d
	db   $ec                                         ; $638d: $ec
	ld   c, l                                        ; $638e: $4d
	add  b                                           ; $638f: $80
	call Call_099_4900                               ; $6390: $cd $00 $49
	add  b                                           ; $6393: $80
	ld   c, h                                        ; $6394: $4c
	inc  bc                                          ; $6395: $03
	inc  c                                           ; $6396: $0c
	add  b                                           ; $6397: $80
	adc  b                                           ; $6398: $88
	rst  $38                                         ; $6399: $ff
	add  d                                           ; $639a: $82
	nop                                              ; $639b: $00
	nop                                              ; $639c: $00
	add  b                                           ; $639d: $80
	add  b                                           ; $639e: $80
	nop                                              ; $639f: $00
	add  b                                           ; $63a0: $80
	ld   [$1806], sp                                 ; $63a1: $08 $06 $18
	db   $10                                         ; $63a4: $10
	ld   [$3c00], sp                                 ; $63a5: $08 $00 $3c
	jr   @+$26                                       ; $63a8: $18 $24

	adc  l                                           ; $63aa: $8d
	nop                                              ; $63ab: $00
	nop                                              ; $63ac: $00
	add  b                                           ; $63ad: $80
	add  d                                           ; $63ae: $82
	nop                                              ; $63af: $00
	nop                                              ; $63b0: $00
	add  b                                           ; $63b1: $80
	add  b                                           ; $63b2: $80
	nop                                              ; $63b3: $00
	add  b                                           ; $63b4: $80
	ld   [$1805], sp                                 ; $63b5: $08 $05 $18
	db   $10                                         ; $63b8: $10
	ld   [$7e00], sp                                 ; $63b9: $08 $00 $7e
	ld   e, d                                        ; $63bc: $5a
	add  b                                           ; $63bd: $80
	ld   b, d                                        ; $63be: $42
	ld   [bc], a                                     ; $63bf: $02
	jr   jr_099_63e6                                 ; $63c0: $18 $24

	jr   @+$01                                       ; $63c2: $18 $ff

	nop                                              ; $63c4: $00
	rst  $38                                         ; $63c5: $ff
	nop                                              ; $63c6: $00
	rst  $38                                         ; $63c7: $ff
	nop                                              ; $63c8: $00
	rst  $38                                         ; $63c9: $ff
	nop                                              ; $63ca: $00
	rst  $38                                         ; $63cb: $ff
	nop                                              ; $63cc: $00
	call nz, $0500                                   ; $63cd: $c4 $00 $05
	ld   bc, $0706                                   ; $63d0: $01 $06 $07
	nop                                              ; $63d3: $00
	ccf                                              ; $63d4: $3f
	rlca                                             ; $63d5: $07
	ld   a, h                                        ; $63d6: $7c
	ccf                                              ; $63d7: $3f
	add  e                                           ; $63d8: $83
	add  b                                           ; $63d9: $80
	ld   e, a                                        ; $63da: $5f
	ld   bc, $ef6f                                   ; $63db: $01 $6f $ef
	add  b                                           ; $63de: $80
	cpl                                              ; $63df: $2f
	add  hl, de                                      ; $63e0: $19
	inc  [hl]                                        ; $63e1: $34
	ld   [hl], a                                     ; $63e2: $77
	inc  de                                          ; $63e3: $13
	inc  a                                           ; $63e4: $3c
	rrca                                             ; $63e5: $0f

jr_099_63e6:
	dec  sp                                          ; $63e6: $3b
	rra                                              ; $63e7: $1f
	ld   [hl], a                                     ; $63e8: $77
	ld   a, $ee                                      ; $63e9: $3e $ee
	ld   a, l                                        ; $63eb: $7d
	ld   e, h                                        ; $63ec: $5c
	ld   a, a                                        ; $63ed: $7f
	jr   c, @+$81                                    ; $63ee: $38 $7f

	ld   [hl], l                                     ; $63f0: $75
	ld   a, a                                        ; $63f1: $7f
	db   $eb                                         ; $63f2: $eb
	ld   a, $16                                      ; $63f3: $3e $16
	ld   a, $4e                                      ; $63f5: $3e $4e
	dec  e                                           ; $63f7: $1d
	dec  a                                           ; $63f8: $3d
	inc  c                                           ; $63f9: $0c
	rrca                                             ; $63fa: $0f
	add  c                                           ; $63fb: $81
	ld   [$1c02], sp                                 ; $63fc: $08 $02 $1c
	nop                                              ; $63ff: $00
	ld   [$0087], sp                                 ; $6400: $08 $87 $00
	ld   a, [bc]                                     ; $6403: $0a
	ld   bc, $0300                                   ; $6404: $01 $00 $03
	nop                                              ; $6407: $00
	ld   c, $00                                      ; $6408: $0e $00
	inc  de                                          ; $640a: $13
	nop                                              ; $640b: $00
	dec  bc                                          ; $640c: $0b
	nop                                              ; $640d: $00
	dec  d                                           ; $640e: $15
	add  c                                           ; $640f: $81
	nop                                              ; $6410: $00
	nop                                              ; $6411: $00
	ld   [bc], a                                     ; $6412: $02
	add  c                                           ; $6413: $81
	ld   bc, $0404                                   ; $6414: $01 $04 $04
	inc  bc                                          ; $6417: $03
	ld   [bc], a                                     ; $6418: $02
	inc  bc                                          ; $6419: $03
	dec  bc                                          ; $641a: $0b
	add  c                                           ; $641b: $81
	rlca                                             ; $641c: $07
	rlca                                             ; $641d: $07
	ld   b, $07                                      ; $641e: $06 $07
	inc  d                                           ; $6420: $14
	rrca                                             ; $6421: $0f
	dec  c                                           ; $6422: $0d
	rrca                                             ; $6423: $0f
	rst  $28                                         ; $6424: $ef
	rrca                                             ; $6425: $0f
	add  b                                           ; $6426: $80
	rst  $28                                         ; $6427: $ef
	ld   [bc], a                                     ; $6428: $02
	adc  h                                           ; $6429: $8c
	rst  $28                                         ; $642a: $ef
	ld   l, h                                        ; $642b: $6c
	add  b                                           ; $642c: $80
	rst  $28                                         ; $642d: $ef
	add  b                                           ; $642e: $80
	rst  $30                                         ; $642f: $f7
	add  b                                           ; $6430: $80
	rst  ToBoot                                         ; $6431: $c7
	inc  bc                                          ; $6432: $03
	rla                                              ; $6433: $17
	rst  $10                                         ; $6434: $d7
	db   $e4                                         ; $6435: $e4
	inc  h                                           ; $6436: $24
	add  b                                           ; $6437: $80
	ret  nc                                          ; $6438: $d0

	add  b                                           ; $6439: $80
	xor  l                                           ; $643a: $ad
	dec  b                                           ; $643b: $05
	ld   e, d                                        ; $643c: $5a
	ld   e, e                                        ; $643d: $5b
	or   h                                           ; $643e: $b4
	or   [hl]                                        ; $643f: $b6
	add  sp, -$14                                    ; $6440: $e8 $ec
	add  b                                           ; $6442: $80
	ret  nc                                          ; $6443: $d0

	ld   bc, $b8b0                                   ; $6444: $01 $b0 $b8
	add  b                                           ; $6447: $80
	ld   h, b                                        ; $6448: $60
	add  c                                           ; $6449: $81
	ldh  [rP1], a                                    ; $644a: $e0 $00
	add  sp, -$7f                                    ; $644c: $e8 $81
	ldh  a, [rSC]                                    ; $644e: $f0 $02
	db   $f4                                         ; $6450: $f4
	ld   [hl], b                                     ; $6451: $70
	adc  h                                           ; $6452: $8c
	add  e                                           ; $6453: $83
	nop                                              ; $6454: $00
	inc  b                                           ; $6455: $04
	ldh  [rP1], a                                    ; $6456: $e0 $00
	inc  e                                           ; $6458: $1c
	ldh  [$e3], a                                    ; $6459: $e0 $e3
	add  b                                           ; $645b: $80
	db   $fc                                         ; $645c: $fc
	add  c                                           ; $645d: $81
	rst  $38                                         ; $645e: $ff
	ld   a, [bc]                                     ; $645f: $0a
	ccf                                              ; $6460: $3f
	rst  $38                                         ; $6461: $ff
	ld   c, a                                        ; $6462: $4f
	rst  $38                                         ; $6463: $ff
	sub  a                                           ; $6464: $97
	db   $fc                                         ; $6465: $fc
	add  h                                           ; $6466: $84
	rst  $38                                         ; $6467: $ff
	rra                                              ; $6468: $1f
	rst  $38                                         ; $6469: $ff
	ld   a, a                                        ; $646a: $7f
	add  b                                           ; $646b: $80
	ldh  a, [rSB]                                    ; $646c: $f0 $01
	adc  $cf                                         ; $646e: $ce $cf
	add  b                                           ; $6470: $80
	cp   c                                           ; $6471: $b9
	rlca                                             ; $6472: $07
	add  h                                           ; $6473: $84
	ld   b, $f8                                      ; $6474: $06 $f8
	sbc  b                                           ; $6476: $98
	ld   hl, sp+$18                                  ; $6477: $f8 $18
	ld   hl, sp-$04                                  ; $6479: $f8 $fc
	add  b                                           ; $647b: $80
	ldh  a, [rTIMA]                                  ; $647c: $f0 $05
	nop                                              ; $647e: $00
	ld   [$1000], sp                                 ; $647f: $08 $00 $10
	nop                                              ; $6482: $00
	ldh  [$99], a                                    ; $6483: $e0 $99
	nop                                              ; $6485: $00
	ld   b, $c0                                      ; $6486: $06 $c0
	nop                                              ; $6488: $00
	jr   nz, @-$3e                                   ; $6489: $20 $c0

	ret  nc                                          ; $648b: $d0

	ldh  [$e8], a                                    ; $648c: $e0 $e8
	add  b                                           ; $648e: $80
	ret  nc                                          ; $648f: $d0

	ld   bc, $e4e0                                   ; $6490: $01 $e0 $e4
	add  b                                           ; $6493: $80
	jr   nc, @+$09                                   ; $6494: $30 $07

	ret  z                                           ; $6496: $c8

	jp   z, $f1f0                                    ; $6497: $ca $f0 $f1

	ld   a, [hl-]                                    ; $649a: $3a
	ld   a, [$f9c6]                                  ; $649b: $fa $c6 $f9
	adc  e                                           ; $649e: $8b
	nop                                              ; $649f: $00
	ld   [de], a                                     ; $64a0: $12
	ld   bc, $0200                                   ; $64a1: $01 $00 $02
	ld   bc, $0304                                   ; $64a4: $01 $04 $03
	add  hl, bc                                      ; $64a7: $09
	rlca                                             ; $64a8: $07
	db   $10                                         ; $64a9: $10
	rrca                                             ; $64aa: $0f
	dec  bc                                          ; $64ab: $0b
	ld   c, $ee                                      ; $64ac: $0e $ee

jr_099_64ae:
	add  hl, de                                      ; $64ae: $19
	ld   e, c                                        ; $64af: $59
	rst  $10                                         ; $64b0: $d7
	rla                                              ; $64b1: $17
	ret  nz                                          ; $64b2: $c0

	cp   a                                           ; $64b3: $bf
	add  e                                           ; $64b4: $83
	nop                                              ; $64b5: $00
	ld   a, [de]                                     ; $64b6: $1a
	inc  bc                                          ; $64b7: $03
	nop                                              ; $64b8: $00
	inc  c                                           ; $64b9: $0c
	inc  bc                                          ; $64ba: $03
	inc  sp                                          ; $64bb: $33
	rrca                                             ; $64bc: $0f
	ret  nz                                          ; $64bd: $c0

	ccf                                              ; $64be: $3f
	ld   [$27ff], sp                                 ; $64bf: $08 $ff $27
	rst  $38                                         ; $64c2: $ff
	sbc  a                                           ; $64c3: $9f
	rst  $38                                         ; $64c4: $ff
	ld   a, a                                        ; $64c5: $7f
	rst  $38                                         ; $64c6: $ff
	ldh  [rIE], a                                    ; $64c7: $e0 $ff
	db   $e3                                         ; $64c9: $e3
	ccf                                              ; $64ca: $3f
	ld   a, [hl-]                                    ; $64cb: $3a
	rst  JumpTable                                         ; $64cc: $df
	pop  de                                          ; $64cd: $d1
	sbc  a                                           ; $64ce: $9f
	sub  a                                           ; $64cf: $97
	ccf                                              ; $64d0: $3f
	rst  $38                                         ; $64d1: $ff
	add  b                                           ; $64d2: $80
	rlca                                             ; $64d3: $07
	add  b                                           ; $64d4: $80
	add  hl, de                                      ; $64d5: $19
	dec  bc                                          ; $64d6: $0b
	rra                                              ; $64d7: $1f
	add  hl, sp                                      ; $64d8: $39
	rrca                                             ; $64d9: $0f
	ld   a, [bc]                                     ; $64da: $0a
	rrca                                             ; $64db: $0f
	inc  c                                           ; $64dc: $0c
	rrca                                             ; $64dd: $0f
	rra                                              ; $64de: $1f
	rlca                                             ; $64df: $07
	rrca                                             ; $64e0: $0f
	ld   bc, $9506                                   ; $64e1: $01 $06 $95
	nop                                              ; $64e4: $00
	ld   [bc], a                                     ; $64e5: $02

jr_099_64e6:
	add  b                                           ; $64e6: $80
	nop                                              ; $64e7: $00
	ld   b, b                                        ; $64e8: $40
	add  c                                           ; $64e9: $81
	add  b                                           ; $64ea: $80
	inc  b                                           ; $64eb: $04
	jr   nz, jr_099_64ae                             ; $64ec: $20 $c0

	ld   b, b                                        ; $64ee: $40
	ret  nz                                          ; $64ef: $c0

	ret  nc                                          ; $64f0: $d0

	add  e                                           ; $64f1: $83
	ldh  [rSC], a                                    ; $64f2: $e0 $02
	ld   l, b                                        ; $64f4: $68
	ldh  a, [rSVBK]                                  ; $64f5: $f0 $70
	add  c                                           ; $64f7: $81
	ldh  a, [rP1]                                    ; $64f8: $f0 $00
	rst  $30                                         ; $64fa: $f7
	add  b                                           ; $64fb: $80
	ld   hl, sp+$00                                  ; $64fc: $f8 $00
	ei                                               ; $64fe: $fb
	add  b                                           ; $64ff: $80
	ld   a, [$fb81]                                  ; $6500: $fa $81 $fb
	add  b                                           ; $6503: $80
	pop  af                                          ; $6504: $f1
	dec  b                                           ; $6505: $05
	or   $76                                         ; $6506: $f6 $76
	ld   [hl], a                                     ; $6508: $77

jr_099_6509:
	or   h                                           ; $6509: $b4
	xor  h                                           ; $650a: $ac
	rst  $28                                         ; $650b: $ef
	add  b                                           ; $650c: $80
	rst  ToBoot                                         ; $650d: $c7
	add  b                                           ; $650e: $80
	add  hl, hl                                      ; $650f: $29
	dec  c                                           ; $6510: $0d
	halt                                             ; $6511: $76
	or   $3b                                         ; $6512: $f6 $3b
	ld   a, e                                        ; $6514: $7b
	sbc  l                                           ; $6515: $9d
	cp   l                                           ; $6516: $bd
	adc  $cc                                         ; $6517: $ce $cc
	call $66de                                       ; $6519: $cd $de $66
	ld   h, a                                        ; $651c: $67
	rst  $20                                         ; $651d: $e7
	add  sp, -$75                                    ; $651e: $e8 $8b
	nop                                              ; $6520: $00
	ld   a, [bc]                                     ; $6521: $0a
	ret  nz                                          ; $6522: $c0

	nop                                              ; $6523: $00
	jr   c, jr_099_64e6                              ; $6524: $38 $c0

	ld   b, $f8                                      ; $6526: $06 $f8
	ld   c, c                                        ; $6528: $49
	cp   $92                                         ; $6529: $fe $92
	db   $fc                                         ; $652b: $fc
	ldh  [$80], a                                    ; $652c: $e0 $80
	ld   a, d                                        ; $652e: $7a
	dec  bc                                          ; $652f: $0b
	sub  [hl]                                        ; $6530: $96
	rla                                              ; $6531: $17
	db   $e4                                         ; $6532: $e4
	sub  h                                           ; $6533: $94
	ld   hl, sp+$34                                  ; $6534: $f8 $34
	db   $fc                                         ; $6536: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6537: $cf
	cp   $f2                                         ; $6538: $fe $f2
	ld   a, [hl]                                     ; $653a: $7e
	ld   a, h                                        ; $653b: $7c
	add  c                                           ; $653c: $81
	ld   a, [hl]                                     ; $653d: $7e
	nop                                              ; $653e: $00
	ld   a, a                                        ; $653f: $7f
	add  c                                           ; $6540: $81
	db   $fc                                         ; $6541: $fc
	inc  c                                           ; $6542: $0c
	ld   a, [hl]                                     ; $6543: $7e
	ld   hl, sp-$44                                  ; $6544: $f8 $bc
	ldh  a, [$50]                                    ; $6546: $f0 $50
	ldh  a, [$b8]                                    ; $6548: $f0 $b8
	ldh  [$c0], a                                    ; $654a: $e0 $c0
	ld   h, b                                        ; $654c: $60
	ld   [hl], b                                     ; $654d: $70
	nop                                              ; $654e: $00
	ldh  [$83], a                                    ; $654f: $e0 $83
	nop                                              ; $6551: $00
	ld   [bc], a                                     ; $6552: $02
	rrca                                             ; $6553: $0f
	di                                               ; $6554: $f3
	db   $e3                                         ; $6555: $e3
	add  b                                           ; $6556: $80
	db   $ed                                         ; $6557: $ed
	inc  bc                                          ; $6558: $03
	xor  $ce                                         ; $6559: $ee $ce
	rst  JumpTable                                         ; $655b: $df
	ld   e, a                                        ; $655c: $5f
	add  b                                           ; $655d: $80
	ld   b, a                                        ; $655e: $47
	ld   b, $42                                      ; $655f: $06 $42
	or   a                                           ; $6561: $b7
	or   b                                           ; $6562: $b0
	or   d                                           ; $6563: $b2
	or   b                                           ; $6564: $b0
	cp   h                                           ; $6565: $bc
	cp   b                                           ; $6566: $b8
	add  b                                           ; $6567: $80
	ret  c                                           ; $6568: $d8

	inc  bc                                          ; $6569: $03
	ld   e, [hl]                                     ; $656a: $5e
	ld   e, h                                        ; $656b: $5c
	ld   e, a                                        ; $656c: $5f
	ld   e, [hl]                                     ; $656d: $5e
	add  b                                           ; $656e: $80
	sbc  a                                           ; $656f: $9f
	add  b                                           ; $6570: $80
	xor  e                                           ; $6571: $ab
	add  b                                           ; $6572: $80
	call nc, Call_099_5a80                           ; $6573: $d4 $80 $5a
	nop                                              ; $6576: $00
	rst  $38                                         ; $6577: $ff
	add  e                                           ; $6578: $83
	nop                                              ; $6579: $00
	dec  b                                           ; $657a: $05
	add  b                                           ; $657b: $80
	nop                                              ; $657c: $00
	ret  nz                                          ; $657d: $c0

	add  b                                           ; $657e: $80
	ldh  [$c0], a                                    ; $657f: $e0 $c0
	add  b                                           ; $6581: $80
	ld   b, b                                        ; $6582: $40
	ld   bc, $6070                                   ; $6583: $01 $70 $60
	add  b                                           ; $6586: $80
	jr   nz, jr_099_6509                             ; $6587: $20 $80

	and  b                                           ; $6589: $a0
	ld   [bc], a                                     ; $658a: $02
	jr   nz, @-$5e                                   ; $658b: $20 $a0

	ret  nc                                          ; $658d: $d0

	add  c                                           ; $658e: $81
	ret  nz                                          ; $658f: $c0

	ld   b, $a0                                      ; $6590: $06 $a0
	add  b                                           ; $6592: $80
	nop                                              ; $6593: $00
	add  b                                           ; $6594: $80
	ld   b, b                                        ; $6595: $40
	nop                                              ; $6596: $00
	add  b                                           ; $6597: $80
	adc  a                                           ; $6598: $8f
	nop                                              ; $6599: $00
	nop                                              ; $659a: $00
	ld   bc, $0081                                   ; $659b: $01 $81 $00
	nop                                              ; $659e: $00
	inc  bc                                          ; $659f: $03
	add  c                                           ; $65a0: $81
	ld   bc, $0702                                   ; $65a1: $01 $02 $07
	inc  bc                                          ; $65a4: $03
	rrca                                             ; $65a5: $0f
	add  c                                           ; $65a6: $81
	rlca                                             ; $65a7: $07
	nop                                              ; $65a8: $00
	rra                                              ; $65a9: $1f
	add  c                                           ; $65aa: $81
	rrca                                             ; $65ab: $0f
	nop                                              ; $65ac: $00
	ccf                                              ; $65ad: $3f
	add  c                                           ; $65ae: $81
	rra                                              ; $65af: $1f
	nop                                              ; $65b0: $00
	ld   a, a                                        ; $65b1: $7f
	add  l                                           ; $65b2: $85
	ccf                                              ; $65b3: $3f
	nop                                              ; $65b4: $00
	cp   $85                                         ; $65b5: $fe $85
	ld   a, a                                        ; $65b7: $7f
	inc  de                                          ; $65b8: $13
	ld   a, l                                        ; $65b9: $7d
	ld   a, a                                        ; $65ba: $7f
	or   e                                           ; $65bb: $b3
	ccf                                              ; $65bc: $3f
	ld   c, a                                        ; $65bd: $4f
	nop                                              ; $65be: $00
	ccf                                              ; $65bf: $3f
	nop                                              ; $65c0: $00
	inc  bc                                          ; $65c1: $03
	nop                                              ; $65c2: $00
	ld   [hl], $02                                   ; $65c3: $36 $02
	ld   c, [hl]                                     ; $65c5: $4e
	inc  [hl]                                        ; $65c6: $34
	ld   [hl], h                                     ; $65c7: $74
	nop                                              ; $65c8: $00
	halt                                             ; $65c9: $76
	jr   nc, jr_099_6606                             ; $65ca: $30 $3a

	ld   a, $80                                      ; $65cc: $3e $80
	dec  e                                           ; $65ce: $1d
	ld   [bc], a                                     ; $65cf: $02
	db   $e4                                         ; $65d0: $e4
	ld   h, [hl]                                     ; $65d1: $66
	ld   sp, hl                                      ; $65d2: $f9
	adc  l                                           ; $65d3: $8d
	nop                                              ; $65d4: $00
	ld   c, $03                                      ; $65d5: $0e $03
	rst  $38                                         ; $65d7: $ff
	ei                                               ; $65d8: $fb
	cp   $f6                                         ; $65d9: $fe $f6
	cp   $ff                                         ; $65db: $fe $ff
	db   $fd                                         ; $65dd: $fd
	db   $ec                                         ; $65de: $ec
	ld   sp, hl                                      ; $65df: $f9
	reti                                             ; $65e0: $d9


	push af                                          ; $65e1: $f5
	or   l                                           ; $65e2: $b5
	db   $ed                                         ; $65e3: $ed
	ld   l, l                                        ; $65e4: $6d
	add  b                                           ; $65e5: $80
	db   $fd                                         ; $65e6: $fd
	add  b                                           ; $65e7: $80
	ld   sp, hl                                      ; $65e8: $f9
	inc  bc                                          ; $65e9: $03
	ld   a, [$f5fb]                                  ; $65ea: $fa $fb $f5
	db   $f4                                         ; $65ed: $f4
	add  b                                           ; $65ee: $80
	rst  $28                                         ; $65ef: $ef
	dec  de                                          ; $65f0: $1b
	cp   $ff                                         ; $65f1: $fe $ff
	ldh  [$fe], a                                    ; $65f3: $e0 $fe
	nop                                              ; $65f5: $00
	ldh  [rP1], a                                    ; $65f6: $e0 $00
	add  hl, sp                                      ; $65f8: $39
	db   $10                                         ; $65f9: $10
	ld   e, c                                        ; $65fa: $59
	jr   nz, jr_099_662d                             ; $65fb: $20 $30

	nop                                              ; $65fd: $00
	db   $e3                                         ; $65fe: $e3
	nop                                              ; $65ff: $00
	add  d                                           ; $6600: $82
	nop                                              ; $6601: $00
	sbc  d                                           ; $6602: $9a
	nop                                              ; $6603: $00
	or   $00                                         ; $6604: $f6 $00

jr_099_6606:
	ld   h, [hl]                                     ; $6606: $66
	ld   bc, $001b                                   ; $6607: $01 $1b $00
	and  c                                           ; $660a: $a1
	nop                                              ; $660b: $00
	ld   b, b                                        ; $660c: $40
	add  b                                           ; $660d: $80
	add  b                                           ; $660e: $80
	inc  c                                           ; $660f: $0c
	ldh  [$f0], a                                    ; $6610: $e0 $f0
	ret  nz                                          ; $6612: $c0

	ldh  [$80], a                                    ; $6613: $e0 $80
	adc  a                                           ; $6615: $8f
	add  b                                           ; $6616: $80
	sbc  $0e                                         ; $6617: $de $0e
	ld   a, [hl]                                     ; $6619: $7e
	ld   e, $cd                                      ; $661a: $1e $cd
	call z, $f480                                    ; $661c: $cc $80 $f4
	inc  b                                           ; $661f: $04
	sbc  h                                           ; $6620: $9c
	db   $fc                                         ; $6621: $fc
	and  e                                           ; $6622: $a3
	cp   $7c                                         ; $6623: $fe $7c
	add  l                                           ; $6625: $85
	ld   a, a                                        ; $6626: $7f
	ld   [bc], a                                     ; $6627: $02
	cp   a                                           ; $6628: $bf
	rst  $38                                         ; $6629: $ff
	ld   a, a                                        ; $662a: $7f
	add  b                                           ; $662b: $80
	rst  $38                                         ; $662c: $ff

jr_099_662d:
	inc  bc                                          ; $662d: $03
	ldh  a, [rIE]                                    ; $662e: $f0 $ff
	nop                                              ; $6630: $00
	ldh  a, [$83]                                    ; $6631: $f0 $83
	nop                                              ; $6633: $00
	jr   jr_099_667d                                 ; $6634: $18 $47

	cp   b                                           ; $6636: $b8
	inc  b                                           ; $6637: $04
	ld   c, $2a                                      ; $6638: $0e $2a
	ld   h, c                                        ; $663a: $61
	ld   c, c                                        ; $663b: $49
	dec  e                                           ; $663c: $1d
	ld   [hl], h                                     ; $663d: $74
	ld   bc, $0d8d                                   ; $663e: $01 $8d $0d
	ld   d, $06                                      ; $6641: $16 $06
	adc  e                                           ; $6643: $8b
	inc  bc                                          ; $6644: $03
	ld   b, h                                        ; $6645: $44
	add  b                                           ; $6646: $80
	sbc  a                                           ; $6647: $9f
	inc  bc                                          ; $6648: $03
	rst  $20                                         ; $6649: $e7
	rla                                              ; $664a: $17
	ld   e, a                                        ; $664b: $5f
	ld   l, $be                                      ; $664c: $2e $be
	add  b                                           ; $664e: $80
	ld   e, [hl]                                     ; $664f: $5e
	ld   bc, $7d5d                                   ; $6650: $01 $5d $7d
	add  c                                           ; $6653: $81
	cp   l                                           ; $6654: $bd
	ld   b, $82                                      ; $6655: $06 $82
	adc  c                                           ; $6657: $89
	ld   sp, hl                                      ; $6658: $f9
	ld   [bc], a                                     ; $6659: $02
	adc  [hl]                                        ; $665a: $8e
	nop                                              ; $665b: $00
	inc  bc                                          ; $665c: $03
	add  c                                           ; $665d: $81
	nop                                              ; $665e: $00
	ld   c, $80                                      ; $665f: $0e $80
	nop                                              ; $6661: $00
	ld   b, b                                        ; $6662: $40
	add  b                                           ; $6663: $80
	and  b                                           ; $6664: $a0
	ret  nz                                          ; $6665: $c0

	ret  nc                                          ; $6666: $d0

	ldh  [$e8], a                                    ; $6667: $e0 $e8
	ldh  [$ec], a                                    ; $6669: $e0 $ec
	add  sp, -$16                                    ; $666b: $e8 $ea
	add  sp, -$0f                                    ; $666d: $e8 $f1
	add  h                                           ; $666f: $84
	sub  $01                                         ; $6670: $d6 $01
	call nc, $8b3b                                   ; $6672: $d4 $3b $8b
	nop                                              ; $6675: $00
	dec  b                                           ; $6676: $05
	ret  nz                                          ; $6677: $c0

	nop                                              ; $6678: $00
	ld   h, b                                        ; $6679: $60
	ld   b, b                                        ; $667a: $40
	or   b                                           ; $667b: $b0
	and  b                                           ; $667c: $a0

jr_099_667d:
	add  b                                           ; $667d: $80
	ret  nz                                          ; $667e: $c0

	add  b                                           ; $667f: $80
	ld   h, b                                        ; $6680: $60
	rlca                                             ; $6681: $07
	ld   [$9490], sp                                 ; $6682: $08 $90 $94
	ld   a, b                                        ; $6685: $78
	ld   a, d                                        ; $6686: $7a
	db   $fc                                         ; $6687: $fc
	db   $fd                                         ; $6688: $fd
	cp   $81                                         ; $6689: $fe $81
	ld   bc, $0380                                   ; $668b: $01 $80 $03
	add  b                                           ; $668e: $80
	nop                                              ; $668f: $00
	add  b                                           ; $6690: $80
	inc  bc                                          ; $6691: $03
	add  b                                           ; $6692: $80
	rst  ToBoot                                         ; $6693: $c7
	ld   c, $8f                                      ; $6694: $0e $8f
	adc  h                                           ; $6696: $8c
	sbc  a                                           ; $6697: $9f
	sbc  h                                           ; $6698: $9c
	ld   a, h                                        ; $6699: $7c
	add  b                                           ; $669a: $80
	cp   $66                                         ; $669b: $fe $66
	ld   h, h                                        ; $669d: $64
	nop                                              ; $669e: $00
	sub  d                                           ; $669f: $92
	and  d                                           ; $66a0: $a2
	ldh  a, [hScriptOpcodeParams]                                    ; $66a1: $f0 $a0
	ld   h, b                                        ; $66a3: $60
	add  b                                           ; $66a4: $80
	ret  nz                                          ; $66a5: $c0

	adc  [hl]                                        ; $66a6: $8e
	nop                                              ; $66a7: $00
	nop                                              ; $66a8: $00
	ld   bc, $0081                                   ; $66a9: $01 $81 $00
	nop                                              ; $66ac: $00
	inc  bc                                          ; $66ad: $03
	add  c                                           ; $66ae: $81
	ld   bc, $070c                                   ; $66af: $01 $0c $07
	inc  bc                                          ; $66b2: $03
	ld   c, $06                                      ; $66b3: $0e $06
	dec  a                                           ; $66b5: $3d
	inc  c                                           ; $66b6: $0c
	ld   [hl], e                                     ; $66b7: $73
	ld   sp, $2023                                   ; $66b8: $31 $23 $20
	add  e                                           ; $66bb: $83
	ld   [$81f4], sp                                 ; $66bc: $08 $f4 $81
	nop                                              ; $66bf: $00
	add  b                                           ; $66c0: $80
	ld   [bc], a                                     ; $66c1: $02
	add  b                                           ; $66c2: $80
	ld   b, $9b                                      ; $66c3: $06 $9b
	nop                                              ; $66c5: $00
	add  b                                           ; $66c6: $80
	db   $10                                         ; $66c7: $10
	add  b                                           ; $66c8: $80
	ld   hl, $4180                                   ; $66c9: $21 $80 $41
	add  b                                           ; $66cc: $80
	ld   b, d                                        ; $66cd: $42
	add  d                                           ; $66ce: $82
	add  d                                           ; $66cf: $82
	db   $ed                                         ; $66d0: $ed
	nop                                              ; $66d1: $00

jr_099_66d2:
	ld   [bc], a                                     ; $66d2: $02
	ld   [bc], a                                     ; $66d3: $02
	nop                                              ; $66d4: $00
	ld   b, $81                                      ; $66d5: $06 $81
	nop                                              ; $66d7: $00
	ld   a, [hl+]                                    ; $66d8: $2a
	ld   bc, $0f00                                   ; $66d9: $01 $00 $0f
	nop                                              ; $66dc: $00
	or   $01                                         ; $66dd: $f6 $01
	dec  c                                           ; $66df: $0d
	inc  bc                                          ; $66e0: $03

jr_099_66e1:
	inc  de                                          ; $66e1: $13
	ld   c, $e9                                      ; $66e2: $0e $e9
	ret  nz                                          ; $66e4: $c0

	add  $f8                                         ; $66e5: $c6 $f8
	ei                                               ; $66e7: $fb
	cp   $fd                                         ; $66e8: $fe $fd
	rst  $38                                         ; $66ea: $ff
	ldh  a, [c]                                      ; $66eb: $f2
	di                                               ; $66ec: $f3
	ldh  [$e5], a                                    ; $66ed: $e0 $e5
	rst  $20                                         ; $66ef: $e7
	xor  d                                           ; $66f0: $aa
	xor  c                                           ; $66f1: $a9
	ld   h, l                                        ; $66f2: $65
	adc  e                                           ; $66f3: $8b
	add  b                                           ; $66f4: $80
	or   b                                           ; $66f5: $b0
	rrca                                             ; $66f6: $0f
	ld   c, a                                        ; $66f7: $4f
	ccf                                              ; $66f8: $3f
	ld   a, $fe                                      ; $66f9: $3e $fe
	adc  a                                           ; $66fb: $8f
	adc  $c6                                         ; $66fc: $ce $c6
	and  a                                           ; $66fe: $a7
	rst  $20                                         ; $66ff: $e7
	ld   d, a                                        ; $6700: $57
	rla                                              ; $6701: $17
	inc  h                                           ; $6702: $24
	db   $fc                                         ; $6703: $fc
	add  b                                           ; $6704: $80
	ld   b, b                                        ; $6705: $40
	add  c                                           ; $6706: $81
	ret  nz                                          ; $6707: $c0

	ld   bc, $e0f0                                   ; $6708: $01 $f0 $e0
	add  b                                           ; $670b: $80
	jr   nz, jr_099_671c                             ; $670c: $20 $0e

	ret  nz                                          ; $670e: $c0

	nop                                              ; $670f: $00
	jr   c, jr_099_66d2                              ; $6710: $38 $c0

	adc  $e0                                         ; $6712: $ce $e0
	and  $00                                         ; $6714: $e6 $00
	ld   bc, $0300                                   ; $6716: $01 $00 $03
	nop                                              ; $6719: $00
	ld   b, $00                                      ; $671a: $06 $00

jr_099_671c:
	inc  c                                           ; $671c: $0c
	add  b                                           ; $671d: $80
	inc  bc                                          ; $671e: $03
	ld   bc, $1e06                                   ; $671f: $01 $06 $1e
	add  b                                           ; $6722: $80
	inc  b                                           ; $6723: $04
	inc  bc                                          ; $6724: $03
	dec  c                                           ; $6725: $0d
	sbc  l                                           ; $6726: $9d
	jr   c, jr_099_66e1                              ; $6727: $38 $b8

	add  b                                           ; $6729: $80
	ld   h, e                                        ; $672a: $63
	inc  bc                                          ; $672b: $03
	rlca                                             ; $672c: $07
	ld   b, $1e                                      ; $672d: $06 $1e
	dec  e                                           ; $672f: $1d
	add  b                                           ; $6730: $80
	dec  a                                           ; $6731: $3d
	ld   a, [bc]                                     ; $6732: $0a
	ld   a, l                                        ; $6733: $7d
	ld   a, e                                        ; $6734: $7b
	ld   sp, hl                                      ; $6735: $f9
	push af                                          ; $6736: $f5
	di                                               ; $6737: $f3
	xor  $ea                                         ; $6738: $ee $ea
	and  b                                           ; $673a: $a0
	xor  a                                           ; $673b: $af
	ld   l, a                                        ; $673c: $6f
	ld   h, a                                        ; $673d: $67
	add  b                                           ; $673e: $80
	and  $82                                         ; $673f: $e6 $82
	sub  $00                                         ; $6741: $d6 $00
	and  h                                           ; $6743: $a4
	add  c                                           ; $6744: $81
	xor  h                                           ; $6745: $ac
	rlca                                             ; $6746: $07
	ld   e, b                                        ; $6747: $58
	ld   d, h                                        ; $6748: $54
	call nz, $1131                                   ; $6749: $c4 $31 $11
	inc  de                                          ; $674c: $13
	ld   b, $0a                                      ; $674d: $06 $0a
	add  e                                           ; $674f: $83
	inc  bc                                          ; $6750: $03
	dec  b                                           ; $6751: $05
	ld   [bc], a                                     ; $6752: $02
	ld   c, $07                                      ; $6753: $0e $07
	ld   c, $40                                      ; $6755: $0e $40
	ld   b, c                                        ; $6757: $41
	add  b                                           ; $6758: $80
	nop                                              ; $6759: $00
	add  b                                           ; $675a: $80
	rst  ToBoot                                         ; $675b: $c7
	dec  bc                                          ; $675c: $0b
	db   $e3                                         ; $675d: $e3
	inc  hl                                          ; $675e: $23
	add  hl, sp                                      ; $675f: $39
	reti                                             ; $6760: $d9


	inc  e                                           ; $6761: $1c
	inc  l                                           ; $6762: $2c
	adc  a                                           ; $6763: $8f
	sub  a                                           ; $6764: $97
	rlca                                             ; $6765: $07
	rra                                              ; $6766: $1f
	rrca                                             ; $6767: $0f
	rla                                              ; $6768: $17
	add  c                                           ; $6769: $81
	rlca                                             ; $676a: $07
	dec  b                                           ; $676b: $05
	add  e                                           ; $676c: $83

jr_099_676d:
	inc  bc                                          ; $676d: $03
	ld   a, d                                        ; $676e: $7a
	ld   c, d                                        ; $676f: $4a
	ld   l, l                                        ; $6770: $6d
	dec  l                                           ; $6771: $2d
	add  b                                           ; $6772: $80
	db   $ed                                         ; $6773: $ed
	add  b                                           ; $6774: $80
	xor  e                                           ; $6775: $ab
	add  b                                           ; $6776: $80
	sbc  e                                           ; $6777: $9b
	nop                                              ; $6778: $00
	ld   a, [de]                                     ; $6779: $1a
	add  c                                           ; $677a: $81
	ld   e, d                                        ; $677b: $5a
	ld   bc, $bc7c                                   ; $677c: $01 $7c $bc
	add  b                                           ; $677f: $80
	and  e                                           ; $6780: $a3
	ld   b, $88                                      ; $6781: $06 $88
	inc  b                                           ; $6783: $04

jr_099_6784:
	ld   c, h                                        ; $6784: $4c
	jr   nz, jr_099_676d                             ; $6785: $20 $e6

	ld   b, $a3                                      ; $6787: $06 $a3
	add  b                                           ; $6789: $80
	db   $e4                                         ; $678a: $e4
	ld   bc, $6664                                   ; $678b: $01 $64 $66
	add  b                                           ; $678e: $80
	ld   l, d                                        ; $678f: $6a
	ld   bc, $5968                                   ; $6790: $01 $68 $59
	add  b                                           ; $6793: $80
	or   h                                           ; $6794: $b4
	dec  b                                           ; $6795: $05
	or   l                                           ; $6796: $b5
	dec  l                                           ; $6797: $2d
	jp   c, Jump_099_695a                            ; $6798: $da $5a $69

	sbc  [hl]                                        ; $679b: $9e
	add  a                                           ; $679c: $87
	nop                                              ; $679d: $00
	ld   b, $80                                      ; $679e: $06 $80
	nop                                              ; $67a0: $00
	ld   h, b                                        ; $67a1: $60
	and  b                                           ; $67a2: $a0
	cp   b                                           ; $67a3: $b8
	ld   c, b                                        ; $67a4: $48
	or   b                                           ; $67a5: $b0
	add  a                                           ; $67a6: $87
	nop                                              ; $67a7: $00
	ld   b, $01                                      ; $67a8: $06 $01
	nop                                              ; $67aa: $00
	ld   b, $04                                      ; $67ab: $06 $04
	inc  e                                           ; $67ad: $1c
	inc  de                                          ; $67ae: $13
	halt                                             ; $67af: $76
	add  c                                           ; $67b0: $81
	ld   l, l                                        ; $67b1: $6d
	ld   [bc], a                                     ; $67b2: $02
	ld   h, h                                        ; $67b3: $64
	ld   e, l                                        ; $67b4: $5d
	reti                                             ; $67b5: $d9


	add  b                                           ; $67b6: $80
	sbc  d                                           ; $67b7: $9a
	inc  bc                                          ; $67b8: $03
	ld   e, d                                        ; $67b9: $5a
	ld   b, e                                        ; $67ba: $43
	ld   d, l                                        ; $67bb: $55
	ld   [hl], h                                     ; $67bc: $74
	add  b                                           ; $67bd: $80
	or   l                                           ; $67be: $b5
	add  hl, bc                                      ; $67bf: $09
	or   d                                           ; $67c0: $b2
	jp   Jump_099_424b                               ; $67c1: $c3 $4b $42


	ld   c, l                                        ; $67c4: $4d
	ld   b, l                                        ; $67c5: $45
	ld   d, l                                        ; $67c6: $55
	pop  de                                          ; $67c7: $d1
	sub  $96                                         ; $67c8: $d6 $96
	add  c                                           ; $67ca: $81
	and  [hl]                                        ; $67cb: $a6
	jr   nz, jr_099_67f4                             ; $67cc: $20 $26

	ld   d, h                                        ; $67ce: $54
	ld   e, b                                        ; $67cf: $58
	xor  l                                           ; $67d0: $ad
	push de                                          ; $67d1: $d5
	jr   nc, jr_099_6784                             ; $67d2: $30 $b0

	ld   a, [hl]                                     ; $67d4: $7e
	ld   a, a                                        ; $67d5: $7f
	rst  $38                                         ; $67d6: $ff
	jp   hl                                          ; $67d7: $e9


	rst  $38                                         ; $67d8: $ff
	rst  $30                                         ; $67d9: $f7
	rst  $38                                         ; $67da: $ff
	sbc  $ff                                         ; $67db: $de $ff
	rst  $28                                         ; $67dd: $ef
	rst  $38                                         ; $67de: $ff
	db   $dd                                         ; $67df: $dd
	rst  $38                                         ; $67e0: $ff
	rlca                                             ; $67e1: $07
	or   h                                           ; $67e2: $b4
	push af                                          ; $67e3: $f5
	ld   c, h                                        ; $67e4: $4c
	jp   nz, $d4d8                                   ; $67e5: $c2 $d8 $d4

	ld   d, b                                        ; $67e8: $50
	ld   b, b                                        ; $67e9: $40
	ret  nc                                          ; $67ea: $d0

	call z, $b4c8                                    ; $67eb: $cc $c8 $b4
	add  c                                           ; $67ee: $81

jr_099_67ef:
	add  b                                           ; $67ef: $80
	ld   a, [bc]                                     ; $67f0: $0a
	ld   b, $42                                      ; $67f1: $06 $42
	rlca                                             ; $67f3: $07

jr_099_67f4:
	ld   [$04c7], sp                                 ; $67f4: $08 $c7 $04
	ld   h, e                                        ; $67f7: $63
	inc  bc                                          ; $67f8: $03
	ccf                                              ; $67f9: $3f
	inc  bc                                          ; $67fa: $03
	rst  $28                                         ; $67fb: $ef
	add  b                                           ; $67fc: $80
	nop                                              ; $67fd: $00
	ld   h, $e0                                      ; $67fe: $26 $e0
	ld   bc, $6500                                   ; $6800: $01 $00 $65
	ld   b, b                                        ; $6803: $40
	ret  z                                           ; $6804: $c8

	ld   b, $e6                                      ; $6805: $06 $e6
	ld   e, $fe                                      ; $6807: $1e $fe
	jp   nz, $00ff                                   ; $6809: $c2 $ff $00

	ret  nz                                          ; $680c: $c0

	nop                                              ; $680d: $00
	pop  hl                                          ; $680e: $e1
	ret  nz                                          ; $680f: $c0

	call nz, $d860                                   ; $6810: $c4 $60 $d8
	and  l                                           ; $6813: $a5
	dec  h                                           ; $6814: $25
	and  d                                           ; $6815: $a2
	or   d                                           ; $6816: $b2
	or   b                                           ; $6817: $b0
	sub  [hl]                                        ; $6818: $96
	ld   d, [hl]                                     ; $6819: $56
	adc  $0a                                         ; $681a: $ce $0a
	ld   c, e                                        ; $681c: $4b
	dec  bc                                          ; $681d: $0b
	ld   l, e                                        ; $681e: $6b
	dec  bc                                          ; $681f: $0b
	ld   a, e                                        ; $6820: $7b
	dec  de                                          ; $6821: $1b
	ld   a, e                                        ; $6822: $7b
	ccf                                              ; $6823: $3f
	rst  $38                                         ; $6824: $ff
	ld   a, a                                        ; $6825: $7f
	add  b                                           ; $6826: $80
	inc  bc                                          ; $6827: $03
	inc  hl                                          ; $6828: $23
	db   $fd                                         ; $6829: $fd
	ld   bc, $00f8                                   ; $682a: $01 $f8 $00
	ld   c, $62                                      ; $682d: $0e $62
	ldh  [c], a                                      ; $682f: $e2
	and  d                                           ; $6830: $a2
	inc  hl                                          ; $6831: $23
	jp   Jump_099_40f3                               ; $6832: $c3 $f3 $40


	ld   e, a                                        ; $6835: $5f
	ld   b, b                                        ; $6836: $40
	ld   a, d                                        ; $6837: $7a
	ld   b, b                                        ; $6838: $40
	ld   h, d                                        ; $6839: $62
	ld   bc, $0149                           ; $683a: $01 $49 $01
	sub  d                                           ; $683d: $92
	ld   [$10a1], sp                                 ; $683e: $08 $a1 $10
	ret  nc                                          ; $6841: $d0

	or   b                                           ; $6842: $b0
	cp   a                                           ; $6843: $bf
	nop                                              ; $6844: $00
	add  c                                           ; $6845: $81
	ld   e, h                                        ; $6846: $5c
	ld   d, c                                        ; $6847: $51
	or   b                                           ; $6848: $b0
	inc  h                                           ; $6849: $24
	jr   nz, jr_099_67ef                             ; $684a: $20 $a3

	ld   h, b                                        ; $684c: $60
	add  c                                           ; $684d: $81
	ld   b, b                                        ; $684e: $40
	dec  de                                          ; $684f: $1b
	ret  nz                                          ; $6850: $c0

	adc  h                                           ; $6851: $8c
	add  b                                           ; $6852: $80
	ld   c, l                                        ; $6853: $4d
	nop                                              ; $6854: $00
	ld   c, b                                        ; $6855: $48
	inc  b                                           ; $6856: $04
	add  h                                           ; $6857: $84
	inc  b                                           ; $6858: $04
	ld   h, a                                        ; $6859: $67
	add  a                                           ; $685a: $87
	sub  a                                           ; $685b: $97
	and  [hl]                                        ; $685c: $a6
	or   a                                           ; $685d: $b7
	and  l                                           ; $685e: $a5
	rst  $30                                         ; $685f: $f7
	sub  d                                           ; $6860: $92
	sbc  d                                           ; $6861: $9a
	sub  d                                           ; $6862: $92
	ld   b, $1b                                      ; $6863: $06 $1b
	ld   a, e                                        ; $6865: $7b
	scf                                              ; $6866: $37
	or   a                                           ; $6867: $b7
	and  a                                           ; $6868: $a7
	rst  $20                                         ; $6869: $e7
	ld   c, a                                        ; $686a: $4f
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $686b: $cf
	add  b                                           ; $686c: $80
	cp   a                                           ; $686d: $bf
	nop                                              ; $686e: $00
	ld   a, a                                        ; $686f: $7f
	add  b                                           ; $6870: $80
	rrca                                             ; $6871: $0f
	ld   c, $f1                                      ; $6872: $0e $f1
	ld   bc, $e35b                                   ; $6874: $01 $5b $e3
	jp   $fee3                                       ; $6877: $c3 $e3 $fe


	ld   b, $41                                      ; $687a: $06 $41
	nop                                              ; $687c: $00
	rrca                                             ; $687d: $0f
	nop                                              ; $687e: $00
	rra                                              ; $687f: $1f
	ld   bc, $813d                                   ; $6880: $01 $3d $81
	ld   bc, $e00b                                   ; $6883: $01 $0b $e0
	and  c                                           ; $6886: $a1
	or   c                                           ; $6887: $b1
	add  c                                           ; $6888: $81
	add  hl, hl                                      ; $6889: $29
	ld   bc, $10f5                                   ; $688a: $01 $f5 $10
	di                                               ; $688d: $f3
	inc  sp                                          ; $688e: $33
	db   $ed                                         ; $688f: $ed
	pop  hl                                          ; $6890: $e1
	add  b                                           ; $6891: $80
	ldh  [rTIMA], a                                  ; $6892: $e0 $05
	rst  $38                                         ; $6894: $ff
	di                                               ; $6895: $f3
	halt                                             ; $6896: $76
	add  b                                           ; $6897: $80
	ld   bc, $8000                                   ; $6898: $01 $00 $80
	add  b                                           ; $689b: $80
	add  b                                           ; $689c: $80
	ldh  a, [$03]                                    ; $689d: $f0 $03
	db   $fc                                         ; $689f: $fc
	nop                                              ; $68a0: $00
	rst  $28                                         ; $68a1: $ef
	db   $e4                                         ; $68a2: $e4
	add  b                                           ; $68a3: $80
	rst  $38                                         ; $68a4: $ff
	add  b                                           ; $68a5: $80
	ld   a, a                                        ; $68a6: $7f
	ld   bc, $837b                                   ; $68a7: $01 $7b $83
	add  b                                           ; $68aa: $80
	inc  bc                                          ; $68ab: $03
	inc  bc                                          ; $68ac: $03
	ld   e, e                                        ; $68ad: $5b
	inc  bc                                          ; $68ae: $03
	rst  $28                                         ; $68af: $ef
	ld   c, a                                        ; $68b0: $4f
	add  b                                           ; $68b1: $80
	ld   a, a                                        ; $68b2: $7f
	add  b                                           ; $68b3: $80
	rrca                                             ; $68b4: $0f
	ld   [$0070], sp                                 ; $68b5: $08 $70 $00
	rst  $38                                         ; $68b8: $ff
	add  b                                           ; $68b9: $80
	ld   b, c                                        ; $68ba: $41
	nop                                              ; $68bb: $00
	rrca                                             ; $68bc: $0f
	db   $10                                         ; $68bd: $10
	ld   de, $1684                                   ; $68be: $11 $84 $16
	add  b                                           ; $68c1: $80
	dec  de                                          ; $68c2: $1b
	inc  de                                          ; $68c3: $13
	ld   a, [de]                                     ; $68c4: $1a
	sbc  d                                           ; $68c5: $9a
	dec  e                                           ; $68c6: $1d
	inc  c                                           ; $68c7: $0c
	ret  nz                                          ; $68c8: $c0

	nop                                              ; $68c9: $00
	inc  b                                           ; $68ca: $04
	rst  ToBoot                                         ; $68cb: $c7
	ld   b, $e3                                      ; $68cc: $06 $e3
	rlca                                             ; $68ce: $07
	ld   [hl], $c7                                   ; $68cf: $36 $c7
	reti                                             ; $68d1: $d9


	cp   [hl]                                        ; $68d2: $be
	and  a                                           ; $68d3: $a7
	ld   a, b                                        ; $68d4: $78
	ld   a, [hl]                                     ; $68d5: $7e
	db   $e3                                         ; $68d6: $e3
	dec  de                                          ; $68d7: $1b
	rst  $38                                         ; $68d8: $ff
	nop                                              ; $68d9: $00
	rst  $38                                         ; $68da: $ff
	nop                                              ; $68db: $00
	rst  $38                                         ; $68dc: $ff
	nop                                              ; $68dd: $00
	ld   a, [$de00]                                  ; $68de: $fa $00 $de
	ld   hl, sp-$22                                  ; $68e1: $f8 $de
	ld   hl, sp-$24                                  ; $68e3: $f8 $dc
	ld   a, b                                        ; $68e5: $78

jr_099_68e6:
	cp   h                                           ; $68e6: $bc
	ld   a, b                                        ; $68e7: $78
	jr   z, jr_099_68e6                              ; $68e8: $28 $fc

	db   $fc                                         ; $68ea: $fc
	ld   e, $dd                                      ; $68eb: $1e $dd
	ld   a, $fb                                      ; $68ed: $3e $fb
	ld   a, h                                        ; $68ef: $7c
	di                                               ; $68f0: $f3
	jp   c, $1cde                                    ; $68f1: $da $de $1c

	sbc  h                                           ; $68f4: $9c
	inc  d                                           ; $68f5: $14
	cp   h                                           ; $68f6: $bc
	sbc  h                                           ; $68f7: $9c
	add  b                                           ; $68f8: $80
	nop                                              ; $68f9: $00
	add  b                                           ; $68fa: $80
	nop                                              ; $68fb: $00
	nop                                              ; $68fc: $00
	add  b                                           ; $68fd: $80
	nop                                              ; $68fe: $00
	add  b                                           ; $68ff: $80
	ld   b, $03                                      ; $6900: $06 $03
	ld   b, $03                                      ; $6902: $06 $03
	ld   b, $03                                      ; $6904: $06 $03
	inc  b                                           ; $6906: $04
	rlca                                             ; $6907: $07
	dec  b                                           ; $6908: $05
	rlca                                             ; $6909: $07
	dec  b                                           ; $690a: $05
	rrca                                             ; $690b: $0f
	dec  bc                                          ; $690c: $0b
	rrca                                             ; $690d: $0f
	rra                                              ; $690e: $1f
	inc  e                                           ; $690f: $1c
	rrca                                             ; $6910: $0f
	nop                                              ; $6911: $00
	inc  bc                                          ; $6912: $03
	ld   bc, $0000                                   ; $6913: $01 $00 $00
	nop                                              ; $6916: $00
	nop                                              ; $6917: $00
	nop                                              ; $6918: $00
	nop                                              ; $6919: $00
	nop                                              ; $691a: $00
	nop                                              ; $691b: $00
	jr   nz, jr_099_691e                             ; $691c: $20 $00

jr_099_691e:
	ld   d, b                                        ; $691e: $50
	jr   nz, jr_099_6999                             ; $691f: $20 $78

	rst  $38                                         ; $6921: $ff
	ld   a, h                                        ; $6922: $7c
	rst  $28                                         ; $6923: $ef
	db   $fc                                         ; $6924: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6925: $cf
	db   $fd                                         ; $6926: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6927: $cf
	adc  l                                           ; $6928: $8d
	rst  $38                                         ; $6929: $ff
	ei                                               ; $692a: $fb
	cp   $fc                                         ; $692b: $fe $fc
	rrca                                             ; $692d: $0f
	cp   a                                           ; $692e: $bf
	ld   a, b                                        ; $692f: $78
	rst  $38                                         ; $6930: $ff
	db   $fc                                         ; $6931: $fc
	ld   [de], a                                     ; $6932: $12
	or   a                                           ; $6933: $b7
	dec  sp                                          ; $6934: $3b
	dec  sp                                          ; $6935: $3b
	dec  sp                                          ; $6936: $3b
	jr   z, jr_099_6958                              ; $6937: $28 $1f

	ld   a, b                                        ; $6939: $78
	rra                                              ; $693a: $1f
	ld   bc, $0007                                   ; $693b: $01 $07 $00
	inc  bc                                          ; $693e: $03
	nop                                              ; $693f: $00
	add  b                                           ; $6940: $80
	rst  $38                                         ; $6941: $ff
	add  b                                           ; $6942: $80
	rst  $38                                         ; $6943: $ff
	ret  nz                                          ; $6944: $c0

	cp   a                                           ; $6945: $bf
	ld   b, b                                        ; $6946: $40
	ld   a, a                                        ; $6947: $7f
	jr   nz, jr_099_6989                             ; $6948: $20 $3f

	db   $10                                         ; $694a: $10
	rra                                              ; $694b: $1f
	ld   [$040f], sp                                 ; $694c: $08 $0f $04
	rlca                                             ; $694f: $07
	ld   [bc], a                                     ; $6950: $02
	inc  bc                                          ; $6951: $03
	ld   bc, $0001                                   ; $6952: $01 $01 $00
	nop                                              ; $6955: $00
	nop                                              ; $6956: $00
	nop                                              ; $6957: $00

jr_099_6958:
	nop                                              ; $6958: $00
	nop                                              ; $6959: $00

Jump_099_695a:
	nop                                              ; $695a: $00
	nop                                              ; $695b: $00
	nop                                              ; $695c: $00
	nop                                              ; $695d: $00
	nop                                              ; $695e: $00
	nop                                              ; $695f: $00
	sbc  $f8                                         ; $6960: $de $f8
	sbc  $f8                                         ; $6962: $de $f8
	call c, $bc78                                    ; $6964: $dc $78 $bc
	ld   a, b                                        ; $6967: $78
	jr   z, @-$02                                    ; $6968: $28 $fc

	db   $fc                                         ; $696a: $fc
	ld   e, $cd                                      ; $696b: $1e $cd
	ld   b, $83                                      ; $696d: $06 $83
	nop                                              ; $696f: $00
	db   $e3                                         ; $6970: $e3
	ld   a, h                                        ; $6971: $7c
	sbc  $de                                         ; $6972: $de $de
	sbc  [hl]                                        ; $6974: $9e
	inc  d                                           ; $6975: $14
	cp   h                                           ; $6976: $bc
	sbc  h                                           ; $6977: $9c
	add  b                                           ; $6978: $80
	nop                                              ; $6979: $00
	add  b                                           ; $697a: $80
	nop                                              ; $697b: $00
	nop                                              ; $697c: $00
	add  b                                           ; $697d: $80
	nop                                              ; $697e: $00
	add  b                                           ; $697f: $80

Call_099_6980:
	inc  c                                           ; $6980: $0c
	nop                                              ; $6981: $00
	ld   bc, $0100                                   ; $6982: $01 $00 $01
	ld   bc, $0000                                   ; $6985: $01 $00 $00
	nop                                              ; $6988: $00

jr_099_6989:
	nop                                              ; $6989: $00
	nop                                              ; $698a: $00
	nop                                              ; $698b: $00
	jr   nz, jr_099_698e                             ; $698c: $20 $00

jr_099_698e:
	ld   d, b                                        ; $698e: $50
	jr   nz, jr_099_6a09                             ; $698f: $20 $78

	rst  $38                                         ; $6991: $ff
	ld   a, h                                        ; $6992: $7c
	rst  $28                                         ; $6993: $ef
	db   $fc                                         ; $6994: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6995: $cf
	db   $fd                                         ; $6996: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6997: $cf
	adc  l                                           ; $6998: $8d

jr_099_6999:
	rst  $38                                         ; $6999: $ff
	ei                                               ; $699a: $fb
	cp   $fc                                         ; $699b: $fe $fc
	rrca                                             ; $699d: $0f
	rra                                              ; $699e: $1f
	ld   [$003f], sp                                 ; $699f: $08 $3f $00
	ei                                               ; $69a2: $fb
	db   $fc                                         ; $69a3: $fc
	cp   [hl]                                        ; $69a4: $be
	ccf                                              ; $69a5: $3f
	dec  hl                                          ; $69a6: $2b
	dec  sp                                          ; $69a7: $3b
	ld   d, a                                        ; $69a8: $57
	ld   a, b                                        ; $69a9: $78
	rra                                              ; $69aa: $1f
	ld   bc, $0007                                   ; $69ab: $01 $07 $00
	inc  bc                                          ; $69ae: $03
	nop                                              ; $69af: $00
	add  e                                           ; $69b0: $83
	nop                                              ; $69b1: $00
	ret  nz                                          ; $69b2: $c0

	ldh  [$fc], a                                    ; $69b3: $e0 $fc
	ld   a, $be                                      ; $69b5: $3e $be
	sbc  h                                           ; $69b7: $9c
	add  b                                           ; $69b8: $80
	nop                                              ; $69b9: $00
	add  b                                           ; $69ba: $80
	nop                                              ; $69bb: $00
	nop                                              ; $69bc: $00
	add  b                                           ; $69bd: $80
	nop                                              ; $69be: $00
	add  b                                           ; $69bf: $80
	inc  c                                           ; $69c0: $0c
	nop                                              ; $69c1: $00
	nop                                              ; $69c2: $00
	nop                                              ; $69c3: $00
	nop                                              ; $69c4: $00
	ld   bc, $0000                                   ; $69c5: $01 $00 $00
	nop                                              ; $69c8: $00
	nop                                              ; $69c9: $00
	nop                                              ; $69ca: $00
	nop                                              ; $69cb: $00
	jr   nz, jr_099_69ce                             ; $69cc: $20 $00

jr_099_69ce:
	ld   d, b                                        ; $69ce: $50
	jr   nz, jr_099_69e0                             ; $69cf: $20 $0f

	nop                                              ; $69d1: $00
	rlca                                             ; $69d2: $07
	nop                                              ; $69d3: $00
	ld   [$ff87], sp                                 ; $69d4: $08 $87 $ff
	rst  $38                                         ; $69d7: $ff
	rst  $10                                         ; $69d8: $d7
	ld   a, b                                        ; $69d9: $78
	rra                                              ; $69da: $1f
	ld   bc, $0007                                   ; $69db: $01 $07 $00
	inc  bc                                          ; $69de: $03
	nop                                              ; $69df: $00

jr_099_69e0:
	ld   [hl], b                                     ; $69e0: $70
	ld   h, b                                        ; $69e1: $60
	ld   [hl], b                                     ; $69e2: $70
	ld   h, b                                        ; $69e3: $60
	nop                                              ; $69e4: $00
	nop                                              ; $69e5: $00
	ldh  [rLCDC], a                                  ; $69e6: $e0 $40
	ld   a, b                                        ; $69e8: $78
	jr   jr_099_6a0b                                 ; $69e9: $18 $20

	nop                                              ; $69eb: $00
	jr   nc, jr_099_69ee                             ; $69ec: $30 $00

jr_099_69ee:
	nop                                              ; $69ee: $00
	nop                                              ; $69ef: $00
	nop                                              ; $69f0: $00
	nop                                              ; $69f1: $00
	nop                                              ; $69f2: $00
	nop                                              ; $69f3: $00
	nop                                              ; $69f4: $00
	nop                                              ; $69f5: $00
	nop                                              ; $69f6: $00
	nop                                              ; $69f7: $00
	nop                                              ; $69f8: $00
	nop                                              ; $69f9: $00
	nop                                              ; $69fa: $00
	nop                                              ; $69fb: $00
	nop                                              ; $69fc: $00
	nop                                              ; $69fd: $00
	nop                                              ; $69fe: $00
	nop                                              ; $69ff: $00
	ld   [hl], b                                     ; $6a00: $70
	ld   h, b                                        ; $6a01: $60
	ld   [hl], b                                     ; $6a02: $70
	ld   h, b                                        ; $6a03: $60
	nop                                              ; $6a04: $00
	nop                                              ; $6a05: $00
	ldh  a, [$60]                                    ; $6a06: $f0 $60
	ld   c, b                                        ; $6a08: $48

jr_099_6a09:
	ld   c, b                                        ; $6a09: $48
	ld   a, b                                        ; $6a0a: $78

jr_099_6a0b:
	jr   nc, jr_099_6a6d                             ; $6a0b: $30 $60

	nop                                              ; $6a0d: $00
	jr   nc, jr_099_6a10                             ; $6a0e: $30 $00

jr_099_6a10:
	sbc  $f8                                         ; $6a10: $de $f8
	sbc  $f8                                         ; $6a12: $de $f8
	call c, $b878                                    ; $6a14: $dc $78 $b8
	ld   a, h                                        ; $6a17: $7c
	ld   l, b                                        ; $6a18: $68
	cp   [hl]                                        ; $6a19: $be
	db   $fc                                         ; $6a1a: $fc
	inc  a                                           ; $6a1b: $3c
	rst  $38                                         ; $6a1c: $ff
	ld   a, [hl]                                     ; $6a1d: $7e
	ei                                               ; $6a1e: $fb
	ret  c                                           ; $6a1f: $d8

	or   $1c                                         ; $6a20: $f6 $1c
	call c, $9c1c                                    ; $6a22: $dc $1c $9c
	inc  d                                           ; $6a25: $14
	cp   h                                           ; $6a26: $bc
	sbc  h                                           ; $6a27: $9c
	add  b                                           ; $6a28: $80
	nop                                              ; $6a29: $00
	add  b                                           ; $6a2a: $80
	nop                                              ; $6a2b: $00
	nop                                              ; $6a2c: $00
	add  b                                           ; $6a2d: $80
	nop                                              ; $6a2e: $00
	add  b                                           ; $6a2f: $80
	rrca                                             ; $6a30: $0f
	ld   bc, $0002                                   ; $6a31: $01 $02 $00
	nop                                              ; $6a34: $00
	nop                                              ; $6a35: $00
	nop                                              ; $6a36: $00
	nop                                              ; $6a37: $00
	nop                                              ; $6a38: $00
	nop                                              ; $6a39: $00
	nop                                              ; $6a3a: $00
	nop                                              ; $6a3b: $00
	jr   nz, jr_099_6a3e                             ; $6a3c: $20 $00

jr_099_6a3e:
	ld   d, b                                        ; $6a3e: $50
	jr   nz, jr_099_6ab9                             ; $6a3f: $20 $78

	rst  $38                                         ; $6a41: $ff
	ld   a, h                                        ; $6a42: $7c
	rst  $28                                         ; $6a43: $ef
	db   $fc                                         ; $6a44: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a45: $cf
	call $fdff                                       ; $6a46: $cd $ff $fd
	rst  $38                                         ; $6a49: $ff
	ei                                               ; $6a4a: $fb
	adc  [hl]                                        ; $6a4b: $8e
	ld   a, h                                        ; $6a4c: $7c
	rst  $38                                         ; $6a4d: $ff
	cp   a                                           ; $6a4e: $bf
	db   $fc                                         ; $6a4f: $fc
	inc  de                                          ; $6a50: $13
	or   [hl]                                        ; $6a51: $b6
	ld   a, [de]                                     ; $6a52: $1a
	dec  sp                                          ; $6a53: $3b
	dec  sp                                          ; $6a54: $3b
	dec  sp                                          ; $6a55: $3b
	ld   a, e                                        ; $6a56: $7b
	jr   z, jr_099_6ab0                              ; $6a57: $28 $57

	ld   a, b                                        ; $6a59: $78
	rra                                              ; $6a5a: $1f
	ld   bc, $0007                                   ; $6a5b: $01 $07 $00
	inc  bc                                          ; $6a5e: $03
	nop                                              ; $6a5f: $00
	sbc  $f8                                         ; $6a60: $de $f8
	sbc  $f8                                         ; $6a62: $de $f8
	call c, $b878                                    ; $6a64: $dc $78 $b8
	ld   a, h                                        ; $6a67: $7c
	ld   l, b                                        ; $6a68: $68
	cp   [hl]                                        ; $6a69: $be
	cp   $1c                                         ; $6a6a: $fe $1c
	sbc  a                                           ; $6a6c: $9f

jr_099_6a6d:
	inc  b                                           ; $6a6d: $04
	rst  $38                                         ; $6a6e: $ff
	inc  e                                           ; $6a6f: $1c
	or   $7e                                         ; $6a70: $f6 $7e
	sbc  $dc                                         ; $6a72: $de $dc
	sbc  h                                           ; $6a74: $9c
	inc  d                                           ; $6a75: $14
	cp   h                                           ; $6a76: $bc
	sbc  h                                           ; $6a77: $9c
	add  b                                           ; $6a78: $80
	nop                                              ; $6a79: $00
	add  b                                           ; $6a7a: $80
	nop                                              ; $6a7b: $00
	nop                                              ; $6a7c: $00
	add  b                                           ; $6a7d: $80
	nop                                              ; $6a7e: $00
	add  b                                           ; $6a7f: $80
	ld   c, $00                                      ; $6a80: $0e $00
	ld   bc, $0100                                   ; $6a82: $01 $00 $01
	ld   bc, $0000                                   ; $6a85: $01 $00 $00
	nop                                              ; $6a88: $00
	nop                                              ; $6a89: $00
	nop                                              ; $6a8a: $00
	nop                                              ; $6a8b: $00
	jr   nz, jr_099_6a8e                             ; $6a8c: $20 $00

jr_099_6a8e:
	ld   d, b                                        ; $6a8e: $50
	jr   nz, jr_099_6b09                             ; $6a8f: $20 $78

	rst  $38                                         ; $6a91: $ff
	ld   a, h                                        ; $6a92: $7c
	rst  $28                                         ; $6a93: $ef
	db   $fc                                         ; $6a94: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6a95: $cf
	call $fdff                                       ; $6a96: $cd $ff $fd
	rst  $38                                         ; $6a99: $ff
	ei                                               ; $6a9a: $fb
	adc  [hl]                                        ; $6a9b: $8e
	db   $fc                                         ; $6a9c: $fc
	rrca                                             ; $6a9d: $0f
	rra                                              ; $6a9e: $1f
	ld   [$f87f], sp                                 ; $6a9f: $08 $7f $f8
	db   $dd                                         ; $6aa2: $dd
	cp   $be                                         ; $6aa3: $fe $be
	ccf                                              ; $6aa5: $3f
	dec  sp                                          ; $6aa6: $3b
	dec  hl                                          ; $6aa7: $2b
	ld   d, a                                        ; $6aa8: $57
	ld   a, b                                        ; $6aa9: $78
	rra                                              ; $6aaa: $1f
	ld   bc, $0007                                   ; $6aab: $01 $07 $00
	inc  bc                                          ; $6aae: $03
	nop                                              ; $6aaf: $00

jr_099_6ab0:
	sbc  $f8                                         ; $6ab0: $de $f8
	sbc  $f8                                         ; $6ab2: $de $f8
	call c, $b878                                    ; $6ab4: $dc $78 $b8
	ld   a, h                                        ; $6ab7: $7c
	ld   l, b                                        ; $6ab8: $68

jr_099_6ab9:
	cp   [hl]                                        ; $6ab9: $be
	cp   $1c                                         ; $6aba: $fe $1c
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6abc: $cf
	inc  b                                           ; $6abd: $04
	add  e                                           ; $6abe: $83
	nop                                              ; $6abf: $00
	add  b                                           ; $6ac0: $80
	nop                                              ; $6ac1: $00
	ret  nz                                          ; $6ac2: $c0

	ldh  [$fc], a                                    ; $6ac3: $e0 $fc
	ld   a, $be                                      ; $6ac5: $3e $be
	sbc  h                                           ; $6ac7: $9c
	add  b                                           ; $6ac8: $80
	nop                                              ; $6ac9: $00
	add  b                                           ; $6aca: $80
	nop                                              ; $6acb: $00
	nop                                              ; $6acc: $00
	add  b                                           ; $6acd: $80
	nop                                              ; $6ace: $00
	add  b                                           ; $6acf: $80
	ld   c, $00                                      ; $6ad0: $0e $00
	nop                                              ; $6ad2: $00
	nop                                              ; $6ad3: $00
	nop                                              ; $6ad4: $00
	ld   bc, $0000                                   ; $6ad5: $01 $00 $00
	nop                                              ; $6ad8: $00
	nop                                              ; $6ad9: $00
	nop                                              ; $6ada: $00
	nop                                              ; $6adb: $00
	jr   nz, jr_099_6ade                             ; $6adc: $20 $00

jr_099_6ade:
	ld   d, b                                        ; $6ade: $50
	jr   nz, jr_099_6b51                             ; $6adf: $20 $70

	ld   h, b                                        ; $6ae1: $60
	ld   [hl], b                                     ; $6ae2: $70
	ld   h, b                                        ; $6ae3: $60
	nop                                              ; $6ae4: $00
	nop                                              ; $6ae5: $00
	ldh  [rLCDC], a                                  ; $6ae6: $e0 $40
	ld   a, h                                        ; $6ae8: $7c
	inc  c                                           ; $6ae9: $0c
	jr   nz, jr_099_6aec                             ; $6aea: $20 $00

jr_099_6aec:
	jr   nc, jr_099_6aee                             ; $6aec: $30 $00

jr_099_6aee:
	nop                                              ; $6aee: $00
	nop                                              ; $6aef: $00
	ld   [hl], b                                     ; $6af0: $70
	ld   h, b                                        ; $6af1: $60
	ld   [hl], b                                     ; $6af2: $70
	ld   h, b                                        ; $6af3: $60
	nop                                              ; $6af4: $00
	nop                                              ; $6af5: $00
	ldh  a, [rLCDC]                                  ; $6af6: $f0 $40
	ld   l, h                                        ; $6af8: $6c
	ld   b, h                                        ; $6af9: $44
	ld   a, h                                        ; $6afa: $7c
	jr   z, jr_099_6b1d                              ; $6afb: $28 $20

	nop                                              ; $6afd: $00
	stop                                             ; $6afe: $10 $00
	sbc  $f8                                         ; $6b00: $de $f8
	sbc  $f8                                         ; $6b02: $de $f8
	call c, $7c78                                    ; $6b04: $dc $78 $7c
	ld   hl, sp-$54                                  ; $6b07: $f8 $ac

jr_099_6b09:
	ld   a, b                                        ; $6b09: $78
	cp   $3c                                         ; $6b0a: $fe $3c
	db   $dd                                         ; $6b0c: $dd
	ld   a, $fb                                      ; $6b0d: $3e $fb
	cp   $f3                                         ; $6b0f: $fe $f3
	ld   e, d                                        ; $6b11: $5a
	sbc  $1c                                         ; $6b12: $de $1c
	sbc  h                                           ; $6b14: $9c
	inc  d                                           ; $6b15: $14
	cp   h                                           ; $6b16: $bc
	sbc  h                                           ; $6b17: $9c
	add  b                                           ; $6b18: $80
	nop                                              ; $6b19: $00
	add  b                                           ; $6b1a: $80
	nop                                              ; $6b1b: $00
	nop                                              ; $6b1c: $00

jr_099_6b1d:
	add  b                                           ; $6b1d: $80
	nop                                              ; $6b1e: $00
	add  b                                           ; $6b1f: $80
	ld   b, $03                                      ; $6b20: $06 $03
	ld   b, $03                                      ; $6b22: $06 $03
	ld   b, $03                                      ; $6b24: $06 $03
	inc  b                                           ; $6b26: $04
	rlca                                             ; $6b27: $07
	dec  b                                           ; $6b28: $05
	rlca                                             ; $6b29: $07
	dec  b                                           ; $6b2a: $05
	rrca                                             ; $6b2b: $0f
	dec  bc                                          ; $6b2c: $0b
	rrca                                             ; $6b2d: $0f
	dec  e                                           ; $6b2e: $1d
	rra                                              ; $6b2f: $1f
	rrca                                             ; $6b30: $0f
	ld   [bc], a                                     ; $6b31: $02
	inc  bc                                          ; $6b32: $03
	ld   bc, $0000                                   ; $6b33: $01 $00 $00
	nop                                              ; $6b36: $00
	nop                                              ; $6b37: $00
	nop                                              ; $6b38: $00
	nop                                              ; $6b39: $00
	nop                                              ; $6b3a: $00
	nop                                              ; $6b3b: $00
	jr   nz, jr_099_6b3e                             ; $6b3c: $20 $00

jr_099_6b3e:
	ld   d, b                                        ; $6b3e: $50
	jr   nz, jr_099_6bb9                             ; $6b3f: $20 $78

	rst  $38                                         ; $6b41: $ff
	ld   a, h                                        ; $6b42: $7c
	rst  $28                                         ; $6b43: $ef
	db   $fc                                         ; $6b44: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b45: $cf
	db   $fd                                         ; $6b46: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b47: $cf
	db   $ed                                         ; $6b48: $ed
	sbc  a                                           ; $6b49: $9f
	sbc  d                                           ; $6b4a: $9a
	rst  $38                                         ; $6b4b: $ff
	rst  $38                                         ; $6b4c: $ff
	db   $ec                                         ; $6b4d: $ec
	cp   a                                           ; $6b4e: $bf
	ld   hl, sp-$21                                  ; $6b4f: $f8 $df

jr_099_6b51:
	db   $fc                                         ; $6b51: $fc
	ld   [de], a                                     ; $6b52: $12
	or   a                                           ; $6b53: $b7
	dec  sp                                          ; $6b54: $3b
	dec  sp                                          ; $6b55: $3b
	dec  sp                                          ; $6b56: $3b
	jr   z, jr_099_6bb0                              ; $6b57: $28 $57

	ld   a, b                                        ; $6b59: $78
	rra                                              ; $6b5a: $1f
	ld   bc, $0007                                   ; $6b5b: $01 $07 $00
	inc  bc                                          ; $6b5e: $03
	nop                                              ; $6b5f: $00
	sbc  $f8                                         ; $6b60: $de $f8
	sbc  $f8                                         ; $6b62: $de $f8
	call c, $7c78                                    ; $6b64: $dc $78 $7c
	ld   hl, sp-$54                                  ; $6b67: $f8 $ac
	ld   a, b                                        ; $6b69: $78
	cp   $3c                                         ; $6b6a: $fe $3c
	call $8706                                       ; $6b6c: $cd $06 $87
	nop                                              ; $6b6f: $00
	di                                               ; $6b70: $f3
	db   $fc                                         ; $6b71: $fc
	sbc  $5e                                         ; $6b72: $de $5e
	sbc  [hl]                                        ; $6b74: $9e
	inc  d                                           ; $6b75: $14
	cp   h                                           ; $6b76: $bc
	sbc  h                                           ; $6b77: $9c
	add  b                                           ; $6b78: $80
	nop                                              ; $6b79: $00
	add  b                                           ; $6b7a: $80
	nop                                              ; $6b7b: $00
	nop                                              ; $6b7c: $00
	add  b                                           ; $6b7d: $80
	nop                                              ; $6b7e: $00
	add  b                                           ; $6b7f: $80
	rrca                                             ; $6b80: $0f
	ld   [bc], a                                     ; $6b81: $02
	inc  bc                                          ; $6b82: $03
	nop                                              ; $6b83: $00
	ld   bc, $0001                                   ; $6b84: $01 $01 $00
	nop                                              ; $6b87: $00
	nop                                              ; $6b88: $00
	nop                                              ; $6b89: $00
	nop                                              ; $6b8a: $00
	nop                                              ; $6b8b: $00
	jr   nz, jr_099_6b8e                             ; $6b8c: $20 $00

jr_099_6b8e:
	ld   d, b                                        ; $6b8e: $50
	jr   nz, jr_099_6c09                             ; $6b8f: $20 $78

	rst  $38                                         ; $6b91: $ff
	ld   a, h                                        ; $6b92: $7c
	rst  $28                                         ; $6b93: $ef
	db   $fc                                         ; $6b94: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b95: $cf
	db   $fd                                         ; $6b96: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6b97: $cf
	db   $ed                                         ; $6b98: $ed
	sbc  a                                           ; $6b99: $9f
	sbc  d                                           ; $6b9a: $9a
	rst  $38                                         ; $6b9b: $ff
	rst  $38                                         ; $6b9c: $ff
	db   $ec                                         ; $6b9d: $ec
	sbc  a                                           ; $6b9e: $9f
	ld   [$0007], sp                                 ; $6b9f: $08 $07 $00
	ei                                               ; $6ba2: $fb
	db   $fc                                         ; $6ba3: $fc
	cp   h                                           ; $6ba4: $bc
	ccf                                              ; $6ba5: $3f
	inc  sp                                          ; $6ba6: $33
	dec  hl                                          ; $6ba7: $2b
	ld   d, a                                        ; $6ba8: $57
	ld   a, b                                        ; $6ba9: $78
	rra                                              ; $6baa: $1f
	ld   bc, $0007                                   ; $6bab: $01 $07 $00
	inc  bc                                          ; $6bae: $03
	nop                                              ; $6baf: $00

jr_099_6bb0:
	sbc  $f8                                         ; $6bb0: $de $f8
	sbc  $f8                                         ; $6bb2: $de $f8
	call c, $7c78                                    ; $6bb4: $dc $78 $7c
	ld   hl, sp-$54                                  ; $6bb7: $f8 $ac

jr_099_6bb9:
	ld   a, b                                        ; $6bb9: $78
	cp   $3c                                         ; $6bba: $fe $3c
	call $8306                                       ; $6bbc: $cd $06 $83
	nop                                              ; $6bbf: $00
	rrca                                             ; $6bc0: $0f
	ld   [bc], a                                     ; $6bc1: $02
	nop                                              ; $6bc2: $00
	nop                                              ; $6bc3: $00
	nop                                              ; $6bc4: $00
	ld   bc, $0000                                   ; $6bc5: $01 $00 $00
	nop                                              ; $6bc8: $00
	nop                                              ; $6bc9: $00
	nop                                              ; $6bca: $00
	nop                                              ; $6bcb: $00
	jr   nz, jr_099_6bce                             ; $6bcc: $20 $00

jr_099_6bce:
	ld   d, b                                        ; $6bce: $50
	jr   nz, jr_099_6c49                             ; $6bcf: $20 $78

	rst  $38                                         ; $6bd1: $ff
	ld   a, h                                        ; $6bd2: $7c
	rst  $28                                         ; $6bd3: $ef
	db   $fc                                         ; $6bd4: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd5: $cf
	db   $fd                                         ; $6bd6: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6bd7: $cf
	db   $ed                                         ; $6bd8: $ed
	sbc  a                                           ; $6bd9: $9f
	sbc  d                                           ; $6bda: $9a
	rst  $38                                         ; $6bdb: $ff
	rst  $38                                         ; $6bdc: $ff
	db   $ec                                         ; $6bdd: $ec
	rra                                              ; $6bde: $1f

jr_099_6bdf:
	ld   [$6070], sp                                 ; $6bdf: $08 $70 $60
	ld   [hl], b                                     ; $6be2: $70
	ld   h, b                                        ; $6be3: $60
	nop                                              ; $6be4: $00
	nop                                              ; $6be5: $00
	ret  nz                                          ; $6be6: $c0

	ld   b, b                                        ; $6be7: $40
	ld   a, h                                        ; $6be8: $7c
	ld   [$0060], sp                                 ; $6be9: $08 $60 $00
	jr   nc, jr_099_6bee                             ; $6bec: $30 $00

jr_099_6bee:
	nop                                              ; $6bee: $00
	nop                                              ; $6bef: $00
	ld   [hl], b                                     ; $6bf0: $70
	ld   h, b                                        ; $6bf1: $60
	ld   [hl], b                                     ; $6bf2: $70
	ld   h, b                                        ; $6bf3: $60
	nop                                              ; $6bf4: $00
	nop                                              ; $6bf5: $00
	ldh  [rLCDC], a                                  ; $6bf6: $e0 $40
	ld   hl, sp+$58                                  ; $6bf8: $f8 $58
	ld   a, h                                        ; $6bfa: $7c
	ld   b, h                                        ; $6bfb: $44
	ld   h, h                                        ; $6bfc: $64
	inc  b                                           ; $6bfd: $04
	inc  a                                           ; $6bfe: $3c
	jr   c, jr_099_6bdf                              ; $6bff: $38 $de

	ld   hl, sp-$22                                  ; $6c01: $f8 $de
	ld   hl, sp-$24                                  ; $6c03: $f8 $dc
	ld   a, b                                        ; $6c05: $78
	ld   hl, sp+$3e                                  ; $6c06: $f8 $3e
	db   $ec                                         ; $6c08: $ec

jr_099_6c09:
	ld   a, $1e                                      ; $6c09: $3e $1e
	db   $fc                                         ; $6c0b: $fc
	db   $e3                                         ; $6c0c: $e3
	inc  e                                           ; $6c0d: $1c
	rst  JumpTable                                         ; $6c0e: $df
	inc  a                                           ; $6c0f: $3c
	di                                               ; $6c10: $f3
	ld   a, d                                        ; $6c11: $7a
	jp   c, $9cdc                                    ; $6c12: $da $dc $9c

	inc  d                                           ; $6c15: $14
	cp   h                                           ; $6c16: $bc
	sbc  h                                           ; $6c17: $9c
	add  b                                           ; $6c18: $80
	nop                                              ; $6c19: $00
	add  b                                           ; $6c1a: $80
	nop                                              ; $6c1b: $00
	nop                                              ; $6c1c: $00
	add  b                                           ; $6c1d: $80
	nop                                              ; $6c1e: $00
	add  b                                           ; $6c1f: $80
	ld   b, $03                                      ; $6c20: $06 $03
	ld   b, $03                                      ; $6c22: $06 $03
	ld   b, $03                                      ; $6c24: $06 $03
	inc  b                                           ; $6c26: $04
	rlca                                             ; $6c27: $07
	dec  b                                           ; $6c28: $05
	rrca                                             ; $6c29: $0f
	dec  b                                           ; $6c2a: $05
	rrca                                             ; $6c2b: $0f
	dec  bc                                          ; $6c2c: $0b
	rrca                                             ; $6c2d: $0f
	rra                                              ; $6c2e: $1f
	inc  e                                           ; $6c2f: $1c
	ld   a, b                                        ; $6c30: $78
	rst  $38                                         ; $6c31: $ff
	ld   a, h                                        ; $6c32: $7c
	rst  $28                                         ; $6c33: $ef
	db   $fc                                         ; $6c34: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c35: $cf
	db   $fd                                         ; $6c36: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c37: $cf
	cp   l                                           ; $6c38: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c39: $cf
	ld   c, e                                        ; $6c3a: $4b
	cp   $fd                                         ; $6c3b: $fe $fd
	ld   a, $84                                      ; $6c3d: $3e $84
	ld   a, e                                        ; $6c3f: $7b
	rst  $38                                         ; $6c40: $ff
	db   $fc                                         ; $6c41: $fc
	ld   d, e                                        ; $6c42: $53
	or   [hl]                                        ; $6c43: $b6
	ld   a, [hl-]                                    ; $6c44: $3a
	dec  sp                                          ; $6c45: $3b
	add  hl, sp                                      ; $6c46: $39
	dec  hl                                          ; $6c47: $2b
	ld   d, a                                        ; $6c48: $57

jr_099_6c49:
	ld   a, b                                        ; $6c49: $78
	rra                                              ; $6c4a: $1f
	ld   bc, $0007                                   ; $6c4b: $01 $07 $00
	inc  bc                                          ; $6c4e: $03
	nop                                              ; $6c4f: $00
	sbc  $f8                                         ; $6c50: $de $f8
	sbc  $f8                                         ; $6c52: $de $f8
	call c, $f878                                    ; $6c54: $dc $78 $f8
	ld   a, $ec                                      ; $6c57: $3e $ec
	ld   a, $1e                                      ; $6c59: $3e $1e
	db   $fc                                         ; $6c5b: $fc
	rst  $38                                         ; $6c5c: $ff
	nop                                              ; $6c5d: $00
	db   $e3                                         ; $6c5e: $e3
	inc  e                                           ; $6c5f: $1c
	rst  JumpTable                                         ; $6c60: $df
	inc  a                                           ; $6c61: $3c
	cp   $7e                                         ; $6c62: $fe $7e
	sbc  $d4                                         ; $6c64: $de $d4
	cp   h                                           ; $6c66: $bc
	sbc  h                                           ; $6c67: $9c
	add  b                                           ; $6c68: $80
	nop                                              ; $6c69: $00
	add  b                                           ; $6c6a: $80
	nop                                              ; $6c6b: $00
	nop                                              ; $6c6c: $00
	add  b                                           ; $6c6d: $80
	nop                                              ; $6c6e: $00
	add  b                                           ; $6c6f: $80
	ld   a, b                                        ; $6c70: $78
	rst  $38                                         ; $6c71: $ff
	ld   a, h                                        ; $6c72: $7c
	rst  $28                                         ; $6c73: $ef
	db   $fc                                         ; $6c74: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c75: $cf
	db   $fd                                         ; $6c76: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c77: $cf
	cp   l                                           ; $6c78: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6c79: $cf
	ld   c, e                                        ; $6c7a: $4b
	cp   $fd                                         ; $6c7b: $fe $fd
	ld   a, $3c                                      ; $6c7d: $3e $3c
	inc  bc                                          ; $6c7f: $03
	add  a                                           ; $6c80: $87
	ld   a, b                                        ; $6c81: $78
	rst  $38                                         ; $6c82: $ff
	db   $fc                                         ; $6c83: $fc
	ld   a, a                                        ; $6c84: $7f
	cp   [hl]                                        ; $6c85: $be
	ld   [hl-], a                                    ; $6c86: $32
	dec  hl                                          ; $6c87: $2b
	ld   d, a                                        ; $6c88: $57
	ld   a, b                                        ; $6c89: $78
	rra                                              ; $6c8a: $1f
	ld   bc, $0007                                   ; $6c8b: $01 $07 $00
	inc  bc                                          ; $6c8e: $03
	nop                                              ; $6c8f: $00
	sbc  $f8                                         ; $6c90: $de $f8
	sbc  $f8                                         ; $6c92: $de $f8
	call c, $f878                                    ; $6c94: $dc $78 $f8
	ld   a, $ec                                      ; $6c97: $3e $ec
	ld   a, $1e                                      ; $6c99: $3e $1e
	db   $fc                                         ; $6c9b: $fc
	rst  $38                                         ; $6c9c: $ff
	nop                                              ; $6c9d: $00
	add  e                                           ; $6c9e: $83
	nop                                              ; $6c9f: $00
	ld   a, b                                        ; $6ca0: $78
	rst  $38                                         ; $6ca1: $ff
	ld   a, h                                        ; $6ca2: $7c
	rst  $28                                         ; $6ca3: $ef
	db   $fc                                         ; $6ca4: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ca5: $cf
	db   $fd                                         ; $6ca6: $fd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ca7: $cf
	cp   l                                           ; $6ca8: $bd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6ca9: $cf
	ld   c, e                                        ; $6caa: $4b
	cp   $fd                                         ; $6cab: $fe $fd
	ld   a, $14                                      ; $6cad: $3e $14
	dec  bc                                          ; $6caf: $0b
	ld   [hl], b                                     ; $6cb0: $70
	ld   h, b                                        ; $6cb1: $60
	ld   [hl], b                                     ; $6cb2: $70
	ld   h, b                                        ; $6cb3: $60
	nop                                              ; $6cb4: $00
	nop                                              ; $6cb5: $00
	ret  nz                                          ; $6cb6: $c0

	ld   b, b                                        ; $6cb7: $40
	ld   a, h                                        ; $6cb8: $7c
	jr   @+$62                                       ; $6cb9: $18 $60

	nop                                              ; $6cbb: $00
	jr   nc, jr_099_6cbe                             ; $6cbc: $30 $00

jr_099_6cbe:
	nop                                              ; $6cbe: $00
	nop                                              ; $6cbf: $00
	ld   [hl], b                                     ; $6cc0: $70
	ld   h, b                                        ; $6cc1: $60
	ld   [hl], b                                     ; $6cc2: $70
	ld   h, b                                        ; $6cc3: $60
	nop                                              ; $6cc4: $00
	nop                                              ; $6cc5: $00
	ret  nz                                          ; $6cc6: $c0

	ld   b, b                                        ; $6cc7: $40
	db   $fc                                         ; $6cc8: $fc
	ld   c, b                                        ; $6cc9: $48
	ld   h, h                                        ; $6cca: $64
	inc  h                                           ; $6ccb: $24
	ld   a, h                                        ; $6ccc: $7c
	jr   c, jr_099_6cef                              ; $6ccd: $38 $20

	nop                                              ; $6ccf: $00
	jr   jr_099_6cd2                                 ; $6cd0: $18 $00

jr_099_6cd2:
	nop                                              ; $6cd2: $00
	nop                                              ; $6cd3: $00
	nop                                              ; $6cd4: $00
	nop                                              ; $6cd5: $00
	nop                                              ; $6cd6: $00
	nop                                              ; $6cd7: $00
	nop                                              ; $6cd8: $00
	nop                                              ; $6cd9: $00
	nop                                              ; $6cda: $00
	nop                                              ; $6cdb: $00
	nop                                              ; $6cdc: $00
	nop                                              ; $6cdd: $00
	nop                                              ; $6cde: $00
	nop                                              ; $6cdf: $00
	sbc  $f8                                         ; $6ce0: $de $f8
	sbc  $f8                                         ; $6ce2: $de $f8
	call c, $3878                                    ; $6ce4: $dc $78 $38
	db   $fc                                         ; $6ce7: $fc
	add  sp, $3c                                     ; $6ce8: $e8 $3c
	cp   $3c                                         ; $6cea: $fe $3c
	cp   h                                           ; $6cec: $bc
	ld   l, [hl]                                     ; $6ced: $6e
	ldh  [c], a                                      ; $6cee: $e2

jr_099_6cef:
	call z, $48c0                                    ; $6cef: $cc $c0 $48
	ret  z                                           ; $6cf2: $c8

	inc  c                                           ; $6cf3: $0c
	adc  h                                           ; $6cf4: $8c
	inc  c                                           ; $6cf5: $0c
	xor  h                                           ; $6cf6: $ac
	and  b                                           ; $6cf7: $a0
	cp   h                                           ; $6cf8: $bc
	inc  e                                           ; $6cf9: $1c
	add  b                                           ; $6cfa: $80
	nop                                              ; $6cfb: $00
	nop                                              ; $6cfc: $00
	add  b                                           ; $6cfd: $80
	nop                                              ; $6cfe: $00
	add  b                                           ; $6cff: $80
	ld   b, $03                                      ; $6d00: $06 $03
	ld   b, $03                                      ; $6d02: $06 $03
	ld   b, $03                                      ; $6d04: $06 $03
	inc  b                                           ; $6d06: $04
	rlca                                             ; $6d07: $07
	dec  b                                           ; $6d08: $05
	rlca                                             ; $6d09: $07
	dec  b                                           ; $6d0a: $05
	rrca                                             ; $6d0b: $0f
	dec  bc                                          ; $6d0c: $0b
	rrca                                             ; $6d0d: $0f
	rra                                              ; $6d0e: $1f
	dec  e                                           ; $6d0f: $1d
	ld   a, b                                        ; $6d10: $78
	rst  $38                                         ; $6d11: $ff
	ld   a, h                                        ; $6d12: $7c
	rst  $28                                         ; $6d13: $ef
	db   $fc                                         ; $6d14: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d15: $cf
	call $fdff                                       ; $6d16: $cd $ff $fd
	rst  $38                                         ; $6d19: $ff
	ld   a, [$ff8f]                                  ; $6d1a: $fa $8f $ff
	db   $fc                                         ; $6d1d: $fc
	rst  $30                                         ; $6d1e: $f7
	adc  [hl]                                        ; $6d1f: $8e
	add  a                                           ; $6d20: $87
	inc  sp                                          ; $6d21: $33
	dec  bc                                          ; $6d22: $0b
	ld   hl, $3128                                   ; $6d23: $21 $28 $31
	add  hl, sp                                      ; $6d26: $39
	jr   nc, jr_099_6d5c                             ; $6d27: $30 $33

	nop                                              ; $6d29: $00
	ld   a, a                                        ; $6d2a: $7f
	ld   a, c                                        ; $6d2b: $79
	rlca                                             ; $6d2c: $07
	nop                                              ; $6d2d: $00
	inc  bc                                          ; $6d2e: $03
	nop                                              ; $6d2f: $00
	sbc  $f8                                         ; $6d30: $de $f8
	sbc  $f8                                         ; $6d32: $de $f8
	call c, $3878                                    ; $6d34: $dc $78 $38
	db   $fc                                         ; $6d37: $fc
	add  sp, $3c                                     ; $6d38: $e8 $3c
	cp   $1c                                         ; $6d3a: $fe $1c
	call z, $860e                                    ; $6d3c: $cc $0e $86
	nop                                              ; $6d3f: $00
	sub  d                                           ; $6d40: $92
	ld   a, h                                        ; $6d41: $7c
	or   $ce                                         ; $6d42: $f6 $ce
	adc  $0c                                         ; $6d44: $ce $0c
	xor  h                                           ; $6d46: $ac
	and  h                                           ; $6d47: $a4
	cp   h                                           ; $6d48: $bc
	inc  e                                           ; $6d49: $1c
	add  b                                           ; $6d4a: $80
	nop                                              ; $6d4b: $00
	nop                                              ; $6d4c: $00
	add  b                                           ; $6d4d: $80
	nop                                              ; $6d4e: $00
	add  b                                           ; $6d4f: $80
	inc  c                                           ; $6d50: $0c
	nop                                              ; $6d51: $00
	ld   bc, $0100                                   ; $6d52: $01 $00 $01
	ld   bc, $0001                                   ; $6d55: $01 $01 $00
	nop                                              ; $6d58: $00
	nop                                              ; $6d59: $00
	nop                                              ; $6d5a: $00
	nop                                              ; $6d5b: $00

jr_099_6d5c:
	jr   nz, jr_099_6d5e                             ; $6d5c: $20 $00

jr_099_6d5e:
	ld   d, b                                        ; $6d5e: $50
	jr   nz, jr_099_6dd9                             ; $6d5f: $20 $78

	rst  $38                                         ; $6d61: $ff
	ld   a, h                                        ; $6d62: $7c
	rst  $28                                         ; $6d63: $ef
	db   $fc                                         ; $6d64: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6d65: $cf
	call $fdff                                       ; $6d66: $cd $ff $fd
	rst  $38                                         ; $6d69: $ff
	ld   a, [$8f8f]                                  ; $6d6a: $fa $8f $8f
	inc  c                                           ; $6d6d: $0c
	inc  bc                                          ; $6d6e: $03
	ld   [$001f], sp                                 ; $6d6f: $08 $1f $00
	ei                                               ; $6d72: $fb
	db   $fc                                         ; $6d73: $fc
	sbc  $b7                                         ; $6d74: $de $b7
	cp   c                                           ; $6d76: $b9
	jr   nc, jr_099_6db4                             ; $6d77: $30 $3b

	db   $10                                         ; $6d79: $10
	ld   a, a                                        ; $6d7a: $7f
	ld   a, c                                        ; $6d7b: $79
	rlca                                             ; $6d7c: $07
	nop                                              ; $6d7d: $00
	inc  bc                                          ; $6d7e: $03
	nop                                              ; $6d7f: $00
	sbc  $f8                                         ; $6d80: $de $f8
	sbc  $f8                                         ; $6d82: $de $f8
	call c, $3878                                    ; $6d84: $dc $78 $38
	db   $fc                                         ; $6d87: $fc
	add  sp, $3c                                     ; $6d88: $e8 $3c
	cp   $1c                                         ; $6d8a: $fe $1c
	call z, $820e                                    ; $6d8c: $cc $0e $82
	nop                                              ; $6d8f: $00
	add  b                                           ; $6d90: $80
	nop                                              ; $6d91: $00
	ret  nz                                          ; $6d92: $c0

	nop                                              ; $6d93: $00
	add  $e0                                         ; $6d94: $c6 $e0
	db   $fc                                         ; $6d96: $fc
	cp   [hl]                                        ; $6d97: $be
	cp   h                                           ; $6d98: $bc
	inc  e                                           ; $6d99: $1c
	add  b                                           ; $6d9a: $80
	nop                                              ; $6d9b: $00
	nop                                              ; $6d9c: $00
	add  b                                           ; $6d9d: $80
	nop                                              ; $6d9e: $00
	add  b                                           ; $6d9f: $80
	inc  c                                           ; $6da0: $0c
	nop                                              ; $6da1: $00
	nop                                              ; $6da2: $00
	nop                                              ; $6da3: $00
	ld   bc, $0100                                   ; $6da4: $01 $00 $01
	ld   bc, $0000                                   ; $6da7: $01 $00 $00
	nop                                              ; $6daa: $00
	nop                                              ; $6dab: $00
	jr   nz, jr_099_6dae                             ; $6dac: $20 $00

jr_099_6dae:
	ld   d, b                                        ; $6dae: $50
	jr   nz, @+$7a                                   ; $6daf: $20 $78

	rst  $38                                         ; $6db1: $ff
	ld   a, h                                        ; $6db2: $7c
	rst  $28                                         ; $6db3: $ef

jr_099_6db4:
	db   $fc                                         ; $6db4: $fc
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $6db5: $cf
	call $fdff                                       ; $6db6: $cd $ff $fd
	rst  $38                                         ; $6db9: $ff
	ld   a, [$8f8f]                                  ; $6dba: $fa $8f $8f
	inc  c                                           ; $6dbd: $0c
	rlca                                             ; $6dbe: $07
	ld   [$0103], sp                                 ; $6dbf: $08 $03 $01
	inc  bc                                          ; $6dc2: $03
	ld   bc, $0182                                   ; $6dc3: $01 $82 $01
	rst  $20                                         ; $6dc6: $e7
	add  b                                           ; $6dc7: $80
	rst  $38                                         ; $6dc8: $ff
	cp   $fb                                         ; $6dc9: $fe $fb
	ld   a, l                                        ; $6dcb: $7d
	rlca                                             ; $6dcc: $07
	nop                                              ; $6dcd: $00
	inc  bc                                          ; $6dce: $03
	nop                                              ; $6dcf: $00
	ld   [hl], b                                     ; $6dd0: $70
	ld   h, b                                        ; $6dd1: $60
	ld   [hl], b                                     ; $6dd2: $70
	ld   h, b                                        ; $6dd3: $60
	nop                                              ; $6dd4: $00
	nop                                              ; $6dd5: $00
	ld   a, b                                        ; $6dd6: $78
	ld   h, b                                        ; $6dd7: $60
	ld   l, h                                        ; $6dd8: $6c

jr_099_6dd9:
	inc  b                                           ; $6dd9: $04
	inc  h                                           ; $6dda: $24
	inc  h                                           ; $6ddb: $24
	inc  h                                           ; $6ddc: $24
	jr   nz, @+$3e                                   ; $6ddd: $20 $3c

	jr   @+$72                                       ; $6ddf: $18 $70

	ld   h, b                                        ; $6de1: $60
	ld   [hl], b                                     ; $6de2: $70
	ld   h, b                                        ; $6de3: $60
	nop                                              ; $6de4: $00
	nop                                              ; $6de5: $00
	nop                                              ; $6de6: $00
	nop                                              ; $6de7: $00
	ld   [hl], b                                     ; $6de8: $70
	ld   h, b                                        ; $6de9: $60
	jr   jr_099_6df4                                 ; $6dea: $18 $08

	jr   nc, jr_099_6dee                             ; $6dec: $30 $00

jr_099_6dee:
	nop                                              ; $6dee: $00
	nop                                              ; $6def: $00
	ld   bc, $4101                                   ; $6df0: $01 $01 $41
	ld   b, c                                        ; $6df3: $41

jr_099_6df4:
	ld   b, c                                        ; $6df4: $41
	ld   b, c                                        ; $6df5: $41
	ld   b, c                                        ; $6df6: $41
	ld   b, c                                        ; $6df7: $41
	ld   b, c                                        ; $6df8: $41
	ld   b, c                                        ; $6df9: $41
	ld   b, c                                        ; $6dfa: $41
	ld   b, c                                        ; $6dfb: $41
	ld   b, c                                        ; $6dfc: $41
	ld   b, c                                        ; $6dfd: $41
	ld   b, c                                        ; $6dfe: $41
	ld   b, c                                        ; $6dff: $41
	ld   b, c                                        ; $6e00: $41
	ld   b, c                                        ; $6e01: $41
	ld   bc, $0001                                   ; $6e02: $01 $01 $00
	ld   [$0808], sp                                 ; $6e05: $08 $08 $08
	ld   [$0808], sp                                 ; $6e08: $08 $08 $08
	ld   [$0808], sp                                 ; $6e0b: $08 $08 $08
	ld   [$0808], sp                                 ; $6e0e: $08 $08 $08
	ld   [$0808], sp                                 ; $6e11: $08 $08 $08
	ld   [$0808], sp                                 ; $6e14: $08 $08 $08
	nop                                              ; $6e17: $00
	nop                                              ; $6e18: $00
	ld   [$0808], sp                                 ; $6e19: $08 $08 $08
	ld   [$0808], sp                                 ; $6e1c: $08 $08 $08
	ld   [$0808], sp                                 ; $6e1f: $08 $08 $08
	ld   [$0808], sp                                 ; $6e22: $08 $08 $08
	ld   [$0808], sp                                 ; $6e25: $08 $08 $08
	ld   [$0808], sp                                 ; $6e28: $08 $08 $08
	nop                                              ; $6e2b: $00
	nop                                              ; $6e2c: $00
	ld   [$0808], sp                                 ; $6e2d: $08 $08 $08
	ld   [$0808], sp                                 ; $6e30: $08 $08 $08
	ld   [$0808], sp                                 ; $6e33: $08 $08 $08
	ld   [$0808], sp                                 ; $6e36: $08 $08 $08
	ld   [$0808], sp                                 ; $6e39: $08 $08 $08
	ld   [$0808], sp                                 ; $6e3c: $08 $08 $08
	nop                                              ; $6e3f: $00
	nop                                              ; $6e40: $00
	ld   [$0808], sp                                 ; $6e41: $08 $08 $08
	ld   [$0808], sp                                 ; $6e44: $08 $08 $08
	ld   [$0808], sp                                 ; $6e47: $08 $08 $08
	ld   [$0808], sp                                 ; $6e4a: $08 $08 $08
	ld   [$0808], sp                                 ; $6e4d: $08 $08 $08
	ld   [$0808], sp                                 ; $6e50: $08 $08 $08
	nop                                              ; $6e53: $00
	ld   bc, $4101                                   ; $6e54: $01 $01 $41
	ld   b, c                                        ; $6e57: $41
	ld   b, c                                        ; $6e58: $41
	ld   b, c                                        ; $6e59: $41
	ld   b, c                                        ; $6e5a: $41
	ld   b, c                                        ; $6e5b: $41
	ld   b, c                                        ; $6e5c: $41
	ld   b, c                                        ; $6e5d: $41
	ld   b, c                                        ; $6e5e: $41
	ld   b, c                                        ; $6e5f: $41
	ld   b, c                                        ; $6e60: $41
	ld   b, c                                        ; $6e61: $41
	ld   b, c                                        ; $6e62: $41
	ld   b, c                                        ; $6e63: $41
	ld   b, c                                        ; $6e64: $41
	ld   b, c                                        ; $6e65: $41
	ld   bc, $0101                                   ; $6e66: $01 $01 $01
	ld   bc, $0101                                   ; $6e69: $01 $01 $01
	ld   bc, $0101                                   ; $6e6c: $01 $01 $01
	ld   bc, $0101                                   ; $6e6f: $01 $01 $01
	ld   bc, $0101                                   ; $6e72: $01 $01 $01
	ld   bc, $0101                                   ; $6e75: $01 $01 $01
	ld   bc, $0101                                   ; $6e78: $01 $01 $01
	ld   bc, $0101                                   ; $6e7b: $01 $01 $01
	ld   bc, $0101                                   ; $6e7e: $01 $01 $01
	ld   bc, $0101                                   ; $6e81: $01 $01 $01
	ld   bc, $0101                                   ; $6e84: $01 $01 $01
	ld   bc, $0101                                   ; $6e87: $01 $01 $01
	ld   bc, $0101                                   ; $6e8a: $01 $01 $01
	ld   bc, $0101                                   ; $6e8d: $01 $01 $01
	nop                                              ; $6e90: $00
	nop                                              ; $6e91: $00
	nop                                              ; $6e92: $00
	nop                                              ; $6e93: $00
	nop                                              ; $6e94: $00
	nop                                              ; $6e95: $00
	nop                                              ; $6e96: $00
	nop                                              ; $6e97: $00
	nop                                              ; $6e98: $00
	nop                                              ; $6e99: $00
	nop                                              ; $6e9a: $00
	nop                                              ; $6e9b: $00
	nop                                              ; $6e9c: $00
	nop                                              ; $6e9d: $00
	nop                                              ; $6e9e: $00
	nop                                              ; $6e9f: $00
	nop                                              ; $6ea0: $00
	nop                                              ; $6ea1: $00
	nop                                              ; $6ea2: $00
	nop                                              ; $6ea3: $00
	nop                                              ; $6ea4: $00
	nop                                              ; $6ea5: $00
	nop                                              ; $6ea6: $00
	nop                                              ; $6ea7: $00
	nop                                              ; $6ea8: $00
	nop                                              ; $6ea9: $00
	nop                                              ; $6eaa: $00
	nop                                              ; $6eab: $00
	nop                                              ; $6eac: $00
	nop                                              ; $6ead: $00
	nop                                              ; $6eae: $00
	nop                                              ; $6eaf: $00
	nop                                              ; $6eb0: $00
	nop                                              ; $6eb1: $00
	nop                                              ; $6eb2: $00
	nop                                              ; $6eb3: $00
	nop                                              ; $6eb4: $00
	nop                                              ; $6eb5: $00
	nop                                              ; $6eb6: $00
	nop                                              ; $6eb7: $00
	nop                                              ; $6eb8: $00
	nop                                              ; $6eb9: $00
	nop                                              ; $6eba: $00
	nop                                              ; $6ebb: $00
	nop                                              ; $6ebc: $00
	nop                                              ; $6ebd: $00
	nop                                              ; $6ebe: $00
	nop                                              ; $6ebf: $00
	nop                                              ; $6ec0: $00
	nop                                              ; $6ec1: $00
	nop                                              ; $6ec2: $00
	nop                                              ; $6ec3: $00
	nop                                              ; $6ec4: $00
	nop                                              ; $6ec5: $00
	nop                                              ; $6ec6: $00
	nop                                              ; $6ec7: $00
	nop                                              ; $6ec8: $00
	nop                                              ; $6ec9: $00
	nop                                              ; $6eca: $00
	nop                                              ; $6ecb: $00
	nop                                              ; $6ecc: $00
	nop                                              ; $6ecd: $00
	nop                                              ; $6ece: $00
	nop                                              ; $6ecf: $00
	nop                                              ; $6ed0: $00
	nop                                              ; $6ed1: $00
	nop                                              ; $6ed2: $00
	nop                                              ; $6ed3: $00
	nop                                              ; $6ed4: $00
	nop                                              ; $6ed5: $00
	nop                                              ; $6ed6: $00
	nop                                              ; $6ed7: $00
	nop                                              ; $6ed8: $00
	nop                                              ; $6ed9: $00
	nop                                              ; $6eda: $00
	nop                                              ; $6edb: $00
	nop                                              ; $6edc: $00
	nop                                              ; $6edd: $00
	nop                                              ; $6ede: $00
	nop                                              ; $6edf: $00
	nop                                              ; $6ee0: $00
	nop                                              ; $6ee1: $00
	nop                                              ; $6ee2: $00
	nop                                              ; $6ee3: $00
	nop                                              ; $6ee4: $00
	nop                                              ; $6ee5: $00
	nop                                              ; $6ee6: $00
	nop                                              ; $6ee7: $00
	nop                                              ; $6ee8: $00
	nop                                              ; $6ee9: $00
	nop                                              ; $6eea: $00
	nop                                              ; $6eeb: $00
	nop                                              ; $6eec: $00
	nop                                              ; $6eed: $00
	nop                                              ; $6eee: $00
	nop                                              ; $6eef: $00
	nop                                              ; $6ef0: $00
	nop                                              ; $6ef1: $00
	nop                                              ; $6ef2: $00
	nop                                              ; $6ef3: $00
	nop                                              ; $6ef4: $00
	nop                                              ; $6ef5: $00
	nop                                              ; $6ef6: $00
	nop                                              ; $6ef7: $00
	nop                                              ; $6ef8: $00
	nop                                              ; $6ef9: $00
	nop                                              ; $6efa: $00
	nop                                              ; $6efb: $00
	nop                                              ; $6efc: $00
	nop                                              ; $6efd: $00
	nop                                              ; $6efe: $00
	nop                                              ; $6eff: $00
	nop                                              ; $6f00: $00
	nop                                              ; $6f01: $00
	nop                                              ; $6f02: $00
	nop                                              ; $6f03: $00
	nop                                              ; $6f04: $00
	nop                                              ; $6f05: $00
	nop                                              ; $6f06: $00
	nop                                              ; $6f07: $00
	ld   bc, $0101                                   ; $6f08: $01 $01 $01
	ld   bc, $0101                                   ; $6f0b: $01 $01 $01
	ld   bc, $0101                                   ; $6f0e: $01 $01 $01
	ld   bc, $0101                                   ; $6f11: $01 $01 $01
	ld   bc, $0101                                   ; $6f14: $01 $01 $01
	ld   bc, $0101                                   ; $6f17: $01 $01 $01
	ld   b, c                                        ; $6f1a: $41
	ld   b, c                                        ; $6f1b: $41
	ld   bc, $0001                                   ; $6f1c: $01 $01 $00
	nop                                              ; $6f1f: $00
	nop                                              ; $6f20: $00
	nop                                              ; $6f21: $00
	nop                                              ; $6f22: $00
	nop                                              ; $6f23: $00
	nop                                              ; $6f24: $00
	nop                                              ; $6f25: $00
	nop                                              ; $6f26: $00
	nop                                              ; $6f27: $00
	nop                                              ; $6f28: $00
	nop                                              ; $6f29: $00
	nop                                              ; $6f2a: $00
	nop                                              ; $6f2b: $00
	nop                                              ; $6f2c: $00
	ld   bc, $0101                                   ; $6f2d: $01 $01 $01
	ld   bc, $0001                                   ; $6f30: $01 $01 $00
	nop                                              ; $6f33: $00
	nop                                              ; $6f34: $00
	nop                                              ; $6f35: $00
	nop                                              ; $6f36: $00
	nop                                              ; $6f37: $00
	nop                                              ; $6f38: $00
	nop                                              ; $6f39: $00
	nop                                              ; $6f3a: $00
	nop                                              ; $6f3b: $00
	nop                                              ; $6f3c: $00
	nop                                              ; $6f3d: $00
	nop                                              ; $6f3e: $00
	nop                                              ; $6f3f: $00
	nop                                              ; $6f40: $00
	ld   bc, $0101                                   ; $6f41: $01 $01 $01
	ld   bc, $0001                                   ; $6f44: $01 $01 $00
	nop                                              ; $6f47: $00
	nop                                              ; $6f48: $00
	nop                                              ; $6f49: $00
	nop                                              ; $6f4a: $00
	nop                                              ; $6f4b: $00
	nop                                              ; $6f4c: $00
	nop                                              ; $6f4d: $00
	nop                                              ; $6f4e: $00
	nop                                              ; $6f4f: $00
	nop                                              ; $6f50: $00
	nop                                              ; $6f51: $00
	nop                                              ; $6f52: $00
	nop                                              ; $6f53: $00
	nop                                              ; $6f54: $00
	ld   bc, $0101                                   ; $6f55: $01 $01 $01
	ld   bc, $0001                                   ; $6f58: $01 $01 $00
	nop                                              ; $6f5b: $00
	nop                                              ; $6f5c: $00
	nop                                              ; $6f5d: $00
	nop                                              ; $6f5e: $00
	nop                                              ; $6f5f: $00
	nop                                              ; $6f60: $00
	nop                                              ; $6f61: $00
	nop                                              ; $6f62: $00
	nop                                              ; $6f63: $00
	nop                                              ; $6f64: $00
	nop                                              ; $6f65: $00
	nop                                              ; $6f66: $00
	nop                                              ; $6f67: $00
	nop                                              ; $6f68: $00
	ld   bc, $0101                                   ; $6f69: $01 $01 $01
	ld   bc, $0001                                   ; $6f6c: $01 $01 $00
	nop                                              ; $6f6f: $00
	nop                                              ; $6f70: $00
	nop                                              ; $6f71: $00
	nop                                              ; $6f72: $00
	nop                                              ; $6f73: $00
	nop                                              ; $6f74: $00
	nop                                              ; $6f75: $00
	nop                                              ; $6f76: $00
	nop                                              ; $6f77: $00
	nop                                              ; $6f78: $00
	nop                                              ; $6f79: $00
	nop                                              ; $6f7a: $00
	nop                                              ; $6f7b: $00
	nop                                              ; $6f7c: $00
	ld   bc, $0101                                   ; $6f7d: $01 $01 $01
	ld   bc, $0001                                   ; $6f80: $01 $01 $00
	nop                                              ; $6f83: $00
	nop                                              ; $6f84: $00
	nop                                              ; $6f85: $00
	nop                                              ; $6f86: $00
	nop                                              ; $6f87: $00
	nop                                              ; $6f88: $00
	nop                                              ; $6f89: $00
	nop                                              ; $6f8a: $00
	nop                                              ; $6f8b: $00
	nop                                              ; $6f8c: $00
	nop                                              ; $6f8d: $00
	nop                                              ; $6f8e: $00
	nop                                              ; $6f8f: $00
	nop                                              ; $6f90: $00
	ld   bc, $0101                                   ; $6f91: $01 $01 $01
	ld   bc, $0001                                   ; $6f94: $01 $01 $00
	nop                                              ; $6f97: $00
	nop                                              ; $6f98: $00
	nop                                              ; $6f99: $00
	nop                                              ; $6f9a: $00
	nop                                              ; $6f9b: $00
	nop                                              ; $6f9c: $00
	nop                                              ; $6f9d: $00
	nop                                              ; $6f9e: $00
	nop                                              ; $6f9f: $00
	nop                                              ; $6fa0: $00
	nop                                              ; $6fa1: $00
	nop                                              ; $6fa2: $00
	nop                                              ; $6fa3: $00
	nop                                              ; $6fa4: $00
	ld   bc, $0101                                   ; $6fa5: $01 $01 $01
	ld   bc, $0001                                   ; $6fa8: $01 $01 $00
	nop                                              ; $6fab: $00
	nop                                              ; $6fac: $00
	nop                                              ; $6fad: $00
	nop                                              ; $6fae: $00
	nop                                              ; $6faf: $00
	nop                                              ; $6fb0: $00
	nop                                              ; $6fb1: $00
	nop                                              ; $6fb2: $00
	nop                                              ; $6fb3: $00
	nop                                              ; $6fb4: $00
	nop                                              ; $6fb5: $00
	nop                                              ; $6fb6: $00
	nop                                              ; $6fb7: $00
	nop                                              ; $6fb8: $00
	ld   bc, $0101                                   ; $6fb9: $01 $01 $01
	ld   bc, $0001                                   ; $6fbc: $01 $01 $00
	nop                                              ; $6fbf: $00
	nop                                              ; $6fc0: $00
	nop                                              ; $6fc1: $00
	nop                                              ; $6fc2: $00
	nop                                              ; $6fc3: $00
	nop                                              ; $6fc4: $00
	nop                                              ; $6fc5: $00
	nop                                              ; $6fc6: $00
	nop                                              ; $6fc7: $00
	nop                                              ; $6fc8: $00
	nop                                              ; $6fc9: $00
	nop                                              ; $6fca: $00
	nop                                              ; $6fcb: $00
	nop                                              ; $6fcc: $00
	ld   bc, $0101                                   ; $6fcd: $01 $01 $01
	ld   bc, $0001                                   ; $6fd0: $01 $01 $00
	nop                                              ; $6fd3: $00
	nop                                              ; $6fd4: $00
	nop                                              ; $6fd5: $00
	nop                                              ; $6fd6: $00
	nop                                              ; $6fd7: $00
	nop                                              ; $6fd8: $00
	nop                                              ; $6fd9: $00
	nop                                              ; $6fda: $00
	nop                                              ; $6fdb: $00
	nop                                              ; $6fdc: $00
	nop                                              ; $6fdd: $00
	nop                                              ; $6fde: $00
	nop                                              ; $6fdf: $00
	nop                                              ; $6fe0: $00
	ld   bc, $0101                                   ; $6fe1: $01 $01 $01
	ld   bc, $0001                                   ; $6fe4: $01 $01 $00
	nop                                              ; $6fe7: $00
	nop                                              ; $6fe8: $00
	nop                                              ; $6fe9: $00
	nop                                              ; $6fea: $00
	nop                                              ; $6feb: $00
	nop                                              ; $6fec: $00
	nop                                              ; $6fed: $00
	nop                                              ; $6fee: $00
	nop                                              ; $6fef: $00
	nop                                              ; $6ff0: $00
	nop                                              ; $6ff1: $00
	nop                                              ; $6ff2: $00
	nop                                              ; $6ff3: $00
	nop                                              ; $6ff4: $00
	ld   bc, $0101                                   ; $6ff5: $01 $01 $01
	ld   bc, $0001                                   ; $6ff8: $01 $01 $00
	nop                                              ; $6ffb: $00

Call_099_6ffc:
	nop                                              ; $6ffc: $00
	nop                                              ; $6ffd: $00
	nop                                              ; $6ffe: $00
	nop                                              ; $6fff: $00
	nop                                              ; $7000: $00
	nop                                              ; $7001: $00
	nop                                              ; $7002: $00
	nop                                              ; $7003: $00
	nop                                              ; $7004: $00
	nop                                              ; $7005: $00
	nop                                              ; $7006: $00
	nop                                              ; $7007: $00
	nop                                              ; $7008: $00
	ld   bc, $0101                                   ; $7009: $01 $01 $01
	ld   bc, $4101                                   ; $700c: $01 $01 $41
	ld   b, c                                        ; $700f: $41
	ld   b, c                                        ; $7010: $41
	ld   b, c                                        ; $7011: $41
	ld   b, c                                        ; $7012: $41
	ld   b, c                                        ; $7013: $41
	ld   b, c                                        ; $7014: $41
	ld   b, c                                        ; $7015: $41
	ld   b, c                                        ; $7016: $41
	ld   b, c                                        ; $7017: $41
	ld   b, c                                        ; $7018: $41
	ld   b, c                                        ; $7019: $41
	ld   b, c                                        ; $701a: $41
	ld   b, c                                        ; $701b: $41
	ld   b, c                                        ; $701c: $41
	ld   b, c                                        ; $701d: $41
	ld   bc, $0001                                   ; $701e: $01 $01 $00
	ld   [$0808], sp                                 ; $7021: $08 $08 $08
	ld   [$0808], sp                                 ; $7024: $08 $08 $08
	ld   [$0808], sp                                 ; $7027: $08 $08 $08
	ld   [$0808], sp                                 ; $702a: $08 $08 $08
	ld   [$0808], sp                                 ; $702d: $08 $08 $08
	ld   [$0808], sp                                 ; $7030: $08 $08 $08
	nop                                              ; $7033: $00
	nop                                              ; $7034: $00
	ld   [$0808], sp                                 ; $7035: $08 $08 $08
	ld   [$0808], sp                                 ; $7038: $08 $08 $08
	ld   [$0808], sp                                 ; $703b: $08 $08 $08
	ld   [$0808], sp                                 ; $703e: $08 $08 $08
	ld   [$0808], sp                                 ; $7041: $08 $08 $08
	ld   [$0808], sp                                 ; $7044: $08 $08 $08
	nop                                              ; $7047: $00
	nop                                              ; $7048: $00
	ld   [$0808], sp                                 ; $7049: $08 $08 $08
	ld   [$0808], sp                                 ; $704c: $08 $08 $08
	ld   [$0808], sp                                 ; $704f: $08 $08 $08
	ld   [$0808], sp                                 ; $7052: $08 $08 $08
	ld   [$0808], sp                                 ; $7055: $08 $08 $08
	ld   [$0808], sp                                 ; $7058: $08 $08 $08
	nop                                              ; $705b: $00
	nop                                              ; $705c: $00
	ld   [$0808], sp                                 ; $705d: $08 $08 $08
	ld   [$0808], sp                                 ; $7060: $08 $08 $08
	ld   [$0808], sp                                 ; $7063: $08 $08 $08
	ld   [$0808], sp                                 ; $7066: $08 $08 $08
	ld   [$0808], sp                                 ; $7069: $08 $08 $08
	ld   [$0808], sp                                 ; $706c: $08 $08 $08
	nop                                              ; $706f: $00
	db   $f4                                         ; $7070: $f4
	push af                                          ; $7071: $f5
	ldh  a, [c]                                      ; $7072: $f2
	ldh  a, [c]                                      ; $7073: $f2
	ldh  a, [c]                                      ; $7074: $f2
	ldh  a, [c]                                      ; $7075: $f2
	ldh  a, [c]                                      ; $7076: $f2
	ldh  a, [c]                                      ; $7077: $f2
	ldh  a, [c]                                      ; $7078: $f2
	ldh  a, [c]                                      ; $7079: $f2
	ldh  a, [c]                                      ; $707a: $f2
	ldh  a, [c]                                      ; $707b: $f2
	ldh  a, [c]                                      ; $707c: $f2
	ldh  a, [c]                                      ; $707d: $f2
	ldh  a, [c]                                      ; $707e: $f2
	ldh  a, [c]                                      ; $707f: $f2
	ldh  a, [c]                                      ; $7080: $f2
	db   $fc                                         ; $7081: $fc
	jp   hl                                          ; $7082: $e9


	db   $eb                                         ; $7083: $eb
	add  b                                           ; $7084: $80
	sub  b                                           ; $7085: $90
	sub  d                                           ; $7086: $92
	sub  h                                           ; $7087: $94
	sub  [hl]                                        ; $7088: $96
	sbc  b                                           ; $7089: $98
	sbc  d                                           ; $708a: $9a
	sbc  h                                           ; $708b: $9c
	sbc  [hl]                                        ; $708c: $9e
	and  b                                           ; $708d: $a0
	and  d                                           ; $708e: $a2
	and  h                                           ; $708f: $a4
	and  [hl]                                        ; $7090: $a6
	xor  b                                           ; $7091: $a8
	xor  d                                           ; $7092: $aa
	xor  h                                           ; $7093: $ac
	xor  [hl]                                        ; $7094: $ae
	or   b                                           ; $7095: $b0
	or   d                                           ; $7096: $b2
	add  b                                           ; $7097: $80
	add  b                                           ; $7098: $80
	sub  c                                           ; $7099: $91
	sub  e                                           ; $709a: $93
	sub  l                                           ; $709b: $95
	sub  a                                           ; $709c: $97
	sbc  c                                           ; $709d: $99
	sbc  e                                           ; $709e: $9b
	sbc  l                                           ; $709f: $9d
	sbc  a                                           ; $70a0: $9f
	and  c                                           ; $70a1: $a1
	and  e                                           ; $70a2: $a3
	and  l                                           ; $70a3: $a5
	and  a                                           ; $70a4: $a7
	xor  c                                           ; $70a5: $a9
	xor  e                                           ; $70a6: $ab
	xor  l                                           ; $70a7: $ad
	xor  a                                           ; $70a8: $af
	or   c                                           ; $70a9: $b1
	or   e                                           ; $70aa: $b3
	add  b                                           ; $70ab: $80
	add  b                                           ; $70ac: $80
	or   h                                           ; $70ad: $b4
	or   [hl]                                        ; $70ae: $b6
	cp   b                                           ; $70af: $b8
	cp   d                                           ; $70b0: $ba
	cp   h                                           ; $70b1: $bc
	cp   [hl]                                        ; $70b2: $be
	ret  nz                                          ; $70b3: $c0

	jp   nz, $c6c4                                   ; $70b4: $c2 $c4 $c6

	ret  z                                           ; $70b7: $c8

	jp   z, $cecc                                    ; $70b8: $ca $cc $ce

	ret  nc                                          ; $70bb: $d0

	jp   nc, $d6d4                                   ; $70bc: $d2 $d4 $d6

	add  b                                           ; $70bf: $80
	add  b                                           ; $70c0: $80
	or   l                                           ; $70c1: $b5
	or   a                                           ; $70c2: $b7
	cp   c                                           ; $70c3: $b9
	cp   e                                           ; $70c4: $bb
	cp   l                                           ; $70c5: $bd
	cp   a                                           ; $70c6: $bf
	pop  bc                                          ; $70c7: $c1
	jp   $c7c5                                       ; $70c8: $c3 $c5 $c7


	ret                                              ; $70cb: $c9


	set  1, l                                        ; $70cc: $cb $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $70ce: $cf
	pop  de                                          ; $70cf: $d1
	db   $d3                                         ; $70d0: $d3
	push de                                          ; $70d1: $d5
	rst  $10                                         ; $70d2: $d7
	add  b                                           ; $70d3: $80
	db   $f4                                         ; $70d4: $f4
	push af                                          ; $70d5: $f5
	ldh  a, [c]                                      ; $70d6: $f2
	ldh  a, [c]                                      ; $70d7: $f2
	ldh  a, [c]                                      ; $70d8: $f2
	ldh  a, [c]                                      ; $70d9: $f2
	ldh  a, [c]                                      ; $70da: $f2
	ldh  a, [c]                                      ; $70db: $f2
	ldh  a, [c]                                      ; $70dc: $f2
	ldh  a, [c]                                      ; $70dd: $f2
	ldh  a, [c]                                      ; $70de: $f2
	ldh  a, [c]                                      ; $70df: $f2
	ldh  a, [c]                                      ; $70e0: $f2
	ldh  a, [c]                                      ; $70e1: $f2
	ldh  a, [c]                                      ; $70e2: $f2
	ldh  a, [c]                                      ; $70e3: $f2
	ldh  a, [c]                                      ; $70e4: $f2
	db   $fc                                         ; $70e5: $fc
	jp   hl                                          ; $70e6: $e9


	db   $eb                                         ; $70e7: $eb
	db   $fd                                         ; $70e8: $fd
	rst  $38                                         ; $70e9: $ff
	rst  $38                                         ; $70ea: $ff
	ret  nc                                          ; $70eb: $d0

	pop  de                                          ; $70ec: $d1
	jp   nc, $d4d3                                   ; $70ed: $d2 $d3 $d4

	push de                                          ; $70f0: $d5
	sub  $ff                                         ; $70f1: $d6 $ff
	rst  $20                                         ; $70f3: $e7
	jp   c, $dada                                    ; $70f4: $da $da $da

	jp   c, $eeda                                    ; $70f7: $da $da $ee

	rst  $38                                         ; $70fa: $ff
	reti                                             ; $70fb: $d9


	cp   $ec                                         ; $70fc: $fe $ec
	db   $ec                                         ; $70fe: $ec
	ldh  [$e1], a                                    ; $70ff: $e0 $e1
	ldh  [c], a                                      ; $7101: $e2

Jump_099_7102:
	db   $e3                                         ; $7102: $e3
	db   $e4                                         ; $7103: $e4
	push hl                                          ; $7104: $e5
	and  $ec                                         ; $7105: $e6 $ec
	db   $ed                                         ; $7107: $ed
	db   $db                                         ; $7108: $db
	db   $db                                         ; $7109: $db
	db   $db                                         ; $710a: $db
	db   $db                                         ; $710b: $db
	db   $db                                         ; $710c: $db
	rst  $28                                         ; $710d: $ef
	db   $ec                                         ; $710e: $ec
	ret  c                                           ; $710f: $d8

	add  b                                           ; $7110: $80
	nop                                              ; $7111: $00
	ld   [bc], a                                     ; $7112: $02
	inc  b                                           ; $7113: $04
	ld   b, $08                                      ; $7114: $06 $08
	ld   a, [bc]                                     ; $7116: $0a
	inc  c                                           ; $7117: $0c
	ld   c, $10                                      ; $7118: $0e $10
	ld   [de], a                                     ; $711a: $12
	inc  d                                           ; $711b: $14
	ld   d, $18                                      ; $711c: $16 $18
	ld   a, [de]                                     ; $711e: $1a
	inc  e                                           ; $711f: $1c
	ld   e, $20                                      ; $7120: $1e $20
	ld   [hl+], a                                    ; $7122: $22
	add  b                                           ; $7123: $80
	add  b                                           ; $7124: $80
	ld   bc, $0503                                   ; $7125: $01 $03 $05
	rlca                                             ; $7128: $07
	add  hl, bc                                      ; $7129: $09
	dec  bc                                          ; $712a: $0b
	dec  c                                           ; $712b: $0d
	rrca                                             ; $712c: $0f
	ld   de, $1513                                   ; $712d: $11 $13 $15
	rla                                              ; $7130: $17
	add  hl, de                                      ; $7131: $19
	dec  de                                          ; $7132: $1b
	dec  e                                           ; $7133: $1d
	rra                                              ; $7134: $1f
	ld   hl, $8023                                   ; $7135: $21 $23 $80
	add  b                                           ; $7138: $80
	inc  h                                           ; $7139: $24
	ld   h, $28                                      ; $713a: $26 $28
	ld   a, [hl+]                                    ; $713c: $2a
	inc  l                                           ; $713d: $2c
	ld   l, $30                                      ; $713e: $2e $30
	ld   [hl-], a                                    ; $7140: $32
	inc  [hl]                                        ; $7141: $34
	ld   [hl], $38                                   ; $7142: $36 $38
	ld   a, [hl-]                                    ; $7144: $3a
	inc  a                                           ; $7145: $3c
	ld   a, $40                                      ; $7146: $3e $40
	ld   b, d                                        ; $7148: $42
	ld   b, h                                        ; $7149: $44
	ld   b, [hl]                                     ; $714a: $46
	add  b                                           ; $714b: $80
	add  b                                           ; $714c: $80
	dec  h                                           ; $714d: $25
	daa                                              ; $714e: $27
	add  hl, hl                                      ; $714f: $29
	dec  hl                                          ; $7150: $2b
	dec  l                                           ; $7151: $2d
	cpl                                              ; $7152: $2f
	ld   sp, $3533                                   ; $7153: $31 $33 $35
	scf                                              ; $7156: $37
	add  hl, sp                                      ; $7157: $39
	dec  sp                                          ; $7158: $3b
	dec  a                                           ; $7159: $3d
	ccf                                              ; $715a: $3f
	ld   b, c                                        ; $715b: $41
	ld   b, e                                        ; $715c: $43
	ld   b, l                                        ; $715d: $45
	ld   b, a                                        ; $715e: $47
	add  b                                           ; $715f: $80
	rst  $38                                         ; $7160: $ff
	rst  $38                                         ; $7161: $ff
	rst  $38                                         ; $7162: $ff
	rst  $38                                         ; $7163: $ff
	rst  $38                                         ; $7164: $ff
	rst  $38                                         ; $7165: $ff
	rst  $38                                         ; $7166: $ff
	rst  $38                                         ; $7167: $ff
	rst  $38                                         ; $7168: $ff
	rst  $38                                         ; $7169: $ff
	rst  $38                                         ; $716a: $ff
	rst  $38                                         ; $716b: $ff
	rst  $38                                         ; $716c: $ff
	rst  $38                                         ; $716d: $ff
	rst  $38                                         ; $716e: $ff
	rst  $38                                         ; $716f: $ff
	rst  $38                                         ; $7170: $ff
	rst  $38                                         ; $7171: $ff
	rst  $38                                         ; $7172: $ff
	rst  $38                                         ; $7173: $ff
	rst  $38                                         ; $7174: $ff
	rst  $38                                         ; $7175: $ff
	rst  $38                                         ; $7176: $ff
	rst  $38                                         ; $7177: $ff
	rst  $38                                         ; $7178: $ff
	rst  $38                                         ; $7179: $ff
	rst  $38                                         ; $717a: $ff
	rst  $38                                         ; $717b: $ff
	rst  $38                                         ; $717c: $ff
	rst  $38                                         ; $717d: $ff
	rst  $38                                         ; $717e: $ff
	rst  $38                                         ; $717f: $ff
	rst  $38                                         ; $7180: $ff
	rst  $38                                         ; $7181: $ff
	rst  $38                                         ; $7182: $ff
	rst  $38                                         ; $7183: $ff
	rst  $38                                         ; $7184: $ff
	rst  $38                                         ; $7185: $ff
	rst  $38                                         ; $7186: $ff
	rst  $38                                         ; $7187: $ff
	ldh  a, [$f1]                                    ; $7188: $f0 $f1
	ldh  a, [c]                                      ; $718a: $f2
	ldh  a, [c]                                      ; $718b: $f2
	ldh  a, [c]                                      ; $718c: $f2
	ldh  a, [c]                                      ; $718d: $f2
	ldh  a, [c]                                      ; $718e: $f2
	ldh  a, [c]                                      ; $718f: $f2
	ldh  a, [c]                                      ; $7190: $f2
	ldh  a, [c]                                      ; $7191: $f2
	ldh  a, [c]                                      ; $7192: $f2
	ldh  a, [c]                                      ; $7193: $f2
	ldh  a, [c]                                      ; $7194: $f2
	ldh  a, [c]                                      ; $7195: $f2
	ldh  a, [c]                                      ; $7196: $f2
	ldh  a, [c]                                      ; $7197: $f2
	ldh  a, [c]                                      ; $7198: $f2
	db   $fc                                         ; $7199: $fc
	jp   hl                                          ; $719a: $e9


	db   $eb                                         ; $719b: $eb
	ld   hl, sp-$06                                  ; $719c: $f8 $fa
	add  b                                           ; $719e: $80
	add  b                                           ; $719f: $80
	add  b                                           ; $71a0: $80
	add  b                                           ; $71a1: $80
	add  b                                           ; $71a2: $80
	add  b                                           ; $71a3: $80
	add  b                                           ; $71a4: $80
	add  b                                           ; $71a5: $80
	add  b                                           ; $71a6: $80
	add  b                                           ; $71a7: $80
	add  b                                           ; $71a8: $80
	add  b                                           ; $71a9: $80
	add  b                                           ; $71aa: $80
	add  b                                           ; $71ab: $80
	add  b                                           ; $71ac: $80
	ei                                               ; $71ad: $fb
	call c, $f8ea                                    ; $71ae: $dc $ea $f8
	ld   a, [$8080]                                  ; $71b1: $fa $80 $80
	add  b                                           ; $71b4: $80
	add  b                                           ; $71b5: $80
	add  b                                           ; $71b6: $80
	add  b                                           ; $71b7: $80
	add  b                                           ; $71b8: $80
	add  b                                           ; $71b9: $80
	add  b                                           ; $71ba: $80
	add  b                                           ; $71bb: $80
	add  b                                           ; $71bc: $80
	add  b                                           ; $71bd: $80
	add  b                                           ; $71be: $80
	add  b                                           ; $71bf: $80
	add  b                                           ; $71c0: $80
	ei                                               ; $71c1: $fb
	call c, $f8ea                                    ; $71c2: $dc $ea $f8
	ld   a, [$8080]                                  ; $71c5: $fa $80 $80
	add  b                                           ; $71c8: $80
	add  b                                           ; $71c9: $80
	add  b                                           ; $71ca: $80
	add  b                                           ; $71cb: $80
	add  b                                           ; $71cc: $80
	add  b                                           ; $71cd: $80
	add  b                                           ; $71ce: $80
	add  b                                           ; $71cf: $80
	add  b                                           ; $71d0: $80
	add  b                                           ; $71d1: $80
	add  b                                           ; $71d2: $80
	add  b                                           ; $71d3: $80
	add  b                                           ; $71d4: $80
	ei                                               ; $71d5: $fb
	call c, $f8ea                                    ; $71d6: $dc $ea $f8
	ld   a, [$8080]                                  ; $71d9: $fa $80 $80
	add  b                                           ; $71dc: $80
	add  b                                           ; $71dd: $80
	add  b                                           ; $71de: $80
	add  b                                           ; $71df: $80
	add  b                                           ; $71e0: $80
	add  b                                           ; $71e1: $80
	add  b                                           ; $71e2: $80
	add  b                                           ; $71e3: $80
	add  b                                           ; $71e4: $80
	add  b                                           ; $71e5: $80
	add  b                                           ; $71e6: $80
	add  b                                           ; $71e7: $80
	add  b                                           ; $71e8: $80
	ei                                               ; $71e9: $fb
	call c, $f8ea                                    ; $71ea: $dc $ea $f8
	ld   a, [$8080]                                  ; $71ed: $fa $80 $80
	add  b                                           ; $71f0: $80
	add  b                                           ; $71f1: $80
	add  b                                           ; $71f2: $80
	add  b                                           ; $71f3: $80
	add  b                                           ; $71f4: $80
	add  b                                           ; $71f5: $80
	add  b                                           ; $71f6: $80
	add  b                                           ; $71f7: $80
	add  b                                           ; $71f8: $80
	add  b                                           ; $71f9: $80
	add  b                                           ; $71fa: $80
	add  b                                           ; $71fb: $80
	add  b                                           ; $71fc: $80
	ei                                               ; $71fd: $fb
	call c, $f8ea                                    ; $71fe: $dc $ea $f8
	ld   a, [$8080]                                  ; $7201: $fa $80 $80
	add  b                                           ; $7204: $80
	add  b                                           ; $7205: $80
	add  b                                           ; $7206: $80
	add  b                                           ; $7207: $80
	add  b                                           ; $7208: $80
	add  b                                           ; $7209: $80
	add  b                                           ; $720a: $80
	add  b                                           ; $720b: $80
	add  b                                           ; $720c: $80
	add  b                                           ; $720d: $80
	add  b                                           ; $720e: $80
	add  b                                           ; $720f: $80
	add  b                                           ; $7210: $80
	ei                                               ; $7211: $fb
	call c, $f8ea                                    ; $7212: $dc $ea $f8
	ld   a, [$8080]                                  ; $7215: $fa $80 $80
	add  b                                           ; $7218: $80
	add  b                                           ; $7219: $80
	add  b                                           ; $721a: $80
	add  b                                           ; $721b: $80
	add  b                                           ; $721c: $80
	add  b                                           ; $721d: $80
	add  b                                           ; $721e: $80
	add  b                                           ; $721f: $80
	add  b                                           ; $7220: $80
	add  b                                           ; $7221: $80
	add  b                                           ; $7222: $80
	add  b                                           ; $7223: $80
	add  b                                           ; $7224: $80
	ei                                               ; $7225: $fb
	call c, $f8ea                                    ; $7226: $dc $ea $f8
	ld   a, [$8080]                                  ; $7229: $fa $80 $80
	add  b                                           ; $722c: $80
	add  b                                           ; $722d: $80
	add  b                                           ; $722e: $80
	add  b                                           ; $722f: $80
	add  b                                           ; $7230: $80
	add  b                                           ; $7231: $80
	add  b                                           ; $7232: $80
	add  b                                           ; $7233: $80
	add  b                                           ; $7234: $80
	add  b                                           ; $7235: $80
	add  b                                           ; $7236: $80
	add  b                                           ; $7237: $80
	add  b                                           ; $7238: $80
	ei                                               ; $7239: $fb
	call c, $f8ea                                    ; $723a: $dc $ea $f8
	ld   a, [$8080]                                  ; $723d: $fa $80 $80
	add  b                                           ; $7240: $80
	add  b                                           ; $7241: $80
	add  b                                           ; $7242: $80
	add  b                                           ; $7243: $80
	add  b                                           ; $7244: $80
	add  b                                           ; $7245: $80
	add  b                                           ; $7246: $80
	add  b                                           ; $7247: $80
	add  b                                           ; $7248: $80
	add  b                                           ; $7249: $80
	add  b                                           ; $724a: $80
	add  b                                           ; $724b: $80
	add  b                                           ; $724c: $80
	ei                                               ; $724d: $fb
	call c, $f8ea                                    ; $724e: $dc $ea $f8
	ld   a, [$8080]                                  ; $7251: $fa $80 $80
	add  b                                           ; $7254: $80
	add  b                                           ; $7255: $80
	add  b                                           ; $7256: $80
	add  b                                           ; $7257: $80
	add  b                                           ; $7258: $80
	add  b                                           ; $7259: $80
	add  b                                           ; $725a: $80
	add  b                                           ; $725b: $80
	add  b                                           ; $725c: $80
	add  b                                           ; $725d: $80
	add  b                                           ; $725e: $80
	add  b                                           ; $725f: $80
	add  b                                           ; $7260: $80
	ei                                               ; $7261: $fb
	call c, $f8ea                                    ; $7262: $dc $ea $f8
	ld   a, [$8080]                                  ; $7265: $fa $80 $80
	add  b                                           ; $7268: $80
	add  b                                           ; $7269: $80
	add  b                                           ; $726a: $80
	add  b                                           ; $726b: $80
	add  b                                           ; $726c: $80
	add  b                                           ; $726d: $80
	add  b                                           ; $726e: $80
	add  b                                           ; $726f: $80
	add  b                                           ; $7270: $80
	add  b                                           ; $7271: $80
	add  b                                           ; $7272: $80
	add  b                                           ; $7273: $80
	add  b                                           ; $7274: $80
	ei                                               ; $7275: $fb
	call c, $f8ea                                    ; $7276: $dc $ea $f8
	ld   a, [$8080]                                  ; $7279: $fa $80 $80
	add  b                                           ; $727c: $80
	add  b                                           ; $727d: $80
	add  b                                           ; $727e: $80
	add  b                                           ; $727f: $80
	add  b                                           ; $7280: $80
	add  b                                           ; $7281: $80
	add  b                                           ; $7282: $80
	add  b                                           ; $7283: $80
	add  b                                           ; $7284: $80
	add  b                                           ; $7285: $80
	add  b                                           ; $7286: $80
	add  b                                           ; $7287: $80
	add  b                                           ; $7288: $80
	ei                                               ; $7289: $fb
	call c, $f4ea                                    ; $728a: $dc $ea $f4
	push af                                          ; $728d: $f5
	ldh  a, [c]                                      ; $728e: $f2
	ldh  a, [c]                                      ; $728f: $f2
	ldh  a, [c]                                      ; $7290: $f2
	ldh  a, [c]                                      ; $7291: $f2
	ldh  a, [c]                                      ; $7292: $f2
	ldh  a, [c]                                      ; $7293: $f2
	ldh  a, [c]                                      ; $7294: $f2
	ldh  a, [c]                                      ; $7295: $f2
	ldh  a, [c]                                      ; $7296: $f2
	ldh  a, [c]                                      ; $7297: $f2
	ldh  a, [c]                                      ; $7298: $f2
	ldh  a, [c]                                      ; $7299: $f2
	ldh  a, [c]                                      ; $729a: $f2
	ldh  a, [c]                                      ; $729b: $f2
	ldh  a, [c]                                      ; $729c: $f2
	db   $fc                                         ; $729d: $fc
	jp   hl                                          ; $729e: $e9


	db   $eb                                         ; $729f: $eb
	add  b                                           ; $72a0: $80
	sub  b                                           ; $72a1: $90
	sub  d                                           ; $72a2: $92
	sub  h                                           ; $72a3: $94
	sub  [hl]                                        ; $72a4: $96
	sbc  b                                           ; $72a5: $98
	sbc  d                                           ; $72a6: $9a
	sbc  h                                           ; $72a7: $9c
	sbc  [hl]                                        ; $72a8: $9e
	and  b                                           ; $72a9: $a0
	and  d                                           ; $72aa: $a2
	and  h                                           ; $72ab: $a4
	and  [hl]                                        ; $72ac: $a6
	xor  b                                           ; $72ad: $a8
	xor  d                                           ; $72ae: $aa
	xor  h                                           ; $72af: $ac
	xor  [hl]                                        ; $72b0: $ae
	or   b                                           ; $72b1: $b0
	or   d                                           ; $72b2: $b2
	add  b                                           ; $72b3: $80
	add  b                                           ; $72b4: $80
	sub  c                                           ; $72b5: $91
	sub  e                                           ; $72b6: $93
	sub  l                                           ; $72b7: $95
	sub  a                                           ; $72b8: $97
	sbc  c                                           ; $72b9: $99
	sbc  e                                           ; $72ba: $9b
	sbc  l                                           ; $72bb: $9d
	sbc  a                                           ; $72bc: $9f
	and  c                                           ; $72bd: $a1
	and  e                                           ; $72be: $a3
	and  l                                           ; $72bf: $a5
	and  a                                           ; $72c0: $a7
	xor  c                                           ; $72c1: $a9
	xor  e                                           ; $72c2: $ab
	xor  l                                           ; $72c3: $ad
	xor  a                                           ; $72c4: $af
	or   c                                           ; $72c5: $b1
	or   e                                           ; $72c6: $b3
	add  b                                           ; $72c7: $80
	add  b                                           ; $72c8: $80
	or   h                                           ; $72c9: $b4
	or   [hl]                                        ; $72ca: $b6
	cp   b                                           ; $72cb: $b8
	cp   d                                           ; $72cc: $ba
	cp   h                                           ; $72cd: $bc
	cp   [hl]                                        ; $72ce: $be
	ret  nz                                          ; $72cf: $c0

	jp   nz, $c6c4                                   ; $72d0: $c2 $c4 $c6

	ret  z                                           ; $72d3: $c8

	jp   z, $cecc                                    ; $72d4: $ca $cc $ce

	ret  nc                                          ; $72d7: $d0

	jp   nc, $d6d4                                   ; $72d8: $d2 $d4 $d6

	add  b                                           ; $72db: $80
	add  b                                           ; $72dc: $80
	or   l                                           ; $72dd: $b5
	or   a                                           ; $72de: $b7
	cp   c                                           ; $72df: $b9
	cp   e                                           ; $72e0: $bb
	cp   l                                           ; $72e1: $bd
	cp   a                                           ; $72e2: $bf
	pop  bc                                          ; $72e3: $c1
	jp   $c7c5                                       ; $72e4: $c3 $c5 $c7


	ret                                              ; $72e7: $c9


	set  1, l                                        ; $72e8: $cb $cd
	rst  WaitUntilVBlankIntHandledIfLCDOn                                         ; $72ea: $cf
	pop  de                                          ; $72eb: $d1
	db   $d3                                         ; $72ec: $d3
	push de                                          ; $72ed: $d5
	rst  $10                                         ; $72ee: $d7
	add  b                                           ; $72ef: $80
	ld   b, $06                                      ; $72f0: $06 $06
	ld   b, $06                                      ; $72f2: $06 $06
	ld   b, $06                                      ; $72f4: $06 $06
	rlca                                             ; $72f6: $07
	rlca                                             ; $72f7: $07
	rlca                                             ; $72f8: $07
	rlca                                             ; $72f9: $07
	rlca                                             ; $72fa: $07
	rlca                                             ; $72fb: $07
	rlca                                             ; $72fc: $07
	rlca                                             ; $72fd: $07
	rlca                                             ; $72fe: $07
	rlca                                             ; $72ff: $07
	rlca                                             ; $7300: $07
	rlca                                             ; $7301: $07
	ld   b, $06                                      ; $7302: $06 $06
	ld   b, $06                                      ; $7304: $06 $06
	ld   b, $06                                      ; $7306: $06 $06
	ld   b, $06                                      ; $7308: $06 $06
	rlca                                             ; $730a: $07
	rlca                                             ; $730b: $07
	rlca                                             ; $730c: $07
	rlca                                             ; $730d: $07
	rlca                                             ; $730e: $07
	rlca                                             ; $730f: $07
	rlca                                             ; $7310: $07
	rlca                                             ; $7311: $07
	rlca                                             ; $7312: $07
	rlca                                             ; $7313: $07
	rlca                                             ; $7314: $07
	rlca                                             ; $7315: $07
	ld   b, $06                                      ; $7316: $06 $06
	ld   b, $06                                      ; $7318: $06 $06
	ld   b, $06                                      ; $731a: $06 $06
	ld   b, $06                                      ; $731c: $06 $06
	rlca                                             ; $731e: $07
	rlca                                             ; $731f: $07
	rlca                                             ; $7320: $07
	rlca                                             ; $7321: $07
	rlca                                             ; $7322: $07
	rlca                                             ; $7323: $07
	rlca                                             ; $7324: $07
	rlca                                             ; $7325: $07
	rlca                                             ; $7326: $07
	rlca                                             ; $7327: $07
	rlca                                             ; $7328: $07
	rlca                                             ; $7329: $07
	ld   b, $06                                      ; $732a: $06 $06
	ld   b, $06                                      ; $732c: $06 $06
	ld   b, $06                                      ; $732e: $06 $06
	ld   b, $06                                      ; $7330: $06 $06
	rlca                                             ; $7332: $07
	rlca                                             ; $7333: $07
	rlca                                             ; $7334: $07
	rlca                                             ; $7335: $07
	rlca                                             ; $7336: $07
	rlca                                             ; $7337: $07
	rlca                                             ; $7338: $07
	rlca                                             ; $7339: $07
	rlca                                             ; $733a: $07
	rlca                                             ; $733b: $07
	rlca                                             ; $733c: $07
	rlca                                             ; $733d: $07
	ld   b, $06                                      ; $733e: $06 $06
	ld   b, $06                                      ; $7340: $06 $06
	ld   b, $06                                      ; $7342: $06 $06
	ld   b, $06                                      ; $7344: $06 $06
	rlca                                             ; $7346: $07
	rlca                                             ; $7347: $07
	rlca                                             ; $7348: $07
	rlca                                             ; $7349: $07
	rlca                                             ; $734a: $07
	rlca                                             ; $734b: $07
	rlca                                             ; $734c: $07
	rlca                                             ; $734d: $07
	rlca                                             ; $734e: $07
	rlca                                             ; $734f: $07
	rlca                                             ; $7350: $07
	rlca                                             ; $7351: $07
	ld   b, $06                                      ; $7352: $06 $06
	ld   b, $06                                      ; $7354: $06 $06
	ld   b, $06                                      ; $7356: $06 $06
	ld   b, $06                                      ; $7358: $06 $06
	rlca                                             ; $735a: $07
	rlca                                             ; $735b: $07
	rlca                                             ; $735c: $07
	rlca                                             ; $735d: $07
	rlca                                             ; $735e: $07
	rlca                                             ; $735f: $07
	rlca                                             ; $7360: $07
	rlca                                             ; $7361: $07
	rlca                                             ; $7362: $07
	rlca                                             ; $7363: $07
	rlca                                             ; $7364: $07
	rlca                                             ; $7365: $07
	ld   b, $06                                      ; $7366: $06 $06
	ld   b, $06                                      ; $7368: $06 $06
	ld   b, $06                                      ; $736a: $06 $06
	ld   b, $06                                      ; $736c: $06 $06
	ld   b, $06                                      ; $736e: $06 $06
	ld   b, $06                                      ; $7370: $06 $06
	ld   b, $06                                      ; $7372: $06 $06
	ld   b, $06                                      ; $7374: $06 $06
	ld   b, $06                                      ; $7376: $06 $06
	ld   b, $06                                      ; $7378: $06 $06
	ld   b, $06                                      ; $737a: $06 $06
	inc  bc                                          ; $737c: $03
	inc  bc                                          ; $737d: $03
	inc  bc                                          ; $737e: $03
	inc  bc                                          ; $737f: $03
	inc  bc                                          ; $7380: $03
	ld   [bc], a                                     ; $7381: $02
	ld   [bc], a                                     ; $7382: $02
	ld   [bc], a                                     ; $7383: $02
	ld   [bc], a                                     ; $7384: $02
	ld   [bc], a                                     ; $7385: $02
	inc  bc                                          ; $7386: $03
	ld   [bc], a                                     ; $7387: $02
	ld   [bc], a                                     ; $7388: $02
	inc  bc                                          ; $7389: $03
	inc  bc                                          ; $738a: $03
	inc  bc                                          ; $738b: $03
	inc  bc                                          ; $738c: $03
	inc  bc                                          ; $738d: $03
	ld   [bc], a                                     ; $738e: $02
	inc  bc                                          ; $738f: $03
	inc  bc                                          ; $7390: $03
	inc  bc                                          ; $7391: $03
	inc  bc                                          ; $7392: $03
	inc  bc                                          ; $7393: $03
	inc  bc                                          ; $7394: $03
	ld   [bc], a                                     ; $7395: $02
	ld   [bc], a                                     ; $7396: $02
	ld   [bc], a                                     ; $7397: $02
	ld   [bc], a                                     ; $7398: $02
	ld   [bc], a                                     ; $7399: $02
	inc  bc                                          ; $739a: $03
	ld   [bc], a                                     ; $739b: $02
	ld   [bc], a                                     ; $739c: $02
	inc  bc                                          ; $739d: $03
	inc  bc                                          ; $739e: $03
	inc  bc                                          ; $739f: $03
	inc  bc                                          ; $73a0: $03
	inc  bc                                          ; $73a1: $03
	ld   [bc], a                                     ; $73a2: $02
	inc  bc                                          ; $73a3: $03
	inc  bc                                          ; $73a4: $03
	inc  bc                                          ; $73a5: $03
	inc  bc                                          ; $73a6: $03
	inc  bc                                          ; $73a7: $03
	inc  bc                                          ; $73a8: $03
	ld   [bc], a                                     ; $73a9: $02
	ld   [bc], a                                     ; $73aa: $02
	ld   [bc], a                                     ; $73ab: $02
	ld   [bc], a                                     ; $73ac: $02
	inc  bc                                          ; $73ad: $03
	inc  bc                                          ; $73ae: $03
	inc  bc                                          ; $73af: $03
	ld   [bc], a                                     ; $73b0: $02
	inc  bc                                          ; $73b1: $03
	inc  bc                                          ; $73b2: $03
	inc  bc                                          ; $73b3: $03
	inc  bc                                          ; $73b4: $03
	inc  bc                                          ; $73b5: $03
	ld   [bc], a                                     ; $73b6: $02
	inc  bc                                          ; $73b7: $03
	inc  bc                                          ; $73b8: $03
	inc  bc                                          ; $73b9: $03
	inc  bc                                          ; $73ba: $03
	inc  bc                                          ; $73bb: $03
	inc  bc                                          ; $73bc: $03
	inc  bc                                          ; $73bd: $03
	inc  bc                                          ; $73be: $03
	ld   [bc], a                                     ; $73bf: $02
	ld   [bc], a                                     ; $73c0: $02
	inc  bc                                          ; $73c1: $03
	inc  bc                                          ; $73c2: $03
	inc  bc                                          ; $73c3: $03
	ld   [bc], a                                     ; $73c4: $02
	inc  bc                                          ; $73c5: $03
	inc  bc                                          ; $73c6: $03
	inc  bc                                          ; $73c7: $03
	inc  bc                                          ; $73c8: $03
	inc  bc                                          ; $73c9: $03
	inc  bc                                          ; $73ca: $03
	inc  bc                                          ; $73cb: $03
	inc  bc                                          ; $73cc: $03
	inc  bc                                          ; $73cd: $03
	inc  b                                           ; $73ce: $04
	inc  b                                           ; $73cf: $04
	inc  b                                           ; $73d0: $04
	inc  b                                           ; $73d1: $04
	inc  b                                           ; $73d2: $04
	ld   [bc], a                                     ; $73d3: $02
	ld   [bc], a                                     ; $73d4: $02
	inc  bc                                          ; $73d5: $03
	inc  bc                                          ; $73d6: $03
	inc  bc                                          ; $73d7: $03
	inc  bc                                          ; $73d8: $03
	inc  bc                                          ; $73d9: $03
	inc  bc                                          ; $73da: $03
	inc  bc                                          ; $73db: $03
	inc  bc                                          ; $73dc: $03
	inc  bc                                          ; $73dd: $03
	inc  bc                                          ; $73de: $03
	inc  bc                                          ; $73df: $03
	inc  bc                                          ; $73e0: $03
	inc  b                                           ; $73e1: $04
	inc  b                                           ; $73e2: $04
	inc  b                                           ; $73e3: $04
	inc  b                                           ; $73e4: $04
	inc  b                                           ; $73e5: $04
	inc  b                                           ; $73e6: $04
	inc  bc                                          ; $73e7: $03
	inc  bc                                          ; $73e8: $03
	inc  bc                                          ; $73e9: $03
	inc  bc                                          ; $73ea: $03
	inc  bc                                          ; $73eb: $03
	inc  bc                                          ; $73ec: $03
	inc  bc                                          ; $73ed: $03
	inc  b                                           ; $73ee: $04
	inc  b                                           ; $73ef: $04
	inc  bc                                          ; $73f0: $03
	inc  bc                                          ; $73f1: $03
	inc  bc                                          ; $73f2: $03
	inc  bc                                          ; $73f3: $03
	inc  bc                                          ; $73f4: $03
	inc  bc                                          ; $73f5: $03
	inc  bc                                          ; $73f6: $03
	inc  bc                                          ; $73f7: $03
	inc  bc                                          ; $73f8: $03
	inc  bc                                          ; $73f9: $03
	inc  bc                                          ; $73fa: $03
	inc  bc                                          ; $73fb: $03
	inc  bc                                          ; $73fc: $03
	inc  bc                                          ; $73fd: $03
	inc  bc                                          ; $73fe: $03
	inc  bc                                          ; $73ff: $03
	inc  bc                                          ; $7400: $03
	inc  bc                                          ; $7401: $03
	inc  bc                                          ; $7402: $03
	inc  bc                                          ; $7403: $03
	inc  bc                                          ; $7404: $03
	inc  bc                                          ; $7405: $03
	inc  bc                                          ; $7406: $03
	inc  bc                                          ; $7407: $03
	ld   b, $06                                      ; $7408: $06 $06
	adc  [hl]                                        ; $740a: $8e
	adc  [hl]                                        ; $740b: $8e
	adc  [hl]                                        ; $740c: $8e
	adc  [hl]                                        ; $740d: $8e
	adc  [hl]                                        ; $740e: $8e
	adc  [hl]                                        ; $740f: $8e
	adc  [hl]                                        ; $7410: $8e
	adc  [hl]                                        ; $7411: $8e
	ld   b, $06                                      ; $7412: $06 $06
	ld   b, $06                                      ; $7414: $06 $06
	ld   b, $06                                      ; $7416: $06 $06
	ld   b, $06                                      ; $7418: $06 $06
	ld   b, $06                                      ; $741a: $06 $06
	ld   b, $06                                      ; $741c: $06 $06
	adc  [hl]                                        ; $741e: $8e
	adc  [hl]                                        ; $741f: $8e
	adc  [hl]                                        ; $7420: $8e
	adc  [hl]                                        ; $7421: $8e
	adc  [hl]                                        ; $7422: $8e
	adc  [hl]                                        ; $7423: $8e
	adc  [hl]                                        ; $7424: $8e
	adc  [hl]                                        ; $7425: $8e
	ld   b, $06                                      ; $7426: $06 $06
	ld   b, $06                                      ; $7428: $06 $06
	ld   b, $06                                      ; $742a: $06 $06
	ld   b, $06                                      ; $742c: $06 $06
	ld   b, $06                                      ; $742e: $06 $06
	ld   [$0808], sp                                 ; $7430: $08 $08 $08
	ld   [$0808], sp                                 ; $7433: $08 $08 $08
	ld   [$0808], sp                                 ; $7436: $08 $08 $08
	ld   [$0808], sp                                 ; $7439: $08 $08 $08
	ld   [$0808], sp                                 ; $743c: $08 $08 $08
	ld   [$0808], sp                                 ; $743f: $08 $08 $08
	ld   [$0808], sp                                 ; $7442: $08 $08 $08
	ld   [$0808], sp                                 ; $7445: $08 $08 $08
	ld   [$0808], sp                                 ; $7448: $08 $08 $08
	ld   [$0808], sp                                 ; $744b: $08 $08 $08
	ld   [$0808], sp                                 ; $744e: $08 $08 $08
	ld   [$0808], sp                                 ; $7451: $08 $08 $08
	ld   [$0808], sp                                 ; $7454: $08 $08 $08
	ld   [$080e], sp                                 ; $7457: $08 $0e $08
	ld   c, e                                        ; $745a: $4b
	ld   c, e                                        ; $745b: $4b
	ld   c, e                                        ; $745c: $4b
	ld   c, e                                        ; $745d: $4b
	ld   c, e                                        ; $745e: $4b
	ld   c, e                                        ; $745f: $4b
	ld   c, e                                        ; $7460: $4b
	ld   c, e                                        ; $7461: $4b
	ld   c, e                                        ; $7462: $4b
	ld   c, e                                        ; $7463: $4b
	ld   c, e                                        ; $7464: $4b
	ld   c, e                                        ; $7465: $4b
	ld   c, e                                        ; $7466: $4b
	ld   c, e                                        ; $7467: $4b
	ld   c, e                                        ; $7468: $4b
	ld   c, e                                        ; $7469: $4b
	ld   c, e                                        ; $746a: $4b
	ld   c, $0e                                      ; $746b: $0e $0e
	ld   [$080b], sp                                 ; $746d: $08 $0b $08
	ld   [$0808], sp                                 ; $7470: $08 $08 $08
	ld   [$0808], sp                                 ; $7473: $08 $08 $08
	ld   [$0808], sp                                 ; $7476: $08 $08 $08
	ld   [$0808], sp                                 ; $7479: $08 $08 $08
	ld   [$0b08], sp                                 ; $747c: $08 $08 $0b
	ld   c, $0e                                      ; $747f: $0e $0e
	ld   [$080b], sp                                 ; $7481: $08 $0b $08
	ld   [$0808], sp                                 ; $7484: $08 $08 $08
	ld   [$0808], sp                                 ; $7487: $08 $08 $08
	ld   [$0808], sp                                 ; $748a: $08 $08 $08
	ld   [$0808], sp                                 ; $748d: $08 $08 $08
	ld   [$0b08], sp                                 ; $7490: $08 $08 $0b
	ld   c, $0e                                      ; $7493: $0e $0e
	ld   [$0b0b], sp                                 ; $7495: $08 $0b $0b
	dec  bc                                          ; $7498: $0b
	dec  bc                                          ; $7499: $0b
	dec  bc                                          ; $749a: $0b
	dec  bc                                          ; $749b: $0b
	dec  bc                                          ; $749c: $0b
	dec  bc                                          ; $749d: $0b
	dec  bc                                          ; $749e: $0b
	dec  bc                                          ; $749f: $0b
	dec  bc                                          ; $74a0: $0b
	dec  bc                                          ; $74a1: $0b
	dec  bc                                          ; $74a2: $0b
	dec  bc                                          ; $74a3: $0b
	dec  bc                                          ; $74a4: $0b
	dec  bc                                          ; $74a5: $0b
	dec  bc                                          ; $74a6: $0b
	ld   c, $0e                                      ; $74a7: $0e $0e
	ld   [$0b0b], sp                                 ; $74a9: $08 $0b $0b
	dec  bc                                          ; $74ac: $0b
	dec  bc                                          ; $74ad: $0b
	dec  bc                                          ; $74ae: $0b
	dec  bc                                          ; $74af: $0b
	dec  bc                                          ; $74b0: $0b
	dec  bc                                          ; $74b1: $0b
	dec  bc                                          ; $74b2: $0b
	dec  bc                                          ; $74b3: $0b
	dec  bc                                          ; $74b4: $0b
	dec  bc                                          ; $74b5: $0b
	dec  bc                                          ; $74b6: $0b
	dec  bc                                          ; $74b7: $0b
	dec  bc                                          ; $74b8: $0b
	dec  bc                                          ; $74b9: $0b
	dec  bc                                          ; $74ba: $0b
	ld   c, $0e                                      ; $74bb: $0e $0e
	ld   [$0b0b], sp                                 ; $74bd: $08 $0b $0b
	dec  bc                                          ; $74c0: $0b
	dec  bc                                          ; $74c1: $0b
	dec  bc                                          ; $74c2: $0b
	dec  bc                                          ; $74c3: $0b
	dec  bc                                          ; $74c4: $0b
	dec  bc                                          ; $74c5: $0b
	dec  bc                                          ; $74c6: $0b
	dec  bc                                          ; $74c7: $0b
	dec  bc                                          ; $74c8: $0b
	dec  bc                                          ; $74c9: $0b
	dec  bc                                          ; $74ca: $0b
	dec  bc                                          ; $74cb: $0b
	dec  bc                                          ; $74cc: $0b
	dec  bc                                          ; $74cd: $0b
	dec  bc                                          ; $74ce: $0b
	ld   c, $0e                                      ; $74cf: $0e $0e
	ld   [$0b0b], sp                                 ; $74d1: $08 $0b $0b
	dec  bc                                          ; $74d4: $0b
	dec  bc                                          ; $74d5: $0b
	dec  bc                                          ; $74d6: $0b
	dec  bc                                          ; $74d7: $0b
	dec  bc                                          ; $74d8: $0b
	dec  bc                                          ; $74d9: $0b
	dec  bc                                          ; $74da: $0b
	dec  bc                                          ; $74db: $0b
	dec  bc                                          ; $74dc: $0b
	dec  bc                                          ; $74dd: $0b
	dec  bc                                          ; $74de: $0b
	dec  bc                                          ; $74df: $0b
	dec  bc                                          ; $74e0: $0b
	dec  bc                                          ; $74e1: $0b
	dec  bc                                          ; $74e2: $0b
	ld   c, $0e                                      ; $74e3: $0e $0e
	ld   [$0808], sp                                 ; $74e5: $08 $08 $08
	ld   [$4b4b], sp                                 ; $74e8: $08 $4b $4b
	ld   c, e                                        ; $74eb: $4b
	ld   c, e                                        ; $74ec: $4b
	ld   c, e                                        ; $74ed: $4b
	ld   c, e                                        ; $74ee: $4b
	ld   c, e                                        ; $74ef: $4b
	ld   c, e                                        ; $74f0: $4b
	ld   c, e                                        ; $74f1: $4b
	ld   c, e                                        ; $74f2: $4b
	ld   c, e                                        ; $74f3: $4b
	ld   c, e                                        ; $74f4: $4b
	ld   c, e                                        ; $74f5: $4b
	ld   [$0e0e], sp                                 ; $74f6: $08 $0e $0e
	ld   [$0808], sp                                 ; $74f9: $08 $08 $08
	ld   [$0b0b], sp                                 ; $74fc: $08 $0b $0b
	dec  bc                                          ; $74ff: $0b
	dec  bc                                          ; $7500: $0b
	dec  bc                                          ; $7501: $0b
	dec  bc                                          ; $7502: $0b
	dec  bc                                          ; $7503: $0b
	dec  bc                                          ; $7504: $0b
	dec  bc                                          ; $7505: $0b
	dec  bc                                          ; $7506: $0b
	dec  bc                                          ; $7507: $0b
	dec  bc                                          ; $7508: $0b
	dec  bc                                          ; $7509: $0b
	jr   z, jr_099_751a                              ; $750a: $28 $0e

	ld   c, $08                                      ; $750c: $0e $08
	ld   [$0b0b], sp                                 ; $750e: $08 $0b $0b
	dec  bc                                          ; $7511: $0b
	dec  bc                                          ; $7512: $0b
	inc  c                                           ; $7513: $0c
	inc  c                                           ; $7514: $0c
	ld   a, [bc]                                     ; $7515: $0a
	ld   a, [bc]                                     ; $7516: $0a
	ld   a, [bc]                                     ; $7517: $0a
	ld   a, [bc]                                     ; $7518: $0a
	inc  c                                           ; $7519: $0c

jr_099_751a:
	inc  c                                           ; $751a: $0c
	inc  c                                           ; $751b: $0c
	inc  c                                           ; $751c: $0c
	dec  bc                                          ; $751d: $0b
	jr   z, jr_099_752e                              ; $751e: $28 $0e

	ld   c, $08                                      ; $7520: $0e $08
	ld   [$0b0b], sp                                 ; $7522: $08 $0b $0b
	dec  bc                                          ; $7525: $0b
	dec  bc                                          ; $7526: $0b
	inc  c                                           ; $7527: $0c
	inc  c                                           ; $7528: $0c
	ld   a, [bc]                                     ; $7529: $0a
	ld   a, [bc]                                     ; $752a: $0a
	ld   a, [bc]                                     ; $752b: $0a
	ld   a, [bc]                                     ; $752c: $0a
	inc  c                                           ; $752d: $0c

jr_099_752e:
	inc  c                                           ; $752e: $0c
	inc  c                                           ; $752f: $0c
	inc  c                                           ; $7530: $0c
	dec  bc                                          ; $7531: $0b
	jr   z, jr_099_7542                              ; $7532: $28 $0e

	ld   c, $08                                      ; $7534: $0e $08
	ld   [$0b0b], sp                                 ; $7536: $08 $0b $0b
	dec  bc                                          ; $7539: $0b
	dec  bc                                          ; $753a: $0b
	dec  bc                                          ; $753b: $0b
	dec  bc                                          ; $753c: $0b
	dec  bc                                          ; $753d: $0b
	dec  bc                                          ; $753e: $0b
	dec  bc                                          ; $753f: $0b
	dec  bc                                          ; $7540: $0b
	dec  bc                                          ; $7541: $0b

jr_099_7542:
	dec  bc                                          ; $7542: $0b
	dec  c                                           ; $7543: $0d
	dec  c                                           ; $7544: $0d
	dec  bc                                          ; $7545: $0b
	jr   z, jr_099_7556                              ; $7546: $28 $0e

	ld   c, $08                                      ; $7548: $0e $08
	ld   [$0b0b], sp                                 ; $754a: $08 $0b $0b
	dec  bc                                          ; $754d: $0b
	dec  bc                                          ; $754e: $0b
	dec  bc                                          ; $754f: $0b
	dec  bc                                          ; $7550: $0b
	dec  bc                                          ; $7551: $0b
	dec  bc                                          ; $7552: $0b
	dec  bc                                          ; $7553: $0b
	dec  bc                                          ; $7554: $0b
	dec  bc                                          ; $7555: $0b

jr_099_7556:
	dec  bc                                          ; $7556: $0b
	dec  c                                           ; $7557: $0d
	dec  c                                           ; $7558: $0d
	dec  bc                                          ; $7559: $0b
	jr   z, jr_099_756a                              ; $755a: $28 $0e

	ld   c, $08                                      ; $755c: $0e $08
	ld   [$0b0b], sp                                 ; $755e: $08 $0b $0b
	dec  bc                                          ; $7561: $0b
	dec  bc                                          ; $7562: $0b
	dec  bc                                          ; $7563: $0b
	dec  bc                                          ; $7564: $0b
	dec  bc                                          ; $7565: $0b
	dec  bc                                          ; $7566: $0b
	dec  bc                                          ; $7567: $0b
	dec  bc                                          ; $7568: $0b
	dec  bc                                          ; $7569: $0b

jr_099_756a:
	dec  bc                                          ; $756a: $0b
	dec  bc                                          ; $756b: $0b
	dec  bc                                          ; $756c: $0b
	dec  bc                                          ; $756d: $0b
	ld   [$a50e], sp                                 ; $756e: $08 $0e $a5
	sub  b                                           ; $7571: $90
	sub  c                                           ; $7572: $91
	sub  d                                           ; $7573: $92
	sub  e                                           ; $7574: $93
	and  h                                           ; $7575: $a4
	add  h                                           ; $7576: $84
	add  l                                           ; $7577: $85
	add  [hl]                                        ; $7578: $86
	add  a                                           ; $7579: $87
	adc  b                                           ; $757a: $88
	adc  c                                           ; $757b: $89
	adc  d                                           ; $757c: $8a
	adc  e                                           ; $757d: $8b
	adc  h                                           ; $757e: $8c
	adc  l                                           ; $757f: $8d
	adc  [hl]                                        ; $7580: $8e
	adc  a                                           ; $7581: $8f
	xor  c                                           ; $7582: $a9
	xor  b                                           ; $7583: $a8
	and  l                                           ; $7584: $a5
	sub  h                                           ; $7585: $94
	sub  l                                           ; $7586: $95
	sub  d                                           ; $7587: $92
	sub  e                                           ; $7588: $93
	and  h                                           ; $7589: $a4
	add  h                                           ; $758a: $84
	add  l                                           ; $758b: $85
	add  [hl]                                        ; $758c: $86
	add  a                                           ; $758d: $87
	adc  b                                           ; $758e: $88
	adc  c                                           ; $758f: $89
	adc  d                                           ; $7590: $8a
	adc  e                                           ; $7591: $8b
	adc  h                                           ; $7592: $8c
	adc  l                                           ; $7593: $8d
	adc  [hl]                                        ; $7594: $8e
	adc  a                                           ; $7595: $8f
	xor  c                                           ; $7596: $a9
	xor  b                                           ; $7597: $a8
	and  l                                           ; $7598: $a5
	sub  [hl]                                        ; $7599: $96
	sub  a                                           ; $759a: $97
	sub  d                                           ; $759b: $92
	sub  e                                           ; $759c: $93
	and  h                                           ; $759d: $a4
	add  h                                           ; $759e: $84
	add  l                                           ; $759f: $85
	add  [hl]                                        ; $75a0: $86
	add  a                                           ; $75a1: $87
	adc  b                                           ; $75a2: $88
	adc  c                                           ; $75a3: $89
	adc  d                                           ; $75a4: $8a
	adc  e                                           ; $75a5: $8b
	adc  h                                           ; $75a6: $8c
	adc  l                                           ; $75a7: $8d
	adc  [hl]                                        ; $75a8: $8e
	adc  a                                           ; $75a9: $8f
	xor  c                                           ; $75aa: $a9
	xor  b                                           ; $75ab: $a8
	and  l                                           ; $75ac: $a5
	sbc  b                                           ; $75ad: $98
	sbc  c                                           ; $75ae: $99
	sbc  d                                           ; $75af: $9a
	sbc  e                                           ; $75b0: $9b
	and  h                                           ; $75b1: $a4
	add  h                                           ; $75b2: $84
	add  l                                           ; $75b3: $85
	add  [hl]                                        ; $75b4: $86
	add  a                                           ; $75b5: $87
	adc  b                                           ; $75b6: $88
	adc  c                                           ; $75b7: $89
	adc  d                                           ; $75b8: $8a
	adc  e                                           ; $75b9: $8b
	adc  h                                           ; $75ba: $8c
	adc  l                                           ; $75bb: $8d
	adc  [hl]                                        ; $75bc: $8e
	adc  a                                           ; $75bd: $8f
	xor  c                                           ; $75be: $a9
	xor  b                                           ; $75bf: $a8
	and  l                                           ; $75c0: $a5
	sbc  h                                           ; $75c1: $9c
	sbc  l                                           ; $75c2: $9d
	sbc  [hl]                                        ; $75c3: $9e
	sbc  a                                           ; $75c4: $9f
	and  h                                           ; $75c5: $a4
	add  h                                           ; $75c6: $84
	add  l                                           ; $75c7: $85
	add  [hl]                                        ; $75c8: $86
	add  a                                           ; $75c9: $87
	adc  b                                           ; $75ca: $88
	adc  c                                           ; $75cb: $89
	adc  d                                           ; $75cc: $8a
	adc  e                                           ; $75cd: $8b
	adc  h                                           ; $75ce: $8c
	adc  l                                           ; $75cf: $8d
	adc  [hl]                                        ; $75d0: $8e
	adc  a                                           ; $75d1: $8f
	xor  c                                           ; $75d2: $a9
	xor  b                                           ; $75d3: $a8
	and  l                                           ; $75d4: $a5
	and  b                                           ; $75d5: $a0
	and  c                                           ; $75d6: $a1
	and  d                                           ; $75d7: $a2
	and  e                                           ; $75d8: $a3
	and  h                                           ; $75d9: $a4
	add  h                                           ; $75da: $84
	add  l                                           ; $75db: $85
	add  [hl]                                        ; $75dc: $86
	add  a                                           ; $75dd: $87
	adc  b                                           ; $75de: $88
	adc  c                                           ; $75df: $89
	adc  d                                           ; $75e0: $8a
	adc  e                                           ; $75e1: $8b
	adc  h                                           ; $75e2: $8c
	adc  l                                           ; $75e3: $8d
	adc  [hl]                                        ; $75e4: $8e
	adc  a                                           ; $75e5: $8f
	xor  c                                           ; $75e6: $a9
	xor  b                                           ; $75e7: $a8
	and  [hl]                                        ; $75e8: $a6
	and  a                                           ; $75e9: $a7
	and  a                                           ; $75ea: $a7
	and  a                                           ; $75eb: $a7
	and  a                                           ; $75ec: $a7
	and  a                                           ; $75ed: $a7
	and  a                                           ; $75ee: $a7
	and  a                                           ; $75ef: $a7
	and  a                                           ; $75f0: $a7
	and  a                                           ; $75f1: $a7
	and  a                                           ; $75f2: $a7
	and  a                                           ; $75f3: $a7
	and  a                                           ; $75f4: $a7
	and  a                                           ; $75f5: $a7
	and  a                                           ; $75f6: $a7
	and  a                                           ; $75f7: $a7
	and  a                                           ; $75f8: $a7
	and  a                                           ; $75f9: $a7
	and  a                                           ; $75fa: $a7
	xor  d                                           ; $75fb: $aa
	db   $10                                         ; $75fc: $10
	ld   de, $1312                                   ; $75fd: $11 $12 $13
	inc  d                                           ; $7600: $14
	dec  d                                           ; $7601: $15
	ld   d, $17                                      ; $7602: $16 $17
	jr   @+$1b                                       ; $7604: $18 $19

	ld   a, [de]                                     ; $7606: $1a
	dec  de                                          ; $7607: $1b
	inc  e                                           ; $7608: $1c
	dec  e                                           ; $7609: $1d
	jr   nc, @+$21                                   ; $760a: $30 $1f

	nop                                              ; $760c: $00
	push af                                          ; $760d: $f5
	ld   [bc], a                                     ; $760e: $02
	inc  bc                                          ; $760f: $03
	jr   nz, @+$23                                   ; $7610: $20 $21

	ld   [hl+], a                                    ; $7612: $22
	inc  hl                                          ; $7613: $23
	inc  h                                           ; $7614: $24
	dec  h                                           ; $7615: $25
	ld   h, $27                                      ; $7616: $26 $27
	jr   z, jr_099_7643                              ; $7618: $28 $29

	ld   a, [hl+]                                    ; $761a: $2a
	dec  hl                                          ; $761b: $2b
	inc  l                                           ; $761c: $2c
	dec  e                                           ; $761d: $1d
	jr   nc, jr_099_764f                             ; $761e: $30 $2f

	db   $f4                                         ; $7620: $f4
	push af                                          ; $7621: $f5
	or   $f7                                         ; $7622: $f6 $f7
	jr   nc, jr_099_7657                             ; $7624: $30 $31

	ld   [hl-], a                                    ; $7626: $32
	inc  sp                                          ; $7627: $33
	jr   nc, jr_099_765f                             ; $7628: $30 $35

	ld   [hl], $37                                   ; $762a: $36 $37
	jr   c, jr_099_7667                              ; $762c: $38 $39

	ld   a, [hl-]                                    ; $762e: $3a
	dec  sp                                          ; $762f: $3b
	inc  a                                           ; $7630: $3c
	dec  e                                           ; $7631: $1d
	jr   nc, jr_099_7664                             ; $7632: $30 $30

	inc  b                                           ; $7634: $04
	push af                                          ; $7635: $f5
	ld   b, $07                                      ; $7636: $06 $07
	jr   nc, jr_099_767b                             ; $7638: $30 $41

	ld   b, d                                        ; $763a: $42
	ld   b, e                                        ; $763b: $43
	jr   nc, jr_099_766e                             ; $763c: $30 $30

	jr   nc, @+$49                                   ; $763e: $30 $47

	ld   c, b                                        ; $7640: $48
	ld   c, c                                        ; $7641: $49
	ld   c, d                                        ; $7642: $4a

jr_099_7643:
	ld   c, e                                        ; $7643: $4b
	ld   c, h                                        ; $7644: $4c
	ld   c, l                                        ; $7645: $4d
	ld   c, [hl]                                     ; $7646: $4e
	ld   c, a                                        ; $7647: $4f
	ld   hl, sp-$0b                                  ; $7648: $f8 $f5
	ld   a, [$30fb]                                  ; $764a: $fa $fb $30
	ld   d, c                                        ; $764d: $51
	ld   d, d                                        ; $764e: $52

jr_099_764f:
	ld   d, e                                        ; $764f: $53
	ld   d, h                                        ; $7650: $54
	ld   d, l                                        ; $7651: $55
	ld   d, [hl]                                     ; $7652: $56
	ld   d, a                                        ; $7653: $57
	ld   e, b                                        ; $7654: $58
	ld   e, c                                        ; $7655: $59
	ld   e, d                                        ; $7656: $5a

jr_099_7657:
	ld   e, e                                        ; $7657: $5b
	ld   e, h                                        ; $7658: $5c
	ld   e, l                                        ; $7659: $5d
	ld   e, [hl]                                     ; $765a: $5e
	ld   e, a                                        ; $765b: $5f
	ld   [$0a09], sp                                 ; $765c: $08 $09 $0a

jr_099_765f:
	dec  bc                                          ; $765f: $0b
	jr   nc, @+$63                                   ; $7660: $30 $61

	ld   h, d                                        ; $7662: $62
	ld   h, e                                        ; $7663: $63

jr_099_7664:
	ld   h, h                                        ; $7664: $64
	ld   h, l                                        ; $7665: $65
	ld   h, [hl]                                     ; $7666: $66

jr_099_7667:
	ld   h, a                                        ; $7667: $67
	ld   h, a                                        ; $7668: $67
	ld   h, a                                        ; $7669: $67
	ld   h, a                                        ; $766a: $67
	ld   l, e                                        ; $766b: $6b
	ld   l, h                                        ; $766c: $6c
	ld   l, l                                        ; $766d: $6d

jr_099_766e:
	ld   l, [hl]                                     ; $766e: $6e
	ld   l, a                                        ; $766f: $6f
	db   $fc                                         ; $7670: $fc
	db   $fd                                         ; $7671: $fd
	cp   $ff                                         ; $7672: $fe $ff
	ld   [hl], b                                     ; $7674: $70
	ld   [hl], c                                     ; $7675: $71
	ld   [hl], d                                     ; $7676: $72
	ld   [hl], d                                     ; $7677: $72
	ld   [hl], d                                     ; $7678: $72
	ld   [hl], l                                     ; $7679: $75
	halt                                             ; $767a: $76

jr_099_767b:
	ld   [hl], a                                     ; $767b: $77
	ld   a, b                                        ; $767c: $78
	ld   a, c                                        ; $767d: $79
	ld   a, d                                        ; $767e: $7a
	ld   a, e                                        ; $767f: $7b
	ld   a, e                                        ; $7680: $7b
	ld   a, l                                        ; $7681: $7d
	ld   a, [hl]                                     ; $7682: $7e
	ld   a, a                                        ; $7683: $7f
	inc  c                                           ; $7684: $0c
	dec  c                                           ; $7685: $0d
	ld   c, $0f                                      ; $7686: $0e $0f
	ld   [$80ec], a                                  ; $7688: $ea $ec $80
	add  d                                           ; $768b: $82
	add  h                                           ; $768c: $84
	add  [hl]                                        ; $768d: $86
	and  b                                           ; $768e: $a0
	and  d                                           ; $768f: $a2
	and  h                                           ; $7690: $a4
	and  [hl]                                        ; $7691: $a6
	xor  e                                           ; $7692: $ab
	xor  h                                           ; $7693: $ac
	xor  l                                           ; $7694: $ad
	xor  [hl]                                        ; $7695: $ae
	xor  e                                           ; $7696: $ab
	xor  h                                           ; $7697: $ac
	xor  l                                           ; $7698: $ad
	xor  [hl]                                        ; $7699: $ae
	db   $ec                                         ; $769a: $ec
	xor  $eb                                         ; $769b: $ee $eb
	db   $ed                                         ; $769d: $ed
	add  c                                           ; $769e: $81
	add  e                                           ; $769f: $83
	add  l                                           ; $76a0: $85
	add  a                                           ; $76a1: $87
	and  c                                           ; $76a2: $a1
	and  e                                           ; $76a3: $a3
	and  l                                           ; $76a4: $a5
	and  a                                           ; $76a5: $a7
	xor  a                                           ; $76a6: $af
	or   b                                           ; $76a7: $b0
	or   c                                           ; $76a8: $b1
	or   d                                           ; $76a9: $b2
	xor  a                                           ; $76aa: $af
	or   b                                           ; $76ab: $b0
	or   c                                           ; $76ac: $b1
	or   d                                           ; $76ad: $b2
	db   $ed                                         ; $76ae: $ed
	rst  $28                                         ; $76af: $ef
	ret  c                                           ; $76b0: $d8

	jp   c, $dedc                                    ; $76b1: $da $dc $de

	ldh  [$e2], a                                    ; $76b4: $e0 $e2
	db   $e4                                         ; $76b6: $e4
	and  $e8                                         ; $76b7: $e6 $e8
	ld   [$eeec], a                                  ; $76b9: $ea $ec $ee
	ldh  a, [$f2]                                    ; $76bc: $f0 $f2
	db   $f4                                         ; $76be: $f4
	or   $f8                                         ; $76bf: $f6 $f8
	ld   a, [$fefc]                                  ; $76c1: $fa $fc $fe
	reti                                             ; $76c4: $d9


	db   $db                                         ; $76c5: $db
	db   $dd                                         ; $76c6: $dd
	rst  JumpTable                                         ; $76c7: $df
	pop  hl                                          ; $76c8: $e1
	db   $e3                                         ; $76c9: $e3
	push hl                                          ; $76ca: $e5
	rst  $20                                         ; $76cb: $e7
	jp   hl                                          ; $76cc: $e9


	db   $eb                                         ; $76cd: $eb
	db   $ed                                         ; $76ce: $ed
	rst  $28                                         ; $76cf: $ef
	pop  af                                          ; $76d0: $f1
	di                                               ; $76d1: $f3
	push af                                          ; $76d2: $f5
	rst  $30                                         ; $76d3: $f7
	ld   sp, hl                                      ; $76d4: $f9
	ei                                               ; $76d5: $fb
	db   $fd                                         ; $76d6: $fd
	rst  $38                                         ; $76d7: $ff
	nop                                              ; $76d8: $00
	inc  bc                                          ; $76d9: $03
	rra                                              ; $76da: $1f
	rra                                              ; $76db: $1f
	rra                                              ; $76dc: $1f
	rra                                              ; $76dd: $1f
	rra                                              ; $76de: $1f
	rra                                              ; $76df: $1f
	rra                                              ; $76e0: $1f
	rra                                              ; $76e1: $1f
	rra                                              ; $76e2: $1f
	rra                                              ; $76e3: $1f
	rra                                              ; $76e4: $1f
	rra                                              ; $76e5: $1f
	rra                                              ; $76e6: $1f
	rra                                              ; $76e7: $1f
	rra                                              ; $76e8: $1f
	rra                                              ; $76e9: $1f
	dec  [hl]                                        ; $76ea: $35
	ld   bc, $0300                                   ; $76eb: $01 $00 $03
	inc  [hl]                                        ; $76ee: $34
	inc  b                                           ; $76ef: $04
	ld   b, $03                                      ; $76f0: $06 $03
	inc  b                                           ; $76f2: $04
	ld   [$0a03], sp                                 ; $76f3: $08 $03 $0a
	ld   b, $03                                      ; $76f6: $06 $03
	ld   a, [bc]                                     ; $76f8: $0a
	ld   [$0c03], sp                                 ; $76f9: $08 $03 $0c
	ld   c, $03                                      ; $76fc: $0e $03
	inc  [hl]                                        ; $76fe: $34
	ld   bc, $0300                                   ; $76ff: $01 $00 $03
	inc  [hl]                                        ; $7702: $34
	dec  b                                           ; $7703: $05
	rlca                                             ; $7704: $07
	inc  bc                                          ; $7705: $03
	dec  b                                           ; $7706: $05
	add  hl, bc                                      ; $7707: $09
	inc  bc                                          ; $7708: $03
	dec  bc                                          ; $7709: $0b
	rlca                                             ; $770a: $07
	inc  bc                                          ; $770b: $03
	dec  bc                                          ; $770c: $0b
	add  hl, bc                                      ; $770d: $09
	inc  bc                                          ; $770e: $03
	dec  c                                           ; $770f: $0d
	rrca                                             ; $7710: $0f
	inc  bc                                          ; $7711: $03
	inc  [hl]                                        ; $7712: $34
	ld   bc, $0300                                   ; $7713: $01 $00 $03
	inc  [hl]                                        ; $7716: $34
	ld   d, [hl]                                     ; $7717: $56
	ld   d, a                                        ; $7718: $57
	dec  e                                           ; $7719: $1d
	ld   d, [hl]                                     ; $771a: $56
	ld   d, a                                        ; $771b: $57
	dec  e                                           ; $771c: $1d
	ld   d, [hl]                                     ; $771d: $56
	ld   d, a                                        ; $771e: $57
	dec  e                                           ; $771f: $1d
	ld   d, [hl]                                     ; $7720: $56
	ld   d, a                                        ; $7721: $57
	dec  e                                           ; $7722: $1d
	ld   d, [hl]                                     ; $7723: $56
	ld   d, a                                        ; $7724: $57
	inc  [hl]                                        ; $7725: $34
	inc  [hl]                                        ; $7726: $34
	ld   bc, $0300                                   ; $7727: $01 $00 $03
	inc  [hl]                                        ; $772a: $34
	ld   e, b                                        ; $772b: $58
	ld   e, c                                        ; $772c: $59
	ld   e, $58                                      ; $772d: $1e $58
	ld   e, c                                        ; $772f: $59
	ld   e, $58                                      ; $7730: $1e $58
	ld   e, c                                        ; $7732: $59
	ld   e, $58                                      ; $7733: $1e $58
	ld   e, c                                        ; $7735: $59
	ld   e, $58                                      ; $7736: $1e $58
	ld   e, c                                        ; $7738: $59
	inc  [hl]                                        ; $7739: $34
	inc  [hl]                                        ; $773a: $34
	ld   bc, $0300                                   ; $773b: $01 $00 $03
	inc  [hl]                                        ; $773e: $34
	rra                                              ; $773f: $1f
	rra                                              ; $7740: $1f
	dec  [hl]                                        ; $7741: $35
	rra                                              ; $7742: $1f
	rra                                              ; $7743: $1f
	dec  [hl]                                        ; $7744: $35
	rra                                              ; $7745: $1f
	rra                                              ; $7746: $1f
	dec  [hl]                                        ; $7747: $35
	rra                                              ; $7748: $1f
	rra                                              ; $7749: $1f
	dec  [hl]                                        ; $774a: $35
	rra                                              ; $774b: $1f
	rra                                              ; $774c: $1f
	dec  [hl]                                        ; $774d: $35
	inc  [hl]                                        ; $774e: $34
	ld   bc, $0300                                   ; $774f: $01 $00 $03
	rra                                              ; $7752: $1f
	rra                                              ; $7753: $1f
	rra                                              ; $7754: $1f
	rra                                              ; $7755: $1f
	rra                                              ; $7756: $1f
	rra                                              ; $7757: $1f
	rra                                              ; $7758: $1f
	rra                                              ; $7759: $1f
	rra                                              ; $775a: $1f
	rra                                              ; $775b: $1f
	rra                                              ; $775c: $1f
	rra                                              ; $775d: $1f
	rra                                              ; $775e: $1f
	rra                                              ; $775f: $1f
	rra                                              ; $7760: $1f
	rra                                              ; $7761: $1f
	dec  [hl]                                        ; $7762: $35
	ld   bc, $0300                                   ; $7763: $01 $00 $03
	inc  bc                                          ; $7766: $03
	inc  bc                                          ; $7767: $03
	inc  bc                                          ; $7768: $03
	rra                                              ; $7769: $1f
	rra                                              ; $776a: $1f
	rra                                              ; $776b: $1f
	rra                                              ; $776c: $1f
	rra                                              ; $776d: $1f
	rra                                              ; $776e: $1f
	rra                                              ; $776f: $1f
	rra                                              ; $7770: $1f
	rra                                              ; $7771: $1f
	rra                                              ; $7772: $1f
	rra                                              ; $7773: $1f
	rra                                              ; $7774: $1f
	dec  [hl]                                        ; $7775: $35
	inc  bc                                          ; $7776: $03
	ld   bc, $0300                                   ; $7777: $01 $00 $03
	inc  bc                                          ; $777a: $03
	inc  bc                                          ; $777b: $03
	inc  bc                                          ; $777c: $03
	jr   z, jr_099_77a8                              ; $777d: $28 $29

Call_099_777f:
	ld   a, [hl+]                                    ; $777f: $2a
	dec  hl                                          ; $7780: $2b
	inc  l                                           ; $7781: $2c
	dec  l                                           ; $7782: $2d
	ld   l, $2f                                      ; $7783: $2e $2f
	jr   nc, jr_099_77b8                             ; $7785: $30 $31

	ld   [hl-], a                                    ; $7787: $32
	inc  sp                                          ; $7788: $33
	inc  [hl]                                        ; $7789: $34
	inc  bc                                          ; $778a: $03
	ld   bc, $0300                                   ; $778b: $01 $00 $03
	inc  bc                                          ; $778e: $03
	jr   nz, jr_099_77b2                             ; $778f: $20 $21

	ld   [hl], $37                                   ; $7791: $36 $37
	ld   a, [hl-]                                    ; $7793: $3a
	dec  sp                                          ; $7794: $3b
	ld   a, $3f                                      ; $7795: $3e $3f
	ld   b, d                                        ; $7797: $42
	ld   b, e                                        ; $7798: $43
	ld   b, [hl]                                     ; $7799: $46
	ld   b, a                                        ; $779a: $47
	ld   c, d                                        ; $779b: $4a
	ld   c, e                                        ; $779c: $4b
	inc  [hl]                                        ; $779d: $34
	inc  bc                                          ; $779e: $03
	ld   bc, $0300                                   ; $779f: $01 $00 $03
	inc  bc                                          ; $77a2: $03
	ld   [hl+], a                                    ; $77a3: $22
	inc  hl                                          ; $77a4: $23
	jr   c, jr_099_77e0                              ; $77a5: $38 $39

	inc  a                                           ; $77a7: $3c

jr_099_77a8:
	dec  a                                           ; $77a8: $3d
	ld   b, b                                        ; $77a9: $40
	ld   b, c                                        ; $77aa: $41
	ld   b, h                                        ; $77ab: $44
	ld   b, l                                        ; $77ac: $45
	ld   c, b                                        ; $77ad: $48
	ld   c, c                                        ; $77ae: $49
	ld   c, h                                        ; $77af: $4c
	ld   c, l                                        ; $77b0: $4d
	inc  [hl]                                        ; $77b1: $34

jr_099_77b2:
	inc  bc                                          ; $77b2: $03
	ld   bc, $0300                                   ; $77b3: $01 $00 $03
	inc  bc                                          ; $77b6: $03
	inc  h                                           ; $77b7: $24

jr_099_77b8:
	dec  h                                           ; $77b8: $25
	ld   d, [hl]                                     ; $77b9: $56
	ld   d, a                                        ; $77ba: $57
	ld   d, [hl]                                     ; $77bb: $56
	ld   d, a                                        ; $77bc: $57
	ld   d, [hl]                                     ; $77bd: $56
	ld   d, a                                        ; $77be: $57
	ld   d, [hl]                                     ; $77bf: $56
	ld   d, a                                        ; $77c0: $57
	ld   d, [hl]                                     ; $77c1: $56
	ld   d, a                                        ; $77c2: $57
	ld   d, d                                        ; $77c3: $52
	ld   d, e                                        ; $77c4: $53
	inc  [hl]                                        ; $77c5: $34
	inc  bc                                          ; $77c6: $03
	ld   bc, $0300                                   ; $77c7: $01 $00 $03
	inc  bc                                          ; $77ca: $03
	ld   h, $27                                      ; $77cb: $26 $27
	ld   e, b                                        ; $77cd: $58
	ld   e, c                                        ; $77ce: $59
	ld   e, b                                        ; $77cf: $58
	ld   e, c                                        ; $77d0: $59
	ld   e, b                                        ; $77d1: $58
	ld   e, c                                        ; $77d2: $59
	ld   e, b                                        ; $77d3: $58
	ld   e, c                                        ; $77d4: $59
	ld   e, b                                        ; $77d5: $58
	ld   e, c                                        ; $77d6: $59
	ld   d, h                                        ; $77d7: $54
	ld   d, l                                        ; $77d8: $55
	inc  [hl]                                        ; $77d9: $34
	inc  bc                                          ; $77da: $03
	ld   bc, $0300                                   ; $77db: $01 $00 $03
	inc  bc                                          ; $77de: $03
	rra                                              ; $77df: $1f

jr_099_77e0:
	rra                                              ; $77e0: $1f
	rra                                              ; $77e1: $1f
	rra                                              ; $77e2: $1f
	rra                                              ; $77e3: $1f
	rra                                              ; $77e4: $1f
	rra                                              ; $77e5: $1f
	rra                                              ; $77e6: $1f
	rra                                              ; $77e7: $1f
	rra                                              ; $77e8: $1f
	rra                                              ; $77e9: $1f
	rra                                              ; $77ea: $1f
	rra                                              ; $77eb: $1f
	rra                                              ; $77ec: $1f
	dec  [hl]                                        ; $77ed: $35
	inc  bc                                          ; $77ee: $03
	ld   bc, $0606                                   ; $77ef: $01 $06 $06
	ld   b, $06                                      ; $77f2: $06 $06
	ld   b, $06                                      ; $77f4: $06 $06
	rlca                                             ; $77f6: $07
	rlca                                             ; $77f7: $07
	rlca                                             ; $77f8: $07
	rlca                                             ; $77f9: $07
	rlca                                             ; $77fa: $07
	rlca                                             ; $77fb: $07
	rlca                                             ; $77fc: $07
	rlca                                             ; $77fd: $07
	rlca                                             ; $77fe: $07
	rlca                                             ; $77ff: $07
	rlca                                             ; $7800: $07
	rlca                                             ; $7801: $07
	ld   b, $06                                      ; $7802: $06 $06
	ld   b, $06                                      ; $7804: $06 $06
	ld   b, $06                                      ; $7806: $06 $06
	ld   b, $06                                      ; $7808: $06 $06
	rlca                                             ; $780a: $07
	rlca                                             ; $780b: $07
	rlca                                             ; $780c: $07
	rlca                                             ; $780d: $07
	rlca                                             ; $780e: $07
	rlca                                             ; $780f: $07
	rlca                                             ; $7810: $07
	rlca                                             ; $7811: $07
	rlca                                             ; $7812: $07
	rlca                                             ; $7813: $07
	rlca                                             ; $7814: $07
	rlca                                             ; $7815: $07
	ld   b, $06                                      ; $7816: $06 $06
	ld   b, $06                                      ; $7818: $06 $06
	ld   b, $06                                      ; $781a: $06 $06
	ld   b, $06                                      ; $781c: $06 $06
	rlca                                             ; $781e: $07
	rlca                                             ; $781f: $07
	rlca                                             ; $7820: $07
	rlca                                             ; $7821: $07
	rlca                                             ; $7822: $07
	rlca                                             ; $7823: $07
	rlca                                             ; $7824: $07
	rlca                                             ; $7825: $07
	rlca                                             ; $7826: $07
	rlca                                             ; $7827: $07
	rlca                                             ; $7828: $07
	rlca                                             ; $7829: $07
	ld   b, $06                                      ; $782a: $06 $06
	ld   b, $06                                      ; $782c: $06 $06
	ld   b, $06                                      ; $782e: $06 $06
	ld   b, $06                                      ; $7830: $06 $06
	rlca                                             ; $7832: $07
	rlca                                             ; $7833: $07
	rlca                                             ; $7834: $07
	rlca                                             ; $7835: $07
	rlca                                             ; $7836: $07
	rlca                                             ; $7837: $07
	rlca                                             ; $7838: $07
	rlca                                             ; $7839: $07
	rlca                                             ; $783a: $07
	rlca                                             ; $783b: $07
	rlca                                             ; $783c: $07
	rlca                                             ; $783d: $07
	ld   b, $06                                      ; $783e: $06 $06
	ld   b, $06                                      ; $7840: $06 $06
	ld   b, $06                                      ; $7842: $06 $06
	ld   b, $06                                      ; $7844: $06 $06
	rlca                                             ; $7846: $07
	rlca                                             ; $7847: $07
	rlca                                             ; $7848: $07
	rlca                                             ; $7849: $07
	rlca                                             ; $784a: $07
	rlca                                             ; $784b: $07
	rlca                                             ; $784c: $07
	rlca                                             ; $784d: $07
	rlca                                             ; $784e: $07
	rlca                                             ; $784f: $07
	rlca                                             ; $7850: $07
	rlca                                             ; $7851: $07
	ld   b, $06                                      ; $7852: $06 $06
	ld   b, $06                                      ; $7854: $06 $06
	ld   b, $06                                      ; $7856: $06 $06
	ld   b, $06                                      ; $7858: $06 $06
	rlca                                             ; $785a: $07
	rlca                                             ; $785b: $07
	rlca                                             ; $785c: $07
	rlca                                             ; $785d: $07
	rlca                                             ; $785e: $07
	rlca                                             ; $785f: $07
	rlca                                             ; $7860: $07
	rlca                                             ; $7861: $07
	rlca                                             ; $7862: $07
	rlca                                             ; $7863: $07
	rlca                                             ; $7864: $07
	rlca                                             ; $7865: $07
	ld   b, $06                                      ; $7866: $06 $06
	ld   b, $06                                      ; $7868: $06 $06
	ld   b, $06                                      ; $786a: $06 $06
	ld   b, $06                                      ; $786c: $06 $06
	ld   b, $06                                      ; $786e: $06 $06
	ld   b, $06                                      ; $7870: $06 $06
	ld   b, $06                                      ; $7872: $06 $06
	ld   b, $06                                      ; $7874: $06 $06
	ld   b, $06                                      ; $7876: $06 $06
	ld   b, $06                                      ; $7878: $06 $06
	ld   b, $06                                      ; $787a: $06 $06
	inc  bc                                          ; $787c: $03
	inc  bc                                          ; $787d: $03
	inc  bc                                          ; $787e: $03
	inc  bc                                          ; $787f: $03
	inc  bc                                          ; $7880: $03
	ld   [bc], a                                     ; $7881: $02
	ld   [bc], a                                     ; $7882: $02
	ld   [bc], a                                     ; $7883: $02
	ld   [bc], a                                     ; $7884: $02
	ld   [bc], a                                     ; $7885: $02
	ld   [bc], a                                     ; $7886: $02
	ld   [bc], a                                     ; $7887: $02
	ld   [bc], a                                     ; $7888: $02
	inc  bc                                          ; $7889: $03
	inc  bc                                          ; $788a: $03
	inc  bc                                          ; $788b: $03
	inc  bc                                          ; $788c: $03
	inc  bc                                          ; $788d: $03
	ld   [bc], a                                     ; $788e: $02
	inc  bc                                          ; $788f: $03
	inc  bc                                          ; $7890: $03
	inc  bc                                          ; $7891: $03
	inc  bc                                          ; $7892: $03
	inc  bc                                          ; $7893: $03
	inc  bc                                          ; $7894: $03
	ld   [bc], a                                     ; $7895: $02
	ld   [bc], a                                     ; $7896: $02
	ld   [bc], a                                     ; $7897: $02
	ld   [bc], a                                     ; $7898: $02
	ld   [bc], a                                     ; $7899: $02
	ld   [bc], a                                     ; $789a: $02
	ld   [bc], a                                     ; $789b: $02
	ld   [bc], a                                     ; $789c: $02
	inc  bc                                          ; $789d: $03
	inc  bc                                          ; $789e: $03
	inc  bc                                          ; $789f: $03
	inc  bc                                          ; $78a0: $03
	inc  bc                                          ; $78a1: $03
	ld   [bc], a                                     ; $78a2: $02
	inc  bc                                          ; $78a3: $03
	inc  bc                                          ; $78a4: $03
	inc  bc                                          ; $78a5: $03
	inc  bc                                          ; $78a6: $03
	inc  bc                                          ; $78a7: $03
	inc  bc                                          ; $78a8: $03
	ld   [bc], a                                     ; $78a9: $02
	ld   [bc], a                                     ; $78aa: $02
	ld   [bc], a                                     ; $78ab: $02
	ld   [bc], a                                     ; $78ac: $02
	ld   [bc], a                                     ; $78ad: $02
	ld   [bc], a                                     ; $78ae: $02
	ld   [bc], a                                     ; $78af: $02
	ld   [bc], a                                     ; $78b0: $02
	inc  bc                                          ; $78b1: $03
	inc  bc                                          ; $78b2: $03
	inc  bc                                          ; $78b3: $03
	inc  bc                                          ; $78b4: $03
	inc  bc                                          ; $78b5: $03
	ld   [bc], a                                     ; $78b6: $02
	inc  bc                                          ; $78b7: $03
	inc  bc                                          ; $78b8: $03
	inc  bc                                          ; $78b9: $03
	inc  bc                                          ; $78ba: $03
	inc  bc                                          ; $78bb: $03
	inc  bc                                          ; $78bc: $03
	inc  bc                                          ; $78bd: $03
	inc  bc                                          ; $78be: $03
	ld   [bc], a                                     ; $78bf: $02
	ld   [bc], a                                     ; $78c0: $02
	ld   [bc], a                                     ; $78c1: $02
	ld   [bc], a                                     ; $78c2: $02
	ld   [bc], a                                     ; $78c3: $02
	ld   [bc], a                                     ; $78c4: $02
	inc  bc                                          ; $78c5: $03
	inc  bc                                          ; $78c6: $03
	inc  bc                                          ; $78c7: $03
	inc  bc                                          ; $78c8: $03
	inc  bc                                          ; $78c9: $03
	inc  bc                                          ; $78ca: $03
	inc  bc                                          ; $78cb: $03
	inc  bc                                          ; $78cc: $03
	inc  bc                                          ; $78cd: $03
	inc  b                                           ; $78ce: $04
	inc  b                                           ; $78cf: $04
	inc  b                                           ; $78d0: $04
	inc  b                                           ; $78d1: $04
	inc  b                                           ; $78d2: $04
	ld   [bc], a                                     ; $78d3: $02
	ld   [bc], a                                     ; $78d4: $02
	ld   [bc], a                                     ; $78d5: $02
	ld   [bc], a                                     ; $78d6: $02
	ld   [bc], a                                     ; $78d7: $02
	inc  bc                                          ; $78d8: $03
	inc  bc                                          ; $78d9: $03
	inc  bc                                          ; $78da: $03
	inc  bc                                          ; $78db: $03
	inc  bc                                          ; $78dc: $03
	inc  bc                                          ; $78dd: $03
	inc  bc                                          ; $78de: $03
	inc  bc                                          ; $78df: $03
	inc  bc                                          ; $78e0: $03
	inc  b                                           ; $78e1: $04
	inc  b                                           ; $78e2: $04
	inc  b                                           ; $78e3: $04
	inc  b                                           ; $78e4: $04
	inc  b                                           ; $78e5: $04
	inc  b                                           ; $78e6: $04
	inc  bc                                          ; $78e7: $03
	inc  bc                                          ; $78e8: $03
	inc  bc                                          ; $78e9: $03
	inc  bc                                          ; $78ea: $03
	inc  bc                                          ; $78eb: $03
	inc  bc                                          ; $78ec: $03
	inc  bc                                          ; $78ed: $03
	inc  b                                           ; $78ee: $04
	inc  b                                           ; $78ef: $04
	inc  bc                                          ; $78f0: $03
	inc  bc                                          ; $78f1: $03
	inc  bc                                          ; $78f2: $03
	inc  bc                                          ; $78f3: $03
	inc  bc                                          ; $78f4: $03
	inc  bc                                          ; $78f5: $03
	inc  bc                                          ; $78f6: $03
	inc  bc                                          ; $78f7: $03
	inc  bc                                          ; $78f8: $03
	inc  bc                                          ; $78f9: $03
	inc  bc                                          ; $78fa: $03
	inc  bc                                          ; $78fb: $03
	inc  bc                                          ; $78fc: $03
	inc  bc                                          ; $78fd: $03
	inc  bc                                          ; $78fe: $03
	inc  bc                                          ; $78ff: $03
	inc  bc                                          ; $7900: $03
	inc  bc                                          ; $7901: $03
	inc  bc                                          ; $7902: $03
	inc  bc                                          ; $7903: $03
	inc  bc                                          ; $7904: $03
	inc  bc                                          ; $7905: $03
	inc  bc                                          ; $7906: $03
	inc  bc                                          ; $7907: $03
	ld   b, $06                                      ; $7908: $06 $06
	adc  [hl]                                        ; $790a: $8e
	adc  [hl]                                        ; $790b: $8e
	adc  [hl]                                        ; $790c: $8e
	adc  [hl]                                        ; $790d: $8e
	adc  [hl]                                        ; $790e: $8e
	adc  [hl]                                        ; $790f: $8e
	adc  [hl]                                        ; $7910: $8e
	adc  [hl]                                        ; $7911: $8e
	ld   b, $06                                      ; $7912: $06 $06
	ld   b, $06                                      ; $7914: $06 $06
	ld   b, $06                                      ; $7916: $06 $06
	ld   b, $06                                      ; $7918: $06 $06
	ld   b, $06                                      ; $791a: $06 $06
	ld   b, $06                                      ; $791c: $06 $06
	adc  [hl]                                        ; $791e: $8e
	adc  [hl]                                        ; $791f: $8e
	adc  [hl]                                        ; $7920: $8e
	adc  [hl]                                        ; $7921: $8e
	adc  [hl]                                        ; $7922: $8e
	adc  [hl]                                        ; $7923: $8e
	adc  [hl]                                        ; $7924: $8e
	adc  [hl]                                        ; $7925: $8e
	ld   b, $06                                      ; $7926: $06 $06
	ld   b, $06                                      ; $7928: $06 $06
	ld   b, $06                                      ; $792a: $06 $06
	ld   b, $06                                      ; $792c: $06 $06
	ld   b, $06                                      ; $792e: $06 $06
	ld   [$0808], sp                                 ; $7930: $08 $08 $08
	ld   [$0808], sp                                 ; $7933: $08 $08 $08
	ld   [$0808], sp                                 ; $7936: $08 $08 $08
	ld   [$0808], sp                                 ; $7939: $08 $08 $08
	ld   [$0808], sp                                 ; $793c: $08 $08 $08
	ld   [$0808], sp                                 ; $793f: $08 $08 $08
	ld   [$0808], sp                                 ; $7942: $08 $08 $08
	ld   [$0808], sp                                 ; $7945: $08 $08 $08
	ld   [$0808], sp                                 ; $7948: $08 $08 $08
	ld   [$0808], sp                                 ; $794b: $08 $08 $08
	ld   [$0808], sp                                 ; $794e: $08 $08 $08
	ld   [$0808], sp                                 ; $7951: $08 $08 $08
	ld   [$0808], sp                                 ; $7954: $08 $08 $08
	ld   [$080e], sp                                 ; $7957: $08 $0e $08
	ld   c, e                                        ; $795a: $4b
	ld   c, e                                        ; $795b: $4b
	ld   c, e                                        ; $795c: $4b
	ld   c, e                                        ; $795d: $4b
	ld   c, e                                        ; $795e: $4b
	ld   c, e                                        ; $795f: $4b
	ld   c, e                                        ; $7960: $4b
	ld   c, e                                        ; $7961: $4b
	ld   c, e                                        ; $7962: $4b
	ld   c, e                                        ; $7963: $4b
	ld   c, e                                        ; $7964: $4b
	ld   c, e                                        ; $7965: $4b
	ld   c, e                                        ; $7966: $4b
	ld   c, e                                        ; $7967: $4b
	ld   c, e                                        ; $7968: $4b
	ld   c, e                                        ; $7969: $4b
	ld   c, e                                        ; $796a: $4b
	ld   c, $0e                                      ; $796b: $0e $0e
	ld   [$080b], sp                                 ; $796d: $08 $0b $08
	ld   [$0808], sp                                 ; $7970: $08 $08 $08
	ld   [$0808], sp                                 ; $7973: $08 $08 $08
	ld   [$0808], sp                                 ; $7976: $08 $08 $08
	ld   [$0808], sp                                 ; $7979: $08 $08 $08
	ld   [$0b08], sp                                 ; $797c: $08 $08 $0b
	ld   c, $0e                                      ; $797f: $0e $0e
	ld   [$080b], sp                                 ; $7981: $08 $0b $08
	ld   [$0808], sp                                 ; $7984: $08 $08 $08
	ld   [$0808], sp                                 ; $7987: $08 $08 $08
	ld   [$0808], sp                                 ; $798a: $08 $08 $08
	ld   [$0808], sp                                 ; $798d: $08 $08 $08
	ld   [$0b08], sp                                 ; $7990: $08 $08 $0b
	ld   c, $0e                                      ; $7993: $0e $0e
	ld   [$0b0b], sp                                 ; $7995: $08 $0b $0b
	dec  bc                                          ; $7998: $0b
	dec  bc                                          ; $7999: $0b
	dec  bc                                          ; $799a: $0b
	dec  bc                                          ; $799b: $0b
	dec  bc                                          ; $799c: $0b
	dec  bc                                          ; $799d: $0b
	dec  bc                                          ; $799e: $0b
	dec  bc                                          ; $799f: $0b
	dec  bc                                          ; $79a0: $0b
	dec  bc                                          ; $79a1: $0b
	dec  bc                                          ; $79a2: $0b
	dec  bc                                          ; $79a3: $0b
	dec  bc                                          ; $79a4: $0b
	dec  bc                                          ; $79a5: $0b
	dec  bc                                          ; $79a6: $0b
	ld   c, $0e                                      ; $79a7: $0e $0e
	ld   [$0b0b], sp                                 ; $79a9: $08 $0b $0b
	dec  bc                                          ; $79ac: $0b
	dec  bc                                          ; $79ad: $0b
	dec  bc                                          ; $79ae: $0b
	dec  bc                                          ; $79af: $0b
	dec  bc                                          ; $79b0: $0b
	dec  bc                                          ; $79b1: $0b
	dec  bc                                          ; $79b2: $0b
	dec  bc                                          ; $79b3: $0b
	dec  bc                                          ; $79b4: $0b
	dec  bc                                          ; $79b5: $0b
	dec  bc                                          ; $79b6: $0b
	dec  bc                                          ; $79b7: $0b
	dec  bc                                          ; $79b8: $0b
	dec  bc                                          ; $79b9: $0b
	dec  bc                                          ; $79ba: $0b
	ld   c, $0e                                      ; $79bb: $0e $0e
	ld   [$0b0b], sp                                 ; $79bd: $08 $0b $0b
	dec  bc                                          ; $79c0: $0b
	dec  bc                                          ; $79c1: $0b
	dec  bc                                          ; $79c2: $0b
	dec  bc                                          ; $79c3: $0b
	dec  bc                                          ; $79c4: $0b
	dec  bc                                          ; $79c5: $0b
	dec  bc                                          ; $79c6: $0b
	dec  bc                                          ; $79c7: $0b
	dec  bc                                          ; $79c8: $0b
	dec  bc                                          ; $79c9: $0b
	dec  bc                                          ; $79ca: $0b
	dec  bc                                          ; $79cb: $0b
	dec  bc                                          ; $79cc: $0b
	dec  bc                                          ; $79cd: $0b
	dec  bc                                          ; $79ce: $0b
	ld   c, $0e                                      ; $79cf: $0e $0e
	ld   [$0b0b], sp                                 ; $79d1: $08 $0b $0b
	dec  bc                                          ; $79d4: $0b
	dec  bc                                          ; $79d5: $0b
	dec  bc                                          ; $79d6: $0b
	dec  bc                                          ; $79d7: $0b
	dec  bc                                          ; $79d8: $0b
	dec  bc                                          ; $79d9: $0b
	dec  bc                                          ; $79da: $0b
	dec  bc                                          ; $79db: $0b
	dec  bc                                          ; $79dc: $0b
	dec  bc                                          ; $79dd: $0b
	dec  bc                                          ; $79de: $0b
	dec  bc                                          ; $79df: $0b
	dec  bc                                          ; $79e0: $0b
	dec  bc                                          ; $79e1: $0b
	dec  bc                                          ; $79e2: $0b
	ld   c, $0e                                      ; $79e3: $0e $0e
	ld   [$0808], sp                                 ; $79e5: $08 $08 $08
	ld   [$4b4b], sp                                 ; $79e8: $08 $4b $4b
	ld   c, e                                        ; $79eb: $4b
	ld   c, e                                        ; $79ec: $4b
	ld   c, e                                        ; $79ed: $4b
	ld   c, e                                        ; $79ee: $4b
	ld   c, e                                        ; $79ef: $4b
	ld   c, e                                        ; $79f0: $4b
	ld   c, e                                        ; $79f1: $4b
	ld   c, e                                        ; $79f2: $4b
	ld   c, e                                        ; $79f3: $4b
	ld   c, e                                        ; $79f4: $4b
	ld   c, e                                        ; $79f5: $4b
	ld   [$0e0e], sp                                 ; $79f6: $08 $0e $0e
	ld   [$0808], sp                                 ; $79f9: $08 $08 $08
	ld   [$0b0b], sp                                 ; $79fc: $08 $0b $0b
	dec  bc                                          ; $79ff: $0b
	dec  bc                                          ; $7a00: $0b
	dec  bc                                          ; $7a01: $0b
	dec  bc                                          ; $7a02: $0b
	dec  bc                                          ; $7a03: $0b
	dec  bc                                          ; $7a04: $0b
	dec  bc                                          ; $7a05: $0b
	dec  bc                                          ; $7a06: $0b
	dec  bc                                          ; $7a07: $0b
	dec  bc                                          ; $7a08: $0b
	dec  bc                                          ; $7a09: $0b
	jr   z, jr_099_7a1a                              ; $7a0a: $28 $0e

	ld   c, $08                                      ; $7a0c: $0e $08
	ld   [$0b0b], sp                                 ; $7a0e: $08 $0b $0b
	dec  bc                                          ; $7a11: $0b
	dec  bc                                          ; $7a12: $0b
	inc  c                                           ; $7a13: $0c
	inc  c                                           ; $7a14: $0c
	ld   a, [bc]                                     ; $7a15: $0a
	ld   a, [bc]                                     ; $7a16: $0a
	ld   a, [bc]                                     ; $7a17: $0a
	ld   a, [bc]                                     ; $7a18: $0a
	inc  c                                           ; $7a19: $0c

jr_099_7a1a:
	inc  c                                           ; $7a1a: $0c
	inc  c                                           ; $7a1b: $0c
	inc  c                                           ; $7a1c: $0c
	dec  bc                                          ; $7a1d: $0b
	jr   z, jr_099_7a2e                              ; $7a1e: $28 $0e

	ld   c, $08                                      ; $7a20: $0e $08
	ld   [$0b0b], sp                                 ; $7a22: $08 $0b $0b
	dec  bc                                          ; $7a25: $0b
	dec  bc                                          ; $7a26: $0b
	inc  c                                           ; $7a27: $0c
	inc  c                                           ; $7a28: $0c
	ld   a, [bc]                                     ; $7a29: $0a
	ld   a, [bc]                                     ; $7a2a: $0a
	ld   a, [bc]                                     ; $7a2b: $0a
	ld   a, [bc]                                     ; $7a2c: $0a
	inc  c                                           ; $7a2d: $0c

jr_099_7a2e:
	inc  c                                           ; $7a2e: $0c
	inc  c                                           ; $7a2f: $0c
	inc  c                                           ; $7a30: $0c
	dec  bc                                          ; $7a31: $0b
	jr   z, jr_099_7a42                              ; $7a32: $28 $0e

	ld   c, $08                                      ; $7a34: $0e $08
	ld   [$0b0b], sp                                 ; $7a36: $08 $0b $0b
	dec  bc                                          ; $7a39: $0b
	dec  bc                                          ; $7a3a: $0b
	dec  bc                                          ; $7a3b: $0b
	dec  bc                                          ; $7a3c: $0b
	dec  bc                                          ; $7a3d: $0b
	dec  bc                                          ; $7a3e: $0b
	dec  bc                                          ; $7a3f: $0b
	dec  bc                                          ; $7a40: $0b
	dec  bc                                          ; $7a41: $0b

jr_099_7a42:
	dec  bc                                          ; $7a42: $0b
	dec  c                                           ; $7a43: $0d
	dec  c                                           ; $7a44: $0d
	dec  bc                                          ; $7a45: $0b
	jr   z, jr_099_7a56                              ; $7a46: $28 $0e

	ld   c, $08                                      ; $7a48: $0e $08
	ld   [$0b0b], sp                                 ; $7a4a: $08 $0b $0b
	dec  bc                                          ; $7a4d: $0b
	dec  bc                                          ; $7a4e: $0b
	dec  bc                                          ; $7a4f: $0b
	dec  bc                                          ; $7a50: $0b
	dec  bc                                          ; $7a51: $0b
	dec  bc                                          ; $7a52: $0b
	dec  bc                                          ; $7a53: $0b
	dec  bc                                          ; $7a54: $0b
	dec  bc                                          ; $7a55: $0b

jr_099_7a56:
	dec  bc                                          ; $7a56: $0b
	dec  c                                           ; $7a57: $0d
	dec  c                                           ; $7a58: $0d
	dec  bc                                          ; $7a59: $0b
	jr   z, jr_099_7a6a                              ; $7a5a: $28 $0e

	ld   c, $08                                      ; $7a5c: $0e $08
	ld   [$0b0b], sp                                 ; $7a5e: $08 $0b $0b
	dec  bc                                          ; $7a61: $0b
	dec  bc                                          ; $7a62: $0b
	dec  bc                                          ; $7a63: $0b
	dec  bc                                          ; $7a64: $0b
	dec  bc                                          ; $7a65: $0b
	dec  bc                                          ; $7a66: $0b
	dec  bc                                          ; $7a67: $0b
	dec  bc                                          ; $7a68: $0b
	dec  bc                                          ; $7a69: $0b

jr_099_7a6a:
	dec  bc                                          ; $7a6a: $0b
	dec  bc                                          ; $7a6b: $0b
	dec  bc                                          ; $7a6c: $0b
	dec  bc                                          ; $7a6d: $0b
	ld   [$a50e], sp                                 ; $7a6e: $08 $0e $a5
	sub  b                                           ; $7a71: $90
	sub  c                                           ; $7a72: $91
	sub  d                                           ; $7a73: $92
	sub  e                                           ; $7a74: $93
	and  h                                           ; $7a75: $a4
	add  h                                           ; $7a76: $84
	add  l                                           ; $7a77: $85
	add  [hl]                                        ; $7a78: $86
	add  a                                           ; $7a79: $87
	adc  b                                           ; $7a7a: $88
	adc  c                                           ; $7a7b: $89
	adc  d                                           ; $7a7c: $8a
	adc  e                                           ; $7a7d: $8b
	adc  h                                           ; $7a7e: $8c
	adc  l                                           ; $7a7f: $8d
	adc  [hl]                                        ; $7a80: $8e
	adc  a                                           ; $7a81: $8f
	xor  c                                           ; $7a82: $a9
	xor  b                                           ; $7a83: $a8
	and  l                                           ; $7a84: $a5
	sub  h                                           ; $7a85: $94
	sub  l                                           ; $7a86: $95
	sub  d                                           ; $7a87: $92
	sub  e                                           ; $7a88: $93
	and  h                                           ; $7a89: $a4
	add  h                                           ; $7a8a: $84
	add  l                                           ; $7a8b: $85
	add  [hl]                                        ; $7a8c: $86
	add  a                                           ; $7a8d: $87
	adc  b                                           ; $7a8e: $88
	adc  c                                           ; $7a8f: $89
	adc  d                                           ; $7a90: $8a
	adc  e                                           ; $7a91: $8b
	adc  h                                           ; $7a92: $8c
	adc  l                                           ; $7a93: $8d
	adc  [hl]                                        ; $7a94: $8e
	adc  a                                           ; $7a95: $8f
	xor  c                                           ; $7a96: $a9
	xor  b                                           ; $7a97: $a8
	and  l                                           ; $7a98: $a5
	sub  [hl]                                        ; $7a99: $96
	sub  a                                           ; $7a9a: $97
	sub  d                                           ; $7a9b: $92
	sub  e                                           ; $7a9c: $93
	and  h                                           ; $7a9d: $a4
	add  h                                           ; $7a9e: $84
	add  l                                           ; $7a9f: $85
	add  [hl]                                        ; $7aa0: $86
	add  a                                           ; $7aa1: $87
	adc  b                                           ; $7aa2: $88
	adc  c                                           ; $7aa3: $89
	adc  d                                           ; $7aa4: $8a
	adc  e                                           ; $7aa5: $8b
	adc  h                                           ; $7aa6: $8c
	adc  l                                           ; $7aa7: $8d
	adc  [hl]                                        ; $7aa8: $8e
	adc  a                                           ; $7aa9: $8f
	xor  c                                           ; $7aaa: $a9
	xor  b                                           ; $7aab: $a8
	and  l                                           ; $7aac: $a5
	sbc  b                                           ; $7aad: $98
	sbc  c                                           ; $7aae: $99
	sbc  d                                           ; $7aaf: $9a
	sbc  e                                           ; $7ab0: $9b
	and  h                                           ; $7ab1: $a4
	add  h                                           ; $7ab2: $84
	add  l                                           ; $7ab3: $85
	add  [hl]                                        ; $7ab4: $86
	add  a                                           ; $7ab5: $87
	adc  b                                           ; $7ab6: $88
	adc  c                                           ; $7ab7: $89
	adc  d                                           ; $7ab8: $8a
	adc  e                                           ; $7ab9: $8b
	adc  h                                           ; $7aba: $8c
	adc  l                                           ; $7abb: $8d
	adc  [hl]                                        ; $7abc: $8e
	adc  a                                           ; $7abd: $8f
	xor  c                                           ; $7abe: $a9
	xor  b                                           ; $7abf: $a8
	and  l                                           ; $7ac0: $a5
	sbc  h                                           ; $7ac1: $9c
	sbc  l                                           ; $7ac2: $9d
	sbc  [hl]                                        ; $7ac3: $9e
	sbc  a                                           ; $7ac4: $9f
	and  h                                           ; $7ac5: $a4
	add  h                                           ; $7ac6: $84
	add  l                                           ; $7ac7: $85
	add  [hl]                                        ; $7ac8: $86
	add  a                                           ; $7ac9: $87
	adc  b                                           ; $7aca: $88
	adc  c                                           ; $7acb: $89
	adc  d                                           ; $7acc: $8a
	adc  e                                           ; $7acd: $8b
	adc  h                                           ; $7ace: $8c
	adc  l                                           ; $7acf: $8d
	adc  [hl]                                        ; $7ad0: $8e
	adc  a                                           ; $7ad1: $8f
	xor  c                                           ; $7ad2: $a9
	xor  b                                           ; $7ad3: $a8
	and  l                                           ; $7ad4: $a5
	and  b                                           ; $7ad5: $a0
	and  c                                           ; $7ad6: $a1
	and  d                                           ; $7ad7: $a2
	and  e                                           ; $7ad8: $a3
	and  h                                           ; $7ad9: $a4
	add  h                                           ; $7ada: $84
	add  l                                           ; $7adb: $85
	add  [hl]                                        ; $7adc: $86
	add  a                                           ; $7add: $87
	adc  b                                           ; $7ade: $88
	adc  c                                           ; $7adf: $89
	adc  d                                           ; $7ae0: $8a
	adc  e                                           ; $7ae1: $8b
	adc  h                                           ; $7ae2: $8c
	adc  l                                           ; $7ae3: $8d
	adc  [hl]                                        ; $7ae4: $8e
	adc  a                                           ; $7ae5: $8f
	xor  c                                           ; $7ae6: $a9
	xor  b                                           ; $7ae7: $a8
	and  [hl]                                        ; $7ae8: $a6
	and  a                                           ; $7ae9: $a7
	and  a                                           ; $7aea: $a7
	and  a                                           ; $7aeb: $a7
	and  a                                           ; $7aec: $a7
	and  a                                           ; $7aed: $a7
	and  a                                           ; $7aee: $a7
	and  a                                           ; $7aef: $a7
	and  a                                           ; $7af0: $a7
	and  a                                           ; $7af1: $a7
	and  a                                           ; $7af2: $a7
	and  a                                           ; $7af3: $a7
	and  a                                           ; $7af4: $a7
	and  a                                           ; $7af5: $a7
	and  a                                           ; $7af6: $a7
	and  a                                           ; $7af7: $a7

Jump_099_7af8:
	and  a                                           ; $7af8: $a7
	and  a                                           ; $7af9: $a7
	and  a                                           ; $7afa: $a7
	xor  d                                           ; $7afb: $aa
	db   $10                                         ; $7afc: $10
	ld   de, $1312                                   ; $7afd: $11 $12 $13
	inc  d                                           ; $7b00: $14
	dec  d                                           ; $7b01: $15
	ld   d, $f0                                      ; $7b02: $16 $f0
	pop  af                                          ; $7b04: $f1
	ldh  a, [c]                                      ; $7b05: $f2
	di                                               ; $7b06: $f3
	ld   sp, hl                                      ; $7b07: $f9
	ld   bc, $301d                                   ; $7b08: $01 $1d $30
	rra                                              ; $7b0b: $1f
	nop                                              ; $7b0c: $00
	push af                                          ; $7b0d: $f5
	ld   [bc], a                                     ; $7b0e: $02
	inc  bc                                          ; $7b0f: $03
	jr   nz, @+$23                                   ; $7b10: $20 $21

	ld   [hl+], a                                    ; $7b12: $22
	inc  hl                                          ; $7b13: $23
	inc  h                                           ; $7b14: $24
	dec  h                                           ; $7b15: $25
	ld   h, $1e                                      ; $7b16: $26 $1e
	dec  l                                           ; $7b18: $2d
	ld   l, $34                                      ; $7b19: $2e $34
	dec  a                                           ; $7b1b: $3d
	ld   a, $1d                                      ; $7b1c: $3e $1d
	jr   nc, jr_099_7b4f                             ; $7b1e: $30 $2f

	db   $f4                                         ; $7b20: $f4
	push af                                          ; $7b21: $f5
	or   $f7                                         ; $7b22: $f6 $f7
	jr   nc, jr_099_7b57                             ; $7b24: $30 $31

	ld   [hl-], a                                    ; $7b26: $32
	inc  sp                                          ; $7b27: $33
	jr   nc, jr_099_7b5f                             ; $7b28: $30 $35

	ld   [hl], $1e                                   ; $7b2a: $36 $1e
	ccf                                              ; $7b2c: $3f
	ld   b, b                                        ; $7b2d: $40
	ld   b, h                                        ; $7b2e: $44
	ld   b, l                                        ; $7b2f: $45
	ld   b, [hl]                                     ; $7b30: $46
	dec  e                                           ; $7b31: $1d
	jr   nc, jr_099_7b64                             ; $7b32: $30 $30

	inc  b                                           ; $7b34: $04
	push af                                          ; $7b35: $f5
	ld   b, $07                                      ; $7b36: $06 $07
	jr   nc, jr_099_7b7b                             ; $7b38: $30 $41

	ld   b, d                                        ; $7b3a: $42
	ld   b, e                                        ; $7b3b: $43
	jr   nc, jr_099_7b6e                             ; $7b3c: $30 $30

	jr   nc, @+$20                                   ; $7b3e: $30 $1e

	ccf                                              ; $7b40: $3f
	ld   d, b                                        ; $7b41: $50
	ld   b, h                                        ; $7b42: $44
	ld   h, b                                        ; $7b43: $60
	ld   l, b                                        ; $7b44: $68
	ld   c, l                                        ; $7b45: $4d
	ld   c, [hl]                                     ; $7b46: $4e
	ld   c, a                                        ; $7b47: $4f
	ld   hl, sp-$0b                                  ; $7b48: $f8 $f5
	ld   a, [$30fb]                                  ; $7b4a: $fa $fb $30
	ld   d, c                                        ; $7b4d: $51
	ld   d, d                                        ; $7b4e: $52

jr_099_7b4f:
	ld   d, e                                        ; $7b4f: $53
	ld   d, h                                        ; $7b50: $54
	ld   d, l                                        ; $7b51: $55
	ld   d, [hl]                                     ; $7b52: $56
	ld   l, c                                        ; $7b53: $69
	ld   l, d                                        ; $7b54: $6a
	ld   [hl], e                                     ; $7b55: $73
	ld   [hl], h                                     ; $7b56: $74

jr_099_7b57:
	ld   a, h                                        ; $7b57: $7c
	ld   e, h                                        ; $7b58: $5c
	ld   e, l                                        ; $7b59: $5d
	ld   e, [hl]                                     ; $7b5a: $5e
	ld   e, a                                        ; $7b5b: $5f
	ld   [$0a09], sp                                 ; $7b5c: $08 $09 $0a

jr_099_7b5f:
	dec  bc                                          ; $7b5f: $0b
	jr   nc, @+$63                                   ; $7b60: $30 $61

	ld   h, d                                        ; $7b62: $62
	ld   h, e                                        ; $7b63: $63

jr_099_7b64:
	ld   h, h                                        ; $7b64: $64
	ld   h, l                                        ; $7b65: $65
	ld   h, [hl]                                     ; $7b66: $66
	ld   h, a                                        ; $7b67: $67
	ld   h, a                                        ; $7b68: $67
	ld   h, a                                        ; $7b69: $67
	ld   h, a                                        ; $7b6a: $67
	ld   l, e                                        ; $7b6b: $6b
	ld   l, h                                        ; $7b6c: $6c
	ld   l, l                                        ; $7b6d: $6d

jr_099_7b6e:
	ld   l, [hl]                                     ; $7b6e: $6e
	ld   l, a                                        ; $7b6f: $6f
	db   $fc                                         ; $7b70: $fc
	db   $fd                                         ; $7b71: $fd
	cp   $ff                                         ; $7b72: $fe $ff
	ld   [hl], b                                     ; $7b74: $70
	ld   [hl], c                                     ; $7b75: $71
	ld   [hl], d                                     ; $7b76: $72
	ld   [hl], d                                     ; $7b77: $72
	ld   [hl], d                                     ; $7b78: $72
	ld   [hl], l                                     ; $7b79: $75
	halt                                             ; $7b7a: $76

jr_099_7b7b:
	ld   [hl], a                                     ; $7b7b: $77
	ld   a, b                                        ; $7b7c: $78
	ld   a, c                                        ; $7b7d: $79
	ld   a, d                                        ; $7b7e: $7a
	ld   a, e                                        ; $7b7f: $7b
	ld   a, e                                        ; $7b80: $7b
	ld   a, l                                        ; $7b81: $7d
	ld   a, [hl]                                     ; $7b82: $7e
	ld   a, a                                        ; $7b83: $7f
	inc  c                                           ; $7b84: $0c
	dec  c                                           ; $7b85: $0d
	ld   c, $0f                                      ; $7b86: $0e $0f
	ld   [$80ec], a                                  ; $7b88: $ea $ec $80
	add  d                                           ; $7b8b: $82
	add  h                                           ; $7b8c: $84
	add  [hl]                                        ; $7b8d: $86
	and  b                                           ; $7b8e: $a0
	and  d                                           ; $7b8f: $a2
	and  h                                           ; $7b90: $a4
	and  [hl]                                        ; $7b91: $a6
	xor  e                                           ; $7b92: $ab
	xor  h                                           ; $7b93: $ac
	xor  l                                           ; $7b94: $ad
	xor  [hl]                                        ; $7b95: $ae
	xor  e                                           ; $7b96: $ab
	xor  h                                           ; $7b97: $ac
	xor  l                                           ; $7b98: $ad
	xor  [hl]                                        ; $7b99: $ae
	db   $ec                                         ; $7b9a: $ec
	xor  $eb                                         ; $7b9b: $ee $eb
	db   $ed                                         ; $7b9d: $ed
	add  c                                           ; $7b9e: $81
	add  e                                           ; $7b9f: $83
	add  l                                           ; $7ba0: $85
	add  a                                           ; $7ba1: $87
	and  c                                           ; $7ba2: $a1
	and  e                                           ; $7ba3: $a3
	and  l                                           ; $7ba4: $a5
	and  a                                           ; $7ba5: $a7
	xor  a                                           ; $7ba6: $af
	or   b                                           ; $7ba7: $b0
	or   c                                           ; $7ba8: $b1
	or   d                                           ; $7ba9: $b2
	xor  a                                           ; $7baa: $af
	or   b                                           ; $7bab: $b0
	or   c                                           ; $7bac: $b1
	or   d                                           ; $7bad: $b2
	db   $ed                                         ; $7bae: $ed
	rst  $28                                         ; $7baf: $ef
	ret  c                                           ; $7bb0: $d8

	jp   c, $dedc                                    ; $7bb1: $da $dc $de

	ldh  [$e2], a                                    ; $7bb4: $e0 $e2
	db   $e4                                         ; $7bb6: $e4
	and  $e8                                         ; $7bb7: $e6 $e8
	ld   [$eeec], a                                  ; $7bb9: $ea $ec $ee
	ldh  a, [$f2]                                    ; $7bbc: $f0 $f2
	db   $f4                                         ; $7bbe: $f4
	or   $f8                                         ; $7bbf: $f6 $f8
	ld   a, [$fefc]                                  ; $7bc1: $fa $fc $fe
	reti                                             ; $7bc4: $d9


	db   $db                                         ; $7bc5: $db
	db   $dd                                         ; $7bc6: $dd
	rst  JumpTable                                         ; $7bc7: $df
	pop  hl                                          ; $7bc8: $e1
	db   $e3                                         ; $7bc9: $e3
	push hl                                          ; $7bca: $e5
	rst  $20                                         ; $7bcb: $e7
	jp   hl                                          ; $7bcc: $e9


	db   $eb                                         ; $7bcd: $eb
	db   $ed                                         ; $7bce: $ed
	rst  $28                                         ; $7bcf: $ef
	pop  af                                          ; $7bd0: $f1
	di                                               ; $7bd1: $f3
	push af                                          ; $7bd2: $f5
	rst  $30                                         ; $7bd3: $f7
	ld   sp, hl                                      ; $7bd4: $f9
	ei                                               ; $7bd5: $fb
	db   $fd                                         ; $7bd6: $fd
	rst  $38                                         ; $7bd7: $ff
	nop                                              ; $7bd8: $00
	inc  bc                                          ; $7bd9: $03
	rra                                              ; $7bda: $1f
	rra                                              ; $7bdb: $1f
	rra                                              ; $7bdc: $1f
	rra                                              ; $7bdd: $1f
	rra                                              ; $7bde: $1f
	rra                                              ; $7bdf: $1f
	rra                                              ; $7be0: $1f
	rra                                              ; $7be1: $1f
	rra                                              ; $7be2: $1f
	rra                                              ; $7be3: $1f
	rra                                              ; $7be4: $1f
	rra                                              ; $7be5: $1f
	rra                                              ; $7be6: $1f
	rra                                              ; $7be7: $1f
	rra                                              ; $7be8: $1f
	rra                                              ; $7be9: $1f
	dec  [hl]                                        ; $7bea: $35
	ld   bc, $0300                                   ; $7beb: $01 $00 $03
	inc  [hl]                                        ; $7bee: $34
	inc  b                                           ; $7bef: $04
	ld   b, $03                                      ; $7bf0: $06 $03
	inc  b                                           ; $7bf2: $04
	ld   [$0a03], sp                                 ; $7bf3: $08 $03 $0a
	ld   b, $03                                      ; $7bf6: $06 $03
	ld   a, [bc]                                     ; $7bf8: $0a
	ld   [$0c03], sp                                 ; $7bf9: $08 $03 $0c
	ld   c, $03                                      ; $7bfc: $0e $03
	inc  [hl]                                        ; $7bfe: $34
	ld   bc, $0300                                   ; $7bff: $01 $00 $03
	inc  [hl]                                        ; $7c02: $34
	dec  b                                           ; $7c03: $05
	rlca                                             ; $7c04: $07
	inc  bc                                          ; $7c05: $03
	dec  b                                           ; $7c06: $05
	add  hl, bc                                      ; $7c07: $09
	inc  bc                                          ; $7c08: $03
	dec  bc                                          ; $7c09: $0b
	rlca                                             ; $7c0a: $07
	inc  bc                                          ; $7c0b: $03
	dec  bc                                          ; $7c0c: $0b
	add  hl, bc                                      ; $7c0d: $09
	inc  bc                                          ; $7c0e: $03
	dec  c                                           ; $7c0f: $0d
	rrca                                             ; $7c10: $0f
	inc  bc                                          ; $7c11: $03
	inc  [hl]                                        ; $7c12: $34
	ld   bc, $0300                                   ; $7c13: $01 $00 $03
	inc  [hl]                                        ; $7c16: $34
	ld   d, [hl]                                     ; $7c17: $56
	ld   d, a                                        ; $7c18: $57
	dec  e                                           ; $7c19: $1d
	ld   d, [hl]                                     ; $7c1a: $56
	ld   d, a                                        ; $7c1b: $57
	dec  e                                           ; $7c1c: $1d
	ld   d, [hl]                                     ; $7c1d: $56
	ld   d, a                                        ; $7c1e: $57
	dec  e                                           ; $7c1f: $1d
	ld   d, [hl]                                     ; $7c20: $56
	ld   d, a                                        ; $7c21: $57
	dec  e                                           ; $7c22: $1d
	ld   d, [hl]                                     ; $7c23: $56
	ld   d, a                                        ; $7c24: $57
	inc  [hl]                                        ; $7c25: $34
	inc  [hl]                                        ; $7c26: $34
	ld   bc, $0300                                   ; $7c27: $01 $00 $03
	inc  [hl]                                        ; $7c2a: $34
	ld   e, b                                        ; $7c2b: $58
	ld   e, c                                        ; $7c2c: $59
	ld   e, $58                                      ; $7c2d: $1e $58
	ld   e, c                                        ; $7c2f: $59
	ld   e, $58                                      ; $7c30: $1e $58
	ld   e, c                                        ; $7c32: $59
	ld   e, $58                                      ; $7c33: $1e $58
	ld   e, c                                        ; $7c35: $59
	ld   e, $58                                      ; $7c36: $1e $58
	ld   e, c                                        ; $7c38: $59
	inc  [hl]                                        ; $7c39: $34
	inc  [hl]                                        ; $7c3a: $34
	ld   bc, $0300                                   ; $7c3b: $01 $00 $03
	inc  [hl]                                        ; $7c3e: $34
	rra                                              ; $7c3f: $1f
	rra                                              ; $7c40: $1f
	dec  [hl]                                        ; $7c41: $35
	rra                                              ; $7c42: $1f
	rra                                              ; $7c43: $1f
	dec  [hl]                                        ; $7c44: $35
	rra                                              ; $7c45: $1f
	rra                                              ; $7c46: $1f
	dec  [hl]                                        ; $7c47: $35
	rra                                              ; $7c48: $1f
	rra                                              ; $7c49: $1f
	dec  [hl]                                        ; $7c4a: $35
	rra                                              ; $7c4b: $1f
	rra                                              ; $7c4c: $1f
	dec  [hl]                                        ; $7c4d: $35
	inc  [hl]                                        ; $7c4e: $34
	ld   bc, $0300                                   ; $7c4f: $01 $00 $03
	rra                                              ; $7c52: $1f
	rra                                              ; $7c53: $1f
	rra                                              ; $7c54: $1f
	rra                                              ; $7c55: $1f
	rra                                              ; $7c56: $1f
	rra                                              ; $7c57: $1f
	rra                                              ; $7c58: $1f
	rra                                              ; $7c59: $1f
	rra                                              ; $7c5a: $1f
	rra                                              ; $7c5b: $1f
	rra                                              ; $7c5c: $1f
	rra                                              ; $7c5d: $1f
	rra                                              ; $7c5e: $1f
	rra                                              ; $7c5f: $1f
	rra                                              ; $7c60: $1f
	rra                                              ; $7c61: $1f
	dec  [hl]                                        ; $7c62: $35
	ld   bc, $0300                                   ; $7c63: $01 $00 $03
	inc  bc                                          ; $7c66: $03
	inc  bc                                          ; $7c67: $03
	inc  bc                                          ; $7c68: $03
	rra                                              ; $7c69: $1f
	rra                                              ; $7c6a: $1f
	rra                                              ; $7c6b: $1f
	rra                                              ; $7c6c: $1f
	rra                                              ; $7c6d: $1f
	rra                                              ; $7c6e: $1f
	rra                                              ; $7c6f: $1f
	rra                                              ; $7c70: $1f
	rra                                              ; $7c71: $1f
	rra                                              ; $7c72: $1f
	rra                                              ; $7c73: $1f
	rra                                              ; $7c74: $1f
	dec  [hl]                                        ; $7c75: $35
	inc  bc                                          ; $7c76: $03
	ld   bc, $0300                                   ; $7c77: $01 $00 $03
	inc  bc                                          ; $7c7a: $03
	inc  bc                                          ; $7c7b: $03
	inc  bc                                          ; $7c7c: $03
	jr   z, jr_099_7ca8                              ; $7c7d: $28 $29

	ld   a, [hl+]                                    ; $7c7f: $2a
	dec  hl                                          ; $7c80: $2b
	inc  l                                           ; $7c81: $2c
	dec  l                                           ; $7c82: $2d
	ld   l, $2f                                      ; $7c83: $2e $2f
	jr   nc, jr_099_7cb8                             ; $7c85: $30 $31

	ld   [hl-], a                                    ; $7c87: $32
	inc  sp                                          ; $7c88: $33
	inc  [hl]                                        ; $7c89: $34
	inc  bc                                          ; $7c8a: $03
	ld   bc, $0300                                   ; $7c8b: $01 $00 $03
	inc  bc                                          ; $7c8e: $03
	jr   nz, jr_099_7cb2                             ; $7c8f: $20 $21

	ld   [hl], $37                                   ; $7c91: $36 $37
	ld   a, [hl-]                                    ; $7c93: $3a
	dec  sp                                          ; $7c94: $3b
	ld   a, $3f                                      ; $7c95: $3e $3f
	ld   b, d                                        ; $7c97: $42
	ld   b, e                                        ; $7c98: $43
	ld   b, [hl]                                     ; $7c99: $46
	ld   b, a                                        ; $7c9a: $47
	ld   c, d                                        ; $7c9b: $4a
	ld   c, e                                        ; $7c9c: $4b
	inc  [hl]                                        ; $7c9d: $34
	inc  bc                                          ; $7c9e: $03
	ld   bc, $0300                                   ; $7c9f: $01 $00 $03
	inc  bc                                          ; $7ca2: $03

jr_099_7ca3:
	ld   [hl+], a                                    ; $7ca3: $22
	inc  hl                                          ; $7ca4: $23
	jr   c, jr_099_7ce0                              ; $7ca5: $38 $39

	inc  a                                           ; $7ca7: $3c

jr_099_7ca8:
	dec  a                                           ; $7ca8: $3d
	ld   b, b                                        ; $7ca9: $40
	ld   b, c                                        ; $7caa: $41
	ld   b, h                                        ; $7cab: $44
	ld   b, l                                        ; $7cac: $45
	ld   c, b                                        ; $7cad: $48
	ld   c, c                                        ; $7cae: $49
	ld   c, h                                        ; $7caf: $4c
	ld   c, l                                        ; $7cb0: $4d
	inc  [hl]                                        ; $7cb1: $34

jr_099_7cb2:
	inc  bc                                          ; $7cb2: $03
	ld   bc, $0300                                   ; $7cb3: $01 $00 $03
	inc  bc                                          ; $7cb6: $03
	inc  h                                           ; $7cb7: $24

jr_099_7cb8:
	dec  h                                           ; $7cb8: $25
	ld   d, [hl]                                     ; $7cb9: $56
	ld   d, a                                        ; $7cba: $57
	ld   d, [hl]                                     ; $7cbb: $56
	ld   d, a                                        ; $7cbc: $57
	ld   d, [hl]                                     ; $7cbd: $56
	ld   d, a                                        ; $7cbe: $57
	ld   d, [hl]                                     ; $7cbf: $56
	ld   d, a                                        ; $7cc0: $57
	ld   d, [hl]                                     ; $7cc1: $56
	ld   d, a                                        ; $7cc2: $57
	ld   d, d                                        ; $7cc3: $52
	ld   d, e                                        ; $7cc4: $53
	inc  [hl]                                        ; $7cc5: $34
	inc  bc                                          ; $7cc6: $03
	ld   bc, $0300                                   ; $7cc7: $01 $00 $03
	inc  bc                                          ; $7cca: $03
	ld   h, $27                                      ; $7ccb: $26 $27
	ld   e, b                                        ; $7ccd: $58
	ld   e, c                                        ; $7cce: $59
	ld   e, b                                        ; $7ccf: $58
	ld   e, c                                        ; $7cd0: $59
	ld   e, b                                        ; $7cd1: $58
	ld   e, c                                        ; $7cd2: $59
	ld   e, b                                        ; $7cd3: $58
	ld   e, c                                        ; $7cd4: $59
	ld   e, b                                        ; $7cd5: $58
	ld   e, c                                        ; $7cd6: $59
	ld   d, h                                        ; $7cd7: $54
	ld   d, l                                        ; $7cd8: $55
	inc  [hl]                                        ; $7cd9: $34
	inc  bc                                          ; $7cda: $03
	ld   bc, $0300                                   ; $7cdb: $01 $00 $03
	inc  bc                                          ; $7cde: $03
	rra                                              ; $7cdf: $1f

jr_099_7ce0:
	rra                                              ; $7ce0: $1f
	rra                                              ; $7ce1: $1f
	rra                                              ; $7ce2: $1f
	rra                                              ; $7ce3: $1f
	rra                                              ; $7ce4: $1f
	rra                                              ; $7ce5: $1f
	rra                                              ; $7ce6: $1f
	rra                                              ; $7ce7: $1f
	rra                                              ; $7ce8: $1f
	rra                                              ; $7ce9: $1f
	rra                                              ; $7cea: $1f
	rra                                              ; $7ceb: $1f
	rra                                              ; $7cec: $1f
	dec  [hl]                                        ; $7ced: $35
	inc  bc                                          ; $7cee: $03
	ld   bc, $00f3                                   ; $7cef: $01 $f3 $00
	adc  h                                           ; $7cf2: $8c
	nop                                              ; $7cf3: $00
	inc  c                                           ; $7cf4: $0c
	db   $e3                                         ; $7cf5: $e3
	nop                                              ; $7cf6: $00
	cp   a                                           ; $7cf7: $bf
	and  e                                           ; $7cf8: $a3
	ld   h, d                                        ; $7cf9: $62
	ld   l, [hl]                                     ; $7cfa: $6e
	ld   l, d                                        ; $7cfb: $6a
	ld   l, [hl]                                     ; $7cfc: $6e
	call nc, $9ddc                                   ; $7cfd: $d4 $dc $9d
	db   $dd                                         ; $7d00: $dd
	ld   a, l                                        ; $7d01: $7d
	add  c                                           ; $7d02: $81
	cp   l                                           ; $7d03: $bd
	add  b                                           ; $7d04: $80
	cp   c                                           ; $7d05: $b9
	nop                                              ; $7d06: $00
	ld   a, a                                        ; $7d07: $7f
	add  e                                           ; $7d08: $83
	nop                                              ; $7d09: $00
	rlca                                             ; $7d0a: $07
	jr   jr_099_7d0d                                 ; $7d0b: $18 $00

jr_099_7d0d:
	inc  h                                           ; $7d0d: $24
	jr   jr_099_7d5a                                 ; $7d0e: $18 $4a

	jr   c, jr_099_7ca3                              ; $7d10: $38 $91

	ld   a, h                                        ; $7d12: $7c
	add  b                                           ; $7d13: $80
	ld   a, l                                        ; $7d14: $7d
	ld   bc, $7d39                                   ; $7d15: $01 $39 $7d
	add  d                                           ; $7d18: $82
	cp   $82                                         ; $7d19: $fe $82
	sbc  a                                           ; $7d1b: $9f
	add  h                                           ; $7d1c: $84
	rra                                              ; $7d1d: $1f
	nop                                              ; $7d1e: $00
	rst  $38                                         ; $7d1f: $ff
	adc  e                                           ; $7d20: $8b
	nop                                              ; $7d21: $00
	ld   a, [bc]                                     ; $7d22: $0a
	add  b                                           ; $7d23: $80
	nop                                              ; $7d24: $00
	ldh  [$80], a                                    ; $7d25: $e0 $80
	ld   hl, sp-$20                                  ; $7d27: $f8 $e0
	rst  $38                                         ; $7d29: $ff
	ld   hl, sp-$04                                  ; $7d2a: $f8 $fc
	rst  $38                                         ; $7d2c: $ff
	cp   h                                           ; $7d2d: $bc
	add  c                                           ; $7d2e: $81

jr_099_7d2f:
	cp   a                                           ; $7d2f: $bf
	add  b                                           ; $7d30: $80
	rst  JumpTable                                         ; $7d31: $df
	add  b                                           ; $7d32: $80
	rst  $28                                         ; $7d33: $ef
	nop                                              ; $7d34: $00
	rst  $38                                         ; $7d35: $ff
	add  c                                           ; $7d36: $81
	nop                                              ; $7d37: $00
	ld   a, [bc]                                     ; $7d38: $0a
	ret  nz                                          ; $7d39: $c0

	nop                                              ; $7d3a: $00
	ld   [hl], b                                     ; $7d3b: $70
	ret  nz                                          ; $7d3c: $c0

	jr   jr_099_7d2f                                 ; $7d3d: $18 $f0

	ld   d, b                                        ; $7d3f: $50
	ldh  a, [rAUD3LEVEL]                             ; $7d40: $f0 $1c
	ld   hl, sp-$28                                  ; $7d42: $f8 $d8
	add  c                                           ; $7d44: $81
	ld   hl, sp-$80                                  ; $7d45: $f8 $80
	adc  b                                           ; $7d47: $88
	ld   bc, $c0c2                                   ; $7d48: $01 $c2 $c0
	add  b                                           ; $7d4b: $80
	nop                                              ; $7d4c: $00
	rlca                                             ; $7d4d: $07
	ld   bc, $4000                                   ; $7d4e: $01 $00 $40
	ret  nz                                          ; $7d51: $c0

	sbc  b                                           ; $7d52: $98
	ld   hl, sp-$20                                  ; $7d53: $f8 $e0
	rst  $38                                         ; $7d55: $ff
	add  h                                           ; $7d56: $84
	nop                                              ; $7d57: $00
	rlca                                             ; $7d58: $07
	ret  nz                                          ; $7d59: $c0

jr_099_7d5a:
	nop                                              ; $7d5a: $00
	jr   nz, jr_099_7d9d                             ; $7d5b: $20 $40

	nop                                              ; $7d5d: $00
	ret  nz                                          ; $7d5e: $c0

	ld   [hl], b                                     ; $7d5f: $70
	ldh  [$80], a                                    ; $7d60: $e0 $80
	add  b                                           ; $7d62: $80
	inc  b                                           ; $7d63: $04
	stop                                             ; $7d64: $10 $00
	jr   nz, jr_099_7d68                             ; $7d66: $20 $00

jr_099_7d68:
	ld   b, b                                        ; $7d68: $40
	add  c                                           ; $7d69: $81
	nop                                              ; $7d6a: $00
	nop                                              ; $7d6b: $00
	ld   b, b                                        ; $7d6c: $40
	add  c                                           ; $7d6d: $81
	nop                                              ; $7d6e: $00
	add  b                                           ; $7d6f: $80
	add  b                                           ; $7d70: $80
	inc  b                                           ; $7d71: $04
	ld   b, b                                        ; $7d72: $40
	nop                                              ; $7d73: $00
	add  c                                           ; $7d74: $81
	nop                                              ; $7d75: $00
	inc  bc                                          ; $7d76: $03
	add  c                                           ; $7d77: $81
	ld   bc, $0600                                   ; $7d78: $01 $00 $06
	add  c                                           ; $7d7b: $81
	ld   [bc], a                                     ; $7d7c: $02
	nop                                              ; $7d7d: $00
	dec  c                                           ; $7d7e: $0d
	add  c                                           ; $7d7f: $81
	dec  b                                           ; $7d80: $05
	add  hl, bc                                      ; $7d81: $09
	inc  e                                           ; $7d82: $1c
	dec  c                                           ; $7d83: $0d
	dec  l                                           ; $7d84: $2d

jr_099_7d85:
	dec  c                                           ; $7d85: $0d
	ld   c, l                                        ; $7d86: $4d
	dec  c                                           ; $7d87: $0d
	adc  h                                           ; $7d88: $8c
	dec  c                                           ; $7d89: $0d
	add  c                                           ; $7d8a: $81
	add  l                                           ; $7d8b: $85
	add  b                                           ; $7d8c: $80
	add  [hl]                                        ; $7d8d: $86
	ld   b, $c4                                      ; $7d8e: $06 $c4
	jp   nz, $e3e0                                   ; $7d90: $c2 $e0 $e3

	ld   hl, sp-$07                                  ; $7d93: $f8 $f9
	rst  $38                                         ; $7d95: $ff
	add  c                                           ; $7d96: $81
	nop                                              ; $7d97: $00
	inc  bc                                          ; $7d98: $03
	ld   bc, $0600                                   ; $7d99: $01 $00 $06
	nop                                              ; $7d9c: $00

jr_099_7d9d:
	add  b                                           ; $7d9d: $80
	ld   [bc], a                                     ; $7d9e: $02
	add  b                                           ; $7d9f: $80
	inc  bc                                          ; $7da0: $03
	add  b                                           ; $7da1: $80
	ld   bc, $0400                                   ; $7da2: $01 $00 $04
	add  e                                           ; $7da5: $83
	nop                                              ; $7da6: $00
	nop                                              ; $7da7: $00
	inc  b                                           ; $7da8: $04
	add  c                                           ; $7da9: $81
	nop                                              ; $7daa: $00
	ld   bc, $0008                                   ; $7dab: $01 $08 $00
	add  b                                           ; $7dae: $80
	rlca                                             ; $7daf: $07
	add  b                                           ; $7db0: $80
	ld   bc, $0280                                   ; $7db1: $01 $80 $02
	add  b                                           ; $7db4: $80
	nop                                              ; $7db5: $00
	add  b                                           ; $7db6: $80
	inc  bc                                          ; $7db7: $03
	nop                                              ; $7db8: $00
	ld   [$0083], sp                                 ; $7db9: $08 $83 $00
	nop                                              ; $7dbc: $00
	add  hl, bc                                      ; $7dbd: $09
	add  c                                           ; $7dbe: $81
	ld   bc, $0480                                   ; $7dbf: $01 $80 $04
	add  b                                           ; $7dc2: $80
	ld   b, $04                                      ; $7dc3: $06 $04
	ld   [$0600], sp                                 ; $7dc5: $08 $00 $06
	nop                                              ; $7dc8: $00
	ld   bc, $0087                                   ; $7dc9: $01 $87 $00
	ld   bc, $fc03                                   ; $7dcc: $01 $03 $fc
	add  b                                           ; $7dcf: $80
	ld   [$1e80], sp                                 ; $7dd0: $08 $80 $1e
	add  b                                           ; $7dd3: $80
	ld   a, h                                        ; $7dd4: $7c
	add  b                                           ; $7dd5: $80
	ldh  a, [rDIV]                                   ; $7dd6: $f0 $04
	ret  nz                                          ; $7dd8: $c0

	jp   nz, $1602                                   ; $7dd9: $c2 $02 $16

	ld   d, [hl]                                     ; $7ddc: $56
	add  b                                           ; $7ddd: $80
	ld   d, l                                        ; $7dde: $55
	ld   bc, $1656                                   ; $7ddf: $01 $56 $16
	add  b                                           ; $7de2: $80
	ld   a, [de]                                     ; $7de3: $1a
	ld   b, $04                                      ; $7de4: $06 $04
	inc  d                                           ; $7de6: $14
	ld   [de], a                                     ; $7de7: $12
	jp   nc, $0111                                   ; $7de8: $d2 $11 $01

	nop                                              ; $7deb: $00
	add  b                                           ; $7dec: $80
	inc  b                                           ; $7ded: $04
	inc  b                                           ; $7dee: $04
	jr   z, jr_099_7df9                              ; $7def: $28 $08

	stop                                             ; $7df1: $10 $00
	rrca                                             ; $7df3: $0f
	add  l                                           ; $7df4: $85
	nop                                              ; $7df5: $00
	inc  bc                                          ; $7df6: $03
	inc  bc                                          ; $7df7: $03
	nop                                              ; $7df8: $00

jr_099_7df9:
	rlca                                             ; $7df9: $07
	inc  bc                                          ; $7dfa: $03
	add  b                                           ; $7dfb: $80
	nop                                              ; $7dfc: $00
	dec  b                                           ; $7dfd: $05
	ld   [rROMB1], sp                                 ; $7dfe: $08 $00 $30
	nop                                              ; $7e01: $00
	ld   h, b                                        ; $7e02: $60
	jr   nz, jr_099_7d85                             ; $7e03: $20 $80

	jr   nc, @+$03                                   ; $7e05: $30 $01

	ld   hl, sp+$78                                  ; $7e07: $f8 $78
	add  d                                           ; $7e09: $82
	db   $fc                                         ; $7e0a: $fc
	add  b                                           ; $7e0b: $80
	cp   $00                                         ; $7e0c: $fe $00
	ld   bc, $7e81                                   ; $7e0e: $01 $81 $7e
	nop                                              ; $7e11: $00
	ld   a, a                                        ; $7e12: $7f
	add  b                                           ; $7e13: $80
	ld   a, e                                        ; $7e14: $7b
	add  b                                           ; $7e15: $80
	ld   a, l                                        ; $7e16: $7d
	add  b                                           ; $7e17: $80
	ld   a, [hl]                                     ; $7e18: $7e
	db   $10                                         ; $7e19: $10
	ld   a, a                                        ; $7e1a: $7f
	rst  $38                                         ; $7e1b: $ff
	rra                                              ; $7e1c: $1f
	ei                                               ; $7e1d: $fb
	dec  bc                                          ; $7e1e: $0b
	ld   a, b                                        ; $7e1f: $78
	nop                                              ; $7e20: $00
	inc  e                                           ; $7e21: $1c
	nop                                              ; $7e22: $00
	ld   e, $10                                      ; $7e23: $1e $10
	rrca                                             ; $7e25: $0f
	ld   [$0c0f], sp                                 ; $7e26: $08 $0f $0c
	rlca                                             ; $7e29: $07
	ld   b, $80                                      ; $7e2a: $06 $80
	rlca                                             ; $7e2c: $07
	add  b                                           ; $7e2d: $80
	inc  bc                                          ; $7e2e: $03
	nop                                              ; $7e2f: $00
	rst  $38                                         ; $7e30: $ff
	add  e                                           ; $7e31: $83
	nop                                              ; $7e32: $00
	add  b                                           ; $7e33: $80
	add  b                                           ; $7e34: $80
	add  b                                           ; $7e35: $80
	ret  nz                                          ; $7e36: $c0

	inc  b                                           ; $7e37: $04
	ldh  [rAUD4LEN], a                               ; $7e38: $e0 $20
	ld   sp, $cfc1                                   ; $7e3a: $31 $c1 $cf
	add  b                                           ; $7e3d: $80
	ldh  a, [rP1]                                    ; $7e3e: $f0 $00
	cp   $80                                         ; $7e40: $fe $80
	ld   a, h                                        ; $7e42: $7c
	add  d                                           ; $7e43: $82
	nop                                              ; $7e44: $00
	ld   d, $80                                      ; $7e45: $16 $80
	nop                                              ; $7e47: $00
	ret  nz                                          ; $7e48: $c0

	nop                                              ; $7e49: $00
	ldh  [rP1], a                                    ; $7e4a: $e0 $00
	ldh  a, [$80]                                    ; $7e4c: $f0 $80
	db   $d3                                         ; $7e4e: $d3
	db   $fc                                         ; $7e4f: $fc
	ld   a, [$f4f8]                                  ; $7e50: $fa $f8 $f4
	ldh  a, [$e8]                                    ; $7e53: $f0 $e8
	ldh  [$d0], a                                    ; $7e55: $e0 $d0
	ret  nz                                          ; $7e57: $c0

	and  b                                           ; $7e58: $a0
	add  b                                           ; $7e59: $80
	ld   b, b                                        ; $7e5a: $40
	nop                                              ; $7e5b: $00
	add  b                                           ; $7e5c: $80
	add  c                                           ; $7e5d: $81
	nop                                              ; $7e5e: $00
	nop                                              ; $7e5f: $00
	add  b                                           ; $7e60: $80
	add  c                                           ; $7e61: $81
	nop                                              ; $7e62: $00
	inc  de                                          ; $7e63: $13
	ld   b, b                                        ; $7e64: $40
	nop                                              ; $7e65: $00
	jr   nz, jr_099_7ea8                             ; $7e66: $20 $40

	ld   d, b                                        ; $7e68: $50
	ld   h, b                                        ; $7e69: $60
	ld   l, b                                        ; $7e6a: $68
	ld   [hl], b                                     ; $7e6b: $70
	halt                                             ; $7e6c: $76
	ld   [hl], b                                     ; $7e6d: $70
	ld   c, $00                                      ; $7e6e: $0e $00
	ldh  [$80], a                                    ; $7e70: $e0 $80
	ld   a, b                                        ; $7e72: $78
	ld   h, b                                        ; $7e73: $60
	cp   [hl]                                        ; $7e74: $be
	cp   b                                           ; $7e75: $b8
	cp   a                                           ; $7e76: $bf
	cp   [hl]                                        ; $7e77: $be
	add  b                                           ; $7e78: $80
	rst  JumpTable                                         ; $7e79: $df
	add  b                                           ; $7e7a: $80
	rst  $28                                         ; $7e7b: $ef
	ld   [bc], a                                     ; $7e7c: $02
	db   $ed                                         ; $7e7d: $ed
	rst  $28                                         ; $7e7e: $ef
	or   $81                                         ; $7e7f: $f6 $81
	rst  $30                                         ; $7e81: $f7
	inc  bc                                          ; $7e82: $03
	ld   sp, hl                                      ; $7e83: $f9
	ei                                               ; $7e84: $fb
	ld   a, d                                        ; $7e85: $7a
	ld   a, e                                        ; $7e86: $7b
	add  d                                           ; $7e87: $82
	ld   a, l                                        ; $7e88: $7d
	add  d                                           ; $7e89: $82
	ld   a, [hl]                                     ; $7e8a: $7e
	nop                                              ; $7e8b: $00
	rst  $38                                         ; $7e8c: $ff
	add  l                                           ; $7e8d: $85
	nop                                              ; $7e8e: $00
	inc  c                                           ; $7e8f: $0c
	add  b                                           ; $7e90: $80
	nop                                              ; $7e91: $00
	ldh  [$80], a                                    ; $7e92: $e0 $80
	ldh  a, [$e0]                                    ; $7e94: $f0 $e0
	ld   hl, sp-$10                                  ; $7e96: $f8 $f0
	db   $fc                                         ; $7e98: $fc
	ld   hl, sp+$78                                  ; $7e99: $f8 $78

jr_099_7e9b:
	ld   hl, sp-$42                                  ; $7e9b: $f8 $be
	add  c                                           ; $7e9d: $81
	db   $fc                                         ; $7e9e: $fc
	inc  b                                           ; $7e9f: $04
	call c, Call_099_6ffc                            ; $7ea0: $dc $fc $6f
	cp   $f6                                         ; $7ea3: $fe $f6
	add  c                                           ; $7ea5: $81
	sbc  $05                                         ; $7ea6: $de $05

jr_099_7ea8:
	ld   [hl], $7e                                   ; $7ea8: $36 $7e
	ld   [hl], a                                     ; $7eaa: $77
	ld   a, a                                        ; $7eab: $7f
	ld   a, e                                        ; $7eac: $7b
	ld   a, a                                        ; $7ead: $7f
	add  b                                           ; $7eae: $80
	cp   a                                           ; $7eaf: $bf
	inc  bc                                          ; $7eb0: $03
	cp   l                                           ; $7eb1: $bd
	cp   a                                           ; $7eb2: $bf
	xor  a                                           ; $7eb3: $af
	cp   a                                           ; $7eb4: $bf
	add  b                                           ; $7eb5: $80
	rst  JumpTable                                         ; $7eb6: $df
	ld   [bc], a                                     ; $7eb7: $02
	rst  $10                                         ; $7eb8: $d7
	rst  JumpTable                                         ; $7eb9: $df
	sbc  $81                                         ; $7eba: $de $81
	rst  JumpTable                                         ; $7ebc: $df
	ld   bc, $dfdb                                   ; $7ebd: $01 $db $df
	add  b                                           ; $7ec0: $80
	rst  $28                                         ; $7ec1: $ef
	nop                                              ; $7ec2: $00
	db   $ed                                         ; $7ec3: $ed
	add  e                                           ; $7ec4: $83
	rst  $28                                         ; $7ec5: $ef
	ld   [bc], a                                     ; $7ec6: $02
	xor  $ef                                         ; $7ec7: $ee $ef
	rst  $38                                         ; $7ec9: $ff
	add  a                                           ; $7eca: $87
	nop                                              ; $7ecb: $00
	dec  bc                                          ; $7ecc: $0b
	ld   bc, $0200                                   ; $7ecd: $01 $00 $02
	nop                                              ; $7ed0: $00
	ld   b, $02                                      ; $7ed1: $06 $02
	rra                                              ; $7ed3: $1f
	rlca                                             ; $7ed4: $07
	ld   a, a                                        ; $7ed5: $7f
	rra                                              ; $7ed6: $1f
	rst  $38                                         ; $7ed7: $ff
	ld   a, a                                        ; $7ed8: $7f
	adc  c                                           ; $7ed9: $89
	rst  $38                                         ; $7eda: $ff
	add  c                                           ; $7edb: $81
	nop                                              ; $7edc: $00
	ld   c, $01                                      ; $7edd: $0e $01
	nop                                              ; $7edf: $00
	rlca                                             ; $7ee0: $07
	ld   bc, $071f                                   ; $7ee1: $01 $1f $07
	ld   a, a                                        ; $7ee4: $7f
	rra                                              ; $7ee5: $1f
	ei                                               ; $7ee6: $fb
	ld   a, a                                        ; $7ee7: $7f
	rst  $20                                         ; $7ee8: $e7
	rst  $38                                         ; $7ee9: $ff
	rst  JumpTable                                         ; $7eea: $df
	rst  $38                                         ; $7eeb: $ff
	cp   a                                           ; $7eec: $bf
	add  e                                           ; $7eed: $83
	rst  $38                                         ; $7eee: $ff
	nop                                              ; $7eef: $00
	ld   a, l                                        ; $7ef0: $7d
	add  l                                           ; $7ef1: $85
	rst  $38                                         ; $7ef2: $ff
	nop                                              ; $7ef3: $00
	ld   bc, $008b                                   ; $7ef4: $01 $8b $00
	nop                                              ; $7ef7: $00
	ld   bc, $0081                                   ; $7ef8: $01 $81 $00
	nop                                              ; $7efb: $00
	inc  bc                                          ; $7efc: $03
	add  c                                           ; $7efd: $81
	ld   bc, $0700                                   ; $7efe: $01 $00 $07
	add  c                                           ; $7f01: $81
	inc  bc                                          ; $7f02: $03
	nop                                              ; $7f03: $00
	ld   [bc], a                                     ; $7f04: $02
	add  c                                           ; $7f05: $81
	inc  bc                                          ; $7f06: $03
	ld   [bc], a                                     ; $7f07: $02
	rrca                                             ; $7f08: $0f
	rlca                                             ; $7f09: $07
	ld   c, $ff                                      ; $7f0a: $0e $ff
	nop                                              ; $7f0c: $00
	rst  $38                                         ; $7f0d: $ff
	nop                                              ; $7f0e: $00
	rst  $38                                         ; $7f0f: $ff
	nop                                              ; $7f10: $00
	sbc  d                                           ; $7f11: $9a
	nop                                              ; $7f12: $00
	ld   bc, $3946                                   ; $7f13: $01 $46 $39
	add  b                                           ; $7f16: $80
	add  hl, hl                                      ; $7f17: $29
	add  b                                           ; $7f18: $80
	jr   z, jr_099_7e9b                              ; $7f19: $28 $80

	ld   b, h                                        ; $7f1b: $44
	add  hl, bc                                      ; $7f1c: $09

jr_099_7f1d:
	ld   b, b                                        ; $7f1d: $40
	add  b                                           ; $7f1e: $80
	ld   h, b                                        ; $7f1f: $60
	ld   [hl+], a                                    ; $7f20: $22
	ld   [bc], a                                     ; $7f21: $02
	inc  bc                                          ; $7f22: $03
	add  e                                           ; $7f23: $83
	sbc  c                                           ; $7f24: $99
	ld   b, $1f                                      ; $7f25: $06 $1f
	add  b                                           ; $7f27: $80
	rla                                              ; $7f28: $17
	add  b                                           ; $7f29: $80
	sub  a                                           ; $7f2a: $97
	add  d                                           ; $7f2b: $82
	sbc  e                                           ; $7f2c: $9b
	nop                                              ; $7f2d: $00
	dec  e                                           ; $7f2e: $1d
	add  b                                           ; $7f2f: $80
	ld   e, l                                        ; $7f30: $5d
	nop                                              ; $7f31: $00
	db   $dd                                         ; $7f32: $dd
	add  b                                           ; $7f33: $80
	adc  $01                                         ; $7f34: $ce $01
	inc  sp                                          ; $7f36: $33
	di                                               ; $7f37: $f3
	add  b                                           ; $7f38: $80
	ld   sp, hl                                      ; $7f39: $f9
	inc  b                                           ; $7f3a: $04
	db   $fc                                         ; $7f3b: $fc
	db   $f4                                         ; $7f3c: $f4
	or   $fa                                         ; $7f3d: $f6 $fa
	ei                                               ; $7f3f: $fb
	add  b                                           ; $7f40: $80
	db   $fc                                         ; $7f41: $fc
	add  b                                           ; $7f42: $80
	or   $80                                         ; $7f43: $f6 $80
	cp   b                                           ; $7f45: $b8
	ld   b, $c3                                      ; $7f46: $06 $c3
	inc  bc                                          ; $7f48: $03
	inc  sp                                          ; $7f49: $33
	inc  bc                                          ; $7f4a: $03
	add  hl, bc                                      ; $7f4b: $09
	ld   b, $00                                      ; $7f4c: $06 $00
	add  b                                           ; $7f4e: $80
	rlca                                             ; $7f4f: $07
	add  hl, bc                                      ; $7f50: $09
	ld   a, $22                                      ; $7f51: $3e $22
	db   $e3                                         ; $7f53: $e3
	rst  $30                                         ; $7f54: $f7
	or   $ee                                         ; $7f55: $f6 $ee
	stop                                             ; $7f57: $10 $00
	jp   $80cc                                       ; $7f59: $c3 $cc $80


	db   $ec                                         ; $7f5c: $ec
	add  b                                           ; $7f5d: $80
	ld   [$8801], sp                                 ; $7f5e: $08 $01 $88
	sbc  b                                           ; $7f61: $98
	add  b                                           ; $7f62: $80
	jr   jr_099_7f67                                 ; $7f63: $18 $02

	sbc  b                                           ; $7f65: $98
	adc  b                                           ; $7f66: $88

jr_099_7f67:
	ld   [$1880], sp                                 ; $7f67: $08 $80 $18
	ld   [bc], a                                     ; $7f6a: $02
	jr   c, jr_099_7f1d                              ; $7f6b: $38 $b0

	ld   c, a                                        ; $7f6d: $4f
	add  b                                           ; $7f6e: $80
	ld   l, a                                        ; $7f6f: $6f
	ld   bc, $2f0f                                   ; $7f70: $01 $0f $2f
	add  b                                           ; $7f73: $80
	dec  h                                           ; $7f74: $25
	add  b                                           ; $7f75: $80
	ld   [hl+], a                                    ; $7f76: $22
	add  b                                           ; $7f77: $80
	ld   de, $0109                                   ; $7f78: $11 $09 $01
	dec  d                                           ; $7f7b: $15
	inc  b                                           ; $7f7c: $04
	ld   b, $89                                      ; $7f7d: $06 $89
	ld   h, c                                        ; $7f7f: $61
	and  c                                           ; $7f80: $a1
	or   [hl]                                        ; $7f81: $b6
	add  $cf                                         ; $7f82: $c6 $cf
	add  b                                           ; $7f84: $80
	db   $e3                                         ; $7f85: $e3
	add  b                                           ; $7f86: $80
	ldh  a, [$80]                                    ; $7f87: $f0 $80
	ld   a, h                                        ; $7f89: $7c
	add  b                                           ; $7f8a: $80
	cp   a                                           ; $7f8b: $bf
	add  b                                           ; $7f8c: $80
	ld   c, a                                        ; $7f8d: $4f
	add  c                                           ; $7f8e: $81
	rst  $38                                         ; $7f8f: $ff
	ld   [bc], a                                     ; $7f90: $02
	ld   a, a                                        ; $7f91: $7f
	ld   a, [hl]                                     ; $7f92: $7e
	cp   $80                                         ; $7f93: $fe $80
	ldh  a, [$82]                                    ; $7f95: $f0 $82
	nop                                              ; $7f97: $00
	add  b                                           ; $7f98: $80
	ldh  a, [$80]                                    ; $7f99: $f0 $80
	ret  nz                                          ; $7f9b: $c0

	nop                                              ; $7f9c: $00
	nop                                              ; $7f9d: $00
	add  e                                           ; $7f9e: $83
	inc  bc                                          ; $7f9f: $03
	nop                                              ; $7fa0: $00
	add  e                                           ; $7fa1: $83
	add  c                                           ; $7fa2: $81
	add  c                                           ; $7fa3: $81
	add  e                                           ; $7fa4: $83
	pop  bc                                          ; $7fa5: $c1
	rlca                                             ; $7fa6: $07
	pop  de                                          ; $7fa7: $d1
	rlca                                             ; $7fa8: $07
	ret  nz                                          ; $7fa9: $c0

	call c, $efe0                                    ; $7faa: $dc $e0 $ef
	ldh  a, [$f4]                                    ; $7fad: $f0 $f4
	add  b                                           ; $7faf: $80
	ld   hl, sp-$7d                                  ; $7fb0: $f8 $83
	db   $fc                                         ; $7fb2: $fc
	dec  b                                           ; $7fb3: $05
	rst  $38                                         ; $7fb4: $ff
	ld   hl, sp-$02                                  ; $7fb5: $f8 $fe
	ld   [hl], h                                     ; $7fb7: $74
	ld   [hl], d                                     ; $7fb8: $72
	ld   a, d                                        ; $7fb9: $7a
	add  d                                           ; $7fba: $82
	ld   a, e                                        ; $7fbb: $7b
	nop                                              ; $7fbc: $00
	ld   a, c                                        ; $7fbd: $79
	add  e                                           ; $7fbe: $83
	ld   a, l                                        ; $7fbf: $7d
	ld   [bc], a                                     ; $7fc0: $02
	ld   a, h                                        ; $7fc1: $7c
	db   $fc                                         ; $7fc2: $fc
	inc  bc                                          ; $7fc3: $03
	add  e                                           ; $7fc4: $83
	rst  $38                                         ; $7fc5: $ff
	add  b                                           ; $7fc6: $80
	db   $fd                                         ; $7fc7: $fd
	add  b                                           ; $7fc8: $80
	cp   l                                           ; $7fc9: $bd
	add  h                                           ; $7fca: $84
	cp   [hl]                                        ; $7fcb: $be
	nop                                              ; $7fcc: $00
	ldh  [$80], a                                    ; $7fcd: $e0 $80
	jp   hl                                          ; $7fcf: $e9


	add  c                                           ; $7fd0: $81
	db   $ec                                         ; $7fd1: $ec
	nop                                              ; $7fd2: $00
	db   $fc                                         ; $7fd3: $fc
	add  b                                           ; $7fd4: $80
	or   $81                                         ; $7fd5: $f6 $81
	rst  $30                                         ; $7fd7: $f7
	nop                                              ; $7fd8: $00
	rst  $38                                         ; $7fd9: $ff
	add  c                                           ; $7fda: $81
	ei                                               ; $7fdb: $fb
	nop                                              ; $7fdc: $00
	ld   bc, $f883                                   ; $7fdd: $01 $83 $f8
	nop                                              ; $7fe0: $00
	cp   $82                                         ; $7fe1: $fe $82
	ld   [hl], c                                     ; $7fe3: $71
	ld   bc, $bdb1                                   ; $7fe4: $01 $b1 $bd
	add  b                                           ; $7fe7: $80
	and  e                                           ; $7fe8: $a3
	ld   bc, $cbc3                                   ; $7fe9: $01 $c3 $cb
	adc  b                                           ; $7fec: $88
	db   $fc                                         ; $7fed: $fc
	add  e                                           ; $7fee: $83
	ld   hl, sp+$00                                  ; $7fef: $f8 $00
	rlca                                             ; $7ff1: $07
	rst  $38                                         ; $7ff2: $ff
	nop                                              ; $7ff3: $00
	rst  $38                                         ; $7ff4: $ff
	nop                                              ; $7ff5: $00
	rst  $38                                         ; $7ff6: $ff
	nop                                              ; $7ff7: $00
	rst  $38                                         ; $7ff8: $ff
	nop                                              ; $7ff9: $00
	rst  $38                                         ; $7ffa: $ff
	nop                                              ; $7ffb: $00
	rst  $38                                         ; $7ffc: $ff
	nop                                              ; $7ffd: $00
	add  a                                           ; $7ffe: $87
	nop                                              ; $7fff: $00
